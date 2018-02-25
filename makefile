README.md: guessinggame.sh
	echo "# Peer-graded Assignment: Bash, Make, Git and GitHub" > README.md
	echo "- Date and time **make** was run: " >> README.md
	make README.md | date  >> README.md
	echo "- Number of lines of code contained in **guessinggame.sh**: " >> README.md
	wc -l guessinggame.sh  >> README.md 
