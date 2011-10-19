/*
  ArduinoLog 1.0.0  
  Copyright (c) 2011 Michael C Dillon.  All rights reserved.
  Simple logging utility for the Arduino platform.
 
  This program is free software: you can redistribute it and/or modify 
  it under the terms of the GNU General Public License as published by 
  the Free Software Foundation, either version 3 of the License, or 
  (at your option) any later version. 

  This program is distributed in the hope that it will be useful, 
  but WITHOUT ANY WARRANTY; without even the implied warranty of 
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the 
  GNU General Public License for more details. 

  You should have received a copy of the GNU General Public License 
  along with this program. If not, see <http://www.gnu.org/licenses/>. 
*/



/**
  * Demonstration of the ArduinoLog functionality.
  */

#include "WProgram.h"

#define DEVELOPMENT_LOG
#define LOG_LEVEL LOG_ALL

#include "Log.h"

void setup () {
    Serial.begin (115200);

    Log::fine ("Fine statement");
    Log::debug ("Debug statement");
    Log::info ("Info statement ");
    Log::warn ("Warn statement");
    Log::error ("Error Statement");

    Log::info ("Int: %d", 5);
    Log::info ("Double: %f", 5.5);
    Log::info ("Chars: %s", "test string");
    Log::info ("Binary of 5: %b", 5);
    Log::info ("Hex of 47: %x", 47);

    Log::info ("Unrecognized formatter: %p", 1);
}

void loop () {

}
