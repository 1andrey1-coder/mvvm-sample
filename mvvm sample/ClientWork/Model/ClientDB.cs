using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace mvvm_sample.ClientWork.Model
{
    internal class ClientDB
    {
        static MvvmDzContext instance;
        internal static MvvmDzContext GetInstance()
        {
            if (instance == null)
                instance = new MvvmDzContext();
            return instance;
        }

        List<Client> clients = new List<Client>();

        public List<Client> LoadClients()
        {
            return clients;
        }

        internal void Add(Client client)
        {
            clients.Add(client);
        }
    }
}
