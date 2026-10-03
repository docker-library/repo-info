## `eclipse-temurin:8-jre-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:e282012de099e9081e9574ad914021ebdfa5f9bf142b1c420c6488c1e301b98e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-jre-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:4024d52f198a28975ea8d0d3097f7a922dc85a09d8940cee663e7830936fe940
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64877219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78aa187e64b7f317721cc527d81bee364f90a898c0a47c5fddef97fe6fc863a6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 23:43:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:43:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:43:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:43:02 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 02 Oct 2026 23:43:02 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 02 Oct 2026 23:43:05 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='0b8a29d654d4ea5cd2ee7bbcf3e89fe0f66596eb17870255e683a526757d2b8c';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 02 Oct 2026 23:43:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:43:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:43:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d94eb82f95da54d9b005be6688a5ea509ef470fe9e58bb6eabc48a6d6bff179`  
		Last Modified: Fri, 02 Oct 2026 23:43:15 GMT  
		Size: 18.8 MB (18841513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5325da26064230f3a94858e7509626ee330917e4a021c1cb7f15f7a200ac1a42`  
		Last Modified: Fri, 02 Oct 2026 23:43:16 GMT  
		Size: 42.2 MB (42241042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752ac4e84eff8c1fc53b4d4646c6a6a6a1b48ca1f2484c411f4160199bed2f5a`  
		Last Modified: Fri, 02 Oct 2026 23:43:14 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e80f8ed3a1739d21eb0406e587117564e8c4ad41e6f344ccb2d2289d68ab084`  
		Last Modified: Fri, 02 Oct 2026 23:43:14 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2cd96ad20b88c2943f8a982be54720476c2452354918151909c29194b47ccab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **931.7 KB (931674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:881732e448ef36b9dbb1c94a6d85844cf9f8d00a6bcb612d6d379af98026f350`

```dockerfile
```

-	Layers:
	-	`sha256:b4f8658f9470ed0467332e77028049ad3368ba837d041ffd89b85b6cc1a93ce7`  
		Last Modified: Fri, 02 Oct 2026 23:43:14 GMT  
		Size: 912.8 KB (912752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65bc1f4c1c1a747e3b54eca3483fcdc5f5d90c3cdc5ade0ebbf32e1887821ee0`  
		Last Modified: Fri, 02 Oct 2026 23:43:14 GMT  
		Size: 18.9 KB (18922 bytes)  
		MIME: application/vnd.in-toto+json
