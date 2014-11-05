With ada.Text_IO, Ada.Integer_Text_IO; 
Use ada.Text_IO, Ada.Integer_Text_IO ;
--ajout information
package body p_congruence is

procedure affichage_congruence(couple : in tr_couple) is
--affiche la congruence.
begin
	new_line;
	put("votre congruence pour : ");
	new_line;
	put(couple.value); put(" puissance "); put(couple.puiss); put(" congru "); put(couple.congru); put("[");put(couple.modulo);put("]");
end affichage_congruence;
---------------------------
procedure traitement1 (c : in tr_couple) is
--traite le couple, pour retourner congru.
couple : tr_couple;
--creation de couple qui permet d'editer la valeur
--et d'éviter une erreur 'in not allowed'
begin
	couple := c;
	if couple.value**couple.puiss < 2**30 then
		couple.congru := congruence(couple.value**couple.puiss,couple.modulo);
		affichage_congruence(couple);
	end if;
end traitement1;
----------------------------
function congruence (val : in integer; modulo: in integer) return integer is
--traite une val, pour ressortir la congruence [modulo].
begin
	return val mod modulo;
end congruence;
----------------------------
function fermatpossible(couple:in tr_couple) return boolean is
--traite un couple et retourne vrai ou faux si on peut utiliser fermat. 
begin
	return (couple.value mod couple.modulo /= 0) and nombrepremier(couple.modulo);
end fermatpossible;
----------------------------
function nombrepremier (val : in integer) return boolean is
--traite une valeur et retourne vrai si elle est premier ou faux.
i : integer :=2;
begin
	while i<val-1 and then val mod i /= 0 loop
		i:=i+1;
	end loop;
	if i<val-1 then
		return false;
	else	return true;
	end if;
end nombrepremier;
----------------------------
function premier_cong_un(couple : in tr_couple) return integer is
-- --traite un couple et retourne un valeur qui représente la puissance pour laquelle c'est congru à 1.
i=integer:=1;
begin
	while i < couple.puiss+1 and then couple.value**i mod couple.modulo /= 1 loop
		i:=i+1;
	end loop;
	return i;
end rech_cong_un;


end p_congruence;
