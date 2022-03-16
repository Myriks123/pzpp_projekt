using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Ksiazka_kucharska.Encje
{
    public class Przepisy
    {
        [Required]
        public int Id { get; set; }
        [Required]
        public string Nazwa { get; set; }
        [Required]
        public int StopienTrudnosci { get; set; }
        [Required]
        public int CzasPrzygotowania { get; set; }
        [Required]
        public int OcenaUzytkownikow { get; set; }
        [Required]
        public string Kategoria { get; set; }
    }
}
