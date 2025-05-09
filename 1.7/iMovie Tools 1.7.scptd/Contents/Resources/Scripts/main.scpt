JsOsaDAS1.001.00bplist00�Vscripto) # ! / u s r / b i n / e n v   o s a s c r i p t   - l   J a v a S c r i p t 
 
 O b j C . i m p o r t ( ' A p p K i t ' ) ; 
 O b j C . i m p o r t ( ' F o u n d a t i o n ' ) ; 
 O b j C . i m p o r t ( ' s t d l i b ' ) ; 
 
 / /   G l o b a l   v a r s 
 l e t   l a b e l ; 
 l e t   p r o j e c t P o p u p ; 
 c o n s t   h o m e D i r   =   O b j C . u n w r a p ( $ . N S H o m e D i r e c t o r y ( ) ) ; 
 c o n s t   i m o v i e P a t h   =   ` $ { h o m e D i r } / M o v i e s / i M o v i e   L i b r a r y . i m o v i e l i b r a r y / ` ; 
 
 / /   S a f e   s h e l l   e x e c u t i o n   w r a p p e r 
 f u n c t i o n   s a f e S h e l l ( c m d )   { 
     t r y   { 
         c o n s t   t a s k   =   $ . N S T a s k . a l l o c . i n i t ; 
         c o n s t   p i p e   =   $ . N S P i p e . p i p e ; 
         c o n s t   o u t   =   p i p e . f i l e H a n d l e F o r R e a d i n g ; 
         t a s k . s e t L a u n c h P a t h ( " / b i n / z s h " ) ; 
         t a s k . s e t A r g u m e n t s ( [ " - c " ,   c m d ] ) ; 
         t a s k . s e t S t a n d a r d O u t p u t ( p i p e ) ; 
         t a s k . l a u n c h ; 
         t a s k . w a i t U n t i l E x i t ; 
         c o n s t   d a t a   =   o u t . r e a d D a t a T o E n d O f F i l e ; 
         c o n s t   s t r   =   $ . N S S t r i n g . a l l o c . i n i t W i t h D a t a E n c o d i n g ( d a t a ,   $ . N S U T F 8 S t r i n g E n c o d i n g ) ; 
         r e t u r n   O b j C . u n w r a p ( s t r ) . t r i m ( ) ; 
     }   c a t c h   ( e )   { 
         c o n s o l e . l o g ( " S h e l l   e r r o r :   "   +   e ) ; 
         r e t u r n   " E r r o r :   "   +   e ; 
     } 
 } 
 
 f u n c t i o n   q u i t A p p ( )   { 
     $ . N S A p p . t e r m i n a t e ( n u l l ) ; 
 } 
 
 
 
 / /   S e t u p   p r o p e r   a p p l i c a t i o n   q u i t   f u n c t i o n a l i t y 
 f u n c t i o n   s e t u p A p p T e r m i n a t i o n ( )   { 
     / /   S e t   u p   h a n d l e r s   f o r   a p p l i c a t i o n   t e r m i n a t i o n 
     c o n s t   a p p D e l e g a t e   =   $ . N S O b j e c t . a l l o c . i n i t ; 
     
     / /   C r e a t e   r e s p o n d   t o   a p p l i c a t i o n S h o u l d T e r m i n a t e   s e l e c t o r 
     a p p D e l e g a t e . a p p l i c a t i o n S h o u l d T e r m i n a t e   =   f u n c t i o n ( s e n d e r )   { 
         t r y   { 
             / /   C l e a n   u p   a n y   r e s o u r c e s   h e r e   i f   n e e d e d 
             r e t u r n   $ . N S T e r m i n a t e N o w ; 
         }   c a t c h   ( e )   { 
             c o n s o l e . l o g ( " E r r o r   d u r i n g   a p p   t e r m i n a t i o n :   "   +   e ) ; 
             r e t u r n   $ . N S T e r m i n a t e N o w ; 
         } 
     } ; 
     
     $ . N S A p p . s e t D e l e g a t e ( a p p D e l e g a t e ) ; 
     
     / /   A d d   s t a n d a r d   C o m m a n d - Q   k e y b o a r d   s h o r t c u t 
     c o n s t   q u i t M e n u I t e m   =   $ . N S M e n u I t e m . a l l o c . i n i t W i t h T i t l e A c t i o n K e y E q u i v a l e n t ( 
         " Q u i t   i M o v i e   T o o l s " ,   " t e r m i n a t e : " ,   " q " 
     ) ; 
     
     c o n s t   m a i n M e n u   =   $ . N S M e n u . a l l o c . i n i t ; 
     c o n s t   a p p M e n u   =   $ . N S M e n u . a l l o c . i n i t ; 
     c o n s t   a p p M e n u I t e m   =   $ . N S M e n u I t e m . a l l o c . i n i t ; 
     
     a p p M e n u I t e m . s e t S u b m e n u ( a p p M e n u ) ; 
     m a i n M e n u . a d d I t e m ( a p p M e n u I t e m ) ; 
     a p p M e n u . a d d I t e m ( q u i t M e n u I t e m ) ; 
     
     $ . N S A p p . s e t M a i n M e n u ( m a i n M e n u ) ; 
 } 
 
 
 
 
 
 / /   L o a d   p r o j e c t s   f u n c t i o n 
 f u n c t i o n   l o a d P r o j e c t s ( )   { 
     t r y   { 
         c o n s t   f i n d C m d   =   ` f i n d   " $ { i m o v i e P a t h } "   - d e p t h   1   - t y p e   d   !   - n a m e   " . * "   !   - n a m e   " _ _ T e m p "   - e x e c   b a s e n a m e   { }   \ \ ; ` ; 
         c o n s t   f o l d e r s   =   s a f e S h e l l ( f i n d C m d ) . s p l i t ( " \ n " ) . f i l t e r ( B o o l e a n ) ; 
 
         / /   C l e a r   t h e   p o p u p   m e n u   -   A L T E R N A T I V E   A P P R O A C H 
         w h i l e   ( p r o j e c t P o p u p . n u m b e r O f I t e m s   >   0 )   { 
             p r o j e c t P o p u p . r e m o v e I t e m A t I n d e x ( 0 ) ; 
         } 
 
         i f   ( f o l d e r s . l e n g t h   = = =   0 )   { 
             p r o j e c t P o p u p . a d d I t e m W i t h T i t l e ( " N o   p r o j e c t s   f o u n d " ) ; 
             p r o j e c t P o p u p . s e t E n a b l e d ( f a l s e ) ; 
             r e t u r n   f a l s e ; 
         }   e l s e   { 
             f o l d e r s . f o r E a c h ( f o l d e r   = >   { 
                 p r o j e c t P o p u p . a d d I t e m W i t h T i t l e ( f o l d e r ) ; 
             } ) ; 
             p r o j e c t P o p u p . s e t E n a b l e d ( t r u e ) ; 
             r e t u r n   t r u e ; 
         } 
     }   c a t c h   ( e )   { 
         c o n s o l e . l o g ( " E r r o r   l o a d i n g   p r o j e c t s :   "   +   e ) ; 
         / /   C l e a r   a n d   a d d   e r r o r   i t e m 
         w h i l e   ( p r o j e c t P o p u p . n u m b e r O f I t e m s   >   0 )   { 
             p r o j e c t P o p u p . r e m o v e I t e m A t I n d e x ( 0 ) ; 
         } 
         p r o j e c t P o p u p . a d d I t e m W i t h T i t l e ( " E r r o r   l o a d i n g   p r o j e c t s " ) ; 
         p r o j e c t P o p u p . s e t E n a b l e d ( f a l s e ) ; 
         r e t u r n   f a l s e ; 
     } 
 } 
 / /   R e g i s t e r   w i n d o w   d e l e g a t e 
 O b j C . r e g i s t e r S u b c l a s s ( { 
     n a m e :   ' W i n d o w D e l e g a t e ' , 
     s u p e r c l a s s :   ' N S O b j e c t ' , 
     p r o t o c o l s :   [ ' N S W i n d o w D e l e g a t e ' ] , 
     m e t h o d s :   { 
         ' w i n d o w W i l l C l o s e : ' :   { 
             t y p e s :   [ ' v o i d ' ,   [ ' i d ' ] ] , 
             i m p l e m e n t a t i o n :   f u n c t i o n   ( )   { 
 	         q u i t A p p ( ) 
             } 
         } 
     } 
 } ) ; 
 
 / /   A c t i o n   h a n d l e r   c l a s s 
 O b j C . r e g i s t e r S u b c l a s s ( { 
     n a m e :   ' B u t t o n A c t i o n H a n d l e r ' , 
     s u p e r c l a s s :   ' N S O b j e c t ' , 
     p r o t o c o l s :   [ ] , 
     m e t h o d s :   { 
         ' r e f r e s h P r o j e c t s : ' :   { 
             t y p e s :   [ ' v o i d ' ,   [ ' i d ' ] ] , 
             i m p l e m e n t a t i o n :   f u n c t i o n   ( )   { 
                 t r y   { 
                     i f   ( l o a d P r o j e c t s ( ) )   { 
                         l a b e l . s e t S t r i n g V a l u e ( " P r o j e c t   l i s t   r e f r e s h e d . " ) ; 
                     }   e l s e   { 
                         l a b e l . s e t S t r i n g V a l u e ( " N o   p r o j e c t s   f o u n d . " ) ; 
                     } 
                 }   c a t c h   ( e )   { 
                     l a b e l . s e t S t r i n g V a l u e ( " E r r o r   r e f r e s h i n g   p r o j e c t s :   "   +   e ) ; 
                 } 
             } 
         } , 
         ' i m p o r t Z i p : ' :   { 
             t y p e s :   [ ' v o i d ' ,   [ ' i d ' ] ] , 
             i m p l e m e n t a t i o n :   f u n c t i o n   ( )   { 
                 t r y   { 
                     c o n s t   p a n e l   =   $ . N S O p e n P a n e l . o p e n P a n e l ; 
                     p a n e l . s e t C a n C h o o s e F i l e s ( t r u e ) ; 
                     p a n e l . s e t A l l o w e d F i l e T y p e s ( [ " z i p " ] ) ; 
 
                     i f   ( p a n e l . r u n M o d a l   = = =   $ . N S M o d a l R e s p o n s e O K )   { 
                         c o n s t   f i l e U R L   =   p a n e l . U R L s . o b j e c t A t I n d e x ( 0 ) ; 
                         c o n s t   f i l e P a t h   =   O b j C . u n w r a p ( f i l e U R L . p a t h ) ; 
                         
                         c o n s t   r e s u l t   =   s a f e S h e l l ( ` u n z i p   - o   " $ { f i l e P a t h } "   - d   " $ { i m o v i e P a t h } " ` ) ; 
                         l a b e l . s e t S t r i n g V a l u e ( " Z I P   i m p o r t e d   t o   y o u r   i M o v i e   L i b r a r y . " ) ; 
                         l o a d P r o j e c t s ( ) ; 
                     } 
                 }   c a t c h   ( e )   { 
                     l a b e l . s e t S t r i n g V a l u e ( " E r r o r   i m p o r t i n g   Z I P :   "   +   e ) ; 
                 } 
             } 
         } , 
         ' e x p o r t M e d i a : ' :   { 
             t y p e s :   [ ' v o i d ' ,   [ ' i d ' ] ] , 
             i m p l e m e n t a t i o n :   f u n c t i o n   ( )   { 
                 t r y   { 
                     i f   ( p r o j e c t P o p u p . n u m b e r O f I t e m s   = = =   0   | |   ! p r o j e c t P o p u p . i s E n a b l e d )   { 
                         l a b e l . s e t S t r i n g V a l u e ( " N o   p r o j e c t s   a v a i l a b l e . " ) ; 
                         r e t u r n ; 
                     } 
 
                     c o n s t   s e l e c t e d P r o j e c t   =   O b j C . u n w r a p ( p r o j e c t P o p u p . t i t l e O f S e l e c t e d I t e m ) ; 
                     c o n s t   p r o j e c t P a t h   =   ` $ { i m o v i e P a t h } $ { s e l e c t e d P r o j e c t } ` ; 
 
                     c o n s t   m e d i a F i l e s   =   s a f e S h e l l ( ` f i n d   " $ { p r o j e c t P a t h } "   - t y p e   f   \ \ (   - i n a m e   " * . m p 4 "   - o   - i n a m e   " * . m o v "   - o   - i n a m e   " * . m 4 v "   \ \ )   - e x e c   b a s e n a m e   { }   \ \ ; ` ) 
                         . s p l i t ( " \ n " ) . f i l t e r ( B o o l e a n ) ; 
 
                     i f   ( m e d i a F i l e s . l e n g t h   = = =   0 )   { 
                         l a b e l . s e t S t r i n g V a l u e ( " N o   m e d i a   f i l e s   f o u n d   i n   t h i s   p r o j e c t . " ) ; 
                         r e t u r n ; 
                     } 
 
                     c o n s t   e x p o r t P a n e l   =   $ . N S O p e n P a n e l . o p e n P a n e l ; 
                     e x p o r t P a n e l . s e t C a n C h o o s e F i l e s ( f a l s e ) ; 
                     e x p o r t P a n e l . s e t C a n C h o o s e D i r e c t o r i e s ( t r u e ) ; 
 
                     i f   ( e x p o r t P a n e l . r u n M o d a l   = = =   $ . N S M o d a l R e s p o n s e O K )   { 
                         c o n s t   e x p o r t P a t h   =   O b j C . u n w r a p ( e x p o r t P a n e l . U R L s . o b j e c t A t I n d e x ( 0 ) . p a t h ) ; 
 
                         m e d i a F i l e s . f o r E a c h ( n a m e   = >   { 
                             c o n s t   f i n d F i l e C m d   =   ` f i n d   " $ { p r o j e c t P a t h } "   - t y p e   f   - n a m e   " $ { n a m e } "   |   h e a d   - n   1 ` ; 
                             c o n s t   f i l e P a t h   =   s a f e S h e l l ( f i n d F i l e C m d ) ; 
                             i f   ( f i l e P a t h   & &   ! f i l e P a t h . s t a r t s W i t h ( " E r r o r " ) )   { 
                                 s a f e S h e l l ( ` c p   " $ { f i l e P a t h } "   " $ { e x p o r t P a t h } / " ` ) ; 
                             } 
                         } ) ; 
 
                         l a b e l . s e t S t r i n g V a l u e ( ` M e d i a   f r o m   $ { s e l e c t e d P r o j e c t }   e x p o r t e d   s u c c e s s f u l l y . ` ) ; 
                     } 
                 }   c a t c h   ( e )   { 
                     l a b e l . s e t S t r i n g V a l u e ( " E r r o r   e x p o r t i n g   m e d i a :   "   +   e ) ; 
                 } 
             } 
         } , 
         ' e x p o r t Z i p : ' :   { 
             t y p e s :   [ ' v o i d ' ,   [ ' i d ' ] ] , 
             i m p l e m e n t a t i o n :   f u n c t i o n   ( )   { 
                 t r y   { 
                     i f   ( p r o j e c t P o p u p . n u m b e r O f I t e m s   = = =   0   | |   ! p r o j e c t P o p u p . i s E n a b l e d )   { 
                         l a b e l . s e t S t r i n g V a l u e ( " N o   p r o j e c t s   a v a i l a b l e . " ) ; 
                         r e t u r n ; 
                     } 
 
                     c o n s t   s e l e c t e d P r o j e c t   =   O b j C . u n w r a p ( p r o j e c t P o p u p . t i t l e O f S e l e c t e d I t e m ) ; 
                     c o n s t   e x p o r t P a n e l   =   $ . N S O p e n P a n e l . o p e n P a n e l ; 
                     e x p o r t P a n e l . s e t C a n C h o o s e F i l e s ( f a l s e ) ; 
                     e x p o r t P a n e l . s e t C a n C h o o s e D i r e c t o r i e s ( t r u e ) ; 
 
                     i f   ( e x p o r t P a n e l . r u n M o d a l   = = =   $ . N S M o d a l R e s p o n s e O K )   { 
                         c o n s t   e x p o r t P a t h   =   O b j C . u n w r a p ( e x p o r t P a n e l . U R L s . o b j e c t A t I n d e x ( 0 ) . p a t h ) ; 
                         c o n s t   z i p N a m e   =   ` $ { s e l e c t e d P r o j e c t } . z i p ` ; 
 
                         s a f e S h e l l ( ` c d   " $ { i m o v i e P a t h } "   & &   z i p   - r   " $ { e x p o r t P a t h } / $ { z i p N a m e } "   " $ { s e l e c t e d P r o j e c t } " ` ) ; 
                         l a b e l . s e t S t r i n g V a l u e ( ` P r o j e c t   $ { s e l e c t e d P r o j e c t }   z i p p e d   a s :   $ { z i p N a m e } ` ) ; 
                     } 
                 }   c a t c h   ( e )   { 
                     l a b e l . s e t S t r i n g V a l u e ( " E r r o r   e x p o r t i n g   Z I P :   "   +   e ) ; 
                 } 
             } 
         } 
     } 
 } ) ; 
 
 / /   M a i n   a p p   l o g i c 
 f u n c t i o n   r u n A p p ( )   { 
     c o n s t   a p p   =   $ . N S A p p l i c a t i o n . s h a r e d A p p l i c a t i o n ; 
     s e t u p A p p T e r m i n a t i o n ( ) 
 
     c o n s t   w i n d o w H e i g h t   =   1 7 5 ; 
     c o n s t   w i n d o w   =   $ . N S W i n d o w . a l l o c . i n i t W i t h C o n t e n t R e c t S t y l e M a s k B a c k i n g D e f e r ( 
         $ . N S M a k e R e c t ( 0 ,   0 ,   5 0 0 ,   w i n d o w H e i g h t ) , 
         $ . N S W i n d o w S t y l e M a s k T i t l e d   |   $ . N S W i n d o w S t y l e M a s k C l o s a b l e   |   $ . N S W i n d o w S t y l e M a s k M i n i a t u r i z a b l e , 
         $ . N S B a c k i n g S t o r e B u f f e r e d , 
         f a l s e 
     ) ; 
 
     w i n d o w . s e t T i t l e ( " i M o v i e   M a n a g e r " ) ; 
     w i n d o w . c e n t e r ; 
 
     / /   S e t   w i n d o w   d e l e g a t e 
     c o n s t   w i n d o w D e l e g a t e   =   $ . W i n d o w D e l e g a t e . a l l o c . i n i t ; 
     w i n d o w . s e t D e l e g a t e ( w i n d o w D e l e g a t e ) ; 
 
     c o n s t   c o n t e n t V i e w   =   w i n d o w . c o n t e n t V i e w ; 
 
     / /   L a b e l   f o r   i n s t r u c t i o n s 
     l a b e l   =   $ . N S T e x t F i e l d . a l l o c . i n i t W i t h F r a m e ( $ . N S M a k e R e c t ( 2 0 ,   w i n d o w H e i g h t   -   5 0 ,   4 6 0 ,   2 4 ) ) ; 
     l a b e l . s e t S t r i n g V a l u e ( " W h a t   w o u l d   y o u   l i k e   t o   d o ? " ) ; 
     l a b e l . s e t B e z e l e d ( f a l s e ) ; 
     l a b e l . s e t D r a w s B a c k g r o u n d ( f a l s e ) ; 
     l a b e l . s e t E d i t a b l e ( f a l s e ) ; 
     l a b e l . s e t S e l e c t a b l e ( f a l s e ) ; 
     c o n t e n t V i e w . a d d S u b v i e w ( l a b e l ) ; 
 
     / /   P r o j e c t   s e l e c t i o n   l a b e l 
     c o n s t   p r o j e c t L a b e l   =   $ . N S T e x t F i e l d . a l l o c . i n i t W i t h F r a m e ( $ . N S M a k e R e c t ( 2 0 ,   w i n d o w H e i g h t   -   9 0 ,   1 5 0 ,   2 4 ) ) ; 
     p r o j e c t L a b e l . s e t S t r i n g V a l u e ( " S e l e c t   P r o j e c t : " ) ; 
     p r o j e c t L a b e l . s e t B e z e l e d ( f a l s e ) ; 
     p r o j e c t L a b e l . s e t D r a w s B a c k g r o u n d ( f a l s e ) ; 
     p r o j e c t L a b e l . s e t E d i t a b l e ( f a l s e ) ; 
     p r o j e c t L a b e l . s e t S e l e c t a b l e ( f a l s e ) ; 
     c o n t e n t V i e w . a d d S u b v i e w ( p r o j e c t L a b e l ) ; 
 
     / /   P r o j e c t   d r o p d o w n 
     p r o j e c t P o p u p   =   $ . N S P o p U p B u t t o n . a l l o c . i n i t W i t h F r a m e ( $ . N S M a k e R e c t ( 1 7 0 ,   w i n d o w H e i g h t   -   9 0 ,   2 3 0 ,   2 4 ) ) ; 
     c o n t e n t V i e w . a d d S u b v i e w ( p r o j e c t P o p u p ) ; 
 
     / /   B u t t o n   a c t i o n   h a n d l e r 
     c o n s t   a c t i o n H a n d l e r   =   $ . B u t t o n A c t i o n H a n d l e r . a l l o c . i n i t ; 
     
     / /   R e f r e s h   b u t t o n 
     c o n s t   r e f r e s h B u t t o n   =   $ . N S B u t t o n . a l l o c . i n i t W i t h F r a m e ( $ . N S M a k e R e c t ( 4 1 0 ,   w i n d o w H e i g h t   -   9 0 ,   6 0 ,   2 4 ) ) ; 
     r e f r e s h B u t t o n . s e t T i t l e ( "'� " ) ; 
     r e f r e s h B u t t o n . s e t B e z e l S t y l e ( $ . N S B e z e l S t y l e R o u n d e d ) ; 
     r e f r e s h B u t t o n . s e t T a r g e t ( a c t i o n H a n d l e r ) ; 
     r e f r e s h B u t t o n . s e t A c t i o n ( " r e f r e s h P r o j e c t s : " ) ; 
     c o n t e n t V i e w . a d d S u b v i e w ( r e f r e s h B u t t o n ) ; 
 
     / /   C e n t e r e d   a c t i o n   b u t t o n s 
     c o n s t   b u t t o n Y   =   w i n d o w H e i g h t   -   1 4 0 ; 
     c o n s t   b u t t o n W i d t h   =   1 2 0 ; 
     c o n s t   s p a c i n g   =   2 0 ; 
     c o n s t   s t a r t X   =   ( 5 0 0   -   ( b u t t o n W i d t h   *   3   +   s p a c i n g   *   2 ) )   /   2 ; 
 
     c o n s t   i m p o r t B u t t o n   =   $ . N S B u t t o n . a l l o c . i n i t W i t h F r a m e ( $ . N S M a k e R e c t ( s t a r t X ,   b u t t o n Y ,   b u t t o n W i d t h ,   3 2 ) ) ; 
     i m p o r t B u t t o n . s e t T i t l e ( " I m p o r t   Z I P " ) ; 
     i m p o r t B u t t o n . s e t B e z e l S t y l e ( $ . N S B e z e l S t y l e R o u n d e d ) ; 
     i m p o r t B u t t o n . s e t T a r g e t ( a c t i o n H a n d l e r ) ; 
     i m p o r t B u t t o n . s e t A c t i o n ( " i m p o r t Z i p : " ) ; 
     c o n t e n t V i e w . a d d S u b v i e w ( i m p o r t B u t t o n ) ; 
 
     c o n s t   e x p o r t M e d i a B u t t o n   =   $ . N S B u t t o n . a l l o c . i n i t W i t h F r a m e ( $ . N S M a k e R e c t ( s t a r t X   +   b u t t o n W i d t h   +   s p a c i n g ,   b u t t o n Y ,   b u t t o n W i d t h ,   3 2 ) ) ; 
     e x p o r t M e d i a B u t t o n . s e t T i t l e ( " E x p o r t   M e d i a " ) ; 
     e x p o r t M e d i a B u t t o n . s e t B e z e l S t y l e ( $ . N S B e z e l S t y l e R o u n d e d ) ; 
     e x p o r t M e d i a B u t t o n . s e t T a r g e t ( a c t i o n H a n d l e r ) ; 
     e x p o r t M e d i a B u t t o n . s e t A c t i o n ( " e x p o r t M e d i a : " ) ; 
     c o n t e n t V i e w . a d d S u b v i e w ( e x p o r t M e d i a B u t t o n ) ; 
 
     c o n s t   e x p o r t Z i p B u t t o n   =   $ . N S B u t t o n . a l l o c . i n i t W i t h F r a m e ( $ . N S M a k e R e c t ( s t a r t X   +   ( b u t t o n W i d t h   +   s p a c i n g )   *   2 ,   b u t t o n Y ,   b u t t o n W i d t h ,   3 2 ) ) ; 
     e x p o r t Z i p B u t t o n . s e t T i t l e ( " E x p o r t   Z I P " ) ; 
     e x p o r t Z i p B u t t o n . s e t B e z e l S t y l e ( $ . N S B e z e l S t y l e R o u n d e d ) ; 
     e x p o r t Z i p B u t t o n . s e t T a r g e t ( a c t i o n H a n d l e r ) ; 
     e x p o r t Z i p B u t t o n . s e t A c t i o n ( " e x p o r t Z i p : " ) ; 
     c o n t e n t V i e w . a d d S u b v i e w ( e x p o r t Z i p B u t t o n ) ; 
 
     / /   L o a d   p r o j e c t s   i n i t i a l l y 
     l o a d P r o j e c t s ( ) ; 
     
     / /   S h o w   t h e   w i n d o w   a n d   b r i n g   a p p   t o   f o r e g r o u n d 
     w i n d o w . m a k e K e y A n d O r d e r F r o n t ( n u l l ) ; 
     a p p . a c t i v a t e I g n o r i n g O t h e r A p p s ( t r u e ) ; 
     
     $ . N S A p p   =   a p p ; 
     
     r e t u r n   a p p ; 
 } 
 
 / /   R u n   t h e   a p p 
 l e t   a p p   =   r u n A p p ( ) ; 
 a p p . r u n ( ) ;                              R<jscr  ��ޭ