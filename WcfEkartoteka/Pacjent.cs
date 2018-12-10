using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace WcfEkartoteka
{
    [DataContract]
    public class Pacjent
    {
        [DataMember]
        public string Id { get; set; }
        [DataMember]
        public string Imie { get; set; }
        [DataMember]
        public string Nazwisko { get; set; }
        [DataMember]
        public string PESEL { get; set; }
        [DataMember]
        public DateTime DataUrodzenia { get; set; }
        [DataMember]
        public string Alergie { get; set; }
        [DataMember]
        public string Uwagi { get; set; }
        [DataMember]
        public string Zajety { get; set; }
        public Pacjent(string id, string imie, string nazwisko, string pesel, DateTime dataUrodzenia, string alergie, string uwagi, string zajety)
        {
            this.Id = id;
            this.Imie = imie;
            this.Nazwisko = nazwisko;
            this.PESEL = pesel;
            this.DataUrodzenia = dataUrodzenia;
            this.Alergie = alergie;
            this.Uwagi = uwagi;
            this.Zajety = zajety;
    
        }
    }
}
