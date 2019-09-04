﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Projeto02_APIChamados.Models
{
    public class Chamado
    {
        public int ChamadoId { get; set; }
        public DateTime Data { get; set; }
        public String Documento { get; set; }
        public string Assunto { get; set; }
        public string Descricao { get; set; }
        public string Resposta { get; set; }
        public int Resolvido { get; set; }//0 - Pendente, 1 - Resolvido
    }
}