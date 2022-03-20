using FurnitureApplication.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.RightsManagement;
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
    /// Логика взаимодействия для OrdersPage.xaml
    /// </summary>
    /// 

    public class ProductOrderTable : ProductOrder  
    {
        public List<ProductType> ProductTypes { get; set; } = new List<ProductType>();
        public List<Product> Products { get; set; } = new List<Product>();

        public double Price = 0;
        public ProductOrderTable(List<ProductType> productTypes,List<Product> products) : base()
        {
            ProductTypes = productTypes;
            Products = products;
        }
    }

    public partial class OrdersPage : Page
    {
        public Order Order { get; set; } = new Order();
        public List<ProductOrderTable> ProductOrderTables { get; set; } = new List<ProductOrderTable>();



        public List<ProductType> ProductTypes = new List<ProductType>();
        public List<Product> Products = new List<Product>();

        public OrdersPage()
        {
            InitializeComponent();
            ProductTypes = FurnitureEntities.GetContext().ProductTypes.ToList();
            Products = FurnitureEntities.GetContext().Products.ToList();

            ProductOrderTables.Add(new ProductOrderTable(ProductTypes,Products));

            OrderProductsDg.DataContext = this;
            OrderProductsDg.ItemsSource = ProductOrderTables;

        }

        private void ProductTypesCmb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            ProductOrderTable product = (ProductOrderTable)(sender as ComboBox).DataContext;

            product.Product = product.Product ?? new Product();
            product.Product.ProductTypeId = ((ProductType)(sender as ComboBox).SelectedItem).ProductTypeId;

            product.ProductTypes = FurnitureEntities.GetContext().ProductTypes.Where(p=>p.ProductTypeId == product.Product.ProductTypeId).ToList();

            product.Amount = 100;

            OrderProductsDg.DataContext = this;
            OrderProductsDg.ItemsSource = ProductOrderTables;
        }
    }
}
