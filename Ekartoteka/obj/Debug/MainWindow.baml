   M S B A M L   `   `   `  ����E  AEkartoteka, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Ekartoteka
Ekartoteka  5   	       Ekartoteka.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Ekartoteka     5   	   -   5          �Name$  MainWindow1��5   	    � Title$ E-kartoteka��5   	   $	��540��6   $	��800��6*   ���	#FF4D6C91.��5	      �  � ColumnDefinitions 5
   
   �� 5      $	��21* �6   �� 5      $
��773* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ PatientList_DG��5      $
��Left=�6+   $	��257��6F   $��0.2,189,0,0q�6S   $	��Top=�6h   $	��339��6�   $��1��6�   6�   �� 5   
   -   5         ��Name$ 
Patient_TB��5      $
��Left=�6&   $	��283��6A   $��374.2,125,0,0q�6N    �� TextWrapping$
 Wrap=�6e   $��PODGLĄD DANYCH PACJENTA��6y   $	��Top=�6�   $	��370��6�   ���	#FF4D6C91���	#FF4D6C91���	#FFD9D7D5$��1��6  �� 5   
   -   5         ��Name$ Edit_B��5      $��Edytuj��6!   $
��Left=�62   $��33��6M   $��0.2,452,0,0q�6Y   $	��Top=�6n   $��90��6�   ���	#FFD9D7D5$��
Montserrat)�6�   $
��Bold"�6�   $��1��6�   6�   �� 5   
   -   5        $ Delete_B��5      $��Usuń��6#   $
��Left=�62   $��33��6M   $��104.2,452,0,0q�6Y   $	��Top=�6p   $��90��6�   ���	#FFD9D7D5$��
Montserrat)�6�   $
��Bold"�6�   $��1��6�   �� 5   
   -   5        $ NewPatient_B��5      $��NOWY PACJENT��6'   $
��Left=�6>   $��60��6Y   $��
0.2,85,0,0q�6e   $	��Top=�6y   $	��279��6�   ���	#FFD9D7D5$��
Montserrat)�6�   $��18(�6�   $
��Bold"�6�   $��1��6�   6�   �� 5   
   -   5         ��Name$ PatientsList_L��5      $��Wybierz pacjenta��6(   $
��Left=�6C   $��31��6^   $��0.2,156,0,0q�6j   $	��Top=�6   $	��279��6�   $��
Montserrat)�6�   $��16(�6�   $
��Bold"�6�   ���	#FFD9D7D5$��1��6�   �� 5   
   -   5        $ 
NewVisit_B��5      $��NOWA WIZYTA��6%   $
��Left=�6;   $��59��6V   $��465.2,426,0,0q�6b   $	��Top=�6y   $	��279��6�   ���	#FFD9D7D5$��
Montserrat)�6�   $��18(�6�   $
��Bold"�6�   $��1��6�   6�   �� 5   
   -	   5        $ 	Patient_L��5      $��Dane pacjenta��6#   $
��Left=�6;   $��32��6V   $��374.2,85,0,0q�6b   $	��Top=�6x   $	��279��6�   $��
Montserrat)�6�   $��16(�6�   $
��Bold"�6�   ���	#FFD9D7D5$��1��6�   �� 5   
   ���	#FFF4F4F5$
��Left=�6%   $��50��6@   $��
0,0,-0.4,0q�6L   
���   �$	��Top=�6o   $	��794��6�   $��2��6�   �� 5   
   -
   5        $ 	Doctor_TB��5      $
��Left=�6%   $��30��6@   $��
0.2,10,0,0q�6L   $
 Wrap=�6`   $+��%Imię i nazwisko zalogowanego lekarza��6t   $	��Top=�6�   $	��279��6�   $��
Montserrat)�6�   ���	#FFF4F4F5���	#FFF4F4F5$��1��6  $��14(�6  �� 5   
   -   5        $ Logout_B��5      $��WYLOGUJ��6#   $��1��65   $
��Left=�6E   $��30��6`   $��632.2,10,0,0q�6l   $	��Top=�6�   $	��131��6�   $��
Montserrat)�6�   $
��Bold"�6�   5      5      