   M S B A M L   `   `   `  ����J  FUniversityHRApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:UniversityHRApp.WindowsUniversityHRApp.Windows  5   	   +    %UniversityHRApp.Windows.ListEducation   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:UniversityHRApp.Windows     5   	     � Title$  Образования��5   	   $��543.49��6   $	��800��6-    � Icon$0 */UniversityHRApp;component/iQdW6_Iz4Gg.jpg��69   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$
 dgEd��5
      $
��Left=�6!   $	��332��6<   $	��Top=�6I   $	��792��6a      AutoGenerateColumns .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$' !Учебное заведение��6x      Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6�   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *EducationalInstitution.Name+	   ClipboardContentBinding	 6U   Z� 6�     5      $  Специализация��6p   $
 Auto 6�    6%   �� *Specialization.Name+	 6M   Z� 6�     5      $ Сотрудник��6l   $
 Auto 6    6%   �� *Worker.LastName+	 6I   Z� 6     5      $ Тип документа��6k   $
 Auto 6�    6%   �� *TypeOfDocument+	 6H   Z� 6�     5      $! Дата окончания��6c   $
 Auto 6{    6%   �� *YearOfGraduation+
 �� StringFormat$
 {0:yyyy}��6{   5      �� 5   
   -   5         ��Name$ btAdd��5      $��Добавить��6    $
��Left=�63   $��178,331,0,0q�6N   $	��Top=�6c   $	��442��6{   $��44��6�   $��16(�6�   6�   �� 5   
   -   5        $ btEdit��5      $��Изменить��6!   $
��Left=�64   $��178,375,0,0q�6O   $	��Top=�6d   $	��442��6|   $��44��6�   $��16(�6�   6�   �� 5   
   -   5        $ btDel��5      $��Удалить��6    $
��Left=�62   $��178,418,0,0q�6M   $	��Top=�6b   $	��442��6z   $��44��6�   $��16(�6�   6�   �� 5   
   -   5        $ btClose��5      $��
Выйти��6"   $
��Left=�62   $��178,462,0,0q�6M   $	��Top=�6b   $	��442��6z   $��44��6�   $��16(�6�   6�   5      5      