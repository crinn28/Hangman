   M S B A M L   `   `   `  ����B  >Hangman, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:Hangman.ViewsHangman.Views  5   	   7 clr-namespace:Hangman.ViewModelsHangman.ViewModels  5   	        Hangman.Views.ChooseWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:Hangman.Views     5   	   0ctx clr-namespace:Hangman.ViewModels     5   	     � Title$  Hangman��5	   	   $	��400��6   $	��600��6&    � 
ResizeMode$ CanMinimize=�62    � Icon$( "/Hangman;component/Assets/Icon.ico��6K    � WindowStartupLocation$ CenterScreen=�6u    � 	Resources 5
         ButtonStyle �� 
TargetType �� Property �� Value �� 
TargetType	 �� CornerRadius
 ��Name �� Triggers P� Property P� Value��%i  &	        �� 5   
   " ��6$   .�5      ��  � ��
 ���� 6+   �� 5       � ��$ 30(�6)   �� 5       � ��
 �����6+   �� 5       � ��$ 60��6'   �� 5       � ��$	 155��6&   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $	 7,7,7,7��6!   #��z��68   ._�5      �� $
 contentPresenter��6/   #��z��6I   #��z��6}   #��z��6�   #��z��6�   #��z��6	  5      5      5       5      P� 5       �@J�IsMouseOver . . �5      ��  � ��$ 35(�61   �� 5       �@�Cursor$
 Hand��6/   5      5       5!      .��5#      � ��5$   
   �� 5%       �� ImageSource$3 -/Hangman;component/Assets/BackgroundImage.jpg��6    � ColumnDefinitions 5(   
   �� 5)      �� 5*       � RowDefinitions 5-   
   �� 5.      $	��200 �6   �� 5/      .+�52   
   �� $��0��6   $��0��6!   $�� < BACK��6.   #��[  6C   $��MV Boli)�6h   $
��Left=�6}   $	��Top=�6�   ��6�   �� *BackCommand+�� 54   
   $��1��6   $��0��6    $��Center=�6L   $	��Top=�6i   ��6-   �� *ImageSource+6i   �� 56   
   $��0��6   $��0��6$   $��Welcome ��61   $��30(�6A   
�������$��MV Boli)�6b   $��100,60,0,90q�6w   �� 58   
   $��0��6   $��0��6$   $��30(�6G   
�������$��MV Boli)�6h   $��100,110,0,40q�6}   ��61   �� *Name+6}   �� 5:   
   $��0��6   $��1��6%   $��2��62   $��Center=�6F   .+�5;      �� $��0��6   $��1��6%   $��NEW GAME��62   #��[  6E   $��MV Boli)�6j   $��Center=�6   $��Bottom=�6�   $	��250��6�   ��6�   �� *NewGameCommand+�� 5<      $��1��6   $��1��6%   $��RESUME GAME��62   #��[  6H   $��MV Boli)�6m   $��Center=�6�   $��Bottom=�6�   $	��300��6�   ��6�   �� *ResumeGameCommand+5=      5>      5?      