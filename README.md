<h1 align="center" id="title">Spring-boot + Docker</h1>

<p id="description">This Application will create a docker image for a spring boot application. then we'll deploy and manage the docker images on docker hub.</p>

<h2>🧐 Features</h2>

Here are some of the project's best features:

*   Build Docker Image
*   Push docker image to docker hub
*   Deploy the docker image locally
*   swagger UI to test the REST api endpoints

<h2>🛠️ Installation Steps:</h2>

<p>1. Build Project</p>

```
mvn clean install -Dmaven.test.skip=true
```

<p>2. Create a dockerfile</p>

```
FROM openjdk:17-jdk-alpine EXPOSE 8080 ADD target/springboot-docker-0.0.1-SNAPSHOT.jar springboot-docker.jar ENTRYPOINT ["java""-jar""/springboot-docker.jar"]
```

<p>3. Build docker image</p>

```
docker build -t springboot-docker:latest .
```

<p>4. Docker run</p>

```
docker run -d -p 8080:8080 springboot-docker
```

<p>5. Docker container stop</p>

```
docker stop 
```

<p>6. Docker login</p>

```
docker login -u harikanure007@gmail.com -p XXXX docker.io
```

<p>7. Docker image tag</p>

```
docker tag springboot-docker:latest harikanure007/springboot-docker
```

<p>8. Docker push</p>

```
docker push harikanure007/springboot-docker
```

<p>9. Docker pull image</p>

```
docker pull harikanure007/springboot-docker
```

<p>10. Docker run</p>

```
docker run -d -p 8080:8080 harikanure007/springboot-docker
```
