   M S B A M L   `   `   `  ����K  GRentalCarProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:RentalCarProject1.WindowsRentalCarProject1.Windows  5   	   I)clr-namespace:RentalCarProject.ViewModelsRentalCarProject.ViewModels  5	   	   *    $RentalCarProject.Windows.AdminWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   c _MahApps.Metro.IconPacks.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=5.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5   	   <d2http://schemas.microsoft.com/expression/blend/2008   5   	   Fmc;http://schemas.openxmlformats.org/markup-compatibility/2006   5   	   _ [MaterialDesignThemes.Wpf, Version=5.2.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   3local'clr-namespace:RentalCarProject1.Windows  5   	   6locals)clr-namespace:RentalCarProject.ViewModels  5	   	   $	��720��5   	   $
��1080��6     � WindowStartupLocation$  CenterScreen=�6#    � WindowStyle$
 None=�6H    � AllowsTransparency$
 True��5   	   
������ .��5      �� -   5        ���#eff2f7 �� CornerRadius$ 30��5   "   ._�5   
   �  � ColumnDefinitions 5      �� 5      $	��200 �6#   �� 5      $��* �6#   .+�5      �  � RowDefinitions 5      �� 5      $
��auto �6$   �� 5      $��* �6$   .+�5      �� $��
20 28 0 35q�6      	topButton#��[  6-   .��5      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$
 Menu=�6,   $��15��68   $��15��6C   5!      �� 5#      $��1��6   ���#623ed0$ 	0 50 0 30��6;   ._�5$      ]� .+�5&      �� $��80��6!   $��80��6,    �� Padding$ 3q�68   
�������$	 100��6W   $	��Top=�5'   !   $��Center=�66   $��
0 -30 30 0q�6S   ._�5(      A� ��5)   "   �� 5*   &   -   5        	Image��5*   1   5,      5-      �� 5/      -   5         ��Name$
 Role��5/   $   
�������$��22(�6E   $��SemiBold"�6S   $	��Top=�50   $   	 �� TextAlignment$
	 Left=�69   $��
30,25,0,10q�6N   $��Center=�6b   �� 52      -   5        $
 Name��52   $   ���#d0bfff$��14(�6G   $��SemiBold"�6U   $	��Top=�53   $   $	 Center=�69   �� 57      $��25q�6$   $	��Top=�60   $	��0.8��6E   ���#7e5fdc6R   �� 5<      $	��Top=�6%   .+�5=      �� -   5        
 ��Name$
 orders��5=   %     
menuButton#��[ 65   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10��5>   %   .��5@   "   ��  �� Orientation$ 
Horizontal=�6-   .+�5A   &     $
 Home=�6<   $��15��6H   $��15��6S   $��	20 2 20 0q�6_   �� 5B   &   $��Записи��60   5C   #   5D      5F      �� 5K      $	��Top=�6%   .+�5L      �� -   5        $
 Services��5L   %   #��[ 67   $ 10��5M   %   .��5O   "   �� $ 
Horizontal=�6-   .+�5P   &     $	 Car=�6<   $��15��6G   $��15��6R   $��	20 2 20 0q�6^   �� 5Q   &   $��Услуги��60   5R   #   5S      5U      �� 5Z      $	��Top=�6%   .+�5[      �� -   5        $
 Clients��5[   %   #��[ 66   $ 10��5\   &   .��5^   "   �� $ 
Horizontal=�6-   .+�5_   &     $ HumanMaleBoardPoll=�6<   $��15��6V   $��15��6a   $��	20 2 20 0q�6m   �� 5`   &   $��Клиенты��60   5a   #   5b      5d      �� 5h      -   5        $
 
ExitButton��5h   !   #��[ 65   $��Bottom=�6Y   $��35��6�   .��5i      �� $ 
Horizontal=�6)   .+�5k   "     $ Logout=�68   $��15��6F   $��15��6Q   $��	20 2 20 0q�6]   �� 5l   "   $��
Выйти��6,   5m      5p      5r      5u      5v       � 5w      -	   5        $
��Main��5w      
������ $��1��69   $��18,22,18,56q�6I     � NavigationUIVisibility$ Hidden=�6^   5x      5y      5z      