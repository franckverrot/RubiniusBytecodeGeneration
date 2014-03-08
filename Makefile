.PHONY: test

test: codegen load

codegen:
	ruby codegen.rb

load:
	ruby load.rb
