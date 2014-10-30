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


end p_congruence;
