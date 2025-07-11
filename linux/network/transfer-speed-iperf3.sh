# The script measures the network transfer speed between two hosts using iperf3.
# One command will run the server, and the other will run the client.

# On the server side, run the following command:
# Pick a port that is available, enabled in the firewall, and not in use
iperf3 --server --port <port_number>

# On the client side, run the following command:
# Replace <server_ip_address> with the IP address of the server
# Replace <port_number> with the port number used by the server
# Ensure that the server is reachable and the port is open
iperf3 --client <server_ip_address> --port <port_number>

# The client will display the transfer speed in Mbps or Gbps, depending on the network speed.
# You can also add the -t option to specify the duration of the test in seconds.
# For example, to run the test for 10 seconds:
iperf3 --client <server_ip_address> --port <port_number> -t 10

# Example output below:
#-----------------------------------------------------------
#Server listening on 5432
#-----------------------------------------------------------
#Accepted connection from 10.1.0.169, port 56284
#[  5] local 10.0.0.155 port 5432 connected to 10.1.0.169 port 56294
#[ ID] Interval           Transfer     Bitrate
#[  5]   0.00-1.04   sec  48.1 MBytes   387 Mbits/sec
#[  5]   1.04-2.04   sec  71.2 MBytes   599 Mbits/sec
#[  5]   2.04-3.04   sec  71.2 MBytes   599 Mbits/sec
#[  5]   3.04-4.04   sec  71.2 MBytes   599 Mbits/sec
#[  5]   4.04-5.03   sec  71.2 MBytes   599 Mbits/sec
#[  5]   5.03-6.03   sec  71.2 MBytes   599 Mbits/sec
#[  5]   6.03-7.03   sec  71.2 MBytes   599 Mbits/sec
#[  5]   7.03-8.03   sec  71.2 MBytes   599 Mbits/sec
#[  5]   8.03-9.03   sec  71.2 MBytes   599 Mbits/sec
#[  5]   9.03-10.02  sec  71.2 MBytes   598 Mbits/sec
#[  5]  10.02-20.04  sec  3.59 MBytes  3.00 Mbits/sec
#- - - - - - - - - - - - - - - - - - - - - - - - -
#[ ID] Interval           Transfer     Bitrate
#[  5]   0.00-20.04  sec   693 MBytes   290 Mbits/sec                  receiver
#-----------------------------------------------------------
#Server listening on 5432
#-----------------------------------------------------------
#Accepted connection from 10.0.0.123, port 59062
#[  5] local 10.0.0.155 port 5432 connected to 10.0.0.123 port 59072
#[ ID] Interval           Transfer     Bitrate
#[  5]   0.00-1.00   sec   476 MBytes  4.00 Gbits/sec
#[  5]   1.00-2.00   sec   496 MBytes  4.16 Gbits/sec
#[  5]   2.00-3.00   sec   496 MBytes  4.16 Gbits/sec
#[  5]   3.00-4.00   sec   496 MBytes  4.16 Gbits/sec
#[  5]   4.00-5.00   sec   496 MBytes  4.16 Gbits/sec
#[  5]   5.00-6.00   sec   496 MBytes  4.16 Gbits/sec
#[  5]   6.00-7.00   sec   496 MBytes  4.16 Gbits/sec
#[  5]   7.00-8.00   sec   496 MBytes  4.16 Gbits/sec
#[  5]   8.00-9.00   sec   496 MBytes  4.16 Gbits/sec
#[  5]   9.00-10.00  sec   496 MBytes  4.16 Gbits/sec
#[  5]  10.00-10.05  sec  23.1 MBytes  4.16 Gbits/sec
#- - - - - - - - - - - - - - - - - - - - - - - - -
#[ ID] Interval           Transfer     Bitrate
#[  5]   0.00-10.05  sec  4.85 GBytes  4.15 Gbits/sec                  receiver
