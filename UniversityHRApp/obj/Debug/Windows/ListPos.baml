   M S B A M L   `   `   `  ����J  FUniversityHRApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:UniversityHRApp.WindowsUniversityHRApp.Windows  5   	   %    UniversityHRApp.Windows.ListPos   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:UniversityHRApp.Windows     5   	     � Title$  Должности��5   	   $��537.258��6   $��234.073��6,    � Icon$0 */UniversityHRApp;component/iQdW6_Iz4Gg.jpg��6<   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dgPos��5
      $
��Left=�6"   $	��332��6=   $	��Top=�6J   $	��224��6b   $��16(�6n      AutoGenerateColumns .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Должности��6f      Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6y   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� 	 �� Path$
	 Name�
   ClipboardContentBinding
 6C   Z� 6y   5      �� 5   
   -   5         ��Name$ btAdd��5      $��Добавить��6    $
��Left=�63   $��	0,330,0,0q�6N   $	��Top=�6a   $	��224��6y   $��44��6�   $��16(�6�   6�   �� 5   
   -   5        $ btEdit��5      $��Изменить��6!   $
��Left=�64   $��	0,374,0,0q�6O   $	��Top=�6b   $	��224��6z   $��44��6�   $��16(�6�   6�   �� 5   
   -   5        $ btDel��5      $��Удалить��6    $
��Left=�62   $��	0,417,0,0q�6M   $	��Top=�6`   $	��224��6x   $��44��6�   $��16(�6�   6�   �� 5   
   -   5        $ btClose��5      $��
Выйти��6"   $
��Left=�62   $��	0,461,0,0q�6M   $	��Top=�6`   $	��224��6x   $��44��6�   $��16(�6�   6�   5      5      