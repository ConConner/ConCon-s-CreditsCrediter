# IMPORTANT
ConCon's Credits Crediter is now obselete. A Credits Editor has been implemented into [MAGE Themes](https://github.com/ConConner/MAGE-Themes/releases), a modern fork of the Metroid Advance Game Editor.  
The feature set of the integrated Credits Editor surpasses that of ConCon's Credits Crediter.

ConCon's Credits Crediter 1.1
-----------------------------

## TUTORIAL:  
With this tool you can easily edit the credits of Metroid: Zero Mission and Fusion, without
a HEX editor. All can be done through a .txt file and the program.

1. Load a Metroid: Zero Mission or Fusion ROM with the "OPEN ROM" button.

2. Select the game you loaded with the proper buttons

3. If you dont have a credits file yet you can extract the credits from the
   currently opened ROM with the "EXTRACT" button. You can then select a name
   and saving location for said credits file

4. Edit the existing credits file to your custom credits. There are a few rules
   for the credit files though which have to be followed.
   
   Every new line starts with a one byte line marker (00, 01, 0A...).
   Each of these values has a different influence on the text following the marker.
   A list of all the markers is visible in the program and at the end of this file

   Every line of text has a limit of 35 characters. Depending on the text size
   not all of them will be visible In-Game or will result in glitches so some
   experimentation might be needed. The program will cut off anything longer than
   35 characters per line.

   While you can end the credits at any point with the dedicated marker (06) there
   is a hard limit on how the credits can be. If your file is longer than this limit
   the program will trigger a failsave and put the end marker at the last possible
   position, possibly cutting off the rest of your credits.

5. When you have your complete credits file, select "IMPORT" and then the credits
   file. After that you are prompted to save a modfied version of your ROM, with
   the new credits applied.

6. DONE! Your new ROM should now have the custom credits applied!


-----------------------------



Line Markers:
 * 00 - small, blue text
 * 01 - small, red text
 * 02 - big, white text
 * 03 - small, white text
 * 05 - small line break
 * 06 - end credits
 
 * 0A - All rights, including
 * 0B - the copyrights of Game,
 * 0C - Scenario, Music and Program,
 * 0D - reserved by NINTENDO.



-----------------------------



Discord: https://discord.gg/NK93wpbfBg  
conconner
E-Mail : contendohelp@gmail.com
