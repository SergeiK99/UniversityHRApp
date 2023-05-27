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
    /// Логика взаимодействия для Window1.xaml
    /// </summary>
    public partial class Window1 : Window
    {
        public Window1()
        {
            InitializeComponent();
            dgWorkers.ItemsSource = UniversituHREntities.GetContext().Worker.ToArray();
        }

        private void btAdd_Click(object sender, RoutedEventArgs e)
        {
            AddWorker form = new AddWorker(null);
            form.ShowDialog();
            dgWorkers.ItemsSource = UniversituHREntities.GetContext().Worker.ToArray();
        }

        private void btClose_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void btEdit_Click(object sender, RoutedEventArgs e)
        {
            Worker Worker = dgWorkers.SelectedItem as Worker;
            if(Worker == null)
            {
                MessageBox.Show("Вы ничего не выбрали!");
                return;
            }
            AddWorker form = new AddWorker(Worker);
            form.ShowDialog();
            dgWorkers.ItemsSource = UniversituHREntities.GetContext().Worker.ToArray();
        }

        private void btDel_Click(object sender, RoutedEventArgs e)
        {
            Worker selecredWorker = dgWorkers.SelectedItem as Worker;
            if(selecredWorker == null)
            {
                MessageBox.Show("Вы ничего не выбрали!");
                return;
            }
            else
            {
                var userChoice = MessageBox.Show($"Вы уверены, что хотите удалить сотрудника {selecredWorker.LastName}?",
                    "Подтвердите удаление", MessageBoxButton.YesNo);
                if (userChoice == MessageBoxResult.Yes)
                {
                    UniversituHREntities.GetContext().Worker.Remove(selecredWorker);
                    UniversituHREntities.GetContext().SaveChanges();
                    dgWorkers.ItemsSource = UniversituHREntities.GetContext().Worker.ToArray();
                }
            }
        }
    }
}
