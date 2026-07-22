## `maven:3-sapmachine-21`

```console
$ docker pull maven@sha256:2374edfa53d4e299aa2e9e89d4f5dbbb350ea7eae1eb7b8ec89393ad2c49dc97
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `maven:3-sapmachine-21` - linux; amd64

```console
$ docker pull maven@sha256:e06e060ccc3c2bc0683a70aebca641a9951146cc46e0b56c8fb9250215acbe74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286907481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5736108387c902fae4d60dc555a52d2a68a888096623596c0db61121204af61f`
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
# Wed, 22 Jul 2026 18:25:04 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:25:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 22 Jul 2026 18:25:04 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 19:03:31 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 19:03:31 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 22 Jul 2026 19:03:31 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 22 Jul 2026 19:03:31 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 22 Jul 2026 19:03:31 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 22 Jul 2026 19:03:31 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 22 Jul 2026 19:03:31 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 22 Jul 2026 19:03:31 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 22 Jul 2026 19:03:31 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 22 Jul 2026 19:03:31 GMT
ARG USER_HOME_DIR=/root
# Wed, 22 Jul 2026 19:03:31 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 22 Jul 2026 19:03:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 22 Jul 2026 19:03:31 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d9a0182b5d88eb430c7495296be3343ded3ed982de8c75a5c191bdc149d046`  
		Last Modified: Wed, 22 Jul 2026 18:25:28 GMT  
		Size: 220.0 MB (219981366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e8191211bf45db90e1de8c93d79f5138f3bab7e24459b67f92e41494e8549bd`  
		Last Modified: Wed, 22 Jul 2026 19:03:45 GMT  
		Size: 27.8 MB (27829530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa9e00243da8f3883780e746a9e431cecfd81508b64ba9dd127a8cb1c9319c49`  
		Last Modified: Wed, 22 Jul 2026 19:03:45 GMT  
		Size: 9.4 MB (9359976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a5a8d9d35ababff619d61975a80f7464ceb9eb519ac2ac63528716e0b2c7276`  
		Last Modified: Wed, 22 Jul 2026 19:03:44 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b8a14b7c8e90f5a5160d9b810134206af840e274ff21ca816b836fb9ed6b0c9`  
		Last Modified: Wed, 22 Jul 2026 19:03:44 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:fcdcf0b1a7fa134b861f026337a1189dc47bc12fb4da89a4f6b62943bb0bf74d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4321472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:274e07d118ed03e0108310c4a4e4ecfb4c35f97b28c648827448d73e460c3345`

```dockerfile
```

-	Layers:
	-	`sha256:959e3fa18ac45a637bf52c003e9da283797998a27a92eb157e5a8f581c41be70`  
		Last Modified: Wed, 22 Jul 2026 19:03:44 GMT  
		Size: 4.3 MB (4306807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92adaa323da36bafa8a8ce4cab5168233c62214508a2182bca9ea987868f555b`  
		Last Modified: Wed, 22 Jul 2026 19:03:44 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-21` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:691db3bf97c413ee3b9b6e515b63efc592f93600f7e49992dde8d2e6744e6933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.3 MB (284308723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0dae98bd8a93207005d0704af3c73b69e64b9d3d1ae15f691b9105886193a0`
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
# Wed, 22 Jul 2026 18:23:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:23:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 22 Jul 2026 18:23:00 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 18:51:09 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:51:09 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 22 Jul 2026 18:51:09 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 22 Jul 2026 18:51:09 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 22 Jul 2026 18:51:09 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 22 Jul 2026 18:51:09 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 22 Jul 2026 18:51:09 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 22 Jul 2026 18:51:09 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:51:09 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 22 Jul 2026 18:51:09 GMT
ARG USER_HOME_DIR=/root
# Wed, 22 Jul 2026 18:51:09 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 22 Jul 2026 18:51:09 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 22 Jul 2026 18:51:09 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8243bb8f03f207353ccf85f50a19027a43af9d2059caf8106f942bb3f9cd4436`  
		Last Modified: Wed, 22 Jul 2026 18:23:26 GMT  
		Size: 218.2 MB (218202022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc7716405009e85fabf86d2b5361a2eb31f3e6b9cf81f934754ec3c1e1a4264`  
		Last Modified: Wed, 22 Jul 2026 18:51:23 GMT  
		Size: 27.9 MB (27861536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e19f850cdfb4933eeb1b445c481e5cbf959abfd9e7f50be86a29af9411317d`  
		Last Modified: Wed, 22 Jul 2026 18:51:22 GMT  
		Size: 9.4 MB (9359976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a13e7c79aa1b16e47b2bccdc643a08582dc8b5342b363a1e1e10d9d24626d5`  
		Last Modified: Wed, 22 Jul 2026 18:51:22 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db820ade72cc5805c1261609beda171f88a6072e0bc13cf7cff79f18fa24e93b`  
		Last Modified: Wed, 22 Jul 2026 18:51:22 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:6d6c71d930a77004670d539a4c61496955b0694c4ce2630f28b2f469d895e994
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4328127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410b9733726484ff712f956a130a103885a7e3011970e95fd4a0296f88bcfb38`

```dockerfile
```

-	Layers:
	-	`sha256:21e0fc18fe818d2558b9b79c8c717a416d063600830302bb25fb48d99111db75`  
		Last Modified: Wed, 22 Jul 2026 18:51:22 GMT  
		Size: 4.3 MB (4313329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6c7edc4fe2f7b51592a02c2f39ca88db5ddab3c838f2cdf747801df722c27e1`  
		Last Modified: Wed, 22 Jul 2026 18:51:22 GMT  
		Size: 14.8 KB (14798 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-21` - linux; ppc64le

```console
$ docker pull maven@sha256:ff01b76b290148bc6ce17a64138a25ee7cac2b1a3ced5f5e5d456e38b6d32cc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.0 MB (293964766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af4297fcf250012047276fc2893511e78b0e6cf2e991336e60053cf58fc7de6d`
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
# Thu, 02 Jul 2026 03:35:09 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.11 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:35:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 02 Jul 2026 03:35:09 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 10:07:22 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 10:07:23 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 10:07:23 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 10:07:23 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 10:07:23 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 10:07:23 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 10:07:23 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 10:07:23 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 10:07:24 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 10:07:24 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 10:07:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 10:07:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 10:07:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:555f9a7d126c5527a2c2f3d853347351c80d6e6a762bdb6d208cd6f7f3e721a6`  
		Last Modified: Thu, 02 Jul 2026 03:35:51 GMT  
		Size: 217.8 MB (217767760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d82b56b79956a404257925689f9633a36c3cc8ecce09d6447df97ae969ec0b7`  
		Last Modified: Thu, 02 Jul 2026 10:08:01 GMT  
		Size: 32.5 MB (32522582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0474858c274b1f3658f330b4a2b3586ae407991bae640793f036b5d9da382a86`  
		Last Modified: Thu, 02 Jul 2026 10:08:00 GMT  
		Size: 9.4 MB (9359947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991465bc2cf7d30f0835886e4a4f02939c52e318cb96045849d2efdae31a9598`  
		Last Modified: Thu, 02 Jul 2026 10:07:59 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08bf39551f410baca75f48778f3a9807c6e37c61d9d648581092b90f91e60032`  
		Last Modified: Thu, 02 Jul 2026 10:07:59 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:220474726acff329a02de7f680c288715186578b0856747f388543689e2b5c32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4321951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6ec96d80d5fa6854ea4b089932edb54cfb28520ff03cb534979e7515981300d`

```dockerfile
```

-	Layers:
	-	`sha256:9a73a3d52db2553288e93c22e7d2b19b7c0687691fe2e1e397215d6fdfc35a95`  
		Last Modified: Thu, 02 Jul 2026 10:08:00 GMT  
		Size: 4.3 MB (4307236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2f73faab8532e566b60416ae15bcbbd7640cd5c43e61289f7e34f6c9aff1373`  
		Last Modified: Thu, 02 Jul 2026 10:07:59 GMT  
		Size: 14.7 KB (14715 bytes)  
		MIME: application/vnd.in-toto+json
