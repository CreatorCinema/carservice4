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
using System.Windows.Navigation;
using System.Windows.Shapes;
using Emgu.CV.ML;
using RentalCarProject.Model;
using RentalCarProject.ViewModels;

namespace RentalCarProject.Windows
{
    /// <summary>
    /// Логика взаимодействия для OrdersPage.xaml
    /// </summary>
    public partial class OrdersPage : Page
    {
        public static OrdersPage Instance;
        public ApplicationContext database;
        private readonly MainViewModel _vm;
        public OrdersPage()
        {
            Instance = this;
            InitializeComponent();
            DataContext = (_vm = new MainViewModel());
            database = new ApplicationContext();
            refreshdatagrid();
        }

        private void btn_addClient_Click(object sender, RoutedEventArgs e)
        {
            var NewDob = new Order();
            database.Orders.Add(NewDob);
            AddNewOrder newClientWindow = new AddNewOrder(database, NewDob);
            newClientWindow.ShowDialog();
            database.SaveChanges();
            refreshdatagrid();
        }

        private void refreshdatagrid()
        {
            var res = database.Orders.ToList();
            foreach (var item in res)
            {
                item.ClientFIO = database.Clients.FirstOrDefault(x => x.Id == item.IdClient).LastName;
                item.ServiceName = database.Services.FirstOrDefault(x => x.Id == item.IdService).ServiceName;
            }

            TableOrders.ItemsSource = database.Orders.ToList();
            TableOrders.Items.Refresh();
        }

        private void Grid_Drop(object sender, DragEventArgs e)
        {
            e.Effects = DragDropEffects.Move;

            string imageLoc = ((string[])e.Data.GetData(DataFormats.FileDrop, false))[0];

            _vm.Init(imageLoc);
        }
    }
}
