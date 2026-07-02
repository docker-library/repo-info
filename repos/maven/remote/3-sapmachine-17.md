## `maven:3-sapmachine-17`

```console
$ docker pull maven@sha256:24ef62f3c071180faed077ac92baefa4c080584d6859eff29ba4f4f4771bcb6c
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
$ docker pull maven@sha256:a60968317e6cd7d7a55f6c213cee7ca5e0d45b0d5b59dbb658a32cc91bf2c41b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268942624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b85fd72c3078fe18495272d5a658959dcc2003e98ef82874e2daddfccf1eee`
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
# Thu, 02 Jul 2026 02:38:08 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.19 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:38:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 02 Jul 2026 02:38:08 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 06:47:03 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:47:03 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 06:47:03 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:47:03 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:47:03 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 06:47:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 06:47:03 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 06:47:03 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 06:47:03 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 06:47:03 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 06:47:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 06:47:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 06:47:03 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c32c2781adc84b6d55ebd0968da1981855ddb2bf541af915aa8253cf73dd1fb`  
		Last Modified: Thu, 02 Jul 2026 02:38:29 GMT  
		Size: 202.0 MB (202017995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084448c5a95202c741f0c9030807db689fabe5d3f5ebd90a4157810e0c10af32`  
		Last Modified: Thu, 02 Jul 2026 06:47:18 GMT  
		Size: 27.8 MB (27828045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8fd82eb78b6b6bf999a03ddb695f2cb7ed7161be723ebac249cf808d7527a32`  
		Last Modified: Thu, 02 Jul 2026 06:47:17 GMT  
		Size: 9.4 MB (9359974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6660044943782ddf1ebb636702469e1c79b1216d04ec78e8452054ebd539421`  
		Last Modified: Thu, 02 Jul 2026 06:47:17 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1263dd33b432af41953a61a663bad7e14389266187d38e334100b4ef69a30d9`  
		Last Modified: Thu, 02 Jul 2026 06:47:17 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:f0bcc2ccf8e965b1bc7524024f16d805da7cf9b3a302008575495c64033c1c88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4319860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96a6c82d0fe8cd57d36ec7116cc4a6232b046574a98a5363cb602438979ec24`

```dockerfile
```

-	Layers:
	-	`sha256:1a900f14566950137e4988683dd2f86a3752c0c437ae8017983eaad4d4cbebba`  
		Last Modified: Thu, 02 Jul 2026 06:47:17 GMT  
		Size: 4.3 MB (4305195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e0c0209b8ecc0a855a523363ef07f6150352914d574ebec42f1cfa507f46d96`  
		Last Modified: Thu, 02 Jul 2026 06:47:17 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-17` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:ec55e35ce0a1b6907406154ba0657fba3c5d78cc9811178096c6e4d1c98baa09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266873654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a7276d5e1f376041ad9d73549dcc218202cc5472beb9473c87a2e230c5a3c79`
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
# Thu, 02 Jul 2026 02:37:19 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.19 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:37:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 02 Jul 2026 02:37:19 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 06:41:06 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:41:06 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 06:41:06 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:41:06 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:41:06 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 06:41:06 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 06:41:06 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 06:41:06 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 06:41:06 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 06:41:06 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 06:41:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 06:41:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 06:41:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29917d3f432cf54b27c1d2a023323ebf94354b79a259cb30ce9452921061bfb`  
		Last Modified: Thu, 02 Jul 2026 02:37:42 GMT  
		Size: 200.8 MB (200767107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6396a8d49d169d1c7d9da02fd2f9f84c86b30b7da570f9679f2f8c5e1ee6dcb4`  
		Last Modified: Thu, 02 Jul 2026 06:41:19 GMT  
		Size: 27.9 MB (27861385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e45c298534366f26f00f63ce94b74b350c5636c0d356a4e12fd3c932abfe73`  
		Last Modified: Thu, 02 Jul 2026 06:41:19 GMT  
		Size: 9.4 MB (9359974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:563436a65281f661203f848ea1d08ca399a92ca235a8cc0c5768e19c8f073dc2`  
		Last Modified: Thu, 02 Jul 2026 06:41:18 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b594546a614fb54513f5a54e727c06e4f9fb30614623ea9adf2d0d4735b5136b`  
		Last Modified: Thu, 02 Jul 2026 06:41:18 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:c63b2c647d4051c47cde34912ac161e9b434616e2594af4900fb5735d516dc67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4326515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:382044f9b4bcc0bd413548051c70a29411b1b85c5e0a1ca33a8383bb3418c162`

```dockerfile
```

-	Layers:
	-	`sha256:cd35814c32d3a8250b6d9038eec907497c3203a2f3b06def052683b185ff89ff`  
		Last Modified: Thu, 02 Jul 2026 06:41:18 GMT  
		Size: 4.3 MB (4311717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4019695d875c06f1c8533a05693e53f1e74199eca3528910b4dc2efe5cf7ce04`  
		Last Modified: Thu, 02 Jul 2026 06:41:18 GMT  
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
