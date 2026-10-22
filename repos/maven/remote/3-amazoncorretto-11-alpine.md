## `maven:3-amazoncorretto-11-alpine`

```console
$ docker pull maven@sha256:c473165662826c156ff6e6276796056cf6562108a23d6e6f732ebcba3665d7a6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-alpine` - linux; amd64

```console
$ docker pull maven@sha256:82dbde576f2beaba60bb9512e8f9e07177dff02353015a3bc6a3f68ac11be029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.1 MB (160104237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464233e6b03c57938e624857bb7bf69bd499a7f3c7157289ec12dc8d1b2a614a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:56:16 GMT
ARG version=11.0.32.12.1
# Wed, 21 Oct 2026 22:56:16 GMT
# ARGS: version=11.0.32.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 22:56:16 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 22:56:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 22:56:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Wed, 21 Oct 2026 23:41:11 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Wed, 21 Oct 2026 23:41:11 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 21 Oct 2026 23:41:11 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 23:41:11 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 23:41:11 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 21 Oct 2026 23:41:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 21 Oct 2026 23:41:11 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 21 Oct 2026 23:41:11 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:41:11 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 21 Oct 2026 23:41:11 GMT
ARG USER_HOME_DIR=/root
# Wed, 21 Oct 2026 23:41:11 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 21 Oct 2026 23:41:11 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 21 Oct 2026 23:41:11 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48db641a0eff56b693fa1dc636aa63253d3ea759abe99156838353d41dcc2b7f`  
		Last Modified: Wed, 21 Oct 2026 22:56:33 GMT  
		Size: 144.0 MB (143974221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dabfa307739e4f7c4ca32d68d8ba17cbfce2e801c0a4f40424326e5f5ba045e`  
		Last Modified: Wed, 21 Oct 2026 23:41:18 GMT  
		Size: 2.2 MB (2216890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4961ab787b07a29252d3671075ef6405728eb434ba1b184e2b6d2c1e9881ce1`  
		Last Modified: Wed, 21 Oct 2026 23:41:18 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33fe2c176cfef244331b59faa5913595c72c915d3d85d3e9553420aaef8fb3df`  
		Last Modified: Wed, 21 Oct 2026 23:41:18 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7aae0c68d03fb83747f906c25801e25caf04d911786b82bdc811c7016508d4`  
		Last Modified: Wed, 21 Oct 2026 23:41:18 GMT  
		Size: 152.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:805ca87e54ba746bcd4c705814192ff267fc08e5f30a99f32a4eaf368fe58668
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.2 KB (753160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26f9cef32a8bb126cf97e319d3366ba67b3ad759e32fb1fb275bf531d9e8b26c`

```dockerfile
```

-	Layers:
	-	`sha256:08e3dce087d1511a1ae277b60e8aeaf327cc4f7bb9f558e0787b71269f81bc42`  
		Last Modified: Wed, 21 Oct 2026 23:41:18 GMT  
		Size: 738.6 KB (738628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e02e137a9b685138875b852e4a258b8aa8e423231b4e4b6799022d185698d07e`  
		Last Modified: Wed, 21 Oct 2026 23:41:18 GMT  
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
