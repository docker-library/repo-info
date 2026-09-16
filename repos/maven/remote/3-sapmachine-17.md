## `maven:3-sapmachine-17`

```console
$ docker pull maven@sha256:0d099f8041373e3eb9124839a3896f6314ff3b68d71fe40464fe87861f4fba61
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
$ docker pull maven@sha256:fed51b27dda233d9c462f196e2e2a63c8fce64a1d8e892c94259282a5e660b9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278006353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51b1d0f11011aef25dfac54625d76cfe0dc130dca05f756bf6fa33c66c7e5d24`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 08:36:59 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 08:36:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 09 Sep 2026 08:36:59 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 12:19:44 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 12:19:45 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 12:19:45 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 12:19:45 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 12:19:45 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 12:19:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 12:19:45 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 12:19:45 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 12:19:46 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 12:19:46 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 12:19:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 12:19:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 12:19:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:024615285ce808c350ecdc3d8ed2251a1c9be59f4eed757151b55fe88856e422`  
		Last Modified: Wed, 09 Sep 2026 08:37:45 GMT  
		Size: 204.3 MB (204297513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9275726d840bad407f75c140517e6e46f2daf0aee595a4315803adda19a0d527`  
		Last Modified: Wed, 09 Sep 2026 12:20:16 GMT  
		Size: 30.0 MB (29971014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c50b1305f3ac0e04547495103b5cc75b1038f12df936ae46871d569f8ff22579`  
		Last Modified: Wed, 09 Sep 2026 12:20:15 GMT  
		Size: 9.4 MB (9359941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9d472ff372e7677435e60cbbad0c7ec1117e0d6751f2faa42d928c66f238a2`  
		Last Modified: Wed, 09 Sep 2026 12:20:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e8c3167ef58b63831ce1a17646cb8505dc292a910add3949b83329bab893715`  
		Last Modified: Wed, 09 Sep 2026 12:20:15 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:f8ad4eedc9a911adda9e5a0437169ac3ca71ec57c0b96e8e4b554042c672e816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4320379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48760d9650cc685290cb0e0b91b3bbed4cbad1faba421aaa03a15c8b518403e0`

```dockerfile
```

-	Layers:
	-	`sha256:636bbdc0710cbcf7a83ce4ea0b94bd118892af35a230a03173a23a797f5c3855`  
		Last Modified: Wed, 09 Sep 2026 12:20:15 GMT  
		Size: 4.3 MB (4305665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a512cc85e71036eb69217718e4a02671fb6c3dffb78fea192817cf36e68e827e`  
		Last Modified: Wed, 09 Sep 2026 12:20:14 GMT  
		Size: 14.7 KB (14714 bytes)  
		MIME: application/vnd.in-toto+json
