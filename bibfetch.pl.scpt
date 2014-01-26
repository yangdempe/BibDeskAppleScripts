FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
This script
  1) For each selected BibDesk publication
  2) Passes the quoted Title to bibfetch.pl
  3) Parses the results of bibfetch.pl for the URL of the PDF
  4) Uses curl to download the PDF
  5) Attaches the PDF to the publication
  6) Auto-files the PDF
  
 In order to get bibfetch.pl working, install it, and install all of the dependencies it needs by typing something similar to the following at the shell prompt:
 
 cpan install App::cpanminus
 and then
 cpanm Foo::Bar
 
 You might need to use "sudo" before cpan and cpanm
     � 	 	2 
 T h i s   s c r i p t 
     1 )   F o r   e a c h   s e l e c t e d   B i b D e s k   p u b l i c a t i o n 
     2 )   P a s s e s   t h e   q u o t e d   T i t l e   t o   b i b f e t c h . p l 
     3 )   P a r s e s   t h e   r e s u l t s   o f   b i b f e t c h . p l   f o r   t h e   U R L   o f   t h e   P D F 
     4 )   U s e s   c u r l   t o   d o w n l o a d   t h e   P D F 
     5 )   A t t a c h e s   t h e   P D F   t o   t h e   p u b l i c a t i o n 
     6 )   A u t o - f i l e s   t h e   P D F 
     
   I n   o r d e r   t o   g e t   b i b f e t c h . p l   w o r k i n g ,   i n s t a l l   i t ,   a n d   i n s t a l l   a l l   o f   t h e   d e p e n d e n c i e s   i t   n e e d s   b y   t y p i n g   s o m e t h i n g   s i m i l a r   t o   t h e   f o l l o w i n g   a t   t h e   s h e l l   p r o m p t : 
   
   c p a n   i n s t a l l   A p p : : c p a n m i n u s 
   a n d   t h e n 
   c p a n m   F o o : : B a r 
   
   Y o u   m i g h t   n e e d   t o   u s e   " s u d o "   b e f o r e   c p a n   a n d   c p a n m 
   
  
 l     ��������  ��  ��        p         ������ 0 perlpath perlPath��        l         r         m        �    / u s r / b i n / p e r l  o      ���� 0 perlpath perlPath    where is perl?     �      w h e r e   i s   p e r l ?      p         ������ 0 bibfetchpath bibfetchPath��        l         r     ! " ! m     # # � $ $ " ~ / b i n / b i b f e t c h . p l " o      ���� 0 bibfetchpath bibfetchPath    where is bibfetch.pl?      � % % ,   w h e r e   i s   b i b f e t c h . p l ?   & ' & l     ��������  ��  ��   '  ( ) ( l     ��������  ��  ��   )  *�� * l  
 +���� + O   
 , - , k   	 . .  / 0 / r     1 2 1 4    �� 3
�� 
docu 3 m    ����  2 o      ���� 0 thedoc theDoc 0  4�� 4 O   	 5 6 5 k    7 7  8 9 8 r     : ; : 1    ��
�� 
sele ; o      ���� 0 thesel theSel 9  <�� < Z    = >�� ? = ?    $ @ A @ l   " B���� B I   "�� C��
�� .corecnte****       **** C o    ���� 0 thesel theSel��  ��  ��   A m   " #����   > X   ' � D�� E D O   7 � F G F k   ; � H H  I J I r   ; D K L K e   ; B M M n   ; B N O N 1   ? A��
�� 
fldv O 4   ; ?�� P
�� 
bfld P m   = > Q Q � R R 
 T i t l e L o      ���� 0 thetitle theTitle J  S T S Z   E X U V���� U =  E J W X W o   E F���� 0 thetitle theTitle X m   F I Y Y � Z Z   V I  M T�� [��
�� .sysodlogaskr        TEXT [ m   M P \ \ � ] ]  E r r o r :   N o   T i t l e��  ��  ��   T  ^ _ ^ r   Y ` ` a ` m   Y \ b b � c c  c d   / t m p ;   a o      ���� 0 	shellopts 	shellOpts _  d e d r   a t f g f b   a p h i h b   a l j k j b   a j l m l b   a f n o n m   a d p p � q q    o o   d e���� 0 perlpath perlPath m m   f i r r � s s    k o   j k���� 0 bibfetchpath bibfetchPath i m   l o t t � u u    g o      ���� 0 bibfetchcmd bibFetchCmd e  v w v r   u � x y x b   u � z { z b   u � | } | b   u � ~  ~ b   u � � � � b   u | � � � o   u x���� 0 	shellopts 	shellOpts � o   x {���� 0 bibfetchcmd bibFetchCmd � m   |  � � � � �    - p d f   '  o   � ����� 0 thetitle theTitle } m   � � � � � � �  ' { m   � � � � � � � 8 | g r e p   - o   ' P D F : \   . * ' | c u t   - c 6 - y o      ���� 0 shellcmd shellCmd w  � � � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � o   � ����� 0 shellcmd shellCmd��   � o      ���� 0 shelloutput shellOutput �  � � � l  � ��� � ���   �   display dialog shellOutput    � � � � 4 d i s p l a y   d i a l o g   s h e l l O u t p u t �  ��� � Z   � � � ��� � � =  � � � � � o   � ����� 0 shelloutput shellOutput � m   � � � � � � �   � l  � � � � � � I  � ��� ���
�� .sysodlogaskr        TEXT � b   � � � � � m   � � � � � � � N E r r o r :   P D F   n o t   f o u n d   f o r   p u b l i c a t i o n : 
 
 � o   � ����� 0 thetitle theTitle��   �   found a URL!    � � � �    f o u n d   a   U R L !��   � k   � � � �  � � � r   � � � � � b   � � � � � m   � � � � � � � 4 c u r l   - o   / t m p / b i b f e t c h . p d f   � o   � ����� 0 shelloutput shellOutput � o      ���� 0 shellcmd shellCmd �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � o   � ����� 0 shellcmd shellCmd��   �  � � � r   � � � � � m   � � � � � � � " / t m p / b i b f e t c h . p d f � o      ���� 0 thepath thePath �  � � � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
File � �� � �
�� 
data � o   � ����� 0 thepath thePath � �� ���
�� 
insh � n   � � � � �  :   � � � 2  � ���
�� 
File��   �  � � � O  � � � � � I  � �������
�� .BDSKAfilnull���     bibi��  ��   � o   � ����� 0 thepub thePub �  ��� � I  � ��� ���
�� .BDSKshownull���     **** � o   � ����� 0 thepub thePub��  ��  ��   G o   7 8���� 0 thepub thePub�� 0 thepub thePub E o   * +���� 0 thesel theSel��   ? I �� ���
�� .sysodlogaskr        TEXT � m   � � � � �   N o t h i n g   S e l e c t e d��  ��   6 o    ���� 0 thedoc theDoc��   - m    	 � ��                                                                                  BDSK  alis    :  OSX                        ΍�gH+   ,�9BibDesk.app                                                     v)���Y        ����  	                TeX     Ύ5�      �̟Q     ,�9   �  "OSX:Applications: TeX: BibDesk.app    B i b D e s k . a p p    O S X  Applications/TeX/BibDesk.app  / ��  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k    
 � �   � �   � �  *����  ��  ��   � ���� 0 thepub thePub � , �� #�� ����������������� Q���� Y \�� b�� p r t�� � � ������� � � � ����������������� ��� 0 perlpath perlPath�� 0 bibfetchpath bibfetchPath
�� 
docu�� 0 thedoc theDoc
�� 
sele�� 0 thesel theSel
�� .corecnte****       ****
�� 
kocl
�� 
cobj
�� 
bfld
�� 
fldv�� 0 thetitle theTitle
�� .sysodlogaskr        TEXT�� 0 	shellopts 	shellOpts�� 0 bibfetchcmd bibFetchCmd�� 0 shellcmd shellCmd
�� .sysoexecTEXT���     TEXT�� 0 shelloutput shellOutput�� 0 thepath thePath
�� 
File
�� 
data
�� 
insh�� 
�� .corecrel****      � null
�� .BDSKAfilnull���     bibi
�� .BDSKshownull���     ****���E�O�E�O� �*�k/E�O� �*�,E�O�j 	j � ��[��l 	kh  � �*��/�,EE�O�a   a j Y hOa E` Oa �%a %�%a %E` O_ _ %a %�%a %a %E` O_ j E` O_ a   a  �%j Y Ia !_ %E` O_ j Oa "E` #O*�a $a %_ #a &*a $-5a ' (O� *j )UO�j *U[OY�8Y 	a +j UUascr  ��ޭ