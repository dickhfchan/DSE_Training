# DSE_Training

# 

# Install csshX
http://macappstore.org/csshx/

# Prepare the ip_address_list file
vi ip_address_list

# List the ip address of the nodes in ip_address_list file 


# need a absolute path for the pem file
csshX --login ubuntu --hosts ip_address_list --ssh_args " -i /Users/dickhfchan/cassandra/timingpower-kp.pem"

# Setup the Sync of the git hub files into one of the nodes
git clone https://github.com/dickhfchan/DSE_Training.git

# Sync the files under the DSE_Training folder
git pull

# two csv files provide the sample data for two tables.



