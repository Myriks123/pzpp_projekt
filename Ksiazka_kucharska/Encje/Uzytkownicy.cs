using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Ksiazka_kucharska.Encje
{
    public class Uzytkownicy
    {
        [Required]
        public int Id { get; set; }
        [Required]
        public string Nick { get; set; }
        [Required]
        public string Imie { get; set; }
        [Required]
        public string Nazwisko { get; set; }
        [Required]
        public string EMail { get; set; }
        [Required]
        public int Telefon { get; set; }
        [Required]
        public string Haslo { get; set; }
    }
}
