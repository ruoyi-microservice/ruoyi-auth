# 基础镜像
FROM  openjdk:8-jre
# author
LABEL maintainer.0=ruoyi maintainer.1=oscaner1997@gmail.com

# 挂载目录
VOLUME /home/ruoyi
# 创建目录
RUN mkdir -p /home/ruoyi
# 指定路径
WORKDIR /home/ruoyi
# 复制jar文件到路径
COPY ./target/ruoyi-auth.jar /home/ruoyi/ruoyi-auth.jar
# 启动认证服务
ENTRYPOINT ["java","-jar","ruoyi-auth.jar"]
