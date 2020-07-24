#!/bin/bash

# change with the erlc path of your current ejabberd installation
ERLC_PATH='/usr/local/Cellar/erlang/21.2.2/bin/erlc'
EJBR_PATH='/usr/local/Cellar/ejabberd/20.04_1'
EJBR_VERSION="20.04"

$ERLC_PATH -DNO_EXT_LIB -DLAGER -I $EJBR_PATH/lib/ejabberd-$EJBR_VERSION/include/ -o ebin/ src/*