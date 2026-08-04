## `maven:3-sapmachine-17`

```console
$ docker pull maven@sha256:d39d61dd797d27eb96308a9c193256d23a6cadc8d7a5c91e964b7adc27dbcdd1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `maven:3-sapmachine-17` - linux; amd64

```console
$ docker pull maven@sha256:0ec87b132d0d7e2e3481f0324a956a22305e557488df3614a84e83bea7318b62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272081989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630063da81584afbd0b0166e16fd1c1375a937d43ca39b365eeaddfef12464a4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:50:58 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:50:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 04 Aug 2026 01:50:58 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 03:43:28 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:43:28 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 03:43:28 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:43:28 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:43:28 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 03:43:28 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 03:43:28 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 03:43:28 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 03:43:28 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 03:43:28 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 03:43:28 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 03:43:28 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 03:43:28 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71610408cb0087831e7a1ad3fe90947bee4b1c783061fdebf71a29a5c44e6ac1`  
		Last Modified: Tue, 04 Aug 2026 01:51:23 GMT  
		Size: 207.5 MB (207548573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04464962371383ef2af38341cf4efb1a721d14e71316ab323918dab4da055ebc`  
		Last Modified: Tue, 04 Aug 2026 03:43:42 GMT  
		Size: 25.4 MB (25421330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b91b6eaa83591a2c40533aba90ea7f52251832b293697c7a0b0a4e310167f20`  
		Last Modified: Tue, 04 Aug 2026 03:43:42 GMT  
		Size: 9.4 MB (9359972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:992c1a6e107f184ef951664e97edda9e903ccf46c1f5ba09343af50142e5a840`  
		Last Modified: Tue, 04 Aug 2026 03:43:41 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75d45a1d7a7be0d93f70c562d6efe0163d7831e8dd67f604bd0538023f549f22`  
		Last Modified: Tue, 04 Aug 2026 03:43:41 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:7520968e5a4967c8b6f9215a6c791eb080330c3442ecfaa4627acde7931a7211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4319879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:188ed027af4113403da60b1d089f0d899140994e5bb495f02f2202f956897cd6`

```dockerfile
```

-	Layers:
	-	`sha256:a503662474b11d9c7863f36da3af6691eb48f1dbe638c5cc2409efe96f72ee96`  
		Last Modified: Tue, 04 Aug 2026 03:43:42 GMT  
		Size: 4.3 MB (4305214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:928a6286e5fdd0c2b0f3e643dd6b284ff70ef6b46d2ebcdc1925f161d88f2b65`  
		Last Modified: Tue, 04 Aug 2026 03:43:41 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-17` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:b00d6cfdb771c724aaf757083fc58f8f595bea5b10dae28861accf6dd5392756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.7 MB (267660680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b179ef4bcfb6c1b44304234099a9dc8d7b595800a7b485b3518b811fdb906405`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:50:37 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:50:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 04 Aug 2026 01:50:37 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 03:43:32 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:43:33 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 03:43:33 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:43:33 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:43:33 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 03:43:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 03:43:33 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 03:43:33 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 03:43:33 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 03:43:33 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 03:43:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 03:43:33 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 03:43:33 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe6444ec304d4805f5ce716e79b160adb320a293224169881447754d53bede4`  
		Last Modified: Tue, 04 Aug 2026 01:51:00 GMT  
		Size: 203.9 MB (203920744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b3435a8a604f1ca708a99fa1766e0e8f988ffa99a29a9859a4ef6695fc831bc`  
		Last Modified: Tue, 04 Aug 2026 03:43:47 GMT  
		Size: 25.5 MB (25492137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5de73482173249a95e4c267d77d73597c7de34c9bf9dea05f7dff29df80dc2b4`  
		Last Modified: Tue, 04 Aug 2026 03:43:46 GMT  
		Size: 9.4 MB (9359974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80af0202bf4f0fa53a34dd43364c4cee53f0ce4743ef553912e0466fb2216b4d`  
		Last Modified: Tue, 04 Aug 2026 03:43:46 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:124af91734ed3ba0ba3f620d718f1d948b5684b0aacd23b58e133f72d516ef9e`  
		Last Modified: Tue, 04 Aug 2026 03:43:46 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:e3508b09d0b601533e923063f3f026eec7a6dbe025e4c162fe03f57e36d53e88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4326530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9aa9815b2ba7edabece8d03ab45f76ac222cbd9637fee18bc6bd8543d7ed2f5`

```dockerfile
```

-	Layers:
	-	`sha256:48dcd3d3eca112d184b2da6817e5ea0c0a52b848fa03af1fc5b885c73e7fd2b2`  
		Last Modified: Tue, 04 Aug 2026 03:43:46 GMT  
		Size: 4.3 MB (4311736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8703a5c5dd72662ba453e442bc76e35e828760bd63658c0c807f10c57f2a47db`  
		Last Modified: Tue, 04 Aug 2026 03:43:46 GMT  
		Size: 14.8 KB (14794 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-17` - linux; ppc64le

```console
$ docker pull maven@sha256:4f9058736843d2968345f223d4e76e12fd7b55b02e5382e6d054aa3eb20b41d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280561125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a890350747f83b6f9e08f2b6fa362fd4ed12aab5955f0c973ae4d436b777ccf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 03:03:48 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:03:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 04 Aug 2026 03:03:48 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 07:48:41 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 07:48:42 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 07:48:42 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 07:48:42 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 07:48:42 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 07:48:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 07:48:42 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 07:48:42 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 07:48:42 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 07:48:42 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 07:48:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 07:48:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 07:48:42 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f143d7cc3d8be3911357fbccd3a1b727ae3fedcd2c029c1561f87b0ac2453d7c`  
		Last Modified: Tue, 04 Aug 2026 03:04:30 GMT  
		Size: 206.9 MB (206924964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16f9059e7285d0a96cac419882c49dfb1ccbe73734b224f7325cd6764a115e03`  
		Last Modified: Tue, 04 Aug 2026 07:49:12 GMT  
		Size: 30.0 MB (29964508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72eeec4989b5814859085bebc4f07aaac29b8d5de8fa9d20b88676472da95818`  
		Last Modified: Tue, 04 Aug 2026 07:49:11 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b272ef310df23a830b4dd4429ad565e618abe8a65bf0675e6c0541a9fd797b7`  
		Last Modified: Tue, 04 Aug 2026 07:49:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdef6be9d5db4657dbc24445c1eaf717413e1765e387d10e47267b77b80e36b2`  
		Last Modified: Tue, 04 Aug 2026 07:49:10 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:3095af550e620c636dfd66e7fc1ee5762e9759403d76f2ca5e22a45cf8566191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4320357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e86fd8594c82591ca57cc72a3cca0f9d70bad5c3ec5673f58be6e5f0b5cb90b6`

```dockerfile
```

-	Layers:
	-	`sha256:aa20040b56a12dc5afc400a54082fa82ceefd682d002a3c59a6ac92326163ea4`  
		Last Modified: Tue, 04 Aug 2026 07:49:11 GMT  
		Size: 4.3 MB (4305643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d388cc9188fddec76bfa0fa71bff51296a3fbd7d8afd1b7394bf59ab13862a5`  
		Last Modified: Tue, 04 Aug 2026 07:49:10 GMT  
		Size: 14.7 KB (14714 bytes)  
		MIME: application/vnd.in-toto+json
