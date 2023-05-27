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
using UniversityHRApp;

namespace UniversityHRApp.Windows
{
    /// <summary>
    /// Логика взаимодействия для ListEployRec.xaml
    /// </summary>
    public partial class ListEployRec : Window
    {
        public ListEployRec()
        {
            InitializeComponent();
            dgRecord.ItemsSource = UniversituHREntities.GetContext().EmploymentRecord.ToArray();
        }

        private void btAdd_Click(object sender, RoutedEventArgs e)
        {
            EditEployRec form = new EditEployRec(null);
            form.ShowDialog();
            dgRecord.ItemsSource = UniversituHREntities.GetContext().EmploymentRecord.ToArray();
        }

        private void btEdit_Click(object sender, RoutedEventArgs e)
        {
            EmploymentRecord empRec = dgRecord.SelectedItem as EmploymentRecord;
            if (empRec == null)
            {
                MessageBox.Show("Вы ничего не выбрали!");
                return;
            }
            EditEployRec form = new EditEployRec(empRec);
            form.ShowDialog();
            dgRecord.ItemsSource = UniversituHREntities.GetContext().EmploymentRecord.ToArray();
        }

        private void btDel_Click(object sender, RoutedEventArgs e)
        {
            EmploymentRecord selecredRecord = dgRecord.SelectedItem as EmploymentRecord;
            if (selecredRecord == null)
            {
                MessageBox.Show("Вы ничего не выбрали!");
                return;
            }
            else
            {
                var userChoice = MessageBox.Show($"Вы уверены, что хотите удалить приказ под номером {selecredRecord.OrderNumber}?",
                    "Подтвердите удаление", MessageBoxButton.YesNo);
                if (userChoice == MessageBoxResult.Yes)
                {
                    UniversituHREntities.GetContext().EmploymentRecord.Remove(selecredRecord);
                    UniversituHREntities.GetContext().SaveChanges();
                    dgRecord.ItemsSource = UniversituHREntities.GetContext().EmploymentRecord.ToArray();
                }
            }
        }

        private void btClose_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
