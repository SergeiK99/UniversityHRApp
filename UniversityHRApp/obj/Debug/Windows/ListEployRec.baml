   M S B A M L   `   `   `  ����J  FUniversityHRApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:UniversityHRApp.WindowsUniversityHRApp.Windows  5   	   *    $UniversityHRApp.Windows.ListEployRec   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:UniversityHRApp.Windows     5   	     � Title$D  >Список записей в трудовых книжках��5   	   $	��450��63   $��1117.867��6@    � Icon$0 */UniversityHRApp;component/iQdW6_Iz4Gg.jpg��6Q   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dgRecord��5
      $
��Left=�6%   $	��255��6@   $	��Top=�6M   $
��1110��6e      AutoGenerateColumns .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Фамилия��6I   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *Worker.LastName+6I     5      $ Имя��6J    6%   �� *Worker.FirstName+6J     5      $ Отчество��6K    6%   �� *Worker.MiddleName+6K     5      $ Организация��6K      Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6`    6%   �� *Organization.Name+6`     5      $ Должность��6G   $
 Auto 6Z    6%   �� *Position.Name+6Z     5      $ Дата приказа��6g   $
 Auto 6}    6%   �� *DateOfTheOrder+	 �� StringFormat$	 {0:dd/MM/yyyy}��6}     5      $ Номер приказа��6E   $
 Auto 6\    6%   �� *OrderNumber+6\     5      $5 /Вознаграждения/Наказания��6P   $
 Auto 6r    6%   �� *IncentivesAndPenalties+6r     5      $- 'Дата трудоустройства��6i   $
 Auto 6�    6%   �� *DateOfEmployment+$	 {0:dd/MM/yyyy}��6�     5      $# Дата увольнения��6h   $
 Auto 6�    6%   �� *DateOfDismissal+$	 {0:dd/MM/yyyy}��6�     5      $) #Причина увольнения��6L   $
 Auto 6h    6%   �� *ReasonForDismissal+6h   5      �� 5   
   -   5        
 ��Name$
 btAdd��5      $��Добавить��6    $
��Left=�63   $��262,250,0,0q�6N   $	��Top=�6c   $	��606��6{   $��37��6�   $��22(�6�   6�   �� 5   
   -   5        $
 btEdit��5      $��Изменить��6!   $
��Left=�64   $��262,287,0,0q�6O   $	��Top=�6d   $	��606��6|   $��37��6�   $��22(�6�   6�   �� 5   
   -   5        $
 btDel��5      $��Удалить��6    $
��Left=�62   $��262,324,0,0q�6M   $	��Top=�6b   $	��606��6z   $��37��6�   $��22(�6�   6�   �� 5   
   -   5        $
 btClose��5      $��
Выход��6"   $
��Left=�62   $��262,361,0,0q�6M   $	��Top=�6b   $	��606��6z   $��37��6�   $��22(�6�   6�   5      5      