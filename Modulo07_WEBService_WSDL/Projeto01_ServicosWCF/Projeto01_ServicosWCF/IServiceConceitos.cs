using Projeto01_ServicosWCF.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace Projeto01_ServicosWCF
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IServiceConceitos
    {
        [OperationContract]
        List<Aluno> ListarAlunos();

        [OperationContract]
        void AdicionarAluno(Aluno aluno);

        [OperationContract]
        List<string> ListarNomes();

        [OperationContract]
        double CalcularSoma(double x, double y);
    }


    
    
}
