   M S B A M L   `   `   `  ����C  ?IBMIndex, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:IBMIndexIBMIndex  5   	       IBMIndex.MainWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:IBMIndex     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��600��6)   .��5	      � .+�5
   
   �� $��
Weight(Kg)��6   $
��Left=�6%   $��	93,48,0,0q�6@   $	��Top=�6S   $��24(�6k   �� 5   
   $��
Height(Cm)��6   $
��Left=�6%   $��
93,122,0,0q�6@   $	��Top=�6T   $��24(�6l   �� 5   
   -   5         ��Name$ label��5      $
��BMI:��6   $
��Left=�6.   $��104,265,0,0q�6I   $	��Top=�6^   $��24(�6v   �� 5   
   $��Status:��6   $
��Left=�6"   $��
93,329,0,0q�6=   $	��Top=�6Q   $��24(�6i   �� 5   
   -   5        $��tbWeight��5   '    � 
InputScope$ Number��6   $
��Left=�67   $��
310,49,0,0q�6R    �� TextWrapping$
 Wrap=�6f   $	��Top=�6z   $	��199��6�   $��41��6�   $��24(�6�   $�� ��6�    �� TextAlignment$ Center=�6�    � ForceCursor$
 True��6�   4  .System.Windows.Automation.AutomationProperties   HelpText$ Input Height��6  �� 5   
   -   5        $��tbHeight��5   '   $ Number��6   $
��Left=�67   $��310,127,0,0q�6R   $
 Wrap=�6g   $	��Top=�6{   $	��199��6�   $��41��6�   $��24(�6�   $ Center=�6�   �� 5   
   -   5        $��tbResultBMI��5      $
��Left=�6%   $��310,267,0,0q�6@   $
 Wrap=�6U   $	��Top=�6i   $	��199��6�   $��40��6�   $��24(�6�   $ Center=�6�    �� IsReadOnlyCaretVisible$
 True��6�   ${�False��6�   �� 5   
   -   5        $��	tblStatus��5      $
��Left=�6%   $��310,340,0,0q�6@   $
��Wrap=�6U   $��	TextBlock��6i   $	��Top=�6z   $��31��6�   $	��199��6�   $��24(�6�    �� TextAlignment$ Center=�6�   ���	#FFE4C7C76�   �� 5   
   -   5        $��btnCalculate��5      $��	Calculate��6%   $
��Left=�69   $��	310,0,0,0q�6T   $��Center=�6g   $��24(�6�   6�   �� 5   
   -   5        $��btnClear��5      $��Clear��6!   $
��Left=�61   $��	451,0,0,0q�6L   $��Center=�6_   $��24(�6z   6�   5      5      