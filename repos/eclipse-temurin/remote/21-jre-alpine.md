## `eclipse-temurin:21-jre-alpine`

```console
$ docker pull eclipse-temurin@sha256:ac05c3c42b7c2f1a52c9bd52f01041fa1958231b15ebeae7420429cbc5baf474
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-jre-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:b6ea71e690a72ba240b3d1b5c477410014862f9ea2cc73ab40e41ff21b03ba1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74204491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe627b2563ceeae30cd349fd41fffa2379f79a31581cb8e5a599a29be4f0e598`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:17:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:17:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:17:30 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:17:30 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 05 Nov 2026 19:18:47 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='382633eb2ba28cc5b97be1446eb1dd8d2a60a3795be0166a030e4cda338c490e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='9138eab0f7d230e17163953f015ec9ae2431dbc49069c658b7f991e45b54fb9b';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 19:18:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:18:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d99ac440d39bbade5ae9f2dd56b69d8234c4e540282df61003829295761e4fe`  
		Last Modified: Thu, 05 Nov 2026 19:17:43 GMT  
		Size: 17.0 MB (16969910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac8bacad3044dd68d9bbbc26ed22c6674c4149fc01ef8d074f009f484341d4f`  
		Last Modified: Thu, 05 Nov 2026 19:18:58 GMT  
		Size: 53.4 MB (53378320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85a6771097082b2df91a6477c3314ec25a91b894210dd741baae08d3e41b4b3`  
		Last Modified: Thu, 05 Nov 2026 19:18:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e84ee4d88719efe0c0f5723556c11c87be2c0094c89dce0bb75f768f6dd74605`  
		Last Modified: Thu, 05 Nov 2026 19:18:57 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:63c7e8e441383578fc8f794ce8e54efe774afba36c6f9fad6973ed32f42fec07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **906.6 KB (906642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d112d9256a5d1ab36cd5b05a6012c610161af0b900998c32bb517c9bfda2868`

```dockerfile
```

-	Layers:
	-	`sha256:283b7420825d96d19218072689a25848dd9c3dcdcaf78e037fc5664de8b22fdf`  
		Last Modified: Thu, 05 Nov 2026 19:18:57 GMT  
		Size: 886.9 KB (886944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fe17bdf8f1a59061a157d0f1d9431a243bcb95d686127f53008a3f01d2cd471`  
		Last Modified: Thu, 05 Nov 2026 19:18:57 GMT  
		Size: 19.7 KB (19698 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:23853301373ae9089be2f2d59113c749c7d1ebd140609dec30f1d9bd34d89a32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73537360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdcbc522344eec786cc2f4d207364460d68eece22bf663423cbe639227c6ee65`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:12:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:12:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:12:54 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:12:54 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 05 Nov 2026 19:13:19 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='382633eb2ba28cc5b97be1446eb1dd8d2a60a3795be0166a030e4cda338c490e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='9138eab0f7d230e17163953f015ec9ae2431dbc49069c658b7f991e45b54fb9b';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 19:13:19 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:13:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:13:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4efa11c9f730ef0ee6668a47a41bbb947261620ba96582f05ff816e2406ddc3`  
		Last Modified: Thu, 05 Nov 2026 19:13:31 GMT  
		Size: 16.9 MB (16899771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2396eed2b1e9d2811bc63bd58514b5972e90f244494bcfe8a691436b1df4f98c`  
		Last Modified: Thu, 05 Nov 2026 19:13:33 GMT  
		Size: 52.4 MB (52444405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5903ba1ef377b5a379223385f3cb6476a6deba30377e37d99c624421f4fdc5c`  
		Last Modified: Thu, 05 Nov 2026 19:13:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:482227507fd1c4761609dd9dff40bbb95c26de97b4339725ee245e6ff475f044`  
		Last Modified: Thu, 05 Nov 2026 19:13:31 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7f397a6f3b9a3196aa0cf99d536b24422dc5ae7df59e1e0132d37daf858934da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **905.6 KB (905565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9aa41de5527734b50a5869fc1ab4b8612a207100723d61e46fcc73583d0b048`

```dockerfile
```

-	Layers:
	-	`sha256:831c495f03ebbce1a82faaf4524e7d5adaf84d7e69897817a4efbc09fe05bbb1`  
		Last Modified: Thu, 05 Nov 2026 19:13:31 GMT  
		Size: 885.7 KB (885732 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a69851503b3af7f1f3926fa3bcda223749fdabe6bcdcff8cf3cea865d263599`  
		Last Modified: Thu, 05 Nov 2026 19:13:31 GMT  
		Size: 19.8 KB (19833 bytes)  
		MIME: application/vnd.in-toto+json
