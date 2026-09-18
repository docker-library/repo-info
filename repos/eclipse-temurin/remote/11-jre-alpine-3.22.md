## `eclipse-temurin:11-jre-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:bd7d5f21f26a928400a831d0fc2315f603767507f2d3b8380e34de118e37c1ec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-jre-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:6ee079df1f240a52319d06ed402bcff401c5cc0701722eb66b84476d3354cfb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63831228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bf89a7c76d9a09ba45c3c3bad60174920b2d17c11915fb23929c2709a0fb3ad`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:40:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:40:22 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:40:22 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Thu, 17 Sep 2026 21:40:24 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='a9745bbf185f9c10b12c8dc7c8741522702c6e201dc8419277e6011bcf717b31';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_alpine-linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 17 Sep 2026 21:40:24 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:40:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:40:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:817ba30c0f4ac49ae6f88ea48d17495d4bc5cfbfc50a2491df819cea7218dd82`  
		Last Modified: Thu, 17 Sep 2026 21:40:34 GMT  
		Size: 16.4 MB (16357174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27febffef04895ef843c50db22477a6023554343635cd29ec4c7976664bebced`  
		Last Modified: Thu, 17 Sep 2026 21:40:35 GMT  
		Size: 43.7 MB (43679390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4711f537736bd8c50c147f3ea13ed5f904e15ad2ffbff53c2748be05f04aaeb4`  
		Last Modified: Thu, 17 Sep 2026 21:40:33 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:642fe20dbb2511f4972c4ae0aa666ff6fa5c97e36b0d88c68d91337776f67291`  
		Last Modified: Thu, 17 Sep 2026 21:40:34 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9a620ae7018d80d07d71d731f4189cfcb459f6340f9f71107290d0c5d906a202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **912.7 KB (912725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13785c4500115b036ff0cfe99e46feaf0c94a2bf451aee4fc92c07af4b0efb36`

```dockerfile
```

-	Layers:
	-	`sha256:f5cb83d5b39a45d8479573048f0e6fec508c9e91d13e9d5991387facdf872332`  
		Last Modified: Thu, 17 Sep 2026 21:40:34 GMT  
		Size: 894.5 KB (894511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ce197430854cfe3c3c45f4737e02595bebc73fca4c74cffb3bd025c6a463bb6`  
		Last Modified: Thu, 17 Sep 2026 21:40:34 GMT  
		Size: 18.2 KB (18214 bytes)  
		MIME: application/vnd.in-toto+json
