# empty-cmake-project
空白的cmake项目

## 目录结构

```bash
.
├── CMakeLists.txt
├── README.md
├── build
├── include
├── src
└── tools.sh
```

* **src**：存放源文件

* **include**：存放头文件

* **tools.sh**：包含一些实用命令

## 项目使用方法

1. 修改**CMakeLists.txt**中的项目名称（eg：`project(hello_cmake)`）
2. 把源文件放进**src**，头文件放进**include**
3. 运行`./tools.sh build`开始编译，编译后会在`build/bin`目录下生成可执行程序

## 小工具

编译

```bash
./tools.sh build
```

删除所有与GitHub有关内容，变成本地CMake工程

```bash
./tools.sh init
```

清理build文件夹，保留bin下生成的可执行文件

```bash
./tools.sh clean
```

运行生成的可执行文件

```bash
./tools.sh run
```