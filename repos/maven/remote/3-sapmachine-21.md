## `maven:3-sapmachine-21`

```console
$ docker pull maven@sha256:7e61ee9c0e50780787b5751149fc92e9ff6a7a1d32724fab159b76603211a3df
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
$ docker pull maven@sha256:abc71af5eb9f7ca77088fc669aee533ed5d356f6440d2742f544ebd16a66a154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284574642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8835e5db3ea8947319ee3ed3d9a1c322d53f485848c347bfb8cb68170fe10bb0`
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
# Wed, 16 Sep 2026 05:24:32 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:24:32 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 05:24:32 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:24:32 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:24:32 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 05:24:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 05:24:32 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 05:24:33 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:24:33 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 05:24:33 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 05:24:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 05:24:33 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 05:24:33 GMT
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
	-	`sha256:3d2fde60f35d8b7c84ce766f73c47ebd2207b968d94a8413535e7f5597ee74fc`  
		Last Modified: Wed, 16 Sep 2026 05:24:46 GMT  
		Size: 25.4 MB (25425985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:841721bf38967648b4cdd3f0925f4abeb3ff1ca1928913e3e0d826a5d44c6b58`  
		Last Modified: Wed, 16 Sep 2026 05:24:46 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689340b0aee34b6bcd8d3c36865a15b425b8c4f9dc0440f84f6ca862182b253e`  
		Last Modified: Wed, 16 Sep 2026 05:24:46 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4f1b1148d6118eb8793b36374059edafec79941b3e67e181161c17a552e30c6`  
		Last Modified: Wed, 16 Sep 2026 05:24:46 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:6db2b467fb7d4decb716c22ddead26cef27af807dfe8bfe780248f6078f4cf55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4321530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ce2c32926650bcbbac7e4acb4899bc2cd4bf258f12740925c2b7dd20b28140`

```dockerfile
```

-	Layers:
	-	`sha256:afe0366988d7a052886fee6fc8cdd8df191b99463f736f3e187419262806b748`  
		Last Modified: Wed, 16 Sep 2026 05:24:46 GMT  
		Size: 4.3 MB (4306865 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71122eb435be9f59c42f1f696beefa0b682c6d088643777dbfb0bd51458de564`  
		Last Modified: Wed, 16 Sep 2026 05:24:46 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-21` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:5f713a4ee028c25c2ff3349c404c1d5e3060550011da7edf350ede28ce1fe58a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.0 MB (282043768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1668256ae767540ab6ac3de98fe9387a8700614eea2d3eb418fb41be072e30`
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
# Wed, 16 Sep 2026 05:24:29 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:24:29 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 05:24:29 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:24:29 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:24:29 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 05:24:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 05:24:29 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 05:24:29 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:24:29 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 05:24:29 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 05:24:29 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 05:24:29 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 05:24:29 GMT
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
	-	`sha256:4c841c6ab808f8d61e5ed8f8ca05fcd975295751a0567aa822de60ff11f08377`  
		Last Modified: Wed, 16 Sep 2026 05:24:42 GMT  
		Size: 25.5 MB (25510081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c31808d6d268f3339c2f9ddf908d7bc78e7b3756ba9732ca42f752893799b500`  
		Last Modified: Wed, 16 Sep 2026 05:24:42 GMT  
		Size: 9.4 MB (9359972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a4d9e6413d55de1ceebd3175984dde6821650f4a6c61eb8f336d8ddcacedcd`  
		Last Modified: Wed, 16 Sep 2026 05:24:42 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db297291269efc2ecfd084527eef8b6e2f1c5944acbf8c93b4d3c857072f1df`  
		Last Modified: Wed, 16 Sep 2026 05:24:42 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:b81f60de8d17728342041e1a78bcec4e619517be993f949c0b9e794915946510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4328185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b411b3ebbdd2059631ef1bac8bc8da410d1269aee9be3046bf0dbc9ed179e871`

```dockerfile
```

-	Layers:
	-	`sha256:054786a960a4d4a9ee651b5369670c77126ca49b5730cbb0c12e849691fd0d4d`  
		Last Modified: Wed, 16 Sep 2026 05:24:42 GMT  
		Size: 4.3 MB (4313387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e686003e2b93d7871f8dae553745fc3817c12f0e5c49427115e8e506519626bf`  
		Last Modified: Wed, 16 Sep 2026 05:24:41 GMT  
		Size: 14.8 KB (14798 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-21` - linux; ppc64le

```console
$ docker pull maven@sha256:74d9893a59e1a1608295cf3ba8ea044dc3b0575e3054f99417f14a027c4a5d6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.7 MB (293715247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b004cc1f74d9b4384c1ce164b482b4e666f57637b08396bdd8f7decc28308467`
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
# Wed, 16 Sep 2026 11:54:39 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 11:54:39 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 11:54:39 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 11:54:39 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 11:54:39 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 11:54:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 11:54:39 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 11:54:39 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 11:54:40 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 11:54:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 11:54:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 11:54:40 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 11:54:40 GMT
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
	-	`sha256:37b19011376f8d24f1c49568b9010597e5388d3619c68a24479e86dba097c151`  
		Last Modified: Wed, 16 Sep 2026 11:56:07 GMT  
		Size: 30.0 MB (29969791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b3551c768141be61f0fb4041e1e0e87ae419bd599aff5f9178ad59ec23f814`  
		Last Modified: Wed, 16 Sep 2026 11:56:06 GMT  
		Size: 9.4 MB (9359968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e6491ae28b2ef9e47eaa7c4b504b89f9b370b11978e69cf4ef2dd297dc2c79`  
		Last Modified: Wed, 16 Sep 2026 11:56:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b2014135da72439cf50823d55ec5f5d952744ce59ea699edbee969ddba71636`  
		Last Modified: Wed, 16 Sep 2026 11:56:06 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:406a30b0831b057789cdf0f6c8084181f4613632b95c4ae43b57fd744eac0274
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4322009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b01787ee701e82636a721c525bb081d8c9c18ee6bc947a1ec76b83fc7620ad`

```dockerfile
```

-	Layers:
	-	`sha256:2cefded8f0fe241d2f5abac9ab484aaf9286b075405d728c566f6c28a72be829`  
		Last Modified: Wed, 16 Sep 2026 11:56:06 GMT  
		Size: 4.3 MB (4307294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4008a116ccc0115262cb52f006cb2fac4ab4616ed0f6f5976a0d067fc0d05ab0`  
		Last Modified: Wed, 16 Sep 2026 11:56:05 GMT  
		Size: 14.7 KB (14715 bytes)  
		MIME: application/vnd.in-toto+json
