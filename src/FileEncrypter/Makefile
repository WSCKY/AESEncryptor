#configuration
include config.mk
#Output Path
BinaryPath ?= ../../bin
#classpath
SourcePath ?= ../
#main class
SourceFile = $(MainClass).java

all: $(SourceFile)
	$(ECHO) "Compile $(Project)..."
	$(ECHO) "Create Output Directory(if non-exists)..."
	$(MKDIR) -p $(BinaryPath)/$(Project)/
	$(ECHO) "Copy Image File(s)..."
	$(CP) $(ImgFiles) $(BinaryPath)/$(Project)/
	$(ECHO) "Build $<..."
	$(JAVAC) -g -d $(BinaryPath) -cp $(SourcePath) $<

