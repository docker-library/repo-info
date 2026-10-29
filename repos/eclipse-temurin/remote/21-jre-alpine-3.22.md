## `eclipse-temurin:21-jre-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:3861a9a2208d5da324c57b0cff4ebc3f9603b6a03841235c77f1221bc9c3c462
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-jre-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:5728f6ce2f107eb8128d73b677a56c9816f111aebd4dcd667fa341ec7591012e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73528399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd3b95ba8b652d56556ab2076cb67d1dd4302937300452c764004082ce97808`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 19:12:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:12:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:12:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:12:43 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 29 Oct 2026 19:12:43 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:12:45 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='382633eb2ba28cc5b97be1446eb1dd8d2a60a3795be0166a030e4cda338c490e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='9138eab0f7d230e17163953f015ec9ae2431dbc49069c658b7f991e45b54fb9b';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 29 Oct 2026 19:12:45 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:12:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:12:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71d67f8eb156b544be2cdbfac9f63c7db1e07511135959137d7faf02e3d77d6`  
		Last Modified: Thu, 29 Oct 2026 19:12:57 GMT  
		Size: 16.4 MB (16353171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbe36ae379ba924a9a46b2050d4d6690d1633318b5ba06d50126f46807303d36`  
		Last Modified: Thu, 29 Oct 2026 19:12:58 GMT  
		Size: 53.4 MB (53378282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e147e41eed9936e7cd4698c7f18b8a612e4426b793cc9a678cb32ac5f6cce0f0`  
		Last Modified: Thu, 29 Oct 2026 19:12:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7bf97c385cc0cd385fd26a5068fa721535b3c8fc33491187ba3054f1ad7f435`  
		Last Modified: Thu, 29 Oct 2026 19:12:56 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e46e6082e66d4390eaef43f2d5c8c7b9ca315d7e96ccff4ea58f7f70e8aa201d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **901.0 KB (900983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9643a9fc95776e605a89e6865928a59d83cc5fde51a1e9f85aae30593697463d`

```dockerfile
```

-	Layers:
	-	`sha256:39e11468f06e5ee23a8119623d9aea8872e9772551123f992d95cd19cf1d0a9b`  
		Last Modified: Thu, 29 Oct 2026 19:12:56 GMT  
		Size: 882.0 KB (881958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f6e14c3b29c29c5bf11881f255927db926f74a64cf7985b8d8bd66ed5246c5c`  
		Last Modified: Thu, 29 Oct 2026 19:12:56 GMT  
		Size: 19.0 KB (19025 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-alpine-3.22` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:849ca033dc0b8a6fe230ffd53f30941234bb06f2397737a435d6636e26abe639
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72880763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:041d9f3b3ad3c41b0b87c10f44ee5e99283c5e68a62bd7e82468a1d1340601cd`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 19:07:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:07:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:07:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:07:49 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 29 Oct 2026 19:07:49 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:07:52 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='382633eb2ba28cc5b97be1446eb1dd8d2a60a3795be0166a030e4cda338c490e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='9138eab0f7d230e17163953f015ec9ae2431dbc49069c658b7f991e45b54fb9b';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 29 Oct 2026 19:07:52 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:07:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:07:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2717b1732c71b02af9c2a76307fd4b6168b4e3f29c3dab1d404d57868d2dbfc`  
		Last Modified: Thu, 29 Oct 2026 19:08:05 GMT  
		Size: 16.3 MB (16306410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a927d6d0d2f62a08b2b06420196be86909a6548584f5b0f27ed64ce316e0c9`  
		Last Modified: Thu, 29 Oct 2026 19:08:06 GMT  
		Size: 52.4 MB (52444383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e2f1419975680aae9fb1023cab4de15089d37c71b7d56fcf36a4ecb544082b6`  
		Last Modified: Thu, 29 Oct 2026 19:08:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993ef8e499b67143d6ed039e371fcea9e09eb5646ffcd09ddad163cd06d2b3f2`  
		Last Modified: Thu, 29 Oct 2026 19:08:04 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:d349529d1e66fdb8fb4a825ba087e74241d6e6fec540f4702b98f7cdeab8d122
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **900.5 KB (900507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:967055721efa8b424898ca4f9e08f8bf7983613d0f210352a879cef666058758`

```dockerfile
```

-	Layers:
	-	`sha256:c33789c7bff191423436f56682de8977d7ac798077db5b21e4780b277e195a0b`  
		Last Modified: Thu, 29 Oct 2026 19:08:04 GMT  
		Size: 881.4 KB (881372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec216ad7d12658c05527e8cec7517e0fe030c59af868cdcbd291249a2f84f1c5`  
		Last Modified: Thu, 29 Oct 2026 19:08:04 GMT  
		Size: 19.1 KB (19135 bytes)  
		MIME: application/vnd.in-toto+json
