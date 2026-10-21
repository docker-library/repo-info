## `eclipse-temurin:8-jre-alpine`

```console
$ docker pull eclipse-temurin@sha256:96312959238a1e4a4171f2f910d3e886b84957368b4075f702aebc7dff87d58e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-jre-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:485fc2d7ffef109baabf561eea237ce1e4b26941aaeb74833166438a8c94e837
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63064253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b823c76f21ad2f51f6bede9d5ba255d2483ec1621fbbe6bcc1c03593d21e491`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:57:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:57:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:57:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:57:03 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 22:57:03 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Wed, 21 Oct 2026 22:57:06 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='0b8a29d654d4ea5cd2ee7bbcf3e89fe0f66596eb17870255e683a526757d2b8c';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 21 Oct 2026 22:57:06 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:57:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:57:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:508732e91517b49b60c8999e40091e1eb0e2421b097f2f4672732bd1d1ffb458`  
		Last Modified: Wed, 21 Oct 2026 22:57:16 GMT  
		Size: 17.0 MB (16967462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e71ca1a884a67fd874d385c51dd642f89e64bdb1db3b22f6e19831d7a4292dd`  
		Last Modified: Wed, 21 Oct 2026 22:57:17 GMT  
		Size: 42.2 MB (42241090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed0e36716fe5cd4afa2f6673b84712da607488406cd933d83639660ad149a6a8`  
		Last Modified: Wed, 21 Oct 2026 22:57:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b4483cec5add6d6daf0a5c4f3992a210f8c9528669f3a564396e5216539a579`  
		Last Modified: Wed, 21 Oct 2026 22:57:16 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f1542bdff9eee6f5c7eab37c62a2a05b2db6a130f14e968cec88935154341b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **935.4 KB (935389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec26989955af3ab2ee51d2efcf6850915bdbb21b18529616b137c70f0a1dea4`

```dockerfile
```

-	Layers:
	-	`sha256:a4ea8fb2017008911168a3c9ae1996f8e6229d2fbb2d6b2bbf54ad1ca591cc0d`  
		Last Modified: Wed, 21 Oct 2026 22:57:16 GMT  
		Size: 915.8 KB (915795 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c92b62ea8b6ad874523fe1431bdd6e92b54b9dfa001f48e64ca9cb4092426131`  
		Last Modified: Wed, 21 Oct 2026 22:57:16 GMT  
		Size: 19.6 KB (19594 bytes)  
		MIME: application/vnd.in-toto+json
