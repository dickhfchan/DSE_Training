#install Oracle JDK

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update

#install Cassandra Open Source Edition

https://docs.datastax.com/en/cassandra/2.0/cassandra/install/installDeb_t.html


## Modify the cassandra.yaml configuration file before starting Cassandra cluster
## listen address and rpc address should be the ip_addreess of host while the seeds are the ip address of any two of three nodes.
# vi /etc/dse/cassandra/cassandra.yaml
# listen_address: 192.168.3.100
# rpc_address: 192.168.3.100
# - seeds: "192.168.3.100,192.168.3.100"

