   M S B A M L   `   `   `  ����E  AEkartoteka, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Ekartoteka
Ekartoteka  5   	       Ekartoteka.NewVisit   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Ekartoteka     5   	   -   5          �Name$  	NewVisit1��5   	    � Title$ E-kartoteka Nowa wizyta��5   	   $	��800��6)   $
��1000��66   ���	#FF4D6C91.��5	      � .+�5
   
   �� -   5         ��Name$ 
Preview_TB��5
      $
��Left=�6&   $	��102��6A   $��	20,50,0,0q�6N    �� TextWrapping$
 Wrap=�6a   $��PODGLĄD DANYCH PACJENTA��6u   $	��Top=�6�   $	��418��6�   ���	#FF4D6C91���	#FF4D6C91���	#FFD9D7D56�   �� 5   
   -   5        $ Note_TB��5      $
��Left=�6#   $	��320��6>   $��
20,196,0,0q�6K   $
 Wrap=�6_   $	��Top=�6s   $	��420��6�   �� 5   
   -   5         ��Name$ Note_L��5      $��Notatki dotyczące wizyty��6    $
��Left=�6C   $��
20,167,0,0q�6^   $	��Top=�6r   $	��200��6�   $��
Montserrat)�6�   $
��Bold"�6�   ���	#FFD9D7D5$��14(�6�   �� 5   
   -   5        $ 	Patient_L��5      $��Dane pacjenta��6#   $
��Left=�6;   $��	20,21,0,0q�6V   $	��Top=�6i   $	��168��6�   $��
Montserrat)�6�   $
��Bold"�6�   ���	#FFD9D7D5$��14(�6�   �� 5   
   -   5        $ DrugsList_L��5      $��Wybierz leki��6%   $
��Left=�6<   $��
20,570,0,0q�6W   $	��Top=�6k   $	��168��6�   $��
Montserrat)�6�   $
��Bold"�6�   ���	#FFD9D7D56�   �� 5   
   -   5         ��Name$ DrugsList_LB��5      $
��Left=�6(   $	��100��6C   $��
20,600,0,0q�6P   $	��Top=�6d   $	��180��6|   �� 5   
   -   5         ��Name$ AddDrugs_CB��5      $��Przepisanie leków��6(   $
��Left=�6D   $��
20,550,0,0q�6_   $	��Top=�6s   $��
Montserrat)�6�   ���	#FFD9D7D5$��14(�6�   �� 5   
   -	   5         ��Name$ 	AddDrug_B��5      $��Wybierz lek��6$   $
��Left=�6:   $��30��6U   $��117,710,0,0q�6a   $	��Top=�6v   $��83��6�   $��
Montserrat)�6�   $
��Bold"�6�   �� 5   
   -
   5        $ AddedDrugs_L��5      $��Przepisane leki��6&   $
��Left=�6@   $��260,570,0,0q�6[   $	��Top=�6p   $	��168��6�   $��
Montserrat)�6�   $
��Bold"�6�   ���	#FFD9D7D56�   �� 5   
   -   5         ��Name$ AddedDrugs_LV��5      $
��Left=�6*   $	��100��6E   $��260,600,0,0q�6R   $	��Top=�6g   $	��180��6   	 �� View	 5      �� 5      .P�5      �� 5      5      �� 5   
   -   5        $ DeleteDrug_B��5      $��	Usuń lek��6'   $
��Left=�6:   $��30��6U   $��355,710,0,0q�6a   $	��Top=�6v   $��83��6�   $��
Montserrat)�6�   $
��Bold"�6�   �� 5   
   -   5        $ SaveVisit_B��5      $��ZAPISZ WIZYTĘ��6&   $
��Left=�6>   $��80��6Y   $��746,665,0,0q�6e   $	��Top=�6z   $	��220��6�   $��
Montserrat)�6�   $��18(�6�   $
��Bold"�6�   6�   &   System.Windows.Controls.DataGrid  5   
   $
��Left=�6   $	��180��6.   $��
546,60,0,0q�6;   $	��Top=�6O   $	��420��6g   �� 5   
   -   5        $ VisitsList_L��5      $��Poprzednie wizyty��6&   $
��Left=�6B   $��
546,21,0,0q�6]   $	��Top=�6q   $	��168��6�   $��
Montserrat)�6�   $
��Bold"�6�   ���	#FFD9D7D5$��14(�6�   �� 5   
   -   5        $ VisitPreview_TB��5      $
��Left=�6+   $	��320��6F   $��546,309,0,0q�6S   $
 Wrap=�6h   $	��Top=�6|   $	��420��6�   ���	#FF4D6C91���	#FF4D6C916�   �� 5   
   -   5        $ VisitPrewiev_L��5      $��Podgląd wybranej wizyty��6(   $
��Left=�6J   $��546,280,0,0q�6e   $	��Top=�6z   $	��200��6�   $��
Montserrat)�6�   $
��Bold"�6�   ���	#FFD9D7D5$��14(�6�   5!      5"      