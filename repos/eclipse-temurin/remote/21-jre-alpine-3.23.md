## `eclipse-temurin:21-jre-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:aae8d1720d5717a6564f957f6d14eca195c9c7ac6c97c8609f70a40c34e4be2c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-jre-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:1c59e0666519c026978ef64b429dfb78518d013d51f5056530f0daa57f2a5bcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (73990127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef49be96147df7b8d46cbcb6709d16bc24e7648a67d64e45eb8ab1682fe1c93c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:24:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:24:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:24:11 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:24:11 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:24:11 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:25:09 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a4f70d2be5c55940dd60b6636643a05125e60e6c3dbc2a8402032b0346744dfa';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='9a7f8712a2741bb14e2452eed2de99f62d02e05617e27d59f1861a0cdad58486';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 21 Aug 2026 18:25:09 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:25:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ba7fef02326041c78b680f9da08cd7becb868e10ebfdb85a03f9539b0152f0`  
		Last Modified: Fri, 21 Aug 2026 18:24:25 GMT  
		Size: 16.9 MB (16887204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d996f3e62fc53ae7f500e19c9073b0900a767cb8870e9fe9807b6f7841c4914e`  
		Last Modified: Fri, 21 Aug 2026 18:25:21 GMT  
		Size: 53.3 MB (53255913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd6e3765f9adc72784c1e9a2477f52673d347e62d99ee8997876238feca29ade`  
		Last Modified: Fri, 21 Aug 2026 18:25:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a1b76978903a31f21f1964b9c8f5b745b5fb0e185385a8cecb33e3e37fada27`  
		Last Modified: Fri, 21 Aug 2026 18:25:19 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:dfce4376ead2809442cfd71c90b5e90aa6d34d7627d107b181080e8cb9823dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **906.0 KB (905965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07e226e6cfc78b0875942bde39a6e01c8ce6a9d27b1476f4fe5234a6e262b410`

```dockerfile
```

-	Layers:
	-	`sha256:926a45c9214eb3b1eaa5dad5a6dcfe78071296cf0a82ea018fca0d7381f8a96b`  
		Last Modified: Fri, 21 Aug 2026 18:25:19 GMT  
		Size: 886.9 KB (886940 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa81b366a7cd4b587c6589807fc3e07b31a6184ce0c998ac0cc26268f9f64494`  
		Last Modified: Fri, 21 Aug 2026 18:25:19 GMT  
		Size: 19.0 KB (19025 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-alpine-3.23` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:41a7c1cf453440308558b72c356f60f1dcb5790a4243d1ec36445d49f3eb3b56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73357175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2440279635451687bd4f3639d5189f0ea8c8b02f0aafb23641d54ddf2dffbee7`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:41:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:41:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:41:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:41:09 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:41:09 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Thu, 17 Sep 2026 21:41:13 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a4f70d2be5c55940dd60b6636643a05125e60e6c3dbc2a8402032b0346744dfa';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='9a7f8712a2741bb14e2452eed2de99f62d02e05617e27d59f1861a0cdad58486';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 17 Sep 2026 21:41:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:41:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:41:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7530d4bca0ec214144898cc66100d79786db9aa7feb553ba231df8c36cac25a`  
		Last Modified: Thu, 17 Sep 2026 21:41:25 GMT  
		Size: 16.8 MB (16845450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a61c22caf84736dd47aedb58d7db89d4a43e4b54201966f634a094967010682`  
		Last Modified: Thu, 17 Sep 2026 21:41:26 GMT  
		Size: 52.3 MB (52323079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89c87ab44a5797062b9c3da0c11a218e143787fb41221d7adc519b7b5daeedf`  
		Last Modified: Thu, 17 Sep 2026 21:41:24 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce19b9963645b31beee819cf2dbae36b43209711a3bd9cdf1ac583d99e171a60`  
		Last Modified: Thu, 17 Sep 2026 21:41:24 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:02d414452dc7eab7c97e69901a69ceb2e619ff34e15c6e3bf9a5275c211a2081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **906.1 KB (906132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f958550f774fab37a73f38e040b237731fd139bd3704fe9b19e73b095cf5ddf9`

```dockerfile
```

-	Layers:
	-	`sha256:86037ab94961907a68fb6c5f22a650f0f6942e700176a579ac3334f708c50093`  
		Last Modified: Thu, 17 Sep 2026 21:41:24 GMT  
		Size: 887.0 KB (886997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e29d2cfb4832600979e81d9aaa04f894d6a49a0b4345963d6edd160d4992e1a`  
		Last Modified: Thu, 17 Sep 2026 21:41:24 GMT  
		Size: 19.1 KB (19135 bytes)  
		MIME: application/vnd.in-toto+json
