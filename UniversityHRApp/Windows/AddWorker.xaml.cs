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

namespace UniversityHRApp.Windows
{
    /// <summary>
    /// Логика взаимодействия для AddWorker.xaml
    /// </summary>
    public partial class AddWorker : Window
    {
        private Worker currentWorker = new Worker();
        UniversituHREntities db = UniversituHREntities.GetContext();
        public AddWorker(Worker selectedWorker)
        {
            InitializeComponent();
            if (selectedWorker != null)
            {
                currentWorker = selectedWorker;
            }
            DataContext = currentWorker;
            cbDivision.ItemsSource = db.Division.ToArray();
            cbPos.ItemsSource = db.Position.ToArray();
            cbAD.ItemsSource = db.AcademicDegree.ToArray();
            cbAT.ItemsSource = db.AcademicTitle.ToArray();
            cbC.ItemsSource = db.Coutry.ToArray();
            cbR.ItemsSource = db.Region.ToArray();
            cbS.ItemsSource = db.Settlement.ToArray();
            cbStreet.ItemsSource = db.Street.ToArray();
        }

        private void btSave_Click(object sender, RoutedEventArgs e)
        {
            if(string.IsNullOrWhiteSpace(tbLastName.Text))
            { 
                MessageBox.Show("Вы не ввели фамилию!"); 
                return;
            }
            if (string.IsNullOrWhiteSpace(tbFirstName.Text))
            {
                MessageBox.Show("Вы не ввели имя!");
                return;
            }
            if (string.IsNullOrWhiteSpace(tbMidName.Text))
            {
                MessageBox.Show("Вы не ввели отчество!");
                return;
            }
            if (cbDivision.SelectedItem == null)
            {
                MessageBox.Show("Вы не выбрали подразделение!");
                return;
            }
            if (cbC.SelectedItem == null)
            {
                MessageBox.Show("Вы не выбрали страну!");
                return;
            }
            if (cbR.SelectedItem == null)
            {
                MessageBox.Show("Вы не выбрали регион!");
                return;
            }
            if (cbS.SelectedItem == null)
            {
                MessageBox.Show("Вы не выбрали населенный пункт!");
                return;
            }
            if (cbStreet.SelectedItem == null)
            {
                MessageBox.Show("Вы не выбрали улицу!");
                return;
            }
            if (string.IsNullOrWhiteSpace(tbHouse.Text))
            {
                MessageBox.Show("Вы не ввели номер дома!");
                return;
            }
            if (string.IsNullOrWhiteSpace(tbFlat.Text))
            {
                MessageBox.Show("Вы не ввели номер квартиры!");
                return;
            }
            if (string.IsNullOrWhiteSpace(tbGender.Text))
            {
                MessageBox.Show("Вы не ввели пол человека!");
                return;
            }
            if (dtBirth.SelectedDate == null)
            {
                MessageBox.Show("Вы не выбрали дату рождения!");
                return;
            }
            if (cbAD.SelectedItem == null)
            {
                MessageBox.Show("Вы не выбрали научную степень!");
                return;
            }
            if (cbAT.SelectedItem == null)
            {
                MessageBox.Show("Вы не выбрали ученное звание!");
                return;
            }
            if (cbPos.SelectedItem == null)
            {
                MessageBox.Show("Вы не выбрали должность!");
                return;
            }
            if (string.IsNullOrWhiteSpace(tbPassNum.Text))
            {
                MessageBox.Show("Вы не ввели номер паспорта!");
                return;
            }
            if (dtPass.SelectedDate == null)
            {
                MessageBox.Show("Вы не выбрали дату выдачи паспорта!");
                return;
            }
            if (string.IsNullOrWhiteSpace(tbWhoPass.Text))
            {
                MessageBox.Show("Вы не ввели кто выдал паспорт!");
                return;
            }
            if (string.IsNullOrWhiteSpace(tbPhone.Text))
            {
                MessageBox.Show("Вы не ввели номер телефона!");
                return;
            }
            /*currentWorker.LastName = tbLastName.Text;
            currentWorker.FirstName = tbFirstName.Text;
            currentWorker.MiddleName = tbMidName.Text;
            currentWorker.Division = cbDivision.SelectedItem as Division;
            currentWorker.Coutry = cbC.SelectedItem as Coutry;
            currentWorker.Region = cbR.SelectedItem as Region;
            currentWorker.Settlement = cbS.SelectedItem as Settlement;
            currentWorker.Street = cbStreet.SelectedItem as Street;
            currentWorker.House = tbHouse.Text;
            currentWorker.Flat = int.Parse(tbFlat.Text);
            currentWorker.Gender = tbGender.Text;
            currentWorker.DateOfBirth = dtBirth.SelectedDate;
            currentWorker.AcademicDegree = cbAD.SelectedItem as AcademicDegree;
            currentWorker.AcademicTitle = cbAT.SelectedItem as AcademicTitle;
            currentWorker.Position = cbPos.SelectedItem as Position;
            currentWorker.PassportNumber = long.Parse(tbPassNum.Text);
            currentWorker.DateOfIssuePassport = dtPass.SelectedDate;
            currentWorker.WhoIssuedPassport = tbWhoPass.Text;
            currentWorker.Telephone = long.Parse(tbPhone.Text);*/
            if (currentWorker.Id == 0)
            {
                db.Worker.Add(currentWorker);
            }
            db.SaveChanges();
            this.DialogResult = true;
        }

        private void btClose_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
            Close();
        }

        private void tbLastName_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            
        }

        private void tbFlat_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!Char.IsDigit(e.Text, 0))
            {
                e.Handled = true;
            }
        }

        private void tbPassNum_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!Char.IsDigit(e.Text, 0))
            {
                e.Handled = true;
            }
        }

        private void tbPhone_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!Char.IsDigit(e.Text, 0))
            {
                e.Handled = true;
            }
        }
    }
}
