   M S B A M L   `   `   `  ����J  FUniversityHRApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:UniversityHRApp.WindowsUniversityHRApp.Windows  5   	   *    $UniversityHRApp.Windows.AddEducation   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:UniversityHRApp.Windows     5   	     � Title$D  >Добавление/изменение образований��5   	   $��418.837��62   $��396.122��6C    � Icon$0 */UniversityHRApp;component/iQdW6_Iz4Gg.jpg��6S   .��5	      � .+�5
   
   �� $(��"Учебное заведение:��6   $
��Left=�6-   $��6,20,0,0q�6H   $	��Top=�6Z   $��16(�6r   �� 5   
   $!��Специализация:��6   $
��Left=�6)   $��	35,56,0,0q�6D   $	��Top=�6W   $��16(�6o   �� 5   
   $��Сотрудник:��6   $
��Left=�6%   $��	71,92,0,0q�6@   $	��Top=�6S   $��16(�6k   �� 5   
   -   5         ��Name$ cbEdi��5       �� DisplayMemberPath$
 Name��6S   $
��Left=�6m   $��
168,26,0,0q�6�   $	��Top=�6�   $	��199��6�   $��14(�6�    �� SelectedItem 6"   �� *EducationalInstitution+6�   �� 5   
   -   5        $ cbSpec��5      $
 Name��6K   $
��Left=�6e   $��
168,62,0,0q�6�   $	��Top=�6�   $	��199��6�   $��14(�6�    6#   �� *Specialization+6�   �� 5   
   -   5        $ 
cbLastName��5      $ LastName��6G   $
��Left=�6e   $��
168,98,0,0q�6�   $	��Top=�6�   $	��199��6�   $��14(�6�    6'   �� *Worker+6�   �� 5   
   $"��Дата окончания:��6   $
��Left=�6*   $��
32,187,0,0q�6E   $	��Top=�6Y   $��16(�6q   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ dpGrad��5      $
��Left=�6O   $��168,190,0,0q�6j   $	��Top=�6   $	��199��6�   $��14(�6�      SelectedDate 6%   �� *YearOfGraduation+6�   �� 5   
   $ ��Тип документа:��6   $
��Left=�6)   $��
41,139,0,0q�6D   $	��Top=�6X   $��16(�6p   �� 5   
   -   5         ��Name$ tbType��5      $
��Left=�6B   $��31��6]   $��168,139,0,0q�6i    �� TextWrapping$
 Wrap=�6~   $	��Top=�6�   $	��199��6�   $��14(�6�   ��6"   �� *TypeOfDocument+6�   �� 5   
   -   5        	 ��Name$	 btSave��5      $��Сохранить��6!   $
��Left=�65   $��
22,296,0,0q�6P   $	��Top=�6d   $	��124��6|   $��14(�6�   6�   �� 5   
   -   5        $	 btClose��5      $��
Выйти��6"   $
��Left=�62   $��243,296,0,0q�6M   $	��Top=�6b   $	��124��6z   $��14(�6�   6�   5      5      