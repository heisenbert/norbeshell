#
#Makefile for norbeshell, if you want to change the project name without 
#setting the compiler flags, here is your opportunity
PROJ_NAME=norbeshell
INSTALL_TO=/bin
#################################################################################
#Stuff like compiler to be used, normally bigger, but this is a small breadshell
#norbert_ruehl@linux.com
CC=g++
RM = rm -f
CP = cp 
#################################################################################
# Source
USER_SRCS = $(wildcard src/*.cpp)
# Objects
USER_OBJECTS = $(USER_SRCS:.cpp=.o)
CFLAGS=-c -Wall $(INCLUDES)



#release build (.exe to find easier with find)
$(PROJ_NAME).release.exe: $(USER_OBJECTS)
	$(CC) $(USER_OBJECTS)  -o $@

#rule for cpp
.cpp.o:
	$(CC) $(CFLAGS) $< -o $@
	@echo $@

.PHONY: install uninstall clean

all: $(PROJ_NAME).release.exe
clean:
	$(RM) src/*.o
	$(RM) $(PROJ_NAME).release.exe
install: | clean all 
	$(CP) $(PROJ_NAME).release.exe $(INSTALL_TO)/$(PROJ_NAME)
uninstall:
	$(RM) $(INSTALL_TO)/$(PROJ_NAME)

