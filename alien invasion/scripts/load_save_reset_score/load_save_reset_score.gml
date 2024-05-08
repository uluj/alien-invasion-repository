//load_score.gml

//load function
function load_score(){


    var ini_file = "save.ini";
    ini_open(ini_file);
    global.score = ini_read_real("GameData", "Score", 0); // Default to 0 if not found
    ini_close();
}

//reset fucntion
function reset_score() {
    global.score = 0; // Reset score

    // Specify the file where scores are saved
    var ini_file = "save.ini";
    ini_open(ini_file);
    ini_write_real("GameData", "Score", global.score); // Remove the score entry or set it to undefined
    ini_close();

}
//save_score.gml
//save function
function save_score() {
    var ini_file = "save.ini";
    ini_open(ini_file);
    ini_write_real("GameData", "Score", global.score);
    ini_close();
}
