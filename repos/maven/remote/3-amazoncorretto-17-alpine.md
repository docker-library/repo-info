## `maven:3-amazoncorretto-17-alpine`

```console
$ docker pull maven@sha256:7c01e081f4c4e96eda6b9758ed9a4ff186613c7240c610cd1c759fdf409d48e5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17-alpine` - linux; amd64

```console
$ docker pull maven@sha256:5be496c0d109a0e28c323788b47c29128221bbe3d32b4fea9356cb4f93f052dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164652252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95a25cb996840e2482372d5097766abf127bf249e0c94d43bb14a779002bced0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:33:44 GMT
ARG version=17.0.21.1.2
# Tue, 17 Nov 2026 21:33:44 GMT
# ARGS: version=17.0.21.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:33:44 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:33:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:33:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Mon, 23 Nov 2026 20:12:15 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Mon, 23 Nov 2026 20:12:15 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 23 Nov 2026 20:12:15 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:12:15 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:12:15 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 23 Nov 2026 20:12:15 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 23 Nov 2026 20:12:15 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 23 Nov 2026 20:12:15 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 20:12:15 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 23 Nov 2026 20:12:15 GMT
ARG USER_HOME_DIR=/root
# Mon, 23 Nov 2026 20:12:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 23 Nov 2026 20:12:15 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 23 Nov 2026 20:12:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b95797276e73e66fcdff0ab1985c8374722b08b89a5100061ceacca9ac117467`  
		Last Modified: Tue, 17 Nov 2026 21:34:00 GMT  
		Size: 149.2 MB (149229779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3f45210f8344ede9724432ad741c7d36636ddc2f80cb16176f429dda20b21ee`  
		Last Modified: Mon, 23 Nov 2026 20:12:22 GMT  
		Size: 2.2 MB (2216493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4121c1276087b85c3fb6bc95890135e2c1e524ea909e31abce0635fd8dd6c490`  
		Last Modified: Mon, 23 Nov 2026 20:12:23 GMT  
		Size: 9.4 MB (9351303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09b1432cabed68534437817dafd0b464b880a1173efacc3e5cf6407d112c13f9`  
		Last Modified: Mon, 23 Nov 2026 20:12:22 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca6c056326b8b3e969b6c96a0d6e099b9072a7a768e0e93da08e19163e586ad`  
		Last Modified: Mon, 23 Nov 2026 20:12:22 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:d36aedc7d3172062a59d0bfa10eb1241881abde3e5da3b24d8a775abde018b2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **741.7 KB (741700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaf0ff10d0aa035f588aad39c44226196a89b1255ef1c80ff5ab7ee42446321a`

```dockerfile
```

-	Layers:
	-	`sha256:ddda5c393be1b529e80e33183b9e1abb17e28f7fac68acd111763e4a6a19fb2d`  
		Last Modified: Mon, 23 Nov 2026 20:12:22 GMT  
		Size: 727.2 KB (727172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ff2c54e68ec159fdd54b146cd25698f7e997d378f3cb3c243c5687016750b32`  
		Last Modified: Mon, 23 Nov 2026 20:12:22 GMT  
		Size: 14.5 KB (14528 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:17c99b66a9e18100c0de38025432bbdf2e0f3cd3a759e35396dbb690aad225ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164222502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75206245a6836acd7b1615cd8ee5e921a4eb84467e313a3c4af2ada28105b6d1`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:33:45 GMT
ARG version=17.0.21.1.2
# Tue, 17 Nov 2026 21:33:45 GMT
# ARGS: version=17.0.21.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:33:45 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:33:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:33:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 20 Nov 2026 06:13:01 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Fri, 20 Nov 2026 06:13:01 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:13:01 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:13:01 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:13:01 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:13:01 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:13:01 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:13:01 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:13:01 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:13:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:13:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:13:01 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:13:01 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7442f375da949080f7de01e62281119d6d722d528c0874e3815bdbf11cc206f`  
		Last Modified: Tue, 17 Nov 2026 21:34:03 GMT  
		Size: 147.7 MB (147715739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbf0c2c38706859cadcf0f2782477491ce0b7c805ac8cc35e29dbce07e737f8a`  
		Last Modified: Fri, 20 Nov 2026 06:13:09 GMT  
		Size: 2.3 MB (2256154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a28334fdc5ce28c052a33f17896f7a40451c0f5b531ad967643a642b66a9874`  
		Last Modified: Fri, 20 Nov 2026 06:13:09 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2154617dfdd74848c00db2d3f745a307a5afdd0a145dceebd93395fd0751d6b`  
		Last Modified: Fri, 20 Nov 2026 06:13:09 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9a8f5103066a8a889d4a08f1e249385e691b5708e25da0d3f9c2143b277a411`  
		Last Modified: Fri, 20 Nov 2026 06:13:09 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:4a629501c5a9d0a0d3209aacba732914422b0dd60f36341e3662e9485781cf42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **746.9 KB (746900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d2da9256ba988532012c3effddc3434ef242f306410f4dc204549e67c1335d`

```dockerfile
```

-	Layers:
	-	`sha256:78987359f16a2b189e0340063f9c5710f18c203455dbd8e06f1246d97165d0fb`  
		Last Modified: Fri, 20 Nov 2026 06:13:09 GMT  
		Size: 732.2 KB (732235 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0857af98a1fb590acbfba7fe13c4ade331eb569a56ddf4d7454a29fc8031dcbf`  
		Last Modified: Fri, 20 Nov 2026 06:13:08 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json
