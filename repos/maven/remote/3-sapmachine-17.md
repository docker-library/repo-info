## `maven:3-sapmachine-17`

```console
$ docker pull maven@sha256:a6789515828cfcb39bafb8f68cfb904bc7889a539ded7b3d74172d6ec4f57de0
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
$ docker pull maven@sha256:3c61563f33f221e327dce7617e6836dcf2c71396e19f6c7f1d048c0e51442ea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280494663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad20e119e42cb788dd9dd132c5c27eeb75ed31cf151cf18dc50c904c16716b9e`
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
# Wed, 22 Jul 2026 18:39:35 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:39:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 22 Jul 2026 18:39:35 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 21:39:07 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 21:39:13 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 22 Jul 2026 21:39:13 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 22 Jul 2026 21:39:13 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 22 Jul 2026 21:39:13 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 22 Jul 2026 21:39:13 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 22 Jul 2026 21:39:13 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 22 Jul 2026 21:39:16 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 22 Jul 2026 21:39:20 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 22 Jul 2026 21:39:20 GMT
ARG USER_HOME_DIR=/root
# Wed, 22 Jul 2026 21:39:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 22 Jul 2026 21:39:20 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 22 Jul 2026 21:39:20 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c94e63820bb5ee03bb67355f4d59414ecd3231c05bedf5d71401346b9df7e9cb`  
		Last Modified: Wed, 22 Jul 2026 18:40:15 GMT  
		Size: 204.3 MB (204297428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f4b2858b2e762ef299f8a93487d651bb07aa20236ab27ad99f9af4433ea5aa4`  
		Last Modified: Wed, 22 Jul 2026 21:40:08 GMT  
		Size: 32.5 MB (32522802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a5a2e1c1739559051e6a28a5c0d110d6fc664563d3eb083bc687a492861bdf`  
		Last Modified: Wed, 22 Jul 2026 21:40:07 GMT  
		Size: 9.4 MB (9359948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:302060b91dfaf05c0db234da4fc32c0cf0fff6f308116633ed9a75914b8d3ea6`  
		Last Modified: Wed, 22 Jul 2026 21:40:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f373e5cf42b905ee597eae82dca250c49fa3f1bb601fcef4f2ba24dcea6a0d82`  
		Last Modified: Wed, 22 Jul 2026 21:40:07 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:7ba1aba68cb196318cb426f5808d77b8967431d1bca040ccda7b6393bddc3401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4320332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4c154289783e41b9fa1a05dfa633a1ef934e23c69ade642bfb31ac2b400a9d1`

```dockerfile
```

-	Layers:
	-	`sha256:b1c6b922ade244882bb947e33e0c1d285bf5c2fbcd334e72d2aa6c6ff3a72a3a`  
		Last Modified: Wed, 22 Jul 2026 21:40:07 GMT  
		Size: 4.3 MB (4305617 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1cfae7025ef571b0bc857d2092c3510b9e2a92c7833e8c42937ff8850e1cd56`  
		Last Modified: Wed, 22 Jul 2026 21:40:06 GMT  
		Size: 14.7 KB (14715 bytes)  
		MIME: application/vnd.in-toto+json
