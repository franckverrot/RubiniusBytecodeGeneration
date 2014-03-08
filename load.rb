script_name = ARGV[0] || ".compiled.bc"
cl = Rubinius::CodeLoader.new(script_name)
cm = cl.load_compiled_file(script_name, 1, 1)
script = cm.create_script(false)
script.file_path = script_name
MAIN.__script__
