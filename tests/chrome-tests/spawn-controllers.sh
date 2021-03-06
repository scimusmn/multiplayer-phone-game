#!/bin/bash
#

# CONTROLLER_URL="http://localhost:3000/?simulateInput=true"
CONTROLLER_URL="https://play.smm.org/?simulateInput=true"

# Spawns single controller by default, 
# or takes first command flag ( e.g. $bash simulate-controllers.sh 20 )
SPAWN_COUNT=${1:-1}

for ((i=1; i<=SPAWN_COUNT; i++)); 
	do
		myControllerURL=$CONTROLLER_URL+"&prefillName=AI_$i"
		open -na "Google Chrome" --args --new-window $myControllerURL --window-size="300,300" --window-position="100,100" 
		echo $i
		echo 'URL: '+$myControllerURL
    	sleep 0.25
done

echo "All done!"