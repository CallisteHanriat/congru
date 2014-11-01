With ada.Text_IO, Ada.Integer_Text_IO; 
Use ada.Text_IO, Ada.Integer_Text_IO ;

package body p_congruence is

procedure traitement1 (couple : in tr_couple) is
--traite le couple, pour retourner congru.

begin
	if couple.value**couple.puiss < 2**30 then
		put("votre congruence pour : ");
		new_line;
		put(couple.value); put(" puissance "); put(couple.puiss); put(" congru "); put(congruence(couple.value, couple.modulo)); put("[");put(couple.modulo);put("]");
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
end p_congruence;
