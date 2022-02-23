# 网上家具城说明文档

## 一、目录说明

- `SHOP.rar`压缩包内容为项目的结构和源码；

- `shop.sql`为MySQL创建数据表需要用到的sql语句；

- `photo.rar`中存储了项目需要用到的一些家具的示例图片。



## 二、项目部署

1. 数据库信息为MySQL数据库：
   - username：root 
   - password：123456 
   - database source：shop

2. 导入项目

   - 解压下载的包，打开eclipse，右键右侧项目目录空白处，点击import

   - 选择 General>Existing projects into Workspace

   - 点击Next>点击Browse..选择刚下载的项目

   - 勾选下面Options中的Copy projects into workspace 然后点击Finish(项目导入后会有小红叉，先不用管)

3. 处理导入后部分文件报错

   - 右键导入的项目选择Build path>configure build path
   - 自行remove不需要的错误的资源，add需要用到的资源

   - 然后点击Add Library..>选择JRE System Library >点击Next >点击 Finish

   - 选中Apache Tomcat 然后点击右边的 Remove

   - 然后点击Add Library..>选择Server Runtime >点击Next >选中你自己的tomcat >点击 Finish

   好了，这时候正常的话项目上的小红叉应该已经没有了，项目已经成功导入了。



## 三、更改文件中JDBC连接信息

- 若使用MySQL数据库： 
  1. 更改连接数据库的用户和密码为自己的
  2. 测试数据库连接

- 若使用其他数据库：
  1. 将数据库驱动名更改位自己所用数据库的驱动名，
  2. 替换数据库连接的驱动包，本项目只提供Mysql的驱动包，其他数据库驱动jar包请自行下载
  3. 测试数据库连接



作者：

张	楠 201906061925

沈	颖 201906062020

虞璐璐 201906062125		