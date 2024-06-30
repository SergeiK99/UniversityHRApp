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
    /// Логика взаимодействия для Log.xaml
    /// </summary>
    public partial class Log : Window
    {
        public Log()
        {
            InitializeComponent();
        }

        private void btOk_Click(object sender, RoutedEventArgs e)
        {
            //получаем логин и пароль(перед этим захешировав его) из текст боксов
            var login = tbLog.Text;
            var pass = HashPassword.Hash(tbPass.Text);

            //сравнение введенных логина и пароля с лоигинами и паролями из БД
            var currentUser = UniversituHREntities.GetContext().Users
                .FirstOrDefault(u => u.Login == login && u.Password == pass);

            // если переменная получает пользователя(проверка прошла),
            //то переходим в главное меню приложения
            if(currentUser != null)
            {
                MainWindow form = new MainWindow();
                form.Show();
                Close();
            }
            //иначе выводем сообщение об ошибке
            else { MessageBox.Show("Данного пользователмя не существует"); }
        }

        private void btCancel_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
