## `maven:amazoncorretto`

```console
$ docker pull maven@sha256:b8f2c8e904fa9ece33efb0101500233c51414b993977dece13e048f796ed1172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `maven:amazoncorretto` - linux; amd64

```console
$ docker pull maven@sha256:fa0ca632f2dd44d5c63ed6186ded499abc5734daf3f6fd35e6ddfc0dfb0b8e01
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.1 MB (222099763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9248482659557f0a17ff6252a9d1981b5d4140612f0f325e3fa5754e797eb279`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 26 Jan 2023 22:20:04 GMT
ADD file:6ebab25a4f1aa82238dbf1a48f38d22c6421052d0d158cf88cbc1a4d01b5c5c1 in / 
# Thu, 26 Jan 2023 22:20:04 GMT
CMD ["/bin/bash"]
# Thu, 26 Jan 2023 23:09:27 GMT
ARG version=11.0.18.10-1
# Thu, 26 Jan 2023 23:09:50 GMT
# ARGS: version=11.0.18.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-11-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-11-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all
# Thu, 26 Jan 2023 23:09:50 GMT
ENV LANG=C.UTF-8
# Thu, 26 Jan 2023 23:09:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Thu, 26 Jan 2023 23:31:39 GMT
RUN yum install -y tar which gzip   && rm -rf /var/cache/yum/*   && yum clean all
# Thu, 26 Jan 2023 23:31:39 GMT
ARG MAVEN_VERSION=3.8.7
# Thu, 26 Jan 2023 23:31:39 GMT
ARG USER_HOME_DIR=/root
# Thu, 26 Jan 2023 23:31:39 GMT
ARG SHA=21c2be0a180a326353e8f6d12289f74bc7cd53080305f05358936f3a1b6dd4d91203f4cc799e81761cf5c53c5bbe9dcc13bdb27ec8f57ecf21b2f9ceec3c8d27
# Thu, 26 Jan 2023 23:31:39 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.8.7/binaries
# Thu, 26 Jan 2023 23:31:47 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.8.7/binaries MAVEN_VERSION=3.8.7 SHA=21c2be0a180a326353e8f6d12289f74bc7cd53080305f05358936f3a1b6dd4d91203f4cc799e81761cf5c53c5bbe9dcc13bdb27ec8f57ecf21b2f9ceec3c8d27 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 26 Jan 2023 23:31:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 26 Jan 2023 23:31:47 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 26 Jan 2023 23:31:47 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 26 Jan 2023 23:31:47 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 26 Jan 2023 23:31:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 26 Jan 2023 23:31:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:1e78b99dd1fd1031c6513834c4b5f594fa3cec5d06cdeb4b65ee104180bc0d4c`  
		Last Modified: Thu, 26 Jan 2023 20:44:53 GMT  
		Size: 62.3 MB (62341068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7c1044cf5aac0391975a9b7b11734d75476d2d947b8388a9b7023c77207e04`  
		Last Modified: Thu, 26 Jan 2023 23:13:53 GMT  
		Size: 147.8 MB (147783275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609ddcefa0337304b069aad9c5eac3d8207751e639066f3d3bdfbb6ac2ce67a1`  
		Last Modified: Thu, 26 Jan 2023 23:34:30 GMT  
		Size: 3.6 MB (3623056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e46945f4cd8ef410f803998be53af51d7ef1f27be810fb355a7086d8386c1d`  
		Last Modified: Thu, 26 Jan 2023 23:34:29 GMT  
		Size: 8.4 MB (8351154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c60cd18490a892a80afa312639557bf3c5a63214a4a453be75031cf896ad96c`  
		Last Modified: Thu, 26 Jan 2023 23:34:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a2b197863dc777fad355a8f29645b40f3e2bf6c0f6c293d6dca08aa6e652b8`  
		Last Modified: Thu, 26 Jan 2023 23:34:29 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:e35edb039c297b143f6af961eaa39f95d3798464982774329560cb6ab5d9e693
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.9 MB (220898738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0b87b52c3539624e26ae6b02a9adee9452b5b763e337686c8f7710f9a4c79c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 26 Jan 2023 22:39:30 GMT
ADD file:1b056f516caefc99e89cee1ffa2d3b98a54ec5756d3c54b0b1c75c6ddfa9e1ae in / 
# Thu, 26 Jan 2023 22:39:31 GMT
CMD ["/bin/bash"]
# Thu, 26 Jan 2023 22:56:35 GMT
ARG version=11.0.18.10-1
# Thu, 26 Jan 2023 22:56:57 GMT
# ARGS: version=11.0.18.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-11-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-11-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all
# Thu, 26 Jan 2023 22:56:59 GMT
ENV LANG=C.UTF-8
# Thu, 26 Jan 2023 22:56:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Thu, 26 Jan 2023 23:23:41 GMT
RUN yum install -y tar which gzip   && rm -rf /var/cache/yum/*   && yum clean all
# Thu, 26 Jan 2023 23:23:41 GMT
ARG MAVEN_VERSION=3.8.7
# Thu, 26 Jan 2023 23:23:41 GMT
ARG USER_HOME_DIR=/root
# Thu, 26 Jan 2023 23:23:41 GMT
ARG SHA=21c2be0a180a326353e8f6d12289f74bc7cd53080305f05358936f3a1b6dd4d91203f4cc799e81761cf5c53c5bbe9dcc13bdb27ec8f57ecf21b2f9ceec3c8d27
# Thu, 26 Jan 2023 23:23:41 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.8.7/binaries
# Thu, 26 Jan 2023 23:23:46 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.8.7/binaries MAVEN_VERSION=3.8.7 SHA=21c2be0a180a326353e8f6d12289f74bc7cd53080305f05358936f3a1b6dd4d91203f4cc799e81761cf5c53c5bbe9dcc13bdb27ec8f57ecf21b2f9ceec3c8d27 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 26 Jan 2023 23:23:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 26 Jan 2023 23:23:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 26 Jan 2023 23:23:46 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 26 Jan 2023 23:23:46 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 26 Jan 2023 23:23:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 26 Jan 2023 23:23:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f211bebb41ee40fd8a6c26d9c71d47a936d9684219f14a2679e8f57c07bb49b6`  
		Last Modified: Thu, 26 Jan 2023 22:40:24 GMT  
		Size: 64.0 MB (63964642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1498c128e70a4b79984b9f52bd168acfbcb6e1318282afc1fb5d90e383b01164`  
		Last Modified: Thu, 26 Jan 2023 22:59:23 GMT  
		Size: 144.9 MB (144939714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889496bfd853a2669bda0653788be5704b259170e72a42dbd1072190155274e4`  
		Last Modified: Thu, 26 Jan 2023 23:25:45 GMT  
		Size: 3.6 MB (3641983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8dd86115fdb995727e1966c2e41766567332e590b8b8d00d1fdd9e64d167c9`  
		Last Modified: Thu, 26 Jan 2023 23:25:45 GMT  
		Size: 8.4 MB (8351187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c243e845bf0e03be771631400f71daa88108760dccc206a6718fc4cf949b12ca`  
		Last Modified: Thu, 26 Jan 2023 23:25:44 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d117950e49b8d753c1968e2a0d22da3dfa59273f256d6ac16a7160efe3a18900`  
		Last Modified: Thu, 26 Jan 2023 23:25:44 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
