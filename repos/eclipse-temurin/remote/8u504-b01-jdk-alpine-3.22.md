## `eclipse-temurin:8u504-b01-jdk-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:8fcc3592e714ee71dc483b8ee4d0210ff8c18b284562a07f618f98f992ab3a79
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8u504-b01-jdk-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:0286f5f48e9f25731ae75fc88334f7f0483075ebfcb3724c2ffc9f6bc9f72cef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75688450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10abfc1579f638cc5935a110f514bae2d5612147630a8c24391fff3364b3ae55`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 23:42:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:42:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:42:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:42:40 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 02 Oct 2026 23:42:40 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 02 Oct 2026 23:42:43 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='f76b7c98a593f15bbfc9042866141185d63aa87e0afde3b7e48d2c4789a2def5';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 02 Oct 2026 23:42:43 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:42:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:42:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7e308fc28881644ed119ad7b912bc8cacdacae5056ed86a89aac4802fd0b5ad`  
		Last Modified: Fri, 02 Oct 2026 23:42:54 GMT  
		Size: 18.8 MB (18841485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11f48490a684f8ce9932920d272ae71e41ed5082b1ce80641070b0106a108bb0`  
		Last Modified: Fri, 02 Oct 2026 23:42:55 GMT  
		Size: 53.1 MB (53052282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ad0ed94327dfd736660d0f21198cb8a78c11da98f738e92f339630cb09a0a9`  
		Last Modified: Fri, 02 Oct 2026 23:42:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:471ca34dd3eed9eccb7e642effae14beda1966db05be9b2374c931a55c19946e`  
		Last Modified: Fri, 02 Oct 2026 23:42:53 GMT  
		Size: 2.5 KB (2482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8e67a8af9053dcf1e01d1e7bf38e20cc531b8648cd74fe2db137f96c500355e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1106160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1e55cae4da02b0376fc97496d610c17cf78afda08f6e96823ca3ab5ddb5423`

```dockerfile
```

-	Layers:
	-	`sha256:e7e611cdc122848229db645ba6ca5c8bcee7ffa626045f9ecb424b5b1d30b8ee`  
		Last Modified: Fri, 02 Oct 2026 23:42:54 GMT  
		Size: 1.1 MB (1086714 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d15962037c91078d0ae989ed35e4ee7c48298f17a9ebf8b030fbf40f63dcb26e`  
		Last Modified: Fri, 02 Oct 2026 23:42:53 GMT  
		Size: 19.4 KB (19446 bytes)  
		MIME: application/vnd.in-toto+json
