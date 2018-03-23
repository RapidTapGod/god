# god
Automates the clicking in Rapid Tap, a fun, grid tapping game that gets faster the more you play.

This script is poorly written in AutoHotkey by a massive loser.
Please do not look at the code. Please don't. You do not want to see that messy code. No.
When you don't have AutoHotkey installed, you can use the compiled version instead.
Feel free to edit the code and suit it to your own needs, but don't complain about the code I have written.

# Installation for losers
Go to autohotkey dot com and install AutoHotkey. Just run the script when the installation is finished.
When you don't have AutoHotkey installed and you don't plan to write your own code with it, you can use the compiled version (the .exe).

# how the fricking keybinds are mate
- Numpad 0 to activate
- Ctrl + Numpad 0 to deactivate

# how the frick it works mate
All the script does is it scans for green pixels in the area the tiles normally appear in. When the script has found one pixel that has a certain amount of green in it, the pixel is clicked.
Also, if no pixel is found it will wait for some time (default is 1.5 seconds) and then exit the script. This is implemented because the script would be searching for green pixels on the scoreboard after the game has ended and click on the profile links *which is damn fricking annoying mate*.
You can also comment that line in the code out and disable displaying the scoreboard after each game to achieve autoplay and trying over and over again.

# how to fix if error mate
If the script is too fast or too slow, you can change the value of the variables in line 3-5. Remember that you might have to recalculate the time for the not-found count.
If the script is clicking on the wrong spots, you may have a weird resolution and you might have to change the pixel borders a bit.
If nothing helps, you could consider throwing the script away and get good.
