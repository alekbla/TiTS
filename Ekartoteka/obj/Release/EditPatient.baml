   M S B A M L   `   `   `  ���� E  AEkartoteka, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Ekartoteka
Ekartoteka      Ekartoteka.EditPatient   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:Ekartoteka       � Title$!  E-kartoteka Edycja Pacjenta��$	��500��$	��520�����	#FF4D6C91.��� .+�� $��0,0,-0.4,-0.4q� � ColumnDefinitions �� �� $��0* �.+��� -    ��Name$ PESEL_TB��$
��Left=�$��30��$��
174,90,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��318��$��
Montserrat)�(  "System.Windows.Controls.DatePicker  -     Name$ BirthDate_DP��$
��Left=�$��30��$��174,130,0,0q�$	��Top=�$	��318��$��
Montserrat)��� -   $ Note_TB��$
��Left=�$��90��$��174,310,0,0q�$
 Wrap=�$	��Top=�$	��318��$��
Montserrat)��� -    ��Name$ SavePatient_B��$��ZAPISZ ZMIANY��$
��Left=�$��37��$��190,420,0,0q�$	��Top=�$	��140��$��
Montserrat)�$
��Bold"��� -   $ Allergies_TB��$
��Left=�$��30��$��174,170,0,0q�$
 Wrap=�$	��Top=�$	��318��$��
Montserrat)�{�.  �� -    ��Name$ DrugList_LB��$
��Left=�$��60��$��174,214,0,0q�$	��Top=�$	��150��$��
Montserrat)�{�.  �� -    ��Name$ AddedDrugs_LV��$
��Left=�$��60��$��342,214,0,0q�$	��Top=�$	��150��{�.   �� View �� .P��� �� -   $ 	AddDrug_B��$��Wybierz lek��$
��Left=�$��20��$��224,279,0,0q�$	��Top=�$	��100��$��
Montserrat)�$
��Bold"�{�.  �� -	   $ DeleteDrug_B��$��	Usuń lek��$
��Left=�$��20��$��392,279,0,0q�$	��Top=�$	��100��$��
Montserrat)�$
��Bold"�{�.  �� -
   	 ��Name$	 FirstName_L��$��IMIĘ��$
��Left=�$��30��$��	10,10,0,0q�$	��Top=�$	��135�����	#FFD9D7D5$��
Montserrat)�$��5q�
 � UseLayoutRounding
 . $
��Bold"��� -   $	 
LastName_L��$��NAZWISKO��$
��Left=�$��30��$��	10,50,0,0q�$	��Top=�$	��134�����	#FFD9D7D5$��
Montserrat)�$
��Bold"��� -   $	 Pesel_L��$��PESEL��$
��Left=�$��30��$��	10,90,0,0q�$	��Top=�$	��134�����	#FFD9D7D5$��
Montserrat)�$
��Bold"��� -   $	 BirthDate_L��$��DATA URODZENIA��$
��Left=�$��30��$��
10,130,0,0q�$	��Top=�$	��134�����	#FFD9D7D5$��
Montserrat)�$
��Bold"��� -   $	 Allergies_L��$��ALERGIE��$
��Left=�$��30��$��
10,170,0,0q�$	��Top=�$	��134�����	#FFD9D7D5$��
Montserrat)�$
��Bold"��� -   $	 Drugs_L��$��PRZYJMOWANE 
LEKI��$
��Left=�$��40��$��
10,210,0,0q�$	��Top=�$	��134�����	#FFD9D7D5$��
Montserrat)�$
��Bold"��� -   $	 Note_L��$��DODATKOWE 
UWAGI��$
��Left=�$��45��$��
10,310,0,0q�$	��Top=�$	��134�����	#FFD9D7D5$��
Montserrat)�$
��Bold"��� -   $ FirstName_TB��$
��Left=�$��30��$��
174,10,0,0q�$
 Wrap=�$	��Top=�$	��320��$��
Montserrat)��� -   $ LastName_TB��$
��Left=�$��30��$��
174,50,0,0q�$
 Wrap=�$	��Top=�$	��320��$��
Montserrat)��� -    ��Name$ Allergies_CB��$�� ��$
��Left=�$��127,175,0,0q�$	��Top=�$��16��$��17�� J� RenderTransformOrigin$ 	0.8,0.763&��� -   $ Drugs_CB��$�� ��$
��Left=�$��127,215,0,0q�$	��Top=�$��16��$��17��$ 	0.8,0.763&�