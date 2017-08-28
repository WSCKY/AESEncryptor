Project ?= FileEncrypter
MainEntry ?= MainFrame
BinaryPath ?= ../bin

SourceFile = $(Project)/$(MainEntry).java

all: $(SourceFile)
	$(ECHO) "Compile $(Project)..."
	$(ECHO) "Create Output Directory..."
	$(MKDIR) -p ../bin/$(Project)/
	$(ECHO) "Copy Image File(s)..."
	$(CP) ../ImgSource/* ../bin/$(Project)/
	$(ECHO) "Build $<..."
	$(JAVAC) -g -d ../bin/ $<
	$(ECHO) "Launch Application..."
	$(JAVA) -cp $(BinaryPath) $(basename $<)

