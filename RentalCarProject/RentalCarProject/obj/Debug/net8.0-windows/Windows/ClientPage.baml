   M S B A M L   `   `   `  ����K  GRentalCarProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:RentalCarProject1.WindowsRentalCarProject1.Windows  5      *    $RentalCarProject1.Windows.ClientPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:RentalCarProject1.Windows     5      c _MahApps.Metro.IconPacks.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=5.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      _ [MaterialDesignThemes.Wpf, Version=5.2.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a>Design1http://materialdesigninxaml.net/winfx/xaml/themes  5      vmclr  5	        N� 
Background
  ����� N� Title$
 Cars��5      .��5      �� ._�5   
   � -   5         �Name$ panel��5      $��1��6    � ColumnDefinitions 5      �� 5      �� 5      $
��auto �6#   $	��689��60    � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    $��78��6.   �� 5      $
��auto �6    $��37��6.   �� 5      $��* �6    .+�5      � $
��Left=�6   $��2��6.   $	��300��6B   .+�5      �� $
��20 0q�6   $��Center=�6*   ���#b0b9c6 J� IsHitTestVisible$ False��6Z   5#      �� 5%         	topButton#��[  6   $��639,20,0,19q�68   ���#dcdcdc$��1��6b   $��30��6r   .��5&      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$	 Cog=�6(   5(      �� 5*      #��[  6   $��604,20,0,19q�68   $��1��6M   $��30��6]   .��5+        $
 Bell=�6(   5-      �� 5/      $��Клиенты��6   $��1��6'   $��32(�64   $��SemiBold"�6B   $��0,20,0,0q�6X   $��Center=�50      ���#121518$	��136��6J   �� 52      -   5         ��Name$ btn_addClient��52   s     	addButton#��[ 6   $��0,24,0,4q�68   $��1��6J   $��1��6W   $	��150��6g   .��53      ��  �� Orientation$ 
Horizontal=�6   .+�54        $
 Plus=�6,   $��Center=�68   $��11��6S   $��11��6^   $��0 1 8 0q�6j   �� 55      $%��Добавить клиента��6    56      57      �� 59      $��3��6   ���#dae2ea$��
4,61,35,16q�6:   �� 5;      $��3��6   $ 
Horizontal=�6&   $��	15,9,6,24q�6?   .+�5=      �� -   5        $ Roles��5=      $�� ��6(     	tabButton#��[ 63   5>      �� 5@      $!��Фильтровать по��6   $��4��6.   $��18(�6;   $��SemiBold"�6I   ���#121518$
��Left=�5A   -   $��Center=�6H   $��	338,0,0,0q�5B      $��1��6+   $��24��6;   $	��136��6G   � 5C      $	��200��6   $
��Left=�6   $��3��6:   $��
489,65,0,0q�6G   $��2��6[   $��1��6l   .+�5D      �� $��
15,22,15,0q�6   $	��Top=�60   ���#b0b9c6$ False��6]   �� 5F      -   5        	 ��Name$	 	txtFilter��5F   =   $	��200��6   
 �� TextAlignment$
 Center=�6&     textboxFilter#��[ 6P   $��Center=�6w   $��Stretch=�5G      $��Center=�66   $��0,16,0,0q�6X     5H      $ Magnify=�6(   $��20��67   $��30��6B   $��
175,20,0,0q�5I   (   ���#b0b9c66<   5J      &   System.Windows.Controls.DataGrid  5K      -   5          Name$ TableClients��5K      $��5��6-   $��2��6:   $��0,10,0,0q�6N      
IsReadOnly$ False��6`      AutoGenerateColumns$ False��6s   $	��NaN��6�   $	��NaN��6�     MaterialDesignDataGrid#��[ 5L         Columns 5N      1  +MaterialDesignThemes.Wpf.DataGridTextColumn  5O      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 60   -   5        	Email��   Header$ 
Почта��5O   f      
IsReadOnly$
 True��6u   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6L   �� *Email+6u     5P      $
 auto 60   -   5        ServiceName��$ Пароль��5P   p   $
 True��6�    6R   �� *	FirstName+6�     5Q      $
 auto 60   -   5        Duration��$ Фамилия��5Q   l   $
 True��6}    6O   �� *
LastName+6}     5R      $
 auto 60   -	   5        Cost��$ Имя��5R   j   $
 True��6w    6K   �� *
Patronymic+6w     5S      $
 auto 60   -
   5        	Phone��$ Телефон��5S   f   $
 True��6w    6L   �� *Phone+6w     5T      $
 auto 60   $ Номер машины��6[   $
 True��6q    6=   �� *	NumberCar+6q     5U      $
 auto 60   -   5        DateOfBirth��$ Дата рождения��5U   r   $
 True��6�    6R   �� *DateOfBirth+6�     5W      $
 auto 60   -   5        DateOfRegistr��$% Дата Регистрации��5W   v   $
 True��6�    6T   �� *DateOfRegistr+6�   4  .System.Windows.Controls.DataGridTemplateColumn  5Y         CellTemplate 5Z      �� 5[      .R�5\   "   �� $ btnEdit��6)   -   5        $ ��Редактировать��5\   P     MaterialDesignFlatButton#��[ 6h   5]      5_        5a       5b      �� 5c      .R�5d   "   �� $ 	btnDelete��6)   -   5        $��Удалить��5d   T   #��[ 6f   5e      5g      5k      5m      5o      5p      