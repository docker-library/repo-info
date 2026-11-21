## `eclipse-temurin:17-jre-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:4be0d4cf898dcb15f99ece851242b6d6a7d330282d56cfc6bcfef42385726c76
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-jre-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:b64e4330d3ddd55d9012f4bc4025b655f02313656f84d935101171fa04e7e7c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.0 MB (68042137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6665d321b6af8e446542ffb83be0e871db1e0cd3256152c14a5a431f9bc199f6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:42:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:42:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:42:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:42:39 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:42:39 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:42:42 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='99fabb8e2517861fbbf1fc26103ee62240ec693340c4c7a812f7043e82acb203';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_x64_alpine-linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 20 Nov 2026 17:42:42 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:42:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:42:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d8836726571ad30824da9b73638dbe7d948262896dc84996d5fa5fab189ff16`  
		Last Modified: Fri, 20 Nov 2026 17:42:54 GMT  
		Size: 16.9 MB (16900409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:203ccd2ef54f477fcc6f3e12a6ea513f8d371640406f13a2978520c83cb34466`  
		Last Modified: Fri, 20 Nov 2026 17:42:55 GMT  
		Size: 47.3 MB (47286551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1817c9d4bd3b1fe18f5cfc9dff1286850dd1ab48689ef5c5c605401084e246`  
		Last Modified: Fri, 20 Nov 2026 17:42:53 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caa6edf1d78763ca931efd0437e8235fd7bb33642583ae7edd252b1bb6809de0`  
		Last Modified: Fri, 20 Nov 2026 17:42:53 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1a14b651e14bb5548c698830be993db9cd7f5ddc280852ac4a522283b65c1e12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **903.3 KB (903297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7133b8742c948864424a9ee17038a5498a86f598cf3d187ab841c4c8dbd0d66`

```dockerfile
```

-	Layers:
	-	`sha256:f41b6a0df0b70288aec62f67ee1baba2712ba22a19c259d82a65296b46e7e499`  
		Last Modified: Fri, 20 Nov 2026 17:42:53 GMT  
		Size: 885.1 KB (885064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b496ac2d61a5f8fef3a21e78c17cc2d506f9a78b6b36a9b7bda2a79ed8e6752f`  
		Last Modified: Fri, 20 Nov 2026 17:42:53 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.in-toto+json
