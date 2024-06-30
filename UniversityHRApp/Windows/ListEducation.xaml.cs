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
    /// Логика взаимодействия для ListEducation.xaml
    /// </summary>
    public partial class ListEducation : Window
    {
        public ListEducation()
        {
            InitializeComponent();
            dgEd.ItemsSource = UniversituHREntities.GetContext().Education.ToArray();
        }

        private void btAdd_Click(object sender, RoutedEventArgs e)
        {
            AddEducation form = new AddEducation(null);
            form.ShowDialog();
            dgEd.ItemsSource = UniversituHREntities.GetContext().Education.ToArray();
        }

        private void btEdit_Click(object sender, RoutedEventArgs e)
        {
            Education ed = dgEd.SelectedItem as Education;
            if (ed == null)
            {
                MessageBox.Show("Вы ничего не выбрали!");
                return;
            }
            AddEducation form = new AddEducation(ed);
            form.ShowDialog();
            dgEd.ItemsSource = UniversituHREntities.GetContext().Education.ToArray();
        }

        private void btDel_Click(object sender, RoutedEventArgs e)
        {
            Education ed = dgEd.SelectedItem as Education;
            if (ed == null)
            {
                MessageBox.Show("Вы ничего не выбрали!");
                return;
            }
            else
            {
                var userChoice = MessageBox.Show($"Вы уверены, что хотите удалить выбранный документ об образовании?",
                    "Подтвердите удаление", MessageBoxButton.YesNo);
                if (userChoice == MessageBoxResult.Yes)
                {
                    UniversituHREntities.GetContext().Education.Remove(ed);
                    UniversituHREntities.GetContext().SaveChanges();
                    dgEd.ItemsSource = UniversituHREntities.GetContext().Education.ToArray();
                }
            }
        }

        private void btClose_Click(object sender, RoutedEventArgs e)
        {

            Close();
        }
    }
}
