# os

### How To Run Windows

+ Install Wsl
+ Install Properties
```bash
sudo apt install nasm
sudo apt istall make
```

- Build

```bash
cd bin
make all
```

+ Start 

```bash
cd bin
qemu-system-x86_64 ./boot.bin
```