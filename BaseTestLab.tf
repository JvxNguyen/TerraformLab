# Test Code goes here

# Test Code goes here

# Initializing Variables

variable "region"             {}
variable "subscription_id"    {}
variable "cheap_vm"     {}
variable "expensive_vm"     {}
variable "resource_group" {}

# Configure provider as Microsoft Azure

provider "azurerm" {
    subscription_id = "$var.subscription_id"
}

# Let's make a resource group!
resource "azurerm_resource_group" "tenent" {
    name = "${var.resource_group}"
    location = "westus"
    tags {
        environemt = "basiclab"
    }
}

# Network Security Group
resource "azurerm_network_security_group" "default_NSG" {
    name = "default_NSG"
    location = "var.region"
    resource_group_name = "${var.resource_group}"
    security_rule {
        name                       = "SSH"
        priority                   = 1001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "3389"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }
}
