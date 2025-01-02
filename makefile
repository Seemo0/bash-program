# Makefile

# Target for README.md
README.md:
	@echo "# Guessing Game" > README.md
	@echo "Date and Time: $(shell date)" >> README.md
	@echo "Number of lines in guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md
