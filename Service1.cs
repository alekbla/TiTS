using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WcfEkartoteka
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in both code and config file together.
    public class Service1 : IService1
    {
        SqlConnection conn;
        SqlCommand comm;
        SqlConnectionStringBuilder connStringBuilder;
        void ConnectToDb()
        {
            connStringBuilder = new SqlConnectionStringBuilder();
            connStringBuilder.DataSource = "ALEKSANDRA\\SQLEXPRESS";
            connStringBuilder.InitialCatalog = "BDEkartoteka";
            connStringBuilder.Encrypt = true;
            connStringBuilder.TrustServerCertificate = true;
            connStringBuilder.ConnectTimeout = 70;
            connStringBuilder.AsynchronousProcessing = true;
            connStringBuilder.MultipleActiveResultSets = true;
            connStringBuilder.IntegratedSecurity = true;

            conn = new SqlConnection(connStringBuilder.ToString());
            comm = conn.CreateCommand();



        }
        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }

        public CompositeType GetDataUsingDataContract(CompositeType composite)
        {
            if (composite == null)
            {
                throw new ArgumentNullException("composite");
            }
            if (composite.BoolValue)
            {
                composite.StringValue += "Suffix";
            }
            return composite;
        }
        public Lekarz LogIn(string login)
        {
            Lekarz l = new Lekarz();
            try {

                ConnectToDb();
                comm.CommandText = "SELECT * FROM Doctors WHERE Login=@log";
                //comm.Parameters.Add("@log", SqlDbType.Text).Value = "'"+login+"'";
                comm.Parameters.AddWithValue("log",login);
                comm.CommandType = CommandType.Text;

                conn.Open();

                SqlDataReader reader = comm.ExecuteReader();
                //reader=comm.ExecuteReader();
                
                while (reader.Read())
                {
                    l.Id = reader[0].ToString();
                    l.Login = login;
                    l.Haslo = reader[2].ToString();
                    l.Imie = reader[3].ToString();
                    l.Nazwisko = reader[4].ToString();
                }
                

                return l;

            }
            catch (Exception) { throw; }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }

        }
        public int IsBusy(string id)
        {
            int wynik;
            try
            {

                ConnectToDb();
                comm.CommandText = "SELECT Zajety FROM Patients WHERE ID_Pacjenta=@id";
                comm.Parameters.AddWithValue("id", id);
                

                comm.CommandType = CommandType.Text;

                conn.Open();

                SqlDataReader reader = comm.ExecuteReader();
                
                reader.Read();
                wynik = (int)reader[0];
                
            }
            catch (Exception) { throw; }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return wynik;
        }
        public int IsWanted(string id)
        {
            int wynik;
            try
            {

                ConnectToDb();
                comm.CommandText = "SELECT CzyPozadany FROM Patients WHERE ID_Pacjenta=@id";
                comm.Parameters.AddWithValue("id", id);


                comm.CommandType = CommandType.Text;

                conn.Open();

                SqlDataReader reader = comm.ExecuteReader();

                reader.Read();
                wynik = (int)reader[0];

            }
            catch (Exception) { throw; }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return wynik;
        }
        public void Busy(string id)
        {
            
            try
            {

                ConnectToDb();
                comm.CommandText = "UPDATE Patients SET Zajety=1 WHERE ID_Pacjenta=@id";
                comm.Parameters.AddWithValue("id", Convert.ToInt32(id));


                comm.CommandType = CommandType.Text;

                conn.Open();

                comm.ExecuteNonQuery();

            }
            catch (Exception) { throw; }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            
        }
        public void NotBusy(string id)
        {

            try
            {

                ConnectToDb();
                comm.CommandText = "UPDATE Patients SET Zajety=0 WHERE ID_Pacjenta=@id";
                comm.Parameters.AddWithValue("id", Convert.ToInt32(id));


                comm.CommandType = CommandType.Text;

                conn.Open();

                comm.ExecuteNonQuery();

            }
            catch (Exception) { throw; }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }

        }
        public void Wanted(string id)
        {

            try
            {

                ConnectToDb();
                comm.CommandText = "UPDATE Patients SET CzyPozadany=1 WHERE ID_Pacjenta=@id";
                comm.Parameters.AddWithValue("id", Convert.ToInt32(id));


                comm.CommandType = CommandType.Text;

                conn.Open();

                comm.ExecuteNonQuery();

            }
            catch (Exception) { throw; }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }

        }
        public void NotWanted(string id)
        {

            try
            {

                ConnectToDb();
                comm.CommandText = "UPDATE Patients SET CzyPozadany=0 WHERE ID_Pacjenta=@id";
                comm.Parameters.AddWithValue("id", Convert.ToInt32(id));


                comm.CommandType = CommandType.Text;

                conn.Open();

                comm.ExecuteNonQuery();

            }
            catch (Exception) { throw; }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }

        }
        public List<Pacjent> DownloadPatientList()
        {
            List<Pacjent> wynik=new List<Pacjent>();
            int iloscPacjentow;
            try
            {

                ConnectToDb();
                comm.CommandText = "SELECT MAX(ID_Pacjenta) FROM Patients";
                //comm.Parameters.Add("@log", SqlDbType.Text).Value = "'"+login+"'";

                comm.CommandType = CommandType.Text;

                conn.Open();

                SqlDataReader reader = comm.ExecuteReader();
                //reader=comm.ExecuteReader();

                reader.Read();
                iloscPacjentow = (int)reader[0];
            }
            catch (Exception) { throw; }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            try
            {

                ConnectToDb();
                comm.CommandText = "SELECT * FROM Patients";
                //comm.Parameters.Add("@log", SqlDbType.Text).Value = "'"+login+"'";
                
                comm.CommandType = CommandType.Text;

                conn.Open();

                SqlDataReader reader = comm.ExecuteReader();
                //reader=comm.ExecuteReader();

                while (reader.Read())
                
                {
                    for (int i = 0; i < iloscPacjentow; i += 8)
                    {
                        wynik.Add(new Pacjent(reader[i].ToString(), reader[i + 1].ToString(), reader[i + 2].ToString(), reader[i + 3].ToString(), Convert.ToDateTime(reader[i + 4]), reader[i + 5].ToString(), reader[i + 6].ToString(), reader[i + 7].ToString()));
                    }
                }


                return wynik;

            }
            catch (Exception) { throw; }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }

        }
    }
}
