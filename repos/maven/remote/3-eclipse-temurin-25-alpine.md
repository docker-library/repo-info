## `maven:3-eclipse-temurin-25-alpine`

```console
$ docker pull maven@sha256:fb257f1e251aba3b99843bc091004fa365cdbd289423c0721a287ea2a7f49936
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-eclipse-temurin-25-alpine` - linux; amd64

```console
$ docker pull maven@sha256:ea0499b83b20b0544073e60617a0c3b489d9c174f6829459227401537873ef29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.3 MB (124335770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a109731e1b395eae89ea22c98e189b9d76ac89c8a70cd00e9afb16216c4b4af`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 19:14:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:14:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:14:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:14:52 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 29 Oct 2026 19:14:52 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 29 Oct 2026 19:14:59 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='d02eadc0a0f93faba4be38c8657eb8eef842103a4c7c2400f5827dbd90fc21c9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='efc86581260b73c340c313e7577c4c85d6a8a899edc3748d78bee5238fe44a4e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 29 Oct 2026 19:15:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:15:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:15:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:15:00 GMT
CMD ["jshell"]
# Thu, 29 Oct 2026 20:07:05 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Thu, 29 Oct 2026 20:07:05 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 29 Oct 2026 20:07:05 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 29 Oct 2026 20:07:05 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 29 Oct 2026 20:07:05 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 29 Oct 2026 20:07:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 29 Oct 2026 20:07:05 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 29 Oct 2026 20:07:05 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 20:07:05 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 29 Oct 2026 20:07:05 GMT
ARG USER_HOME_DIR=/root
# Thu, 29 Oct 2026 20:07:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 29 Oct 2026 20:07:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 29 Oct 2026 20:07:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eb45b395123c6a1ce4ec62b23cf94618e9b325f9c7a58e00b2f2eac960cf183`  
		Last Modified: Thu, 29 Oct 2026 19:15:16 GMT  
		Size: 14.4 MB (14371873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c612d305a2a8de9b17efd435a33be852767e64fba32fe1f539e9ab009537557`  
		Last Modified: Thu, 29 Oct 2026 19:15:17 GMT  
		Size: 91.7 MB (91662929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322dda1a77ef5557bc041cf413b5abe5cc3f500209b477b169d3fc1cf096b2dd`  
		Last Modified: Thu, 29 Oct 2026 19:15:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f13d875536ccd5fdc17c0f274f7aee0d7341763d5715d3839994f8f1094cd40`  
		Last Modified: Thu, 29 Oct 2026 19:15:15 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e3f2742e87b7a4f4abba907a0ee03659b9387b61a94bf54bf98be154f325991`  
		Last Modified: Thu, 29 Oct 2026 20:07:13 GMT  
		Size: 4.4 MB (4385239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c32fed52271863ac3b8917668639b6032753897b014bb0e67f3d58bf508567d`  
		Last Modified: Thu, 29 Oct 2026 20:07:13 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d7eb2ae5f2ee79307538c5838dc968983b1ec0657dee9dcc29c76d7b52384ed`  
		Last Modified: Thu, 29 Oct 2026 20:07:13 GMT  
		Size: 860.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:260f84497f672d467588a7262e56574037b8ee220a299c94d90e94079c7902e6`  
		Last Modified: Thu, 29 Oct 2026 20:07:13 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-25-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:5726ef458cf72f99a5509369d7a2a6f242796dad052fd816feb9fa0095e3d084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1145118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af174114366cdfe0ac3bba529e608c9e16865c05778604d63a130df413b8e10e`

```dockerfile
```

-	Layers:
	-	`sha256:bc6e5a378c08954fd7af97a43856382c6d670c8b4670ec45105bb772d29e888d`  
		Last Modified: Thu, 29 Oct 2026 20:07:13 GMT  
		Size: 1.1 MB (1128076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:000adfbff1101ae33d17ffbf1a066f3b82b357fa55139b679657501b33246368`  
		Last Modified: Thu, 29 Oct 2026 20:07:12 GMT  
		Size: 17.0 KB (17042 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-25-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:ae22cd12c3140946dd87a7c4d6ae974c9ebe3dda461eae678527d13ce72682b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123725065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3732886520b1abb9f59626393f8d455343e187ea8ff5e866083e0a9da170380`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 19:08:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:08:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:08:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:08:37 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 29 Oct 2026 19:08:37 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 29 Oct 2026 19:08:44 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='d02eadc0a0f93faba4be38c8657eb8eef842103a4c7c2400f5827dbd90fc21c9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='efc86581260b73c340c313e7577c4c85d6a8a899edc3748d78bee5238fe44a4e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 29 Oct 2026 19:08:45 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:08:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:08:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:08:45 GMT
CMD ["jshell"]
# Thu, 29 Oct 2026 20:07:47 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Thu, 29 Oct 2026 20:07:47 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 29 Oct 2026 20:07:47 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 29 Oct 2026 20:07:47 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 29 Oct 2026 20:07:47 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 29 Oct 2026 20:07:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 29 Oct 2026 20:07:47 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 29 Oct 2026 20:07:47 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 20:07:47 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 29 Oct 2026 20:07:47 GMT
ARG USER_HOME_DIR=/root
# Thu, 29 Oct 2026 20:07:47 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 29 Oct 2026 20:07:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 29 Oct 2026 20:07:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3edcd50e718a2f4101e85d16314285b745c3ea9b33151d18b938f8aac93ac7df`  
		Last Modified: Thu, 29 Oct 2026 19:09:00 GMT  
		Size: 14.4 MB (14426595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fa4f856064e0b0db046d418809159800673715f047ca16f2d08293b923f4cd`  
		Last Modified: Thu, 29 Oct 2026 19:09:02 GMT  
		Size: 90.6 MB (90570467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2baa268d22601cacfc5ba529bf98685e41c1e0f22cbb331631e92c3ef1b2054e`  
		Last Modified: Thu, 29 Oct 2026 19:08:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1714fb6723c421b6216aec3007a40a545cd71a2d4027c5f631f01062ed49bf65`  
		Last Modified: Thu, 29 Oct 2026 19:08:59 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17328061b516fc6d477384121c43c0d3180168cc2f66c74eddff402a7f247d37`  
		Last Modified: Thu, 29 Oct 2026 20:07:53 GMT  
		Size: 4.5 MB (4474898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3c233dabc294b4595c338d12d96a362559f825e057a3af8eef4357049548c0a`  
		Last Modified: Thu, 29 Oct 2026 20:07:53 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bae8a1a7e7e4a47972091c846da22b9285b0c9a4d61162bd559b4fc27e559d0`  
		Last Modified: Thu, 29 Oct 2026 20:07:53 GMT  
		Size: 859.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce1824e6db4e51ae0c9cf1ff5114c886f0bc589ed797ebce21b539aaff2e8b3`  
		Last Modified: Thu, 29 Oct 2026 20:07:53 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-25-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:77702805961fd7911c60f4483b2de1eba5a23c32afe38149841a24161b157d1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1294599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9058bf8b2cef95c1c4f355ec881d014838d6a23ec91dcbbaf3e9ada636ee8269`

```dockerfile
```

-	Layers:
	-	`sha256:e0acb437e90055038c54a5d3294c8f354e00202155d52da06a533627de78f899`  
		Last Modified: Thu, 29 Oct 2026 20:07:53 GMT  
		Size: 1.3 MB (1277425 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51496c3e5330c23dd9cb3052a0d013a5cd9212bd9002e5c93139244a6681a106`  
		Last Modified: Thu, 29 Oct 2026 20:07:53 GMT  
		Size: 17.2 KB (17174 bytes)  
		MIME: application/vnd.in-toto+json
