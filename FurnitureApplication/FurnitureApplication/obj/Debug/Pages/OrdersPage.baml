   M S B A M L   `   `   `  ����O  KFurnitureApplication, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:FurnitureApplication.PagesFurnitureApplication.Pages  5      +    %FurnitureApplication.Pages.OrdersPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      :local(clr-namespace:FurnitureApplication.Pages     5        N� Title$  
OrdersPage��5	       N� 
Background
 ����� N� FontSize$ 18(�6-   .��5
      �  � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      $��5* �6    � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   �� $��0��6   $��0��6!   $��Номер заказа: ��61   $��Center=�6G   $��Center=�6d   $��18(�6   �� 5   
   -   5         ��Name$ 	OrderIdTb��5   /   $��0��6   $��1��6   $��Center=�6[   $
��20 0q�6v   ��6B   �� *	OrderId+6v   �� 5   
   $��1��6   $��0��6!   $��Номер заказа: ��61   $��Center=�6G   $��Center=�6d   $��18(�6   �� 5   
   -   5        $ OrderDateTb��5   /   $��1��6   $��1��6   $��Center=�6_   $
��20 0q�6z   ��6D   �� *	OrderDate+6z   �� 5   
   $��2��6   $��0��6!   $��Клиент: ��61   $��Center=�6A   $��Center=�6^   $��18(�6y   �� 5    
   -   5         ��Name$ 	ClientCmb��5    0   $��2��6   $��1��6    $��Center=�6C   $
��20 0q�6^   �� 5"   
   $��3��6   $��0��6!   $2��,Общая стоимость заказа: ��61   $��Center=�6Q   $��Center=�6n   $��18(�6�   �� 5#   
   -   5        $ 	FullPrice��5#   /   $��3��6   $��1��6   {�.  $��Center=�6o   $
��20 0q�6�   ��6B   �� *	FullPrice+6�   &   System.Windows.Controls.DataGrid  5%   
   -   5          Name$ OrderProductsDg��5%      $��4��6,   $��2��69   $��10(�6M      AutoGenerateColumns .  	   Columns	 5&      4  .System.Windows.Controls.DataGridTemplateColumn  5'      ,  &System.Windows.Controls.DataGridColumn
   Header$
 	№ п/п��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 68      CellTemplate 5(      �� 5)      .R�5*      �� ��6(   �� *	ProductId+5+      5-        5.      $#
 Товарная группа��6)    5/      �� 50      .R�51      �� $ ProductTypesCmb��6'   -   5         �� DisplayMemberPath$
 Name��51   e   ��6@   �� *ProductTypes+6~   52      54        55      $+
 %Наименование товара��6)    56      �� 57      .R�58      �� $
 Name��6H   ��6'   �� *
Products+6H   59      5;        5<      $
 Цена продажи��6)    5=      �� 5>      .R�5?      ��  �� 
IsReadOnly . ��6&   �� *	SellPrice+6A   5@      5B        5C      $
 Количество��6)    5D      �� 5E      .R�5F      �� ��6&   �� *Amount+5G      5I        5J      $'
 !Стоимость позиции��6)    5K      �� 5L      .R�5M      ��  . ��6&   �� *Price+6=   5N      5P        5Q      $#
 Удалить позицию��6)    5R      �� 5S      .R�5T      �� $#��Удалить позицию��6%   5U      5W      5Y      5Z      5[      