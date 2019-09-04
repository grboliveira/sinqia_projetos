using Projeto02_APIChamados.Dados;
using Projeto02_APIChamados.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;

namespace Projeto02_APIChamados.Controllers
{
    public class ChamadosController :ApiController
    {
        private ChamadosDao Dao { get; set; }

        //Construtor incluído para instanciar a classe  ChamadosDao,
        //se  nenhuma instancia for encontrada
        public ChamadosController()
        {
            if (Dao == null)
            {
                Dao = new ChamadosDao();
            }
        }

        public IEnumerable<Chamado> GetChamados()
        {
            return Dao.BuscarChamados();
        }

        [HttpGet]
        [Route("chamadosPendentes")]
        public IEnumerable<Chamado> GetChamadosPendentes()
        {
            return Dao.BuscarChamados().Where(p => p.Resolvido == 0);
        }

        [HttpGet]
        [Route("chamadosResolvidos")]
        public IEnumerable<Chamado> GetChamadosResolvidos()
        {
            return Dao.BuscarChamados().Where(p => p.Resolvido == 1);
        }

        public Chamado GetChamado(int id)
        {
            return Dao.BuscarChamados()
                .FirstOrDefault(p => p.ChamadoId == id);
        }

        //HTTP POST - Incluir um novo chamado
        public HttpResponseMessage PostChamado(Chamado chamado)
        {
            if (Dao.IncluirChamado(chamado))
            {
                var response = Request.CreateResponse<Chamado>
                    (HttpStatusCode.Created, chamado);

                string uri = Url.Link("DefaultApi", new { id = chamado.ChamadoId });
                response.Headers.Location = new Uri(uri);

                return response;
            }
            else
            {
                var erro = new HttpResponseMessage(HttpStatusCode.BadRequest)
                {
                    Content = new StringContent("Erro no serviço"),
                    ReasonPhrase = "Não foi possível incluir o chamado"
                };
                throw new HttpResponseException(erro);
            }
        }
        //HTTP DELETE - Remover um comando pelo id
        public HttpResponseMessage DeleteChamado(int id)
        {
            if (Dao.RemoverChamado(id))
            {
                var response = new HttpResponseMessage(HttpStatusCode.OK);

                string uri = Url.Link("DefaultApi", new { id });
                response.Headers.Location = new Uri(uri);

                return response;


            }
            else
            {
                var erro = new HttpResponseMessage(HttpStatusCode.BadRequest)
                {
                    Content = new StringContent("Erro no serviço"),
                    ReasonPhrase = "esse chamado já foi finalizdo"
                };
                throw new HttpResponseException(erro);
            }
        }

        public HttpResponseMessage PutChamado(Chamado chamado)
        {
            if (Dao.IncluirChamado(chamado))
            {
                var response = Request.CreateResponse<Chamado>
                    (HttpStatusCode.Created, chamado);

                string uri = Url.Link("DefaultApi", new { id = chamado.ChamadoId });
                response.Headers.Location = new Uri(uri);

                return response;
            }
            else
            {
                var erro = new HttpResponseMessage(HttpStatusCode.BadRequest)
                {
                    Content = new StringContent("Erro no serviço"),
                    ReasonPhrase = "Não foi possível alterar o chamado"
                };
                throw new HttpResponseException(erro);
            }
        }
    }
}