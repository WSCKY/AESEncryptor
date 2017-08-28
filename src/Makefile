SourceFile = $(wildcard FileEncrypter/MainFrame.java)

.PHONY: all clean
all: $(SourceFile)
	@echo "Compile AES128CTR"
#	@echo $(shell pwd)
	@javac -d ../bin/ $<
	@cd ../bin/ && java $(basename $<)
clean:
	rm -rf ../bin/*

