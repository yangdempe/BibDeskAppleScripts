FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     ��������  ��  ��     	 
 	 l    ����  O        k          r    
    4    �� 
�� 
docu  m    ����   o      ���� 0 thedoc theDoc   ��  O       k          r        1    ��
�� 
sele  o      ���� 0 thesel theSel      r        n       !   4    �� "
�� 
cobj " m    ����  ! o    ���� 0 thesel theSel  o      ���� 0 thepub thePub   # $ # l   ��������  ��  ��   $  % & % O    h ' ( ' k     g ) )  * + * l     �� , -��   , . ( current (probably empty?) BibTeX record    - � . . P   c u r r e n t   ( p r o b a b l y   e m p t y ? )   B i b T e X   r e c o r d +  / 0 / r     & 1 2 1 e     $ 3 3 n     $ 4 5 4 1   ! #��
�� 
BTeX 5 o     !���� 0 thepub thePub 2 o      ���� "0 curbibtexrecord curBibTeXRecord 0  6 7 6 l  ' '��������  ��  ��   7  8 9 8 l  ' '�� : ;��   : �  get the BibTeX record using pdfmeat.py. Wrap it in a shell script because it needs a full path, write access to a folder, etc.    ; � < < �   g e t   t h e   B i b T e X   r e c o r d   u s i n g   p d f m e a t . p y .   W r a p   i t   i n   a   s h e l l   s c r i p t   b e c a u s e   i t   n e e d s   a   f u l l   p a t h ,   w r i t e   a c c e s s   t o   a   f o l d e r ,   e t c . 9  = > = r   ' - ? @ ? e   ' + A A 2  ' +��
�� 
File @ o      ���� 0 thefile theFile >  B C B r   . 3 D E D n   . 1 F G F 1   / 1��
�� 
psxp G o   . /���� 0 thefile theFile E o      ���� 0 thepath thePath C  H I H r   4 7 J K J m   4 5 L L � M M F c d   / t m p ;   P A T H = $ P A T H : / u s r / l o c a l / b i n   K o      ���� 0 	shellopts 	shellOpts I  N O N r   8 = P Q P m   8 9 R R � S S p / U s e r s / m a n k o f f / b i n / p y t h o n   / U s e r s / m a n k o f f / b i n / p d f m e a t . p y   Q o      ���� 0 
pdfmeatcmd 
pdfMeatCmd O  T U T r   > Q V W V b   > M X Y X b   > I Z [ Z b   > G \ ] \ b   > C ^ _ ^ o   > ?���� 0 	shellopts 	shellOpts _ o   ? B���� 0 
pdfmeatcmd 
pdfMeatCmd ] m   C F ` ` � a a  ' [ o   G H���� 0 thepath thePath Y m   I L b b � c c  ' W o      ���� 0 shellcmd shellCmd U  d e d r   R Y f g f m   R U h h � i i� @ a r t i c l e { M c C r a c k e n : 2 0 0 5 ,   A u t h o r   =   { M .   M c C r a c k e n   a n d   A .   M a x w e l l } ,   T i t l e   =   { W o r k i n g   w i t h   B i b D e s k . } , Y e a r = { 2 0 0 5 } ,   f i l e = { f i l e : / / / U s e r s / m a n k o f f / D o c u m e n t s / P a p e r s / S / S a n d - J e n s e n / S a n d - J e n s e n _ 2 0 0 7 _ H o w   t o   w r i t e   c o n s i s t e n t l y   b o r i n g . p d f : p d f } } g o      ���� 0 pdfmeatoutput pdfMeatOutput e  j k j l  Z Z�� l m��   l 0 * For debugging, don't query Google Scholar    m � n n T   F o r   d e b u g g i n g ,   d o n ' t   q u e r y   G o o g l e   S c h o l a r k  o p o r   Z e q r q I  Z a�� s��
�� .sysoexecTEXT���     TEXT s o   Z ]���� 0 shellcmd shellCmd��   r o      ���� 0 pdfmeatoutput pdfMeatOutput p  t�� t l  f f�� u v��   u % display dialog pdfMeatOutput			    v � w w > d i s p l a y   d i a l o g   p d f M e a t O u t p u t 	 	 	��   ( o    ���� 0 thepub thePub &  x y x l  i i��������  ��  ��   y  z { z r   i x | } | I  i t���� ~
�� .BDSKImptnull���     docu��   ~ �� ��
�� 
from  o   m p���� 0 pdfmeatoutput pdfMeatOutput��   } o      ���� 0 newpubs newPubs {  � � � r   y � � � � l  y � ����� � e   y � � � n   y � � � � 4   | �� �
�� 
cobj � m   } ~����  � o   y |���� 0 newpubs newPubs��  ��   � o      ���� 0 newpub newPub �  � � � O   � � � � � k   � � � �  � � � l  � ��� � ���   � &  set fieldNames to all fieldnames    � � � � @ s e t   f i e l d N a m e s   t o   a l l   f i e l d n a m e s �  � � � l  � ��� � ���   �  display dialog fieldNames    � � � � 2 d i s p l a y   d i a l o g   f i e l d N a m e s �  � � � l  � ��� � ���   � . (set nonEmptyFields to get name of fields    � � � � P s e t   n o n E m p t y F i e l d s   t o   g e t   n a m e   o f   f i e l d s �  � � � l  � ��� � ���   � # display dialog nonEmptyFields    � � � � : d i s p l a y   d i a l o g   n o n E m p t y F i e l d s �  � � � l  � ��� � ���   � I Cmake new linked file with data theFile at beginning of linked files    � � � � � m a k e   n e w   l i n k e d   f i l e   w i t h   d a t a   t h e F i l e   a t   b e g i n n i n g   o f   l i n k e d   f i l e s �  � � � l  � ��� � ���   � ( "set cite key to generated cite key    � � � � D s e t   c i t e   k e y   t o   g e n e r a t e d   c i t e   k e y �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � . (set nonEmptyFields to get name of fields    � � � � P s e t   n o n E m p t y F i e l d s   t o   g e t   n a m e   o f   f i e l d s �  � � � l  � ��� � ���   � # display dialog nonEmptyFields    � � � � : d i s p l a y   d i a l o g   n o n E m p t y F i e l d s �  � � � r   � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
fldv � 4   � ��� �
�� 
bfld � m   � � � � � � �  N u m b e r��  ��   � o      ���� 0 thenum theNum �  � � � r   � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
fldv � 4   � ��� �
�� 
bfld � m   � � � � � � �  V o l u m e��  ��   � o      ���� 0 thevol theVol �  ��� � r   � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
fldv � 4   � ��� �
�� 
bfld � m   � � � � � � � 
 P a g e s��  ��   � o      ���� 0 thepages thePages��   � o   � ����� 0 newpub newPub �  � � � l  � ���������  ��  ��   �  � � � O   � � � � � k   � � � �  � � � r   � � � � � o   � ����� 0 thenum theNum � l      ����� � n       � � � 1   � ���
�� 
fldv � 4   � ��� �
�� 
bfld � m   � � � � � � �  N u m b e r��  ��   �  � � � r   � � � � � o   � ����� 0 thevol theVol � l      ����� � n       � � � 1   � ���
�� 
fldv � 4   � ��� �
�� 
bfld � m   � � � � � � �  V o l u m e��  ��   �  ��� � r   � � � � � o   � ����� 0 thepages thePages � l      ����� � n       � � � 1   � ���
�� 
fldv � 4   � ��� �
�� 
bfld � m   � � � � � � � 
 P a g e s��  ��  ��   � o   � ����� 0 thepub thePub �  � � � l  � ���������  ��  ��   �  � � � I  � ��� ���
�� .BDSKshownull���     **** � o   � ����� 0 thepub thePub��   �  ��� � I  ��� ���
�� .coredelonull���     obj  � o   � ���� 0 newpub newPub��  ��    o    ���� 0 thedoc theDoc��    m       �                                                                                  BDSK  alis    :  OSX                        ΍�gH+   ,�9BibDesk.app                                                     v)���Y        ����  	                TeX     Ύ5�      �̟Q     ,�9   �  "OSX:Applications: TeX: BibDesk.app    B i b D e s k . a p p    O S X  Applications/TeX/BibDesk.app  / ��  ��  ��   
  l     ��������  ��  ��    l     ����~��  �  �~   �} l     �|�{�z�|  �{  �z  �}       �y�y   �x
�x .aevtoappnull  �   � **** �w�v�u	
�t
�w .aevtoappnull  �   � **** k      	�s�s  �v  �u  	  
 ( �r�q�p�o�n�m�l�k�j�i�h�g L�f R�e ` b�d h�c�b�a�`�_�^�] ��\�[ ��Z ��Y � � ��X�W
�r 
docu�q 0 thedoc theDoc
�p 
sele�o 0 thesel theSel
�n 
cobj�m 0 thepub thePub
�l 
BTeX�k "0 curbibtexrecord curBibTeXRecord
�j 
File�i 0 thefile theFile
�h 
psxp�g 0 thepath thePath�f 0 	shellopts 	shellOpts�e 0 
pdfmeatcmd 
pdfMeatCmd�d 0 shellcmd shellCmd�c 0 pdfmeatoutput pdfMeatOutput
�b .sysoexecTEXT���     TEXT
�a 
from
�` .BDSKImptnull���     docu�_ 0 newpubs newPubs�^ 0 newpub newPub
�] 
bfld
�\ 
fldv�[ 0 thenum theNum�Z 0 thevol theVol�Y 0 thepages thePages
�X .BDSKshownull���     ****
�W .coredelonull���     obj �t�*�k/E�O� �*�,E�O��k/E�O� I��,EE�O*�-EE�O��,E�O�E�O�E` O�_ %a %�%a %E` Oa E` O_ j E` OPUO*a _ l E` O_ �k/EE` O_  4*a a /a ,E` O*a a /a ,E`  O*a a !/a ,E` "UO� 4_ *a a #/a ,FO_  *a a $/a ,FO_ "*a a %/a ,FUO�j &O_ j 'UUascr  ��ޭ