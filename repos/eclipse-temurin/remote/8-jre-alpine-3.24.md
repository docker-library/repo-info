## `eclipse-temurin:8-jre-alpine-3.24`

```console
$ docker pull eclipse-temurin@sha256:d94f1180c4ff6b3690cfc71d8c9b4b3454fd75ba63eaced07369ae6a9d42801f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-jre-alpine-3.24` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:7c88927dccda004bf04e84fa1ae2e28d30f518767c2b2147d5f46e60ead71738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63076783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94dfbc00d65fac1bb738dc7fa2d19852bfb4b65c2835d520332edcb801172835`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:22:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:22:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:22:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:22:13 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:22:13 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Fri, 21 Aug 2026 18:22:16 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='39d17b519d925e2a979056d800e712b4d5f8b68112413ab1d06f525c1571c164';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 21 Aug 2026 18:22:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:22:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:22:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dc850ad35329ced1b72c4a013479f1af74ffa6a2bf540c8e7692e3205c8d680`  
		Last Modified: Fri, 21 Aug 2026 18:22:26 GMT  
		Size: 17.0 MB (16963148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4f96e6931c5e75b70459a4cd654a9b9e7536d8d3f0b2527fbad92068e1b58c`  
		Last Modified: Fri, 21 Aug 2026 18:22:27 GMT  
		Size: 42.3 MB (42264656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad88eac6c60b1805dfe752fa4bfd5474d2f8db8c64403b0c81f67704c84d3c49`  
		Last Modified: Fri, 21 Aug 2026 18:22:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f10c13095de9b76e6d2a9886521b65e77f35f831c8d611b6d4f7edeedea3e285`  
		Last Modified: Fri, 21 Aug 2026 18:22:25 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:359be7249f906efe50bd0a1ebb318c9d94030d046642491f71cf9b9fe5617c24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **935.3 KB (935297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b054bc272a7183ede18df90945e80543d2524f51ababfeaee7b5926749116e1`

```dockerfile
```

-	Layers:
	-	`sha256:3e84ee4e20100da3d82d1b59ded03d13d7ea49218d630007babcf264bb2576bf`  
		Last Modified: Fri, 21 Aug 2026 18:22:25 GMT  
		Size: 916.4 KB (916439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dc242943c4fea3b7f14cee2b7ea93bbec55cefcbb05d6997b756ae2ad627250`  
		Last Modified: Fri, 21 Aug 2026 18:22:25 GMT  
		Size: 18.9 KB (18858 bytes)  
		MIME: application/vnd.in-toto+json
