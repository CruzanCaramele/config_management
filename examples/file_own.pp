file {'/tmp/own_file.txt':
	ensure   => file,
	contente => "this is my second puppet file\n",
}