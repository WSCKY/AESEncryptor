Project = FileEncrypter
MainEntry = MainFrame
SourceFile = $(wildcard $(Project)/$(MainEntry).java)

.PHONY: all clean
all: $(SourceFile)
	@echo "Compile $(Project) ..."
#	@echo $(shell pwd)
	@echo "Create Output Directory ..."
	@mkdir ../bin/$(Project)/
	@echo "Copy Image File(s) ..."
	@cp ../ImgSource/* ../bin/$(Project)/
	@echo "Build $< ..."
	@javac -d ../bin/ $<
	@echo "Launch Application ..."
	@cd ../bin/ && java $(basename $<)
clean:
	rm -rf ../bin/*

