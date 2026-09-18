## `eclipse-temurin:8-jre-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:c3ee6d85f791cb96fef18291571b7f58fa485e594013696add8ae6cfafd9e870
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-jre-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:89f657739b0934839ebb5ef7af807af1cbe347452c8e521a2075eb687984f3c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (63010001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:025f1d2ee6940f4ed812591250c519f1318127fa3213aeb8395a55adeced9b47`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:40:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:40:02 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:40:02 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Thu, 17 Sep 2026 21:40:04 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='39d17b519d925e2a979056d800e712b4d5f8b68112413ab1d06f525c1571c164';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 17 Sep 2026 21:40:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:40:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:40:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb758b9914ffc998279801a040d0a530eccb41e381be516d079aeedef4616cd`  
		Last Modified: Thu, 17 Sep 2026 21:40:14 GMT  
		Size: 16.9 MB (16894203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064d2c940cd1bd4add024531a751466438af825f663f7471a85ba91bd058afc5`  
		Last Modified: Thu, 17 Sep 2026 21:40:15 GMT  
		Size: 42.3 MB (42264700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbf1219a58e6503cac1e7f2c537458ea6bfe5aeec47d2e92ef6dd194400a391`  
		Last Modified: Thu, 17 Sep 2026 21:40:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ad20da3d5cbf6ea1d92322bb60e4537ae43a0cbf3fb143beddbaae7761f60d`  
		Last Modified: Thu, 17 Sep 2026 21:40:13 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3c10b0f9f3ddaca7af5ebde40d41e1472d374dd5c8eac0ac19a793e3126a210c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **935.3 KB (935277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cd3cee8083969c1903d82e05894824e4e2d4151f12babf215aeed472be9c322`

```dockerfile
```

-	Layers:
	-	`sha256:2e9e05b9ff8603c671820d68bfde673c9b935a63f789b8afd85bc92d6d669846`  
		Last Modified: Thu, 17 Sep 2026 21:40:13 GMT  
		Size: 917.1 KB (917090 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c1498bb41873e93be634da17951d0e298f8f4f1f0a43c74813efd3dac8af3f7`  
		Last Modified: Thu, 17 Sep 2026 21:40:13 GMT  
		Size: 18.2 KB (18187 bytes)  
		MIME: application/vnd.in-toto+json
