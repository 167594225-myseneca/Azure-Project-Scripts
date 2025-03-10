# Date: 2021-04-10
# source logos
source  ./logos.sh
# variable declaration

# //////////////////////////////////////////////////////////////
# Update the lines that are specific to your network 
# /////////////////////////////////////////////////////////////

RG_NAME="Student-RG-1202197"     # your student group
LOCATION="canadaeast"    # your location
ID="74"          #unique ID assigned to you

Student_vnet_name="Student-1202197-vnet"
Student_vnet_address="10.18.76.0/24"
Client_Subnet_name="Virtual-Desktop-Client"
Client_Subnet_address="10.18.76.0/24"

# ---------------------------------------------------
# Networking - Virtual Networks
Router_vnet_name="Router-$ID"
Server_vnet_name="Server-$ID"

Router_vnet_address="192.168.$ID.0/24"
Server_vnet_address="172.17.$ID.0/24"

# ---------------------------------------------------
# Networking - Virtual Networks - Subnets 
declare -a Client_Subnet_list=("$Client_Subnet_name" "$Client_Subnet_Address")
declare -a Router_Subnets_list=("SN1" "192.168.$ID.32/27" "SN2" "192.168.$ID.64/27" "SN3" "192.168.$ID.96/27" "SN4" "192.168.$ID.128/27")
declare -a Server_Subnets_list=("SN1" "172.17.$ID.32/27" "SN2" "172.17.$ID.64/27" "SN3" "172.17.$ID.96/27" "SN4" "172.17.$ID.128/27")

declare -a Router_Subnet_addresses=("192.168.$ID.32/27" "192.168.$ID.64/27" "192.168.$ID.96/27" "192.168.$ID.128/27")
declare -a Server_Subnet_addresses=("172.17.$ID.32/27" "172.17.$ID.64/27" "172.17.$ID.96/27" "172.17.$ID.128/27")

# ---------------------------------------------------
# Networking - Virtual Networks - Network Peerings
Peer_RT="Router${ID}-Student1202197"
Peer_TR="Student1202197-Router${ID}"
Peer_RS="Router${ID}-Server${ID}"
Peer_SR="Server${ID}-Router${ID}"
declare -a Peerings_list=("$Peer_RT" "$Peer_TR" "$Peer_RS" "$Peer_SR")

# ---------------------------------------------------
# Networking - Route Tables
RT_Name="RT-$ID"

# ---------------------------------------------------
# Networking - Route Tables - Routes
Route_to_Server="Route-to-Server"
Route_to_Client="Route-to-Desktop"

declare -a Routes_list=("$Route_to_Server" "$Route_to_Client")

Virtual_Appliance="192.168.$ID.36"
Server_Route_Address="172.17.$ID.32/27"
Client_Route_address="$Client_Subnet_address"

Server_Subnet_association="SN1"
Client_Subnet_association="$Client_Subnet_name"
