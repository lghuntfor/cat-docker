# cat-docker

#### 介绍
1. cat应用监控系统的docker镜像的快速构建   
2. 快速搭建Cat服务端程序
3. [查看官方文档](https://github.com/dianping/cat/wiki/intro)


#### 说明
jetty/webapps下的cat.war是已经构建好的cat程序包, 版本是3.0.0


#### 获取代码
```
1. Github: git clone https://github.com/lghuntfor/cat-docker.git
2. Gitee: git clone https://gitee.com/lghuntfor/cat-docker.git
```


#### 使用说明 
1. 执行数据库脚本文件： db/CatApplication.sql
2. 修改client.xml与datasource.xml中的配置
3. 执行install-source.sh文件，将client.xml与datasource.xml放入指定目录
```
./install-source.sh
```
4. 构建镜像:
```
./build.sh
```
5. 运行容器
```
docker run -d --restart=always --name cat-server -p 2280:2280 -p 2281:2281 -v /data/appdatas:/data/appdatas 
\ -v /data/applogs:/data/applogs  lghuntfor/cat:3.0.0 
```
6. 访问: http://ip:2281/cat


#### 直接使用现成docker镜像
直接使用docker hub中构建好的镜像部署cat

```
docker pull lghuntfor/cat:3.0.0
或 docker pull lghuntfor/cat:3.0.0

启动容器: 
docker run -d --restart=always --name cat-server -p 2280:2280 -p 2281:2281 -v /data/appdatas:/data/appdatas 
\ -v /data/applogs:/data/applogs  lghuntfor/cat:3.0.0
