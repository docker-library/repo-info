## `eclipse-temurin:8u502-b07-jre-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:bf5c7997409469412cb18c48c5aa2a2f5e551535ec94f52a799460dd567af9ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8u502-b07-jre-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:033157a6403e7ec49120e278910c63eb882b5151744dac784f3db06440a9059b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62998868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e08627d3876d98b67e68ce2746cf99acc83ad523c6b2ad9f36d24e64fbeb10a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:22:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:22:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:22:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:22:17 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:22:17 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Fri, 21 Aug 2026 18:22:19 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='39d17b519d925e2a979056d800e712b4d5f8b68112413ab1d06f525c1571c164';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 21 Aug 2026 18:22:19 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:22:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:22:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4258488cbb784059760825ad78e1bb1e5607e0478b597af966b3ea529f14f80`  
		Last Modified: Fri, 21 Aug 2026 18:22:29 GMT  
		Size: 16.9 MB (16887174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfd9cffbfab0eb50fa0ccc955c2943ec6d806bbec083c4fc4c25c4844915a781`  
		Last Modified: Fri, 21 Aug 2026 18:22:29 GMT  
		Size: 42.3 MB (42264686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89451c58bec8733864ef0b382592936285e75d98bc427d7f968c632991bda0ce`  
		Last Modified: Fri, 21 Aug 2026 18:22:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b51591aa9e8bf94772384a92615e0e6851ae34ed8a5407f622a44d468c2d3576`  
		Last Modified: Fri, 21 Aug 2026 18:22:28 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u502-b07-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:bf9225d51e4fc7d1110b428fec31dc6b65b92b2c16a1f23228dcc027e15297ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **934.0 KB (933982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2145270bbcd5218ae7dd6f75dddc34235bc9948f1c3f76e6faec52c8e6707c4a`

```dockerfile
```

-	Layers:
	-	`sha256:461cff91920dd00eeea112f6d3c9b0b3843a8ebd7a4ab5eeb746b2b7d27810a1`  
		Last Modified: Fri, 21 Aug 2026 18:22:28 GMT  
		Size: 915.8 KB (915797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3be64041d32daff9037334d96cbaa16eb4d32c891e3ae4c554c52200a5487d96`  
		Last Modified: Fri, 21 Aug 2026 18:22:28 GMT  
		Size: 18.2 KB (18185 bytes)  
		MIME: application/vnd.in-toto+json
