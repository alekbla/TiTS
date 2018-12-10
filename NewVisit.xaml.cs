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
using System.ComponentModel;
using System.Timers;

namespace Ekartoteka
{
    /// <summary>
    /// Interaction logic for NewVisit.xaml
    /// </summary>
    
    public partial class NewVisit : Window
    {   
        private Pacjent pacjent;
        System.Windows.Threading.DispatcherTimer checkingTimer = new System.Windows.Threading.DispatcherTimer();
        System.Windows.Threading.DispatcherTimer closingTimer = new System.Windows.Threading.DispatcherTimer();
        public NewVisit(Pacjent p)
        {   
            
            InitializeComponent();
            pacjent = p;
            Preview_TB.Text = string.Format(" {0} {1} {2} Data urodzenia: {3} {4} PESEL: {5} {6} Alergie:{7} {8} Uwagi: {9}",
                    p.Imie, p.Nazwisko, Environment.NewLine, Convert.ToDateTime(p.DataUrodzenia).ToShortDateString(), Environment.NewLine, p.PESEL, Environment.NewLine,
                    p.Alergie, Environment.NewLine, p.Uwagi);
            
            
            
            checkingTimer.Tick += checkingTimer_Tick;
            checkingTimer.Interval = new TimeSpan(0,0,5);
            checkingTimer.Start();
            closingTimer.Tick += closingTimer_Tick;
            closingTimer.Interval = new TimeSpan(0,0,30);
        }

        private void SaveVisit_B_Click(object sender, RoutedEventArgs e)
        {
            Service1Client service = new Service1Client();
            service.NotBusy(pacjent.Id);
            this.Close();

        }
        
        private void checkingTimer_Tick(object sender, EventArgs e)
        {
            Service1Client service = new Service1Client();
            if (service.IsWanted(pacjent.Id) == 1) 
            {
                
                closingTimer.Start();

                if (MessageBox.Show(this, "Inny lekarz zgłosił chęć edycji danych pacjenta. Czy chcesz zakończyć edycję i zapisać wizytę??", "Uwaga", MessageBoxButton.YesNo, MessageBoxImage.Warning) == MessageBoxResult.No)
                {
                    //do no stuff
                }
                else
                {
                    //zapisanie
                    service.NotWanted(pacjent.Id);
                    service.NotBusy(pacjent.Id);
                    this.Close();
                }
            }
        }
        private void closingTimer_Tick(object sender, EventArgs e)
        {
            Service1Client service = new Service1Client();
            //zapisanie
            service.NotWanted(pacjent.Id);
            service.NotBusy(pacjent.Id);
            this.Close();
        }
    }
}
