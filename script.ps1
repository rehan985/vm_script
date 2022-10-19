.\VBoxManage.exe createvm --name kali --ostype Debian_64 --register 

.\VBoxManage.exe modifyvm kali --ioapic on  

.\VBoxManage.exe modifyvm kali --cpus 1 --memory 1024 --vram 128 

.\VBoxManage.exe modifyvm kali --nic2  natnetwork  

.\VBoxManage.exe createhd --filename D:\ubuntu/kali/kali.vdi --size 80000 --format VDI 

.\VBoxManage.exe storagectl kali --name "SATA Controller" --add sata --controller IntelAhci 

.\VBoxManage.exe storageattach kali --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium  D:\ubuntu/kali/kali.vdi 

.\VBoxManage.exe storagectl kali --name "IDE Controller" --add ide --controller PIIX4 

.\VBoxManage.exe storageattach kali --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium  D:\kali-linux-2021.1-installer-amd64.iso 

.\VBoxManage.exe  modifyvm kali --boot1 dvd --boot2 disk --boot3 none --boot4 none 

.\VBoxManage.exe  modifyvm kali --vrde on 

.\VBoxManage.exe modifyvm kali --vrdemulticon on --vrdeport 10001 

.\VBoxHeadless.exe --startvm kali 

 
