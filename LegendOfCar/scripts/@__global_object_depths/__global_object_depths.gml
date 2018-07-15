// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // obj_car
global.__objectDepths[1] = -1; // obj_wall
global.__objectDepths[2] = -1; // obj_enemy
global.__objectDepths[3] = -2; // obj_goal
global.__objectDepths[4] = 0; // obj_blood_controller
global.__objectDepths[5] = 0; // obj_blood
global.__objectDepths[6] = 0; // obj_camera
global.__objectDepths[7] = -2; // obj_text
global.__objectDepths[8] = 0; // obj_pit
global.__objectDepths[9] = 0; // obj_switch
global.__objectDepths[10] = 0; // obj_spawner
global.__objectDepths[11] = 0; // object12
global.__objectDepths[12] = 0; // obj_gun
global.__objectDepths[13] = 0; // obj_bullet
global.__objectDepths[14] = 0; // object15


global.__objectNames[0] = "obj_car";
global.__objectNames[1] = "obj_wall";
global.__objectNames[2] = "obj_enemy";
global.__objectNames[3] = "obj_goal";
global.__objectNames[4] = "obj_blood_controller";
global.__objectNames[5] = "obj_blood";
global.__objectNames[6] = "obj_camera";
global.__objectNames[7] = "obj_text";
global.__objectNames[8] = "obj_pit";
global.__objectNames[9] = "obj_switch";
global.__objectNames[10] = "obj_spawner";
global.__objectNames[11] = "object12";
global.__objectNames[12] = "obj_gun";
global.__objectNames[13] = "obj_bullet";
global.__objectNames[14] = "object15";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for