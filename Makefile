

sourceFile:=Teenage.json
buildDestinationDir:=${HOME}/Library/Application\ Support/Sublime\ Text/Packages/Teenage/

light:=${buildDestinationDir}/Teenage\ Screen\ -\ Light.sublime-color-scheme
dark:=${buildDestinationDir}/Teenage\ Board\ -\ Dark.sublime-color-scheme

build:  ${sourceFile} Makefile ${light} ${dark}

light: ${light}

${light}: ${sourceFile} Makefile
	sublThemer ${sourceFile} light -o ${light}

dark: ${dark}

${dark}: ${sourceFile} Makefile
	sublThemer ${sourceFile} dark -o ${dark}
