## `eclipse-temurin:8-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:eb4b534963abae0d74bcc7ccdd7350572c91545d5c19448bb0d9f4a2e50f021a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:af43d3c16bb3d2bdd2af01b5926bcd85f6bae342a4e00cce678d79fd9b351214
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73202480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:befc5509d1974643ba66fc534a0c6a20a1ed786c38ae0b4f5fb7f127162a7113`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:19:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:19:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:19:27 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 21:19:27 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Wed, 21 Oct 2026 21:19:31 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='f76b7c98a593f15bbfc9042866141185d63aa87e0afde3b7e48d2c4789a2def5';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 21 Oct 2026 21:19:31 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:19:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:19:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f22d0850e5919e6966c9bc3aca043802e8691eafeee68b7daf4a31443860ecf7`  
		Last Modified: Wed, 21 Oct 2026 21:19:41 GMT  
		Size: 16.4 MB (16353260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b0dacc1fdc0313f844acc61709575ccfb470a2755ae554d9665d462f20e2f11`  
		Last Modified: Wed, 21 Oct 2026 21:19:42 GMT  
		Size: 53.1 MB (53052252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8a4c83a55804de0473564cc1592f0b68f971655091ff5ce801af5beeed7564a`  
		Last Modified: Wed, 21 Oct 2026 21:19:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfca780b27f53a8376b08b2203d5f5322c849f6e358e107d3e3b48ac97a9c4ba`  
		Last Modified: Wed, 21 Oct 2026 21:19:41 GMT  
		Size: 2.5 KB (2483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a8cd5aa46dd50dc0d40e808a7647da0a95f0640c12dd6cdb2b90ea114c4dcaff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1104220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4416bbf43017f016717c6b7d33ac82d180221d9d8bf1c85301b98bbf9fa55928`

```dockerfile
```

-	Layers:
	-	`sha256:f09713a5841be47a431246ef05ee59a6ce010af64c5190e03fe348966af4fd9f`  
		Last Modified: Wed, 21 Oct 2026 21:19:41 GMT  
		Size: 1.1 MB (1084777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aeec944bcac09d58bb4f1a516bd20b36175c6f9c8780fb89d01fd30d1b2967d3`  
		Last Modified: Wed, 21 Oct 2026 21:19:41 GMT  
		Size: 19.4 KB (19443 bytes)  
		MIME: application/vnd.in-toto+json
