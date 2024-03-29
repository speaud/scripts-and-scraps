# http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html
# https://www.gnu.org/software/bash/manual/bash.html#Bash-Conditional-Expressions
# http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-11.html

# if directory exists
if [ ! -d "foo" ]; then
  echo "dir not found"
  exit 1
fi

# (a)
if [ "y" != "y" ]; then
    echo "invalid"
fi

# shorthand for (a)
[ "y" != "y" ] && ( echo you are using a non-privileged account; exit 1 )

# nested if else
[ $(date +%w) -eq 6 ] && {echo "do something on Saturdays"; do_some_other_stuff; exit 0;} || echo "do different things on other days"

if [ "0" -eq 0 ]; then
   timezone_string="Z"
elif [ "0" -gt 0 ]; then
   timezone_string=$(printf "%02d:%02d" $((0/3600)) $(((0/ 60) % 60)))
else
   echo "Unknown parameter"
fi
