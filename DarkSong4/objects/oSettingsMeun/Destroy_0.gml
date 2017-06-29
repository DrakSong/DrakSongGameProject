 ini_open("GameInfo.ini");
ini_write_real("Settings","DebugMode",global.DebugMode);
ini_write_real("Settings","WindowsSize",global.WindowsSize);
 ini_write_real("Settings","WindowsFullscreen",global.WindowFullscreen);
  ini_write_real("Settings","Language",global.Language);
 ini_close();
