## `maven:3-sapmachine-17`

```console
$ docker pull maven@sha256:bad88e4eddb605a0116dc6c54efcf67782e083e7e87f8002ca2252165b46c464
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
$ docker pull maven@sha256:41b89ef5940507039e2cfba17038d18af4f3ef8f0cabaf980859ee2d949fb06d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.4 MB (270446543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db3b7fc0b311183fdfe49a295218a6279b7e5db7fd30c2fe444af2f5b5d96295`
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
# Sat, 17 Oct 2026 00:41:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:41:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Sat, 17 Oct 2026 00:41:00 GMT
CMD ["jshell"]
# Sat, 17 Oct 2026 03:19:01 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 03:19:01 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 03:19:01 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:19:01 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:19:01 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 03:19:01 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 03:19:01 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 03:19:01 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 03:19:01 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 03:19:01 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 03:19:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 03:19:01 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 03:19:01 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a9a7251b2740e6799a3df4f1b4801d2bdc6cecfe06fdf287c7c829c21cf5185`  
		Last Modified: Sat, 17 Oct 2026 00:41:22 GMT  
		Size: 205.2 MB (205190429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dc7465d0ba2906f376a2811eef924684ad5266b8928a1f8fb99846fe8f4cef8`  
		Last Modified: Sat, 17 Oct 2026 03:19:15 GMT  
		Size: 25.4 MB (25430332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9911a53c97491afef22decc63ddd920d3413932c448d9bbe7e9d037968bb005`  
		Last Modified: Sat, 17 Oct 2026 03:19:14 GMT  
		Size: 10.1 MB (10059017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e9d51aa70db638d80884aff505563ca271c18172f09b0134e77dd8e58db796`  
		Last Modified: Sat, 17 Oct 2026 03:19:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11febd75560f7795272995c2d4a64810f4e38858272af04852d4729286489f8f`  
		Last Modified: Sat, 17 Oct 2026 03:19:14 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:87048fe69b4080e60b2904f46f2c8287d798d3912ea302864d44f87e4e9e2ce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a19ea6dfec85af1f3f60d84ac062cb3f509ccd300eb02fb2e8c2bfc79d11fa3`

```dockerfile
```

-	Layers:
	-	`sha256:3fdf0516a793d5c25dcfe2b1a8e0fdca71b92e20c268e18c6464a185a778d87e`  
		Last Modified: Sat, 17 Oct 2026 03:19:14 GMT  
		Size: 4.3 MB (4310320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac917865a4f9b95404e00ae5e9337962361e84776fbdae9751ff397c44422e9a`  
		Last Modified: Sat, 17 Oct 2026 03:19:14 GMT  
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
