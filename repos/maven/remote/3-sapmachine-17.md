## `maven:3-sapmachine-17`

```console
$ docker pull maven@sha256:974d18957ec4b9151fb5b021da404cc4c77d8c7d37dbf16821c049920140414d
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
$ docker pull maven@sha256:a3ec9bea374eb40eadf72cf57c88d3dd6dba14af4a33ca404f59cac7b492fc9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272069487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f805fe52df59729be3cd0f86ae754fa9ca74851176175222513e9a95be881a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:25:58 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:25:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 22 Jul 2026 18:25:58 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 19:03:16 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 19:03:16 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 22 Jul 2026 19:03:16 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 22 Jul 2026 19:03:16 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 22 Jul 2026 19:03:16 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 22 Jul 2026 19:03:16 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 22 Jul 2026 19:03:16 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 22 Jul 2026 19:03:16 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 22 Jul 2026 19:03:16 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 22 Jul 2026 19:03:16 GMT
ARG USER_HOME_DIR=/root
# Wed, 22 Jul 2026 19:03:16 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 22 Jul 2026 19:03:16 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 22 Jul 2026 19:03:16 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e2e897739f39a07ee6257408a4110244836fca4f73132e016d4cebc94995669`  
		Last Modified: Wed, 22 Jul 2026 18:26:21 GMT  
		Size: 205.1 MB (205143407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e01f97334bad0d54294bc7982c7a4af09445e6e2ef4a7e0909f22680c669948`  
		Last Modified: Wed, 22 Jul 2026 19:03:30 GMT  
		Size: 27.8 MB (27829492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bea2145f7290ace781fb1872dc6604eac1ce04115f53dfeb7d6d5ac627c930a6`  
		Last Modified: Wed, 22 Jul 2026 19:03:29 GMT  
		Size: 9.4 MB (9359977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2863ad3ca8b226f76f37fb4426c508f4f675119bfb7c584b26e107d10745d274`  
		Last Modified: Wed, 22 Jul 2026 19:03:29 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed0f660647ec46521bcff980699cc870d711f4f2c72497bc58f094bbee143e76`  
		Last Modified: Wed, 22 Jul 2026 19:03:29 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:467cb5127521ed3828c6968f0afb16afd36437e2f41922c2464c4e6979402bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4319853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07569fe044cf781eb86b826473f6cad4256e02049079f071841ae5373f5e8f4d`

```dockerfile
```

-	Layers:
	-	`sha256:5b2532e146acb28e7ee8e3dbad83aa1928952fea64b51bd285d3d2cb7184eb4f`  
		Last Modified: Wed, 22 Jul 2026 19:03:29 GMT  
		Size: 4.3 MB (4305188 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:862d22cd4177c068d55e1f9f58d001c76405c2c91f21cfa001289f3d588674d0`  
		Last Modified: Wed, 22 Jul 2026 19:03:29 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-17` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:b79effde171f1d62e577155967184fb49e54da07133931f7a13b28dc316ba9f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.0 MB (270026903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba20ca99fbac52695f206e7b9721b16ceea38b6e24471ff7c5423d530690e18d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:23:38 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:23:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 22 Jul 2026 18:23:38 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 18:57:30 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:57:30 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 22 Jul 2026 18:57:30 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 22 Jul 2026 18:57:30 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 22 Jul 2026 18:57:30 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 22 Jul 2026 18:57:30 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 22 Jul 2026 18:57:30 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 22 Jul 2026 18:57:30 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:57:30 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 22 Jul 2026 18:57:30 GMT
ARG USER_HOME_DIR=/root
# Wed, 22 Jul 2026 18:57:30 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 22 Jul 2026 18:57:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 22 Jul 2026 18:57:30 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68ebaa7e6a00f06e0478c85c5febcfec16a195223a7bf76a71218fb2bc3938f`  
		Last Modified: Wed, 22 Jul 2026 18:24:02 GMT  
		Size: 203.9 MB (203920234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afc872b681fb935ea790403155199b5784a45baa9526e86f277ce8c633ee028d`  
		Last Modified: Wed, 22 Jul 2026 18:57:44 GMT  
		Size: 27.9 MB (27861504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf36e84598f15b961741bee84a4c1bab71f9e3b305983830312f4725c410022`  
		Last Modified: Wed, 22 Jul 2026 18:57:43 GMT  
		Size: 9.4 MB (9359976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6f21e99d378e51e6e2c82ba1d3829e930a4e16590280cc627575b753e4889d`  
		Last Modified: Wed, 22 Jul 2026 18:57:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb57f3e70a3c58084e41600ef867eb91bee96edd9fdb270b212c6f6626d6ee03`  
		Last Modified: Wed, 22 Jul 2026 18:57:43 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:c84619c775d808af300794c15f932599a9f14689dda9b127ba1998da2884eee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4326508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef0dabfb91bad0162cf9173cfd276cd10ef8c10b4c87549ad2277703e54a5e6c`

```dockerfile
```

-	Layers:
	-	`sha256:73b8529536142adfa887a3167abc157d92b93f1de08757eb9e5c034dee7c1dc2`  
		Last Modified: Wed, 22 Jul 2026 18:57:43 GMT  
		Size: 4.3 MB (4311710 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29540e7ef7695552116d607120915199839f5afa301a8b8c0d921b606655513e`  
		Last Modified: Wed, 22 Jul 2026 18:57:43 GMT  
		Size: 14.8 KB (14798 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-17` - linux; ppc64le

```console
$ docker pull maven@sha256:623bdf2d1579be202eebe006527ea7c40cc085ce187962c81720ec67f56db0be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.1 MB (279130332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81bc4100b0c0bcbb643024b8b808644b880e0e4c0d1d2ba0350a1beaf02eb5fe`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 03:41:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.19 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:41:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 02 Jul 2026 03:41:57 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 10:05:36 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 10:05:36 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 10:05:36 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 10:05:36 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 10:05:36 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 10:05:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 10:05:36 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 10:05:37 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 10:05:37 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 10:05:37 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 10:05:37 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 10:05:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 10:05:37 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2017010c081dde9dbfe5302b542df9773badc92b5abce1e2476184a0080ce8e`  
		Last Modified: Thu, 02 Jul 2026 03:42:48 GMT  
		Size: 202.9 MB (202933411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:079cf0a5d0f56561ed0c0185f1179cd4195c30fafaaf39c36720c7a1f519401c`  
		Last Modified: Thu, 02 Jul 2026 10:06:19 GMT  
		Size: 32.5 MB (32522484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632b8ea9c930a8a17efb52741695751086123317111cc327b61a9307931c8d73`  
		Last Modified: Thu, 02 Jul 2026 10:06:18 GMT  
		Size: 9.4 MB (9359955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cde1d945d442f5ef57368310ebce692c7b7b97f46f3fb5ee69ff8be44906fc5`  
		Last Modified: Thu, 02 Jul 2026 10:06:17 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2f57603ba4e4f093acb44bb471903911041be6f28bdc2db4565a09153a93e0`  
		Last Modified: Thu, 02 Jul 2026 10:06:17 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:0145966c9b93c5396a73852db8fe0efa9c14e78a9a42570c399f73f32c069816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4320338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac4777a4ca0809ed3c6b8e2bf2dffe7d81f112904f11222383681fe17ec8e66e`

```dockerfile
```

-	Layers:
	-	`sha256:9ea6ac4311f1903a9b8c36c4fb1f24611bdb439451bd8165caa06266ad9afdeb`  
		Last Modified: Thu, 02 Jul 2026 10:06:18 GMT  
		Size: 4.3 MB (4305624 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:894e926bbb36c55e4745c65cd12395b757b9cd1ab9236cc2c2bab334f2445b06`  
		Last Modified: Thu, 02 Jul 2026 10:06:17 GMT  
		Size: 14.7 KB (14714 bytes)  
		MIME: application/vnd.in-toto+json
