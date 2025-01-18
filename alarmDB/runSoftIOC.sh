source $HOME/epics/1.1.0/debian-12/7.0.7/setEpicsEnv.bash disable
softIoc -s -m P=ctrlslab: -d alarmDemo.db
