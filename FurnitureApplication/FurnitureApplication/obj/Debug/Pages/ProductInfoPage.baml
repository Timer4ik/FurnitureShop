   M S B A M L   `   `   `  ����O  KFurnitureApplication, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:FurnitureApplication.PagesFurnitureApplication.Pages  5      0    *FurnitureApplication.Pages.ProductInfoPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      :local(clr-namespace:FurnitureApplication.Pages     5        N� Title$  ProductInfoPage��5	       N� 
Background
 ����� N� FontSize$ 20(�62   .��5
      �  � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      $	��100 �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $	��100 �6   .+�5   
   �� $��0��6   $��1��6!   $��Id продукта: ��61   $��Center=�6F   $��Center=�6c   $��18(�6~   �� 5   
   -   5         ��Name$ ProductIdTb��5   /   $��0��6   $��2��6   $��Center=�6_   $
��20 0q�6z   {�.  ��6D   �� *	ProductId+6�   �� 5   
   $��1��6   $��1��6!   $��Тип товара: ��61   $��Center=�6E   $��Center=�6b   $��18(�6}   �� 5    
   -   5        $��ProductTypeCmb��5    0   $��1��6   $��2��6    $��Center=�6F   $
��20 0q�6a   �� 5"   
   $��2��6   $��1��6!   $%��Название товара: ��61   $��Center=�6J   $��Center=�6g   $��18(�6�   �� 5#   
   -   5        $ ProductNameTb��5#   /   $��2��6   $��2��6   $��Center=�6\   $
��20 0q�6w   ��6F   �� *Name+6w   �� 5%   
   $��3��6   $��1��6!   $)��#Цена производства: ��61   $��Center=�6L   $��Center=�6i   $��18(�6�   �� 5&   
   -   5        $ MakePriceTb��5&   /   $��3��6   $��2��6   $��Center=�6�   $
��20 0q�6�   ��6D   �� *	MakePrice+ �� StringFormat$ c�� �� ConverterCulture$ ru-RU��6�   �� 5(   
   $��4��6   $��1��6!   $��Цена продажи: ��61   $��Center=�6G   $��Center=�6d   $��18(�6   �� 5)   
   -   5        $ SellPriceTb��5)   /   $��4��6   $��2��6   $��Center=�6�   $
��20 0q�6�   ��6D   �� *	SellPrice+$ c��$ ru-RU��6�   �� 5+   
   -   5         ��Name$ LoadPhotoButton��5+      $��5��6*   $��1��67   $!��Загрузить фото��6G   $��Center=�5,      $��Center=�6.   $��18(�5-      $��20 10q�6    
  akcent#��[  6/   
�������6T   �� 5.   
   -   5        	 ��Name$	 
PhotoImage��5.   -   $��5��6   $��2��6   $��Center=�6]   $
��20 0q�6x   ��6A   �� *
GetPhoto+6x   �� 50   
   -   5        $ SaveBtn��50      $��Сохранить��6"   $��1��66   $��6��6F   $��2��6S   $��Center=�51      $��Center=�6,   $��18(�52      $��20 10q�6    #��[  61   
�������
������ $��0q�53   >   54      55      