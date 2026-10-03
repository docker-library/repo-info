## `eclipse-temurin:27_35-jre-alpine`

```console
$ docker pull eclipse-temurin@sha256:9d76de111573e77ac415d8344271a2e57dd19bd59c48725fa3bac38c101bd0ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:27_35-jre-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:f64bb40751674b6487319cf9c42d5b50e145e7936fec55879cf7f357c849434f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.6 MB (78639643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a94203dbfe20da7aafcca2712ec97c9d999734b9eb255349da7ff941e454eff`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 23:44:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:44:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:44:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:44:44 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 02 Oct 2026 23:44:44 GMT
ENV JAVA_VERSION=jdk-27+35
# Fri, 02 Oct 2026 23:44:50 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='65177a444f1a8201ef6e557c6f24c1dded80ae2e4dc33987fb31173f6c06cd74';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='09323dd71131eb7f30a98cd4a6e050fe10135a23ab5e7ad01b0e097e533ce7c3';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Fri, 02 Oct 2026 23:44:50 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:44:50 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:44:50 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:476c74fd265bf65a632de67d9dede789b85dbc834076f99073b4d80a47d300e3`  
		Last Modified: Fri, 02 Oct 2026 23:45:03 GMT  
		Size: 12.0 MB (11982065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4de2a85917805edc577e4b5b115b82d17401c9ab5e80fd486715fef268752066`  
		Last Modified: Fri, 02 Oct 2026 23:45:04 GMT  
		Size: 62.8 MB (62805251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24c94da845444c8d0972d09b705e0904bfb9010dc1f3bbd7cb1e331a47c7c440`  
		Last Modified: Fri, 02 Oct 2026 23:45:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e83f576f79411093cb24c0fefce62771fac6896b69a6f95502adfcec5617c01`  
		Last Modified: Fri, 02 Oct 2026 23:45:02 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27_35-jre-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:273b570ff8e3a71455bf07474d382405f9f94e706f9f911c42e2f9314497c1df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **803.3 KB (803308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2c36415bc2fddca8af1d9b89c5fc98ed66bdfd738d53be958e1fc2f9293feb8`

```dockerfile
```

-	Layers:
	-	`sha256:a18c8f7c024d82e02578be2d6708d0663a316f57617f7c28afdade40cfa72efc`  
		Last Modified: Fri, 02 Oct 2026 23:45:02 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5d918c2f18cb21795d6156388c9731bcf904c8097fbb22c4a4999742dc13134`  
		Last Modified: Fri, 02 Oct 2026 23:45:02 GMT  
		Size: 19.7 KB (19747 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27_35-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:3dc0ec4d7461533bfc49e6ddcf485e92b8bbc3e0275ce7cf8539906b6d9d951f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78157320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2a6d11c189b58970b7aa5ecd14ada06212797e149c7de811e9be1b7cc979305`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 23:43:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:43:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:43:11 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:43:11 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 02 Oct 2026 23:43:11 GMT
ENV JAVA_VERSION=jdk-27+35
# Fri, 02 Oct 2026 23:43:17 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='65177a444f1a8201ef6e557c6f24c1dded80ae2e4dc33987fb31173f6c06cd74';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='09323dd71131eb7f30a98cd4a6e050fe10135a23ab5e7ad01b0e097e533ce7c3';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Fri, 02 Oct 2026 23:43:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:43:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:43:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a9ee1b5d4936289a697b096b246da54523f668849c1b173ef6c49a5964e8640`  
		Last Modified: Fri, 02 Oct 2026 23:43:30 GMT  
		Size: 12.3 MB (12293031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a026b412a73341fdd010c3c09167e3d8e3fca9faeb2b1af9f05113e951997978`  
		Last Modified: Fri, 02 Oct 2026 23:43:31 GMT  
		Size: 61.7 MB (61674042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7687c6cf0ab380cfa54b5004fdbc09f580b166caa7fcc3c2f22373cc52a2c976`  
		Last Modified: Fri, 02 Oct 2026 23:43:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1a4fc447890f8455e3d83f793a785220cf0504547d2164872568418348ea678`  
		Last Modified: Fri, 02 Oct 2026 23:43:29 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27_35-jre-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5f4d497bb1f5edbb5ab44909b7380e121aee25b6c617ecdf5a0d5e51d914ef68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **802.2 KB (802227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f49a038dc55fa31e90c60a1be89742bb8f2e8f782ffe415df69656726a9331c1`

```dockerfile
```

-	Layers:
	-	`sha256:621c3e7a1cabe7b4fb9f003153603d8d1c9554621c7587a9b5f25eef98633aa5`  
		Last Modified: Fri, 02 Oct 2026 23:43:29 GMT  
		Size: 782.3 KB (782346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a6a25ef5d0d214004a85c9964437370ec393175f53c94e22fdc6163254db84f`  
		Last Modified: Fri, 02 Oct 2026 23:43:29 GMT  
		Size: 19.9 KB (19881 bytes)  
		MIME: application/vnd.in-toto+json
