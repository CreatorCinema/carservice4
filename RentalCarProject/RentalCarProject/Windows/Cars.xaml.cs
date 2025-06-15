using System;
using System.Collections.Generic;
using System.Data;
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
using Microsoft.Win32;
using RentalCarProject.Model;
using RentalCarProject.Windows;
using RentalCarProject1;
using RentalCarProject1.Windows;

namespace RentalCarProject1.Windows
{
    /// <summary>
    /// Логика взаимодействия для Cars.xaml
    /// </summary>
    public partial class Cars : Page
    {
        ApplicationContext context;

        public Cars()
        {
            InitializeComponent();
            context = new ApplicationContext();
            TableClients.ItemsSource = context.Services.ToList();

        }

        private void refreshdatagrid()
        {
            TableClients.ItemsSource = context.Services.ToList();
            TableClients.Items.Refresh();
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            Button reda = sender as Button;
            var reda1 = reda.DataContext as Service;
            OpenFileDialog das = new OpenFileDialog();
            das.Title = "Выбери фотку пж";
            das.Filter = "All supported graphics|*.jpeg;*.jpg;*.png|" + " JPEG(*.jpeg;*.jpg)|*.jpeg;*.jpg|" +
            "Portable Network Graphic (*.png)|*.png";
            //if (das.ShowDialog() == true)
            //{
            //    reda1.ServicesImages = new ServicesImage { ImagePath = das.FileName };
            //}
            AddNewServices newClientWindow = new AddNewServices(context, reda1);
            newClientWindow.ShowDialog();
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            

                context = new ApplicationContext();
                Service item = TableClients.SelectedItem as Service;
                try
                {
                    Service service = context.Services.Where(c => c.Id == item.Id).Single();
                    context.Services.Remove(service);
                    context.SaveChanges();

                    MessageBox.Show("Клиент успешно удалён!");
                    //Метод обновления таблицы после удаления
                    refreshdatagrid();
                }

                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            
        }

        private void btn_AddClient(object sender, RoutedEventArgs e)
        {
            //var NewDob1 = new AddNewClient(context, NewDob);
            //NewDob1.ShowDialog();
            var NewDob = new Service();
            context.Services.Add(NewDob);
            OpenFileDialog das = new OpenFileDialog();
            das.Title = "Выбери фотку пж";
            das.Filter = "All supported graphics|*.jpeg;*.jpg;*.png|" + " JPEG(*.jpeg;*.jpg)|*.jpeg;*.jpg|" +
            "Portable Network Graphic (*.png)|*.png";
            //if (das.ShowDialog() == true)
            //{
            //    NewDob.ServicesImages = new ServicesImage { ImagePath = das.FileName };
            //}
            AddNewServices newClientWindow = new AddNewServices(context, NewDob);
            newClientWindow.ShowDialog();

            refreshdatagrid();
        }
    }
}
