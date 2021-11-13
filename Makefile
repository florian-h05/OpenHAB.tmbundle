TM_LANGUAGE = Syntaxes/OpenHAB.tmLanguage
JSON = https://raw.githubusercontent.com/openhab/openhab-vscode/a59a95706f2491f5bc51e4b7bbf1785257b7a5c2/syntaxes/openhab.tmLanguage.json

all: $(TM_LANGUAGE)

$(TM_LANGUAGE):
	mkdir -p $(dir $(TM_LANGUAGE))
	curl -L $(JSON) | plutil -convert xml1 - -o $@
	/usr/libexec/PlistBuddy -c "Add :uuid string '7EE8F85E-CC78-439C-9C87-2158CEA6C0B2'" $@
