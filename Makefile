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

# Projects
Projects ?= FileEncrypter

# Targets
MainProj = $(addsuffix .kyproj, $(Projects))
JarFile = jar
Launch = launch

# Directories
TOP_DIR=$(shell pwd)
SourceDIR = $(TOP_DIR)/src
BinaryDIR = $(TOP_DIR)/bin

include $(SourceDIR)/$(Projects)/config.mk

# Scripts
JAR_GEN = jar_gen.mk

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

all: $(MainProj) $(JarFile) $(Launch)

$(JarFile): $(MainProj)
	$(ECHO) "Generate jar File..."
	$(CP) $(JAR_GEN) $(BinaryDIR)
	$(MAKE) -C $(BinaryDIR) -f $(JAR_GEN) Project=$(basename $<)

$(Launch): $(MainProj)
	$(ECHO) "Launch Application..."
	$(JAVA) -cp $(BinaryDIR) $(basename $<)/$(MainClass)

%.kyproj:
	$(MAKE) -C $(SourceDIR)/$(basename $@) BinaryPath=$(BinaryDIR)

.PHONY: clean
clean:
	$(ECHO) "Delete Binary Files."
	$(RM) -rf $(BinaryDIR)/*
