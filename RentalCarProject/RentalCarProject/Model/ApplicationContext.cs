using Microsoft.EntityFrameworkCore;

using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RentalCarProject.Model
{
    public class ApplicationContext : DbContext
    {
        public ApplicationContext()
        {
            Database.EnsureCreated();
        }

        public DbSet<Client> Clients { get; set; } = null!;
        public DbSet<Gender> Genders { get; set; } = null!;
        public DbSet<Order> Orders { get; set; } = null!;
        public DbSet<Service> Services { get; set; } = null!;
        public DbSet<ServicesImage> Servicesimages { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            using (var reader = new StreamReader("connect.txt"))
            {
                optionsBuilder.UseMySql(
               reader.ReadLine(),
               new MySqlServerVersion(new Version(8, 0, 22))
                );
            }
        }

    }
}
    