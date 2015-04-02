#!/bin/sh

blue="\e[40;1;34m"
error="[ \e[40;1;31m*\e[0m ]" # error red
warning="[ \e[40;1;93m*\e[0m ]" # warning tan
info="[ $blue*\e[0m ]" # info blue
success="[ \e[40;1;32m*\e[0m ]" # questions green
inp="\e40;1;36m" # input variables magenta

resetcolor="\e[0m" # Text reset

# Check for required programs
failed=0
type git >/dev/null 2>&1 || \
    { echo -e >&2 "$error You must have$blue git$resetcolor installed."; failed=1; }

type python >/dev/null 2>&1 || \
    { echo -e >&2 "$error You must have$blue python$resetcolor installed."; failed=1; }

type pip >/dev/null 2>&1 || \
    { echo -e >&2 "$error You must have$blue pip$resetcolor installed."; failed=1; }

type virtualenv >/dev/null 2>&1 || \
    { echo -e >&2 "$error You must have$blue virtualenv$resetcolor installed."; falied=1; }

if [ $failed == 1 ];
then
    exit
fi

# Begin installation
echo -e "$info Recursively cloning github repo to privly-flask..."

git clone --recursive https://github.com/privly/privly-flask.git > /dev/null 2>&1

if [[ $? != 0 ]];
then
    echo -e "$error Failed to successfully clone git repo."
    exit
fi

cd privly-flask

python=python
version=`python --version 2>&1`

if [[ $version == *"Python 3"* ]]
then 
    echo -e "$warning Detected $python, looking for python 2.X..."
    python2=python2
    if ! type python2 > /dev/null 2&>1;
    then
        python2=python2.7
        if ! type python2 >/dev/null 2>&1;
        then
            echo -e "$error Could not locate a python2 or python2.7 executable in path"
            exit
        else
            echo -e "$success Found python 2.X as$blue python2.7$resetcolor."
        fi
    else
        echo -e "$success Found python 2.X as$blue python2$resetcolor."
    fi
fi

echo -e "$info Creating virtual python environment..."

virtualenv env/pyvly -p $python2 > /dev/null 2>&1

if [[ $? != 0 ]];
then
    echo -e "$error Failed to create python virtual environment."
    exit
fi

echo -e "$info Activating python environment..."

. env/pyvly/bin/activate

if [[ $? != 0 ]];
then
    echo -e "$error Failed to activate python virtual environment."
    exit
fi

echo -e "$info Installing python dependencies..."

pip install -r requirements.txt > /dev/null 2>&1

if [[ $? != 0 ]];
then
    echo -e "$error Failed to activate python virtual environment."
    exit
fi

echo -e "$info Copying default config..."

cp config.py.dist config.py

if [[ $? != 0 ]];
then
    echo -e "$error Failed to copy config file."
    exit
fi

echo -e "$info Initializing database..."

python manage.py init_db > /dev/null 2>&1

if [[ $? != 0 ]];
then
    echo -e "$error Failed to intialize database."
    exit
fi

echo -e "$info Seeding database..."

python manage.py seed_db > /dev/null 2>&1

if [[ $? != 0 ]];
then
    echo -e "$error Failed to seed database."
    exit
fi

echo -e "$info Privly-Flask installed. Starting server..."

python manage.py runserver
