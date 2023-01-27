## `maven:3-amazoncorretto-17`

```console
$ docker pull maven@sha256:7e0da8896fc6b32ee3d39d5e9deda9b5a8f8909125c8e0084a6dd642543a7393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `maven:3-amazoncorretto-17` - linux; amd64

```console
$ docker pull maven@sha256:9994c3e4d1d4baab0ba69a5b0cde2efd1bfc889baa532435a1f2edc9edf9f677
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.3 MB (226267759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd0b8dc4ce6204d5b029b62a3a5ecceb6ae5718fe55f5e8416294e4b82bac2e6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 26 Jan 2023 22:20:04 GMT
ADD file:6ebab25a4f1aa82238dbf1a48f38d22c6421052d0d158cf88cbc1a4d01b5c5c1 in / 
# Thu, 26 Jan 2023 22:20:04 GMT
CMD ["/bin/bash"]
# Thu, 26 Jan 2023 23:10:07 GMT
ARG version=17.0.6.10-1
# Thu, 26 Jan 2023 23:10:31 GMT
# ARGS: version=17.0.6.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all
# Thu, 26 Jan 2023 23:10:32 GMT
ENV LANG=C.UTF-8
# Thu, 26 Jan 2023 23:10:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 26 Jan 2023 23:32:02 GMT
RUN yum install -y tar which gzip   && rm -rf /var/cache/yum/*   && yum clean all
# Thu, 26 Jan 2023 23:32:03 GMT
ARG MAVEN_VERSION=3.8.7
# Thu, 26 Jan 2023 23:32:03 GMT
ARG USER_HOME_DIR=/root
# Thu, 26 Jan 2023 23:32:03 GMT
ARG SHA=21c2be0a180a326353e8f6d12289f74bc7cd53080305f05358936f3a1b6dd4d91203f4cc799e81761cf5c53c5bbe9dcc13bdb27ec8f57ecf21b2f9ceec3c8d27
# Thu, 26 Jan 2023 23:32:03 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.8.7/binaries
# Thu, 26 Jan 2023 23:32:09 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.8.7/binaries MAVEN_VERSION=3.8.7 SHA=21c2be0a180a326353e8f6d12289f74bc7cd53080305f05358936f3a1b6dd4d91203f4cc799e81761cf5c53c5bbe9dcc13bdb27ec8f57ecf21b2f9ceec3c8d27 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 26 Jan 2023 23:32:09 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 26 Jan 2023 23:32:09 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 26 Jan 2023 23:32:09 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 26 Jan 2023 23:32:09 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 26 Jan 2023 23:32:09 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 26 Jan 2023 23:32:10 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:1e78b99dd1fd1031c6513834c4b5f594fa3cec5d06cdeb4b65ee104180bc0d4c`  
		Last Modified: Thu, 26 Jan 2023 20:44:53 GMT  
		Size: 62.3 MB (62341068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfd36dfebc232a4f5bf45dbc71ccf768dfdaaac49a08bfd23f83263014fa104`  
		Last Modified: Thu, 26 Jan 2023 23:14:31 GMT  
		Size: 151.9 MB (151945242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cae41a2223ae86f523b7b1a4a255a7b050e4509da7a0f4b83ac35487e8d868c`  
		Last Modified: Thu, 26 Jan 2023 23:34:49 GMT  
		Size: 3.6 MB (3629067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0057685d912d1e9f8207a5c4990e4d4e4ea81b25fb7346dd74e91fe863b89c92`  
		Last Modified: Thu, 26 Jan 2023 23:34:49 GMT  
		Size: 8.4 MB (8351175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b9d20748786d81f452f5a0f9b61cc931a05d05c3d37157e2424083c1733f63`  
		Last Modified: Thu, 26 Jan 2023 23:34:48 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aaa1976f01550cfa1b6ec4d5d438de4461285c64015ab410a20570313c37acf`  
		Last Modified: Thu, 26 Jan 2023 23:34:48 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-amazoncorretto-17` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:5ff553c921e26a254ffff03f1ca158c86f0520ac8197306ce447059a5718f720
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226422059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f310a8dc09835be1f332026fbaa5096c0879a41c838bccebc0e09882b4059344`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 26 Jan 2023 22:39:30 GMT
ADD file:1b056f516caefc99e89cee1ffa2d3b98a54ec5756d3c54b0b1c75c6ddfa9e1ae in / 
# Thu, 26 Jan 2023 22:39:31 GMT
CMD ["/bin/bash"]
# Thu, 26 Jan 2023 22:57:08 GMT
ARG version=17.0.6.10-1
# Thu, 26 Jan 2023 22:57:28 GMT
# ARGS: version=17.0.6.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all
# Thu, 26 Jan 2023 22:57:30 GMT
ENV LANG=C.UTF-8
# Thu, 26 Jan 2023 22:57:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 26 Jan 2023 23:23:57 GMT
RUN yum install -y tar which gzip   && rm -rf /var/cache/yum/*   && yum clean all
# Thu, 26 Jan 2023 23:23:58 GMT
ARG MAVEN_VERSION=3.8.7
# Thu, 26 Jan 2023 23:23:58 GMT
ARG USER_HOME_DIR=/root
# Thu, 26 Jan 2023 23:23:58 GMT
ARG SHA=21c2be0a180a326353e8f6d12289f74bc7cd53080305f05358936f3a1b6dd4d91203f4cc799e81761cf5c53c5bbe9dcc13bdb27ec8f57ecf21b2f9ceec3c8d27
# Thu, 26 Jan 2023 23:23:58 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.8.7/binaries
# Thu, 26 Jan 2023 23:23:59 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.8.7/binaries MAVEN_VERSION=3.8.7 SHA=21c2be0a180a326353e8f6d12289f74bc7cd53080305f05358936f3a1b6dd4d91203f4cc799e81761cf5c53c5bbe9dcc13bdb27ec8f57ecf21b2f9ceec3c8d27 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 26 Jan 2023 23:23:59 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 26 Jan 2023 23:23:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 26 Jan 2023 23:23:59 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 26 Jan 2023 23:24:00 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 26 Jan 2023 23:24:00 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 26 Jan 2023 23:24:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f211bebb41ee40fd8a6c26d9c71d47a936d9684219f14a2679e8f57c07bb49b6`  
		Last Modified: Thu, 26 Jan 2023 22:40:24 GMT  
		Size: 64.0 MB (63964642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b913cbee33a26dc12ce5eed0d93c237af0e16f92c90a91fce67ab0eb531eaf42`  
		Last Modified: Thu, 26 Jan 2023 22:59:52 GMT  
		Size: 150.5 MB (150469506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf776758e51826e000084fe37f568ece40be31e4b14cc1a1cb125ce1ce53f1d`  
		Last Modified: Thu, 26 Jan 2023 23:26:05 GMT  
		Size: 3.6 MB (3635530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec3b6e2d9a8b84653285dc0820748caf4d30cecbeba5b6826ed73b16f412346`  
		Last Modified: Thu, 26 Jan 2023 23:26:05 GMT  
		Size: 8.4 MB (8351169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2bb0f005b472b4273fbc243a68d90e58a0ff48d8aae3b3fab922fbe80612de`  
		Last Modified: Thu, 26 Jan 2023 23:26:05 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a39ae914c2066b2bab18de5721c3fde8df0acf5f3ac85244aa7f4255d5f205`  
		Last Modified: Thu, 26 Jan 2023 23:26:04 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
