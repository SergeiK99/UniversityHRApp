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
    /// Логика взаимодействия для EditEployRec.xaml
    /// </summary>
    public partial class EditEployRec : Window
    {
        EmploymentRecord currentEmploymentRecord = new EmploymentRecord();
        UniversituHREntities db = UniversituHREntities.GetContext();
        public EditEployRec(EmploymentRecord employment)
        {
            InitializeComponent();
            if (employment != null)
            {
                currentEmploymentRecord = employment;
            }
            DataContext = currentEmploymentRecord;
            cbFirstName.ItemsSource = db.Worker.ToArray();
            cbLastName.ItemsSource = db.Worker.ToArray();
            cbMidName.ItemsSource = db.Worker.ToArray();
            cbOrg.ItemsSource = db.Organization.ToArray();
            cbPos.ItemsSource = db.Position.ToArray();
        }

        private void btSave_Click(object sender, RoutedEventArgs e)
        {
            if(cbLastName.SelectedItem == null)
            {
                MessageBox.Show("Вы не выбрали фамилию!");
                return;
            }
            if (cbFirstName.SelectedItem == null)
            {
                MessageBox.Show("Вы не выбрали имя!");
                return;
            }
            if (cbMidName.SelectedItem == null)
            {
                MessageBox.Show("Вы не выбрали отчество!");
                return;
            }
            if (cbOrg.SelectedItem == null)
            {
                MessageBox.Show("Вы не выбрали организацию!");
                return;
            }
            if (cbPos.SelectedItem == null)
            {
                MessageBox.Show("Вы не выбрали должность!");
                return;
            }
            if (string.IsNullOrWhiteSpace(tbOrderNum.Text))
            {
                MessageBox.Show("Вы не ввели номер приказа!");
                return;
            }
            if (string.IsNullOrWhiteSpace(tbIandP.Text))
            {
                MessageBox.Show("Вы не ввели вознаграждение/наказание!");
                return;
            }
            if (string.IsNullOrWhiteSpace(tbReason.Text))
            {
                MessageBox.Show("Вы не ввели причину увольнения!");
                return;
            }
            if (dpOrder.SelectedDate == null)
            {
                MessageBox.Show("Вы не выбрали дату приказа!");
                return;
            }
            if (dpEmp.SelectedDate == null)
            {
                MessageBox.Show("Вы не выбрали дату трудоустройства!");
                return;
            }
            if (dpDis.SelectedDate == null)
            {
                MessageBox.Show("Вы не выбрали дату увольнения!");
                return;
            }
            if(dpDis.SelectedDate<=dpEmp.SelectedDate)
            {
                MessageBox.Show("Вы указали некорректную дату увольнения!");
                return;
            }

            if (currentEmploymentRecord.Id == 0)
            {
                db.EmploymentRecord.Add(currentEmploymentRecord);
            }
            db.SaveChanges();
            this.DialogResult = true;
        }

        private void btClose_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
            Close();
        }
    }
}
