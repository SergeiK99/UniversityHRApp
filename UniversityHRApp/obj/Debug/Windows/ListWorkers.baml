   M S B A M L   `   `   `  ����J  FUniversityHRApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:UniversityHRApp.WindowsUniversityHRApp.Windows  5   	   %    UniversityHRApp.Windows.Window1   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:UniversityHRApp.Windows     5   	     � Title$  Сотрудники��5   	   $��442.5��6   $��1448.2��6+    � Icon$0 */UniversityHRApp;component/iQdW6_Iz4Gg.jpg��6:   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 	dgWorkers��5
      $
��Left=�6&   $	��255��6A   $	��Top=�6N   $
��1440��6f      AutoGenerateColumns .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Фамилия��6B   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *
LastName+6B     5      $ Имя��6C    6%   �� *	FirstName+6C     5      $ Отчество��6D    6%   �� *
MiddleName+6D     5      $  Подразделение��6G    6%   �� *Division.Name+6G     5      $ Страна��6E      Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6U    6%   �� *Coutry.Name+6U     5      $ Регион��6E   $
 Auto 6U    6%   �� *Region.Name+6U     5      $% Населенный пункт��6I   $
 Auto 6c    6%   �� *Settlement.Name+6c     5      $ 
Улица��6E   $
 Auto 6T    6%   �� *Street.Name+6T     5      $ Дом��6?   $
 Auto 6L    6%   �� *House+6L     5      $ Квартира��6>   $
 Auto 6P    6%   �� *Flat+6P     5      $ Пол��6@   $
 Auto 6M    6%   �� *Gender+6M     5      $ Дата рождения��6d   $
 Auto 6{    6%   �� *DateOfBirth+	 �� StringFormat$	 {0:dd/MM/yyyy}��6{     5      $# Научная степень��6M   $
 Auto 6f    6%   �� *AcademicDegree.Name+6f     5      $! Ученное звание��6L   $
 Auto 6d    6%   �� *AcademicTitle.Name+6d     5      $ Должность��6G   $
 Auto 6Z    6%   �� *Position.Name+6Z     5      $! Номер паспорта��6H   $
 Auto 6`    6%   �� *PassportNumber+6`     5      $, &Дата выдачи паспорта��6l   $
 Auto 6�    6%   �� *DateOfIssuePassport+$	 {0:dd/MM/yyyy}��6�     5      $&  Кем выдан паспорт��6K   $
 Auto 6f    6%   �� *WhoIssuedPassport+6f     5      $ Телефон��6C   $
 Auto 6T    6%   �� *	Telephone+6T   5       �� 5!   
   -   5        
 ��Name$
 btAdd��5!      $��Добавить��6    $
��Left=�63   $��399,255,0,0q�6N   $	��Top=�6c   $	��606��6{   $��37��6�   $��22(�6�   6�   �� 5"   
   -   5        $
 btEdit��5"      $��Изменить��6!   $
��Left=�64   $��399,292,0,0q�6O   $	��Top=�6d   $	��606��6|   $��37��6�   $��22(�6�   6�   �� 5#   
   -   5        $
 btDel��5#      $��Удалить��6    $
��Left=�62   $��399,329,0,0q�6M   $	��Top=�6b   $	��606��6z   $��37��6�   $��22(�6�   6�   �� 5$   
   -   5        $
 btClose��5$      $��
Выход��6"   $
��Left=�62   $��399,366,0,0q�6M   $	��Top=�6b   $	��606��6z   $��37��6�   $��22(�6�   6�   5&      5'      