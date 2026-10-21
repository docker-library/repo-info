## `eclipse-temurin:8-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:2f733489cefc2d02872ed2cf018aca4544b0c195e50b8bce65d7e63fb247ecc9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:38ccacb618950801c991070ee6f6bf34be8fc40a244d4c57411a703d876070d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73798472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad65b297ec88b8f759a9bc5e483a9c2eed312d360c377872eacf1fcf3af25f1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:19:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:19:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:19:13 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 21:19:13 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Wed, 21 Oct 2026 21:19:19 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='f76b7c98a593f15bbfc9042866141185d63aa87e0afde3b7e48d2c4789a2def5';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 21 Oct 2026 21:19:19 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:19:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:19:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c663ca5a10d603385f8b8a53a01aaa838ff2420d875297d703e7e30d86241ef`  
		Last Modified: Wed, 21 Oct 2026 21:19:30 GMT  
		Size: 16.9 MB (16891377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74aac33b5a901dc392dbfd9b88fd630e740ec1f3ced543f23fb95c1c82fbcd57`  
		Last Modified: Wed, 21 Oct 2026 21:19:31 GMT  
		Size: 53.1 MB (53052258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e17341cf6aa4fba09c9380ab251c6d59f541e76d6c2039bcbf5c31ebd2cc06`  
		Last Modified: Wed, 21 Oct 2026 21:19:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17f96f3f8f2a1bc53f58c844165ae127bfb720cb6245fe6c6787cf518e98593a`  
		Last Modified: Wed, 21 Oct 2026 21:19:29 GMT  
		Size: 2.5 KB (2482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:59bafb331d27c4f770a71f50a3b3d250749f82e9e7951489e1d481d139520bda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1108561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f2f50ce28b993117e852407677dce3afa10bdd4e112bd54596f760c1b42342d`

```dockerfile
```

-	Layers:
	-	`sha256:e0b8bc00ef91a61b7292a28902338fd03a4bb031b54cbf59db1a45af426136e9`  
		Last Modified: Wed, 21 Oct 2026 21:19:29 GMT  
		Size: 1.1 MB (1089115 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e89d861defa95e4a0906f796cf7c0a2b5c2c684596a7b9dcf6bfe804bee60340`  
		Last Modified: Wed, 21 Oct 2026 21:19:29 GMT  
		Size: 19.4 KB (19446 bytes)  
		MIME: application/vnd.in-toto+json
