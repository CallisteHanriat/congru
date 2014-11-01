with p_congruence;
use p_congruence;
With ada.Text_IO, Ada.Integer_Text_IO; 
Use ada.Text_IO, Ada.Integer_Text_IO ;
--01/11/2014 v0.1
procedure congru is
couple : tr_couple;
begin
	put("entrez une valeur : ");
	get(couple.value);
	put("entrez une puiss : ");
	get(couple.puiss);
	put("entrez un modulo : ");
	get(couple.modulo);
	
	traitement1(couple);
end congru;
