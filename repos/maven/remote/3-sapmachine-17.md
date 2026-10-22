## `maven:3-sapmachine-17`

```console
$ docker pull maven@sha256:656bca45e0e647da3e9cd0ceda17d71a5257b6cb0d31ce504e542e2649a5e5bb
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
$ docker pull maven@sha256:3a89757e971b273408ecaa3cba33c9f7eb7facbc970c701da55c20e096b21aa8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 MB (270451143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d337f2aabeccd42d67ade3ab53927587715125bc2df38b1ef0331de8eec1524`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:15:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.21 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:15:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 21 Oct 2026 22:15:39 GMT
CMD ["jshell"]
# Wed, 21 Oct 2026 22:37:56 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:37:56 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 21 Oct 2026 22:37:56 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 22:37:56 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 22:37:56 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 21 Oct 2026 22:37:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 21 Oct 2026 22:37:56 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 21 Oct 2026 22:37:56 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:37:56 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 21 Oct 2026 22:37:56 GMT
ARG USER_HOME_DIR=/root
# Wed, 21 Oct 2026 22:37:56 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 21 Oct 2026 22:37:56 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 21 Oct 2026 22:37:56 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e70f56ee08b0c619cee2ca3e2bcda953b10146a303c82a8aceccd028f9111c72`  
		Last Modified: Wed, 21 Oct 2026 22:16:01 GMT  
		Size: 205.2 MB (205194256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc34971b3b71fca56836696c919875c6941d6c967bdcf35f244ea08391ae6354`  
		Last Modified: Wed, 21 Oct 2026 22:38:09 GMT  
		Size: 25.4 MB (25431102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab2b166de6f0a0fd4a29443db296bf61399a4854d5469b8c2b27f2e5419a86f`  
		Last Modified: Wed, 21 Oct 2026 22:38:08 GMT  
		Size: 10.1 MB (10059019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64792ce4aeba8a02eb56c88e2751afd28a0ea158b1c7e4814a90bb9b39248ffd`  
		Last Modified: Wed, 21 Oct 2026 22:38:08 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca9c7a7dee9738474e7e7713c5c9f372de8f2f41e6593c3d71c6ef7e56c5d59f`  
		Last Modified: Wed, 21 Oct 2026 22:38:08 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:ba3d1bcaa3774af89edd698f6a35ceebad5fd170e877e523e01b340d2b427e41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5d3305cf24cdb639ad488b7a7453366a6989d8e8b181f34f042952fe0db390`

```dockerfile
```

-	Layers:
	-	`sha256:de12361938ffe6bd377a00298d83ee322e313f7cf4df4025d22917f3d764910f`  
		Last Modified: Wed, 21 Oct 2026 22:38:08 GMT  
		Size: 4.3 MB (4310320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52fe831d58cb994d158dcf5c2aa1fc9d43865928246c0ae65761e71299874b17`  
		Last Modified: Wed, 21 Oct 2026 22:38:08 GMT  
		Size: 14.7 KB (14671 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-17` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:d448efae0cdf5e978d58b6c128ce9c0696fe587f32191e7e2aa4c179635772f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.5 MB (268479160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:996813d8c77951fdd388ea13e6a002dad03afe21102e2b14d303f5142a7533ab`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:40:22 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:40:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Sat, 17 Oct 2026 00:40:22 GMT
CMD ["jshell"]
# Sat, 17 Oct 2026 03:19:18 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 03:19:18 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 03:19:18 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:19:18 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:19:18 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 03:19:18 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 03:19:18 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 03:19:18 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 03:19:18 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 03:19:18 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 03:19:18 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 03:19:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 03:19:18 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b02e3dec82fde2ab26ed6a8dc9af8c0974344690f3dff4d98e23c66a0373ba6`  
		Last Modified: Sat, 17 Oct 2026 00:40:46 GMT  
		Size: 204.0 MB (203967536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ef89b02e437d3e0465fc8c07695fc48414e2a6337a0d69034670eda607ca65`  
		Last Modified: Sat, 17 Oct 2026 03:19:31 GMT  
		Size: 25.5 MB (25511841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81097c50c42ae274e8268945e8a5e56326b22e044e85e20d09ee74d7bfb1878d`  
		Last Modified: Sat, 17 Oct 2026 03:19:31 GMT  
		Size: 10.1 MB (10059016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0597f2dacb7b85e0f6a62ef4aecc62cf9df24679f317b485b4ce461c995e7d8b`  
		Last Modified: Sat, 17 Oct 2026 03:19:30 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9760d3e0728ee3c3138a4e4a8c59307218dc26ed4ee782714d36dfea13bf67a7`  
		Last Modified: Sat, 17 Oct 2026 03:19:30 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:4ab1fcf6ff2fe978dda1d7bc9ed52f932d6a1f5c9a3a59c8624084abbc1cbf77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4331646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5105010b7b6d91d58240b8b9def2d4c5b207a89a50471341cf6fbc8a503bd0d8`

```dockerfile
```

-	Layers:
	-	`sha256:bfbba44e7f4955c58f2e86b22bc7a190a0de709a399243b9d49da7e536be6db5`  
		Last Modified: Sat, 17 Oct 2026 03:19:31 GMT  
		Size: 4.3 MB (4316842 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85845c5018510a61624b324e6bbec1686f648e5382563334984168ac5494bfc6`  
		Last Modified: Sat, 17 Oct 2026 03:19:30 GMT  
		Size: 14.8 KB (14804 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-17` - linux; ppc64le

```console
$ docker pull maven@sha256:832a0f3271c456a20a96294694a18f5dcae9ac29ea14811449e45f1cc0eb54f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.7 MB (278735011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91d461e9a3cf734f57caf7e78357eb28a3da3056d55b0de6ceebeeb89978531a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 02:52:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:52:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Sat, 17 Oct 2026 02:52:29 GMT
CMD ["jshell"]
# Sat, 17 Oct 2026 09:38:41 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 09:38:43 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 09:38:43 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 09:38:43 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 09:38:43 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 09:38:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 09:38:43 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 09:38:51 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 09:38:53 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 09:38:53 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 09:38:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 09:38:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 09:38:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b76916260347d1cc495ecece1b8900e254bca38205b920751af36a5573a2a2c`  
		Last Modified: Sat, 17 Oct 2026 02:53:14 GMT  
		Size: 204.3 MB (204314009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfd575f19472ed35528cac918a2d4f4a8c704ecad903bf87ce509a49358d26a9`  
		Last Modified: Sat, 17 Oct 2026 09:39:34 GMT  
		Size: 30.0 MB (29982997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d3e3ec2aa7d12da35915285a8ff2183920a13a0c563d52d1d54afed9d55a9bf`  
		Last Modified: Sat, 17 Oct 2026 09:39:33 GMT  
		Size: 10.1 MB (10059010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef057fc2963540766810fc246a3e36625351fadfa18ad7a09126f255497642e`  
		Last Modified: Sat, 17 Oct 2026 09:39:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:463a6400cc11005d7fd5b35af86a9b7830d63e997cd4d1ac280129ad603fcd80`  
		Last Modified: Sat, 17 Oct 2026 09:39:33 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:881344a14c5197d4485e39eaaade74207e5f2830c14ef9cdf7a9c246a230f227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4325470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6537de242c2d6d9e194402c50172a6d019a4efd75b7eb2d46c2699125bb41a8`

```dockerfile
```

-	Layers:
	-	`sha256:107e73d44cc4196e8001b0901b3d6e1ba26e7381555cd64fd20e88106e2fb62c`  
		Last Modified: Sat, 17 Oct 2026 09:39:33 GMT  
		Size: 4.3 MB (4310749 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9eb79f27886fb44d25cc7ee1bd5cc56725d2586acc8872bfe0da2c8117814eec`  
		Last Modified: Sat, 17 Oct 2026 09:39:33 GMT  
		Size: 14.7 KB (14721 bytes)  
		MIME: application/vnd.in-toto+json
