## `eclipse-temurin:17-jdk-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:e6570644a1aff715831c0f39c1be5c60c27531ec0220310ea6c4f4ca925b086d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-jdk-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:6f40f6e5ebfcd3a3a49eca33acec52cf450f4bda3f6309ea39acc42ab993997a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.9 MB (171918132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7dbd97ccead97c94acb1ba06e84695d04bf4a05fa10318c371314b524aee607`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 23:43:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:43:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:43:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:43:59 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 02 Oct 2026 23:43:59 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 23:44:05 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='0c4fcdefa2737ccd66e049245fdb9dc431f91796182141204cd5f8192cb288e6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 02 Oct 2026 23:44:06 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:44:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:44:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 23:44:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ea47169a835e199c6b5ce1d51eeec1963eb711462e581b40b9231597dccdb5`  
		Last Modified: Fri, 02 Oct 2026 23:44:22 GMT  
		Size: 23.3 MB (23316537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8159aa7caa4e32872e06252d400f71ee01012c5bade11a5c4d5d23dc62332c6e`  
		Last Modified: Fri, 02 Oct 2026 23:44:25 GMT  
		Size: 145.0 MB (144972986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b2cf52215afa0622014ba911bd7ac6214b86d11dec934b34570f4c8f859f7b`  
		Last Modified: Fri, 02 Oct 2026 23:44:21 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ada2c93a0472d7454a64bc31392beddc95a6f1cb7b9b85ec61516ce647b033`  
		Last Modified: Fri, 02 Oct 2026 23:44:21 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e67aac5915a5224a0b0b9285bf6799c989161b1535b35cc0c11c333dffa705ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1107205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc11a900a183dcd88a63f49634b30aaea357c04114a8259d612938d01303f7d0`

```dockerfile
```

-	Layers:
	-	`sha256:99e4176577542117844d81341c7c07ac9cbab790e548d44e097e743071a03350`  
		Last Modified: Fri, 02 Oct 2026 23:44:21 GMT  
		Size: 1.1 MB (1086835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c76de50a41da4e9fe9b8e997de343d6ce154b70fc495b5999efde94c515f839`  
		Last Modified: Fri, 02 Oct 2026 23:44:21 GMT  
		Size: 20.4 KB (20370 bytes)  
		MIME: application/vnd.in-toto+json
