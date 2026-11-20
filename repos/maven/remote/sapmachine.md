## `maven:sapmachine`

```console
$ docker pull maven@sha256:fd520bb46405a98d8544e450e674fd3bd56d774cf88f00150b737224ed64c1ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `maven:sapmachine` - linux; amd64

```console
$ docker pull maven@sha256:7d6d39f2eb898070f2c9b3b201d091a0d358283fcc998efa92da45fefc6ad82d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.0 MB (204964593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5419c33c34b40f9fa20dbe7851b7ed4e125d6642da1bcb1586d1446fc5c48ebd`
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
# Fri, 20 Nov 2026 06:18:56 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:18:56 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:18:56 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:18:56 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:18:56 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:18:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:18:56 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:18:56 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:18:56 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:18:56 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:18:56 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:18:56 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:18:56 GMT
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
	-	`sha256:6ae2f2c2691ccea48ab47f67dbd3bcf3d27ee45fbcc34a2813bbfcce75d2baa9`  
		Last Modified: Fri, 20 Nov 2026 06:19:10 GMT  
		Size: 25.4 MB (25431758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed7a1c90438ad52625c40993b8ece2e1710a76a506b699814ad01dbf37efef9`  
		Last Modified: Fri, 20 Nov 2026 06:19:09 GMT  
		Size: 10.1 MB (10059020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5845f44637907af0585d29de60e4f7d3b1fb840d72815d22ebae569f48674e03`  
		Last Modified: Fri, 20 Nov 2026 06:19:09 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3c65693fe639dba654b9580321028084ad297e54865826a51093f486d8b4947`  
		Last Modified: Fri, 20 Nov 2026 06:19:09 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:sapmachine` - unknown; unknown

```console
$ docker pull maven@sha256:3444ea17263af392fe3cec623a94b0d20f92fdf89c300c7048911c369744c923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4270798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1dcd5d97eb2860a3ddacfdf90f07f598977558977027c6784f66cd2ce4043f7`

```dockerfile
```

-	Layers:
	-	`sha256:42597548d5c719432cfe440feaca0a9f24a59c45dfe5fefbe7b0db4eac70798e`  
		Last Modified: Fri, 20 Nov 2026 06:19:09 GMT  
		Size: 4.3 MB (4254883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57313edbe6e4c743e68fad6a04cdba3352623b8a3fa13a331d1858b6bb07f980`  
		Last Modified: Fri, 20 Nov 2026 06:19:09 GMT  
		Size: 15.9 KB (15915 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:sapmachine` - linux; arm64 variant v8

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

### `maven:sapmachine` - unknown; unknown

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

### `maven:sapmachine` - linux; ppc64le

```console
$ docker pull maven@sha256:c116bd180762af7db7c22c78d0044eedf6fdbbc0cc6c735d3ec2a5aa3e903124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.4 MB (213398699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3288aea4e464b4f770b4aa7c6d646b5141d17a4299a4172851f8b7628e79c63`
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
# Fri, 20 Nov 2026 09:30:06 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 09:30:06 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 09:30:06 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 09:30:06 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 09:30:06 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 09:30:06 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 09:30:07 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 09:30:10 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 09:30:10 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 09:30:10 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 09:30:10 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 09:30:10 GMT
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
	-	`sha256:1ef6e2931b59c157ad66e96e66e0acdb1033f77d456ee7b4d02ab7521930ff37`  
		Last Modified: Fri, 20 Nov 2026 09:30:47 GMT  
		Size: 10.1 MB (10059021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:947759018d4d194b33b41fee277ee2ab01cf171b401e33fc02ded2738d14e1a7`  
		Last Modified: Fri, 20 Nov 2026 09:30:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b91ef4e864e4289aeb26db2cf07407f3972faf9d376f995faf4d66490feec382`  
		Last Modified: Fri, 20 Nov 2026 09:30:47 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:sapmachine` - unknown; unknown

```console
$ docker pull maven@sha256:c50be282ba65f5d8fc7211bd70cb39bdd1ab3d44d8441be744d6f159507845e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9014d8d497cf7a3b73d4d573c1433287235424dac86f257e0e2d30296dbf8b8`

```dockerfile
```

-	Layers:
	-	`sha256:fe327ed84669d9f46e06a787295d068fe4cf1ddc377d170999d1c84a758be18e`  
		Last Modified: Fri, 20 Nov 2026 09:30:47 GMT  
		Size: 4.3 MB (4256652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afb92e9b3adaa4809aeee384ba17346b351cc334c64b8cfd55cea80e0d62eb76`  
		Last Modified: Fri, 20 Nov 2026 09:30:47 GMT  
		Size: 16.0 KB (15988 bytes)  
		MIME: application/vnd.in-toto+json
