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
	--savoir gérer les exeptions pour ici.
	couple := c;
	-- appeler le if est impossible si on est dans le constraint error. 
	--if couple.value**couple.puiss < 2**30 then
	--	couple.congru := congruence(couple.value**couple.puiss,couple.modulo);

	-- pour la V 0.2
	--else	
	
	couple.congru := congru_by_multiple(couple);
	--end if;
	affichage_congruence(couple);
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
i:integer:=1;
begin
	while i < couple.puiss+1 and then couple.value**i mod couple.modulo /= 1 loop
		i:=i+1;
	end loop;
	return i;
end premier_cong_un;
----------------------------
function congru_by_multiple(c : in tr_couple) return integer is
--traite un couple et ressort un integer qui est la congruence couple.congru.
i: integer :=1;
couple : tr_couple := c;
begin	
	couple.congru:=couple.value mod couple.modulo;
	new_line;
	while i<couple.puiss loop
		affichage_congruence(couple);
		couple.congru := congruence((couple.congru*couple.value), couple.modulo);
		i:=i+1;
	end loop;
	return couple.congru;
end congru_by_multiple;

end p_congruence;
