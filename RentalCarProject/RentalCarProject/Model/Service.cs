using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace RentalCarProject.Model
{
    public class Service
    {
        public int Id { get; set; }
        public string ServiceName { get; set; }
        public int Duration { get; set; }
        public int Cost { get; set; }
        public double Discond { get; set; }
        public int PathID { get; set; }
    }
}
