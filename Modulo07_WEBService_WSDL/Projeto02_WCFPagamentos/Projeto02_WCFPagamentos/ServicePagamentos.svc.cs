﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using Projeto02_WCFPagamentos.Models;

namespace Projeto02_WCFPagamentos
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class ServicePagamentos : IServicePagamentos
    {
        public int EfetuarPagamento(PagamentoContract pagamento)
        {
            /*
             * Valores de Retorno:
             * 0 - Pagamento OK
             * 1 - Cartão Inexistente
             * 2 - Pedido já pago
             * 3 - Limite indisponível no cartão
             */

            using (var context = new PagamentosEntities())
            {
                //Verificação de existência do cartão
                var cartao = context.Cartao.FirstOrDefault(c => c.NumeroCartao == pagamento.NumeroCartao);
                if(cartao == null)
                {
                    return 1;
                }
                //Verificação do Pedido
                var pedido = context.Pagamentos.FirstOrDefault(
                    p => p.NumeroPedido == pagamento.NumeroPedido);
                if(pedido != null)
                {
                    return 2;
                }
                //Verificação do Limite disponível
                double valorPedidos = 0;

                var pagamentosRealizados = context.Pagamentos.Where(p => p.NumeroCartao == pagamento.NumeroCartao);

                if(pagamentosRealizados.Count() > 0)
                {
                    valorPedidos += pagamentosRealizados.Sum(s => (double)s.Valor);
                }
                if(valorPedidos > cartao.Limite)
                {
                    return 3;
                }

                //Pagamento realizado
                Pagamento pagto = new Pagamento();
                pagto.NumeroCartao = pagamento.NumeroCartao;
                pagto.NumeroCartao = pagamento.NumeroPedido;
                pagto.Valor = pagamento.Valor;
                context.Pagamentos.Add(pagto);
                context.SaveChanges();
                return 0;

            }

        }

        public List<CartaoContract> ListarCartoes()
        {
            using (var context = new PagamentosEntities())
            {
                var cartoes = context.Cartao;
                List<CartaoContract> lista = new List<CartaoContract>();

                foreach (var item in cartoes)
                {
                    lista.Add(new CartaoContract()
                    {
                        Id = item.Id,
                        NumeroCartao = item.NumeroCartao,
                        Limite = item.Limite
                    });
                }
                return lista;
            }
        }

        public List<PagamentoContract> ListarPagamentos()
        {
            using (var context = new PagamentosEntities())
            {
                var pagamentos = context.Pagamentos;
                List<PagamentoContract> lista = new List<PagamentoContract>();

                foreach(var items in pagamentos)
                {
                    lista.Add(new PagamentoContract()
                    {
                        Id = items.Id,
                        NumeroCartao = items.NumeroCartao,
                        NumeroPedido = items.NumeroPedido,
                        Valor = (double)items.Valor
                    });
                }
                return lista;
            }
        }
    }
}
