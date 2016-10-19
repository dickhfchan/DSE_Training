# Make sure the pem file is downloaded when it is created, and keep it safe on local MAC or PC.

# if you are using AWS, remember to change the access right of pem file in the local MAC or PC.
chmod 400 *.pem

# Setup the ports to be open for EC2 of AWS
https://docs.datastax.com/en/datastax_enterprise/4.8/datastax_enterprise/install/installAMIsecurity.html


sudo su

#install Oracle JDK

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update

sudo apt-get install oracle-java8-installer

#install Cassandra Open Source Edition

https://docs.datastax.com/en/cassandra/2.0/cassandra/install/installDeb_t.html


# Must run on root access
sudo su
# vi command ESC : / "key word to be search" 
# vi command ESE : I "Insert a word"
# vi command ESE : DD "Delete the whole line
# vi command ESE : wq "save and quit"
# vi command ESE : q! "focus to quit"


## Modify the cassandra.yaml configuration file before starting Cassandra cluster
## listen address and rpc address should be the ip_addreess of host while the seeds are the ip address of any two of three nodes.
# vi /etc/dse/cassandra/cassandra.yaml
# listen_address: 192.168.3.100
# rpc_address: 192.168.3.100
# - seeds: "192.168.3.100,192.168.3.100"

