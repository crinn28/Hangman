   M S B A M L   `   `   `  ����B  >Hangman, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:Hangman.ViewsHangman.Views  5   	   7 clr-namespace:Hangman.ViewModelsHangman.ViewModels  5   	       Hangman.Views.StartWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:Hangman.Views     5   	   0ctx clr-namespace:Hangman.ViewModels     5   	     � Title$  Hangman��5	   	   $	��600��6   $	��800��6&    � Icon$( "/Hangman;component/Assets/Icon.ico��62    � 
ResizeMode$ CanMinimize=�6\    � WindowStartupLocation$ CenterScreen=�6u    � 	Resources 5
         ButtonStyle �� 
TargetType �� Property �� Value �� 
TargetType	 �� CornerRadius
 ��Name �� Triggers P� Property P� Value��%i  &	        �� 5   
   " ��6$   .�5      ��  � ��
 ���� 6+   �� 5       � ��$ 30(�6)   �� 5       � ��
 �����6+   �� 5       � ��$ 80��6'   �� 5       � ��$	 150��6&   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $	 7,7,7,7��6!   #��z��68   ._�5      �� $
 contentPresenter��6/   #��z��6I   #��z��6}   #��z��6�   #��z��6�   #��z��6	  5      5      5       5      P� 5       �@J�IsMouseOver . . �5      ��  � ��$ 35(�61   �� 5       �@�Cursor$
 Hand��6/   5      5       5!       � DataContext 5"      '   !Hangman.ViewModels.StartViewModel  5#   
   .��5%      � .+�5&   
   ��  K� ZIndex$ 0��6   $-��'/Hangman;component/Assets/HomeImage.jpg��6!   $��Center=�6R   $
��Fill=�6m   �� 5'   
   $ 1��6   $2��,/Hangman;component/Assets/Emojis/Emoji_1.png��6!   $	��100��6W   $��Right=�6d   $	��Top=�6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   $��	0,69,67,0q�6�   z�5(      V� 5)      .~�5*      �� �� 5+      �� 5,       �� Angle$	 -30Q�6&   T� 5-      5.      50      �� 51   
   $ 1��6   $2��,/Hangman;component/Assets/Emojis/Emoji_2.png��6!   $	��100��6W   $��Right=�6d   $	��Top=�6�   $ 0.5,0.5&�6�   $��
0,45,238,0q�6�   �� 52   
   $ 1��6   $2��,/Hangman;component/Assets/Emojis/Emoji_3.png��6!   $	��100��6W   $
��Left=�6d   $��Bottom=�6   $ 0.5,0.5&�6�   z�53      V� 54      .~�55      �� �� 56      �� 57      T� 58       T� X$	 150Q�6)    T� Y$
 -100Q�61   59      5;      �� 5<   
   $ 1��6   $2��,/Hangman;component/Assets/Emojis/Emoji_4.png��6!   $	��100��6W   $
��Left=�6d   $��Bottom=�6   $ 0.5,0.5&�6�   $��	25,0,0,20q�6�   z�5=      V� 5>      .~�5?      �� �� 5@      �� 5A      $ 45Q�6&   T� 5B      5C      5E      �� 5F   
   $ 1��6   $2��,/Hangman;component/Assets/Emojis/Emoji_5.png��6!   $	��100��6W   $
��Left=�6d   $	��Top=�6   $ 0.5,0.5&�6�   $��-15,-25,0,0q�6�   z�5G      V� 5H      .~�5I      �� �� 5J      �� 5K      $ 20Q�6&   T� 5L      $	 250Q�6)   $	 250Q�61   5M      5O      �� 5P   
   $ 1��6   $2��,/Hangman;component/Assets/Emojis/Emoji_6.png��6!   $	��100��6W   $��Right=�6d   $	��Top=�6�   $ 0.5,0.5&�6�   $��	0,94,85,0q�6�   z�5Q      V� 5R      .~�5S      ��  �� ScaleX$	 1.3Q�6%    �� ScaleY$	 1.3Q�62   �� 5T      �� 5U      $ 20Q�6&   T� 5V      $	 100Q�6)   $
 -130Q�61   5W      5Y      �� 5Z   
   $ 1��6   $2��,/Hangman;component/Assets/Emojis/Emoji_7.png��6!   $	��100��6W   $
��Left=�6d   $	��Top=�6   $ 0.5,0.5&�6�   $��	10,27,0,0q�6�   z�5[      V� 5\      .~�5]      �� �� 5^      �� 5_      $	 -45Q�6&   T� 5`      $	 100Q�6)   5a      5c      �� 5d   
   $ 1��6   $2��,/Hangman;component/Assets/Emojis/Emoji_8.png��6!   $	��100��6W   $��Right=�6d   $��Bottom=�6�   $ 0.5,0.5&�6�   z�5e      V� 5f      .~�5g      �� �� 5h      �� 5i      T� 5j      $	 -30Q�6)   $	 -50Q�61   5k      5m      �� 5n   
   $ 1��6   $2��,/Hangman;component/Assets/Emojis/Emoji_9.png��6!   $	��100��6W   $��Right=�6d   $	��Top=�6�   $ 0.5,0.5&�6�   $��	0,30,40,0q�6�   z�5o      V� 5p      .~�5q      �� $	 1.3Q�6%   $	 1.3Q�62   �� 5r      �� 5s      $ 45Q�6&   T� 5t      $	 200Q�6)   5u      5w      �� 5x   
   $
��EXIT��6   $��MV Boli)�6    #��[  65   $��0q�6Z   $	��Top=�6�   $
��Left=�6�   ��6e   �� *ExitCommand+6�   � 5y   
    � Orientation$ 
Horizontal=�6   $��Bottom=�6-   $��Center=�6H   .+�5z      �� $��SIGN IN��6   $��MV Boli)�6'   #��[  6<   $��20, 20, 50, 20q�6a   ��6y   �� *SignInCommand+�� 5{      $��SIGN UP��6   $��MV Boli)�6'   #��[  6<   $��0, 20, 50, 20q�6a   ��6x   �� *SignUpCommand+5|      5}      5~      