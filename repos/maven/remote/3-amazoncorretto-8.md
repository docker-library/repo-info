## `maven:3-amazoncorretto-8`

```console
$ docker pull maven@sha256:ec86ad98267c73eae1b7fb1bd0142723e4c9f05cc52f3466a548ce6f6f471e26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `maven:3-amazoncorretto-8` - linux; amd64

```console
$ docker pull maven@sha256:9a50a3562228bd6e8d3e97f72cbd09367895eb733b175e4676d114a68bc54f53
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.9 MB (149888020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:935014dd1d2a06749f6d2731434c15fdab766d68c28479d6698c644fcdb15a63`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 26 Jan 2023 22:20:04 GMT
ADD file:6ebab25a4f1aa82238dbf1a48f38d22c6421052d0d158cf88cbc1a4d01b5c5c1 in / 
# Thu, 26 Jan 2023 22:20:04 GMT
CMD ["/bin/bash"]
# Thu, 26 Jan 2023 23:08:43 GMT
ARG version=1.8.0_362.b08-1
# Thu, 26 Jan 2023 23:09:04 GMT
# ARGS: version=1.8.0_362.b08-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all
# Thu, 26 Jan 2023 23:09:05 GMT
ENV LANG=C.UTF-8
# Thu, 26 Jan 2023 23:09:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Thu, 26 Jan 2023 23:32:42 GMT
RUN yum install -y tar which gzip   && rm -rf /var/cache/yum/*   && yum clean all
# Thu, 26 Jan 2023 23:32:42 GMT
ARG MAVEN_VERSION=3.8.7
# Thu, 26 Jan 2023 23:32:42 GMT
ARG USER_HOME_DIR=/root
# Thu, 26 Jan 2023 23:32:42 GMT
ARG SHA=21c2be0a180a326353e8f6d12289f74bc7cd53080305f05358936f3a1b6dd4d91203f4cc799e81761cf5c53c5bbe9dcc13bdb27ec8f57ecf21b2f9ceec3c8d27
# Thu, 26 Jan 2023 23:32:42 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.8.7/binaries
# Thu, 26 Jan 2023 23:32:48 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.8.7/binaries MAVEN_VERSION=3.8.7 SHA=21c2be0a180a326353e8f6d12289f74bc7cd53080305f05358936f3a1b6dd4d91203f4cc799e81761cf5c53c5bbe9dcc13bdb27ec8f57ecf21b2f9ceec3c8d27 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 26 Jan 2023 23:32:48 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 26 Jan 2023 23:32:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 26 Jan 2023 23:32:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Thu, 26 Jan 2023 23:32:49 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 26 Jan 2023 23:32:49 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 26 Jan 2023 23:32:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 26 Jan 2023 23:32:49 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:1e78b99dd1fd1031c6513834c4b5f594fa3cec5d06cdeb4b65ee104180bc0d4c`  
		Last Modified: Thu, 26 Jan 2023 20:44:53 GMT  
		Size: 62.3 MB (62341068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb46b29d5999c10120c43bc672fe0da45f7b0f2b05f34230305ba537413f8a7`  
		Last Modified: Thu, 26 Jan 2023 23:13:11 GMT  
		Size: 75.6 MB (75566568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34a3fe1105ae480ed99937cdb4569b814504b67448aef2cbf523bdfe32c91b0`  
		Last Modified: Thu, 26 Jan 2023 23:35:10 GMT  
		Size: 3.6 MB (3628019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92be600339aed2da554f0d5230c41c8e8b1d09989af76d942dff61aee24c37d`  
		Last Modified: Thu, 26 Jan 2023 23:35:10 GMT  
		Size: 8.4 MB (8351154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fd294b91f87eb78a5e9b47046af9a1ebe80bba3d0173dfbc684f7f5f962e4b`  
		Last Modified: Thu, 26 Jan 2023 23:35:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f50b80df67cb641aad37de9dd60abdbf0ce4ab25a2f0e3795b4dc3bc613ff43`  
		Last Modified: Thu, 26 Jan 2023 23:35:10 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-amazoncorretto-8` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:8b72d71529026769ae5792afe82d5c2fcae1658ee3f05b3e7713a759437858e7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135537451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b3396f2f0ba3be7888f8ac75b51af1e6c9f1d8942c4ee2157983a862877a15a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 26 Jan 2023 22:39:30 GMT
ADD file:1b056f516caefc99e89cee1ffa2d3b98a54ec5756d3c54b0b1c75c6ddfa9e1ae in / 
# Thu, 26 Jan 2023 22:39:31 GMT
CMD ["/bin/bash"]
# Thu, 26 Jan 2023 22:56:10 GMT
ARG version=1.8.0_362.b08-1
# Thu, 26 Jan 2023 22:56:28 GMT
# ARGS: version=1.8.0_362.b08-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all
# Thu, 26 Jan 2023 22:56:29 GMT
ENV LANG=C.UTF-8
# Thu, 26 Jan 2023 22:56:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Thu, 26 Jan 2023 23:24:24 GMT
RUN yum install -y tar which gzip   && rm -rf /var/cache/yum/*   && yum clean all
# Thu, 26 Jan 2023 23:24:24 GMT
ARG MAVEN_VERSION=3.8.7
# Thu, 26 Jan 2023 23:24:25 GMT
ARG USER_HOME_DIR=/root
# Thu, 26 Jan 2023 23:24:25 GMT
ARG SHA=21c2be0a180a326353e8f6d12289f74bc7cd53080305f05358936f3a1b6dd4d91203f4cc799e81761cf5c53c5bbe9dcc13bdb27ec8f57ecf21b2f9ceec3c8d27
# Thu, 26 Jan 2023 23:24:25 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.8.7/binaries
# Thu, 26 Jan 2023 23:24:25 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.8.7/binaries MAVEN_VERSION=3.8.7 SHA=21c2be0a180a326353e8f6d12289f74bc7cd53080305f05358936f3a1b6dd4d91203f4cc799e81761cf5c53c5bbe9dcc13bdb27ec8f57ecf21b2f9ceec3c8d27 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 26 Jan 2023 23:24:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 26 Jan 2023 23:24:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 26 Jan 2023 23:24:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Thu, 26 Jan 2023 23:24:26 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 26 Jan 2023 23:24:26 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 26 Jan 2023 23:24:26 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 26 Jan 2023 23:24:26 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f211bebb41ee40fd8a6c26d9c71d47a936d9684219f14a2679e8f57c07bb49b6`  
		Last Modified: Thu, 26 Jan 2023 22:40:24 GMT  
		Size: 64.0 MB (63964642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16775e8400b29f17ecd2581845f6711ba2f64904309087e3c43d0e58fb0d2ee7`  
		Last Modified: Thu, 26 Jan 2023 22:58:55 GMT  
		Size: 59.6 MB (59587740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac941cc24a9ee6d88f1b9c19e8445d2ecc9c2f2d074dd53773316f4dd42b253`  
		Last Modified: Thu, 26 Jan 2023 23:26:27 GMT  
		Size: 3.6 MB (3632700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f684c2860beefe671e7dec845bb4b313448037631036dbdc3579196f752a670`  
		Last Modified: Thu, 26 Jan 2023 23:26:27 GMT  
		Size: 8.4 MB (8351159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f8a8d55e8e8348b3eb7b32df5907376d38bf6087cb119c8c9cdfa9858fe949`  
		Last Modified: Thu, 26 Jan 2023 23:26:26 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14306b4caaf7a57283f2df3094c4e2b7d89464489239c184e6ce1a4788fa0d45`  
		Last Modified: Thu, 26 Jan 2023 23:26:26 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
