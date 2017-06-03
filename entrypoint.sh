#!/bin/bash
#	Entrypoint
#
#
COMMAND=${@:1}

if [ -z $1 ]; then
	COMMAND="uwsgi"
fi

if [ "$COMMAND" = "uwsgi" ]; then
	COMMAND="/usr/local/bin/uwsgi -s 0.0.0.0:$(printenv PORT) --module example.wsgi:application"
fi

eval $COMMAND
