# Variables go here

resource_group = "NAWestRegion"
hostname = "basiclab2"
location = "westus"

# Use this command to see available regions
# az account list-locations --output table

# Use this command to check if Standard_A0 VM is available
# Where "Standard_A0" is the VM type
# If command returns blank, choose a different region 
# az vm list-skus -l westus --output table |grep Standard_A0

subscription_id = "0f3ce75a-4c1c-4d39-a3f2-859abe475d8e"
region = "westus"
cheap_vm = "Standard_b2s"
expensive_vm = "Standard_D2s_v3"

