# run imwheel

if [[ $(which imwheel) = "" ]]
then
    echo "Mouse support requires imwheel. Use `sudo apt install imwheel` to install it."
fi

PROCS="$(ps ax)"
if [[ $(ps ax) != *imwheel* ]]
then
    echo "imwheel wasn't running - starting it locally"
    imwheel

    if [[ $(grep IMWHEEL_START=1 /etc/X11/imwheel/startup.conf) == "" ]]
    then
        echo "Set IMWHEEL_START=1 in /etc/X11/imwheel/startup.conf to enable mouse support at startup."
    fi
fi
