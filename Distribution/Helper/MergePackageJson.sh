echo "${GREEN}Merge package.json${NC}"
_version="{\"version\": \"$(cat Build/Gulp/package.json | json version)\"}"
_babel="{\"babel\": $(cat Build/Gulp/package.json | json babel)}"
_prettier="{\"prettier\": $(cat Build/Gulp/package.json | json prettier)}"
_scripts="{\"scripts\": $(cat Build/Gulp/package.json | json scripts)}"
_devDependencies="{\"devDependencies\": $(cat Build/Gulp/package.json | json devDependencies)}"

package=$(cat package.json | json)

echo $package,$_version,$_babel,$_prettier,$_scripts,$_devDependencies | json --merge > package.json