# Assigning ASG to VM Network Interfaces

Each VM NIC was assigned to its corresponding ASG:

- vm-kspps → asg-kspps
- vm-rejestracja → asg-rejestracja
- vm-gabinet → asg-gabinet

This enables NSG rules to filter traffic based on application identity rather than IP addresses.
