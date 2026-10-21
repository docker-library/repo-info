## `eclipse-temurin:17-jdk-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:b0880767c05709f72e2beaffde37e4312641a71f0c91bef939c98d214b2b4cb7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-jdk-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:6be17de39069e36ade4583a0459db4a1d648e8d0285a5fb61b0c562e49d13ae9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (169950166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d850409463278df01f9ac68d629e70e31995cd578dfa8f0d5437f2a5cff335a3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:20:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:20:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:20:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:20:18 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 21:20:18 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Wed, 21 Oct 2026 21:20:24 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='0c4fcdefa2737ccd66e049245fdb9dc431f91796182141204cd5f8192cb288e6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 21 Oct 2026 21:20:25 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:20:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:20:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 21:20:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dab51bcb4604075fc388fefb6989f8ceb8757ee6d6b94243f5348c1975ddb49f`  
		Last Modified: Wed, 21 Oct 2026 21:20:40 GMT  
		Size: 21.2 MB (21180298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a914702c804e49684727a6924ae6f3e66c95e865649174988f42fc2a3083a3e2`  
		Last Modified: Wed, 21 Oct 2026 21:20:42 GMT  
		Size: 145.0 MB (144972922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf8513ba58850c567551824121e18b8294414014eee58655b837357957b6887b`  
		Last Modified: Wed, 21 Oct 2026 21:20:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b8c566243b8e3655a40d86ee096f3759f34f48d4a9aee4c0f9dc19ef3f2a45`  
		Last Modified: Wed, 21 Oct 2026 21:20:39 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4fcd29ce22d3854c5df33da91154d324e56d55f8927aa5974c51c46f06cfa586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1106816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12494ab20f28c95aba46b9beb4f24ff3f3da8e8f720ad3f7027825d97315c3f7`

```dockerfile
```

-	Layers:
	-	`sha256:854742c0e967c34ca7862a80ea335a84b629cb144cb1a44c05a540cbdcb6eba9`  
		Last Modified: Wed, 21 Oct 2026 21:20:39 GMT  
		Size: 1.1 MB (1086446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51174beb903290d01fdf4fb827714cfcfce7ac4cafde67543973db7678232954`  
		Last Modified: Wed, 21 Oct 2026 21:20:39 GMT  
		Size: 20.4 KB (20370 bytes)  
		MIME: application/vnd.in-toto+json
