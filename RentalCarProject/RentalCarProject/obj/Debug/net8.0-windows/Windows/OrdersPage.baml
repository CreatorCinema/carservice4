   M S B A M L   `   `   `  ����K  GRentalCarProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:RentalCarProject.WindowsRentalCarProject.Windows  5      )    #RentalCarProject.Windows.OrdersPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      8local&clr-namespace:RentalCarProject.Windows     5      _ [MaterialDesignThemes.Wpf, Version=5.2.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a>Design1http://materialdesigninxaml.net/winfx/xaml/themes  5      c _MahApps.Metro.IconPacks.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=5.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      vmclr   5	      -   5          N� 
Background
  ����� J� 	AllowDrop$
 True��5   +    N� Title$
 Cars��5      .��5      �� ._�5   
   � -   5         �Name$ panel��5      $��1��6    � ColumnDefinitions 5      �� 5      �� 5      $
��auto �6#   $	��689��60    � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    $��78��6.   �� 5      $
��auto �6    $��37��6.   �� 5      $��* �6    .+�5      � $
��Left=�6   $��2��6.   $	��600��6B   $��2��6N    5      �� 5       $��* �6'   �� 5!      $��* �6'   .+�5$      �� $��10q�6   .+�5%      �� $��44��6    �� 
IsReadOnly$
 True��5&      $��30(�5'      $��Light"�5(       �� TextWrapping$
 Wrap=�5)      ��5*      �� *LicensePlate+.��5+      ��5,      �� 5-       �� 
TargetType" ��6$   .�5.   "   �� 	 �� Property	 � ��
 �� Value
 5/   &   �� 50   *   .R�51   .   ��  ��Name$ PART_ContentHost��65   52   +   54   #   55      .��56   )   57      �� 58      ��6   �� *Image+59      �� 5;      $��1��6   $��10q�6-   .+�5<      �� ��6   �� *ImageOrigin+5=      5>      �� 5@         	topButton#��[  6   $��639,20,0,19q�68   ���#dcdcdc$��1��6b   $��30��6r   .��5A      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$	 Cog=�6(   5C      �� 5E      #��[  6   $��604,20,0,19q�68   $��1��6M   $��30��6]   .��5F        $
 Bell=�6(   5H      �� 5J      $%��Ближайшие записи��6   $��2��60   $��32(�6=   $��SemiBold"�6K   $��
40,10,0,68q�6a   $
��Left=�5K      ���#121518$	��311��6H   $��2��6T   $��1��6e   �� 5L      -   5         ��Name$ btn_addClient��5L   s     	addButton#��[ 6   $��0,24,0,4q�68   $��1��6J   $��1��6W   $	��150��6g   .��5M      ��  �� Orientation$ 
Horizontal=�6   .+�5N        $
 Plus=�6,   $��Center=�68   $��11��6S   $��11��6^   $��0 1 8 0q�6j   �� 5O      $#��Добавить запись��6    5P      5Q      �� 5S      $��3��6   ���#dae2ea$��
4,61,35,16q�6:   �� 5U      $��3��6   $ 
Horizontal=�6&   $��	15,9,6,24q�6?   .+�5W      �� -   5        $ Roles��5W      $�� ��6(     	tabButton#��[ 63   5X      � 5[      $	��200��6   $
��Left=�6   $��3��6:   $��489,65,0,395q�6G   $��3��6]   $��1��6n   .+�5\      �� $��
15,22,15,0q�6   $	��Top=�60   ���#b0b9c6 J� IsHitTestVisible$ False��6]   �� 5^      -   5         ��Name$ 	txtFilter��5^   =   $	��200��6    �� TextAlignment$ Center=�6&     textboxFilter#��[ 6P   $��Center=�6x   $��Stretch=�5_      $��Center=�66   $��	0,35,0,16q�6X     5`      $ Magnify=�6(   $��20��67   $��30��6B   $��
172,40,0,0q�5a   (   ���#b0b9c66<   5b      &   System.Windows.Controls.DataGrid  5c      -   5          Name$ TableOrders��5c      $��5��6,   $��2��69   $��0,10,0,0q�6M      
IsReadOnly$ False��6_      AutoGenerateColumns$ False��6r   $	��NaN��6�   $	��NaN��6�     MaterialDesignDataGrid#��[ 5d         CanUserAddRows$ False��6G      Columns 5f      1  +MaterialDesignThemes.Wpf.DataGridTextColumn  5g      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 60   -   5        ServiceName��   Header$# Название услуги��5g   r      
IsReadOnly$
 True��6�   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6R   �� *ServiceName+6�     5h      $
 auto 60   -   5        Duration��$ Дата записи��5h   q   $
 True��6�    6O   �� *DateOfService+6�     5i      $
 auto 60   -	   5        Cost��$ Клиент��5i   i   $
 True��6y    6K   �� *	ClientFIO+6y   5n      5p      5r      5s      