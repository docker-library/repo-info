## `maven:3-sapmachine-25`

```console
$ docker pull maven@sha256:8a30d296e7bf03b03138f6895ebb7114a614df3b42df580527c998605305de08
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
$ docker pull maven@sha256:fcad7e4857c98fed5ba901c42006b68eac2ffc3b4dd2daaf63e0077c2a59e48c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.3 MB (290342654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db56bab3f4b026cea7a5ca98f6a8e6c216dadbb3db0ceaa20935e0dc0456ee5d`
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
# Sat, 17 Oct 2026 00:39:30 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:39:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 00:39:30 GMT
CMD ["jshell"]
# Sat, 17 Oct 2026 03:19:18 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 03:19:19 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 03:19:19 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:19:19 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:19:19 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 03:19:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 03:19:19 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 03:19:19 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 03:19:19 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 03:19:19 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 03:19:19 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 03:19:19 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 03:19:19 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ead4470ac2a50033d1bec2116adbf8cf5eccf472b37caa3be096f6e74a43a92`  
		Last Modified: Sat, 17 Oct 2026 00:39:54 GMT  
		Size: 225.1 MB (225086434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155c9c3c191575d946f7f973317bb1e448a1268006ecd0d5e4a3ca04217381af`  
		Last Modified: Sat, 17 Oct 2026 03:19:32 GMT  
		Size: 25.4 MB (25430436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294836d60bd187b9b3e098d01aeb5c726cd707480235ad06763f5117b9a5edf2`  
		Last Modified: Sat, 17 Oct 2026 03:19:32 GMT  
		Size: 10.1 MB (10059017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3968e364385a609df7cbdb15a224547814420ae3c45bf180488782faa668f913`  
		Last Modified: Sat, 17 Oct 2026 03:19:31 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57a9be2846c096fc2ecb8bcb73cb8ce00099de72fca9fafaf4fd5d20accc5ad`  
		Last Modified: Sat, 17 Oct 2026 03:19:31 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:6a0bd20214da6887111df4be979a47336ee691142b9956fcd2fa52d9219ae17e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4316060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab6b22d72ae5a50ed84f79fba9b6a7edd9d35569b94c6dfe89b6020bc692958e`

```dockerfile
```

-	Layers:
	-	`sha256:5f8b128fb269cc9cee3e0dc1a3a2c0f7e170a41cdbb75b1e69585beac1a322c2`  
		Last Modified: Sat, 17 Oct 2026 03:19:32 GMT  
		Size: 4.3 MB (4301389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6ea0f4cf231a4d497625ab6d5b418ff4ce2f2406366584cc59c412d03d4717b`  
		Last Modified: Sat, 17 Oct 2026 03:19:31 GMT  
		Size: 14.7 KB (14671 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-25` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:52eabebe7baa6c0d7a05ed0311956236350d91ac4d4f2e2208b5927b699c955b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287379306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bbb8e499cdf815b4c613e46efb4113453b1bf2eaaa82f724affaf9c560c84f3`
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
# Sat, 17 Oct 2026 00:39:10 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:39:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 00:39:10 GMT
CMD ["jshell"]
# Sat, 17 Oct 2026 03:19:47 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 03:19:47 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 03:19:47 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:19:47 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:19:47 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 03:19:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 03:19:47 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 03:19:47 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 03:19:47 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 03:19:47 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 03:19:47 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 03:19:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 03:19:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce32725b0c2d659ed8a56bf7b1b1c88cc1ce9db088f4edd2827ab1de1214f1b`  
		Last Modified: Sat, 17 Oct 2026 00:39:33 GMT  
		Size: 222.9 MB (222867598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1041ee976d80e5636e902f17279a00c0e56a16bb971ec34d0124902c63c67e64`  
		Last Modified: Sat, 17 Oct 2026 03:20:01 GMT  
		Size: 25.5 MB (25511932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1f155664839d07ef5ad4b7b4f0f9893a6159d1985dfe6b5bb7d41167621f878`  
		Last Modified: Sat, 17 Oct 2026 03:20:01 GMT  
		Size: 10.1 MB (10059008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7476c581e63d2d1a93b50a740d009e08d0938d5427e72fd18b03b06128fe4ab0`  
		Last Modified: Sat, 17 Oct 2026 03:20:00 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067a1dbbeaa7a2fa87ed3021200592d2bc4ae384db5aa4a4e714d8c154175fe7`  
		Last Modified: Sat, 17 Oct 2026 03:20:00 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:3d87a3f6704d488f92ed8cec91adfa73016cddbf53a9a19b0f560fe7e032c029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4322710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad90c8075674301de2892ab66a46533e7f943d9a8c3de816b93075a48d43a10e`

```dockerfile
```

-	Layers:
	-	`sha256:a2d149f772b506dd88e0684fded312981c1747ef48612c9794c2a2301b3b038b`  
		Last Modified: Sat, 17 Oct 2026 03:20:01 GMT  
		Size: 4.3 MB (4307908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bf92f20334d35a873bc86012633d1e109c18b0f70bf667bca6a7315527b5446`  
		Last Modified: Sat, 17 Oct 2026 03:20:00 GMT  
		Size: 14.8 KB (14802 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-25` - linux; ppc64le

```console
$ docker pull maven@sha256:785132be4204d8fc55565d6cf984e2ee42b901bb8295c5be1e51152b1f31dff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.7 MB (297738785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a760a8ada53186451e83d6762fd699e93ffd5534dec5a95cec4dfca56830de3a`
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
# Sat, 17 Oct 2026 02:32:24 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:32:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 02:32:24 GMT
CMD ["jshell"]
# Sat, 17 Oct 2026 09:43:12 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 09:43:13 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 09:43:13 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 09:43:13 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 09:43:13 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 09:43:13 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 09:43:13 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 09:43:13 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 09:43:14 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 09:43:14 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 09:43:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 09:43:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 09:43:14 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:434c9df17938c8d63512c7969177094ab06f126e6f16cb591343b7c0bcfe35dc`  
		Last Modified: Sat, 17 Oct 2026 02:33:26 GMT  
		Size: 223.3 MB (223317296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f764b0269e37c1db99260a3f2ba4a2e098d65164c9a75fa3c2bede4a638f9df`  
		Last Modified: Sat, 17 Oct 2026 09:44:06 GMT  
		Size: 30.0 MB (29983482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c36cf092b5cdee7773ada03dfa1046d0c42e41a395d8dc52d46b3fb79772b39`  
		Last Modified: Sat, 17 Oct 2026 09:44:07 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8964fe11d50c9f747b1d100288de608dfcd424c4bedc718412f4afea5283e32`  
		Last Modified: Sat, 17 Oct 2026 09:44:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:671289f6b6adb3ab70738e24571abf90161194743d1b22b0ddd562a1978df31e`  
		Last Modified: Sat, 17 Oct 2026 09:44:06 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:545b94d6de873de93a57702b5a4fc9acb6cd23d9b5408907cb57bb83a68e3cd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4315921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc818ad07ad37543bca70c2bff863f7aa32dfa0c082f098a4cc49353d8409304`

```dockerfile
```

-	Layers:
	-	`sha256:6e8de0f8ea4fa08538bd1c36757719baa667b8d49ea02970bbe8f9b6e3d93e0e`  
		Last Modified: Sat, 17 Oct 2026 09:44:06 GMT  
		Size: 4.3 MB (4301200 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30470c8d327bba11dfff78bd81ea7bffe1f33f499bb531647f9906b294b02b51`  
		Last Modified: Sat, 17 Oct 2026 09:44:06 GMT  
		Size: 14.7 KB (14721 bytes)  
		MIME: application/vnd.in-toto+json
