## `maven:3-amazoncorretto-11-debian`

```console
$ docker pull maven@sha256:09698cc27e9969d9b27b0224165d4733276718a5678d0b5c38933fcdb38771fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-debian` - linux; amd64

```console
$ docker pull maven@sha256:39cc1fe85a321cbeb3c9c6e19b9caf83badccf6c5f69f2c879db88667ae091e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.7 MB (242718102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9c13bcc9342e9c56f6b3267c21fd64aa0bc07464eed5a1d0e13e74464e0de2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 02:18:13 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-11-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 02:18:13 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 02:18:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Tue, 27 Oct 2026 02:18:13 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 27 Oct 2026 02:18:13 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:18:13 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:18:13 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 27 Oct 2026 02:18:13 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Oct 2026 02:18:13 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 27 Oct 2026 02:18:13 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 02:18:13 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 27 Oct 2026 02:18:13 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Oct 2026 02:18:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Oct 2026 02:18:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Oct 2026 02:18:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0034ba5dfd3cb7e31cd79310f392b7a2ff20c02fe43f0bf042dcf41e126eae51`  
		Last Modified: Tue, 27 Oct 2026 02:18:34 GMT  
		Size: 202.8 MB (202814503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a39ba49041dc82057f97f9ed703069b203c6ec3775423e5dd442664931cf50dd`  
		Last Modified: Tue, 27 Oct 2026 02:18:30 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f0af8785949361ce768af059b69eaa54ba37da4875cd44bd02a15ea3924fce`  
		Last Modified: Tue, 27 Oct 2026 02:18:30 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b64ea7dfd51d3336d150494cdbb71f9cf62af776767cddef8cf0b936606ca4`  
		Last Modified: Tue, 27 Oct 2026 02:18:30 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-debian` - unknown; unknown

```console
$ docker pull maven@sha256:363c50c1dbfbd0d48e681fa9586b063c2c4ab09f8321f8a519250c2a9eaae6b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3137291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fee7f92db8a299197373dcf5f90e5061733e48853f87accceff583ab71dd599`

```dockerfile
```

-	Layers:
	-	`sha256:8afde221871f0349eafd3a9962262aba46966c679c071f24d9ce260d77d99030`  
		Last Modified: Tue, 27 Oct 2026 02:18:30 GMT  
		Size: 3.1 MB (3119758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fbd56a3e821d90b59666beaf0418748ad5b96427b7919ab736160b8ba2e48f4`  
		Last Modified: Tue, 27 Oct 2026 02:18:30 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-debian` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:e50ae00e74adba691281ec9f848234c8378f1fea837f8c8de0c1659fd6f4f3df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.1 MB (240149769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d03f8e7a55e73517bf5d84a9f8e342bf1049c008cfd2fecfcef819072646f7`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 02:15:45 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-11-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 02:15:45 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 02:15:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Tue, 27 Oct 2026 02:15:45 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 27 Oct 2026 02:15:45 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:15:45 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:15:45 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 27 Oct 2026 02:15:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Oct 2026 02:15:45 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 27 Oct 2026 02:15:45 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 02:15:46 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 27 Oct 2026 02:15:46 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Oct 2026 02:15:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Oct 2026 02:15:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Oct 2026 02:15:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335016081079477515fb0dfe3016a2bc6085d76971f922aef59ca8ab645d2a43`  
		Last Modified: Tue, 27 Oct 2026 02:16:09 GMT  
		Size: 199.9 MB (199889268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af46e066274a8c3ac2972c34a7e3418cd039f9a1ad76bdaca529af496106241d`  
		Last Modified: Tue, 27 Oct 2026 02:16:05 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:222ab935060f3c27f49d61d2201496af846588e8608e7b91850033db243d1540`  
		Last Modified: Tue, 27 Oct 2026 02:16:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd41b3bb88dec7b554268f6327a081875b689098dcee0d21ecb7e034249d9acb`  
		Last Modified: Tue, 27 Oct 2026 02:16:04 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-debian` - unknown; unknown

```console
$ docker pull maven@sha256:d888631c484c5f7d30ef6a146a6e1c84dd6146f4f2766e3b8b23069dabb38911
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3137751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:922bce13773403efa6c210f5fb0d4fde199e924330e8954274059c5a0b2a98eb`

```dockerfile
```

-	Layers:
	-	`sha256:1b9402ae7c3427bbb703d0c4e1ab4c595065b0149f529baba4a369fa9f8d793d`  
		Last Modified: Tue, 27 Oct 2026 02:16:04 GMT  
		Size: 3.1 MB (3120050 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:575c5183d966aa530f1e199e274a0029f3e0be18612ca10507439ad94bb3b493`  
		Last Modified: Tue, 27 Oct 2026 02:16:04 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json
