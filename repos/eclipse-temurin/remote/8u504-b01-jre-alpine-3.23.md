## `eclipse-temurin:8u504-b01-jre-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:9543002b5286c691c866fe45ef37021648ddde256bc3c3cb86b72477c7ae271b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8u504-b01-jre-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:cddb9045fe601d7222c80f83ffd23b08b05d6ef2e01c9e8c2059af31cc35cfb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62987114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e83e7c0e2be87d0e4b756e9a0023709ff5dd18932eff9f44a55f505c6d77a1df`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:19:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:19:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:19:30 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 21:19:30 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Wed, 21 Oct 2026 21:19:34 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='0b8a29d654d4ea5cd2ee7bbcf3e89fe0f66596eb17870255e683a526757d2b8c';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 21 Oct 2026 21:19:34 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:19:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:19:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e28ac739b33e6834bc2139aa7999d0180cd0a366205f8d3532e8fa8c5683b9`  
		Last Modified: Wed, 21 Oct 2026 21:19:44 GMT  
		Size: 16.9 MB (16891298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c948f2440e187ccf4dd29daf817199bbbb54478e3969fdc2925cbde0e98475`  
		Last Modified: Wed, 21 Oct 2026 21:19:45 GMT  
		Size: 42.2 MB (42240997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f4996ec25b2b7d8765a0d2ec0e8bf08a84114555b7a40ca87b73b0b9560616`  
		Last Modified: Wed, 21 Oct 2026 21:19:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c367b7e69cecf2798209db6081b78977e93a03732a699cd0023b2fb3c0530093`  
		Last Modified: Wed, 21 Oct 2026 21:19:43 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:cfc9016ca5997c2d32962211d90895a9cc9bb419e21cca1db76b4e1f2d7cc281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **934.1 KB (934075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c53fe93b59e801049108463fd9b3e70d7ebf2b039bef04b6dce776e97c83de82`

```dockerfile
```

-	Layers:
	-	`sha256:5817a83d201c1bb17e762e2f9b121b3c6d3474548a24729eb3211b522cee9111`  
		Last Modified: Wed, 21 Oct 2026 21:19:44 GMT  
		Size: 915.2 KB (915153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3526bcca1bc005966cff210de5dc98c53bc756a8cc55bac32bcc0f3e050ce3ca`  
		Last Modified: Wed, 21 Oct 2026 21:19:44 GMT  
		Size: 18.9 KB (18922 bytes)  
		MIME: application/vnd.in-toto+json
