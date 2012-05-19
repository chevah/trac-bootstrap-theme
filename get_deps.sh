#!/bin/sh
# Download dependencies.

execute() {
    #Make sure $@ is called in quotes as otherwise it will not work.
    "$@"
    exit_code=$?
    if [ $exit_code -ne 0 ]; then
        echo "Fail:" $@
        exit 1
    fi
}


mkdir -p htdocs/css
mkdir -p htdocs/js
mkdir -p htdocs/img

execute wget -q \
    http://twitter.github.com/bootstrap/assets/css/bootstrap.css\
    -O htdocs/css/bootstrap.css

execute wget -q \
    http://twitter.github.com/bootstrap/assets/css/bootstrap-responsive.css\
    -O htdocs/css/bootstrap-responsive.css


execute wget -q \
    http://twitter.github.com/bootstrap/assets/img/glyphicons-halflings.png\
    -O htdocs/img/glyphicons-halflings.png

execute wget -q \
    http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js\
    -O htdocs/js/jquery.min.js
execute wget -q \
    http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.0.3/bootstrap.min.js\
    -O htdocs/js/bootstrap.min.js
