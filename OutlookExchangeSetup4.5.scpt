FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��

--------------------------------------------
Outlook Exchange Setup 4.5
� Copyright 2008-2012 William Smith
bill@officeformachelp.com

Except where otherwise noted, this work is licensed under
http://creativecommons.org/licenses/by/3.0/

This script may be freely modified for personal or commercial
purposes but may not be republished for profit without prior consent.

If you find this script useful or have ideas for improving it,
please let me know. It is only compatible with Outlook for Mac 2011.

--------------------------------------------

This script assists a user with the setup of his Exchange account
information. Below are basic instructions for using the script.
Consult the Outlook Exchange Setup 4.0 Administrator's Guide
for complete details.

1.	Customize the "network and  server properties" below with information
	appropriate to your network.

2. 	a. 	Launch Microsoft Outlook under a Mac OS X account that has no
		Outlook identity. Identities are found in
		~/Documents/Microsoft User Data/Office 2011 Identities.
	
	b. 	Close the Outlook Setup Assistant window and select
		Outlook --> Work Offline.
	
	c.	In the Finder, create a folder called "Outlook Setup Script"
		in /Library/<your company name>/ or any single location
		where all users have Read permissions.
	  
	d. 	Copy your customized script to the "Outlook Setup Script" folder.
		It should be saved as a compiled script, not an application.
		You can rename the script if you wish.
		
	e.	In Outlook select Tools --> Schedules... and create a New Schedule.
		Name: Exchange Setup
		When: At Startup
		Action: Run AppleScript, choose the saved script
			in the "Outlook Setup Script" folder.
		Click the "OK" button. Your script should be set to run
			at "Next Startup".
		
	f.	Configure any preferences, schedules, signatures, etc.
		This can include Default address format, Default time zone, fonts,
		encoding for attachments and more.
		
	g.	Quit Outlook.
		
	h.	Depending on your admin tools, you can push the script to the
		/Library folder of a new computer and the
		"~/Documents/Microsoft User Data/Office 2011 Identities/Main Identity" folder and
		to the "/System/Library/User Template/English.lproj/Documents/Microsoft User Data/
		Office 2011 Identities" folder.
		
		New users on a machine will have the pre-configured Main Identity
		folder copied to their home folders the first time they log in to a computer.
		
		The first time they launch Outlook, the "Exchange Setup" schedule
		will run the script.
		
		The script will disable the Schedule once it has run and will set Outlook
		to work online.
	  
	  
This script assumes the user's full name is in the form of "Last, First",
but is easily modified if the full name is in the form of "First Last".
It works especially well if the Mac is bound to Active Directory where
the user's short name will match his login name. Optionally, a dscl command
can be used to pull the user's EMailAddress from a directory service.

     � 	 	L 
 
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 O u t l o o k   E x c h a n g e   S e t u p   4 . 5 
 �   C o p y r i g h t   2 0 0 8 - 2 0 1 2   W i l l i a m   S m i t h 
 b i l l @ o f f i c e f o r m a c h e l p . c o m 
 
 E x c e p t   w h e r e   o t h e r w i s e   n o t e d ,   t h i s   w o r k   i s   l i c e n s e d   u n d e r 
 h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y / 3 . 0 / 
 
 T h i s   s c r i p t   m a y   b e   f r e e l y   m o d i f i e d   f o r   p e r s o n a l   o r   c o m m e r c i a l 
 p u r p o s e s   b u t   m a y   n o t   b e   r e p u b l i s h e d   f o r   p r o f i t   w i t h o u t   p r i o r   c o n s e n t . 
 
 I f   y o u   f i n d   t h i s   s c r i p t   u s e f u l   o r   h a v e   i d e a s   f o r   i m p r o v i n g   i t , 
 p l e a s e   l e t   m e   k n o w .   I t   i s   o n l y   c o m p a t i b l e   w i t h   O u t l o o k   f o r   M a c   2 0 1 1 . 
 
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 
 T h i s   s c r i p t   a s s i s t s   a   u s e r   w i t h   t h e   s e t u p   o f   h i s   E x c h a n g e   a c c o u n t 
 i n f o r m a t i o n .   B e l o w   a r e   b a s i c   i n s t r u c t i o n s   f o r   u s i n g   t h e   s c r i p t . 
 C o n s u l t   t h e   O u t l o o k   E x c h a n g e   S e t u p   4 . 0   A d m i n i s t r a t o r ' s   G u i d e 
 f o r   c o m p l e t e   d e t a i l s . 
 
 1 . 	 C u s t o m i z e   t h e   " n e t w o r k   a n d     s e r v e r   p r o p e r t i e s "   b e l o w   w i t h   i n f o r m a t i o n 
 	 a p p r o p r i a t e   t o   y o u r   n e t w o r k . 
 
 2 .   	 a .   	 L a u n c h   M i c r o s o f t   O u t l o o k   u n d e r   a   M a c   O S   X   a c c o u n t   t h a t   h a s   n o 
 	 	 O u t l o o k   i d e n t i t y .   I d e n t i t i e s   a r e   f o u n d   i n 
 	 	 ~ / D o c u m e n t s / M i c r o s o f t   U s e r   D a t a / O f f i c e   2 0 1 1   I d e n t i t i e s . 
 	 
 	 b .   	 C l o s e   t h e   O u t l o o k   S e t u p   A s s i s t a n t   w i n d o w   a n d   s e l e c t 
 	 	 O u t l o o k   - - >   W o r k   O f f l i n e . 
 	 
 	 c . 	 I n   t h e   F i n d e r ,   c r e a t e   a   f o l d e r   c a l l e d   " O u t l o o k   S e t u p   S c r i p t " 
 	 	 i n   / L i b r a r y / < y o u r   c o m p a n y   n a m e > /   o r   a n y   s i n g l e   l o c a t i o n 
 	 	 w h e r e   a l l   u s e r s   h a v e   R e a d   p e r m i s s i o n s . 
 	     
 	 d .   	 C o p y   y o u r   c u s t o m i z e d   s c r i p t   t o   t h e   " O u t l o o k   S e t u p   S c r i p t "   f o l d e r . 
 	 	 I t   s h o u l d   b e   s a v e d   a s   a   c o m p i l e d   s c r i p t ,   n o t   a n   a p p l i c a t i o n . 
 	 	 Y o u   c a n   r e n a m e   t h e   s c r i p t   i f   y o u   w i s h . 
 	 	 
 	 e . 	 I n   O u t l o o k   s e l e c t   T o o l s   - - >   S c h e d u l e s . . .   a n d   c r e a t e   a   N e w   S c h e d u l e . 
 	 	 N a m e :   E x c h a n g e   S e t u p 
 	 	 W h e n :   A t   S t a r t u p 
 	 	 A c t i o n :   R u n   A p p l e S c r i p t ,   c h o o s e   t h e   s a v e d   s c r i p t 
 	 	 	 i n   t h e   " O u t l o o k   S e t u p   S c r i p t "   f o l d e r . 
 	 	 C l i c k   t h e   " O K "   b u t t o n .   Y o u r   s c r i p t   s h o u l d   b e   s e t   t o   r u n 
 	 	 	 a t   " N e x t   S t a r t u p " . 
 	 	 
 	 f . 	 C o n f i g u r e   a n y   p r e f e r e n c e s ,   s c h e d u l e s ,   s i g n a t u r e s ,   e t c . 
 	 	 T h i s   c a n   i n c l u d e   D e f a u l t   a d d r e s s   f o r m a t ,   D e f a u l t   t i m e   z o n e ,   f o n t s , 
 	 	 e n c o d i n g   f o r   a t t a c h m e n t s   a n d   m o r e . 
 	 	 
 	 g . 	 Q u i t   O u t l o o k . 
 	 	 
 	 h . 	 D e p e n d i n g   o n   y o u r   a d m i n   t o o l s ,   y o u   c a n   p u s h   t h e   s c r i p t   t o   t h e 
 	 	 / L i b r a r y   f o l d e r   o f   a   n e w   c o m p u t e r   a n d   t h e 
 	 	 " ~ / D o c u m e n t s / M i c r o s o f t   U s e r   D a t a / O f f i c e   2 0 1 1   I d e n t i t i e s / M a i n   I d e n t i t y "   f o l d e r   a n d 
 	 	 t o   t h e   " / S y s t e m / L i b r a r y / U s e r   T e m p l a t e / E n g l i s h . l p r o j / D o c u m e n t s / M i c r o s o f t   U s e r   D a t a / 
 	 	 O f f i c e   2 0 1 1   I d e n t i t i e s "   f o l d e r . 
 	 	 
 	 	 N e w   u s e r s   o n   a   m a c h i n e   w i l l   h a v e   t h e   p r e - c o n f i g u r e d   M a i n   I d e n t i t y 
 	 	 f o l d e r   c o p i e d   t o   t h e i r   h o m e   f o l d e r s   t h e   f i r s t   t i m e   t h e y   l o g   i n   t o   a   c o m p u t e r . 
 	 	 
 	 	 T h e   f i r s t   t i m e   t h e y   l a u n c h   O u t l o o k ,   t h e   " E x c h a n g e   S e t u p "   s c h e d u l e 
 	 	 w i l l   r u n   t h e   s c r i p t . 
 	 	 
 	 	 T h e   s c r i p t   w i l l   d i s a b l e   t h e   S c h e d u l e   o n c e   i t   h a s   r u n   a n d   w i l l   s e t   O u t l o o k 
 	 	 t o   w o r k   o n l i n e . 
 	     
 	     
 T h i s   s c r i p t   a s s u m e s   t h e   u s e r ' s   f u l l   n a m e   i s   i n   t h e   f o r m   o f   " L a s t ,   F i r s t " , 
 b u t   i s   e a s i l y   m o d i f i e d   i f   t h e   f u l l   n a m e   i s   i n   t h e   f o r m   o f   " F i r s t   L a s t " . 
 I t   w o r k s   e s p e c i a l l y   w e l l   i f   t h e   M a c   i s   b o u n d   t o   A c t i v e   D i r e c t o r y   w h e r e 
 t h e   u s e r ' s   s h o r t   n a m e   w i l l   m a t c h   h i s   l o g i n   n a m e .   O p t i o n a l l y ,   a   d s c l   c o m m a n d 
 c a n   b e   u s e d   t o   p u l l   t h e   u s e r ' s   E M a i l A d d r e s s   f r o m   a   d i r e c t o r y   s e r v i c e . 
 
   
  
 l     ��������  ��  ��        p         ������ 0 importresult importResult��        l     ��������  ��  ��        l     ��  ��    0 *------------------------------------------     �   T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��  ��    * $ Begin network and server properties     �   H   B e g i n   n e t w o r k   a n d   s e r v e r   p r o p e r t i e s      l     ��  ��    0 *------------------------------------------     �   T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -     !   l     ��������  ��  ��   !  " # " j     �� $�� 0 usekerberos useKerberos $ m     ��
�� boovfals #  % & % l     �� ' (��   ' A ; Set this property to true only if Macs in your environment    ( � ) ) v   S e t   t h i s   p r o p e r t y   t o   t r u e   o n l y   i f   M a c s   i n   y o u r   e n v i r o n m e n t &  * + * l     �� , -��   , %  are bound to Active Directory.    - � . . >   a r e   b o u n d   t o   A c t i v e   D i r e c t o r y . +  / 0 / l     �� 1 2��   1 > 8 Kerberos support works only if your network is properly    2 � 3 3 p   K e r b e r o s   s u p p o r t   w o r k s   o n l y   i f   y o u r   n e t w o r k   i s   p r o p e r l y 0  4 5 4 l     �� 6 7��   6   configured.    7 � 8 8    c o n f i g u r e d . 5  9 : 9 l     ��������  ��  ��   :  ; < ; j    �� =�� 0 kerberosrealm kerberosRealm = m     > > � ? ?  e x a m p l e . c o m <  @ A @ l     �� B C��   B 8 2 For most Kerberos environments the Kerberos realm    C � D D d   F o r   m o s t   K e r b e r o s   e n v i r o n m e n t s   t h e   K e r b e r o s   r e a l m A  E F E l     �� G H��   G 2 , will be the same as the E-mail domain name.    H � I I X   w i l l   b e   t h e   s a m e   a s   t h e   E - m a i l   d o m a i n   n a m e . F  J K J l     �� L M��   L D > This property is used only if the userKerberos property above    M � N N |   T h i s   p r o p e r t y   i s   u s e d   o n l y   i f   t h e   u s e r K e r b e r o s   p r o p e r t y   a b o v e K  O P O l     �� Q R��   Q  	 is true.    R � S S    i s   t r u e . P  T U T l     ��������  ��  ��   U  V W V j    �� X�� 0 
domainname 
domainName X m     Y Y � Z Z  e x a m p l e . c o m W  [ \ [ l     �� ] ^��   ]   example: "domain.com"    ^ � _ _ ,   e x a m p l e :   " d o m a i n . c o m " \  ` a ` l     ��������  ��  ��   a  b c b j   	 �� d��  0 exchangeserver ExchangeServer d m   	 
 e e � f f ( e x c h a n g e . e x a m p l e . c o m c  g h g l     �� i j��   i + % example: "ExchangeServer.domain.com"    j � k k J   e x a m p l e :   " E x c h a n g e S e r v e r . d o m a i n . c o m " h  l m l l     ��������  ��  ��   m  n o n j    �� p�� >0 extendedexchangeserveraddress ExtendedExchangeServerAddress p m    ��
�� boovfals o  q r q l     �� s t��   s < 6 Are you connecting to an Exchange Server 2007 server?    t � u u l   A r e   y o u   c o n n e c t i n g   t o   a n   E x c h a n g e   S e r v e r   2 0 0 7   s e r v e r ? r  v w v l     �� x y��   x 7 1 If so, you may need to use the extended address:    y � z z b   I f   s o ,   y o u   m a y   n e e d   t o   u s e   t h e   e x t e n d e d   a d d r e s s : w  { | { l     �� } ~��   } = 7 "ExchangeServer.domain.com/exchange/user@example.com".    ~ �   n   " E x c h a n g e S e r v e r . d o m a i n . c o m / e x c h a n g e / u s e r @ e x a m p l e . c o m " . |  � � � l     �� � ���   � ; 5 Set this to "true" if you need the extended address.    � � � � j   S e t   t h i s   t o   " t r u e "   i f   y o u   n e e d   t h e   e x t e n d e d   a d d r e s s . �  � � � l     ��������  ��  ��   �  � � � j    �� ��� 60 exchangeserverrequiresssl ExchangeServerRequiresSSL � m    ��
�� boovtrue �  � � � l     �� � ���   � 9 3 If Exchange users will connect to a backend server    � � � � f   I f   E x c h a n g e   u s e r s   w i l l   c o n n e c t   t o   a   b a c k e n d   s e r v e r �  � � � l     �� � ���   � A ; within the same network then SSL is probably not required.    � � � � v   w i t h i n   t h e   s a m e   n e t w o r k   t h e n   S S L   i s   p r o b a b l y   n o t   r e q u i r e d . �  � � � l     �� � ���   � 4 . OWA connections will probably require SSL and    � � � � \   O W A   c o n n e c t i o n s   w i l l   p r o b a b l y   r e q u i r e   S S L   a n d �  � � � l     �� � ���   � * $ this setting should be set to true.    � � � � H   t h i s   s e t t i n g   s h o u l d   b e   s e t   t o   t r u e . �  � � � l     ��������  ��  ��   �  � � � j    �� ��� .0 exchangeserversslport ExchangeServerSSLPort � m    ����� �  � � � l     �� � ���   � 8 2 If ExchangeServerSSL is false set the port to 80.    � � � � d   I f   E x c h a n g e S e r v e r S S L   i s   f a l s e   s e t   t h e   p o r t   t o   8 0 . �  � � � l     �� � ���   � 8 2 If ExchangeServerSSL is true set the port to 443.    � � � � d   I f   E x c h a n g e S e r v e r S S L   i s   t r u e   s e t   t h e   p o r t   t o   4 4 3 . �  � � � l     �� � ���   � 4 . Use a different port number only if specified    � � � � \   U s e   a   d i f f e r e n t   p o r t   n u m b e r   o n l y   i f   s p e c i f i e d �  � � � l     �� � ���   �   by your administrator.    � � � � .   b y   y o u r   a d m i n i s t r a t o r . �  � � � l     ��������  ��  ��   �  � � � j    �� ��� "0 directoryserver DirectoryServer � m     � � � � �  g c . e x a m p l e . c o m �  � � � l     �� � ���   � 0 * example: "GlobalCatalogServer.domain.com"    � � � � T   e x a m p l e :   " G l o b a l C a t a l o g S e r v e r . d o m a i n . c o m " �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 2 , OWA connections cannot use the OWA address.    � � � � X   O W A   c o n n e c t i o n s   c a n n o t   u s e   t h e   O W A   a d d r e s s . �  � � � l     ��������  ��  ��   �  � � � j    �� ��� N0 %directoryserverrequiresauthentication %DirectoryServerRequiresAuthentication � m    ��
�� boovtrue �  � � � l     �� � ���   � 7 1 This will almost always be true. The LDAP server    � � � � b   T h i s   w i l l   a l m o s t   a l w a y s   b e   t r u e .   T h e   L D A P   s e r v e r �  � � � l     �� � ���   � < 6 in a Windows network will be a Global Catalog server,    � � � � l   i n   a   W i n d o w s   n e t w o r k   w i l l   b e   a   G l o b a l   C a t a l o g   s e r v e r , �  � � � l     �� � ���   � 2 , which is separate from the Exchange Server.    � � � � X   w h i c h   i s   s e p a r a t e   f r o m   t h e   E x c h a n g e   S e r v e r . �  � � � l     �� � ���   � 2 , OWA connections can not use the OWA address    � � � � X   O W A   c o n n e c t i o n s   c a n   n o t   u s e   t h e   O W A   a d d r e s s �  � � � l     �� � ���   �   with this setting.    � � � � &   w i t h   t h i s   s e t t i n g . �  � � � l     ��������  ��  ��   �  � � � j    �� ��� 80 directoryserverrequiresssl DirectoryServerRequiresSSL � m    ��
�� boovfals �  � � � l     �� � ���   � 9 3 If Exchange users will connect to a backend server    � � � � f   I f   E x c h a n g e   u s e r s   w i l l   c o n n e c t   t o   a   b a c k e n d   s e r v e r �  � � � l     �� � ���   � 3 - within the same network then SSL is probably    � � � � Z   w i t h i n   t h e   s a m e   n e t w o r k   t h e n   S S L   i s   p r o b a b l y �  � � � l     �� � ���   � 0 * not required. OWA connections can not use    � � � � T   n o t   r e q u i r e d .   O W A   c o n n e c t i o n s   c a n   n o t   u s e �  � � � l     �� � ���   � ) # the OWA address with this setting.    � �   F   t h e   O W A   a d d r e s s   w i t h   t h i s   s e t t i n g . �  l     ��������  ��  ��    j     ���� 00 directoryserversslport DirectoryServerSSLPort m    �����  l     ��	��   C = If DirectoryServerRequiresSSL is false set the port to 3268.   	 �

 z   I f   D i r e c t o r y S e r v e r R e q u i r e s S S L   i s   f a l s e   s e t   t h e   p o r t   t o   3 2 6 8 .  l     ����   B < If DirectoryServerRequiresSSL is true set the port to 3269.    � x   I f   D i r e c t o r y S e r v e r R e q u i r e s S S L   i s   t r u e   s e t   t h e   p o r t   t o   3 2 6 9 .  l     ����   4 . Use a different port number only if specified    � \   U s e   a   d i f f e r e n t   p o r t   n u m b e r   o n l y   i f   s p e c i f i e d  l     ����     by your administrator.    � .   b y   y o u r   a d m i n i s t r a t o r .  l     ��������  ��  ��    l     ����   D > OWA connections cannot use the OWA address with this setting.    �   |   O W A   c o n n e c t i o n s   c a n n o t   u s e   t h e   O W A   a d d r e s s   w i t h   t h i s   s e t t i n g . !"! l     ��������  ��  ��  " #$# j   ! %��%�� >0 directoryservermaximumresults DirectoryServerMaximumResults% m   ! $�����$ &'& l     ��()��  ( E ? When searching the Global Address list, this number determines   ) �** ~   W h e n   s e a r c h i n g   t h e   G l o b a l   A d d r e s s   l i s t ,   t h i s   n u m b e r   d e t e r m i n e s' +,+ l     ��-.��  - 0 * the maximum number of entries to display.   . �// T   t h e   m a x i m u m   n u m b e r   o f   e n t r i e s   t o   d i s p l a y ., 010 l     ��������  ��  ��  1 232 j   & *��4�� 60 directoryserversearchbase DirectoryServerSearchBase4 m   & )55 �66  3 787 l     ��9:��  9 + % example: "cn=users,dc=domain,dc=com"   : �;; J   e x a m p l e :   " c n = u s e r s , d c = d o m a i n , d c = c o m "8 <=< l     ��������  ��  ��  = >?> l     ��@A��  @ @ : Search base will be optional in many environments and its   A �BB t   S e a r c h   b a s e   w i l l   b e   o p t i o n a l   i n   m a n y   e n v i r o n m e n t s   a n d   i t s? CDC l     ��EF��  E D > format will vary greatly. Experiment first connecting without   F �GG |   f o r m a t   w i l l   v a r y   g r e a t l y .   E x p e r i m e n t   f i r s t   c o n n e c t i n g   w i t h o u tD HIH l     ��JK��  J , & entering the search base information.   K �LL L   e n t e r i n g   t h e   s e a r c h   b a s e   i n f o r m a t i o n .I MNM l     �������  ��  �  N OPO j   + -�~Q�~ 40 getemailaddressusingdscl getEMailAddressUsingDSCLQ m   + ,�}
�} boovfalsP RSR l     �|TU�|  T ? 9 If the Macs are connected to a directory service such as   U �VV r   I f   t h e   M a c s   a r e   c o n n e c t e d   t o   a   d i r e c t o r y   s e r v i c e   s u c h   a sS WXW l     �{YZ�{  Y B < Active Directory, then they can probably use dscl to return   Z �[[ x   A c t i v e   D i r e c t o r y ,   t h e n   t h e y   c a n   p r o b a b l y   u s e   d s c l   t o   r e t u r nX \]\ l     �z^_�z  ^ F @ the current user's E-mail address instead of trying to parse it   _ �`` �   t h e   c u r r e n t   u s e r ' s   E - m a i l   a d d r e s s   i n s t e a d   o f   t r y i n g   t o   p a r s e   i t] aba l     �ycd�y  c   from the display name.    d �ee 0   f r o m   t h e   d i s p l a y   n a m e .  b fgf l     �x�w�v�x  �w  �v  g hih l     �ujk�u  j < 6 Using dscl is preferred. Otherwise, set this to false   k �ll l   U s i n g   d s c l   i s   p r e f e r r e d .   O t h e r w i s e ,   s e t   t h i s   t o   f a l s ei mnm l     �top�t  o ; 5 and set the next property to the appropriate number.   p �qq j   a n d   s e t   t h e   n e x t   p r o p e r t y   t o   t h e   a p p r o p r i a t e   n u m b e r .n rsr l     �s�r�q�s  �r  �q  s tut j   . 0�pv�p 0 emailformat emailFormatv m   . /�o�o u wxw l     �nyz�n  y E ? When dscl is unavailable to determine a user's E-mail address,   z �{{ ~   W h e n   d s c l   i s   u n a v a i l a b l e   t o   d e t e r m i n e   a   u s e r ' s   E - m a i l   a d d r e s s ,x |}| l     �m~�m  ~ C = it can be parsed using the display name of the user's login.    ��� z   i t   c a n   b e   p a r s e d   u s i n g   t h e   d i s p l a y   n a m e   o f   t h e   u s e r ' s   l o g i n .} ��� l     �l���l  � 2 , Set the next two properties to the examples   � ��� X   S e t   t h e   n e x t   t w o   p r o p e r t i e s   t o   t h e   e x a m p l e s� ��� l     �k���k  � 4 . that correspond to your organization's setup.   � ��� \   t h a t   c o r r e s p o n d   t o   y o u r   o r g a n i z a t i o n ' s   s e t u p .� ��� l     �j�i�h�j  �i  �h  � ��� l     �g���g  � 0 * 1: E-mail format is first.last@domain.com   � ��� T   1 :   E - m a i l   f o r m a t   i s   f i r s t . l a s t @ d o m a i n . c o m� ��� l     �f���f  � + % 2: E-mail format is first@domain.com   � ��� J   2 :   E - m a i l   f o r m a t   i s   f i r s t @ d o m a i n . c o m� ��� l     �e���e  � O I 3: E-mail format is flast@domain.com (first name initial plus last name)   � ��� �   3 :   E - m a i l   f o r m a t   i s   f l a s t @ d o m a i n . c o m   ( f i r s t   n a m e   i n i t i a l   p l u s   l a s t   n a m e )� ��� l     �d���d  � / ) 4: E-mail format is shortName@domain.com   � ��� R   4 :   E - m a i l   f o r m a t   i s   s h o r t N a m e @ d o m a i n . c o m� ��� l     �c�b�a�c  �b  �a  � ��� j   1 3�`��` 0 displayname displayName� m   1 2�_�_ � ��� l     �^���^  � 0 * 1: Display name displays as "Last, First"   � ��� T   1 :   D i s p l a y   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "� ��� l     �]���]  � / ) 2: Display name displays as "First Last"   � ��� R   2 :   D i s p l a y   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "� ��� l     �\�[�Z�\  �[  �Z  � ��� j   4 8�Y��Y (0 verifyemailaddress verifyEMailAddress� m   4 5�X
�X boovfals� ��� l     �W���W  � > 8 If set to "true", a dialog will ask the user to confirm   � ��� p   I f   s e t   t o   " t r u e " ,   a   d i a l o g   w i l l   a s k   t h e   u s e r   t o   c o n f i r m� ��� l     �V���V  �   his E-mail address.   � ��� (   h i s   E - m a i l   a d d r e s s .� ��� l     �U�T�S�U  �T  �S  � ��� j   9 =�R��R *0 verifyserveraddress verifyServerAddress� m   9 :�Q
�Q boovfals� ��� l     �P���P  � > 8 If set to "true", a dialog will ask the user to confirm   � ��� p   I f   s e t   t o   " t r u e " ,   a   d i a l o g   w i l l   a s k   t h e   u s e r   t o   c o n f i r m� ��� l     �O���O  � #  his Exchange server address.   � ��� :   h i s   E x c h a n g e   s e r v e r   a d d r e s s .� ��� l     �N�M�L�N  �M  �L  � ��� j   > B�K��K 0 	scheduled  � m   > ?�J
�J boovfals� ��� l     �I���I  � + % Exchange accounts don't require that   � ��� J   E x c h a n g e   a c c o u n t s   d o n ' t   r e q u i r e   t h a t� ��� l     �H���H  � 4 . the "Send & Receive All" schedule be enabled.   � ��� \   t h e   " S e n d   &   R e c e i v e   A l l "   s c h e d u l e   b e   e n a b l e d .� ��� l     �G���G  � . ( Change this setting to true if the user   � ��� P   C h a n g e   t h i s   s e t t i n g   t o   t r u e   i f   t h e   u s e r� ��� l     �F���F  � 7 1 will also be connecting to POP or IMAP accounts.   � ��� b   w i l l   a l s o   b e   c o n n e c t i n g   t o   P O P   o r   I M A P   a c c o u n t s .� ��� l     �E�D�C�E  �D  �C  � ��� j   C I�B��B 0 errormessage errorMessage� m   C F�� ��� � S e t u p   o f   y o u r   a c c o u n t   f a i l e d .   P l e a s e   c o n t a c t   y o u r   w o r k s t a t i o n   a d m i n i s t r a t o r   f o r   a s s i s t a n c e .� ��� l     �A���A  � 2 , Customize this error message for your users   � ��� X   C u s t o m i z e   t h i s   e r r o r   m e s s a g e   f o r   y o u r   u s e r s� ��� l     �@���@  � #  if their account setup fails   � ��� :   i f   t h e i r   a c c o u n t   s e t u p   f a i l s� ��� l     �?�>�=�?  �>  �=  � ��� l     ���� j   J P�<��< 0 refreshrate refreshRate� m   J M�;�; �   seconds   � �      s e c o n d s�  l     �:�:   C = If a user chooses to upgrade from an Entourage identity then    � z   I f   a   u s e r   c h o o s e s   t o   u p g r a d e   f r o m   a n   E n t o u r a g e   i d e n t i t y   t h e n  l     �9	�9   6 0 he will receive a status update every X seconds   	 �

 `   h e   w i l l   r e c e i v e   a   s t a t u s   u p d a t e   e v e r y   X   s e c o n d s  l     �8�7�6�8  �7  �6    l     �5�5   0 *------------------------------------------    � T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l     �4�4     End server properties    � ,   E n d   s e r v e r   p r o p e r t i e s  l     �3�3   0 *------------------------------------------    � T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l     �2�1�0�2  �1  �0    l     �/ !�/    0 *------------------------------------------   ! �"" T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - #$# l     �.%&�.  % - ' Begin get user name and Mac OS version   & �'' N   B e g i n   g e t   u s e r   n a m e   a n d   M a c   O S   v e r s i o n$ ()( l     �-*+�-  * 0 *------------------------------------------   + �,, T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -) -.- l     �,�+�*�,  �+  �*  . /0/ l     �)12�)  1 W Q User information is pulled from the account settings of the current user account   2 �33 �   U s e r   i n f o r m a t i o n   i s   p u l l e d   f r o m   t h e   a c c o u n t   s e t t i n g s   o f   t h e   c u r r e n t   u s e r   a c c o u n t0 454 l     �(�'�&�(  �'  �&  5 676 l    	8�%�$8 r     	9:9 n     ;<; 1    �#
�# 
sisn< l    =�"�!= I    � ��
�  .sysosigtsirr   ��� null�  �  �"  �!  : o      �� 0 	shortname 	shortName�%  �$  7 >?> l  
 @��@ r   
 ABA n   
 CDC 1    �
� 
silnD l  
 E��E I  
 ���
� .sysosigtsirr   ��� null�  �  �  �  B o      �� 0 fullname fullName�  �  ? FGF l   H��H r    IJI n    KLK 1    �
� 
sisvL l   M��M I   ���
� .sysosigtsirr   ��� null�  �  �  �  J o      �� 0 systemversion systemVersion�  �  G NON l     �
�	��
  �	  �  O PQP l     �RS�  R 0 *------------------------------------------   S �TT T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -Q UVU l     �WX�  W   End get user name   X �YY $   E n d   g e t   u s e r   n a m eV Z[Z l     �\]�  \ 0 *------------------------------------------   ] �^^ T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -[ _`_ l     ����  �  �  ` aba l     �cd�  c 0 *------------------------------------------   d �ee T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -b fgf l     � hi�   h %  Begin email address properties   i �jj >   B e g i n   e m a i l   a d d r e s s   p r o p e r t i e sg klk l     ��mn��  m 0 *------------------------------------------   n �oo T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -l pqp l     ��������  ��  ��  q rsr l     ��tu��  t . ( DSCL lookups for Mac OS X 10.5 and 10.6   u �vv P   D S C L   l o o k u p s   f o r   M a c   O S   X   1 0 . 5   a n d   1 0 . 6s wxw l     ��������  ��  ��  x yzy l  �{����{ Z   �|}~��| F    -� =   %��� o    #���� 40 getemailaddressusingdscl getEMailAddressUsingDSCL� m   # $��
�� boovtrue� A   ( +��� o   ( )���� 0 systemversion systemVersion� m   ) *�� ���  1 0 . 7} k   0 [�� ��� l  0 0��������  ��  ��  � ��� r   0 ;��� I  0 9�����
�� .sysoexecTEXT���     TEXT� b   0 5��� b   0 3��� m   0 1�� ��� d d s c l   " A c t i v e   D i r e c t o r y / A l l   D o m a i n s / "   - r e a d   / U s e r s /� o   1 2���� 0 	shortname 	shortName� m   3 4�� ��� `   E M a i l A d d r e s s   |   a w k   ' B E G I N   { F S = " :   " }   { p r i n t   $ 2 } '��  � o      ���� 0 emailaddress emailAddress� ��� r   < G��� I  < E�����
�� .sysoexecTEXT���     TEXT� b   < A��� b   < ?��� m   < =�� ��� d d s c l   " A c t i v e   D i r e c t o r y / A l l   D o m a i n s / "   - r e a d   / U s e r s /� o   = >���� 0 	shortname 	shortName� m   ? @�� ��� Z   F i r s t N a m e   |   a w k   ' B E G I N   { F S = " :   " }   { p r i n t   $ 2 } '��  � o      ���� 0 	firstname 	firstName� ��� r   H Y��� I  H U�����
�� .sysoexecTEXT���     TEXT� b   H Q��� b   H M��� m   H K�� ��� d d s c l   " A c t i v e   D i r e c t o r y / A l l   D o m a i n s / "   - r e a d   / U s e r s /� o   K L���� 0 	shortname 	shortName� m   M P�� ��� X   L a s t N a m e   |   a w k   ' B E G I N   { F S = " :   " }   { p r i n t   $ 2 } '��  � o      ���� 0 lastname lastName� ��� l  Z Z��������  ��  ��  � ��� l  Z Z������  � 0 * DSCL lookups for Mac OS X 10.7 and higher   � ��� T   D S C L   l o o k u p s   f o r   M a c   O S   X   1 0 . 7   a n d   h i g h e r� ���� l  Z Z��������  ��  ��  ��  ~ ��� F   ^ o��� =  ^ e��� o   ^ c���� 40 getemailaddressusingdscl getEMailAddressUsingDSCL� m   c d��
�� boovtrue� @   h m��� o   h i���� 0 systemversion systemVersion� m   i l�� ���  1 0 . 7� ��� k   r ��� ��� l  r r��������  ��  ��  � ��� l  r r������  � 3 - get the domain's primary NetBIOS domain name   � ��� Z   g e t   t h e   d o m a i n ' s   p r i m a r y   N e t B I O S   d o m a i n   n a m e� ��� l  r r��������  ��  ��  � ��� r   r }��� I  r y�����
�� .sysoexecTEXT���     TEXT� m   r u�� ��� � d s c l   " A c t i v e   D i r e c t o r y / "   - r e a d   /   &   P r i m a r y N T D o m a i n   |   a w k   ' B E G I N   { F S = " :   " }   { p r i n t   $ 2 } '��  � o      ���� 0 netbiosdomain netbiosDomain� ��� l  ~ ~��������  ��  ��  � ��� r   ~ ���� I  ~ ������
�� .sysoexecTEXT���     TEXT� b   ~ ���� b   ~ ���� b   ~ ���� b   ~ ���� m   ~ ��� ��� . d s c l   " A c t i v e   D i r e c t o r y /� o   � ����� 0 
domainname 
domainName� m   � ��� ��� 8 / A l l   D o m a i n s / "   - r e a d   / U s e r s /� o   � ����� 0 	shortname 	shortName� m   � ��� ��� `   E M a i l A d d r e s s   |   a w k   ' B E G I N   { F S = " :   " }   { p r i n t   $ 2 } '��  � o      ���� 0 emailaddress emailAddress� ��� r   � ���� I  � ������
�� .sysoexecTEXT���     TEXT� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ��� . d s c l   " A c t i v e   D i r e c t o r y /� o   � ����� 0 
domainname 
domainName� m   � ��� ��� 8 / A l l   D o m a i n s / "   - r e a d   / U s e r s /� o   � ����� 0 	shortname 	shortName� m   � ��� ��� Z   F i r s t N a m e   |   a w k   ' B E G I N   { F S = " :   " }   { p r i n t   $ 2 } '��  � o      ���� 0 	firstname 	firstName� ��� r   � �   I  � �����
�� .sysoexecTEXT���     TEXT b   � � b   � � b   � � b   � �	
	 m   � � � . d s c l   " A c t i v e   D i r e c t o r y /
 o   � ����� 0 
domainname 
domainName m   � � � 8 / A l l   D o m a i n s / "   - r e a d   / U s e r s / o   � ����� 0 	shortname 	shortName m   � � � X   L a s t N a m e   |   a w k   ' B E G I N   { F S = " :   " }   { p r i n t   $ 2 } '��   o      ���� 0 lastname lastName� �� l  � ���������  ��  ��  ��  �  F   � � =  � � o   � ����� 0 emailformat emailFormat m   � �����  =  � � o   � ����� 0 displayname displayName m   � �����   k   �+  l  � ���������  ��  ��     l  � ���!"��  ! D > first.last@domain.com and full name displays as "Last, First"   " �## |   f i r s t . l a s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "  $%$ l  � ���������  ��  ��  % &'& r   � �()( m   � �** �++  ,  ) n     ,-, 1   � ���
�� 
txdl- 1   � ���
�� 
ascr' ./. r   � �010 n   � �232 4   � ���4
�� 
citm4 m   � ����� 3 o   � ����� 0 fullname fullName1 o      ���� 0 	firstname 	firstName/ 565 r   �787 n   �9:9 4   ���;
�� 
citm; m  ���� : o   � ����� 0 fullname fullName8 o      ���� 0 lastname lastName6 <=< r  >?> m  @@ �AA  ? n     BCB 1  ��
�� 
txdlC 1  ��
�� 
ascr= DED r  )FGF b  'HIH b  !JKJ b  LML b  NON o  ���� 0 	firstname 	firstNameO m  PP �QQ  .M o  ���� 0 lastname lastNameK m   RR �SS  @I o  !&���� 0 
domainname 
domainNameG o      ���� 0 emailaddress emailAddressE T��T l **��������  ��  ��  ��   UVU F  .AWXW = .5YZY o  .3���� 0 emailformat emailFormatZ m  34���� X = 8?[\[ o  8=���� 0 displayname displayName\ m  =>���� V ]^] k  D�__ `a` l DD��������  ��  ��  a bcb l DD��de��  d C = first.last@domain.com and full name displays as "First Last"   e �ff z   f i r s t . l a s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "c ghg l DD��������  ��  ��  h iji r  DOklk m  DGmm �nn   l n     opo 1  JN��
�� 
txdlp 1  GJ��
�� 
ascrj qrq r  PXsts n  PVuvu 4  QV��w
�� 
citmw m  TU���� v o  PQ���� 0 fullname fullNamet o      ���� 0 	firstname 	firstNamer xyx r  Ycz{z n  Y_|}| 4  Z_��~
�� 
citm~ m  ]^���� } o  YZ���� 0 fullname fullName{ o      ���� 0 lastname lastNamey � r  do��� m  dg�� ���  � n     ��� 1  jn��
�� 
txdl� 1  gj��
�� 
ascr� ��� r  p���� b  p���� b  p}��� b  py��� b  pu��� o  pq���� 0 	firstname 	firstName� m  qt�� ���  .� o  ux���� 0 lastname lastName� m  y|�� ���  @� o  }��� 0 
domainname 
domainName� o      �~�~ 0 emailaddress emailAddress� ��}� l ���|�{�z�|  �{  �z  �}  ^ ��� F  ����� = ����� o  ���y�y 0 emailformat emailFormat� m  ���x�x � = ����� o  ���w�w 0 displayname displayName� m  ���v�v � ��� k  ���� ��� l ���u�t�s�u  �t  �s  � ��� l ���r���r  � ? 9 first@domain.com and full name displays as "Last, First"   � ��� r   f i r s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "� ��� l ���q�p�o�q  �p  �o  � ��� r  ����� m  ���� ���  ,  � n     ��� 1  ���n
�n 
txdl� 1  ���m
�m 
ascr� ��� r  ����� n  ����� 4  ���l�
�l 
citm� m  ���k�k � o  ���j�j 0 fullname fullName� o      �i�i 0 	firstname 	firstName� ��� r  ����� n  ����� 4  ���h�
�h 
citm� m  ���g�g � o  ���f�f 0 fullname fullName� o      �e�e 0 lastname lastName� ��� r  ����� m  ���� ���  � n     ��� 1  ���d
�d 
txdl� 1  ���c
�c 
ascr� ��� r  ����� b  ����� b  ����� o  ���b�b 0 	firstname 	firstName� m  ���� ���  @� o  ���a�a 0 
domainname 
domainName� o      �`�` 0 emailaddress emailAddress� ��_� l ���^�]�\�^  �]  �\  �_  � ��� F  ����� = ����� o  ���[�[ 0 emailformat emailFormat� m  ���Z�Z � = ����� o  ���Y�Y 0 displayname displayName� m  ���X�X � ��� k  �/�� ��� l ���W�V�U�W  �V  �U  � ��� l ���T���T  � = 7 first@domain.com if full name displays as "First Last"   � ��� n   f i r s t @ d o m a i n . c o m   i f   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "� ��� l ���S�R�Q�S  �R  �Q  � ��� r  ����� m  ���� ���   � n     ��� 1  ���P
�P 
txdl� 1  ���O
�O 
ascr� ��� r   ��� n   ��� 4  �N�
�N 
citm� m  �M�M � o   �L�L 0 fullname fullName� o      �K�K 0 	firstname 	firstName� ��� r  	��� n  	��� 4  
�J�
�J 
citm� m  �I�I � o  	
�H�H 0 fullname fullName� o      �G�G 0 lastname lastName� � � r   m   �   n      1  �F
�F 
txdl 1  �E
�E 
ascr   r   -	
	 b   + b   % o   !�D�D 0 	firstname 	firstName m  !$ �  @ o  %*�C�C 0 
domainname 
domainName
 o      �B�B 0 emailaddress emailAddress �A l ..�@�?�>�@  �?  �>  �A  �  F  2E = 29 o  27�=�= 0 emailformat emailFormat m  78�<�<  = <C o  <A�;�; 0 displayname displayName m  AB�:�:   k  H�  l HH�9�8�7�9  �8  �7     l HH�6!"�6  ! ? 9 flast@domain.com and full name displays as "Last, First"   " �## r   f l a s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "  $%$ l HH�5�4�3�5  �4  �3  % &'& r  HS()( m  HK** �++  ,  ) n     ,-, 1  NR�2
�2 
txdl- 1  KN�1
�1 
ascr' ./. r  T\010 n  TZ232 4  UZ�04
�0 
citm4 m  XY�/�/ 3 o  TU�.�. 0 fullname fullName1 o      �-�- 0 	firstname 	firstName/ 565 r  ]g787 n  ]c9:9 4  ^c�,;
�, 
citm; m  ab�+�+ : o  ]^�*�* 0 fullname fullName8 o      �)�) 0 lastname lastName6 <=< r  hs>?> m  hk@@ �AA  ? n     BCB 1  nr�(
�( 
txdlC 1  kn�'
�' 
ascr= DED r  t�FGF b  t�HIH b  t�JKJ b  t~LML l tzN�&�%N n  tzOPO 4  uz�$Q
�$ 
cha Q m  xy�#�# P o  tu�"�" 0 	firstname 	firstName�&  �%  M o  z}�!�! 0 lastname lastNameK m  ~�RR �SS  @I o  ��� �  0 
domainname 
domainNameG o      �� 0 emailaddress emailAddressE T�T l ������  �  �  �   UVU F  ��WXW = ��YZY o  ���� 0 emailformat emailFormatZ m  ���� X = ��[\[ o  ���� 0 displayname displayName\ m  ���� V ]^] k  ��__ `a` l ������  �  �  a bcb l ���de�  d > 8 flast@domain.com and full name displays as "First Last"   e �ff p   f l a s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "c ghg l ������  �  �  h iji r  ��klk m  ��mm �nn   l n     opo 1  ���
� 
txdlp 1  ���
� 
ascrj qrq r  ��sts n  ��uvu 4  ���w
� 
citmw m  ���� v o  ���� 0 fullname fullNamet o      �
�
 0 	firstname 	firstNamer xyx r  ��z{z n  ��|}| 4  ���	~
�	 
citm~ m  ���� } o  ���� 0 fullname fullName{ o      �� 0 lastname lastNamey � r  ����� m  ���� ���  � n     ��� 1  ���
� 
txdl� 1  ���
� 
ascr� ��� r  ����� l ������ b  ����� b  ����� b  ����� n  ����� 4  ����
� 
cha � m  ��� �  � o  ������ 0 	firstname 	firstName� o  ������ 0 lastname lastName� m  ���� ���  @� o  ������ 0 
domainname 
domainName�  �  � o      ���� 0 emailaddress emailAddress� ���� l ����������  ��  ��  ��  ^ ��� F  ���� = ����� o  ������ 0 emailformat emailFormat� m  ������ � = ����� o  ������ 0 displayname displayName� m  ������ � ��� k  ?�� ��� l ��������  ��  ��  � ��� l ������  � C = shortName@domain.com and full name displays as "Last, First"   � ��� z   s h o r t N a m e @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "� ��� l ��������  ��  ��  � ��� r  ��� m  �� ���  ,  � n     ��� 1  
��
�� 
txdl� 1  
��
�� 
ascr� ��� r  ��� n  ��� 4  ���
�� 
citm� m  ���� � o  ���� 0 fullname fullName� o      ���� 0 	firstname 	firstName� ��� r  #��� n  ��� 4  ���
�� 
citm� m  ���� � o  ���� 0 fullname fullName� o      ���� 0 lastname lastName� ��� r  $/��� m  $'�� ���  � n     ��� 1  *.��
�� 
txdl� 1  '*��
�� 
ascr� ��� r  0=��� b  0;��� b  05��� o  01���� 0 	shortname 	shortName� m  14�� ���  @� o  5:���� 0 
domainname 
domainName� o      ���� 0 emailaddress emailAddress� ���� l >>��������  ��  ��  ��  � ��� F  BW��� = BK��� o  BG���� 0 emailformat emailFormat� m  GJ���� � = NU��� o  NS���� 0 displayname displayName� m  ST���� � ���� k  Z��� ��� l ZZ��������  ��  ��  � ��� l ZZ������  � B < shortName@domain.com and full name displays as "First Last"   � ��� x   s h o r t N a m e @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "� ��� l ZZ��������  ��  ��  � ��� r  Ze��� m  Z]�� ���   � n     ��� 1  `d��
�� 
txdl� 1  ]`��
�� 
ascr� ��� r  fn��� n  fl��� 4  gl���
�� 
citm� m  jk���� � o  fg���� 0 fullname fullName� o      ���� 0 	firstname 	firstName� ��� r  oy��� n  ou��� 4  pu���
�� 
citm� m  st���� � o  op���� 0 fullname fullName� o      ���� 0 lastname lastName� ��� r  z�   m  z} �   n      1  ����
�� 
txdl 1  }���
�� 
ascr�  r  ��	 b  ��

 b  �� o  ������ 0 	shortname 	shortName m  �� �  @ o  ������ 0 
domainname 
domainName	 o      ���� 0 emailaddress emailAddress �� l ����������  ��  ��  ��  ��  ��  ��  ��  z  l     ��������  ��  ��    l     ����   0 *------------------------------------------    � T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l     ����   #  End email address properties    � :   E n d   e m a i l   a d d r e s s   p r o p e r t i e s  l     �� ��   0 *------------------------------------------     �!! T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "#" l     ��������  ��  ��  # $%$ l     ��&'��  & 0 *------------------------------------------   ' �(( T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -% )*) l     ��+,��  + , & Exchange Server 2007 extended address   , �-- L   E x c h a n g e   S e r v e r   2 0 0 7   e x t e n d e d   a d d r e s s* ./. l     ��01��  0 0 *------------------------------------------   1 �22 T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -/ 343 l     ��������  ��  ��  4 565 l ��7����7 Z  ��89����8 = ��:;: o  ������ >0 extendedexchangeserveraddress ExtendedExchangeServerAddress; m  ����
�� boovtrue9 r  ��<=< b  ��>?> b  ��@A@ o  ������  0 exchangeserver ExchangeServerA m  ��BB �CC  / e x c h a n g e /? o  ������ 0 emailaddress emailAddress= o      ����  0 exchangeserver ExchangeServer��  ��  ��  ��  6 DED l     ��������  ��  ��  E FGF l     ��HI��  H 0 *------------------------------------------   I �JJ T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -G KLK l     ��MN��  M   End get user name   N �OO $   E n d   g e t   u s e r   n a m eL PQP l     ��RS��  R 0 *------------------------------------------   S �TT T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -Q UVU l     ��������  ��  ��  V WXW l     ��YZ��  Y 0 *------------------------------------------   Z �[[ T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -X \]\ l     ��^_��  ^ / ) Check for Entourage identities to import   _ �`` R   C h e c k   f o r   E n t o u r a g e   i d e n t i t i e s   t o   i m p o r t] aba l     ��cd��  c 0 *------------------------------------------   d �ee T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -b fgf l     ��������  ��  ��  g hih l ��j����j r  ��klk I ����mn
�� .earsffdralis        afdrm m  ����
�� afdrcusrn ��o��
�� 
rtypo m  ����
�� 
TEXT��  l o      ���� 0 
homefolder 
homeFolder��  ��  i pqp l ��r����r r  ��sts b  ��uvu o  ������ 0 
homefolder 
homeFolderv m  ��ww �xx h D o c u m e n t s : M i c r o s o f t   U s e r   D a t a : O f f i c e   2 0 0 8   I d e n t i t i e st o      ���� $0 office2008folder Office2008Folder��  ��  q yzy l ��{����{ r  ��|}| b  ��~~ o  ������ 0 
homefolder 
homeFolder m  ���� ��� h D o c u m e n t s : M i c r o s o f t   U s e r   D a t a : O f f i c e   2 0 0 4   I d e n t i t i e s} o      ���� $0 office2004folder Office2004Folder��  ��  z ��� l     ��������  ��  ��  � ��� l ������ O  ���� k  ��� ��� l ���~�}�|�~  �}  �|  � ��� r  ����� J  ���{�{  � o      �z�z $0 officeidentities OfficeIdentities� ��� l ���y�x�w�y  �x  �w  � ��� Z  �I���v�u� = ����� l ����t�s� I ���r��q
�r .coredoexbool        obj � 4  ���p�
�p 
cfol� o  ���o�o $0 office2008folder Office2008Folder�q  �t  �s  � m  ���n
�n boovtrue� k  E�� ��� r  "��� 6 ��� n  ��� 2  
�m
�m 
cfol� 4  
�l�
�l 
cfol� o  	�k�k $0 office2008folder Office2008Folder� H  �� E  ��� 1  �j
�j 
pnam� m  �� ���  B a c k e d   u p� o      �i�i ,0 office2008identities Office2008Identities� ��h� Y  #E��g���f� s  3@��� n  3;��� 4  6;�e�
�e 
cobj� o  9:�d�d 0 identity  � o  36�c�c ,0 office2008identities Office2008Identities� n      ���  ;  >?� o  ;>�b�b $0 officeidentities OfficeIdentities�g 0 identity  � m  &'�a�a � I '.�`��_
�` .corecnte****       ****� o  '*�^�^ ,0 office2008identities Office2008Identities�_  �f  �h  �v  �u  � ��� l JJ�]�\�[�]  �\  �[  � ��� Z  J����Z�Y� = JX��� l JV��X�W� I JV�V��U
�V .coredoexbool        obj � 4  JR�T�
�T 
cfol� o  NQ�S�S $0 office2004folder Office2004Folder�U  �X  �W  � m  VW�R
�R boovtrue� k  [��� ��� r  [{��� 6 [w��� n  [g��� 2  cg�Q
�Q 
cfol� 4  [c�P�
�P 
cfol� o  _b�O�O $0 office2004folder Office2004Folder� H  jv�� E  ju��� 1  ko�N
�N 
pnam� m  pt�� ���  B a c k e d   u p� o      �M�M ,0 office2004identities Office2004Identities� ��L� Y  |���K���J� s  ����� n  ����� 4  ���I�
�I 
cobj� o  ���H�H 0 identity  � o  ���G�G ,0 office2004identities Office2004Identities� n      ���  ;  ��� o  ���F�F $0 officeidentities OfficeIdentities�K 0 identity  � m  ��E�E � I ���D��C
�D .corecnte****       ****� o  ���B�B ,0 office2004identities Office2004Identities�C  �J  �L  �Z  �Y  � ��� l ���A�@�?�A  �@  �?  � ��� r  ����� J  ���>�>  � o      �=�= 0 choiceslist choicesList� ��� l ���<�;�:�<  �;  �:  � ��9� Y  ���8���7� k  ��� ��� r  ����� n  ����� 1  ���6
�6 
pnam� n  ����� 4  ���5�
�5 
cobj� o  ���4�4  0 identitynumber identityNumber� o  ���3�3 $0 officeidentities OfficeIdentities� o      �2�2 0 identityname identityName� ��� r  ����� n  ����� 1  ���1
�1 
asmo� n  ����� 4  ���0�
�0 
file� m  ���� ���  D a t a b a s e� n  ����� 4  ���/�
�/ 
cobj� o  ���.�.  0 identitynumber identityNumber� o  ���-�- $0 officeidentities OfficeIdentities� o      �,�, 40 identitymodificationdate identityModificationDate�    r  �� n  �� 1  ���+
�+ 
shdt o  ���*�* 40 identitymodificationdate identityModificationDate o      �)�) 0 identitydate identityDate  r  �	 c  �

 b  �  b  �� b  �� b  �� o  ���(�(  0 identitynumber identityNumber m  �� �  .   " o  ���'�' 0 identityname identityName m  �� �   "   l a s t   m o d i f i e d   o  ���&�& 0 identitydate identityDate m   �%
�% 
TEXT	 o      �$�$  0 identitychoice identityChoice �# s  	 o  	�"�"  0 identitychoice identityChoice n        ;   o  �!�! 0 choiceslist choicesList�#  �8  0 identitynumber identityNumber� m  ��� �  � I ����
� .corecnte****       **** o  ���� $0 officeidentities OfficeIdentities�  �7  �9  � m  ���                                                                                  MACS  alis    t  Macintosh HD               �C��H+   �g
Finder.app                                                      ��B        ����  	                CoreServices    �D-3      �͒     �g   e   c  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  �  �   l     ����  �  �    !"! l     �#$�  # 0 *------------------------------------------   $ �%% T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -" &'& l     �()�  ( 3 - End check for Entourage identities to import   ) �** Z   E n d   c h e c k   f o r   E n t o u r a g e   i d e n t i t i e s   t o   i m p o r t' +,+ l     �-.�  - 0 *------------------------------------------   . �// T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -, 010 l     ����  �  �  1 232 l     �45�  4 0 *------------------------------------------   5 �66 T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -3 787 l     �9:�  9   Begin account setup   : �;; (   B e g i n   a c c o u n t   s e t u p8 <=< l     �>?�  > 0 *------------------------------------------   ? �@@ T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -= ABA l     ����  �  �  B CDC l E��E r  FGF m  HH �II  N oG o      �� "0 upgraderesponse upgradeResponse�  �  D JKJ l     �
�	��
  �	  �  K LML l  ^N��N Z   ^OP��O ?   )QRQ l  'S��S I  '�T� 
� .corecnte****       ****T o   #����  0 identitychoice identityChoice�   �  �  R m  '(����  P r  ,ZUVU n  ,VWXW 1  RV��
�� 
bhitX l ,RY����Y I ,R��Z[
�� .sysodlogaskr        TEXTZ m  ,/\\ �]] � W o u l d   y o u   l i k e   t o   u p g r a d e   f r o m   E n t o u r a g e   o r   b e g i n   w i t h   a   n e w   e m a i l   d a t a b a s e ?[ ��^_
�� 
btns^ J  2:`` aba m  25cc �dd  N e wb e��e m  58ff �gg  U p g r a d e��  _ ��hi
�� 
dflth J  =Bjj k��k m  =@ll �mm  U p g r a d e��  i ��no
�� 
apprn m  EHpp �qq 2 F o u n d   E n t o u r a g e   D a t a b a s e so ��r��
�� 
dispr m  KL���� ��  ��  ��  V o      ���� "0 upgraderesponse upgradeResponse�  �  �  �  M sts l     ��������  ��  ��  t uvu l _w����w Z  _xy����x = _fz{z o  _b���� "0 upgraderesponse upgradeResponse{ m  be|| �}}  N e wy k  i
~~ � l ii��������  ��  ��  � ��� l ii������  � - ' Configure a brand new Outlook database   � ��� N   C o n f i g u r e   a   b r a n d   n e w   O u t l o o k   d a t a b a s e� ��� l ii��������  ��  ��  � ���� Q  i
���� k  l��� ��� l ll��������  ��  ��  � ��� Z  l�������� = ls��� o  lq���� (0 verifyemailaddress verifyEMailAddress� m  qr��
�� boovtrue� k  v��� ��� r  v���� I v�����
�� .sysodlogaskr        TEXT� m  vy�� ��� b P l e a s e   v e r i f y   t h a t   y o u r   e m a i l   a d d r e s s   i s   c o r r e c t .� ����
�� 
dtxt� o  |}���� 0 emailaddress emailAddress� ����
�� 
disp� m  ������ � ����
�� 
btns� J  ���� ��� m  ���� ���  C a n c e l� ���� m  ���� ���  O K��  � �����
�� 
dflt� J  ���� ���� m  ���� ���  O K��  ��  � o      ���� 0 verifyemail verifyEmail� ���� r  ����� n  ����� 1  ����
�� 
ttxt� o  ������ 0 verifyemail verifyEmail� o      ���� 0 emailaddress emailAddress��  ��  ��  � ��� l ����������  ��  ��  � ��� Z  ��������� = ����� o  ������ *0 verifyserveraddress verifyServerAddress� m  ����
�� boovtrue� k  ���� ��� r  ����� I ������
�� .sysodlogaskr        TEXT� m  ���� ��� p P l e a s e   v e r i f y   t h a t   y o u r   E x c h a n g e   S e r v e r   n a m e   i s   c o r r e c t .� ����
�� 
dtxt� o  ������  0 exchangeserver ExchangeServer� ����
�� 
disp� m  ������ � ����
�� 
btns� J  ���� ��� m  ���� ���  C a n c e l� ���� m  ���� ���  O K��  � �����
�� 
dflt� J  ���� ���� m  ���� ���  O K��  ��  � o      ���� 0 verifyserver verifyServer� ���� r  ����� n  ����� 1  ����
�� 
ttxt� o  ������ 0 verifyserver verifyServer� o      ����  0 exchangeserver ExchangeServer��  ��  ��  � ��� l ����������  ��  ��  � ��� O  ����� k  ���� ��� I �������
�� .miscactvnull��� ��� null��  ��  � ��� r  n��� I j�����
�� .corecrel****      � null��  � ����
�� 
kocl� m  	��
�� 
Eact� �����
�� 
prdt� l 	d������ K  d�� ����
�� 
pnam� b  ��� m  �� ���  M a i l b o x   -  � o  ���� 0 fullname fullName� ����
�� 
unme� o  ���� 0 	shortname 	shortName� ����
�� 
fnam� o  ���� 0 fullname fullName� ����
�� 
emad� o   ���� 0 emailaddress emailAddress� ����
�� 
host� o  #(����  0 exchangeserver ExchangeServer� �� 
�� 
usss  o  +0���� 60 exchangeserverrequiresssl ExchangeServerRequiresSSL ��
�� 
port o  38���� .0 exchangeserversslport ExchangeServerSSLPort ��
�� 
ExLS o  ;@���� "0 directoryserver DirectoryServer ��
�� 
LDAu o  CH���� N0 %directoryserverrequiresauthentication %DirectoryServerRequiresAuthentication ��	
�� 
LDSL o  KP���� 80 directoryserverrequiresssl DirectoryServerRequiresSSL	 ��

�� 
LDMX
 o  SX���� >0 directoryservermaximumresults DirectoryServerMaximumResults ����
�� 
LDSB o  [`���� 60 directoryserversearchbase DirectoryServerSearchBase��  ��  ��  ��  � o      ���� (0 newexchangeaccount newExchangeAccount�  l oo��������  ��  ��    l oo����   e _ The following lines enable Kerberos support if the userKerberos property above is set to true.    � �   T h e   f o l l o w i n g   l i n e s   e n a b l e   K e r b e r o s   s u p p o r t   i f   t h e   u s e r K e r b e r o s   p r o p e r t y   a b o v e   i s   s e t   t o   t r u e .  l oo��������  ��  ��    Z  o����� = ov o  ot���� 0 usekerberos useKerberos m  tu��
�� boovtrue k  y�  r  y�  o  y~���� 0 usekerberos useKerberos  n      !"! 1  ����
�� 
Kerb" o  ~��� (0 newexchangeaccount newExchangeAccount #�~# r  ��$%$ b  ��&'& b  ��()( o  ���}�} 0 	shortname 	shortName) m  ��** �++  @' o  ���|�| 0 kerberosrealm kerberosRealm% n      ,-, 1  ���{
�{ 
ExGI- o  ���z�z (0 newexchangeaccount newExchangeAccount�~  ��  ��   ./. l ���y�x�w�y  �x  �w  / 010 l ���v23�v  2 Q K The Me Contact record is now automatically created with the first account.   3 �44 �   T h e   M e   C o n t a c t   r e c o r d   i s   n o w   a u t o m a t i c a l l y   c r e a t e d   w i t h   t h e   f i r s t   a c c o u n t .1 565 l ���u78�u  7 < 6 Set the first and last name of the Me Contact record.   8 �99 l   S e t   t h e   f i r s t   a n d   l a s t   n a m e   o f   t h e   M e   C o n t a c t   r e c o r d .6 :;: l ���t�s�r�t  �s  �r  ; <=< r  ��>?> o  ���q�q 0 	firstname 	firstName? n      @A@ 1  ���p
�p 
pFrNA 1  ���o
�o 
meCn= BCB r  ��DED o  ���n�n 0 lastname lastNameE n      FGF 1  ���m
�m 
pLsNG 1  ���l
�l 
meCnC HIH r  ��JKJ K  ��LL �kMN
�k 
raddM o  ���j�j 0 emailaddress emailAddressN �iO�h
�i 
typeO m  ���g
�g EATyeWrk�h  K n      PQP 1  ���f
�f 
EmAdQ 1  ���e
�e 
meCnI R�dR l ���c�b�a�c  �b  �a  �d  � m  ��SS                                                                                  OPIM  alis    �  Macintosh HD               �C��H+   ��Microsoft Outlook.app                                           �ɝ�         ����  	                Microsoft Office 2011     �D-3      ɞ5�     �� ]�  GMacintosh HD:Applications: Microsoft Office 2011: Microsoft Outlook.app   ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  8Applications/Microsoft Office 2011/Microsoft Outlook.app  / ��  � T�`T l ���_�^�]�_  �^  �]  �`  � R      �\�[�Z
�\ .ascrerr ****      � ****�[  �Z  � k  �
UU VWV l ���Y�X�W�Y  �X  �W  W XYX I ���VZ[
�V .sysodlogaskr        TEXTZ o  ���U�U 0 errormessage errorMessage[ �T\]
�T 
disp\ m  ���S�S ] �R^_
�R 
btns^ J  ��`` a�Qa m  ��bb �cc  O K�Q  _ �Pd�O
�P 
dfltd J  ��ee f�Nf m  ��gg �hh  O K�N  �O  Y iji R  ��M�Lk
�M .ascrerr ****      � ****�L  k �Kl�J
�K 
errnl m  �I�I���J  j m�Hm l 		�G�F�E�G  �F  �E  �H  ��  ��  ��  ��  ��  v non l     �D�C�B�D  �C  �B  o pqp l 	r�A�@r Z  	st�?�>s = uvu o  �=�= "0 upgraderesponse upgradeResponsev m  ww �xx  U p g r a d et k  	{yy z{z l �<�;�:�<  �;  �:  { |}| l �9~�9  ~ : 4 Import the selected Entourage database into Outlook    ��� h   I m p o r t   t h e   s e l e c t e d   E n t o u r a g e   d a t a b a s e   i n t o   O u t l o o k} ��� l �8�7�6�8  �7  �6  � ��� O  G��� r  F��� c  B��� l >��5�4� I >�3��
�3 .gtqpchltns    @   @ ns  � o  "�2�2 0 choiceslist choicesList� �1��
�1 
prmp� b  %,��� m  %(�� ��� � S e l e c t   t h e   m o s t   r e c e n t   E n t o u r a g e   d a t a b a s e   ( r e c o m m e n d e d )   o r   c h o o s e   a n   o l d e r   E n t o u r a g e   d a t a b a s e   t o   u p g r a d e .� o  (+�0
�0 
ret � �/��
�/ 
okbt� m  /2�� ���  U p g r a d e� �.��-
�. 
appr� m  58�� ��� 0 E n t o u r a g e   D a t a b a s e s   L i s t�-  �5  �4  � m  >A�,
�, 
TEXT� o      �+�+ ,0 identitychoicenumber identityChoiceNumber� m  ��                                                                                  OPIM  alis    �  Macintosh HD               �C��H+   ��Microsoft Outlook.app                                           �ɝ�         ����  	                Microsoft Office 2011     �D-3      ɞ5�     �� ]�  GMacintosh HD:Applications: Microsoft Office 2011: Microsoft Outlook.app   ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  8Applications/Microsoft Office 2011/Microsoft Outlook.app  / ��  � ��� l HH�*�)�(�*  �)  �(  � ��� Z  Hk���'�� = HO��� o  HK�&�& ,0 identitychoicenumber identityChoiceNumber� m  KN�� ��� 
 f a l s e� l R\���� l R\���� R  R\�%�$�
�% .ascrerr ****      � ****�$  � �#��"
�# 
errn� m  VY�!�!���"  �   Cancel the entire script   � ��� 2   C a n c e l   t h e   e n t i r e   s c r i p t� #  if Cancel button was clicked   � ��� :   i f   C a n c e l   b u t t o n   w a s   c l i c k e d�'  � r  _k��� n  _g��� 4 bg� �
�  
cwor� m  ef�� � o  _b�� ,0 identitychoicenumber identityChoiceNumber� o      �� ,0 identitychoicenumber identityChoiceNumber� ��� l ll����  �  �  � ��� r  l~��� c  lz��� n  lv��� 4  ov��
� 
cobj� o  ru�� ,0 identitychoicenumber identityChoiceNumber� o  lo�� $0 officeidentities OfficeIdentities� m  vy�
� 
TEXT� o      ��  0 chosenidentity chosenIdentity� ��� l ����  �  �  � ��� l ����  � � � This begins the actual import. To provide the user some feedback about progress the script will not wait for this process to complete but will continue to the next section to display a pseudo-timer.   � ����   T h i s   b e g i n s   t h e   a c t u a l   i m p o r t .   T o   p r o v i d e   t h e   u s e r   s o m e   f e e d b a c k   a b o u t   p r o g r e s s   t h e   s c r i p t   w i l l   n o t   w a i t   f o r   t h i s   p r o c e s s   t o   c o m p l e t e   b u t   w i l l   c o n t i n u e   t o   t h e   n e x t   s e c t i o n   t o   d i s p l a y   a   p s e u d o - t i m e r .� ��� l ����  �  �  � ��� r  ���� m  ��� ���  � o      �� 0 importresult importResult� ��� l �����
�  �  �
  � ��� P  ����	�� O  ����� k  ���� ��� r  ����� m  ���
� boovtrue� 1  ���
� 
wkOf� ��� t  ����� r  ����� I �����
� .MSOEimidnull���     file� o  ����  0 chosenidentity chosenIdentity�  � o      �� 0 importresult importResult� m  ���� �  � m  ����                                                                                  OPIM  alis    �  Macintosh HD               �C��H+   ��Microsoft Outlook.app                                           �ɝ�         ����  	                Microsoft Office 2011     �D-3      ɞ5�     �� ]�  GMacintosh HD:Applications: Microsoft Office 2011: Microsoft Outlook.app   ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  8Applications/Microsoft Office 2011/Microsoft Outlook.app  / ��  �	  � � ��
�  consrmte��  � ��� l ����������  ��  ��  � ��� l ��������  �
 This section works while the data is getting imported. It takes a snapshot of system events every X seconds as defined by the refreshRate property above and continues working while the "Microsoft Database Daemon" is active (utilizing more than 5% of the CPU).   � ���   T h i s   s e c t i o n   w o r k s   w h i l e   t h e   d a t a   i s   g e t t i n g   i m p o r t e d .   I t   t a k e s   a   s n a p s h o t   o f   s y s t e m   e v e n t s   e v e r y   X   s e c o n d s   a s   d e f i n e d   b y   t h e   r e f r e s h R a t e   p r o p e r t y   a b o v e   a n d   c o n t i n u e s   w o r k i n g   w h i l e   t h e   " M i c r o s o f t   D a t a b a s e   D a e m o n "   i s   a c t i v e   ( u t i l i z i n g   m o r e   t h a n   5 %   o f   t h e   C P U ) .� ��� l ����������  ��  ��  � ��� O  �	y��� k  �	x�� ��� r  ����� n  ����� 1  ����
�� 
idux� 4  �����
�� 
prcs� m  ���� ��� 2 M i c r o s o f t   D a t a b a s e   D a e m o n� o      ���� 
0 pid PID� ��� r  ����� m  ������ 
� o      ���� 0 cpuusage CPUUsage� � � r  �� m  ������   o      ���� 0 
cpucounter 
CPUCounter   l ����������  ��  ��    r  �� l ��	����	 I ��������
�� .misccurdldt    ��� null��  ��  ��  ��   o      ���� 0 	starttime 	startTime 

 V  �	v l �	q k  �	q  l ����������  ��  ��    l ������   b \ Adding a try statement here because sometimes the result of this command is simply garbage.    � �   A d d i n g   a   t r y   s t a t e m e n t   h e r e   b e c a u s e   s o m e t i m e s   t h e   r e s u l t   o f   t h i s   c o m m a n d   i s   s i m p l y   g a r b a g e .  l ����������  ��  ��    r  � \  �  l ��!����! I ��������
�� .misccurdldt    ��� null��  ��  ��  ��    o  ����� 0 	starttime 	startTime o      ���� 0 elapsedtime elapsedTime "#" l ��������  ��  ��  # $%$ l ��&'��  & $  format the time as "00:00:00"   ' �(( <   f o r m a t   t h e   t i m e   a s   " 0 0 : 0 0 : 0 0 "% )*) l ��������  ��  ��  * +,+ r  -.- _  /0/ o  ���� 0 elapsedtime elapsedTime0 1  ��
�� 
hour. o      ���� 0 hrs  , 121 Z  134����3 A  565 o  ���� 0 hrs  6 m  ���� 
4 r  -787 c  )9:9 b  %;<; m  !== �>>  0< o  !$���� 0 hrs  : m  %(��
�� 
TEXT8 o      ���� 0 hrs  ��  ��  2 ?@? r  2=ABA _  29CDC o  25���� 0 elapsedtime elapsedTimeD 1  58��
�� 
min B o      ���� 0 mins  @ EFE Z  >[GH����G A  >EIJI o  >A���� 0 mins  J m  AD���� 
H r  HWKLK c  HSMNM b  HOOPO m  HKQQ �RR  0P o  KN���� 0 mins  N m  OR��
�� 
TEXTL o      ���� 0 mins  ��  ��  F STS r  \gUVU `  \cWXW o  \_���� 0 elapsedtime elapsedTimeX 1  _b��
�� 
min V o      ���� 0 secs  T YZY Z  h�[\����[ A  ho]^] o  hk���� 0 secs  ^ m  kn���� 
\ r  r�_`_ c  r}aba b  rycdc m  ruee �ff  0d o  ux���� 0 secs  b m  y|��
�� 
TEXT` o      ���� 0 secs  ��  ��  Z ghg l ����������  ��  ��  h iji r  ��klk c  ��mnm b  ��opo b  ��qrq b  ��sts b  ��uvu o  ������ 0 hrs  v m  ��ww �xx  :t o  ������ 0 mins  r m  ��yy �zz  :p o  ������ 0 secs  n m  ����
�� 
TEXTl o      ���� 0 formattedtime formattedTimej {|{ l ����������  ��  ��  | }~} Q  �	;�� I ������
�� .sysodlogaskr        TEXT� b  ����� b  ����� b  ����� b  ����� m  ���� ��� � U p g r a d i n g   y o u r   E n t o u r a g e   d a t a b a s e   m a y   t a k e   s e v e r a l   m i n u t e s   d e p e n d i n g   o n   i t s   s i z e .   P l e a s e   b e   p a t i e n t .� o  ����
�� 
ret � o  ����
�� 
ret � m  ���� ���  E l a p s e d   t i m e :  � o  ������ 0 formattedtime formattedTime� ����
�� 
givu� o  ������ 0 refreshrate refreshRate� ����
�� 
btns� J  ���� ���� m  ���� ���  O K��  � ����
�� 
appr� m  ���� ��� : U p g r a d i n g   E n t o u r a g e   D a t a b a s e &� �����
�� 
disp� 4  �����
�� 
alis� l �������� b  ����� l �������� I ������
�� .earsffdralis        afdr� 1  ����
�� 
apps� �����
�� 
rtyp� m  ����
�� 
TEXT��  ��  ��  � m  ���� ��� � M i c r o s o f t   O f f i c e   2 0 1 1 : M i c r o s o f t   O u t l o o k . a p p : C o n t e n t s : R e s o u r c e s : O u t l o o k . i c n s��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � I �	;����
�� .sysodlogaskr        TEXT� b  �	��� b  �	 ��� m  ���� ��� v P r o c e s s   t o o   b u s y   t o   r e a d   a t   t h i s   m o m e n t .   W i l l   t r y   a g a i n   i n  � o  ������ 0 refreshrate refreshRate� m  	 	�� ���    s e c o n d s .� ����
�� 
givu� o  		���� 0 refreshrate refreshRate� ����
�� 
btns� J  		�� ���� m  		�� ���  O K��  � ����
�� 
appr� m  		�� ��� : U p g r a d i n g   E n t o u r a g e   D a t a b a s e &� �����
�� 
disp� 4  		5���
�� 
alis� l 	!	4������ b  	!	4��� l 	!	0������ I 	!	0����
�� .earsffdralis        afdr� 1  	!	&��
�� 
apps� �����
�� 
rtyp� m  	)	,�
� 
TEXT��  ��  ��  � m  	0	3�� ��� � M i c r o s o f t   O f f i c e   2 0 1 1 : M i c r o s o f t   O u t l o o k . a p p : C o n t e n t s : R e s o u r c e s : O u t l o o k . i c n s��  ��  ��  ~ ��� l 	<	<�~�}�|�~  �}  �|  � ��� r  	<	O��� I 	<	K�{��z
�{ .sysoexecTEXT���     TEXT� b  	<	G��� b  	<	C��� m  	<	?�� ���  p s   a u x   |   g r e p  � o  	?	B�y�y 
0 pid PID� m  	C	F�� ��� D   |   g r e p   - v   g r e p   |   a w k   ' { p r i n t   $ 3 } '�z  � o      �x�x 0 cpuusage CPUUsage� ��� l 	P	P�w�v�u�w  �v  �u  � ��� l 	P	P�t���t  � The "Microsoft Database Daemon" may be inactive for several seconds during the import process but the import may not necessarily be done. This section ensures that the daemon has been at less than 5% CPU usage 6 times in a row before considering the import is complete.   � ���   T h e   " M i c r o s o f t   D a t a b a s e   D a e m o n "   m a y   b e   i n a c t i v e   f o r   s e v e r a l   s e c o n d s   d u r i n g   t h e   i m p o r t   p r o c e s s   b u t   t h e   i m p o r t   m a y   n o t   n e c e s s a r i l y   b e   d o n e .   T h i s   s e c t i o n   e n s u r e s   t h a t   t h e   d a e m o n   h a s   b e e n   a t   l e s s   t h a n   5 %   C P U   u s a g e   6   t i m e s   i n   a   r o w   b e f o r e   c o n s i d e r i n g   t h e   i m p o r t   i s   c o m p l e t e .� ��� l 	P	P�s�r�q�s  �r  �q  � ��� Z  	P	o���p�� B  	P	[��� c  	P	W��� o  	P	S�o�o 0 cpuusage CPUUsage� m  	S	V�n
�n 
long� m  	W	Z�m�m � r  	^	g��� [  	^	c��� o  	^	a�l�l 0 
cpucounter 
CPUCounter� m  	a	b�k�k � o      �j�j 0 
cpucounter 
CPUCounter�p  � r  	j	o��� m  	j	k�i�i  � o      �h�h 0 
cpucounter 
CPUCounter� ��g� l 	p	p�f�e�d�f  �e  �d  �g   � | The Microsoft Database Daemon must be utilizing less than 5% of CPU for one minute before the import is considered complete    ��� �   T h e   M i c r o s o f t   D a t a b a s e   D a e m o n   m u s t   b e   u t i l i z i n g   l e s s   t h a n   5 %   o f   C P U   f o r   o n e   m i n u t e   b e f o r e   t h e   i m p o r t   i s   c o n s i d e r e d   c o m p l e t e G  ����� @  ����� c  ����� o  ���c�c 0 cpuusage CPUUsage� m  ���b
�b 
long� m  ���a�a � B  ����� o  ���`�` 0 
cpucounter 
CPUCounter� m  ���_�_  ��^� l 	w	w�]�\�[�]  �\  �[  �^  � m  �����                                                                                  sevs  alis    �  Macintosh HD               �C��H+   �gSystem Events.app                                               Ι��y        ����  	                CoreServices    �D-3      ���     �g   e   c  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��Z� l 	z	z�Y�X�W�Y  �X  �W  �Z  �?  �>  �A  �@  q ��� l     �V�U�T�V  �U  �T  � ��� l     �S	 	�S  	  0 *------------------------------------------   	 �		 T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� 			 l     �R		�R  	   End account setup   	 �		 $   E n d   a c c o u n t   s e t u p	 				 l     �Q	
	�Q  	
 0 *------------------------------------------   	 �		 T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -		 			 l     �P�O�N�P  �O  �N  	 			 l     �M		�M  	 0 *------------------------------------------   	 �		 T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -	 			 l     �L		�L  	   Script clean   	 �		    S c r i p t   c l e a n	 			 l     �K		�K  	 0 *------------------------------------------   	 �		 T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -	 			 l     �J�I�H�J  �I  �H  	 	 	!	  l     �G	"	#�G  	" R L We're done. Set the schedules back to normal and set Outlook to work online   	# �	$	$ �   W e ' r e   d o n e .   S e t   t h e   s c h e d u l e s   b a c k   t o   n o r m a l   a n d   s e t   O u t l o o k   t o   w o r k   o n l i n e	! 	%	&	% l     �F�E�D�F  �E  �D  	& 	'	(	' l 	�	�	)�C�B	) O  	�	�	*	+	* k  	�	�	,	, 	-	.	- r  	�	�	/	0	/ o  	�	��A�A 0 	scheduled  	0 n      	1	2	1 1  	�	��@
�@ 
ScEn	2 4  	�	��?	3
�? 
cSch	3 m  	�	�	4	4 �	5	5 $ S e n d   &   R e c e i v e   A l l	. 	6	7	6 I 	�	��>	8�=
�> .coredelonull���     obj 	8 4  	�	��<	9
�< 
cSch	9 m  	�	�	:	: �	;	;  E x c h a n g e   S e t u p�=  	7 	<	=	< l 	�	��;�:�9�;  �:  �9  	= 	>	?	> I 	�	��8�7�6
�8 .miscactvnull��� ��� null�7  �6  	? 	@	A	@ I 	�	��5	B	C
�5 .sysodlogaskr        TEXT	B m  	�	�	D	D �	E	E 0 O u t l o o k   i s   r e a d y   t o   u s e .	C �4	F	G
�4 
btns	F J  	�	�	H	H 	I�3	I m  	�	�	J	J �	K	K  O K�3  	G �2	L	M
�2 
dflt	L J  	�	�	N	N 	O�1	O m  	�	�	P	P �	Q	Q  O K�1  	M �0	R	S
�0 
disp	R m  	�	��/�/ 	S �.	T�-
�. 
appr	T m  	�	�	U	U �	V	V  S e t u p   C o m p l e t e�-  	A 	W�,	W r  	�	�	X	Y	X m  	�	��+
�+ boovfals	Y 1  	�	��*
�* 
wkOf�,  	+ m  	�	�	Z	Z                                                                                  OPIM  alis    �  Macintosh HD               �C��H+   ��Microsoft Outlook.app                                           �ɝ�         ����  	                Microsoft Office 2011     �D-3      ɞ5�     �� ]�  GMacintosh HD:Applications: Microsoft Office 2011: Microsoft Outlook.app   ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  8Applications/Microsoft Office 2011/Microsoft Outlook.app  / ��  �C  �B  	( 	[	\	[ l     �)�(�'�)  �(  �'  	\ 	]	^	] l     �&	_	`�&  	_ 0 *------------------------------------------   	` �	a	a T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -	^ 	b	c	b l     �%	d	e�%  	d   End script clean   	e �	f	f "   E n d   s c r i p t   c l e a n	c 	g�$	g l     �#	h	i�#  	h 0 *------------------------------------------   	i �	j	j T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -�$       �"	k�! > Y e� �� �����5��������	l�"  	k ���������
�	��������� ������� 0 usekerberos useKerberos� 0 kerberosrealm kerberosRealm� 0 
domainname 
domainName�  0 exchangeserver ExchangeServer� >0 extendedexchangeserveraddress ExtendedExchangeServerAddress� 60 exchangeserverrequiresssl ExchangeServerRequiresSSL� .0 exchangeserversslport ExchangeServerSSLPort� "0 directoryserver DirectoryServer�
 N0 %directoryserverrequiresauthentication %DirectoryServerRequiresAuthentication�	 80 directoryserverrequiresssl DirectoryServerRequiresSSL� 00 directoryserversslport DirectoryServerSSLPort� >0 directoryservermaximumresults DirectoryServerMaximumResults� 60 directoryserversearchbase DirectoryServerSearchBase� 40 getemailaddressusingdscl getEMailAddressUsingDSCL� 0 emailformat emailFormat� 0 displayname displayName� (0 verifyemailaddress verifyEMailAddress� *0 verifyserveraddress verifyServerAddress�  0 	scheduled  �� 0 errormessage errorMessage�� 0 refreshrate refreshRate
�� .aevtoappnull  �   � ****
�! boovfals
�  boovfals
� boovtrue��
� boovtrue
� boovfals����
� boovfals� � 
� boovfals
� boovfals
� boovfals� 	l ��	m����	n	o��
�� .aevtoappnull  �   � ****	m k    	�	p	p 6	q	q >	r	r F	s	s y	t	t 5	u	u h	v	v p	w	w y	x	x �	y	y C	z	z L	{	{ u	|	| p	}	} 	'����  ��  ��  	n ������ 0 identity  ��  0 identitynumber identityNumber	o ������������������������������������������*������@PRm�������*@��Rm��������B����������w�����������	~�����������������������������H��\��cf��l��p��������|����������������S���������������������������������������*��������������������bg������w��������������������������������������������������������=����Q��ewy����������������������	4��	:�	D	J	P	U
�� .sysosigtsirr   ��� null
�� 
sisn�� 0 	shortname 	shortName
�� 
siln�� 0 fullname fullName
�� 
sisv�� 0 systemversion systemVersion
�� 
bool
�� .sysoexecTEXT���     TEXT�� 0 emailaddress emailAddress�� 0 	firstname 	firstName�� 0 lastname lastName�� 0 netbiosdomain netbiosDomain
�� 
ascr
�� 
txdl
�� 
citm
�� 
cha �� 
�� afdrcusr
�� 
rtyp
�� 
TEXT
�� .earsffdralis        afdr�� 0 
homefolder 
homeFolder�� $0 office2008folder Office2008Folder�� $0 office2004folder Office2004Folder�� $0 officeidentities OfficeIdentities
�� 
cfol
�� .coredoexbool        obj 	~  
�� 
pnam�� ,0 office2008identities Office2008Identities
�� .corecnte****       ****
�� 
cobj�� ,0 office2004identities Office2004Identities�� 0 choiceslist choicesList�� 0 identityname identityName
�� 
file
�� 
asmo�� 40 identitymodificationdate identityModificationDate
�� 
shdt�� 0 identitydate identityDate��  0 identitychoice identityChoice�� "0 upgraderesponse upgradeResponse
�� 
btns
�� 
dflt
�� 
appr
�� 
disp�� 
�� .sysodlogaskr        TEXT
�� 
bhit
�� 
dtxt�� 0 verifyemail verifyEmail
�� 
ttxt�� 0 verifyserver verifyServer
�� .miscactvnull��� ��� null
�� 
kocl
�� 
Eact
�� 
prdt
�� 
unme
�� 
fnam
�� 
emad
�� 
host
�� 
usss
�� 
port
�� 
ExLS
�� 
LDAu
�� 
LDSL
�� 
LDMX
�� 
LDSB�� 
�� .corecrel****      � null�� (0 newexchangeaccount newExchangeAccount
�� 
Kerb
�� 
ExGI
�� 
meCn
�� 
pFrN
�� 
pLsN
�� 
radd
�� 
type
�� EATyeWrk
�� 
EmAd��  ��  �� 
�� 
errn����
�� 
prmp
�� 
ret 
�� 
okbt
�� .gtqpchltns    @   @ ns  �� ,0 identitychoicenumber identityChoiceNumber
�� 
cwor��  0 chosenidentity chosenIdentity�� 0 importresult importResult
�� 
wkOf�� 
�� .MSOEimidnull���     file
�� 
prcs
�� 
idux�� 
0 pid PID�� 
�� 0 cpuusage CPUUsage�� 0 
cpucounter 
CPUCounter
�� .misccurdldt    ��� null�� 0 	starttime 	startTime
�� 
long�� �� 0 elapsedtime elapsedTime
�� 
hour�� 0 hrs  
�� 
min �� 0 mins  �� 0 secs  �� 0 formattedtime formattedTime
�� 
givu
�� 
alis
�� 
apps
�� 
cSch
�� 
ScEn
� .coredelonull���     obj ��	�*j  �,E�O*j  �,E�O*j  �,E�Ob  e 	 ���& 0��%�%j E�O��%�%j E�Oa �%a %j E` OPY=b  e 	 	�a �& ba j E` Oa b  %a %�%a %j E�Oa b  %a %�%a %j E�Oa b  %a %�%a %j E` OPY�b  k 	 b  k �& Ha _  a !,FO�a "l/E�O�a "k/E` Oa #_  a !,FO�a $%_ %a %%b  %E�OPYmb  k 	 b  l �& Ha &_  a !,FO�a "k/E�O�a "l/E` Oa '_  a !,FO�a (%_ %a )%b  %E�OPYb  l 	 b  k �& @a *_  a !,FO�a "l/E�O�a "k/E` Oa +_  a !,FO�a ,%b  %E�OPY�b  l 	 b  l �& @a -_  a !,FO�a "k/E�O�a "l/E` Oa ._  a !,FO�a /%b  %E�OPYib  m 	 b  k �& Ia 0_  a !,FO�a "l/E�O�a "k/E` Oa 1_  a !,FO�a 2k/_ %a 3%b  %E�OPYb  m 	 b  l �& Ia 4_  a !,FO�a "k/E�O�a "l/E` Oa 5_  a !,FO�a 2k/_ %a 6%b  %E�OPY �b  a 7 	 b  k �& @a 8_  a !,FO�a "l/E�O�a "k/E` Oa 9_  a !,FO�a :%b  %E�OPY Yb  a 7 	 b  l �& @a ;_  a !,FO�a "k/E�O�a "l/E` Oa <_  a !,FO�a =%b  %E�OPY hOb  e  b  a >%�%Ec  Y hOa ?a @a Al BE` CO_ Ca D%E` EO_ Ca F%E` GOa H.jvE` IO*a J_ E/j Ke  H*a J_ E/a J-a L[a M,\Za N@C1E` OO !k_ Oj Pkh  _ Oa Q�/_ I6G[OY��Y hO*a J_ G/j Ke  H*a J_ G/a J-a L[a M,\Za R@C1E` SO !k_ Sj Pkh  _ Sa Q�/_ I6G[OY��Y hOjvE` TO kk_ Ij Pkh _ Ia Q�/a M,E` UO_ Ia Q�/a Va W/a X,E` YO_ Ya Z,E` [O�a \%_ U%a ]%_ [%a A&E` ^O_ ^_ T6G[OY��UOa _E` `O_ ^j Pj 3a aa ba ca dlva ea fkva ga ha ika j ka l,E` `Y hO_ `a m �ob  e  7a na o�a ila ba pa qlva ea rkva j kE` sO_ sa t,E�Y hOb  e  ?a ua ob  a ila ba va wlva ea xkva j kE` yO_ ya t,Ec  Y hOa z �*j {O*a |a }a ~a Ma �%a ��a ��a ��a �b  a �b  a �b  a �b  a �b  a �b  	a �b  a �b  a �a 7 �E` �Ob   e  &b   _ �a �,FO�a �%b  %_ �a �,FY hO�*a �,a �,FO_ *a �,a �,FOa ��a �a �a 7*a �,a �,FOPUOPW 3X � �b  a ila ba �kva ea �kva � kO)a �a �lhOPY hO_ `a � ga z )_ Ta �a �_ �%a �a �a ga �a � �a A&E` �UO_ �a �  )a �a �lhY _ �a �k/E` �O_ Ia Q_ �/a A&E` �Oa �E` �Oga � "a z e*a �,FOa �n_ �j �E` �oUVOa ��*a �a �/a �,E` �Oa �E` �OjE` �O*j �E` �O�h_ �a �&a �
 _ �a ��&*j �_ �E` �O_ �_ �"E` �O_ �a � a �_ �%a A&E` �Y hO_ �_ �"E` �O_ �a � a �_ �%a A&E` �Y hO_ �_ �#E` �O_ �a � a �_ �%a A&E` �Y hO_ �a �%_ �%a �%_ �%a A&E` �O Oa �_ �%_ �%a �%_ �%a �b  a ba �kva ga �a i*a �*a �,a @a Al Ba �%/a j kW KX � �a �b  %a �%a �b  a ba �kva ga �a i*a �*a �,a @a Al Ba �%/a j kOa �_ �%a �%j E` �O_ �a �&a � _ �kE` �Y jE` �OP[OY�nOPUOPY hOa z Sb  *a �a �/a �,FO*a �a �/j �O*j {Oa �a ba �kva ea �kva ika ga �a j kOf*a �,FUascr  ��ޭ