## `maven:3-amazoncorretto-11-alpine`

```console
$ docker pull maven@sha256:bb5582c12a9821c5b16efc750a1d04eaf0b86ef912e7b58cc42f7dd63b65c127
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-alpine` - linux; amd64

```console
$ docker pull maven@sha256:e3d9337bc5e99240804424be50daa2559d9631097b59eb44c86d3405eda20af0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160182320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98ca3e00be512aeb757100ed9d1b285203c636c8fca625143a13b127f0f3f29`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:46:44 GMT
ARG version=11.0.33.1.1
# Wed, 18 Nov 2026 02:46:44 GMT
# ARGS: version=11.0.33.1.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:46:44 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:46:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Nov 2026 02:46:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 20 Nov 2026 19:07:56 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Fri, 20 Nov 2026 19:07:56 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 19:07:56 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 19:07:56 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 19:07:56 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 19:07:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 19:07:56 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 19:07:56 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 19:07:56 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 19:07:56 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 19:07:56 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 19:07:56 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 19:07:56 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6cdac157e08babd0b2ee2368f2c7af4b134cdab291b87107420553e2f2f365`  
		Last Modified: Wed, 18 Nov 2026 02:47:00 GMT  
		Size: 144.1 MB (144051743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1447410d8d17c6370e3ee7e253bc18423f7947d752912264be50d16e59abc61`  
		Last Modified: Fri, 20 Nov 2026 19:08:03 GMT  
		Size: 2.2 MB (2216893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70bb9e35e4db5a3de9b0f16ced6511427a463d138823f734c64af868bfc3375f`  
		Last Modified: Fri, 20 Nov 2026 19:08:04 GMT  
		Size: 10.1 MB (10059006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d791d3a8f8d499da3cb9268ee26439aea65c17e8302c0f61a990389b0dccf9bd`  
		Last Modified: Fri, 20 Nov 2026 19:08:03 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abc36e52b1e8abf44850c2366b22c3b93e944fbc45c6320be0fa0adb6c1bad95`  
		Last Modified: Fri, 20 Nov 2026 19:08:03 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:51bf2f7b77af843e0d5167d0cc5c0ef2b44a5eef5715b3ef85a37ce306c5bdc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.2 KB (753158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc8e31545fff277a5167f3dcfcb9ac9363ed14dca3ae19e389b109d419f1b76b`

```dockerfile
```

-	Layers:
	-	`sha256:0b5bceaa5aca729808d6d664488239bb69f7b70d413e51eefaa761213a3a5735`  
		Last Modified: Fri, 20 Nov 2026 19:08:03 GMT  
		Size: 738.6 KB (738626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25411ffdc18bb7172636814a9d267722898a7d2710be10803fa4ee3b18d7647f`  
		Last Modified: Fri, 20 Nov 2026 19:08:03 GMT  
		Size: 14.5 KB (14532 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:78d79b2afd03615607e95a4c99ed098acfebd6463e4350b7871fd90c72e793e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.9 MB (158917700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63f61e06adcb43c9952585caf32b29c4c51bab59ea8d140d9957543f1dce62ce`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:46:51 GMT
ARG version=11.0.33.1.1
# Wed, 18 Nov 2026 02:46:51 GMT
# ARGS: version=11.0.33.1.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:46:51 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:46:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Nov 2026 02:46:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 20 Nov 2026 06:12:51 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Fri, 20 Nov 2026 06:12:51 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:12:51 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:12:51 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:12:51 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:12:51 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:12:51 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:12:51 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:12:51 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:12:51 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:12:51 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:12:51 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:12:51 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33dffa0d8d7161e3966ea004f19975c11fb20e46cd9b3b3b25283e539a0c969d`  
		Last Modified: Wed, 18 Nov 2026 02:47:08 GMT  
		Size: 142.4 MB (142410797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:534a29cdc6ecc9fd2c6ce866b7c5ca1b64b8f3d30eb696b2aeb512cd4169877d`  
		Last Modified: Fri, 20 Nov 2026 06:12:58 GMT  
		Size: 2.3 MB (2256285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498f3f22a1d1876cffc2b6c1804003a6d79e06208ab760fa7c7a2d3660deed6f`  
		Last Modified: Fri, 20 Nov 2026 06:12:58 GMT  
		Size: 10.1 MB (10059019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93bf327ff3a0e833024f9f0004261da32c05e385e8f95b62ae0cbb5710b8699b`  
		Last Modified: Fri, 20 Nov 2026 06:12:58 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ba5e09829a27cb154c21d06892b8b6637e2f657ab1f01a396f162f4f3917187`  
		Last Modified: Fri, 20 Nov 2026 06:12:58 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:049de50c288e8fae88e94f865054be94777b899ed4c38c32a7f3f7b22fe97348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **752.7 KB (752685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ada935ecb183834a505c808f8534a765c8aea55ea029214112c2de46096a716`

```dockerfile
```

-	Layers:
	-	`sha256:3e3f8e663082e9c85648b397db1a2dfe4435182028553fe29b7705e224bfe774`  
		Last Modified: Fri, 20 Nov 2026 06:12:58 GMT  
		Size: 738.0 KB (738020 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2f4f52795d1fb7ecb2aae070b12e86bab08ad385eaf06a5c8d12a8db1a7cd7e`  
		Last Modified: Fri, 20 Nov 2026 06:12:58 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json
