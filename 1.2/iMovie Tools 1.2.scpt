FasdUAS 1.101.10   ��   ��    k             l     ��  ��      Get iMovie library path     � 	 	 0   G e t   i M o v i e   l i b r a r y   p a t h   
  
 l     ����  r         b     	    l     ����  n         1    ��
�� 
psxp  l     ����  I    �� ��
�� .earsffdralis        afdr  m     ��
�� afdrmdoc��  ��  ��  ��  ��    m       �   : i M o v i e   L i b r a r y . i m o v i e l i b r a r y /  o      ���� 0 
imoviepath 
imoviePath��  ��        l     ��������  ��  ��        l     ��  ��    !  Rename __Temp to Temporary     �   6   R e n a m e   _ _ T e m p   t o   T e m p o r a r y       l   ) !���� ! I   )�� "��
�� .sysoexecTEXT���     TEXT " b    % # $ # b    # % & % b     ' ( ' b     ) * ) b     + , + b     - . - m     / / � 0 0  i f   [   - d   . n     1 2 1 1    ��
�� 
strq 2 l    3���� 3 b     4 5 4 o    ���� 0 
imoviepath 
imoviePath 5 m     6 6 � 7 7  _ _ T e m p��  ��   , m     8 8 � 9 9    ] ;   t h e n   m v   * n     : ; : 1    ��
�� 
strq ; l    <���� < b     = > = o    ���� 0 
imoviepath 
imoviePath > m     ? ? � @ @  _ _ T e m p��  ��   ( m     A A � B B    & n    " C D C 1     "��
�� 
strq D l     E���� E b      F G F o    ���� 0 
imoviepath 
imoviePath G m     H H � I I  T e m p o r a r y��  ��   $ m   # $ J J � K K  ;   f i��  ��  ��      L M L l     ��������  ��  ��   M  N O N l     �� P Q��   P  
 Main menu    Q � R R    M a i n   m e n u O  S T S l  * H U���� U r   * H V W V n   * D X Y X 1   @ D��
�� 
bhit Y l  * @ Z���� Z I  * @�� [ \
�� .sysodlogaskr        TEXT [ m   * + ] ] � ^ ^ 4 W h a t   w o u l d   y o u   l i k e   t o   d o ? \ �� _ `
�� 
btns _ J   , 4 a a  b c b m   , / d d � e e  I m p o r t   Z I P c  f�� f m   / 2 g g � h h  M a n a g e   P r o j e c t��   ` �� i��
�� 
dflt i m   7 : j j � k k  M a n a g e   P r o j e c t��  ��  ��   W o      ���� 0 
mainaction 
mainAction��  ��   T  l m l l     ��������  ��  ��   m  n o n l  I � p���� p Z   I � q r���� q =  I P s t s o   I L���� 0 
mainaction 
mainAction t m   L O u u � v v  I m p o r t   Z I P r k   S � w w  x y x l  S S�� z {��   z   Import ZIP    { � | |    I m p o r t   Z I P y  } ~ } r   S n  �  n   S j � � � 1   h j��
�� 
psxp � l  S h ����� � I  S h���� �
�� .sysostdfalis    ��� null��   � �� � �
�� 
prmp � m   W Z � � � � � ( C h o o s e   Z I P   t o   i m p o r t � �� ���
�� 
ftyp � J   ] b � �  ��� � m   ] ` � � � � �  z i p��  ��  ��  ��   � o      ���� 0 zipfile zipFile ~  � � � I  o ��� ���
�� .sysoexecTEXT���     TEXT � b   o � � � � b   o | � � � b   o x � � � m   o r � � � � �  u n z i p   - o   � n   r w � � � 1   u w��
�� 
strq � o   r u���� 0 zipfile zipFile � m   x { � � � � �    - d   � n   |  � � � 1   } ��
�� 
strq � o   | }���� 0 
imoviepath 
imoviePath��   �  � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � H Z I P   i m p o r t e d   t o   y o u r   i M o v i e   L i b r a r y . � �� ���
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��  ��   �  ��� � L   � �����  ��  ��  ��  ��  ��   o  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 9 3 Get list of folders (exclude .lock_dir and hidden)    � � � � f   G e t   l i s t   o f   f o l d e r s   ( e x c l u d e   . l o c k _ d i r   a n d   h i d d e n ) �  � � � l  � � ����� � r   � � � � � n   � � � � � 2  � ���
�� 
cpar � l  � � ����� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � m   � � � � � � � 
 f i n d   � n   � � � � � 1   � ���
�� 
strq � o   � ����� 0 
imoviepath 
imoviePath � m   � � � � � � � �   - d e p t h   1   - t y p e   d   !   - n a m e   " . * "   !   - n a m e   " _ _ T e m p "   - e x e c   b a s e n a m e   { }   \ ;��  ��  ��   � o      ���� 0 
folderlist 
folderList��  ��   �  � � � l  � � ����� � Z   � � � ����� � =  � � � � � o   � ����� 0 
folderlist 
folderList � J   � �����   � k   � � � �  � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � 2 N o   i M o v i e   p r o j e c t s   f o u n d . � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��   � �� ���
�� 
dflt � m   � � � � � � �  O K��   �  ��� � L   � �����  ��  ��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Let user choose project    � � � � 0   L e t   u s e r   c h o o s e   p r o j e c t �  � � � l  � � ����� � r   � � � � � I  � ��� � �
�� .gtqpchltns    @   @ ns   � o   � ����� 0 
folderlist 
folderList � �� � �
�� 
prmp � m   � � � � � � � 2 S e l e c t   a n   i M o v i e   P r o j e c t : � �� ���
�� 
mlsl � m   � ���
�� boovfals��   � o      ���� "0 selectedproject selectedProject��  ��   �  � � � l  � � ����� � Z  � � � ����� � =  � � � � � o   � ����� "0 selectedproject selectedProject � m   � ���
�� boovfals � L   � �����  ��  ��  ��  ��   �  � � � l  � ����� � r   � � � � n   � � � � 4  � �
� 
cobj � m  �~�~  � o   ��}�} "0 selectedproject selectedProject � o      �|�| 0 projectname projectName��  ��   �  �  � l �{�z r   b   b   o  �y�y 0 
imoviepath 
imoviePath o  �x�x 0 projectname projectName m   �		  / o      �w�w 0 projectpath projectPath�{  �z    

 l     �v�u�t�v  �u  �t    l     �s�s   ) # Choose action for selected project    � F   C h o o s e   a c t i o n   f o r   s e l e c t e d   p r o j e c t  l :�r�q r  : n  6 1  26�p
�p 
bhit l 2�o�n I 2�m
�m .sysodlogaskr        TEXT m   � H C h o o s e   w h a t   t o   d o   w i t h   t h i s   p r o j e c t : �l
�l 
btns J  &  !  m  !"" �##  E x p o r t   M e d i a! $�k$ m  !$%% �&&  E x p o r t   Z I P�k   �j'�i
�j 
dflt' m  ),(( �))  E x p o r t   M e d i a�i  �o  �n   o      �h�h 
0 action  �r  �q   *+* l     �g�f�e�g  �f  �e  + ,-, l ;z.�d�c. Z  ;z/01�b/ = ;B232 o  ;>�a�a 
0 action  3 m  >A44 �55  E x p o r t   M e d i a0 k  E66 787 l EE�`9:�`  9   Get list of media files   : �;; 0   G e t   l i s t   o f   m e d i a   f i l e s8 <=< r  E^>?> n  EZ@A@ 2 VZ�_
�_ 
cparA l EVB�^�]B I EV�\C�[
�\ .sysoexecTEXT���     TEXTC b  ERDED b  ENFGF m  EHHH �II 
 f i n d  G n  HMJKJ 1  KM�Z
�Z 
strqK o  HK�Y�Y 0 projectpath projectPathE m  NQLL �MM �   - t y p e   f   \ (   - i n a m e   " * . m p 4 "   - o   - i n a m e   " * . m o v "   - o   - i n a m e   " * . m 4 v "   \ )   - e x e c   b a s e n a m e   { }   \ ;�[  �^  �]  ? o      �X�X 0 
mediafiles 
mediaFiles= NON Z  _|PQ�W�VP = _eRSR o  _b�U�U 0 
mediafiles 
mediaFilesS J  bd�T�T  Q k  hxTT UVU I hu�SWX
�S .sysodlogaskr        TEXTW m  hkYY �ZZ J N o   m e d i a   f i l e s   f o u n d   i n   t h i s   p r o j e c t .X �R[�Q
�R 
btns[ J  lq\\ ]�P] m  lo^^ �__  O K�P  �Q  V `�O` L  vx�N�N  �O  �W  �V  O aba l }}�M�L�K�M  �L  �K  b cdc l }}�Jef�J  e   Select files to export   f �gg .   S e l e c t   f i l e s   t o   e x p o r td hih r  }�jkj I }��Ilm
�I .gtqpchltns    @   @ ns  l o  }��H�H 0 
mediafiles 
mediaFilesm �Gno
�G 
prmpn m  ��pp �qq . S e l e c t   m e d i a   t o   e x p o r t :o �Fr�E
�F 
mlslr m  ���D
�D boovtrue�E  k o      �C�C 0 selectedmedia selectedMediai sts Z ��uv�B�Au = ��wxw o  ���@�@ 0 selectedmedia selectedMediax m  ���?
�? boovfalsv L  ���>�>  �B  �A  t yzy l ���=�<�;�=  �<  �;  z {|{ l ���:}~�:  }   Ask for export location   ~ � 0   A s k   f o r   e x p o r t   l o c a t i o n| ��� r  ����� n  ����� 1  ���9
�9 
psxp� l ����8�7� I ���6�5�
�6 .sysostflalis    ��� null�5  � �4��3
�4 
prmp� m  ���� ��� 2 C h o o s e   d e s t i n a t i o n   f o l d e r�3  �8  �7  � o      �2�2 0 exportto exportTo� ��� l ���1�0�/�1  �0  �/  � ��� l ���.���.  �   Copy selected media   � ��� (   C o p y   s e l e c t e d   m e d i a� ��� X  ���-�� k  ��� ��� r  ����� I ���,��+
�, .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� b  ����� m  ���� ��� 
 f i n d  � n  ����� 1  ���*
�* 
strq� o  ���)�) 0 projectpath projectPath� m  ���� ���     - t y p e   f   - i n a m e  � n  ����� 1  ���(
�( 
strq� o  ���'�' 0 	medianame 	mediaName� m  ���� ���    |   h e a d   - n   1�+  � o      �&�& 0 fullpath fullPath� ��%� I ��$��#
�$ .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� m  ���� ���  c p  � n  ����� 1  ���"
�" 
strq� o  ���!�! 0 fullpath fullPath� m  ���� ���   � n  ����� 1  ��� 
�  
strq� o  ���� 0 exportto exportTo�#  �%  �- 0 	medianame 	mediaName� o  ���� 0 selectedmedia selectedMedia� ��� l ����  �  �  � ��� I ���
� .sysodlogaskr        TEXT� m  
�� ��� 8 M e d i a   e x p o r t e d   s u c c e s s f u l l y .� ���
� 
btns� J  �� ��� m  �� ���  O K�  �  � ��� l ����  �  �  �  1 ��� =  ��� o  �� 
0 action  � m  �� ���  E x p o r t   Z I P� ��� k  #v�� ��� r  #4��� n  #0��� 1  .0�
� 
psxp� l #.���� I #.���
� .sysostflalis    ��� null�  � ���

� 
prmp� m  '*�� ��� 8 C h o o s e   w h e r e   t o   s a v e   t h e   Z I P�
  �  �  � o      �	�	 0 
destfolder 
destFolder� ��� r  5@��� b  5<��� o  58�� 0 projectname projectName� m  8;�� ���  . z i p� o      �� 0 zipname zipName� ��� I Ad���
� .sysoexecTEXT���     TEXT� b  A`��� b  AZ��� b  AV��� b  AL��� b  AH��� m  AD�� ���  c d  � n  DG��� 1  EG�
� 
strq� o  DE�� 0 
imoviepath 
imoviePath� m  HK�� ���    & &   z i p   - r  � n  LU��� 1  SU�
� 
strq� l LS��� � b  LS��� o  LO���� 0 
destfolder 
destFolder� o  OR���� 0 zipname zipName�  �   � m  VY�� �     � n  Z_ 1  ]_��
�� 
strq o  Z]���� 0 projectname projectName�  � �� I ev��
�� .sysodlogaskr        TEXT b  el m  eh �		 & P r o j e c t   z i p p e d   a s :   o  hk���� 0 zipname zipName ��
��
�� 
btns
 J  mr �� m  mp �  O K��  ��  ��  �  �b  �d  �c  - �� l     ��������  ��  ��  ��       ������������   ��������������������������������
�� .aevtoappnull  �   � ****�� 0 
imoviepath 
imoviePath�� 0 
mainaction 
mainAction�� 0 
folderlist 
folderList�� "0 selectedproject selectedProject�� 0 projectname projectName�� 0 projectpath projectPath�� 
0 action  �� 0 
destfolder 
destFolder�� 0 zipname zipName�� 0 zipfile zipFile�� 0 
mediafiles 
mediaFiles��  ��  ��  ��   ��������
�� .aevtoappnull  �   � **** k    z    
!!  ""  S##  n$$  �%%  �&&  �''  �((  �))  �** ++ ,����  ��  ��   ���� 0 	medianame 	mediaName V������ �� / 6�� 8 ? A H J�� ]�� d g�� j�������� u�� ��� ����� � � � � � ����� � � � �������������"%(��4HL��Y^p������������������������������
�� afdrmdoc
�� .earsffdralis        afdr
�� 
psxp�� 0 
imoviepath 
imoviePath
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
bhit�� 0 
mainaction 
mainAction
�� 
prmp
�� 
ftyp
�� .sysostdfalis    ��� null�� 0 zipfile zipFile
�� 
cpar�� 0 
folderlist 
folderList
�� 
mlsl
�� .gtqpchltns    @   @ ns  �� "0 selectedproject selectedProject
�� 
cobj�� 0 projectname projectName�� 0 projectpath projectPath�� 
0 action  �� 0 
mediafiles 
mediaFiles�� 0 selectedmedia selectedMedia
�� .sysostflalis    ��� null�� 0 exportto exportTo
�� 
kocl
�� .corecnte****       ****�� 0 fullpath fullPath�� 0 
destfolder 
destFolder�� 0 zipname zipName��{�j �,�%E�O���%�,%�%��%�,%�%��%�,%�%j O��a a lva a a  a ,E` O_ a   G*a a a a kva  �,E` Oa _ �,%a  %��,%j Oa !�a "kvl OhY hOa #��,%a $%j a %-E` &O_ &jv  a '�a (kva a )a  OhY hO_ &a a *a +fa  ,E` -O_ -f  hY hO_ -a .k/E` /O�_ /%a 0%E` 1Oa 2�a 3a 4lva a 5a  a ,E` 6O_ 6a 7  �a 8_ 1�,%a 9%j a %-E` :O_ :jv  a ;�a <kvl OhY hO_ :a a =a +ea  ,E` >O_ >f  hY hO*a a ?l @�,E` AO O_ >[a Ba .l Ckh  a D_ 1�,%a E%��,%a F%j E` GOa H_ G�,%a I%_ A�,%j [OY��Oa J�a Kkvl OPY c_ 6a L  X*a a Ml @�,E` NO_ /a O%E` POa Q��,%a R%_ N_ P%�,%a S%_ /�,%j Oa T_ P%�a Ukvl Y h �,, ` / U s e r s / j a c k / M o v i e s / i M o v i e   L i b r a r y . i m o v i e l i b r a r y / �--  I m p o r t   Z I P ��.�� .  /01234��������������������/ �55 " M i t o s i s   A n i m a t i o n0 �66  i M o v i e   T u t o r i a l1 �77  T e m p o r a r y2 �88 ( B a s k e t b a l l   I n t e r v i e w3 �99   M S   C r o s s   C o u n t r y4 �::  M y   M o v i e   1��  ��  ��  ��  ��  ��  ��  ��  ��  ��   ��;�� ;   �<<   M S   C r o s s   C o u n t r y �== � / U s e r s / j a c k / M o v i e s / i M o v i e   L i b r a r y . i m o v i e l i b r a r y / M S   C r o s s   C o u n t r y / �>>  E x p o r t   Z I P �?? , / U s e r s / j a c k / D o w n l o a d s / �@@ ( M S   C r o s s   C o u n t r y . z i p �AA T / U s e r s / j a c k / D o w n l o a d s / M S   C r o s s   C o u n t r y . z i p ������  ��  ��  ��  ��  ��  ascr  ��ޭ