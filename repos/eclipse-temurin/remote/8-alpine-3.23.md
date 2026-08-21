## `eclipse-temurin:8-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:b996861a3e48ed129a85e5ef48cc42c1471495cd0b1b1c66fcbf29c47a1ccaab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:61bd2ce3e120a8c8ea052f1beba43953d4ef39d467003c3e5c00f9e9b7836f30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73791639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95e1ad19a9889409f6c00e828cd953468c7e1989b20ef7fe17d761029072a8e9`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:21:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:21:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:21:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:16 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:21:16 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Fri, 21 Aug 2026 18:21:21 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='746bc5577ca2067bf2a96a0ae0f6cf50422f9cb7b5aa58a52e9fceabff5d0619';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 21 Aug 2026 18:21:21 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:21:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45b7434ea8ca5e0fc4524b25c281b407d28ee89891c4d5491a4080fb06302c01`  
		Last Modified: Fri, 21 Aug 2026 18:21:33 GMT  
		Size: 16.9 MB (16887130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98bafd63da58999b6c22864a716d079b489b25dad15f253c85975015b6b61496`  
		Last Modified: Fri, 21 Aug 2026 18:21:33 GMT  
		Size: 53.1 MB (53057477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e889cdecae363a5cc4377c6c4677f04e4ccd24c75e8bf117eeaa2aaac5106d`  
		Last Modified: Fri, 21 Aug 2026 18:21:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061972364fd1df3bc157d293be620c547990e8064cec2f4628c3504c3b81c16f`  
		Last Modified: Fri, 21 Aug 2026 18:21:32 GMT  
		Size: 2.5 KB (2483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c31b9821eaef8de375296199ab8e9057c5a9d1c10db31fbcbb400ae17f609f47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1108470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47eb3a6cd73848c41fc5360b1e2f851a9a9854712f8078aedf6014cab7e2c55f`

```dockerfile
```

-	Layers:
	-	`sha256:6d58daf02b8420ee228621cb9a42d7358880e74cf2b4cb853c911e6693a85915`  
		Last Modified: Fri, 21 Aug 2026 18:21:32 GMT  
		Size: 1.1 MB (1089759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61e284aae8742160cff78ea73c92b4d2e59697130a7641cc296730fabfbb5a66`  
		Last Modified: Fri, 21 Aug 2026 18:21:32 GMT  
		Size: 18.7 KB (18711 bytes)  
		MIME: application/vnd.in-toto+json
