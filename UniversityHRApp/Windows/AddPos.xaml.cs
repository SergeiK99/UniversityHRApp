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
    /// Логика взаимодействия для AddPos.xaml
    /// </summary>
    public partial class AddPos : Window
    {
        private Position currentPos = new Position();
        public AddPos(Position selectedPos)
        {
            InitializeComponent();
            if(selectedPos != null)
            {
                currentPos = selectedPos;
            }
            DataContext = currentPos;
        }

        private void btOk_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(tbPos.Text))
            {
                MessageBox.Show("Вы не ввели должность!");
                return;
            }
            if (currentPos.Id == 0)
            {
                UniversituHREntities.GetContext().Position.Add(currentPos);
            }
            UniversituHREntities.GetContext().SaveChanges();
            this.DialogResult = true;
        }

        private void btClose_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
            Close();
        }
    }
}
