## `eclipse-temurin:27-jre-alpine-3.24`

```console
$ docker pull eclipse-temurin@sha256:0faf24c1d1e778bbc0700fc71c53b081c9432f1e51e6e41c86c63840e8b89ac1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:27-jre-alpine-3.24` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:3a8ee2b171d068557db53db81395a8c0df49d3b918d878a9611f63b51d7d548f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.2 MB (76168536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b67ae6fb04c21c3d13723740a6beadef38f24f111bc51a71e778113da36d2b0e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:57:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:57:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:57:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:57:47 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 22:57:47 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 21 Oct 2026 22:57:53 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='65177a444f1a8201ef6e557c6f24c1dded80ae2e4dc33987fb31173f6c06cd74';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='09323dd71131eb7f30a98cd4a6e050fe10135a23ab5e7ad01b0e097e533ce7c3';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 22:57:53 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:57:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:57:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:540f16a48c08e7634585e8df4dc8a257e730e704bba92bf04396fbce7f744bdc`  
		Last Modified: Wed, 21 Oct 2026 22:58:05 GMT  
		Size: 9.5 MB (9508037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b76c4dafc0e9fd773b2b2a7645e07a6edce40442cb79704842abeb8431adf3`  
		Last Modified: Wed, 21 Oct 2026 22:58:06 GMT  
		Size: 62.8 MB (62804799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c8874a3f001e4c65b8aee42c9980d23e40daab20c9b985e70b598cae0e95ed`  
		Last Modified: Wed, 21 Oct 2026 22:58:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0373df0b2939be9de2c8682d223e5ac150c5a1d183e78b7fffe2f45b131ef03d`  
		Last Modified: Wed, 21 Oct 2026 22:58:04 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:265666880d6780f735720f6a6c646824a1a9bb0109bdad53380f18cec5c51a51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **801.4 KB (801367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf20f960a56ee067928ece59471ae6da30ded60c6492ca0551f765cd44e92d56`

```dockerfile
```

-	Layers:
	-	`sha256:9cb8f383338395be45e9ab183fb578069d5ca95541230b27a6214e29bc5a8d5e`  
		Last Modified: Wed, 21 Oct 2026 22:58:04 GMT  
		Size: 781.6 KB (781624 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95e255d1b2059ce2061f5fb60712c9db5ba4c4cfd43f8ab2dea6775c18f2a930`  
		Last Modified: Wed, 21 Oct 2026 22:58:04 GMT  
		Size: 19.7 KB (19743 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-jre-alpine-3.24` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:5e77a17047bb645d6d655061d2124f1964bbe52e28231c2a4f708e2e7fd24cbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75382357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2f06352198c6d13e4983c7372cca49f20b16ea880f7b8e20e68a7aa11f5365f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 23:20:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:20:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 23:20:24 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 23:20:24 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 21 Oct 2026 23:20:30 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='65177a444f1a8201ef6e557c6f24c1dded80ae2e4dc33987fb31173f6c06cd74';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='09323dd71131eb7f30a98cd4a6e050fe10135a23ab5e7ad01b0e097e533ce7c3';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 23:20:30 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 23:20:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:20:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fac3747358c5b226a19924e2fa75585628c96727fbfa609dc5013c56f1583c2`  
		Last Modified: Wed, 21 Oct 2026 23:20:43 GMT  
		Size: 9.5 MB (9515647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0bbf05762eb8ac97ecba268bc3b04ef0b670406e90b259553518d8e4705e6e`  
		Last Modified: Wed, 21 Oct 2026 23:20:45 GMT  
		Size: 61.7 MB (61673632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f921a3d33d47f6c728644d2b2b62b7df36e14473000f9d12036b54dbbaba9d`  
		Last Modified: Wed, 21 Oct 2026 23:20:43 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7951dbb32453398c235abe8cb73740408f41c7f98896fc50b7a186a574a7eb9`  
		Last Modified: Wed, 21 Oct 2026 23:20:43 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4328fb434948ec4d4a8e59f10fe9df258d96a7a54e20087ac82854ab744d4477
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.3 KB (800285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6e5b5e272d6470c088c01c54771a3363f19034a9645716ae8b0a539bd40c8d0`

```dockerfile
```

-	Layers:
	-	`sha256:8ddc0e89a628e858025c894fed0350122825939e6f7224c1a582a6d9d941786f`  
		Last Modified: Wed, 21 Oct 2026 23:20:43 GMT  
		Size: 780.4 KB (780409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ea8053e5e2b95bcb047c4de5f931b0dbfe8968d02e5456316b601b81461973c`  
		Last Modified: Wed, 21 Oct 2026 23:20:43 GMT  
		Size: 19.9 KB (19876 bytes)  
		MIME: application/vnd.in-toto+json
