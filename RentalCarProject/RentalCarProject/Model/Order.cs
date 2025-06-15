using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RentalCarProject.Model
{
    public class Order
    {
        public int Id { get; set; }
        public int IdService { get; set; }
        public DateTime DateOfService { get; set; }
        public int IdClient { get; set; }

        [NotMapped]
        public string ClientFIO { get; set; }
        [NotMapped]
        public string ServiceName { get; set; }

    }
}
