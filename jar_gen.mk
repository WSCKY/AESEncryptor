Project ?= null

all:
	$(ECHO) "Generate jar File..."
	$(JAR) vcf $(Project).jar $(Project)
