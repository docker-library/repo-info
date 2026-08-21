## `eclipse-temurin:17-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:9900a794e1c3093f6bd6a870d8f6a8d6677a788bdc114d5ae315dbf92ae6a5ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:62d732c75117f4c24b9d4b7e03ef9d6e97f9b988474f2caea6963171a771fcdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.7 MB (169670840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e8296258af8f67fce21dc1d5329d90ee32cd92102b3d01a56150c891620afd4`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:23:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:23:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:23:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:23:42 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:23:42 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:23:48 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='c8bb5bc6984762dbce2ab7403d90832b6897c07f36f8706e4a315aa7a566d04d';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:23:49 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:23:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:23:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:23:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9785e2aee46aed9017b0737607a53138117f5e860a292b0440c4032d3a24f699`  
		Last Modified: Fri, 21 Aug 2026 18:24:04 GMT  
		Size: 21.1 MB (21051095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3debe4c9cd78634cad1d8eb8a47c8fda3532db4f5df7885488df9cb2ee339d37`  
		Last Modified: Fri, 21 Aug 2026 18:24:06 GMT  
		Size: 145.0 MB (144970278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ef0f2a95bdc2b3dd647eb91dea85dae18598931d167f24fef11e9c8d09b28cd`  
		Last Modified: Fri, 21 Aug 2026 18:24:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aa56bae3b0b278fe459a8b1d6ade989397592fbb2fffd741bc8c683392d529b`  
		Last Modified: Fri, 21 Aug 2026 18:24:03 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:cbff6994234dd3c13f8bd95c80f9b6a619790ff93c928072358a85f2e4a8d35d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1122033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f14944a7379aa9b3c0944e6fd25f2adf06083d0bda9c8e14813da287e27e14f`

```dockerfile
```

-	Layers:
	-	`sha256:08ef424340110e8cc70dc7f3e2482541cf1fcb7f6f4e5a5793bb4106a136b0e4`  
		Last Modified: Fri, 21 Aug 2026 18:24:03 GMT  
		Size: 1.1 MB (1102422 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10eb1f5efb5c3e277e02a8600d0585df63556c55d92d97551e5e062cd4da4d32`  
		Last Modified: Fri, 21 Aug 2026 18:24:03 GMT  
		Size: 19.6 KB (19611 bytes)  
		MIME: application/vnd.in-toto+json
