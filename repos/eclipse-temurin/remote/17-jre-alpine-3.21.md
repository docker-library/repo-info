## `eclipse-temurin:17-jre-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:4fc13a4b61cbac3eee1de09682fad31513ecdccd9f58d31f1ebccaba7226f1ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-jre-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:d78eff2f4a667bf339265f76fdbf419e29b5bcc8192c96c2566b440d696f855a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67055488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:771911522b2092a28fc6d8624bda6aafa6da95364492ce3ea2d7c54c38161acc`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:36:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:03 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:36:03 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:36:57 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='72423b1464907857f4e7ca854a2b8fd9f7cf6b9dd15bd3ea31ef6cf33b097aea';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_alpine-linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:36:57 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94eb297ed2d6fd76089b5b3fb1c05086f5cd4072fe2f02b8c71d16b6afadec76`  
		Last Modified: Fri, 25 Sep 2026 22:36:16 GMT  
		Size: 16.2 MB (16240607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c5026105d37e7ee9a1f681c7816e5fea815a64c90b94d118b6b35ee8d77f624`  
		Last Modified: Fri, 25 Sep 2026 22:37:08 GMT  
		Size: 47.2 MB (47186272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084f927efab67fc298ab09329519bd2c1d5d97dfa0b66d78ba78233c990247ab`  
		Last Modified: Fri, 25 Sep 2026 22:37:05 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06667d834b19973c63508aacd4bd34abc1953a55d6fb29d253398c72cfdc195e`  
		Last Modified: Fri, 25 Sep 2026 22:37:06 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4343e5aaba5d71856f2df9f62d67ff2c1913dea6f1d9408680244165bb2a1b40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **899.3 KB (899341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75a3effd7ad9c6fe9015ee925cd68a250a97c6c06ee8a95598a0c5a969296f01`

```dockerfile
```

-	Layers:
	-	`sha256:de60f7f629b4f67473e77b4386a08569ac3ebd14545684223ad96f4701bd7a40`  
		Last Modified: Fri, 25 Sep 2026 22:37:07 GMT  
		Size: 881.1 KB (881107 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8290b223ba7124f4ed27693b2cce676a59a383f940ecac5fc7cc8e1e0a1b1a25`  
		Last Modified: Fri, 25 Sep 2026 22:37:06 GMT  
		Size: 18.2 KB (18234 bytes)  
		MIME: application/vnd.in-toto+json
