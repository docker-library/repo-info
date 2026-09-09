## `maven:3-amazoncorretto-11-alpine`

```console
$ docker pull maven@sha256:d10a65810a3636341eb3080e9dcf35346bbab04b8d86a3ae2a83a614bdf62cac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-alpine` - linux; amd64

```console
$ docker pull maven@sha256:b8beed7c0238a5cd31774ccefc497790610a92237e10632c09b8cc59ff8f9a2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159397499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:664c64d6381d5fdef80a887fa3cdeb8725eb7305fe7f8c8a821b4b4d977ae01a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:19:31 GMT
ARG version=11.0.32.10.1
# Thu, 20 Aug 2026 17:19:31 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:19:31 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:19:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:19:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Wed, 09 Sep 2026 04:41:15 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Wed, 09 Sep 2026 04:41:15 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:41:15 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:41:15 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:41:15 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:41:15 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:41:15 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:41:15 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:41:15 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:41:15 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:41:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:41:15 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:41:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d77fcfdf369ed0b30258b04750523dc4fffdeefd5a671d659e81fb012fd1dd`  
		Last Modified: Thu, 20 Aug 2026 17:19:48 GMT  
		Size: 144.0 MB (143973175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56a29dc9cbd951b97d9570943d04007c7dea3b72cf33595eecf3b326abf9b0ab`  
		Last Modified: Wed, 09 Sep 2026 04:41:23 GMT  
		Size: 2.2 MB (2216966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b0d95777e73f8e652ee81cdac91288f9248d76383cbdb5e42bbdc0680420a0`  
		Last Modified: Wed, 09 Sep 2026 04:41:23 GMT  
		Size: 9.4 MB (9359963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98560a1716b26d32f70bd49633b766f9fe302e1d819250316b7327000ffe8eb2`  
		Last Modified: Wed, 09 Sep 2026 04:41:22 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f7d5eabc2b1c25c2feb6fb3a72441eb1e058a0b340f7859b31bfb519752b8c`  
		Last Modified: Wed, 09 Sep 2026 04:41:23 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:f4d950a4e0aaebf48f8695da8af95939cc149b61e2cbfb81ee5d194968a39b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **748.1 KB (748104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f1f2e33226352ada39186ae06ddf506b3d6246ba90480a75a782ab88b9d95be`

```dockerfile
```

-	Layers:
	-	`sha256:f759da266d139c2a7c7c0475f2448ba56e0bc7a6755307b4c581fdb4f2d30fe7`  
		Last Modified: Wed, 09 Sep 2026 04:41:23 GMT  
		Size: 733.6 KB (733578 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:522c7abc8864f589dcabd839cdf096a1274e8c302f706b738f67cdb68d95188b`  
		Last Modified: Wed, 09 Sep 2026 04:41:23 GMT  
		Size: 14.5 KB (14526 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:ba23fcfa24293e9ecee1fbcd1d2126b952e2d7692786199f65a3643d970ec32e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.1 MB (158147340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90c5f3369d9f90f5a20d51b1998377e9ca64a038ae64565c8dd3ac645ca4afa3`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:16:19 GMT
ARG version=11.0.32.10.1
# Thu, 20 Aug 2026 17:16:19 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:16:19 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:16:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:16:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Wed, 09 Sep 2026 04:26:05 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Wed, 09 Sep 2026 04:26:05 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:26:05 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:26:05 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:26:05 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:26:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:26:05 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:26:05 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:26:05 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:26:05 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:26:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:26:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:26:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28fcc121ed55e6b97313b7f5fa75e0188c609fdc67607859a02d68bd2c1b4da4`  
		Last Modified: Thu, 20 Aug 2026 17:16:36 GMT  
		Size: 142.3 MB (142346996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9186f90df12637e685d2aefc49a3d64843027bc64b0f2522ed21b9f9cc48f88b`  
		Last Modified: Wed, 09 Sep 2026 04:26:12 GMT  
		Size: 2.3 MB (2256324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d223a0f9515372cc6864292c075c6977490207bb4f700735c3f59469d5df9e8c`  
		Last Modified: Wed, 09 Sep 2026 04:26:13 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db52c2f427fa6a4e85daf179764842b1c370d26738dc1d3cef824ee938cdf440`  
		Last Modified: Wed, 09 Sep 2026 04:26:12 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29c809385687f28e55eec2a97a09ee3005a5ae06abb484019d91d1032d79e324`  
		Last Modified: Wed, 09 Sep 2026 04:26:12 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:4939c1510a9fa8d1baf51d741831c8c2d98e3d579477980d1008feda387ad69d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **747.6 KB (747631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4dad0ccfb8a9de4f195dd5078e43b49f4a4fd40676b8b256828ffdca23b1fef`

```dockerfile
```

-	Layers:
	-	`sha256:1f81f78d76795fa7e2ac0a0b49ba5804a9570f648080eef1609162f260cb013c`  
		Last Modified: Wed, 09 Sep 2026 04:26:12 GMT  
		Size: 733.0 KB (732972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4c02445b75d534af19b712012b8a7c56bf0ff75000be78245157d31c40503f8`  
		Last Modified: Wed, 09 Sep 2026 04:26:12 GMT  
		Size: 14.7 KB (14659 bytes)  
		MIME: application/vnd.in-toto+json
