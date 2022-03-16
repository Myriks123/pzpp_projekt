using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Ksiazka_kucharska.Encje
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(): base()
        {

        }

        public DbSet<Przepisy> Przepisy { get; set; }
        public DbSet<Uzytkownicy> Uzytkownicy { get; set; }
    }
}
