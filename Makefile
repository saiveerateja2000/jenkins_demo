# Makefile
OBJECTS = alpha1 alpha2 alpha3 alpha4 alpha5 alpha6

# Target to make the unit.sh script executable and run it
executable:
	chmod +x unit.sh
	export OBJECTS="$(OBJECTS)" && \
	./unit.sh
