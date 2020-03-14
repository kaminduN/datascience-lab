#!/bin/bash

##############################################################################
# write config vars with configfile template
##############################################################################
function writeConfigOptions(){
    echo "write config options"
    export SPARK_MASTER_ENDPOINT=$SPARK_MASTER_ENDPOINT
    # export SPARK_MASTER_PORT=$SPARK_MASTER_PORT
    export DEPLOY_MODE=$DEPLOY_MODE
        
    cat /tmp/livy.conf | envsubst > /opt/livy/conf/livy.conf
}

function livy_server_service(){

    #export SPARK_HOME=/opt/spark-2.3.1-bin-hadoop2.7/
    echo "starting Livy Server!"
    
    /livy/bin/livy-server start 

    # whatever blocking call 
    tail -f /dev/null
}

livy_server_service