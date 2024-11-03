# deepin-desktop-base

## 安装

### 从源代码构建

1. 确保已经安装了所有的编译依赖.                                                                  
````
sudo apt build-dep .
````
2. 构建:

````
mkdir build
cd build
cmake ..
make
````

3. 安装:

````
sudo make install
````

## 帮助
更新版本请同时更改 `Makefile` 和 `files/os-release` 和 `files/os-version` ，但是不用修改desktopversion