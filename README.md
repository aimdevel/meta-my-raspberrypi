# meta-my-raspberrypi

## How to use
### environment
- OS: ubuntu 20.04
- yocto: kirkstone

### install packages
1. install packages for yocto build.
```
$ sudo apt install gawk wget git diffstat unzip texinfo gcc build-essential chrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev python3-subunit mesa-common-dev zstd liblz4-tool file locales
$ sudo locale-gen en_US.UTF-8
```

2. install kas.
```
$ pip3 install --user kas
```

### setup and build
```
$ git clone https://github.com/aimdevel/meta-my-raspberrypi.git
$ kas build kas-my-raspi.yml
```
 