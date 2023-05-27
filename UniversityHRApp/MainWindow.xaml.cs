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
using System.Windows.Navigation;
using System.Windows.Shapes;
using UniversityHRApp;
using UniversityHRApp.Windows;


namespace UniversityHRApp
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void miWorker_Click(object sender, RoutedEventArgs e)
        {
            Window1 form = new Window1();
            form.ShowDialog();
        }

        private void miTK_Click(object sender, RoutedEventArgs e)
        {
            ListEployRec form = new ListEployRec();
            form.ShowDialog();
        }

        private void RePass_Click(object sender, RoutedEventArgs e)
        {
            RePass form = new RePass();
            form.ShowDialog();
        }

        private void menuPos_Click(object sender, RoutedEventArgs e)
        {
            ListPos form = new ListPos();
            form.ShowDialog();
        }
    }
}
