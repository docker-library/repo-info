## `eclipse-temurin:8u504-b01-jre-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:aa07cde33e4978470a9a138029be7bfd3e3295df09e9eb51c034f83d8905f891
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8u504-b01-jre-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:dbd747e118b5248141912f35e7884d278cd9328558a9c97af3484c09592f6e30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.5 MB (65463011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:135425e5d428c49b1315bec01c0c091b09bbe13d062dd09568c3b32e3ae13b15`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 23:42:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:42:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:42:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:42:59 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 02 Oct 2026 23:42:59 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 02 Oct 2026 23:43:01 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='0b8a29d654d4ea5cd2ee7bbcf3e89fe0f66596eb17870255e683a526757d2b8c';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 02 Oct 2026 23:43:01 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:43:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:43:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2502074ebf5ae52dcd8a396a50748e95662b0953dc86bd86aabf94009b2d52e0`  
		Last Modified: Fri, 02 Oct 2026 23:43:11 GMT  
		Size: 19.4 MB (19370878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d71b56db5a7eaac00cb90c1a953a313ec08af0d7253706d855c52e3af70ee098`  
		Last Modified: Fri, 02 Oct 2026 23:43:12 GMT  
		Size: 42.2 MB (42241036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffbbfb169c1fcb8db1b06cf0c315756b9348ff420d02b89c48f226abed10c547`  
		Last Modified: Fri, 02 Oct 2026 23:43:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b43b908bd6434c9ffb20dc4053723e7f2775455cc2639cb343254b634b9885a`  
		Last Modified: Fri, 02 Oct 2026 23:43:11 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:68efe74f3ae211c4ccb660acc4ab3cf7e00f0e5c23870c0e732a48ea99bdbaf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **936.0 KB (936012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d12453ce042e55f0cb24b711a8d5677527ca5113e258e6970739ae73beb78f69`

```dockerfile
```

-	Layers:
	-	`sha256:062aeccc416f739370aa2a17306724e4d6c625384dd71d25a3dc4f8f34da4c87`  
		Last Modified: Fri, 02 Oct 2026 23:43:11 GMT  
		Size: 917.1 KB (917090 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9774c46b3f2dff5cdf81a84ff5f8fc6345d5cbc3879d5487301ac2c26b768ec7`  
		Last Modified: Fri, 02 Oct 2026 23:43:11 GMT  
		Size: 18.9 KB (18922 bytes)  
		MIME: application/vnd.in-toto+json
