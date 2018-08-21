#!/bin/sh
export waspass=`cat /tmp/PASSWORD` && /opt/IBM/WebSphere/AppServer/bin/wsadmin.sh -user wsadmin -password  $waspass -lang jython -f "/opt/IBM/deployment/deploy_commonLookup.jy"
#/opt/IBM/WebSphere/AppServer/bin/wsadmin.sh -user wsadmin -password  $waspass -lang jython -f "deploy_ecabackoffice.py"
