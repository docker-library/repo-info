## `eclipse-temurin:8u502-b07-jdk-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:0577c4d36a524202634e46972aa4356cab3454dec2434af2fcc20a2fa854fb73
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8u502-b07-jdk-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:7da13f6623681c41663ba7fbb11b1aec24b78ea4fba4a0aa83b63b955281f414
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72980776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7adb818a7367bcf24893babbae8e958723f05f4fa28b8dfff6af59ca83c6a2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:21:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:21:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:21:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:41 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:21:41 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Fri, 21 Aug 2026 18:21:45 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='746bc5577ca2067bf2a96a0ae0f6cf50422f9cb7b5aa58a52e9fceabff5d0619';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 21 Aug 2026 18:21:45 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:21:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857ae3b5ccbaddd909b7fedde837be5b1305ddeabfcdb9a63c9013f764fe38d7`  
		Last Modified: Fri, 21 Aug 2026 18:21:56 GMT  
		Size: 16.3 MB (16273816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcc8ed8d9110230c0b266ead63c5847bbb740bf1caeaa49b464802b05788cbfa`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 53.1 MB (53057474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f7ab9b68c439e93364b0efb077bb46410e861edbe119e9ffa9eab4c1003fc11`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b1dbc13c7e4dcd327e141519ddf944805d3e5f95935719666804a38fac0659`  
		Last Modified: Fri, 21 Aug 2026 18:21:56 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u502-b07-jdk-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9a2348ce74e1eb8fcca4ee9a3021dbce3f74917e6c4dcbe880b37bfa0003732c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1119471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:789af312de082572472ca8f69fb88e1f181c8de19c850c43bd49d0f4c6bb1194`

```dockerfile
```

-	Layers:
	-	`sha256:eebb867a6147f030967be325940c6fea2c46743da47536741165238884499940`  
		Last Modified: Fri, 21 Aug 2026 18:21:56 GMT  
		Size: 1.1 MB (1100761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce0ac2c2a6b2a24536b971ad42771624b53297268fbead53e605cfbb15927b94`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 18.7 KB (18710 bytes)  
		MIME: application/vnd.in-toto+json
