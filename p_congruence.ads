with ada.text_io ;
use ada.text_io ;

package p_congruence.ads is
--type declaration tr_couple. 
type tr_couple is record
	value : integer;
	puiss : integer;
	congru : integer;
	modulo : integer;
end record;

function traitement1 (couple: in tr_couple) return integer;
--traite le couple, pour retourner congru.

function congruence (val : in integer; modulo: in integer) return integer;
--traite une val, pour ressortir la congruence [modulo].

function fermatpossible (couple : in tr_couple) return boolean;
--traite un couple et retourne vrai ou faux si on peut utiliser fermat. 

end p_congruence;
