effect_create_above(ef_explosion,x,y,0,c_red)

audio_play_sound(snd_explode, 1, false)

with other {
  instance_destroy()
  }
  
with obj_player {
  points = points + 5
  show_message("ThePoints" + string(points) )
  }
  



