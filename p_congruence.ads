

package p_congruence is
--type declaration tr_couple. 
type tr_couple is record
	value : integer;
	puiss : integer;
	congru : integer;
	modulo : integer;
end record;

procedure traitement1 (c: in tr_couple);
--traite le couple, pour retourner congru.

procedure affichage_congruence(couple : in tr_couple);
--affiche la congruence.

function congruence (val : in integer; modulo: in integer) return integer;
--traite une val, pour ressortir la congruence [modulo].

function fermatpossible (couple : in tr_couple) return boolean;
--traite un couple et retourne vrai ou faux si on peut utiliser fermat. 

function nombrepremier (val : in integer) return boolean;
--traite une valeur et retourne vrai si elle est premier ou faux.

function congru_by_multiple(couple : in tr_couple) return integer;
--traite un couple et ressort un integer qui est la congruence couple.congru.

function premier_cong_un (couple : in tr_couple) return integer;
--traite un couple et retourne un valeur qui représente la puissance pour laquelle c'est congru à 1.
end p_congruence;
