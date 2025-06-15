using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RentalCarProject.Windows;
using System.Windows.Controls;
using System.ComponentModel.DataAnnotations.Schema;

namespace RentalCarProject.Model
{
    public class Client
    {

        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Patronymic { get; set; }
        public int IdGender { get; set; }
        public string Phone { get; set; }
        public string NumberCar { get; set; }
        public DateTime DateOfBirth { get; set; }
        public string Email { get; set; }
        public DateTime DateOfRegistr { get; set; }

    }
}
