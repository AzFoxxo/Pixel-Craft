///scr_file_profile_setup();

directory_create("content"); // Level directory
directory_create("config"); // Game settings directory
directory_create("logs"); // Logs directory

ini_open("config\user.ini");
ini_close();

ini_open("config\prefs.ini");
ini_close();
