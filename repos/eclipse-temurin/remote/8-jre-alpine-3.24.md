## `eclipse-temurin:8-jre-alpine-3.24`

```console
$ docker pull eclipse-temurin@sha256:fa5016dd5928b890b3ac406649228a664cf7e4eb09b29d4e68ea5511b5358435
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-jre-alpine-3.24` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:ff1165e45fc05df38dacf19e20f1e4dc2334234a075ff38b203da5655dd72a22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63105794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:366898a8ea943674c661b328666604b0f00ae3123cfe93cb93b5fd88e8ba2e02`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 23:16:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:16:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:16:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:16:24 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 09 Nov 2026 23:16:24 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 09 Nov 2026 23:16:27 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='12b6d25841b3e932a60dab34da43f4989a07f767444e3fe7c58d1187252753d9';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:16:27 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:16:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:16:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1623e503e66704611a0f006b9514bb73e979fcb8b7abccfd63e1869fada030`  
		Last Modified: Mon, 09 Nov 2026 23:16:37 GMT  
		Size: 17.0 MB (16969986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f1d2cb406f98476e7b9512eaebc601b99eb79e4ce829dfbd697c102516e20c`  
		Last Modified: Mon, 09 Nov 2026 23:16:38 GMT  
		Size: 42.3 MB (42279545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1e1f24dc785a02a1fd7108bedf0d7b52c9135c1a335778e0166160c7097309`  
		Last Modified: Mon, 09 Nov 2026 23:16:36 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b55e0917121984d12c11f75ebfe2a01fe3191004ee3b3cbdf76e61f7615ce512`  
		Last Modified: Mon, 09 Nov 2026 23:16:37 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8d6810bf0059c4b06be8f8dc51a32eeab6e9315dd0b070e438590ac7eb5f593a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **934.7 KB (934656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37977bd04a18c8f96de57f680dd9ee7ba99601622dbd28283b02335b27642052`

```dockerfile
```

-	Layers:
	-	`sha256:c9f6dd1af986e819a633b32bf08f106629cdf5a4bb965deb88e41a966fd282bc`  
		Last Modified: Mon, 09 Nov 2026 23:16:37 GMT  
		Size: 915.8 KB (915799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:000fdd0be0906d5bcabc7554d684e689a98f76ebf60e1a190d0031504aa37c27`  
		Last Modified: Mon, 09 Nov 2026 23:16:37 GMT  
		Size: 18.9 KB (18857 bytes)  
		MIME: application/vnd.in-toto+json
