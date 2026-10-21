## `eclipse-temurin:17-jre-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:feb5d970d1fb41c537eb7e06963d79469c073d5234e801d98078e6ffec3fdcaf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-jre-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:dc32cafa327233e7cf766c0fd0fa53838c5f8974202a663dc9dbcf06eb43fedf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.3 MB (67336574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a57e1a3de3e3ec6bc7c8258b0633e31e6b3f4661f1c89cfcfe5a52e58d1e3e3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:20:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:20:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:20:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:20:24 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 21:20:24 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Wed, 21 Oct 2026 21:20:27 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='72423b1464907857f4e7ca854a2b8fd9f7cf6b9dd15bd3ea31ef6cf33b097aea';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_alpine-linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 21 Oct 2026 21:20:27 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:20:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:20:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e129732958f0137a73c03aa23f7f00e0c611e81fd6f60e4a5ac9ca77c831074`  
		Last Modified: Wed, 21 Oct 2026 21:20:38 GMT  
		Size: 16.4 MB (16353288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2840d2e2c37bf4816ed6339c55938da08baf3f3ffd71c36ec1e04088e05c26c7`  
		Last Modified: Wed, 21 Oct 2026 21:20:39 GMT  
		Size: 47.2 MB (47186342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b761d0717b7ab1e5ff54977a8dbf6d7c52d11d690727f4291ed1b1632f52f9`  
		Last Modified: Wed, 21 Oct 2026 21:20:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243c351ddf102a32fff0b3c26837aee5dba25fae5de70bc3751956a82aa1b2e3`  
		Last Modified: Wed, 21 Oct 2026 21:20:34 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6e372fb39d50587d04a45f31ab832ae7b1c7bbb9131816f6ffaa9575dda9ed48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **899.7 KB (899695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0033f8e245d683fc1779953aefc8e5cce1c73fa2a74fa748e50afd8b5b63764e`

```dockerfile
```

-	Layers:
	-	`sha256:33463b136a7b6a68a5af2013256023f2802fdfe3e3e787d815790b378429f54e`  
		Last Modified: Wed, 21 Oct 2026 21:20:38 GMT  
		Size: 880.7 KB (880722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29a21d4ebadbef86c21d295d76eef99c73f224ca122d05c9537d4e8d23a8e66f`  
		Last Modified: Wed, 21 Oct 2026 21:20:38 GMT  
		Size: 19.0 KB (18973 bytes)  
		MIME: application/vnd.in-toto+json
