using FurnitureApplication.Entity;
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

namespace FurnitureApplication
{
    /// <summary>
    /// Логика взаимодействия для LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        public LoginWindow()
        {
            InitializeComponent();
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            User user = FurnitureEntities.GetContext().Users.FirstOrDefault(p => p.Login == LoginTb.Text && p.Password == PasswordPb.Password);

            if (user == null)
            {
                MessageBox.Show("Вы ввели неверный логин или пароль. Пожалуйста, проверьте ещё раз введенные данные");
                return;
            }

            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            this.Close();
        }
    }
}
