vspd = move_dir * move_spd;

if(place_meeting(x,y+sign(vspd),obj_wall)){
	move_dir*=-1;
}

var _col = place_meeting(x,y+1,obj_player) or place_meeting(x,y-1,obj_player);

if(_col){
	with(obj_player){
		y+=other.vspd;
	}
}

y+=vspd;
  
