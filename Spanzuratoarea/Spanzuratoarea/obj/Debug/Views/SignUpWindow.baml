   M S B A M L   `   `   `  ����I  ESpanzuratoarea, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Spanzuratoarea.ViewsSpanzuratoarea.Views  5   	   E'clr-namespace:Spanzuratoarea.ViewModelsSpanzuratoarea.ViewModels  5   	   '    !Spanzuratoarea.Views.SignUpWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:Spanzuratoarea.Views     5   	   7ctx'clr-namespace:Spanzuratoarea.ViewModels     5   	     � WindowStyle$
  None=�5	   	    � AllowsTransparency . 
������  � Title$ Hangman��5
   	   $	��600��6   $	��800��6&    � 
ResizeMode$ CanMinimize=�62    � WindowStartupLocation$ CenterScreen=�6K    � 	Resources 5         ButtonStyle �� 
TargetType �� Property �� Value	 �� 
TargetType
 �� CornerRadius ��Name �� Triggers P� Property P� Value��%i  &	        �� 5   
   " ��6$   .�5      ��  � ��
 ���� 6+   �� 5       � ��$ 30(�6)   �� 5       � ��
 �����6+   �� 5       � ��$ 60��6'   �� 5       � ��$	 155��6&   �� 5       � �� 5      �� 5      "	 ��6&   .R�5      �� $
 7,7,7,7��6!   #��z��68   ._�5      �� $ contentPresenter��6/   #��z��6I   #��z��6}   #��z��6�   #��z��6�   #��z��6	  5      5      5       5      P� 5       �@J�IsMouseOver . . �5      ��  � ��$ 35(�61   �� 5       �@�Cursor$
 Hand��6/   5      5!      5"      .��5#      � ��5$   
   �� 5%       �� ImageSource$- '/Spanzuratoarea;component/Images/bk.jpg��6   .+�5(   
   �  � ColumnDefinitions 5)      �� 5*      $
��184* �6#   �� 5+      $
��213* �6#    � RowDefinitions 5-      �� 5.      $��90 �6    �� 5/      $��60 �6    �� 50      �� 51      $	��100 �6    .+�53      �� $	��Top=�6   $
��Left=�6-   $�� <��6H   #��[  6X   $��Algerian)�6}   $��0q�6�   $��47��6�   ��6�   �� *BackCommand+6�   �� 54      $��0��6   $*��$Welcome to Hangman! Enjoy this game!��6!   $��Algerian)�6P   
�������$��30(�6y   $��Center=�6�   $��Center=�6�   $	��Top=�6�   $	��647��6�   $��
72,25,81,0q�6�   $��2��6   �� 55      $��1��6   $��Set your profile:��6!   $��Algerian)�6=   
�������$��25(�6f   $��Center=�6t   $��2��6�   $��Center=�6�   $	��450��6�   $��199,0q�6�   �� 56      $��2��6   $
��Left=�6!   $	��Top=�6<   $��	30,90,0,0q�6T   $��Username��6g   $��20(�6z   $��Algerian)�6�   
������ 
�������6�   �� 57      -   5         ��Name$ NicknameTextBox��57     $��2��6   $	��300��6#   $��50��6/   $
��Left=�6;   $��Center=�6V   $��30,136,0,135q�6q   
������ 
�������$��30(�6�   $��
Harrington)�6�   
�������$��Center=�6�   ��6(  �� *NameTextBox+ �� UpdateSourceTrigger$ PropertyChanged=��� 58      -   5         ��Name$ imageSignUp��58      $��2��6)   $��Right=�6V   $��	0,0,110,0q�6r   $	��250��6�   $	��Top=�6�   $��1��6�   ��67   �� *ImageSource+6�   �� 59      $��2��6   $��Right=�6"   $��Bottom=�6>   $	��➤��6Y   #��[  6e   $��MV Boli)�6�   $��
0,0,100,10q�6�   $��1��6�   ��6�   �� *NextCommand+6�   �� 5;      $��2��6   $	��➤��6"   $��Right=�6.   $��Bottom=�6J   $	��Top=�6e   #��[  6�   $��MV Boli)�6�   $��
0,0,250,15q�6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   $��1��6  ��6�   �� *PrevCommand+z�5<      V� 5=      .~�5>      �� �� 5?      �� 5@       �� Angle$	 180Q�6*   T� 5A      5B      5D      � 5E      $��3��6   $��2��6%   $��175,10,-175,-10q�69   .+�5F      �� $��SIGN IN��6   #��[  6+   $��Algerian)�6P   $��50, 20, 20, 0q�6f   ��6}   �� *SignInCommand+�� 5G      #��[  67   $��Algerian)�6\   $��50, 20, 20, 0q�6r   $	��183��6�   ��6   �� *	PlayLabel+��6�   �� *PlayCommand+6�   5H      5I      5J      5K      