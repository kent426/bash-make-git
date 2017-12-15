all: README.md

README.md: guessinggame.sh
	echo "Title: Bash, Make, Git and Github" > README.md
	echo -n "Update: " >> README.md && date >> README.md
	echo -n "# of line(s) in guessinggame.sh: " >> README.md && wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
