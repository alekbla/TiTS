   M S B A M L   `   `   `  ���� E  AEkartoteka, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Ekartoteka
Ekartoteka      Ekartoteka.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:Ekartoteka     -     �Name$  MainWindow1�� � Title$ E-kartoteka��$	��540��$	��800�����	#FF4D6C91.���  � ColumnDefinitions �� $	��21* ��� $
��773* �.+�&   System.Windows.Controls.DataGrid  -     Name$ PatientList_DG��$
��Left=�$	��257��$��0.2,189,0,0q�$	��Top=�$	��339��$��1���� -    ��Name$ 
Patient_TB��$
��Left=�$	��283��$��374.2,125,0,0q� �� TextWrapping$
 Wrap=�$��PODGLĄD DANYCH PACJENTA��$	��Top=�$	��370�����	#FF4D6C91���	#FF4D6C91���	#FFD9D7D5$��1���� -    ��Name$ Edit_B��$��Edytuj��$
��Left=�$��33��$��0.2,452,0,0q�$	��Top=�$��90�����	#FFD9D7D5$��
Montserrat)�$
��Bold"�$��1���� -   $ Delete_B��$��Usuń��$
��Left=�$��33��$��104.2,452,0,0q�$	��Top=�$��90�����	#FFD9D7D5$��
Montserrat)�$
��Bold"�$��1���� -   $ NewPatient_B��$��NOWY PACJENT��$
��Left=�$��60��$��
0.2,85,0,0q�$	��Top=�$	��279�����	#FFD9D7D5$��
Montserrat)�$��18(�$
��Bold"�$��1���� -    ��Name$ PatientsList_L��$��Wybierz pacjenta��$
��Left=�$��31��$��0.2,156,0,0q�$	��Top=�$	��279��$��
Montserrat)�$��16(�$
��Bold"����	#FFD9D7D5$��1���� -   $ 
NewVisit_B��$��NOWA WIZYTA��$
��Left=�$��59��$��465.2,426,0,0q�$	��Top=�$	��279�����	#FFD9D7D5$��
Montserrat)�$��18(�$
��Bold"�$��1���� -	   $ 	Patient_L��$��Dane pacjenta��$
��Left=�$��32��$��374.2,85,0,0q�$	��Top=�$	��279��$��
Montserrat)�$��16(�$
��Bold"����	#FFD9D7D5$��1���� ���	#FFF4F4F5$
��Left=�$��50��$��
0,0,-0.4,0q�
���   �$	��Top=�$	��794��$��2���� -
   $ 	Doctor_TB��$
��Left=�$��30��$��
0.2,10,0,0q�$
 Wrap=�$+��%Imię i nazwisko zalogowanego lekarza��$	��Top=�$	��279��$��
Montserrat)����	#FFF4F4F5���	#FFF4F4F5$��1��$��14(��� -   $ Logout_B��$��WYLOGUJ��$��1��$
��Left=�$��30��$��632.2,10,0,0q�$	��Top=�$	��131��$��
Montserrat)�$
��Bold"�