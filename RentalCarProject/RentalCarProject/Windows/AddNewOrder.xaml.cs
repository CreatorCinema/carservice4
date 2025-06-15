using RentalCarProject.Model;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace RentalCarProject.Windows
{
    /// <summary>
    /// Логика взаимодействия для AddNewClient.xaml
    /// </summary>
    public partial class AddNewOrder : Window
    {
        ApplicationContext context;
        public AddNewOrder(ApplicationContext database, Order client)
        {
            InitializeComponent();
            this.context = database;
            this.DataContext = client;
            service.ItemsSource = database.Services.ToList();
            clien.ItemsSource = database.Clients.ToList();
        }

        private void btn_addClient(object sender, RoutedEventArgs e)
        {
            context.SaveChanges();
            this.Close();
        }

        private void btn_exitClick(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
