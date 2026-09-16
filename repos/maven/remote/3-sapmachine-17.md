## `maven:3-sapmachine-17`

```console
$ docker pull maven@sha256:b37de16a8eea79b35c2c88a890d7ad0fdc0263eb32fafcf15c8775ccbd2c91f7
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
$ docker pull maven@sha256:ba55a2d7079150c65d5db27ebb585764f3f524caa666182d3a8cbd65fb0ff1ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.7 MB (269720144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a3c77709253b0c846ff08f913dcd91cbc3d71bc4c515484866ea633addc977`
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
# Wed, 16 Sep 2026 03:32:14 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:32:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 16 Sep 2026 03:32:14 GMT
CMD ["jshell"]
# Wed, 16 Sep 2026 05:24:16 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:24:16 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 05:24:16 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:24:16 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:24:16 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 05:24:16 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 05:24:16 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 05:24:16 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:24:16 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 05:24:16 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 05:24:16 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 05:24:16 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 05:24:16 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a501cd0b2114883eec7ed3cb3763666a57473dbab3afd12e86223cbc02a6847a`  
		Last Modified: Wed, 16 Sep 2026 03:32:36 GMT  
		Size: 205.2 MB (205169023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e1349a0f69d5f829374b8fe9c6aec91bbd421885e65f937a83da14d7b9e8ec`  
		Last Modified: Wed, 16 Sep 2026 05:24:29 GMT  
		Size: 25.4 MB (25426026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5747d77932492e4c12b91493349cf95e4ee5a432e199b6d20930117bebe5fbe`  
		Last Modified: Wed, 16 Sep 2026 05:24:28 GMT  
		Size: 9.4 MB (9359973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca4aa5c77d829b2a5fa495c89b8a7bcc0813967275e1f42c08aa5e5e37ae6dd`  
		Last Modified: Wed, 16 Sep 2026 05:24:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896ba135c10769811baeac8c058b9f03b9f5a44867c3b430a6b5dbf76743df81`  
		Last Modified: Wed, 16 Sep 2026 05:24:28 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:3a772824565f1f4e2077451b5453aaae70e2b46618ce47157cd5e9f652b119db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4319911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b3c0402886fff345a476a9626d056fc5ad6da50a9b0ddfe323e1ca276b9fdad`

```dockerfile
```

-	Layers:
	-	`sha256:95fc72946da9bbea81d2a6d53ac6c6d5e38f14a0992331587266a7322e885280`  
		Last Modified: Wed, 16 Sep 2026 05:24:28 GMT  
		Size: 4.3 MB (4305246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75f0bb004ef5b0a3b0602127c56b78bfe66942391179a0e0fcffd82b0eea7e8f`  
		Last Modified: Wed, 16 Sep 2026 05:24:28 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-17` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:83bae752862e9183b4cbb8f1fb53df78888213876c198e05cd38961742d839f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267761424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a1f7e38852b13bd26dc79b1484cc19081f4eb0508ff435b1a9ecd180893dcd1`
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
# Wed, 16 Sep 2026 03:31:56 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 16 Sep 2026 03:31:56 GMT
CMD ["jshell"]
# Wed, 16 Sep 2026 05:24:08 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:24:08 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 05:24:08 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:24:08 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:24:08 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 05:24:08 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 05:24:08 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 05:24:08 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:24:08 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 05:24:08 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 05:24:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 05:24:08 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 05:24:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d22e2edb797127884dc299862f7f1004c6870768d6b299a7a7cab992596197`  
		Last Modified: Wed, 16 Sep 2026 03:32:19 GMT  
		Size: 203.9 MB (203948823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d8b527e369813e6514ba4c7bfa029f7db49611869cb4a5b218d4aadaf4b1b1d`  
		Last Modified: Wed, 16 Sep 2026 05:24:22 GMT  
		Size: 25.5 MB (25510039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d25c1321e9f431768dabc07403b705c3fcba66bf5605932c224cf94c13a82a8c`  
		Last Modified: Wed, 16 Sep 2026 05:24:22 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba5fe31e6c10c962f1e8f7634e98f9f969d9b5c330a4ed624189580b6c4f4137`  
		Last Modified: Wed, 16 Sep 2026 05:24:21 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94a08149170375543a6ebddb4333adc23e39dafbf54a137cd5020713be8999a2`  
		Last Modified: Wed, 16 Sep 2026 05:24:21 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:bbbfd563373e224fc57f6065aff31d4adad1a411367a6bf9acb80daf4a05c9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4326566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0f5a4a5d79cd01655f1528225f1d47ed291c5b00dd78504bf58db1f98bdcdc1`

```dockerfile
```

-	Layers:
	-	`sha256:ded0bf124a91a2982200b27eb74a7492ffd3fd2687d230276045d55afd47bc62`  
		Last Modified: Wed, 16 Sep 2026 05:24:22 GMT  
		Size: 4.3 MB (4311768 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bede64f4c91fded3634759c1e7fa6a667ba09a55c74d87b1229efc5b20a59e1c`  
		Last Modified: Wed, 16 Sep 2026 05:24:21 GMT  
		Size: 14.8 KB (14798 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-17` - linux; ppc64le

```console
$ docker pull maven@sha256:24336de458b30e4f61eb9fff669e01da7909a855ddf5a0df45cb2a2c5e5d6b6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278005174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af30951f3425b5819e63aca4f9036493ba996a28eb58f326c10dea701c76b034`
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
# Wed, 16 Sep 2026 08:15:11 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 08:15:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 16 Sep 2026 08:15:11 GMT
CMD ["jshell"]
# Wed, 16 Sep 2026 11:52:06 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 11:52:07 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 11:52:07 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 11:52:07 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 11:52:07 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 11:52:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 11:52:07 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 11:52:07 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 11:52:07 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 11:52:07 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 11:52:07 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 11:52:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 11:52:07 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b167922c95469daf32f56430ae4305830ab438e5a3d282e6307fd25b2c131941`  
		Last Modified: Wed, 16 Sep 2026 08:15:52 GMT  
		Size: 204.3 MB (204297396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f07a594e05fc9460abf14023c054e3e2d6a220bf896f175876eb93f6a503541`  
		Last Modified: Wed, 16 Sep 2026 11:53:36 GMT  
		Size: 30.0 MB (29969845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c25dd816fbc633070dd8446832dbb9417d8a396e99241ad71cc2839d68367058`  
		Last Modified: Wed, 16 Sep 2026 11:53:36 GMT  
		Size: 9.4 MB (9359974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f828401c67407479fa5d773605810e0df770cb2eacd85d07ac4a3c938edd6dda`  
		Last Modified: Wed, 16 Sep 2026 11:53:36 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6727147a93a6dd8b7f965d1b52da487d94ad4aefc61e0fd463b2a3ebf58649`  
		Last Modified: Wed, 16 Sep 2026 11:53:35 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:9a0c43e72bed98218e0491e2e3c882a6b4a3bfb10f901c7b7f2b491b336b22c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4320390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f3b5f6854f5116a110395199b04ea78ddb2466c9c7ee079870e07a8d8714ca3`

```dockerfile
```

-	Layers:
	-	`sha256:5a958d70991fd66e73f3cee1ccf82408ecba5b597b143b8d798ec24412e73e47`  
		Last Modified: Wed, 16 Sep 2026 11:53:36 GMT  
		Size: 4.3 MB (4305675 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:635f92eda975dbb8ca8f4bd8007bc439aa84a29ceec0fe63d5f69aa34cadf997`  
		Last Modified: Wed, 16 Sep 2026 11:53:35 GMT  
		Size: 14.7 KB (14715 bytes)  
		MIME: application/vnd.in-toto+json
