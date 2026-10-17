## `maven:3-eclipse-temurin-27-alpine`

```console
$ docker pull maven@sha256:795987823e7871811e550ce57bef3d993309b6ac8fb2fab71c48c63c14902ceb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-eclipse-temurin-27-alpine` - linux; amd64

```console
$ docker pull maven@sha256:cbe4ddb30e84afb97a2cad0240ad5d3512ac10e5772104d88f04e75d199980bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (128043559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ff9cc9b1f1c9b9db93d6105fa486829a4754bf22e26de7e63e0ee6ab2015fd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 23:44:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:44:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:44:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:44:31 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 02 Oct 2026 23:44:31 GMT
ENV JAVA_VERSION=jdk-27+35
# Fri, 02 Oct 2026 23:44:38 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='440353d641e7726396dff5d9a9d0d17c05a070dc25664c20f9d7efafc2f16cf7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='45aef7cd5ae667c6f5dd100c96a99e5a00e61c512664bb13326cf149b7d37e0f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 02 Oct 2026 23:44:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:44:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:44:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 23:44:40 GMT
CMD ["jshell"]
# Sat, 17 Oct 2026 03:16:04 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Sat, 17 Oct 2026 03:16:04 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 03:16:04 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:16:04 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:16:04 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 03:16:04 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 03:16:04 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 03:16:04 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 03:16:04 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 03:16:04 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 03:16:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 03:16:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 03:16:04 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0232724deb66678d9961666fbea1f657d7b2e14c3e5c66094015d861c80fd6e4`  
		Last Modified: Fri, 02 Oct 2026 23:44:54 GMT  
		Size: 16.8 MB (16849584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1c9c71bb6c43ec314c86bc43c2351334f17f165bf8b3eb191ff41f1c1b9032b`  
		Last Modified: Fri, 02 Oct 2026 23:44:56 GMT  
		Size: 92.9 MB (92906652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6414e35765e91f097bd9e23545d0eebc5772c7265587869de11c8c6a024d0e06`  
		Last Modified: Fri, 02 Oct 2026 23:44:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d35562e6de8bf39caa6574d7c963ba991822648e7a99789e3eb4602dee62f64`  
		Last Modified: Fri, 02 Oct 2026 23:44:54 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8385adf34302dbb15e6446792f973c2fe3c79a53262df5bbacacb67985e0ba20`  
		Last Modified: Sat, 17 Oct 2026 03:16:12 GMT  
		Size: 4.4 MB (4374970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3506b324d07c837b36087fd84c7a37b5791dc868815cfcda6d8cba483841c5c4`  
		Last Modified: Sat, 17 Oct 2026 03:16:12 GMT  
		Size: 10.1 MB (10059009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7fcfe085c5933c61969f31a516fd3f4a6fc35928efc62cea6f5c91038a73911`  
		Last Modified: Sat, 17 Oct 2026 03:16:12 GMT  
		Size: 861.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa65ffb1774415e6aa14e22048891bc847582ac2995026930e2ddc21cf1de0b7`  
		Last Modified: Sat, 17 Oct 2026 03:16:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-27-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:d549d09bf9f700374c699813ab971feb29f66c33d7f7f0cdcc238c13e4860e84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1143900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4130112bd6d3cbd093258d40ad6eefccd42a51985da6574d07277eb9e0ac4c16`

```dockerfile
```

-	Layers:
	-	`sha256:31e62bd3dc66a527f0a67fe5ab7100d9e767feb2bf30917ec1232ec72a079ff2`  
		Last Modified: Sat, 17 Oct 2026 03:16:12 GMT  
		Size: 1.1 MB (1126864 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53454d96b80dd2d529ae2da9a9cced891a25d55cb0fe6fc5e126710c0a78f337`  
		Last Modified: Sat, 17 Oct 2026 03:16:12 GMT  
		Size: 17.0 KB (17036 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-27-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:9cf20c5bdb71b58ed03c0f5defe440a46b91c7ed79fcc0b07499002ffe155b30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127706901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4017c6a73ec7869946c936d81372bb2555d99495f1cdbfde7326e512d9f7d064`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 23:43:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:43:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:43:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:43:05 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 02 Oct 2026 23:43:05 GMT
ENV JAVA_VERSION=jdk-27+35
# Fri, 02 Oct 2026 23:43:13 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='440353d641e7726396dff5d9a9d0d17c05a070dc25664c20f9d7efafc2f16cf7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='45aef7cd5ae667c6f5dd100c96a99e5a00e61c512664bb13326cf149b7d37e0f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 02 Oct 2026 23:43:15 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:43:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:43:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 23:43:15 GMT
CMD ["jshell"]
# Sat, 17 Oct 2026 03:16:39 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Sat, 17 Oct 2026 03:16:39 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 03:16:39 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:16:39 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:16:39 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 03:16:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 03:16:39 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 03:16:39 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 03:16:39 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 03:16:39 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 03:16:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 03:16:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 03:16:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248e6c997f4e945325aecb5c03bbe09145daa1ac54d89832c5ac876d2d4c3045`  
		Last Modified: Fri, 02 Oct 2026 23:43:30 GMT  
		Size: 17.2 MB (17207067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5783c836e3862d030b0e824d9244fe4f34eaa16995832b49733f5ad518cc39`  
		Last Modified: Fri, 02 Oct 2026 23:43:31 GMT  
		Size: 91.8 MB (91790582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d5f24807ffbf443551f94421e03a0d5fcb930a2f5ab509b7b38aa89b30dabc5`  
		Last Modified: Fri, 02 Oct 2026 23:43:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31bab363d78486654c6650f8549c1cbf82def41b26e00d4ba716041b79cfdbea`  
		Last Modified: Fri, 02 Oct 2026 23:43:29 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb0ef4436a23eeed6ab74c5e08931321843852fe26b1abbd7c7c169c3d42b873`  
		Last Modified: Sat, 17 Oct 2026 03:16:47 GMT  
		Size: 4.5 MB (4458971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ba9e83d6c30ba0c18f8bb799c842d7f6b8f603b6b98e3767701ca388f0c934`  
		Last Modified: Sat, 17 Oct 2026 03:16:47 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f18c346de1f08c66b4df4b41019d3ed323e8dc9f067767834e848daa11a1e655`  
		Last Modified: Sat, 17 Oct 2026 03:16:46 GMT  
		Size: 861.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:787821efdffcd5b9f9601be31a567283347a2b1b40426f3508873c9b310de845`  
		Last Modified: Sat, 17 Oct 2026 03:16:47 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-27-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:a4dea2e935ab97e17259b3d279080efde1ec410e28f57b9af658848d91e6c1c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1293382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce844b03c2ecfb88ae30c276c9ac58f5f877400db5b1ba4aabba5255ae4de67`

```dockerfile
```

-	Layers:
	-	`sha256:01299e0a094308be471a243b95379bea69b08e592520c50469dbb674e51b4afc`  
		Last Modified: Sat, 17 Oct 2026 03:16:47 GMT  
		Size: 1.3 MB (1276213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5dbd0d0159fcdb29aaa2d1e7a16e1c3d874611c45fa02d408868287eb727ea2`  
		Last Modified: Sat, 17 Oct 2026 03:16:47 GMT  
		Size: 17.2 KB (17169 bytes)  
		MIME: application/vnd.in-toto+json
