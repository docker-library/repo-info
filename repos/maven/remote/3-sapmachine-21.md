## `maven:3-sapmachine-21`

```console
$ docker pull maven@sha256:8d2d668a47ec923b40719bebeea513328c7708da082db10b4ba5384329e02f06
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
$ docker pull maven@sha256:ff2c3343edfe0df46b7d00ea1b1f4b9ffd51c057c9281a1ec45c69bbded9ab1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.1 MB (290099323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:783bb4a64df30e3ac8857286df9d8ed8b4a135504d9f1d621356f6ed6b1774bf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:31:48 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 16 Sep 2026 03:31:48 GMT
CMD ["jshell"]
# Thu, 01 Oct 2026 20:12:33 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 20:12:33 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:12:33 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:12:33 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:12:33 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:12:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:12:33 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:12:33 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:12:34 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:12:34 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:12:34 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:12:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:12:34 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:910cf9f393479ed11fdb53b9660eeeaa76e5a8126dd11e8e18ed92c60abaaf89`  
		Last Modified: Wed, 16 Sep 2026 03:32:12 GMT  
		Size: 220.0 MB (220023561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32019e49ee49c7dac84cb4968b8cb2315fdcb6d4070167c18f925f069b7c1a63`  
		Last Modified: Thu, 01 Oct 2026 20:12:47 GMT  
		Size: 30.3 MB (30251633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3baf2a5d8bbe9baa66425442aa1689b23b25de0467f4e57c9aea1ad662a4aaba`  
		Last Modified: Thu, 01 Oct 2026 20:12:47 GMT  
		Size: 10.1 MB (10059008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e859fa6b670f6e7dcfaf9e7fdcb3a0474dadf104a1c663cf14fe748d6d0d69d0`  
		Last Modified: Thu, 01 Oct 2026 20:12:46 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79a4148112588a78282a3cdbafaefcd246b2ad7951dd3f02653fdb12eba50866`  
		Last Modified: Thu, 01 Oct 2026 20:12:46 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:3ba8b147b571af5721c1cb714d1e28a830df0f4841449acf4ced545976689371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4326586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abce2a138deef9cb5593f39c3ce6326a8841323a47f5a9908d0ff4e527f676c2`

```dockerfile
```

-	Layers:
	-	`sha256:b0144e198994e4441389ae86738e870c2f4858e640842cf6673cfddf8e6231a9`  
		Last Modified: Thu, 01 Oct 2026 20:12:46 GMT  
		Size: 4.3 MB (4311915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:926d35bb71805117616704ee1573993bd3741b3bdd00a52eb91b43e3a84e5847`  
		Last Modified: Thu, 01 Oct 2026 20:12:46 GMT  
		Size: 14.7 KB (14671 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-21` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:82d239959846f26294d3d5ee183476a5b3ac8661fc06912f74dfbf4dddcf2980
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287382554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e24a615a57c352a0d5caba51943661e7b6946b9f4d110049bd91bb7fa2774272`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:31:45 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 16 Sep 2026 03:31:45 GMT
CMD ["jshell"]
# Thu, 01 Oct 2026 20:12:16 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 20:12:16 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:12:16 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:12:16 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:12:16 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:12:16 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:12:16 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:12:16 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:12:16 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:12:16 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:12:16 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:12:16 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:12:16 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a2785742f6dcd4f6e5a5ffbf207ba42265c55df807b8cf0e61e7589244ac24`  
		Last Modified: Wed, 16 Sep 2026 03:32:09 GMT  
		Size: 218.2 MB (218231132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2df58151d9d4f04bedacfc406521b2dc5f00526a98bd85c2ca00071fc5a091d4`  
		Last Modified: Thu, 01 Oct 2026 20:12:31 GMT  
		Size: 30.1 MB (30149876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:938ca9bdedb5fdba7637438e606e22da8feced6fb6f68d9428fbd872874e4610`  
		Last Modified: Thu, 01 Oct 2026 20:12:30 GMT  
		Size: 10.1 MB (10058964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05bdbca67f629e78fe47b0cef842b6fcf9be10119f23118b8c9418fac2c39f39`  
		Last Modified: Thu, 01 Oct 2026 20:12:30 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263f7953f510799ac3e8b06a4472bd4324ebc922d644d8949a3a845debc0082d`  
		Last Modified: Thu, 01 Oct 2026 20:12:30 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:f1ad5bd9d31d88691bde6ad238487802c7c4fcc857191fc724f49094daabf37e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4333241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91f6e3da3516bbede4501e3a39a1a165ff708eac5dd4a8da3a8db30449e16605`

```dockerfile
```

-	Layers:
	-	`sha256:bc85f18599de60b3b6bdd9b3b7ff88aadc866665d0ee6608a449c1109fc692c3`  
		Last Modified: Thu, 01 Oct 2026 20:12:30 GMT  
		Size: 4.3 MB (4318437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38a10ede339d544d51b3e9da70607b29e563c0b82b285c30e0012e4086cee276`  
		Last Modified: Thu, 01 Oct 2026 20:12:30 GMT  
		Size: 14.8 KB (14804 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-21` - linux; ppc64le

```console
$ docker pull maven@sha256:666dbd40f912d97d553ee4d2446abfa13cc57a213f5046d65aecc974b192e39c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.0 MB (296983266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3399acf57ed74a8c2ce8339ffd994f12accbad0e655fcf6f551de0d4052c62bf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:10:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 08:10:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 16 Sep 2026 08:10:53 GMT
CMD ["jshell"]
# Sat, 26 Sep 2026 06:31:06 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 20:40:45 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:40:45 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:40:45 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:40:45 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:40:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:40:45 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:40:46 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:40:47 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:40:47 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:40:47 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:40:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:40:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dd36c08d37ebf6f030a38732564c425dad27584ed4c0c6cdcb7f796e13569e5`  
		Last Modified: Wed, 16 Sep 2026 08:11:35 GMT  
		Size: 220.0 MB (220007526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b67bbe9829b713141c56220e1a0e7234d30cf20695eb7a31c995fe7aac8f99`  
		Last Modified: Sat, 26 Sep 2026 06:31:54 GMT  
		Size: 32.5 MB (32538768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93a13daa757044d082f10f9c35e1b54a965eb16f1833fb48c7ed135223bc9b9`  
		Last Modified: Thu, 01 Oct 2026 20:41:13 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276540b94d7d176987de543e69b2a1bcf9d4b89d47d35a02c3db38a194b0421c`  
		Last Modified: Thu, 01 Oct 2026 20:41:12 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:640c37de57a9af12f9ffb559609f0066dbf2a57117bbe5ba4b0e3f30325ebb86`  
		Last Modified: Thu, 01 Oct 2026 20:41:12 GMT  
		Size: 152.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:27d2d460a618d0edeb408c636c0c0945dfb06e1da2a342ee2f39bcf8ddcd531e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4327065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8c7f41e40425aa7cea442ac85485314b5ded1038d5178fdcdd2905d5597bc7`

```dockerfile
```

-	Layers:
	-	`sha256:744e5ec8fade30dc5281586fb10b33fd3c056ff3411bfd88e90cfdf1b77ac8b9`  
		Last Modified: Thu, 01 Oct 2026 20:41:13 GMT  
		Size: 4.3 MB (4312344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80f227df41379847b13f9143e8990497a5a310f0220e0a1233d7f358b7e8afd6`  
		Last Modified: Thu, 01 Oct 2026 20:41:13 GMT  
		Size: 14.7 KB (14721 bytes)  
		MIME: application/vnd.in-toto+json
