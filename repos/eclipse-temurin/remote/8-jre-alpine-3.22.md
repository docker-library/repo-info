## `eclipse-temurin:8-jre-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:55fe67de6c013e01b448f36b60311d7dc99f33fa619cb7575be804141d60932e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-jre-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:d91698ee9ca312e8e60a7be19cd2cdb2658eb8bac3081f48951f8426e3c4d933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62391310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73a706dba9cc7725871eae5c9a398c5d9350e8c6680e576f749a0e1711fecdb5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:19:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:19:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:19:32 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 21:19:32 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Wed, 21 Oct 2026 21:19:35 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='0b8a29d654d4ea5cd2ee7bbcf3e89fe0f66596eb17870255e683a526757d2b8c';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 21 Oct 2026 21:19:35 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:19:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:19:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e6faed77c30c5759f89eb31c210414f260c73861ba019e658a8d0d0851909b`  
		Last Modified: Wed, 21 Oct 2026 21:19:45 GMT  
		Size: 16.4 MB (16353281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e0a9442d71215ba2de67c45b3d9836d1aee16dfbfaadc26a8fc336e61d913d4`  
		Last Modified: Wed, 21 Oct 2026 21:19:46 GMT  
		Size: 42.2 MB (42241081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a0492150c2aa503100752126189e797a483e38b543bcc4c093c223582fa2b1`  
		Last Modified: Wed, 21 Oct 2026 21:19:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4da6fc803528e52c690273161addf541df9544298f0710c3559de5967d91d4`  
		Last Modified: Wed, 21 Oct 2026 21:19:45 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2625801cad19e7de236e9b770191abac48f9ca35a966072cad8dabf5ce1c9412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **929.7 KB (929737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb4041da660b5bfe0cfe172ed9b927ce01b0c5b9928aedf0979eb31514476a85`

```dockerfile
```

-	Layers:
	-	`sha256:bb6572cbfd174a2ec9a28f18889ce19c8ea84ea20add8b3be89afb842523182e`  
		Last Modified: Wed, 21 Oct 2026 21:19:45 GMT  
		Size: 910.8 KB (910815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f394ec9907175981ba9234b32136869372682953921b5df817d80b6dbc5764bb`  
		Last Modified: Wed, 21 Oct 2026 21:19:44 GMT  
		Size: 18.9 KB (18922 bytes)  
		MIME: application/vnd.in-toto+json
