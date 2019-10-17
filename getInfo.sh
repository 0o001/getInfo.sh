echo "Computer Name: $(hostname)"
echo -e "\nUser: $(whoami)"
echo "IP Address: $(hostname -I)"
echo "Operating System: $(uname -s -r -m)"
echo "Screen: $(xdpyinfo  | grep 'dimensions:' | cut -d ' ' -f 7)"
echo -e "\nCPU Core: $(cat /proc/cpuinfo | grep processor | wc -l)"
echo "CPU Model: $(cat /proc/cpuinfo | grep -m 1 'model name' | cut -d ':' -f 2 | xargs)"
echo "RAM: $(free -m | cut -d ' ' -f 12 | xargs) MB"
echo "Motherboard: $(sudo dmidecode -t 2 | grep 'Manufacturer' | cut -d ':' -f 2 | xargs) $(sudo dmidecode -t 2 | grep 'Product Name' | cut -d ':' -f 2 | xargs)"
echo -e "\nDisplay Screen:"
echo "$(lspci | grep -i --color 'vga\|3d\|2d' | cut -d ':' -f 3 | cut -c 2-)"
echo -e "\nDisks:"
echo "$(hwinfo --block --short)"
