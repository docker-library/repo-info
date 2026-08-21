## `eclipse-temurin:8-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:ab1d1b6badc691b6757592c3b8dea0de14207662a139bbb805433eea586bc188
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:8d688503d12018e00291e92fa4ecdf63b6ab4942ecef6a89a803acf1f8d6908d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73194507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15e945a91b3f28d8af57bbdfb7c8eda9376ca55391f78a49fcfc08ee97dece5a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:21:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:21:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:21:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:20 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:21:20 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Fri, 21 Aug 2026 18:21:23 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='746bc5577ca2067bf2a96a0ae0f6cf50422f9cb7b5aa58a52e9fceabff5d0619';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 21 Aug 2026 18:21:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:21:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d48a0cec82b22a18d552fa60619cfaf7fe93be3022e2089c57dad6827ac659c`  
		Last Modified: Fri, 21 Aug 2026 18:21:34 GMT  
		Size: 16.3 MB (16346871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de14df82a04625fc6210a83681a7e58eee721c37f28ffa54b9d5bbefe679dee8`  
		Last Modified: Fri, 21 Aug 2026 18:21:35 GMT  
		Size: 53.1 MB (53057430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ee33ede4933fd7bf6c5217f7228ccea71fcabf5d737a49d7d00ff10b1fa4d0`  
		Last Modified: Fri, 21 Aug 2026 18:21:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7be3431e05f250f48a41df26b4efb9f4ba49b930830c85fe065757fc8406a94e`  
		Last Modified: Fri, 21 Aug 2026 18:21:33 GMT  
		Size: 2.5 KB (2483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7882552007e4f60d7aaa07098fbda3cc0babf7b4542fd00a093e2b19c61a4f9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1104131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd20a2064e931961bb543125ccef0751f91e5784857d66987fc4b81c9077edee`

```dockerfile
```

-	Layers:
	-	`sha256:68b789ab6e668652f894a367693ee89ae47854be442a8520d69025cbd73184a2`  
		Last Modified: Fri, 21 Aug 2026 18:21:33 GMT  
		Size: 1.1 MB (1085421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:785a961bda09bf94aa7f0329b99ba3726971af94461da2fd87f7ee07a1de62e4`  
		Last Modified: Fri, 21 Aug 2026 18:21:33 GMT  
		Size: 18.7 KB (18710 bytes)  
		MIME: application/vnd.in-toto+json
