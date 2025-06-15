using RentalCarProject.Model;
using RentalCarProject1.Windows;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media.Imaging;

namespace RentalCarProject.Windows
{
    /// <summary>
    /// Логика взаимодействия для AdminWindow.xaml
    /// </summary>
    public partial class AdminWindow : Window
    {
        //variables
        ApplicationContext database = new ApplicationContext();
        public AdminWindow(string UserLogin, string Gender)
        {
            
            InitializeComponent();

            Name.Text += $"Логин: {UserLogin}";
      
            
            if (Gender == "Женский")
            {
                Image.ImageSource = new BitmapImage(new Uri("D:\\RentalCarProject\\RentalCarProject1\\Resources\\beauty.png", UriKind.Absolute));
            }
            else
            {
                Image.ImageSource = new BitmapImage(new Uri("D:\\RentalCarProject\\RentalCarProject1\\Resources\\bussiness-man.png", UriKind.Absolute));
            }
           
        }

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if(e.ChangedButton == MouseButton.Left)
                this.DragMove();
        }

        private bool IsMaximized = false;
        private void Border_MouseLeftDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ClickCount == 2)
            {
                if(IsMaximized)
                {
                    this.WindowState = WindowState.Normal;
                    this.Width = 1080;
                    this.Height = 720;

                    IsMaximized = false;

                }
                else
                {
                    this.WindowState = WindowState.Maximized;
                    IsMaximized=true;
                }
            }
        }

        private void exit_btn(object sender, RoutedEventArgs e)
        {
            this.Visibility = Visibility.Collapsed;
            MainWindow MW = new();
            MW.Show();
        }

        public void Members(object sender, RoutedEventArgs e)
        {
            Main.Content = new ClientPage();
        }

        private void btnServices_Click(object sender, RoutedEventArgs e)
        {
            string roles = Role.Text;

                Main.Content = new Cars();

        }

        private void Orders(object sender, RoutedEventArgs e)
        {
            Main.Content = new OrdersPage();
        }
    }
}
