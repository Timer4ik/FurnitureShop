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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace FurnitureApplication.Pages
{
    /// <summary>
    /// Логика взаимодействия для ProductsPage.xaml
    /// </summary>
    public partial class ProductsPage : Page
    {
        public ProductsPage()
        {
            InitializeComponent();
            try
            {
                SortCmb.SelectedIndex = 0;

                List<ProductType> productTypes = FurnitureEntities.GetContext().ProductTypes.ToList();
                productTypes.Insert(0, new ProductType
                {
                    Name = "Все"
                });
                FilterProductTypeCmb.ItemsSource = productTypes;
                FilterProductTypeCmb.SelectedIndex = 0;
                FilterProductTypeCmb.DisplayMemberPath = "Name";
            }
            catch (Exception error)
            {
                MessageBox.Show(error.Message);
            }
        }

        //Обновление данных при взаимодействии с формами
        private void Update()
        {
            try
            {
                List<Product> products = FurnitureEntities.GetContext().Products.ToList();


                string searchText = SearchTb.Text.Trim().ToLower();
                if (searchText.Length > 0)
                {
                    products = products.Where(p => p.Name.ToLower().Contains(searchText)).ToList();
                }


                if (SortCmb.SelectedIndex > 0)
                {
                    switch (SortCmb.SelectedIndex)
                    {
                        case 0:
                            products = products.OrderBy(p => p.Name).ToList();
                            break;
                        case 1:
                            products = products.OrderBy(p => p.SellPrice).ToList();
                            break;
                        case 2:
                            products = products.OrderByDescending(p => p.SellPrice).ToList();
                            break;
                        default:
                            break;
                    }
                }

                if (FilterProductTypeCmb.SelectedIndex > 0)
                {
                    ProductType productType = FilterProductTypeCmb.SelectedItem as ProductType;
                    products = products.Where(p => p.ProductTypeId == productType.ProductTypeId).ToList();
                }

                ProductListBox.ItemsSource = products;
            }
            catch (Exception error)
            {
                MessageBox.Show(error.Message);
            }
           
        }


        private void ProductInfoButton_Click(object sender, RoutedEventArgs e)
        {
            Product product = (Product)(sender as Button).DataContext;
            NavigationService.Navigate(new ProductInfoPage(product));
        }
        private void SearchTb_TextChanged(object sender, TextChangedEventArgs e)
        {
            Update();
        }

        private void SortCmb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Update();
        }

        private void FilterProductTypeCmb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Update();
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            try
            {
                FurnitureEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                Update();
            }
            catch (Exception error)
            {
                MessageBox.Show(error.Message);
            }
            
        }

        private void AddProductButton_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ProductInfoPage(null));
        }
    }
}
