PROGRAM = funmoji
DEST = /usr/bin
EUID = $(shell id -u)

install:
ifeq ($(EUID),1000)
	@echo You need to be root user to install $(PROGRAM)
end:
endif
	@cp -p $(PROGRAM) $(DEST)/$(PROGRAM)
	@cp -p $(PROGRAM).fish $(DEST)/$(PROGRAM).fish
	@chmod 755 $(DEST)/$(PROGRAM) $(DEST)/$(PROGRAM).fish

uninstall:
	@rm -f $(DEST)/$(PROGRAM) $(DEST)/$(PROGRAM).fish
