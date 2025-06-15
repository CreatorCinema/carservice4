using Microsoft.Win32;
using RentalCarProject.Model;
using RentalCarProject.Windows;
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

namespace RentalCarProject1.Windows
{
    /// <summary>
    /// Логика взаимодействия для ClientPage.xaml
    /// </summary>
    public partial class ClientPage : Page
    {
        ApplicationContext database;
        public ClientPage()
        {
            database = new ApplicationContext();
            InitializeComponent();
            TableClients.ItemsSource = database.Clients.ToList();

        }

        private void btn_AddClient(object sender, RoutedEventArgs e)
        {
            var NewDob = new Client();
            NewDob.DateOfRegistr = DateTime.Now;
            NewDob.IdGender =1;
            database.Clients.Add(NewDob);

            AddNewClient newClientWindow = new AddNewClient(database, NewDob);
            newClientWindow.ShowDialog();

            refreshdatagrid();
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            Button reda = sender as Button;
            var reda1 = reda.DataContext as Client;

            AddNewClient newClientWindow = new AddNewClient(database, reda1);
            newClientWindow.ShowDialog();

            refreshdatagrid();
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            database = new ApplicationContext();
            Client item = TableClients.SelectedItem as Client;
            try
            {
                Client clients = database.Clients.Where(c => c.Id == item.Id).Single();
                database.Clients.Remove(clients);
                database.SaveChanges();

                MessageBox.Show("Клиент успешно удалён!");
                //Метод обновления таблицы после удаления
                refreshdatagrid();
            }

            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void refreshdatagrid()
        {
            TableClients.ItemsSource = database.Clients.ToList();
            TableClients.Items.Refresh();
        }
    }
}
