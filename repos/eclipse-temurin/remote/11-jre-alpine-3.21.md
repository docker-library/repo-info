## `eclipse-temurin:11-jre-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:41a61cba229bf574906bc7f599f0878f01ab7bfd6f4d5c95e684a810dd22c041
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-jre-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:52cbaf6ef937ca214ffbac62d5ebfab3483731a4bef412ff9ded0dcc577b3b10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63545321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8baf83a4f7082015fd179e873bfa56ce14c6cd6fb91b3e71838c32ef74132aa`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:19:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:19:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:19:38 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 21:19:38 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Wed, 21 Oct 2026 21:20:01 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='bb9951aab1dcd0f6c2b22d76a46773100a6639ad199f339ff288d360b3217ae2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 21 Oct 2026 21:20:01 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:20:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:20:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b900ab03bbb04fde7909455911982ca312d5f4274db153a603f340a062838c`  
		Last Modified: Wed, 21 Oct 2026 21:19:51 GMT  
		Size: 16.2 MB (16237866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:065ecd16dec7eb34fd91cb3d3682f70365d8d9abb9911a1e9a5589572a187a44`  
		Last Modified: Wed, 21 Oct 2026 21:20:12 GMT  
		Size: 43.7 MB (43679471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348f3cbe2b8280b03d7b2436358d9a2798709ae5b849b623e800a6e8cc659a8f`  
		Last Modified: Wed, 21 Oct 2026 21:20:10 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ea06d28a1da5bd1c08ba2a4970ce76d6e11222097a3252e8d039d0ced2b3453`  
		Last Modified: Wed, 21 Oct 2026 21:20:10 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:98aadeab0a82f43ce4efe006a2213191b1585fa2329bdf498312c97c46414375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **910.0 KB (910007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61065a16112b29cb4c6f77d040bd2efdba2c664f9eefc15831b2b6704c2164aa`

```dockerfile
```

-	Layers:
	-	`sha256:fd2cfe9caf6d83225406118e37b6dca30c855b1ffe2a98cb6986a9b699d79b89`  
		Last Modified: Wed, 21 Oct 2026 21:20:10 GMT  
		Size: 891.0 KB (891034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82c16851027f6576b02a535af0d8235c2cce0cee5c3c32a2194a85b5c1d488c2`  
		Last Modified: Wed, 21 Oct 2026 21:20:10 GMT  
		Size: 19.0 KB (18973 bytes)  
		MIME: application/vnd.in-toto+json
