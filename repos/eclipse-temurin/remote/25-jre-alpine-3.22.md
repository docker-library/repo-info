## `eclipse-temurin:25-jre-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:f0486e8a8d061558be1b0f66589bb32f5c9ade9ea8ed3a6ac37a42ef08913b52
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:25-jre-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:d6f29fa6d2740830a20c95e4b85031a5109b38c61314867426fd7b62fd857cbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75410129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59dcb12a1c0b66433280b56ee3c697711d2850bdbdff774604c3c1374db1c211`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 19:16:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:16:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:16:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:16:26 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 29 Oct 2026 19:16:26 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 29 Oct 2026 19:16:30 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='7c2b97b1b34947399f6c911e5aa69d171b745b0005ea79f47c4f3f1d47554bc2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_aarch64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='b46e981318decb77eda728e006c7678a1ac0c56cf81ae3ad245710c2e4fa1a55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Thu, 29 Oct 2026 19:16:30 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:16:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:16:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98422baeb7b778f25a4abc7aa390fbb75dd95e1458eed7e86d6089c045a30e79`  
		Last Modified: Thu, 29 Oct 2026 19:16:42 GMT  
		Size: 9.4 MB (9436218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f27cdc9036b94d1194de694462b70abb7137ec8fa613ec61640b18da6b239b2`  
		Last Modified: Thu, 29 Oct 2026 19:16:43 GMT  
		Size: 62.2 MB (62176967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7282c617d3eb48abd7ce30dbb2dd891252fb2c54afa53423163be9165d1c20`  
		Last Modified: Thu, 29 Oct 2026 19:16:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61f289eaeb46701bd406e0a2391abcaa482ba43f4b4254db44325d7f56f58152`  
		Last Modified: Thu, 29 Oct 2026 19:16:41 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9656116a1d8caf3e99752342653150101109973d0f6afb1840f4543ad03057e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **801.3 KB (801338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca7f71197aff9586d76bf03116a1a8c01f5aaff8ec25da53f302e4dd6d82328`

```dockerfile
```

-	Layers:
	-	`sha256:02d199ece7c5426f49b1b55394a180bf9a663b2075eb505b6d0ea6e1729ab071`  
		Last Modified: Thu, 29 Oct 2026 19:16:41 GMT  
		Size: 782.2 KB (782217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ce8058a3eefd646bafc3a6ab1fec0d014c6ca467ee8811c3617c1f632941c4f`  
		Last Modified: Thu, 29 Oct 2026 19:16:41 GMT  
		Size: 19.1 KB (19121 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-alpine-3.22` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:7d50d953bc4b89b4c96c4947fc253cf95b285b81abcbdc4c69abd233ccd4f2d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.7 MB (74656610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8495179fc39c6c608b0289491bbfe8ba808e897525388f181375cf281d7f6675`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 19:09:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:09:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:09:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:09:55 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 29 Oct 2026 19:09:55 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 29 Oct 2026 19:09:59 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='7c2b97b1b34947399f6c911e5aa69d171b745b0005ea79f47c4f3f1d47554bc2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_aarch64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='b46e981318decb77eda728e006c7678a1ac0c56cf81ae3ad245710c2e4fa1a55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Thu, 29 Oct 2026 19:09:59 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:09:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:09:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:becbf33eb0dd67ccd2aff12ccac6a6dc96701de18ed3a576beb6d1cecea65874`  
		Last Modified: Thu, 29 Oct 2026 19:10:12 GMT  
		Size: 9.5 MB (9451656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4508e975a926146a0e802028b2e1d00cf919001408229cbdb92b5729533ec24d`  
		Last Modified: Thu, 29 Oct 2026 19:10:13 GMT  
		Size: 61.1 MB (61074984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8343595c643d26e7cc6690261fbe8b53854f8f7aa1a63007c2fab05ac6799cd2`  
		Last Modified: Thu, 29 Oct 2026 19:10:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff61baf3be83e027f2ec8b4014574ca62d3c80dcd6afd420b12c1d3e84ead841`  
		Last Modified: Thu, 29 Oct 2026 19:10:11 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e497c17b72e4cf2e30697f994bb9194c33b3d84f8350ad224870b0ac9e6bd993
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.9 KB (800859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f04d54b6c68c20593f4fae5090abb6be529ae483d2a7b9e71a4ba2cde7070aa8`

```dockerfile
```

-	Layers:
	-	`sha256:ba3c0e0072770d8db44609dad905aa107c03aef0e1dded216616cf8d8d3a4d3a`  
		Last Modified: Thu, 29 Oct 2026 19:10:11 GMT  
		Size: 781.6 KB (781628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b95d0450fd5491a71781190e670acfd2bfa39345f20879f0190f2223b4d039a3`  
		Last Modified: Thu, 29 Oct 2026 19:10:11 GMT  
		Size: 19.2 KB (19231 bytes)  
		MIME: application/vnd.in-toto+json
