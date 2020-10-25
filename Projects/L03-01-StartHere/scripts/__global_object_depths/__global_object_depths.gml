function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // obj_wall
	global.__objectDepths[1] = 0; // obj_player
	global.__objectDepths[2] = 0; // obj_arrow
	global.__objectDepths[3] = 0; // obj_poison
	global.__objectDepths[4] = 0; // obj_apple
	global.__objectDepths[5] = 0; // obj_burger
	global.__objectDepths[6] = 0; // obj_ghost
	global.__objectDepths[7] = 0; // obj_coin
	global.__objectDepths[8] = 0; // obj_gold
	global.__objectDepths[9] = 0; // obj_potion
	global.__objectDepths[10] = 0; // obj_music


	global.__objectNames[0] = "obj_wall";
	global.__objectNames[1] = "obj_player";
	global.__objectNames[2] = "obj_arrow";
	global.__objectNames[3] = "obj_poison";
	global.__objectNames[4] = "obj_apple";
	global.__objectNames[5] = "obj_burger";
	global.__objectNames[6] = "obj_ghost";
	global.__objectNames[7] = "obj_coin";
	global.__objectNames[8] = "obj_gold";
	global.__objectNames[9] = "obj_potion";
	global.__objectNames[10] = "obj_music";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
