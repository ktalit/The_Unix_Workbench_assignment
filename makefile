now=$(shell date)
lines=$(shell wc -l ./guessinggame.sh | cut -d " " -f 7)

README.md:
	touch README.md
	echo "# Guessing game to count the number of files in current directory" > README.md
	echo "- Date and Time: " $(now) >> README.md
	echo "- Number of lines of code: " $(lines) >> README.md

clean:
	rm README.md 
