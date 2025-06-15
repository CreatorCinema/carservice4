using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RentalCarProject.Model
{
    public class ServicesImage
    {
        public int Id { get; set; }

        public int IdService { get; set; }
        public string ImagePath { get; set; }
    }
}
