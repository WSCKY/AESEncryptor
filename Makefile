# Set verbosity
ifeq ($(V), 1)
Q =
else
Q = @
endif

# Commands
JAVAC          = $(Q)javac
JAVA           = $(Q)java
JAR            = $(Q)jar
CD             = $(Q)cd
CP             = $(Q)cp
RM             = $(Q)rm
MKDIR          = $(Q)mkdir
ECHO           = $(Q)@echo
MAKE           = $(Q)make
CAT            = $(Q)cat

# Targets
MainProj = project

# Directories
TOP_DIR=$(shell pwd)
SourceDIR = $(TOP_DIR)/src/
BinaryDIR = $(TOP_DIR)/bin/
ImagesDIR = $(TOP_DIR)/ImgSource/

#Export Variables
export JAVAC
export JAVA
export JAR
export CD
export CP
export RM
export MKDIR
export ECHO
export MAKE
export CAT

.PHONY: all clean

all: $(MainProj)

$(MainProj):
	$(MAKE) -C $(SourceDIR) BinaryPath=$(BinaryDIR)

clean:
	$(ECHO) "Delete Binary Files."
	$(RM) -rf $(BinaryDIR)/*
