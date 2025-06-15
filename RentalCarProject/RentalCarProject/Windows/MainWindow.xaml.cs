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
using MaterialDesignThemes.Wpf;
using RentalCarProject.Model;
using RentalCarProject.Windows;
using RentalCarProject1.Windows;

namespace RentalCarProject
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        //EntitnyConnection
        ApplicationContext context = new ApplicationContext();
        
        public MainWindow()
        {
            InitializeComponent();
        }


        private void exitApp(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        public void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            Windows.Genders Gender = new Windows.Genders();
            //Variables
            var login = UserName.Text; 
            var pass= UserPass.Password; 
            var gender = context.Genders.ToList();                                                                                              
            if (context.Clients.Any(u => u.Email == login && u.FirstName== pass)) //это
            {

                foreach (var client in context.Clients) //это
                {
                    if (client.Email == login) //измени тут на if(client.Логин == login && client.Пароль == pass)
                                                     //{
                                                           // this.Visibility = Visibility.Collapsed;
                                                           //тут админ виндов - следуещее окно так что там хз какое у тебя пропиши сам
                                                            //AdminWindow administratorWindow = new AdminWindow();
                                                            //administratorWindow.Show();
                                                      //}
                    {
                        if (client.FirstName == pass)
                        {
                            var urlGender = gender.FirstOrDefault(x => x.ID == client.IdGender);                                

                            Gender.UserLogin = login;
                            Gender.Gender = urlGender.GenderName;
                            this.Visibility = Visibility.Collapsed;
                            AdminWindow administratorWindow = new AdminWindow(Gender.UserLogin, Gender.Gender);
                            administratorWindow.Show();                     


                        }
                        else 
                        {
                            MessageBox.Show("Вы ввели неправильный пароль");
                        }
                    }
                }

            }
            else
            {
                MessageBox.Show("Пользователь не найден :с");
            }
        }

        private void helpMe(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Это мой курсовой проект");
        }

        private void GuestButton_Click(object sender, RoutedEventArgs e)
        {

            this.Visibility = Visibility.Collapsed;
            string UserLogin = "Гость";
            string UserRole = "Гость";
            AdminWindow administratorWindow = new AdminWindow(UserLogin, UserRole);
            administratorWindow.Show();
        }

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
                this.DragMove();
        }

        private bool IsMaximized = true;

        private void Border_MouseLeftDown(object sender, MouseButtonEventArgs e)
        {

            if (e.ClickCount == 2)
            {
                if (IsMaximized)
                {
                    this.WindowState = WindowState.Normal;
                    this.Width = 400;
                    this.Height = 710;

                    IsMaximized = false;
                }
                else
                {
                    this.WindowState = WindowState.Maximized;
                    IsMaximized = true;
                }
            }
        }
    }
}

