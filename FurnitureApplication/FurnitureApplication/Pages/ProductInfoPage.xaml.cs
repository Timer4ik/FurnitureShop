using FurnitureApplication.Entity;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
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
    /// Логика взаимодействия для ProductInfoPage.xaml
    /// </summary>
    public partial class ProductInfoPage : Page
    {
        public Product Product { get; set; }
        public List<ProductType> ProductTypes { get; set; } = new List<ProductType>();
        private string _photoDirectory = $@"{Directory.GetCurrentDirectory()}\Images\";


        private string _photoName;
        private string _photoPath;
        public ProductInfoPage(Product product)
        {
            InitializeComponent();
            Product = product ?? new Product();
            DataContext = Product;

            ProductTypes = FurnitureEntities.GetContext().ProductTypes.ToList();
            ProductTypeCmb.ItemsSource = ProductTypes;
            ProductTypeCmb.SelectedIndex = 0;
            ProductTypeCmb.DisplayMemberPath = "Name";
        }

        private string PhotoNameGenerate(string defaultName = "image.jpg")
        {
            string photoName = defaultName;

            if (!File.Exists(_photoDirectory+photoName))
            {
                return photoName;
            }

            int i = 0;
            while (File.Exists(photoName))
            {
                if (!File.Exists(_photoDirectory + i + photoName))
                {
                    photoName = photoName + i;
                    break;
                }
                i++;
            }

            return photoName;

        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (ProductTypeCmb.SelectedIndex<=0)
            {
                errors.AppendLine("Обязательно должен быть выбран тип товара");
            }
            if (ProductNameTb.Text.Trim().Length==0)
            {
                errors.AppendLine("Название товара не может быть пустым");
            }
            //if (decimal.Parse(MakePriceTb.Text) <= 0)
            //{
            //    errors.AppendLine("Цена производства не может быть меньшей или равной нулю");
            //}
            //if (decimal.Parse(SellPriceTb.Text) <= 0)
            //{
            //    errors.AppendLine("Цена продажи не может быть меньшей или равной нулю");
            //}
            if (errors.Length>0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }


            ProductType productType = ProductTypeCmb.SelectedItem as ProductType;
            Product.ProductTypeId = productType.ProductTypeId;
            if (_photoPath!=null)
            {
                string photo = PhotoNameGenerate(_photoName);
                Product.Photo = photo;
                File.Copy(_photoPath,_photoDirectory+photo);
            }


            try
            {
                if (Product.ProductId == 0)
                {
                    FurnitureEntities.GetContext().Products.Add(Product);
                }
                else
                {
                    FurnitureEntities.GetContext().SaveChanges();
                }
                NavigationService.GoBack();
            }
            catch (Exception error)
            {
                MessageBox.Show(error.Message);
            }

        }

        private void LoadPhotoButton_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "Files (.jpg)|*.jpg";

            if (openFileDialog.ShowDialog() == true)
            {
                FileInfo file = new FileInfo(openFileDialog.FileName);
                if (file.Length > 8 * 1024 * 1024 * 5)
                {
                    MessageBox.Show("Файл не может весить больше 5 мб.");
                    return;
                }

                _photoName = file.Name;
                _photoPath = file.FullName;

                BitmapImage bitmapImage = new BitmapImage(new Uri(_photoPath));
                PhotoImage.Source = bitmapImage;
            }
        }
    }
}
