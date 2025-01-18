tar xvfz ../elasticsearch-7.17.5.tar.gz -C ../../
sudo cp ../serviced/zookeeper.service /etc/systemd/system
sudo cp ../serviced/kafka.service /etc/systemd/system
sudo cp ../serviced/elasticsearch.service /etc/systemd/system
ln -s $HOME/phoebus/alarm/kafka_2.13-3.6.2 kafka
