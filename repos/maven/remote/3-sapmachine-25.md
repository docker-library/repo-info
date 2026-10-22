## `maven:3-sapmachine-25`

```console
$ docker pull maven@sha256:9b6f931321f7899b6437b691d56edb79f3b4e4b96237e9178f4b6003eb32a5c0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `maven:3-sapmachine-25` - linux; amd64

```console
$ docker pull maven@sha256:e1b6993dc08391eecb7a6dbc8fe802479572a79e642e047027c07fd7203f0239
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.0 MB (204034990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330dd930b4d7e7e1ec2a434f01f7a237ceded6cef8a1b93212a99ab8609fe0ad`
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
# Wed, 21 Oct 2026 22:13:17 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:13:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 21 Oct 2026 22:13:17 GMT
CMD ["jshell"]
# Wed, 21 Oct 2026 22:38:06 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:38:06 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 21 Oct 2026 22:38:06 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 22:38:06 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 22:38:06 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 21 Oct 2026 22:38:06 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 21 Oct 2026 22:38:06 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 21 Oct 2026 22:38:06 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:38:06 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 21 Oct 2026 22:38:06 GMT
ARG USER_HOME_DIR=/root
# Wed, 21 Oct 2026 22:38:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 21 Oct 2026 22:38:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 21 Oct 2026 22:38:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2240186b0a56a6128925ff7cde788c2b723569b9c8d0f76642366d4451198c6`  
		Last Modified: Wed, 21 Oct 2026 22:13:36 GMT  
		Size: 138.8 MB (138778033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38a58e68c5b67a4a9c1b4f353e412b6b258d282a4ce5036f2f2cca46d1fa7535`  
		Last Modified: Wed, 21 Oct 2026 22:38:19 GMT  
		Size: 25.4 MB (25431176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cf0b5b9e8b317b8cd30c59f8fd644ee39c3c70f814615688dc6faf497716305`  
		Last Modified: Wed, 21 Oct 2026 22:38:19 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d24007433a155b20efc6ec3ee0a99d2024cdfd004bac67ed588839c98c378c19`  
		Last Modified: Wed, 21 Oct 2026 22:38:18 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cecf18dd015d3bb0c5f7c86db03167fa412d70c368373b21c9b533a25b9ebe6`  
		Last Modified: Wed, 21 Oct 2026 22:38:18 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:4444803b9d4ad51c200edc57855cc63be16a1d926e7721c2a9db240bc2dbc253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4270857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d1512e7e10a65238828e86069ea718dda27ee30a14d219ef3cec299fa7caeb4`

```dockerfile
```

-	Layers:
	-	`sha256:56e80a003e70d3128bf69fc6e929f0001fa81febd132faf4e36c5f9b80890d99`  
		Last Modified: Wed, 21 Oct 2026 22:38:19 GMT  
		Size: 4.3 MB (4256186 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55562a8d5460942758fb6249e62dcdf522b2c2cce7668f61b03defdbf6e7c58d`  
		Last Modified: Wed, 21 Oct 2026 22:38:18 GMT  
		Size: 14.7 KB (14671 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-25` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:0f27b4c9ba47765a9997ae219e2b458a82bf9776ca4ccdec10346d8440d0ed77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.3 MB (202285147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd9fbfcd7abf1d903971f5b0146dbd28f12301ae0d05f4e47f125c451a1a4b4c`
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
# Wed, 21 Oct 2026 22:45:54 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:45:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 21 Oct 2026 22:45:54 GMT
CMD ["jshell"]
# Wed, 21 Oct 2026 23:31:30 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 23:31:30 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 21 Oct 2026 23:31:30 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 23:31:30 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 23:31:30 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 21 Oct 2026 23:31:30 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 21 Oct 2026 23:31:30 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 21 Oct 2026 23:31:30 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:31:31 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 21 Oct 2026 23:31:31 GMT
ARG USER_HOME_DIR=/root
# Wed, 21 Oct 2026 23:31:31 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 21 Oct 2026 23:31:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 21 Oct 2026 23:31:31 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee88651fb4fd6f3ed4c399ad9a5713d32b81cad690a50d9a2928eeac356eac21`  
		Last Modified: Wed, 21 Oct 2026 22:46:14 GMT  
		Size: 137.8 MB (137773528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e9dd3b92853fccb2bd5d8599fbba7f51c597f21ea5f4a0df7b2b7c9478b6d1`  
		Last Modified: Wed, 21 Oct 2026 23:31:44 GMT  
		Size: 25.5 MB (25511834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903f7abbe06fa02240b80910ef67f0b188f86a9416724942bb4a0ddfef4bc376`  
		Last Modified: Wed, 21 Oct 2026 23:31:43 GMT  
		Size: 10.1 MB (10059016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:858a1e37759f92a5eaca20090af80828137f1cc034445fead4ece50b2f11ad5e`  
		Last Modified: Wed, 21 Oct 2026 23:31:43 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea2ed4eafcebde0ffdc77fe3fccf939c125edb0a174ccc846664f85c57db12f2`  
		Last Modified: Wed, 21 Oct 2026 23:31:43 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:b500c96ef9bb2db541a9cc6d4292263a631c7e2d0c683c5c46f0f1abe0bd0f8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4277508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac56084f9ec20656dc5e5b367fa0a4a3a96553c4b411622040055da1095cebfb`

```dockerfile
```

-	Layers:
	-	`sha256:be7d4a10b50b02b833ac6f6c07c5ff9364303916c5011e747dc219e11878b276`  
		Last Modified: Wed, 21 Oct 2026 23:31:43 GMT  
		Size: 4.3 MB (4262705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b2c18978500276504877fb14ba944d5fd069f0202024be56e2a181065e72126`  
		Last Modified: Wed, 21 Oct 2026 23:31:43 GMT  
		Size: 14.8 KB (14803 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-25` - linux; ppc64le

```console
$ docker pull maven@sha256:2e222515373d9d696e4d120d614f65b09a5acff9350dec51d4c9c21c092cf511
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211094701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b418742f90312b39b5e38dded2dfb09e6417865530b0fdc0d775feee50fee1f5`
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
# Thu, 22 Oct 2026 09:59:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 09:59:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 22 Oct 2026 09:59:25 GMT
CMD ["jshell"]
# Thu, 22 Oct 2026 15:31:47 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 15:31:50 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 22 Oct 2026 15:31:50 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 22 Oct 2026 15:31:50 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 22 Oct 2026 15:31:50 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 22 Oct 2026 15:31:50 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 22 Oct 2026 15:31:50 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 22 Oct 2026 15:31:50 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 22 Oct 2026 15:31:52 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 22 Oct 2026 15:31:52 GMT
ARG USER_HOME_DIR=/root
# Thu, 22 Oct 2026 15:31:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 22 Oct 2026 15:31:52 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 22 Oct 2026 15:31:52 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a02cb1295f19ef2c8b589465b775ec2ac62077bf700bd93df74131438ec804e`  
		Last Modified: Thu, 22 Oct 2026 10:00:13 GMT  
		Size: 136.7 MB (136673417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c6f60f38116b26e47bfaaa0a0758478418bef36f3b28b57b595573d4b0cf2f5`  
		Last Modified: Thu, 22 Oct 2026 15:32:26 GMT  
		Size: 30.0 MB (29983277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1694247afc94e9088278136ad55ce919e75ec7aa9d551b6ae054887cd1645575`  
		Last Modified: Thu, 22 Oct 2026 15:32:25 GMT  
		Size: 10.1 MB (10059010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcfba5853d396c351d89bf1b3ec60492548a24c34d940880552ac2c61bcef01a`  
		Last Modified: Thu, 22 Oct 2026 15:32:25 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd197b8e0083fe1032b80c1dc2a0c5c7b48ff78b130501a9fd3ce00504b2c0d2`  
		Last Modified: Thu, 22 Oct 2026 15:32:25 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:c5ce756b19326d8d319c061c819323f545e8f942c7a03af8842e2d6d62c067ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:402891b190731ead379f8ad0daae5cf4ae492f248061cd0a2f401d90d04543b2`

```dockerfile
```

-	Layers:
	-	`sha256:fda4f90c934b54dc359dcd8ae601be21d3f03385f1b1e27a81d20e6dfae9d8eb`  
		Last Modified: Thu, 22 Oct 2026 15:32:25 GMT  
		Size: 4.3 MB (4257931 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a03bdb674c7e69da9a3b42b971b501b4d54b7e02e682d500dc3e419147e029a`  
		Last Modified: Thu, 22 Oct 2026 15:32:25 GMT  
		Size: 14.7 KB (14721 bytes)  
		MIME: application/vnd.in-toto+json
