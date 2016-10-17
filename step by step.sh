1.	Create a AWS account if you don’t have one.
2.	Login AWS and create three EC2 instance with the free tier setup.
3.	Assign the same security key pem file for the three EC2 instances.
4.	Install csshX on your MAC, not available for Windows, use ssh instead for Windows.
a.	Prepare a ip address file in MAC with the list of ip addrss of the three instance.
b.	Connect the three instances with csshX.
5.	Run the installation scripts. 
6.	Wait for the finish of installation.
7.	ps aux | grep cass to check if the Cassandra instances are up. If no, go on
8.	Edit the Cassandra.yaml
9.	Change the Cluster name to your preferred name. 
10.	Change the rpc and listener ip address to the ip address of local host
11.	Change seed address list (two out of the three nodes) 
12.	Service dse start
13.	Nodetool status
14.	Cqlsh ip_address
15.	Create keyspace 
16.	Use keyspace
17.	Add tables
18.	Copy csv file into the tables
19.	Run simple query with where clause on the key fields.
20.	Run simple query with where clause on non-key fields.
