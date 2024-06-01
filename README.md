# Podman Node 22 with Debian Bookworm on Linux

Podman development container with Node 22 based on the Debian Bookworm image.

## Requirements

* A Debian Linux system
* Podman installed
* Visual Studio code installed
* The Visual Studio code extension `Dev Containers`

## Install

To install type

    bash install.sh

## To Develop

First you must start the container and enter it

    ./run.sh

then inside the container type

    npm run dev

or you can use git and other commands to prepare your deveopment container.

Press `CTRL` + `c` to break npm run dev.

## Continue with Visual Studio Code

Make sure your container is running, and that nodejs is NOT running, then

1) open Visual Studio code and then inside Visual Studio code press `CTRL` + `SHIFT` + `P` and
2) then choose <span style="color:green">Dev Containers: Attack to Running Container...</span> and 
3) then pick <span style="color:green">node-app-dev</span> and 
4) then click on the Explorer icon on top left and
5) then click <span style="color:green">Open Folder</span> and
6) then enter <span style="color:green">/app/src</span> and press <span style="color:green">OK</span> and
7) then click on the menu tab <span style="color:green">Terminal</span> and choose <span style="color:green">New Terminal</span> then
8) then down under inside the terminal type <span style="color:green">cd .. && npm run dev</span> and choose <span style="color:green">Open in Browser</span>.
9) You should see the txt "Hello, Node.js demo page!" in your browser.

Happy Coding!!
