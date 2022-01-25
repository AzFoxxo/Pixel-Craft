///scr_file_mark_as_verified(filename);

ini_open(argument0 + ".verify");
var _hash = sha1_file(argument0);
ini_write_string("verify", "hash",  base64_encode(_hash));
ini_close();
