   M S B A M L   `   `   `  ����L  HNavigation_Drawer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:Navigation_DrawerNavigation_Drawer  5	   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 67   "    Navigation_Drawer.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com  5   	   V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   +localclr-namespace:Navigation_Drawer  5	   	   0sys&clr-namespace:System;assembly=mscorlib  67   $	��600��5
      $
��1080��6'     � WindowStyle$
  None=�64    � 
ResizeMode$ 	CanResize=�6G    � AllowsTransparency . 
������  � Topmost .  � WindowStartupLocation$ CenterScreen=�6�   
�������.��5      � -   5         �Name$ 	grid_main��5      ���	#FFFBFBFB � ColumnDefinitions 5   
   �� 5      $��45 �6   �� 5      $	��20* �6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $	��13* �6   .+�5   
   � $��0��6   $��0��6   $��3��6,   $��0 0 0 0q�6@   $	��Top=�6Q   ���	#FF225C75 5      �� 5      $��3* �6#   �� 5      $��* �6#   .+�5      (� $��0��6   $��2��6&   .��5      �� $��Title of the application��6   $��Center=�6<   $
��auto��6Y   $��Center=�6f   $
��Wrap=�6�   $��0��6�   $��2��6�   5       � 5"      $��1��6   $��0q�6#   .+�5$      ��  �� Orientation$ 
Horizontal=�6   $��Right=�66   $��Center=�6R   .+�5&      (� .��5'      �� -   5        
������ $��0q�5'   :   .��5(      '  !MaterialDesignThemes.Wpf.PackIcon  -   5        	  Name$	 button_Minimalize��5(   6   
   Kind$
 WindowMinimize=�6Q   5)      5*      (� 5,      .��5-      �� -   5        
������ $��0q�5-   :   .��5.        $
 WindowMaximize=�66   5/      50      (� 52      .��53      �� -   5        $��0q�53   !   
������ $��0 0 10 0q�6�   .��54        $
 CloseCircle=�66   55      56      58      5:      5;      � 5?   
   $��0��6   $��1��6    ���	#FF225C75$��	0 -1 -1 0q�6E   .+�5@      �� .+�5A      �� -   5         ��Name$ LeftBar��5A      ��5B      �� 5C       �� 
TargetType" ��6"   .�5D      ��  �� Property � �� �� Value$	 110��67   �� 5E       � ��$ 40��66   �� 5F       � ��$ Center=�6D   �� 5G       � ��$ 0q�6@   5H      .@�5K      �� -   5        .��5L        $
 ViewDashboard=�62   
�������$��25��6[   $��25��6f   5M      �� 5O      -   5        .��5P        $

 Cube=�62   
�������$��25��6Q   $��25��6\   5Q      �� 5S      -	   5        .��5T        $
 ChartBellCurveCumulative=�62   $��25��6R   $��25��6]   
�������6i   5U      �� 5W      -
   5        .��5X        $
 PeopleGroup=�62   $��25��6E   $��25��6P   
�������6\   5Y      �� 5[      -   5        .��5\        $
 Github=�62   $��25��6@   $��25��6K   
�������6W   5]      5^      5_      5`      � 5e   
   -   5        $ GridContributors��5e      $��1��6)   $��1��69   $y�	Collapsed=�6F   $��0q�6]    5f      �� 5g      $��3* �6#   �� 5h      $��2* �6#    5j      �� 5k      �� 5l      �� 5m      �� 5n      .+�5q      (� $��0��6   $��4��6#   .��5r      �� -   5         ��Name$ CubeGIF��5r      "  WpfAnimatedGif.ImageBehavior   AnimatedSource$ cube.gif��6)      RepeatBehavior$ Forever��6U   $��Center=�6�   $��Center=�6�   5s      �� 5t      $��Contributors :��6   $��1��6.   $��0��6>   
���   �$
��Left=�6^   $��Center=�6y   $��Microsoft YaHei)�6�   $��30(�6�   $
��Bold"�6�   �� 5u      $��Imie Nazwisko��6   $��1��6-   $��1��6=   
���   �$
��Left=�6]   $��Center=�6x   $��Segoe Script)�6�   $��30(�6�   $
��Bold"�6�   �� 5v      $��Imie Nazwisko��6   $��1��6-   $��2��6=   
���   �$
��Left=�6]   $��Center=�6x   $��Segoe Script)�6�   $��30(�6�   $
��Bold"�6�   �� 5w      $��Imie Nazwisko��6   $��1��6-   $��3��6=   
���   �$
��left=�6]   $��Center=�6x   $��Segoe Script)�6�   $��30(�6�   $
��Bold"�6�   5z      � 5|      -   5        $ GridHome��5|   0   $��2��6   $��2��6    $y�	Collapsed=�6B   .+�5}      �� $
��HOME��6   $��Center=�6(   $��Center=�6C   
���  ��6`   5~      � 5�      -   5        $ GridSettings��5�   0   $��2��6   $��2��6    $y�	Collapsed=�6G   .+�5�      �� $��Settings��6   $��Center=�6,   $��Center=�6G   
���  ��6d   5�      � 5�      -   5        $ GridPlot��5�   0   $��2��6   $��2��6    $y�	Collapsed=�6B   .+�5�      �� $
��Plot��6   $��Center=�6(   $��Center=�6C   
���  ��6`   5�      5�      5�      