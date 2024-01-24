/// @desc ??

switch(room){
case rm_game:
		draw_text(20, 20, "SCORE: " +string(score));
		draw_text(20, 40, "LIVES: " +string(lives)); 
		break;
		
		case rm_start:
		draw_set_halign(fa_center);
		var c = c_green;
		draw_text_transformed_color(
		room_width/2, 100, "SPACE ROCKS", 
		3, 3, 0, c,c,c,c, 1
		);
		
		draw_text( 
		room_width/2, 200, 
@"SCORE 1,000 POINTS TO WIN!

UP: Move
LEFT/RIGHT: change direction
SPACE: shoot

>> PRESS ENDER TO START <<
"
			);
			draw_set_halign(fa_left);
			break;
		
		case rm_win:
		draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_color(
		room_width/2, 200, "YOU WON! :)", 
		3, 3, 0, c,c,c,c, 1
		);
		
		draw_text( 
		room_width/2, 300, 
"PRESS ENDER TO RESTART"
			);
			draw_set_halign(fa_left);
		break; 
		
		case rm_gameover: 
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(
		room_width/2, 150, "GAMEOVER :(", 
		3, 3, 0, c,c,c,c, 1
		);
		
		draw_text( 
		room_width/2, 300, 
"FINAL SCORE:"+string(score)
			);
			draw_text( 
		room_width/2, 250, 
"PRESS ENDTER TO RESTART" 
			);
			draw_set_halign(fa_left);
		break;
}