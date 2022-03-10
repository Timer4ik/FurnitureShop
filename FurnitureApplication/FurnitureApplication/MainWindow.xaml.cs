using FurnitureApplication.Pages;
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

namespace FurnitureApplication
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            MainFrame.Navigate(new ProductsPage());
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new ProductsPage());
        }

        private void OrdersButton_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new ProductsPage());
        }

        private void ProductsButton_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new ProductsPage());
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            if (MainFrame.CanGoBack)
            {
                MainFrame.GoBack();
            }
        }

        private void MainFrame_ContentRendered(object sender, EventArgs e)
        {
            if (MainFrame.CanGoBack)
            {
                ProductsButton.Visibility = Visibility.Collapsed;
                OrdersButton.Visibility = Visibility.Collapsed;
                BackButton.Visibility = Visibility.Visible;
            }
            else
            {
                ProductsButton.Visibility = Visibility.Visible;
                OrdersButton.Visibility = Visibility.Visible;
                BackButton.Visibility = Visibility.Collapsed;
            }
        }
    }
}
