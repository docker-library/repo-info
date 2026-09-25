## `eclipse-temurin:8-jre-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:691b3a8325e943c6a5a4d76523868bb34190858dd109190c6c89918fdf17669b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-jre-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:3084517be0324a019b40ca2fd16ef01ef473b0a0c0d9355856e528d4904fc2b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62110212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd95833f21aa0a651d91bc12cbeee24be4c90d66a63d14d2bb6d03b605fa0c56`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:34:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:55 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:34:55 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:34:58 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='0b8a29d654d4ea5cd2ee7bbcf3e89fe0f66596eb17870255e683a526757d2b8c';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:34:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9afc65fb447090ece07fee792cf5cb2f4790f313f83ef610285be41963f3383`  
		Last Modified: Fri, 25 Sep 2026 22:35:08 GMT  
		Size: 16.2 MB (16240602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a79b125a618c06e14df3159e24e5e826c0f7b908fc1eba45ae58f24b7dc604eb`  
		Last Modified: Fri, 25 Sep 2026 22:35:08 GMT  
		Size: 42.2 MB (42241000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eddbace28cdc1aa7ce01ad0daf31aed0abb35e76e1a028ba44c2670f9160134c`  
		Last Modified: Fri, 25 Sep 2026 22:35:07 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2095c2050aebbbeea6b4f4cd0b2c81ea66dfadeabe849ba5c2b87bf5ac0acfee`  
		Last Modified: Fri, 25 Sep 2026 22:35:07 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:81e96816b001850963471bed9515c83bcfff6ed6c0cf9051eb13481c78a5969e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **929.4 KB (929387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2e662f30a1037cff5c7410863ed236a6dd2a9500f2bb4762424d3a1fcbc9e87`

```dockerfile
```

-	Layers:
	-	`sha256:61bd5ef80b5aeaa5ee60272c90f7e8709f184fc0bc06c408f85ba892821593d1`  
		Last Modified: Fri, 25 Sep 2026 22:35:07 GMT  
		Size: 911.2 KB (911200 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20c1d204622e06d30a57d0000119eb65c6d7a0d316d0a3e305cc9bd225ef5395`  
		Last Modified: Fri, 25 Sep 2026 22:35:07 GMT  
		Size: 18.2 KB (18187 bytes)  
		MIME: application/vnd.in-toto+json
