using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;

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
using Ekartoteka.ServiceReference1;
using Ekartoteka.Properties;
using System.Data;
using System.Runtime.Serialization;

namespace Ekartoteka
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Lekarz lekarz;
        List<Pacjent> listaPacjentow = new List<Pacjent>();
       
        public MainWindow(Lekarz l)
        {
            
            InitializeComponent();
            lekarz = l;
            Doctor_TB.Text = l.Imie + " " + l.Nazwisko;
            Service1Client service = new Service1Client();
            listaPacjentow = service.DownloadPatientList();
            DataTable dt;
            dt = new System.Data.DataTable();
            dt.Columns.Add("Imię");
            dt.Columns.Add("Nazwisko");
            dt.Columns.Add("Pesel");
            dt.Columns.Add("Data urodzenia");
            
            for (int i = 0; i < listaPacjentow.Count; i++)
            {
                dt.Rows.Add(new object[] { listaPacjentow[i].Imie, listaPacjentow[i].Nazwisko, listaPacjentow[i].PESEL, Convert.ToDateTime(listaPacjentow[i].DataUrodzenia).ToShortDateString() }); 
            }
            //dt.Rows.RemoveAt(listaPacjentow.Count);
            PatientList_DG.ItemsSource = dt.DefaultView;
        }

        private void NewPatient_B_Click(object sender, RoutedEventArgs e)
        {
            NewPatient np = new NewPatient();
            np.Show();
        }

        private void PatientList_DG_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Pacjent p = new Pacjent();
            int numerPacjenta = PatientList_DG.SelectedIndex;
            try
            {
                p = listaPacjentow[numerPacjenta];
                Patient_TB.Text = string.Format(" {0} {1} {2} Data urodzenia: {3} {4} PESEL: {5} {6} Alergie: {7} {8} Uwagi: {9}",
                    p.Imie, p.Nazwisko, Environment.NewLine, Convert.ToDateTime(p.DataUrodzenia).ToShortDateString(), Environment.NewLine, p.PESEL, Environment.NewLine,
                    p.Alergie, Environment.NewLine, p.Uwagi);
            }
            catch
            {}
        }

        private void NewVisit_B_Click(object sender, RoutedEventArgs e)
        {
            try
            {   
                Pacjent p = new Pacjent();
                int numerPacjenta = PatientList_DG.SelectedIndex;
                p = listaPacjentow[numerPacjenta];
                Service1Client service = new Service1Client();
                if (service.IsBusy(p.Id) == 0)
                {
                    NewVisit nv = new NewVisit(p);
                    // Edycja wartości kolumny CzyZajety
                    service.Busy(p.Id);
                    nv.Show();
                }
                else
                {
                    if (MessageBox.Show("Pacjent odbywa teraz wizytę u innego lekarza. Czy chcesz poprosić o dostęp edycji jego danych?", "Uwaga", MessageBoxButton.YesNo, MessageBoxImage.Warning) == MessageBoxResult.No)
                    {
                        //do no stuff
                    }
                    else
                    {
                        service.Wanted(p.Id);
                    }
                }
            }
            catch
            {
                MessageBox.Show("Wybierz pacjenta, aby dodać nową wizytę");
            }
        }

        private void Edit_B_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Service1Client service = new Service1Client();
                Pacjent p = new Pacjent();
                int numerPacjenta = PatientList_DG.SelectedIndex;
                p = listaPacjentow[numerPacjenta];

                if (service.IsBusy(p.Id) == 0)
                {
                    EditPatient ep = new EditPatient(p);
                    service.Busy(p.Id);
                    ep.Show();
                }
                else
                {
                    if (MessageBox.Show("Pacjent odbywa teraz wizytę u innego lekarza. Czy chcesz poprosić o dostęp edycji jego danych?", "Uwaga", MessageBoxButton.YesNo, MessageBoxImage.Warning) == MessageBoxResult.No)
                    {
                        //do no stuff
                    }
                    else
                    {
                        service.Wanted(p.Id);
                    }
                }
            }
            catch
            {
                MessageBox.Show("Wybierz pacjenta, aby go edytować");
            }
        }
        
    }
}
