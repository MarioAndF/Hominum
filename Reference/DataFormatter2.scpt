FasdUAS 1.101.10   ��   ��    k             i         I      �� 	���� $0 readandsplitfile readAndSplitFile 	  
  
 o      ���� 0 thefile theFile   ��  o      ���� 0 thedelimiter theDelimiter��  ��    k            l     ��  ��    #  Convert the file to a string     �   :   C o n v e r t   t h e   f i l e   t o   a   s t r i n g      r         c         o     ���� 0 thefile theFile  m    ��
�� 
TEXT  o      ���� 0 thefile theFile      l   ��������  ��  ��        l   ��  ��    F @ Read the file using a specific delimiter and return the results     �   �   R e a d   t h e   f i l e   u s i n g   a   s p e c i f i c   d e l i m i t e r   a n d   r e t u r n   t h e   r e s u l t s    ��   L     ! ! I   �� " #
�� .rdwrread****        **** " 4    
�� $
�� 
file $ o    	���� 0 thefile theFile # �� %��
�� 
deli % J     & &  '�� ' o    ���� 0 thedelimiter theDelimiter��  ��  ��     ( ) ( l     ��������  ��  ��   )  * + * i     , - , I      �� .���� "0 writetexttofile writeTextToFile .  / 0 / o      ���� 0 thetext theText 0  1 2 1 o      ���� 0 thefile theFile 2  3�� 3 o      ���� 40 overwriteexistingcontent overwriteExistingContent��  ��   - Q     [ 4 5 6 4 k    < 7 7  8 9 8 l   �� : ;��   : #  Convert the file to a string    ; � < < :   C o n v e r t   t h e   f i l e   t o   a   s t r i n g 9  = > = r     ? @ ? c     A B A o    ���� 0 thefile theFile B m    ��
�� 
TEXT @ o      ���� 0 thefile theFile >  C D C l  	 	�� E F��   E    Open the file for writing    F � G G 4   O p e n   t h e   f i l e   f o r   w r i t i n g D  H I H r   	  J K J I  	 �� L M
�� .rdwropenshor       file L 4   	 �� N
�� 
file N o    ���� 0 thefile theFile M �� O��
�� 
perm O m    ��
�� boovtrue��   K o      ���� 0 theopenedfile theOpenedFile I  P Q P l   �� R S��   R 6 0 Clear the file if content should be overwritten    S � T T `   C l e a r   t h e   f i l e   i f   c o n t e n t   s h o u l d   b e   o v e r w r i t t e n Q  U V U Z   ' W X���� W =    Y Z Y o    ���� 40 overwriteexistingcontent overwriteExistingContent Z m    ��
�� boovtrue X I   #�� [ \
�� .rdwrseofnull���     **** [ o    ���� 0 theopenedfile theOpenedFile \ �� ]��
�� 
set2 ] m    ����  ��  ��  ��   V  ^ _ ^ l  ( (�� ` a��   ` ( " Write the new content to the file    a � b b D   W r i t e   t h e   n e w   c o n t e n t   t o   t h e   f i l e _  c d c I  ( 1�� e f
�� .rdwrwritnull���     **** e o   ( )���� 0 thetext theText f �� g h
�� 
refn g o   * +���� 0 theopenedfile theOpenedFile h �� i��
�� 
wrat i m   , -��
�� rdwreof ��   d  j k j l  2 2�� l m��   l   Close the file    m � n n    C l o s e   t h e   f i l e k  o p o I  2 7�� q��
�� .rdwrclosnull���     **** q o   2 3���� 0 theopenedfile theOpenedFile��   p  r s r l  8 8�� t u��   t > 8 Return a boolean indicating that writing was successful    u � v v p   R e t u r n   a   b o o l e a n   i n d i c a t i n g   t h a t   w r i t i n g   w a s   s u c c e s s f u l s  w x w L   8 : y y m   8 9��
�� boovtrue x  z�� z l  ; ;�� { |��   {   Handle a write error    | � } } *   H a n d l e   a   w r i t e   e r r o r��   5 R      ������
�� .ascrerr ****      � ****��  ��   6 k   D [ ~ ~   �  l  D D�� � ���   �   Close the file    � � � �    C l o s e   t h e   f i l e �  � � � Q   D X � ��� � I  G O�� ���
�� .rdwrclosnull���     **** � 4   G K�� �
�� 
file � o   I J���� 0 thefile theFile��   � R      ������
�� .ascrerr ****      � ****��  ��  ��   �  � � � l  Y Y�� � ���   � 6 0 Return a boolean indicating that writing failed    � � � � `   R e t u r n   a   b o o l e a n   i n d i c a t i n g   t h a t   w r i t i n g   f a i l e d �  ��� � L   Y [ � � m   Y Z��
�� boovfals��   +  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� *0 convertlisttostring convertListToString �  � � � o      ���� 0 thelist theList �  ��� � o      ���� 0 thedelimiter theDelimiter��  ��   � k      � �  � � � r      � � � o     ���� 0 thedelimiter theDelimiter � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  � � � r     � � � c    	 � � � o    ���� 0 thelist theList � m    ��
�� 
TEXT � o      ���� 0 	thestring 	theString �  � � � r     � � � m     � � � � �   � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  ��� � L     � � o    ���� 0 	thestring 	theString��   �  � � � l     ��������  ��  ��   �  � � � l    	 ����� � r     	 � � � I    ���� �
�� .sysostdfalis    ��� null��   � �� ���
�� 
prmp � m     � � � � � D P l e a s e   s e l e c t   a   t e x t   f i l e   t o   r e a d :��   � o      ���� 0 datafile dataFile��  ��   �  � � � l  
  ����� � r   
  � � � I   
 �� ����� $0 readandsplitfile readAndSplitFile �  � � � o    ���� 0 datafile dataFile �  ��� � m     � � � � �  !��  ��   � o      ���� 0 datalist dataList��  ��   �  � � � l     ��������  ��  ��   �  � � � l    ����� � r     � � � I   ���� �
�� .sysostdfalis    ��� null��   � �� ���
�� 
prmp � m     � � � � � D P l e a s e   s e l e c t   a   t e x t   f i l e   t o   r e a d :��   � o      �� "0 definitionsfile definitionsFile��  ��   �  � � � l   ' ��~�} � r    ' � � � I    %�| ��{�| $0 readandsplitfile readAndSplitFile �  � � � o     �z�z "0 definitionsfile definitionsFile �  ��y � m     ! � � � � �  
�y  �{   � o      �x�x "0 definitionslist definitionsList�~  �}   �  � � � l  ( , ��w�v � r   ( , � � � J   ( *�u�u   � o      �t�t 0 newdatalist newDataList�w  �v   �  � � � l     �s�r�q�s  �r  �q   �  � � � l  - j ��p�o � Y   - j ��n � ��m � k   : e � �  � � � r   : @ � � � n   : > � � � 4   ; >�l �
�l 
cobj � o   < =�k�k 0 a   � o   : ;�j�j 0 datalist dataList � o      �i�i 00 thecurrentdatalistitem theCurrentDataListItem �  � � � r   A G � � � n   A E � � � 4   B E�h �
�h 
cobj � o   C D�g�g 0 a   � o   A B�f�f "0 definitionslist definitionsList � o      �e�e <0 thecurrentdefinitionlistitem theCurrentDefinitionListItem �  � � � l  H H�d � ��d   � $  Process the current list item    � � � � <   P r o c e s s   t h e   c u r r e n t   l i s t   i t e m �  �  � r   H O b   H K o   H I�c�c 00 thecurrentdatalistitem theCurrentDataListItem o   I J�b�b <0 thecurrentdefinitionlistitem theCurrentDefinitionListItem o      �a�a 0 newitem newItem   s   P V o   P S�`�` 0 newitem newItem l     	�_�^	 n      

  ;   T U l  S T�]�\ o   S T�[�[ 0 newdatalist newDataList�]  �\  �_  �^   �Z O   W e I  ] d�Y�X
�Y .ascrcmnt****      � **** o   ] `�W�W 0 newitem newItem�X   m   W Z�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �Z  �n 0 a   � m   0 1�V�V  � n   1 5 1   2 4�U
�U 
leng o   1 2�T�T 0 datalist dataList�m  �p  �o   �  l     �S�R�Q�S  �R  �Q    l  k x�P�O r   k x I   k t�N�M�N *0 convertlisttostring convertListToString  o   l m�L�L 0 newdatalist newDataList �K m   m p �    
�K  �M   o      �J�J 0 
liststring 
listString�P  �O   !"! l  y �#�I�H# r   y �$%$ m   y |&& �'' d M a c i n t o s h   H D : U s e r s : m a r i o f l o r e s : D e s k t o p : N e w D a t a . t x t% o      �G�G 0 newfile newFile�I  �H  " (�F( l  � �)�E�D) I   � ��C*�B�C "0 writetexttofile writeTextToFile* +,+ o   � ��A�A 0 
liststring 
listString, -.- o   � ��@�@ 0 newfile newFile. /�?/ m   � ��>
�> boovtrue�?  �B  �E  �D  �F       �=01234�=  0 �<�;�:�9�< $0 readandsplitfile readAndSplitFile�; "0 writetexttofile writeTextToFile�: *0 convertlisttostring convertListToString
�9 .aevtoappnull  �   � ****1 �8 �7�656�5�8 $0 readandsplitfile readAndSplitFile�7 �47�4 7  �3�2�3 0 thefile theFile�2 0 thedelimiter theDelimiter�6  5 �1�0�1 0 thefile theFile�0 0 thedelimiter theDelimiter6 �/�.�-�,
�/ 
TEXT
�. 
file
�- 
deli
�, .rdwrread****        ****�5 ��&E�O*�/�kvl 2 �+ -�*�)89�(�+ "0 writetexttofile writeTextToFile�* �':�' :  �&�%�$�& 0 thetext theText�% 0 thefile theFile�$ 40 overwriteexistingcontent overwriteExistingContent�)  8 �#�"�!� �# 0 thetext theText�" 0 thefile theFile�! 40 overwriteexistingcontent overwriteExistingContent�  0 theopenedfile theOpenedFile9 ��������������
� 
TEXT
� 
file
� 
perm
� .rdwropenshor       file
� 
set2
� .rdwrseofnull���     ****
� 
refn
� 
wrat
� rdwreof � 
� .rdwrwritnull���     ****
� .rdwrclosnull���     ****�  �  �( \ >��&E�O*�/�el E�O�e  ��jl Y hO����� 
O�j OeOPW X   *�/j W X  hOf3 � ���;<�� *0 convertlisttostring convertListToString� �=� =  ��� 0 thelist theList� 0 thedelimiter theDelimiter�  ; �
�	��
 0 thelist theList�	 0 thedelimiter theDelimiter� 0 	thestring 	theString< ��� �
� 
ascr
� 
txdl
� 
TEXT� ���,FO��&E�O���,FO�4 �>��?@�
� .aevtoappnull  �   � ****> k     �AA  �BB  �CC  �DD  �EE  �FF  �GG HH !II (� �   �  �  ? ���� 0 a  @ �� ����� ����� ��� ���������������������&����
�� 
prmp
�� .sysostdfalis    ��� null�� 0 datafile dataFile�� $0 readandsplitfile readAndSplitFile�� 0 datalist dataList�� "0 definitionsfile definitionsFile�� "0 definitionslist definitionsList�� 0 newdatalist newDataList
�� 
leng
�� 
cobj�� 00 thecurrentdatalistitem theCurrentDataListItem�� <0 thecurrentdefinitionlistitem theCurrentDefinitionListItem�� 0 newitem newItem
�� .ascrcmnt****      � ****�� *0 convertlisttostring convertListToString�� 0 
liststring 
listString�� 0 newfile newFile�� "0 writetexttofile writeTextToFile� �*��l E�O*��l+ E�O*��l E�O*��l+ E�OjvE�O <k��,Ekh  ���/E�O���/E�O��%E` O_ �6GOa  	_ j U[OY��O*�a l+ E` Oa E` O*_ _ em+ ascr  ��ޭ