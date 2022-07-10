gvimfullscreen\_win32 : Put gvim in full screen on Windows

 **script karma** 

Rating **484/192**, Downloaded by 11129

 **Comments, bugs, improvements** 

[Vim wiki](http://vim.wikia.com/wiki/Script:2596)

created by

[Derek McLoughlin](https://www.vim.org/account/profile.php?user_id=16778)

 

script type

utility

 

description

Allows you to run gvim in full screen on Windows on a single monitor.

This is a copy of Yasuhiro Matsumoto's VimTweak's EnableMaximize functionality modified to deal with window borders and allowing the window to overlap the task bar.

Source code included and also available on GitHub: [http://github.com/derekmcloughlin/gvimfullscreen\_win32/tree/master](http://github.com/derekmcloughlin/gvimfullscreen_win32/tree/master)

 

install details

Unzip the gvimfullscreen\_win32.zip file. Copy the DLL to the folder where GVIM.EXE is located.

Call directly:  
:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

Map a function key:  
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

 

**rate this script**

Life Changing Helpful Unfulfilling 

script versions ([upload new version](https://www.vim.org/scripts/add_script_version.php?script_id=2596))

Click on the package to download.

package

script version

date

Vim version

user

release notes

[gvimfullscreen\_win32.zip](https://www.vim.org/scripts/download_script.php?src_id=10328)

**1.0**

_2009-03-31_

6.0

_[Derek McLoughlin](https://www.vim.org/account/profile.php?user_id=16778)_

Initial upload

ip used for rating: 223.74.187.158