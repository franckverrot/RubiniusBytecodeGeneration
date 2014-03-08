require 'rubinius/compiler'

g = Rubinius::ToolSet.current::TS::Generator.new

g.set_line 1
g.push_self
g.push_literal 42
g.push_literal 42
g.send :+, 1, true
g.send :puts, 1, true

g.set_line 2
g.push_self
g.push_literal "Hello World"
g.send :puts, 1, true

g.ret
g.close

g.encode

m = g.package Rubinius::CompiledMethod
f = Rubinius::ToolSet.current::TS::CompiledFile
f.dump m, ARGV[0] || ".compiled.bc", 1, 1
