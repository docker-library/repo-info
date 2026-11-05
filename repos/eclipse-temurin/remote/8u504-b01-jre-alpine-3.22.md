## `eclipse-temurin:8u504-b01-jre-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:0598d4abf6b6667c9ecf95bee5228aa6750737fac6dd2162d8a883c729316f76
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8u504-b01-jre-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:61d89545126e49bd7d2477f72cb9696b0b5849374c133238d1aaa135a966554a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62394305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5a83551732c27086f59d02288f465940d8a7b77edc7415ae2d8d599e5380911`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:17:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:17:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:17:42 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:17:42 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Thu, 05 Nov 2026 19:17:44 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='0b8a29d654d4ea5cd2ee7bbcf3e89fe0f66596eb17870255e683a526757d2b8c';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 19:17:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:17:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:17:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15579bb362e5cdae7813546b4ecf58c5adf75140d8a4c430d59ca87de2867e25`  
		Last Modified: Thu, 05 Nov 2026 19:17:55 GMT  
		Size: 16.4 MB (16356288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:205dab30d111ae98b57d7e78bbede2540fe9fc33210b021e08899140ac21bb41`  
		Last Modified: Thu, 05 Nov 2026 19:17:55 GMT  
		Size: 42.2 MB (42241053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc96b17bd7f1f0b62413b182828daf006cda589c477319c68e7545a45214dc4e`  
		Last Modified: Thu, 05 Nov 2026 19:17:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31030d7ce2831a4db0ca60bf6aec9fb258730d9e25b1551f3c6d48f954b05391`  
		Last Modified: Thu, 05 Nov 2026 19:17:54 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e37507a21c75e8af4c34eac75e467aca8c6e013e1ec6656e8409f70ca9aa290e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **929.7 KB (929740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4bbc5affaed63eaf1c297239e8eed0249db08a638348fd289648de3a4d80924`

```dockerfile
```

-	Layers:
	-	`sha256:80e99a956408b625b2c5820a4ecab65cd63d2b2d0b316885e1d80f61011080ae`  
		Last Modified: Thu, 05 Nov 2026 19:17:54 GMT  
		Size: 910.8 KB (910819 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aba2cdaafe694797093488f7d1caa6c2a9098fcf4c6ca617cb1f02cdf8908721`  
		Last Modified: Thu, 05 Nov 2026 19:17:54 GMT  
		Size: 18.9 KB (18921 bytes)  
		MIME: application/vnd.in-toto+json
