   M S B A M L   `   `   `  ����I  ESpanzuratoarea, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Spanzuratoarea.ViewsSpanzuratoarea.Views  5   	   E'clr-namespace:Spanzuratoarea.ViewModelsSpanzuratoarea.ViewModels  5   	       Spanzuratoarea.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:Spanzuratoarea.Views     5   	   7ctx'clr-namespace:Spanzuratoarea.ViewModels     5   	     � Title$  Hangman��5	   	   $	��600��6   $	��800��6&    � 
ResizeMode$ CanMinimize=�63    � WindowStartupLocation$ CenterScreen=�6L    � 	Resources 5
         ButtonStyle �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius	 ��Name
 �� Triggers P� Property P� Value��%i  &	        �� 5   
   " ��6$   .�5      ��  � ��
 ���� 6+   �� 5       � ��$ 30(�6)   �� 5       � ��
 �����6+   �� 5       � ��$ 80��6'   �� 5       � ��$	 150��6&   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $ 7,7,7,7��6!   #��z��68   ._�5      �� $	 contentPresenter��6/   #��z��6I   #��z��6}   #��z��6�   #��z��6�   #��z��6	  5      5      5      
 5      P� 5       �@J�IsMouseOver . . �5      ��  � ��$ 35(�61   �� 5       �@�Cursor$
 Hand��6/   5      5       5!       � DataContext 5"      -   'Spanzuratoarea.ViewModels.MainViewModel  5#   
   .��5%      � .+�5&   
   ��  K� ZIndex$ 0��6   $.��(/Spanzuratoarea;component/Images/bk_.jpg��6!   $��Center=�6S   $
��Fill=�6n   �� 5(   
   $
��EXIT��6   $��Algerian)�6    #��[  67   $��644,490,-0.4,0q�6\   $	��Top=�6�   $
��Left=�6�   ��6t   �� *ExitCommand+6�   � 5)   
    � Orientation$ 
Horizontal=�6   $��Bottom=�6-   $��Center=�6H   $��186,0,149.6,0.4q�6e   $	��458��6~   .+�5*      �� $��SIGN IN��6   $��Algerian)�6'   #��[  6=   $��20, 20, 50, 20q�6b   ��6z   �� *SignInCommand+�� 5+      $��SIGN UP��6   $��Algerian)�6'   #��[  6=   $��0, 20, 50, 20q�6b    J� RenderTransformOrigin$ 0.933,0.641&�6�   $	��177��6�   ��6y   �� *SignUpCommand+6�   5,      �� 5-   
   $
��Left=�6   $��Algerian)�6/   
���   �$��30(�6X    �� TextAlignment$ Center=�6f   $��
116,61,0,0q�6}   $
��Wrap=�6�   $*��$Welcome to Hangman! Enjoy this game!��6�   $	��Top=�6�   $��75��6�   $	��584��6�   �� 5.   
   $6��0/Spanzuratoarea;component/Images/ToBeCropped.png��6   $
��Left=�6J   $��78��6e   $��472,367,0,0q�6q   $	��Top=�6�   $	��287��6�   $ 0.533,0.004&�6�   �� 5/   
   $/��)/Spanzuratoarea;component/Images/Hang.png��6   $
��Left=�6C   $	��257��6^   $��
82,188,0,0q�6k   $	��Top=�6   $	��298��6�   50      51      