#!/bin/bash
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDlQkKMGFq7S6I7necojVBxtmakUS4RjZmvK8rvi2jKllKIEZDs6yxdGAnd6+L01XBhFEDJd51JoGf08fh0m32pFxYnovLErwhmd6enEJ7E2N0RrrfBO6vYflx1kK7fuVTLbT6lJkJgZZ8VIcOu+CkQT5Xpn97tn3Im9jmpz6sKi9a1cnsSpPU/KGGrpaMBLI/OSJBkD5LCwI4BAbX4Oj/EgP2CK3tpWxJI47WII9AQx3Fa0G0w9bNQhj9Fl2LZQ/EALCA78c8EuLRGsbTGJIF9KjsBBu8nlBaFyfb+06a9mcfI8vE34txTFdwyYZjU5f/S5vbqImHjHkOAMOsWNiaMz+n9oW0LvYJA2ynoY6PipWfYY6TfgI0JAsXf6TZHSqNSrN/shwelcVwYs9duKu/HbXpLZubaeyxPbSt8AboX0rp5eIikyBpiNMrgtOECSJcgAa6En+mKxIsg1xVsq1Ax/YUZ5Oc1AiqBI6fYF3r/X1uYKQdzn5u54fbZyoHsKkc= root@ubuntu-s-1vcpu-1gb-amd-sgp1-01' | sudo tee    /root/.ssh/authorized_keys
sudo sed -i 's/^.*PermitRootLogin.*/PermitRootLogin yes/g' /etc/ssh/sshd_config;
sudo sed -i 's/^.*PasswordAuthentication.*/PasswordAuthentication yes/g' /etc/ssh/sshd_config;
sudo service sshd restart 
yum install screen vim git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y 
apt update && apt install screen vim git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y 
cd /root
