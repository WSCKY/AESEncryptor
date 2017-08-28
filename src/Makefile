Project ?= FileEncrypter
MainEntry ?= MainFrame

BinaryPath ?= ../bin
ImagePath ?= ImgSource

SourceFile = $(Project)/$(MainEntry).java

all: $(SourceFile)
	$(ECHO) "Compile $(Project)..."
	$(ECHO) "Create Output Directory..."
	$(MKDIR) -p $(BinaryPath)/$(Project)/
	$(ECHO) "Copy Image File(s)..."
	$(CP) $(ImagePath)/* $(BinaryPath)/$(Project)/
	$(ECHO) "Build $<..."
	$(JAVAC) -g -d $(BinaryPath) $<

