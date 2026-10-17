## `maven:3-amazoncorretto-11-alpine`

```console
$ docker pull maven@sha256:5cb34926bf95fd5f0119373a8ce3b9498ac2df900d1e5e3a34b7ead883502544
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-alpine` - linux; amd64

```console
$ docker pull maven@sha256:679aab4f04e6676457fada19cf917e51da3bf88a846ce22d340acbe7be0b601f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.1 MB (160099735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d63fad7768d0d81826e5b06adcd0e7b7e53ebf55a20031341ef7021b95a0ae3f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Mon, 28 Sep 2026 18:03:03 GMT
ARG version=11.0.32.12.1
# Mon, 28 Sep 2026 18:03:03 GMT
# ARGS: version=11.0.32.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Mon, 28 Sep 2026 18:03:03 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 18:03:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 28 Sep 2026 18:03:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Sat, 17 Oct 2026 03:17:09 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Sat, 17 Oct 2026 03:17:10 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 03:17:10 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:17:10 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:17:10 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 03:17:10 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 03:17:10 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 03:17:10 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 03:17:10 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 03:17:10 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 03:17:10 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 03:17:10 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 03:17:10 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76b865d353ee02c78d12f14c520fe6a05cde2e44f4a1ea1f4a17c4ca832b56`  
		Last Modified: Mon, 28 Sep 2026 18:03:20 GMT  
		Size: 144.0 MB (143972989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcce4576897a3b9b93f95354be264f438662b73a2700ffe79737b2451fadc2f3`  
		Last Modified: Sat, 17 Oct 2026 03:17:17 GMT  
		Size: 2.2 MB (2216987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6d87e694f370547f61065bd08facedd8a680026c19517ab5833e339ec1a76f`  
		Last Modified: Sat, 17 Oct 2026 03:17:17 GMT  
		Size: 10.1 MB (10059017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cfad71f6c128e90afeb15ca71ead793ade9172daed91493828e67349e4db50b`  
		Last Modified: Sat, 17 Oct 2026 03:17:17 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90169450eae438adfc0d7ba4885e41aa165ee70a49d4fa813b34a732f37fef8e`  
		Last Modified: Sat, 17 Oct 2026 03:17:17 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:508d32e76f71b510e45e548cb66f38383aecef28c55cc5e8ffe2dec547adb214
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.2 KB (753160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f50c4e6f0f5000fadcdafe8dabb8999ccf5b605ae9a629460a5b78109cf33fd`

```dockerfile
```

-	Layers:
	-	`sha256:5bf600a5544201729fd6912e6a0e44d2605c254b7e49fffa460c1c41f10d22ee`  
		Last Modified: Sat, 17 Oct 2026 03:17:17 GMT  
		Size: 738.6 KB (738628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfd8567bd9f6401f139d8896ad5d967efea4a14a97b27d7107f8c46ebd190e67`  
		Last Modified: Sat, 17 Oct 2026 03:17:17 GMT  
		Size: 14.5 KB (14532 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:af3ddbe4dc5da7762123352e7e8a764578f1f6149566ec3624dfc94b4062add1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.9 MB (158850550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab700cce24bb406e1053bb58fb27c393b774f0f102c60076656cba398d63e18`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 28 Sep 2026 18:02:57 GMT
ARG version=11.0.32.12.1
# Mon, 28 Sep 2026 18:02:57 GMT
# ARGS: version=11.0.32.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Mon, 28 Sep 2026 18:02:57 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 18:02:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 28 Sep 2026 18:02:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Sat, 17 Oct 2026 03:17:40 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Sat, 17 Oct 2026 03:17:41 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 03:17:41 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:17:41 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:17:41 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 03:17:41 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 03:17:41 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 03:17:41 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 03:17:41 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 03:17:41 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 03:17:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 03:17:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 03:17:41 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7458ae3ef813635d38c802fedf1cc6a5346d19f30bcfa1f6589949fd3c32021`  
		Last Modified: Mon, 28 Sep 2026 18:03:14 GMT  
		Size: 142.3 MB (142346575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11afa1d41334adc8f398b99ec014b32449505ab81bdef660b05d5d8cac565dcb`  
		Last Modified: Sat, 17 Oct 2026 03:17:48 GMT  
		Size: 2.3 MB (2256295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0dbf905c7d8b593903cee07af0bf12a16c969e0f606d4dd87fa4629bcb2cda`  
		Last Modified: Sat, 17 Oct 2026 03:17:48 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a3e7f3e75a21146ea1c34c1cf07de0a0d9f887e8fc2f70ef6600925155ef633`  
		Last Modified: Sat, 17 Oct 2026 03:17:48 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b035c52da89f92242bb742aea46d1c1128107da068bfad8351c828c5e13b1bd`  
		Last Modified: Sat, 17 Oct 2026 03:17:48 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:ad9815c0808d31c3d775069db3b693ddf4e777809dad75c60efc674b395528a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **752.7 KB (752687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a4a33706e08c689d71c73b1f59ced9da8ae34d1bd02976be8aff88822013e61`

```dockerfile
```

-	Layers:
	-	`sha256:20d77a42c9ee91d5843b6b768a0d8e192c0849e406b9cfd841a65247b876e248`  
		Last Modified: Sat, 17 Oct 2026 03:17:48 GMT  
		Size: 738.0 KB (738022 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15b87318efca226ed75bef1d6c9146b0149e0f5dc985a0fc5b28737465faee60`  
		Last Modified: Sat, 17 Oct 2026 03:17:48 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json
