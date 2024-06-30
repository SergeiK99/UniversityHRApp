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
    /// Логика взаимодействия для AddEducation.xaml
    /// </summary>
    public partial class AddEducation : Window
    {
        private Education currentEducation = new Education();
        public AddEducation(Education selectedEducations)
        {
            InitializeComponent();
            if(selectedEducations!=null)
            {
                currentEducation = selectedEducations;
            }
            DataContext = currentEducation;
            cbEdi.ItemsSource = UniversituHREntities.GetContext().EducationalInstitution.ToArray();
            cbSpec.ItemsSource = UniversituHREntities.GetContext().Specialization.ToArray();
            cbLastName.ItemsSource = UniversituHREntities.GetContext().Worker.ToArray();
        }

        private void btClose_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
            Close();
        }

        private void btSave_Click(object sender, RoutedEventArgs e)
        {
            if (cbEdi.SelectedItem == null)
            {
                MessageBox.Show("Вы не выбрали учебное заведение!");
                return;
            }
            if (cbSpec.SelectedItem == null)
            {
                MessageBox.Show("Вы не выбрали специализацию!");
                return;
            }
            if (cbLastName.SelectedItem == null)
            {
                MessageBox.Show("Вы не выбрали сотрудника!");
                return;
            }
            if (string.IsNullOrWhiteSpace(tbType.Text))
            {
                MessageBox.Show("Вы не ввели тип документа!");
                return;
            }
            if (dpGrad.SelectedDate == null)
            {
                MessageBox.Show("Вы не выбрали дату окончания!");
                return;
            }
            if (currentEducation.Id == 0)
            {
                UniversituHREntities.GetContext().Education.Add(currentEducation);
            }
            UniversituHREntities.GetContext().SaveChanges();
            this.DialogResult = true;
        }
    }
}
