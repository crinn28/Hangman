   M S B A M L   `   `   `  ����I  ESpanzuratoarea, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Spanzuratoarea.ViewsSpanzuratoarea.Views  5   	   E'clr-namespace:Spanzuratoarea.ViewModelsSpanzuratoarea.ViewModels  5   	   #    Spanzuratoarea.Views.GameType   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:Spanzuratoarea.Views     5   	   7ctx'clr-namespace:Spanzuratoarea.ViewModels     5   	     � Title$  Hangman��5	   	   $	��600��6   $	��800��6&    � 
ResizeMode$ CanMinimize=�62    � WindowStartupLocation$ CenterScreen=�6K    � 	Resources 5
         ButtonStyle �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius	 ��Name
 �� Triggers P� Property P� Value��%i  &	        �� 5   
   " ��6$   .�5      ��  � ��
 ���� 6+   �� 5       � ��$ 30(�6)   �� 5       � ��
 �����6+   �� 5       � ��$ 60��6'   �� 5       � ��$	 155��6&   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $ 7,7,7,7��6!   #��z��68   ._�5      �� $	 contentPresenter��6/   #��z��6I   #��z��6}   #��z��6�   #��z��6�   #��z��6	  5      5      5      
 5      P� 5       �@J�IsMouseOver . . �5      ��  � ��$ 35(�61   �� 5       �@�Cursor$
 Hand��6/   5      5       5!      .��5#      � ��5$   
   �� 5%       �� ImageSource$- '/Spanzuratoarea;component/Images/bk.jpg��6    � ColumnDefinitions 5(   
   �� 5)      �� 5*       � RowDefinitions 5-   
   �� 5.      $	��200 �6   �� 5/      .+�52   
   �� $��0��6   $��0��6!   $�� <��6.   #��[  6>   $��Algerian)�6c   $
��Left=�6y   $	��Top=�6�   $��79��6�   ��6�   �� *BackCommand+6�   �� 54   
   $��1��6   $��0��6    $��Center=�6L   $	��Top=�6i   ��6-   �� *ImageSource+6i   �� 56   
   $��0��6   $��0��6$   $��	Welcome, ��61   $��30(�6B   
�������$��Algerian)�6c   $��100,60,0,90q�6y   �� 58   
   $��0��6   $��0��6$   $��30(�6G   
�������$��
Harrington)�6h   $��100,110,0,40q�6�   ��61   �� *Name+6�   �� 5:   
   $��0��6   $��1��6%   $��2��62   $��Center=�6F   $	��115��6a   $��0,245,-0.4,10.4q�6n   .+�5;      �� $��NEW GAME��6   #��[  6(   $��Algerian)�6M   $��Center=�6c   $��Bottom=�6�   $	��250��6�   $��272,0,271.6,0q�6�   $��36��6�   ��6�   �� *NewGameCommand+6�   �� 5<      $��	OPEN GAME��6   #��[  6)   $��Algerian)�6N   $��Center=�6d   $��Bottom=�6�   $	��300��6�   $��247,0,246.6,0q�6�   $��87��6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   ��6�   �� *ResumeGameCommand+z�5=      V� 5>      .~�5?      �� �� 5@      �� 5A       �� Angle$ -0.528Q�6*   T� 5B      5C      5E      5F      �� 5G   
   $��2��6   $
��Left=�6)   $	��245��6D   $��10,0,-0.4,0q�6Q   $��1��6f   $	��Top=�6s   $	��784��6�   .+�5H      �� $
��Wrap=�6   $��Choose a category:��6,   $��
Harrington)�6F   $��20(�6^   
�������$��37��6   �� 5I      -   5        $��listBoxSignUp��5I      $��2��6+   $	��207��68   $��Center=�6E   $��
Harrington)�6b   $��18(�6z   
������ 
�������
������ ��6�   �� *
Categories+ �� SelectedItem 6�   �� *SelectedCategory+5J      5K      5L      