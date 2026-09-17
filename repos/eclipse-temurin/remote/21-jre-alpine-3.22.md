## `eclipse-temurin:21-jre-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:3bb43d7b08635392aca66066010a8b97dadd81cf1c7d0e2f46d33dac12d151cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-jre-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:f92fb6c4c01ceb4a6469433d677b5fe9a92dfe765c7fcf507621686da2d49237
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73392880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9b9e6c90d5438a28562a8fc3a739fd4fd6118e9f113d7e69c9c364c9d2fd357`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:25:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:25:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:25:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:08 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:25:08 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:25:11 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a4f70d2be5c55940dd60b6636643a05125e60e6c3dbc2a8402032b0346744dfa';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='9a7f8712a2741bb14e2452eed2de99f62d02e05617e27d59f1861a0cdad58486';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 21 Aug 2026 18:25:12 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:25:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8d44c8c1f71a357129725c5f12d2071ba03d2099992268a733efd03f02abeef`  
		Last Modified: Fri, 21 Aug 2026 18:25:24 GMT  
		Size: 16.3 MB (16346766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0be0e0405fa03450f0b03981724fbf4f1e021021cf20bd1e048a9559e98729c`  
		Last Modified: Fri, 21 Aug 2026 18:25:25 GMT  
		Size: 53.3 MB (53255932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fab81cfd6f8316e763a32e71b8523dead07001685f5ee0dc870426862af0afb`  
		Last Modified: Fri, 21 Aug 2026 18:25:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a1b76978903a31f21f1964b9c8f5b745b5fb0e185385a8cecb33e3e37fada27`  
		Last Modified: Fri, 21 Aug 2026 18:25:19 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a748f7862c512ed07c7295c72b7f2017680d5e6f6363548c04ea6689bdb67a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **901.6 KB (901627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb80c2ef3e500df41d02a0b151f416c64c355df44767ddef284a5014f24040fb`

```dockerfile
```

-	Layers:
	-	`sha256:cf9f3ffef0f81aaaa31a9c214e0ea989b2fe63864ba2ee178ee14011f4ac3f2d`  
		Last Modified: Fri, 21 Aug 2026 18:25:23 GMT  
		Size: 882.6 KB (882602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78b3df1d288bb3a241699b6f393af0d2c0640ce5eeee35b09531db6256c2bf3b`  
		Last Modified: Fri, 21 Aug 2026 18:25:23 GMT  
		Size: 19.0 KB (19025 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-alpine-3.22` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:71c8112df99f9b4e54648e15127a65767b9e967496c9b35c261ecdd2c2931aae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.8 MB (72753853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:755111e40c3d477e390843ab34f3a3482c0fb77d2487b7e3ec515af8bf97b433`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:41:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:41:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:41:15 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:41:15 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:41:15 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Thu, 17 Sep 2026 21:41:18 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a4f70d2be5c55940dd60b6636643a05125e60e6c3dbc2a8402032b0346744dfa';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='9a7f8712a2741bb14e2452eed2de99f62d02e05617e27d59f1861a0cdad58486';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 17 Sep 2026 21:41:18 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:41:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:41:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c9b86b008762a5257c4ce48bce2ab4a4658e9cc6ecbeab82322fde10fbe4def`  
		Last Modified: Thu, 17 Sep 2026 21:41:30 GMT  
		Size: 16.3 MB (16305114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34216f4cddac99f2c843ccd52f6710245127eb9a503a639cc66478520e335566`  
		Last Modified: Thu, 17 Sep 2026 21:41:31 GMT  
		Size: 52.3 MB (52323066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:031bdd94a050272d82920267d10a49e6278955c467d5841ded45b9656a13c9bf`  
		Last Modified: Thu, 17 Sep 2026 21:41:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:709edc170c82e4d1397f18cbcbcc317805a2f0a809297e06f2d6064357e485fa`  
		Last Modified: Thu, 17 Sep 2026 21:41:29 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:87a164971acc88332f268f4989eaaec0a6517675006597a793b9dc13dc85e9dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **902.4 KB (902444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f48cd93c97401a8dfa0f80ee81a6ab6848739040a6d68f729a37a275401d9d10`

```dockerfile
```

-	Layers:
	-	`sha256:01e1bd57975418e556aa83b6ab0f7b4d4a18248c9984242cacedb0dc4197f25d`  
		Last Modified: Thu, 17 Sep 2026 21:41:29 GMT  
		Size: 883.3 KB (883309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c8177f102b5a68ed599d817ffe3524325cb6f6b6ebee48329901e4044762513`  
		Last Modified: Thu, 17 Sep 2026 21:41:29 GMT  
		Size: 19.1 KB (19135 bytes)  
		MIME: application/vnd.in-toto+json
