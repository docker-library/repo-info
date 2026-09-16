## `maven:3-sapmachine-26`

```console
$ docker pull maven@sha256:cd747e9f2561f7b174c228a653a1212b0f78ce1e5e3a10962adec7cf0b38a919
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `maven:3-sapmachine-26` - linux; amd64

```console
$ docker pull maven@sha256:d09e50fd85a9ddc1c89090ffb355c7f5eaa982849807a5185eaa498856605353
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.8 MB (205834124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb1520be9fcb87bb839177caa9cf46986aa90f7c00e9c12cff7824ddf162dcc6`
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
# Wed, 16 Sep 2026 03:30:45 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 16 Sep 2026 03:30:45 GMT
CMD ["jshell"]
# Wed, 16 Sep 2026 05:24:59 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:24:59 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 05:24:59 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:24:59 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:24:59 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 05:24:59 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 05:24:59 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 05:24:59 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:24:59 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 05:24:59 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 05:24:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 05:24:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 05:24:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a7766cb973167a8acc2cff9f838e6a66643b3cae073abeb76111362f06b0ee5`  
		Last Modified: Wed, 16 Sep 2026 03:31:04 GMT  
		Size: 141.3 MB (141283005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c471479390108d1dcfaa795545c89ae3935195591b2ad1fc2b307558b2b4347`  
		Last Modified: Wed, 16 Sep 2026 05:25:11 GMT  
		Size: 25.4 MB (25426030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3155980e3c8dfeda28ff9c822533dbd1700397c8b924a67a7244f4bf0b3aece7`  
		Last Modified: Wed, 16 Sep 2026 05:25:11 GMT  
		Size: 9.4 MB (9359969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5e08a955d358393ba7e1002f7f3a85d81cfb7cddf8642ffd408be3f1ebd5d7`  
		Last Modified: Wed, 16 Sep 2026 05:25:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dea556a427aa9e49109ba805a5ff19b82d2c36246cb3430eb9337b3a8636aec`  
		Last Modified: Wed, 16 Sep 2026 05:25:10 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-26` - unknown; unknown

```console
$ docker pull maven@sha256:46fc6816ee1d48c2d161692e25b1ee25dbd503c951b5f937433b63aec656a0ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4267003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d5c8ee8faef70c3a59e2d30628f66c30fa2438396a8d5e4e176d856132299c`

```dockerfile
```

-	Layers:
	-	`sha256:e8a4e06e49a565b20fee13e42b83377dddd27e040b471334dcc184fc81044f1b`  
		Last Modified: Wed, 16 Sep 2026 05:25:10 GMT  
		Size: 4.3 MB (4251096 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5f8a202d9b98bf8362b57468b1f04b8ad762ae254e183e74160d47e9e43b934`  
		Last Modified: Wed, 16 Sep 2026 05:25:10 GMT  
		Size: 15.9 KB (15907 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-26` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:489a9ab64e6157c2285f8a3417b5ec5f551dae8dc5c78724685922db1aabee37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.2 MB (204154488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d9d69a492ee7ba152258f2b43e809c74c1eb7768dd97f7a3319a3da294b8110`
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
# Wed, 16 Sep 2026 03:30:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 16 Sep 2026 03:30:29 GMT
CMD ["jshell"]
# Wed, 16 Sep 2026 05:24:52 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:24:52 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 05:24:52 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:24:52 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:24:52 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 05:24:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 05:24:52 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 05:24:52 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:24:52 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 05:24:52 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 05:24:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 05:24:52 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 05:24:52 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750938fac7fad919b31567edc77288e8e169f95b2bf3f5fd28dbe6d5918ac26e`  
		Last Modified: Wed, 16 Sep 2026 03:30:48 GMT  
		Size: 140.3 MB (140341816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0541667f10910711cdae0c15ffcc06d4422c80a84f6818c3edd54e84e0855706`  
		Last Modified: Wed, 16 Sep 2026 05:25:05 GMT  
		Size: 25.5 MB (25510114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b64bda7bbee00cf27ac585d220588eadc229a02cb6f9d4ca702e55f01328511`  
		Last Modified: Wed, 16 Sep 2026 05:25:05 GMT  
		Size: 9.4 MB (9359974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7156192f95896e6ba70fa7722f3f5e5387db5a13d80ba7a648319b4e17aa6333`  
		Last Modified: Wed, 16 Sep 2026 05:25:04 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff9cc3f79d137459685351973d7e1bdd0dc8638577bf0a100be3af10cdcfec4b`  
		Last Modified: Wed, 16 Sep 2026 05:25:04 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-26` - unknown; unknown

```console
$ docker pull maven@sha256:e8fe76b0fe85d962e1faa5fbb7bb08033b8cb74d57f64a2d9f363fc40e461168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4273751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29e3b3d80158281fccadda7a8d821be7dbda5abfb250987b1c07e44858386ad0`

```dockerfile
```

-	Layers:
	-	`sha256:c046db9df8b60e91344a98c0ec37324c45cc0261c7e2a7ec121e98328dcd8792`  
		Last Modified: Wed, 16 Sep 2026 05:25:04 GMT  
		Size: 4.3 MB (4257663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:106897448680cb846c54f1d89166e8ad700b4582db9bb5a66172ad46781d20d4`  
		Last Modified: Wed, 16 Sep 2026 05:25:04 GMT  
		Size: 16.1 KB (16088 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-26` - linux; ppc64le

```console
$ docker pull maven@sha256:9a5edfb010b0bdbf311f8eeb27d5dfee30365291570713f29b1458b0709f75ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.1 MB (214087117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12aca64a7fd2d7b94586a706b6fe8d09a7cfaebd3eda70026a30a193f9c2b48`
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
# Wed, 16 Sep 2026 08:03:26 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 08:03:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 16 Sep 2026 08:03:26 GMT
CMD ["jshell"]
# Wed, 16 Sep 2026 11:59:33 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 11:59:33 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 11:59:33 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 11:59:33 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 11:59:33 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 11:59:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 11:59:33 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 11:59:33 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 11:59:33 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 11:59:33 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 11:59:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 11:59:33 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 11:59:33 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80940d14591303abbb87a1337e643600713615ab75565a586c7acc957a6394a1`  
		Last Modified: Wed, 16 Sep 2026 08:04:13 GMT  
		Size: 140.4 MB (140379336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee1475cb06d717b3bb94e355ae28288291623d964b15d1947b576246be858b0`  
		Last Modified: Wed, 16 Sep 2026 12:00:00 GMT  
		Size: 30.0 MB (29969851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873df9770328461c1eeedd5247b561e9bcca1ba288586f3a0f54a1446b30f1b4`  
		Last Modified: Wed, 16 Sep 2026 12:00:00 GMT  
		Size: 9.4 MB (9359968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73a1f7d1f239ff65d627b53a14c78fcfa6f0f689596e397ee361d1a8042566aa`  
		Last Modified: Wed, 16 Sep 2026 11:59:59 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd946f1e6f22af308311a7de75441c8ddad3178254fffad75cf807b985fbd2b7`  
		Last Modified: Wed, 16 Sep 2026 11:59:59 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-26` - unknown; unknown

```console
$ docker pull maven@sha256:c28daac47fb771d0710325633b6ef3f02756afcc677eca4b2eadb543bc0f39d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4268846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9fdf065c70b155bbec4a54b142032d945b3462f6ead88933b0169166c3e78fe`

```dockerfile
```

-	Layers:
	-	`sha256:b311698155f99fe45240d687f1bfd55c99123acbacebae2b354a80a274d81530`  
		Last Modified: Wed, 16 Sep 2026 12:00:00 GMT  
		Size: 4.3 MB (4252865 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4a90d3a25c58474376d4c08239f7f00476bb5851df4fd50d8d45aae48fb1529`  
		Last Modified: Wed, 16 Sep 2026 11:59:59 GMT  
		Size: 16.0 KB (15981 bytes)  
		MIME: application/vnd.in-toto+json
