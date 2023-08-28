# 使用官方的OpenJDK 17镜像作为基础镜像
FROM adoptopenjdk/openjdk17:alpine-jre

# 设置工作目录
WORKDIR /app

# 复制编译好的JAR文件到镜像中
COPY target/Test-0.0.1-SNAPSHOT.jar.jar app.jar

# 暴露应用程序监听的端口（根据您的Spring Boot应用程序配置）
EXPOSE 8090

# 启动应用程序
CMD ["java", "-jar", "app.jar"]
