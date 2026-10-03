## `eclipse-temurin:8-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:272eaa70a03b2559b4e361b6ee61b07a44fbad0bb8f57bc03cf23a7de83b734b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:ce9bb28ffa50e50ee8d03e17f80be95e0f247d20402479ea03f0caafe9955f99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76274452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:995f5cfd513374ff05d25dc0ed30e110f3bcb949fdbcf5c6eaabaf6e2ba6d0f2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 23:42:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:42:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:42:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:42:38 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 02 Oct 2026 23:42:38 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 02 Oct 2026 23:42:42 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='f76b7c98a593f15bbfc9042866141185d63aa87e0afde3b7e48d2c4789a2def5';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 02 Oct 2026 23:42:42 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:42:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:42:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92bd3bfcc58dad052d1735e3848536ab4ec7e93f109af741d35f2a1582f0ddd`  
		Last Modified: Fri, 02 Oct 2026 23:42:54 GMT  
		Size: 19.4 MB (19371046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b329b6ec9d01a6aee162b42ad6713cee7e59a807777af79a8e48b4a5c78dea3a`  
		Last Modified: Fri, 02 Oct 2026 23:42:55 GMT  
		Size: 53.1 MB (53052291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba423266e47e02cb7e2c4176abb898346b04abb9f10477e08ff459bf934ec3f8`  
		Last Modified: Fri, 02 Oct 2026 23:42:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ca47ba59f9f531a723258b2bf72a716788c142f44f2e2e1ad5da00217708c3`  
		Last Modified: Fri, 02 Oct 2026 23:42:53 GMT  
		Size: 2.5 KB (2482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9692ea972ee48175f1401cf4ce096af1ebdb16183d4c261e05a4728eec3572c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1110498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a500c65d3461682040ae42a311694e6083384833c6990a34cd11221655a5ef`

```dockerfile
```

-	Layers:
	-	`sha256:585119a33fb47dc55b9c22344dc4f8cb3eb9d70a140338ce4e5d52941f54e8e2`  
		Last Modified: Fri, 02 Oct 2026 23:42:53 GMT  
		Size: 1.1 MB (1091052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e36a06014fe953d2d65c72cdb00c01b3d11801ba0436f788b09949c978e6a01`  
		Last Modified: Fri, 02 Oct 2026 23:42:53 GMT  
		Size: 19.4 KB (19446 bytes)  
		MIME: application/vnd.in-toto+json
