README.md: guessinggame.sh
	echo "The title of this project is Bash, Make, Git and GitHub" > README.md
	echo "The date and time of creation of README.md is $$(date)" >> README.md
	echo "There are $$(wc -l guessinggame.sh | egrep -o "[0-9]+") lines in guessinggame.sh" >> README.md
