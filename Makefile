all: main

main: main.tw2
	#twee2 decompile "The Legend of StarCraft.html" main.tw2
	#echo "Twee2::build_config.story_format = 'Harlowe2'" >> main.tw2
	#echo "Twee2::build_config.story_ifid = '4B58480A-262E-4B1C-98CC-A81573379801'" >> main.tw2
	mkdir -p web
	cp -r images web
	cp -r bgm web
	cp -r sfx web
	twee2 build main.tw2 web/index.html
	# rm -f web.zip
	# zip -r web web

clean:
	rm web/index.html
	rmdir web
