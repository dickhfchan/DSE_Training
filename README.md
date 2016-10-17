# DSE_Training

# 

# Install csshX
http://macappstore.org/csshx/

# Prepare the ip_address_list file
vi ip_address_list


# need a absolute path for the pem file
csshX --login ubuntu --hosts ip_address_list --ssh_args " -i /Users/dickhfchan/cassandra/timingpower-kp.pem"



