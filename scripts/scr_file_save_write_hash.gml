///scr_file_save_write_hash(filename);
ini_open(argument0 + ".verify");
var _hash = sha1_file(argument0);
ini_write_string("verify", "hash",  base64_encode(_hash));
ini_close();
