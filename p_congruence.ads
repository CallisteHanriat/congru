

package p_congruence is
--type declaration tr_couple. 
type tr_couple is record
	value : integer;
	puiss : integer;
	congru : integer;
	modulo : integer;
end record;

procedure traitement1 (couple: in tr_couple);
--traite le couple, pour retourner congru.

function congruence (val : in integer; modulo: in integer) return integer;
--traite une val, pour ressortir la congruence [modulo].

function fermatpossible (couple : in tr_couple) return boolean;
--traite un couple et retourne vrai ou faux si on peut utiliser fermat. 

function nombrepremier (val : in integer) return boolean;
--traite une valeur et retourne vrai si elle est premier ou faux.
end p_congruence;
