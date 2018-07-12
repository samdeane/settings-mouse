# run imwheel

if [[ $(grep IMWHEEL_START=1 /etc/X11/imwheel/startup.conf) == "" ]]
then
    echo "Set IMWHEEL_START=1 in /etc/X11/imwheel/startup.conf to enable mouse support."
fi
