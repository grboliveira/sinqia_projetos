using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Projeto02_APIChamados.Models
{
    public class ChamadosContext : DbContext
    {
        public ChamadosContext() : base("name=ChamadosConnection") { }

        public DbSet<Chamado> Chamados { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            //Definindo o nome da tabela a ser gerado
            modelBuilder.Entity<Chamado>().ToTable("TBChamados");

            //definindo paramteros dos campos
            modelBuilder.Entity<Chamado>()
                .Property(p => p.Data)
                .IsRequired();

            modelBuilder.Entity<Chamado>()
                .Property(p => p.Documento)
                .HasMaxLength(14)
                .IsRequired();

            modelBuilder.Entity<Chamado>()
                .Property(p => p.Assunto)
                .HasMaxLength(20)
                .IsRequired();

            modelBuilder.Entity<Chamado>()
                .Property(p => p.Descricao)
                .HasMaxLength(100)
                .IsRequired();

            modelBuilder.Entity<Chamado>()
                .Property(p => p.Resposta)
                .HasMaxLength(100);

            modelBuilder.Entity<Chamado>()
                .Property(p => p.Resolvido);
               
                  

            
        }

    }
}