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
    /// Логика взаимодействия для ListPos.xaml
    /// </summary>
    public partial class ListPos : Window
    {
        public ListPos()
        {
            InitializeComponent();
            dgPos.ItemsSource = UniversituHREntities.GetContext().Position.ToArray();
        }

        private void btClose_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void btAdd_Click(object sender, RoutedEventArgs e)
        {
            AddPos form = new AddPos(null);
            form.ShowDialog();
            dgPos.ItemsSource = UniversituHREntities.GetContext().Position.ToArray();
        }

        private void btEdit_Click(object sender, RoutedEventArgs e)
        {
            Position Pos = dgPos.SelectedItem as Position;
            if (Pos == null)
            {
                MessageBox.Show("Вы ничего не выбрали!");
                return;
            }
            AddPos form = new AddPos(Pos);
            form.ShowDialog();
            dgPos.ItemsSource = UniversituHREntities.GetContext().Position.ToArray();
        }

        private void btDel_Click(object sender, RoutedEventArgs e)
        {
            Position Pos = dgPos.SelectedItem as Position;
            if (Pos == null)
            {
                MessageBox.Show("Вы ничего не выбрали!");
                return;
            }
            else
            {
                var userChoice = MessageBox.Show($"Вы уверены, что хотите удалить должность {Pos.Name}?",
                    "Подтвердите удаление", MessageBoxButton.YesNo);
                if (userChoice == MessageBoxResult.Yes)
                {
                    UniversituHREntities.GetContext().Position.Remove(Pos);
                    UniversituHREntities.GetContext().SaveChanges();
                    dgPos.ItemsSource = UniversituHREntities.GetContext().Position.ToArray();
                }
            }
        }
    }
}
