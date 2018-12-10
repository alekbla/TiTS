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
using Ekartoteka.ServiceReference1;
using Ekartoteka.Properties;

namespace Ekartoteka
{
    /// <summary>
    /// Interaction logic for Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        public Login()
        {
            InitializeComponent();
        }
        
        private void Login_B_Click(object sender, RoutedEventArgs e)
        {

            Service1Client service = new Service1Client();
            Lekarz l;
            l= service.LogIn(Login_TB.Text);
            if (Password_PB.Password == l.Haslo)
            {
                
                MainWindow m=new MainWindow(l);
                m.Show();
                this.Close();
            }
            else
            {
                MessageBox.Show("Błędny login lub hasło");
            }
        }
    }
}
