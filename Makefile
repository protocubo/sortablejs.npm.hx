libname=sortablejs.npm
zipname=${libname}.zip

noop:
	# Check the available Makefile targets

${zipname}:
	rm -f ${zipname}
	zip -r $@ ./* -x \*.zip

set-pkg: sortablejs.npm.zip
	haxelib dev ${libname}
	haxelib install ${zipname}
	haxelib path ${libname}

set-dev:
	haxelib dev ${libname} ${PWD}
	haxelib path ${libname}

.PHONY: ${zipname} set-pkg set-dev

