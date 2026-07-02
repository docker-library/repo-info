## `maven:3-sapmachine-25`

```console
$ docker pull maven@sha256:00b88ec395301fba86268220f20a2813aba2b083e704a231ef9e6c5132fc64bc
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
$ docker pull maven@sha256:4c16257bcce55d08e7700551bd709ba93f9ee0e25fe365389d4d7d844da7cba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289111348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cbea181041a02d5ccfa8a00cb4dfd4900cf283b17f639b5ec90e83abdfbdd22`
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
# Thu, 02 Jul 2026 02:37:01 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:37:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 02 Jul 2026 02:37:01 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 06:47:14 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:47:14 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 06:47:14 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:47:14 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:47:14 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 06:47:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 06:47:14 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 06:47:14 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 06:47:15 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 06:47:15 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 06:47:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 06:47:15 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 06:47:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd8e185e7f8b76fe1534f9e58db3f446a73a4108ec3d9b3cec461cf1b3fdb6a8`  
		Last Modified: Thu, 02 Jul 2026 02:37:26 GMT  
		Size: 222.2 MB (222186691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bded8b44e5c3eed3dba62c1294de0838098b747c8d23f0ad41a9004fe9718fc4`  
		Last Modified: Thu, 02 Jul 2026 06:47:29 GMT  
		Size: 27.8 MB (27828082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d963d0b682c1eb8c36c827ed010f044717c86de08879b75e8e9cb397a43f7b39`  
		Last Modified: Thu, 02 Jul 2026 06:47:29 GMT  
		Size: 9.4 MB (9359966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e1aad58cbb95060ae0d662fe5430e99358f7a7577fa35ecbceb77dc7720800`  
		Last Modified: Thu, 02 Jul 2026 06:47:29 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6e1d2ccd01ea5ea9176b988fc2ff4b183082029f34f1db0107d1d8f078ef635`  
		Last Modified: Thu, 02 Jul 2026 06:47:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:d80fb731955c772916a7fac76c21051f43e1aa9d8e726ed52e4af940df0f841c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55fdf77ca8788a9faaedd10a6b68a35b710e4440ebe10b348d4457260494e7e3`

```dockerfile
```

-	Layers:
	-	`sha256:f1dd00d735d93e7f82d206ae96b02f178b83f999ffff7da1cdb0a4d02789f491`  
		Last Modified: Thu, 02 Jul 2026 06:47:29 GMT  
		Size: 4.3 MB (4296257 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89fbe764f2edb07969ec3f67dcd64d180273901dee64720206ef1ab77f918fe4`  
		Last Modified: Thu, 02 Jul 2026 06:47:28 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-25` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:7639d6668c1bd3683784652b6f95057ac419d49f4289de6f995f574d7105ba2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.1 MB (286096479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c7b85737b6be9865fd36f157d5f17511b112c460908ecd1dbf179f9363d076`
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
# Thu, 02 Jul 2026 02:36:07 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:36:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 02 Jul 2026 02:36:07 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 06:41:41 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:41:41 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 06:41:41 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:41:41 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:41:41 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 06:41:41 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 06:41:41 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 06:41:41 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 06:41:41 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 06:41:41 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 06:41:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 06:41:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 06:41:41 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0eea3cd6ecc0d2c21ab4e332c1c2c4b72bf61bdbffa398b43e2796ea0a5cd2`  
		Last Modified: Thu, 02 Jul 2026 02:36:31 GMT  
		Size: 220.0 MB (219990595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcc8dca4b634d3d16c9adb6ff6895efb986ea0269eb27b80e21b0d562353876d`  
		Last Modified: Thu, 02 Jul 2026 06:41:56 GMT  
		Size: 27.9 MB (27860722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:978cf2b703a475d7c9e4aa94baf535b4aee5454472668d6a49c55283321a6b79`  
		Last Modified: Thu, 02 Jul 2026 06:41:55 GMT  
		Size: 9.4 MB (9359973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7aa33a53b3905073b4c4f9ccbc7a939d2c5e003dab7f045e3da0bd4738645d3`  
		Last Modified: Thu, 02 Jul 2026 06:41:55 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0537f7d8f5b9c69cde0421dcc4723d62d1dcc2b551107cc1c3bdaaf27ee28789`  
		Last Modified: Thu, 02 Jul 2026 06:41:54 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:63cb1ca3d3cfcd18e939c4d9f2207e8230b9782609a3d0dd7573bb72790d274f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4317574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a76296cf8e4cfe06a86abeb7a88cd668cd2dcc11fde4b659affb24c0e4b32d1`

```dockerfile
```

-	Layers:
	-	`sha256:1d17d1f162dbbab7826f91b7d122ed90ea867e3d66b9bbe83b8a754bd1f14ed0`  
		Last Modified: Thu, 02 Jul 2026 06:41:55 GMT  
		Size: 4.3 MB (4302776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78eafd1035028a7cb1e45c7403059c4113ca1e2a358647750ed53814a11774a2`  
		Last Modified: Thu, 02 Jul 2026 06:41:55 GMT  
		Size: 14.8 KB (14798 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-25` - linux; ppc64le

```console
$ docker pull maven@sha256:abeccd6f8c516cdd3ae81c61f5792b07ce842d8924423a5ea089319d3541855c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299104664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10943788c5b19d168d7f1e31f5c546b7a77f109c4d315e7633c43ab10c1a8791`
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
# Thu, 02 Jul 2026 03:28:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:28:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 02 Jul 2026 03:28:53 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 10:08:43 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 10:08:44 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 10:08:44 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 10:08:44 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 10:08:44 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 10:08:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 10:08:44 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 10:08:45 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 10:08:45 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 10:08:45 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 10:08:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 10:08:45 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 10:08:45 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c1ef5730b9db5cab8d8f33f2692b49ad442d26504879f88f4d728c5cbb3e8b`  
		Last Modified: Thu, 02 Jul 2026 03:29:34 GMT  
		Size: 222.9 MB (222907186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb1109104e56a14e35d3ec58edd71d10a8626f4680bb3046a91b36ae89ae002`  
		Last Modified: Thu, 02 Jul 2026 10:09:21 GMT  
		Size: 32.5 MB (32523030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c2e0c48c638782661232c27e4e296833979aa4ddc7eda78d095452ac8ceef7`  
		Last Modified: Thu, 02 Jul 2026 10:09:19 GMT  
		Size: 9.4 MB (9359968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb85a410f2107b1d32e433a120e4f05a28d57457736ece283e6f6fe6a4d79513`  
		Last Modified: Thu, 02 Jul 2026 10:09:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ea48a8b4929b197ca70a3ba320b095f44832c65ec011c36695bb30be9ddf265`  
		Last Modified: Thu, 02 Jul 2026 10:09:18 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:2f0fb0bd9b7f435c559ec3bd4517b9719c8661c6600241222b7e479973572c66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6066a7eeb8273b14802bd2fe58d21b9b1287d66f386a4d37bcdb48c0bac6fc64`

```dockerfile
```

-	Layers:
	-	`sha256:b0dad67701275dd672f6d8f41aa0f99931ab30fac576f8446218ebc14df3c41f`  
		Last Modified: Thu, 02 Jul 2026 10:09:18 GMT  
		Size: 4.3 MB (4296068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a1df179bd1a9ba1fb8cc3dc263ec36bc59d7a953f7b1196bf0ab23951c0f3fd`  
		Last Modified: Thu, 02 Jul 2026 10:09:18 GMT  
		Size: 14.7 KB (14715 bytes)  
		MIME: application/vnd.in-toto+json
