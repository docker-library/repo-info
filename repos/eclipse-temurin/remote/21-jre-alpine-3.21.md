## `eclipse-temurin:21-jre-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:f1463748b9a56c5b24849c98d56a38ae17c29a842bfcc1f6028c6a71dee7d563
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-jre-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:d8806304368f7a29dd73e7cdd2486b4cbc71d5496b8e10f88a7884f279297c12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.1 MB (73125855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e17d36f04e0aef69710b9ed2bb51e8dceb04b619fce1cead261dab9b90a54e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:38:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:38:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:38:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:38:03 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:38:03 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:38:05 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='98e15ae359e1f87160ee4c0abb43336513e41712d439fd4a805a5474af32b2c7';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='7bc7c2f9ba5ffea5f727e14581964bd54294b8edc2be9a79ea6393f8d0799200';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:38:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d4f83a91e15481f8d8381758f74a68a66e88b420326b9a0d53c89245dbad6d`  
		Last Modified: Fri, 25 Sep 2026 22:38:17 GMT  
		Size: 16.2 MB (16240573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff11bf79652c491b271d8741175e15033bd4ae1a66fec7e2ac54643d090e5a7`  
		Last Modified: Fri, 25 Sep 2026 22:38:18 GMT  
		Size: 53.3 MB (53256673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce5650613f717b4ce795137e2b240e6c3726ddfab95b5ae85d8531e0cad63d8`  
		Last Modified: Fri, 25 Sep 2026 22:38:16 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33754f7b3d479fa32fb2dff6d3725515e25b7a7df16820c0f5b42248a6127e3`  
		Last Modified: Fri, 25 Sep 2026 22:38:16 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c521d8567e44fcf9a043c04ed34e19887defce7031bb0b6440ff117573271a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **901.4 KB (901412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f272fa0c7a8d6cec40c00bba995b21f46b3fab90a48cd60b10e3a0623e73699c`

```dockerfile
```

-	Layers:
	-	`sha256:cd694e2f31702b36f99942c209d4fac5543fcd805d5c294609576e0a96fbd8bd`  
		Last Modified: Fri, 25 Sep 2026 22:38:16 GMT  
		Size: 882.4 KB (882355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4efd657b8e05f6ec27bfcc61ef7cb1105da285c48516cad95828493488d1bb2`  
		Last Modified: Fri, 25 Sep 2026 22:38:16 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-alpine-3.21` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:fc49aa0b825c4d01cbf1282b7b32135cb8002068adffb47f6bfe398b8e088949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.5 MB (72494310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27958b0b99f3c62afe7773d963f3fe4623295ee83a2556070c3c94419e4c42fd`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:37:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:13 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:37:13 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:37:17 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='98e15ae359e1f87160ee4c0abb43336513e41712d439fd4a805a5474af32b2c7';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='7bc7c2f9ba5ffea5f727e14581964bd54294b8edc2be9a79ea6393f8d0799200';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:37:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0bb5a19a84232067dcac81ec7ca1f123e86af96afce9094faaa9494ea2b6f52`  
		Last Modified: Fri, 25 Sep 2026 22:37:28 GMT  
		Size: 16.2 MB (16193400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7922d239a9b0938c171138bc2408325b5ff430a0a9449ff72b3ad48b9a1ae49`  
		Last Modified: Fri, 25 Sep 2026 22:37:29 GMT  
		Size: 52.3 MB (52323819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8c8cfb7f071970089f8386f6fbba454ab819d754e5a667db99dc324dc44e25`  
		Last Modified: Fri, 25 Sep 2026 22:37:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:428f150e10c58a0a7b16565a2dafe6f9d8b3df1a9264202d161d88a792c4f67d`  
		Last Modified: Fri, 25 Sep 2026 22:37:27 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:558870be7ce8d14c093edc8d3964cb5cc9423c078c5054545f509ddfea0d0ac3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **900.9 KB (900936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7437dff93803c078f9880615848c7efc7ea42c43a695b2594c5ea3f72b05a88`

```dockerfile
```

-	Layers:
	-	`sha256:8d49cd22d1d3dfde1c4c469e6becfb585aa9de216c4e8a89e0cf53c94a0911b8`  
		Last Modified: Fri, 25 Sep 2026 22:37:28 GMT  
		Size: 881.8 KB (881769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5affcec365b51349bc05bbbeb73a25f4b31ee93a8608b2f844c79efede44ae52`  
		Last Modified: Fri, 25 Sep 2026 22:37:27 GMT  
		Size: 19.2 KB (19167 bytes)  
		MIME: application/vnd.in-toto+json
