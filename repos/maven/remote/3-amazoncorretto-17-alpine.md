## `maven:3-amazoncorretto-17-alpine`

```console
$ docker pull maven@sha256:0392b70c388c706cd55bb10987f37ef5c1d287eb150e2880728032fdfed50c74
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17-alpine` - linux; amd64

```console
$ docker pull maven@sha256:d9430e8eebe6266eb62fc43f91a75564f779b56a94972e1cd0a10bfa88fe08bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165345439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:712042a8adc5071beaa5f54d08c0dadf4b5bcf196c0d5dc8d23dd5aac97b4e03`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:13:15 GMT
ARG version=17.0.21.0.11
# Thu, 05 Nov 2026 19:13:15 GMT
# ARGS: version=17.0.21.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:13:15 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:13:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:13:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 12 Nov 2026 02:16:28 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 12 Nov 2026 02:16:28 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 02:16:28 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:16:28 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:16:28 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 02:16:28 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 02:16:28 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 02:16:28 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 02:16:28 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 02:16:28 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 02:16:28 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 02:16:28 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 02:16:28 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab8ed2e78889c66f105bfdd751dd8febb071910eb781f5cfc46ab14902ef024`  
		Last Modified: Thu, 05 Nov 2026 19:13:32 GMT  
		Size: 149.2 MB (149215240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbe90241d045bda7b561aa81baec6f89c8949c42207fbf9aeae4b21dd2d24f9`  
		Last Modified: Thu, 12 Nov 2026 02:16:37 GMT  
		Size: 2.2 MB (2216503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca627efeadf033d08c8043094d5e15cfde3350fa5c2096708ccf82128e30ba27`  
		Last Modified: Thu, 12 Nov 2026 02:16:37 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0240b376a1fb81ee8e8e76759119d95205b8222355f2910fe3e092eb54b739dc`  
		Last Modified: Thu, 12 Nov 2026 02:16:37 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8edcb18efc4283b26487ff673356a855600ba8f6b43315d2ac65fb32697212a`  
		Last Modified: Thu, 12 Nov 2026 02:16:36 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:bbcebf648d28df9c5eac1b3878c0b5d0e8c1e025e0ffc236caf6f6702af52eb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **748.0 KB (748008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:647edba3bfed10aaca98fbcd5fac1d2ab35a49e5d8908b74a8d1847d67753e4e`

```dockerfile
```

-	Layers:
	-	`sha256:be9b05b05de8046fe13bed30687bfee13588a83716464867e9995906d16bb974`  
		Last Modified: Thu, 12 Nov 2026 02:16:36 GMT  
		Size: 733.5 KB (733476 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42ee937f38458f5d06b42f7a52fd93ad7e9e61462294d32f3f268923ecb85d99`  
		Last Modified: Thu, 12 Nov 2026 02:16:37 GMT  
		Size: 14.5 KB (14532 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:83ea2cb82576deefeea0917b62d9fd1647ff00e4030147c72cf65fe8118eb021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164188413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4820583b8dc3273deb207a3e90bfb66ee2d09c69bd8d9d2e2d7bcba3e95dde11`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:09:01 GMT
ARG version=17.0.21.0.11
# Thu, 05 Nov 2026 19:09:01 GMT
# ARGS: version=17.0.21.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:09:01 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:09:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:09:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 12 Nov 2026 02:16:21 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 12 Nov 2026 02:16:21 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 02:16:21 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:16:21 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:16:21 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 02:16:21 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 02:16:21 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 02:16:21 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 02:16:21 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 02:16:21 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 02:16:21 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 02:16:21 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 02:16:21 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73dde6e8ed261fb47a4b6afeca4ea82299c2cd2853e78d8d3d507ea8acc81c7d`  
		Last Modified: Thu, 05 Nov 2026 19:09:18 GMT  
		Size: 147.7 MB (147681658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96ad592be89092fc59f130820aaabfbfbaf41317c52d58dab0b01e7b6f546b0d`  
		Last Modified: Thu, 12 Nov 2026 02:16:29 GMT  
		Size: 2.3 MB (2256145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846440290c5673151f9db594a637f3a97839a1f8e513a3759758c4eaf7fb5f2b`  
		Last Modified: Thu, 12 Nov 2026 02:16:29 GMT  
		Size: 10.1 MB (10059011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f09f186474c1e0ad03e86842ec43a463ad8b69089a71104edcacdc102c4dadc`  
		Last Modified: Thu, 12 Nov 2026 02:16:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5cd4efaaf2d0014de49229c94b4931b964d38e8872a94b40d9b9872e8f2df5`  
		Last Modified: Thu, 12 Nov 2026 02:16:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:29bfb712cfa4e9e9d464d42d98d0863b7525e7d3f4ac53a9615b924f4a7afbf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **746.9 KB (746898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:885f7a52cafb0f6f4da4993ede9e8b2ca8833341135b8ff2bd18d59c9c36441d`

```dockerfile
```

-	Layers:
	-	`sha256:4d75f9d9f35c1d0fc91f03619bfc4d902c15a15bad09d2c5be3df7e267a807a8`  
		Last Modified: Thu, 12 Nov 2026 02:16:28 GMT  
		Size: 732.2 KB (732233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0626ff4ef804ed4eaf08cfc78dca8653a2ef5db4e9742cdbf2b6edddbff1da1e`  
		Last Modified: Thu, 12 Nov 2026 02:16:28 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json
