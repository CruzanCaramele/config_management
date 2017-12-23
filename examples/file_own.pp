file {'/tmp/own_file.txt':
	ensure   => file,
	content  => "this is my second puppet file\n",
}