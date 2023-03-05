#!/usr/bin/env bash

NC='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;38;5;33m'
YELLOW='\033[1;33m'

# ====================== | HELPERS | ===================

#---
# @Synopsis Print Message with error label
#---
throw_exception()
{
    echo -e "\n${RED}❌ ERROR:${NC} $1\n"
    exit 1;
}

#---
# @Synopsis Print Message with info label
#---
print_info()
{
    echo -e "\n${BLUE}👉 INFO:${NC} $1\n"
}

#---
# @Synopsis Print project's logo with messages
#---
print_banner()
{
    echo -e "\n"
    # shellcheck disable=SC2059
    printf "$(echo -n "XGVbNDltICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFxlW20KXGVbNDltICAgICAgICBcZVszODs1Ozc0OzQ5beKWhFxlWzQ4OzU7NjhtIFxlWzM4OzU7Njc7NDlt4paEXGVbNDltICAgICAgICAgICAgICAgICAgICAgICAgICAgICBcZVttClxlWzQ5bSAgIFxlWzM4OzU7MjU7NDlt4paEXGVbMzg7NTsyNTs0ODs1OzI1beKWhFxlWzM4OzU7NjE7NDg7NTsyNW3iloTiloTiloRcZVs0ODs1Ozc0bSBcZVs0ODs1OzY4bSBcZVs0ODs1OzY3bSBcZVs0OW0gIFxlWzQ4OzU7MjUwbSBcZVs0OTszODs1OzI1MG3iloDiloBcZVs0ODs1OzI1MG0gXGVbNDltIFxlWzQ4OzU7MjUwbSBcZVs0OTszODs1OzI1MG3iloDiloDiloBcZVs0OW0gXGVbNDg7NTsyNTBtIFxlWzQ5bSAgXGVbNDg7NTsyNTBtIFxlWzQ5OzM4OzU7MjUwbeKWgFxlWzQ5bSBcZVs0ODs1OzMybSBcZVs0OTszODs1OzMybeKWgOKWgFxlWzQ4OzU7MzJtIFxlWzQ5bSBcZVs0OTszODs1OzMybeKWgFxlWzQ4OzU7MzJtICBcZVs0OTszODs1OzMybeKWgFxlWzQ5bSAgXGVbbQpcZVs0OW0gIFxlWzQ4OzU7MjRtIFxlWzM4OzU7MjQ7NDg7NTsyNW3iloRcZVszODs1OzI1OzQ4OzU7MjVt4paEXGVbNDk7Mzg7NTs2MW3iloDiloDiloBcZVs0ODs1Ozc0bSBcZVs0ODs1OzY4bSBcZVs0ODs1OzY3bSBcZVs0OW0gIFxlWzQ4OzU7MjUwbSBcZVs0OW0gIFxlWzQ4OzU7MjUwbSBcZVs0OW0gXGVbNDg7NTsyNTBtIFxlWzM4OzU7MjUwOzQ5beKWhOKWhFxlWzQ5bSAgXGVbNDk7Mzg7NTsyNTBt4paAXGVbNDg7NTsyNTBtIFxlWzQ5bSBcZVs0ODs1OzI1MG0gXGVbNDltICBcZVs0ODs1OzMybSBcZVszODs1OzMyOzQ5beKWhOKWhFxlWzQ4OzU7MzJtIFxlWzQ5bSAgXGVbNDg7NTszMm0gIFxlWzQ5bSAgIFxlW20KXGVbNDltICBcZVs0ODs1OzY4bSBcZVs0ODs1Ozc0bSAgXGVbNDltICAgXGVbNDg7NTs3NG0gXGVbNDg7NTs2OG0gXGVbNDg7NTs2N20gXGVbNDltICBcZVs0ODs1OzI1MG0gXGVbNDltICBcZVs0ODs1OzI1MG0gXGVbNDltIFxlWzQ4OzU7MjUwbSBcZVs0OW0gICAgIFxlWzQ4OzU7MjUwbSAgXGVbNDk7Mzg7NTsyNTBt4paAXGVbNDltICBcZVs0ODs1OzMybSBcZVs0OW0gICAgIFxlWzQ4OzU7MzJtICBcZVs0OW0gICBcZVttClxlWzQ5bSAgXGVbNDk7Mzg7NTs2OG3iloBcZVs0ODs1Ozc0bSAgICAgIFxlWzQ4OzU7NjhtIFxlWzQ5bSAgIFxlWzQ5OzM4OzU7MjUwbeKWgOKWgOKWgFxlWzQ5bSAgXGVbNDk7Mzg7NTsyNTBt4paA4paA4paA4paAXGVbNDltICBcZVs0OTszODs1OzI1MG3iloDiloBcZVs0OW0gICBcZVs0OTszODs1OzMybeKWgFxlWzQ5bSAgICAgXGVbNDk7Mzg7NTszMm3iloDiloBcZVs0OW0gICBcZVttClxlWzQ5bSAgICAgXGVbNDk7Mzg7NTs3NG3iloDiloDiloBcZVs0OW0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFxlW20KXGVbNDltICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFxlW20=" | base64 --decode)"
    echo -e "\n${BLUE}Welcome to our Website!${NC} This project was developed entirely by volunteers.${NC}"
    echo -e "\n${BLUE}🙏 Thank you for the interest in contributing!${NC}"
    echo -e "\n${YELLOW}⭐ Star${NC} our repository on GitHub: ${YELLOW}https://github.com/devpt-org/site${NC}\n"
    sleep 3
}

#---
# @Synopsis: Goes into the root folder of this git project
#---
function cd_project_root()
{
    GIT_ROOT="$( git rev-parse --show-toplevel 2>/dev/null )"

    if [[ -n "$GIT_ROOT"  ]]; then
        cd "$GIT_ROOT" || exit
    fi
}

#---
# @Synopsis Verify if Docker is installed
#---
is_docker_installed()
{
    if ! command -v docker &> /dev/null; then
        throw_exception "Docker not found. Please install it and run this script again".
    fi
}

#---
# @Synopsis Creates .env from .env.example if needed 
#---
has_env_files()
{
    if [ -f ./.env ]; then
        return
    fi

    if [  ! -f ./.env ] && [ -f ./.env.example ]; then
        print_info "Copying ${GREEN}.env.example${NC} into ${GREEN}.env${NC}"
        cp ./.env.example ./.env
        return
    fi

    throw_exception "You must have either a ${YELLOW}.env${NC} or ${YELLOW}.env.example${NC} file. Aborting!"
}

#---
# @Synopsis Do the storage link if needed
#---
artisan_storage_link(){
    if [ ! -d ./public/storage ] || [ ! -d ./public/resources ]; then
        ./vendor/bin/sail artisan storage:link
    fi
}

#---
# @Synopsis Creates an APP KEY if it doesn't exist
#---
artisan_make_app_key(){
    HAS_KEY=$(grep APP_KEY=base64 .env)

    if [  -f ./.env ] && [ -z "$HAS_KEY"  ]; then
        print_info "generating App Key... 🗝️"

        docker-compose exec \
        -u sail \
        "$APP_SERVICE" \
        php artisan key:generate --ansi
    fi
}

#---
# @Synopsis Install project's PHP dependencies if needed
#---
check_php_dependencies() {
     if [ ! -d ./vendor ] || [ ! -f ./vendor/bin/sail ]; then
        print_info "Docker is installing PHP dependencies..."

        docker run --rm \
        -u "$(id -u):$(id -g)" \
        -v "$(pwd):/app" -w /app \
        composer:2 \
        composer install --ignore-platform-reqs
     fi
}

#---
# @Synopsis Install project's Node JS dependencies if needed
# This project requests the user to have a package manager in his computer.
#---
check_node_dependencies() {
    #PACKAGE_MANAGER=''
    #YARN=$(command -v yarn)
    #NPM=$(command -v npm)
    #PACKAGE_MANAGER="${YARN:-$NPM}"
    
    PACKAGE_MANAGER=$(command -v npm)

    if [ -z "$PACKAGE_MANAGER" ]; then
        throw_exception "You need to have ${YELLOW}npm${NC} in your computer${NC}. Aborting!"
    fi

    if  [ ! -d ./node_modules ] || [ -z "$(ls -A ./node_modules)" ]; then
        print_info "Installing project's NodeJS dependencies..."
        eval "$PACKAGE_MANAGER" install
    fi
}

# ====================== | SCRIPT | ===================

# Print project's logo
print_banner

#Go into project's root directory
cd_project_root

# Install dependencies if needed
check_php_dependencies

check_node_dependencies

# Verify if Docker is installed
is_docker_installed

# Check for .env file
has_env_files

export APP_SERVICE=${APP_SERVICE:-"laravel.test"}
export WWWUSER=${WWWUSER:-$UID}
export WWWGROUP=${WWWGROUP:-$(id -g)}

# shellcheck disable=SC1091
source ./.env

echo -e "\n📣 ${YELLOW}Would you like to serve the project now? ${GREEN}[y/N]${NC}"
read -r ANSWER

if [ "$ANSWER" == "${ANSWER#[yY]}" ]; then
    print_info "All done!"
    exit 0
fi

./vendor/bin/sail up -d

artisan_make_app_key
artisan_storage_link

./vendor/bin/sail composer install

echo -e "\n${BLUE}⛵ Some useful commands:${NC}\n"
echo -e " ${GREEN}./vendor/bin/sail bash${NC}    opens a shell inside your app container."
echo -e " ${GREEN}./vendor/bin/sail tinker ${NC} opens a Laravel Tinker console."
echo -e " ${GREEN}./vendor/bin/sail stop ${NC}   stops the app containers."

echo -e "\nYou can access the website at: ${GREEN}http://localhost:${APP_PORT}${NC}\n"
echo -e "${YELLOW}!!! IMPORTANT !!!${NC} You need to run ${GREEN}npm run dev${NC} to compile assets in real time while developing.\n"
