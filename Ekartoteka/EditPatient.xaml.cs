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
using System.Data;

namespace Ekartoteka
{
    /// <summary>
    /// Interaction logic for EditPatient.xaml
    /// </summary>
    public partial class EditPatient : Window
    {
        Pacjent pacjent = new Pacjent();
        public EditPatient(Pacjent p)
        {
            InitializeComponent();
            pacjent = p;
            FirstName_TB.Text = pacjent.Imie;
            LastName_TB.Text = pacjent.Nazwisko;
            PESEL_TB.Text = pacjent.PESEL;
            BirthDate_DP.SelectedDate =Convert.ToDateTime(pacjent.DataUrodzenia);
            if (pacjent.Alergie != null)
            {
                Allergies_TB.IsEnabled = true;
                Allergies_TB.Text = pacjent.Alergie;
            }
            Note_TB.Text = pacjent.Uwagi;
        }

        private void Allergies_CB_Checked(object sender, RoutedEventArgs e)
        {
            Allergies_TB.IsEnabled = true;
        }

        private void Drugs_CB_Checked(object sender, RoutedEventArgs e)
        {
            AddedDrugs_LV.IsEnabled = true;
            DeleteDrug_B.IsEnabled = true;
            DrugList_LB.IsEnabled = true;
            AddDrug_B.IsEnabled = true;
        }

        private void Drugs_CB_Unchecked(object sender, RoutedEventArgs e)
        {
            AddedDrugs_LV.IsEnabled = false;
            DeleteDrug_B.IsEnabled = false;
            DrugList_LB.IsEnabled = false;
            AddDrug_B.IsEnabled = false;
        }
    }
}
