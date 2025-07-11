# The following script measures the round-trip time (RTT) between two hosts using ncat.
# One command will run the server, and the other will run the client.

# On the server side, run the following command:
# Pick a port that is available, enabled in the firewall, and not in use
# The --keep-open option allows the server to keep listening for multiple connections.
ncat --listen <port_number> --keep-open 

# On the client side, run the following command:
# Replace <server_ip_address> with the IP address of the server
# Replace <port_number> with the port number used by the server
# Ensure that the server is reachable and the port is open
# The client will send a message and wait for a response to measure the RTT.
time echo "ping" | ncat <server_ip_address> <port_number>

# The following script will execute the ping command 10 times
# to measure the average round-trip time.
for i in {1..10}; do
  echo "Ping attempt $i:"
  time echo "ping" | ncat <server_ip_address> <port_number>
done