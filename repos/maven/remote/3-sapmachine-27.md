## `maven:3-sapmachine-27`

```console
$ docker pull maven@sha256:b8d765282511ec0ace6c6b688e0134bcc7468dffe14809677260b166403ca404
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `maven:3-sapmachine-27` - linux; amd64

```console
$ docker pull maven@sha256:e0d7a5e86be123ff431710f81d39d87800f1c40eceb72fe9f32287ff89d248d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.3 MB (204257199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d659c3809673dd5b2668d4e4961fed954979a639eac52cd102077f1dafcce4a7`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:31:20 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 20 Nov 2026 03:31:20 GMT
CMD ["jshell"]
# Mon, 23 Nov 2026 20:13:38 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 20:13:38 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 23 Nov 2026 20:13:38 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:13:38 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:13:38 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 23 Nov 2026 20:13:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 23 Nov 2026 20:13:38 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 23 Nov 2026 20:13:38 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 20:13:38 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 23 Nov 2026 20:13:38 GMT
ARG USER_HOME_DIR=/root
# Mon, 23 Nov 2026 20:13:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 23 Nov 2026 20:13:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 23 Nov 2026 20:13:38 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb85953ae4c59649e76e5acb01cbceb53bab74a2c8d49c96ea3dd8868948cd2b`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 139.7 MB (139679512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb65028997d5e01461bae4c90245712cc857c5b6379f4f814b532c37533f810`  
		Last Modified: Mon, 23 Nov 2026 20:13:52 GMT  
		Size: 25.4 MB (25432093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678a09b180dbefa670e06afb71364113dc421bdab3509e0e118a7cc9efeb8116`  
		Last Modified: Mon, 23 Nov 2026 20:13:51 GMT  
		Size: 9.4 MB (9351293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87682145fe22153b2544c6fd47c61ef5fc709132b89c1a4070195c33aa401d1d`  
		Last Modified: Mon, 23 Nov 2026 20:13:51 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5080b82032fac61f1b5aa06086a3db7a09da643fb7da53b6b32eebdbe87dce1b`  
		Last Modified: Mon, 23 Nov 2026 20:13:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-27` - unknown; unknown

```console
$ docker pull maven@sha256:d729600182cf4f0b8d3b6629437aa480ad9a9966e224aa9b341671c3f7ae7590
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4264488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b670e22a0b6ac08a9cf83a4d30b68f1346bf65499f3f002dfe130ac0f93175b7`

```dockerfile
```

-	Layers:
	-	`sha256:6a66736d2206f4bedd67212d76d9fb9b3e1ecb1224e4566698ba1a1f0c1cece0`  
		Last Modified: Mon, 23 Nov 2026 20:13:51 GMT  
		Size: 4.2 MB (4248577 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebfa978371de4afd9c1a19071d04dd87fe67e05e7ec001292628ceec8f98433e`  
		Last Modified: Mon, 23 Nov 2026 20:13:51 GMT  
		Size: 15.9 KB (15911 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-27` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:cc21df358b0139e0636e09330d2513e7a7d5c3e23c14c572f267afa2b732e598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.3 MB (203311552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c29063c98ef72ba6e21d2d7bde575403a7f780a34357efa16cfbd013eac0b0a7`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:33:16 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:33:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 20 Nov 2026 03:33:16 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 06:16:00 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:16:00 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:16:00 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:16:00 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:16:00 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:16:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:16:00 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:16:00 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:16:00 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:16:00 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:16:00 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:16:00 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:16:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b80cf2b0e5b01484de16bd75fd700b25748556e7ed00ede256c74eaf616c70a6`  
		Last Modified: Fri, 20 Nov 2026 03:33:34 GMT  
		Size: 138.8 MB (138772428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48af12794793e0aa45f3a64c061eadb283c9bf356c255bdbd7535eb22efd7ea2`  
		Last Modified: Fri, 20 Nov 2026 06:16:12 GMT  
		Size: 25.5 MB (25513791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b4dc141ffc12aa5aecb016469feb10270e2dbf9c11acb68f18ee1d9f5eb9dc`  
		Last Modified: Fri, 20 Nov 2026 06:16:12 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a309450fcb83ea65324acae033e95f6e72cdccf0ce5b00aaf785149bfd3de60`  
		Last Modified: Fri, 20 Nov 2026 06:16:11 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca2ce3cde24f73d27b427e9b95c3aebaa887a102cc94bfa349c704a5b9c357e`  
		Last Modified: Fri, 20 Nov 2026 06:16:11 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-27` - unknown; unknown

```console
$ docker pull maven@sha256:d8d4cf1bcf12eecfe7c9d19fbcdeafd18d0d2cadd1cf93a90518f7b9afc3a51a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4277546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4555864b479a191fbb730dce856edcbf815eb84b35a4c2f46830c7ac6a1d0be0`

```dockerfile
```

-	Layers:
	-	`sha256:06ada09382373c712a42237cd54bba55d94d667ea5a8a8c028e77f3874c9adfb`  
		Last Modified: Fri, 20 Nov 2026 06:16:11 GMT  
		Size: 4.3 MB (4261450 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d32bdaf61c3d58964177b9d8240eebc7f033472fbdfc0c160134c7d3d3f05e24`  
		Last Modified: Fri, 20 Nov 2026 06:16:11 GMT  
		Size: 16.1 KB (16096 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-27` - linux; ppc64le

```console
$ docker pull maven@sha256:b5118cc96bdcb9a1eab322f726f9defe64c09470535c24e7c9cccc6b24e20b92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.7 MB (212690946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc1064dfe2a793dddda39b5485f50691b210995dc89c75b07b6cbd6ad8039e4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:18:41 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:18:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 20 Nov 2026 04:18:41 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 09:30:06 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 20:32:29 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 23 Nov 2026 20:32:29 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:32:29 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:32:29 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 23 Nov 2026 20:32:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 23 Nov 2026 20:32:29 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 23 Nov 2026 20:32:30 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 20:32:30 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 23 Nov 2026 20:32:30 GMT
ARG USER_HOME_DIR=/root
# Mon, 23 Nov 2026 20:32:30 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 23 Nov 2026 20:32:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 23 Nov 2026 20:32:30 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b67c93ba123e6aec0f3aa188c5d7d50c66c3a3f8b8bfb2002919779e682044b`  
		Last Modified: Fri, 20 Nov 2026 04:19:27 GMT  
		Size: 139.0 MB (138952385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ce732e2c83ed3d0578a04b3505e04c20514cec6545e86cbf40d60b4e45474cb`  
		Last Modified: Fri, 20 Nov 2026 09:30:48 GMT  
		Size: 30.0 MB (29980043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd329e73606ab7eacd5080c6af6cc3312a13353253a3c4e8082b6e06405a4db`  
		Last Modified: Mon, 23 Nov 2026 20:32:56 GMT  
		Size: 9.4 MB (9351273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9230bddb7e0539a68dab80a890a16611d20e61cc433c1715cf330ed4cd66ebfb`  
		Last Modified: Mon, 23 Nov 2026 20:32:56 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee37f195713127a696f4460fab361515bae14da735677dd7eafb26f87962750e`  
		Last Modified: Mon, 23 Nov 2026 20:32:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-27` - unknown; unknown

```console
$ docker pull maven@sha256:d897d1155535135eb8dde7200a25c254eb70bcd847bec594cd97e9ea812a2992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4266331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bea269f060b16d7cd10cc6183e5871b05a6fad3ef002c5f4ee46ff684dc01439`

```dockerfile
```

-	Layers:
	-	`sha256:30bb05c2ae1781a504098296eb7d8d61b1ae926a7bf9c2a9d32defebe0b1f57e`  
		Last Modified: Mon, 23 Nov 2026 20:32:56 GMT  
		Size: 4.3 MB (4250346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:324af774ff8a4ec06987722ed8b2a8db8cc3f4f3bdb4ac303617d5631c1688b0`  
		Last Modified: Mon, 23 Nov 2026 20:32:56 GMT  
		Size: 16.0 KB (15985 bytes)  
		MIME: application/vnd.in-toto+json
