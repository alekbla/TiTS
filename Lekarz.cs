using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace WcfEkartoteka
{
    [DataContract]
    public class Lekarz
    {
        [DataMember]
        public string Id { get; set; }
        [DataMember]
        public string Login { get; set; }
        [DataMember]
        public string Haslo { get; set; }
        [DataMember]
        public string Imie { get; set; }
        [DataMember]
        public string Nazwisko { get; set; }
    }
}
