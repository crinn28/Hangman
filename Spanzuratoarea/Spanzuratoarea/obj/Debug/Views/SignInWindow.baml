   M S B A M L   `   `   `  ����I  ESpanzuratoarea, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Spanzuratoarea.ViewsSpanzuratoarea.Views  5   	   E'clr-namespace:Spanzuratoarea.ViewModelsSpanzuratoarea.ViewModels  5   	   '    !Spanzuratoarea.Views.SignInWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:Spanzuratoarea.Views     5   	   7ctx'clr-namespace:Spanzuratoarea.ViewModels     5   	     � Title$  Spanzuratoarea��5	   	   $	��600��6    $	��800��6-    � 
ResizeMode$ CanMinimize=�69    � WindowStartupLocation$ CenterScreen=�6R    � 	Resources 5
         ButtonStyle �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius	 ��Name
 �� Triggers P� Property P� Value��%i  &	        �� 5   
   " ��6$   .�5      ��  � ��
 ���� 6+   �� 5       � ��$ 30(�6)   �� 5       � ��
 �����6+   �� 5       � ��$ 60��6'   �� 5       � ��$	 155��6&   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $ 7,7,7,7��6!   #��z��68   ._�5      �� $	 contentPresenter��6/   #��z��6I   #��z��6}   #��z��6�   #��z��6�   #��z��6	  5      5      5      
 5      P� 5       �@J�IsMouseOver . . �5      ��  � ��$ 35(�61   �� 5       �@�Cursor$
 Hand��6/   5      5       5!      .��5"      � ��5#   
   �� 5$       �� ImageSource$- '/Spanzuratoarea;component/Images/bk.jpg��6   .+�5'   
   �  � RowDefinitions 5(      �� 5)      $	��100 �6    �� 5*      $��70 �6    �� 5+      �� 5,      $	��100 �6    .+�5.      �� $�� <��6   #��[  6%   $��Algerian)�6J   $��0q�6`   $	��Top=�6�   $
��Left=�6�    J� RenderTransformOrigin$ 	4.4,2.963&�6�   $��51��6�   $��38��6�   ��6k   �� *BackCommand+6�   �� 5/      $��0��6   $��Algerian)�6!   
�������$��30(�6J   $*��$Welcome to Hangman! Enjoy this game!��6Y   $��Center=�6�   $��0, 20q�6�   �� 50      $��1��6   $��Choose your profile��6!   $��
Harrington)�6?   
�������$��25(�6j   $��Center=�6x   $��282,0,262.6,0.4q�6�   $	��249��6�   �� 51      -   5         ��Name$ listBoxSignUp��51      $��2��6-   $	��229��6:   $
��Left=�6F   $��50,0,0,0q�6a   $��20(�6s   
������ $��
Harrington)�6�   
�������
������� �� SelectedItem 6�   �� *SelectedUser+��6�   �� *Users+��52      �� 53      .R�54      �� ��6$   �� *Name+55      57      �� 58      -   5         ��Name$ imageSignUp��58      $��2��6)   $��Right=�66   $��150, 0q�6R   $	��250��6b   $	��Top=�6o   ��6�   �� *ImageSource+� 59      $��3��6   .+�5:      �� $	��ADD��6   #��[  6'   $��Algerian)�6L   $��50, 20, 20, 0q�6b   ��6}   �� *
AddCommand+�� 5;      $
��EDIT��6   #��[  6(   $��Algerian)�6M   $��0, 20, 20, 0q�6c   ��6}   �� *EditCommand+�� 5<      $��DELETE��6   #��[  6.   $��Algerian)�6S   $��0, 20, 20, 0q�6i   ��6�   �� *DeleteCommand+�� 5=      $
��PLAY��6   #��[  6(   $��Algerian)�6M   $��0, 20, 20, 0q�6c   ��6}   �� *PlayCommand+5>      5?      5@      5A      