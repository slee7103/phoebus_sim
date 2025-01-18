THIS_SRC=${BASH_SOURCE[0]:-${0}}

if [ -L $THIS_SRC ]; then    
	SRC_PATH="$( cd -P "$( dirname $(readlink -f "$THIS_SRC") )" && pwd )"
else    
	SRC_PATH="$( cd -P "$( dirname "$THIS_SRC" )" && pwd )"
fi

sh ${SRC_PATH}/alarm-server.sh -server localhost:9092 -config Accelerator -import ${SRC_PATH}/alarm_config.xml 
sh ${SRC_PATH}/alarm-server.sh -server localhost:9092 -config Accelerator
