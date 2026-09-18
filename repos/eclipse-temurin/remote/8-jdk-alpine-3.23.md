## `eclipse-temurin:8-jdk-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:90b5eb957d16738ead635710c383a801a3f5f6dab025a5f9dbd5ff90d2a0f42e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-jdk-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:fefc90392bd15fd6aaa6b54e02c30ca9cf622c271abfd4f2e0a563372b39adac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73802683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa50a07a816a497fb19daf7187b2b7d3f296a88761e345cb1c43b2c4945a8e95`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:39:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:39:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:39:52 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:39:52 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Thu, 17 Sep 2026 21:39:57 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='746bc5577ca2067bf2a96a0ae0f6cf50422f9cb7b5aa58a52e9fceabff5d0619';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Thu, 17 Sep 2026 21:39:57 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:39:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:39:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c77ad2adec5ac2d96987a883ed68dd61d694c06eeaffe17a8d62d8bdccfb08`  
		Last Modified: Thu, 17 Sep 2026 21:40:09 GMT  
		Size: 16.9 MB (16894165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f29d77aeace71b20d01fa2b76cf6ca5f367df3056ede62d678f73cf073849e1`  
		Last Modified: Thu, 17 Sep 2026 21:40:09 GMT  
		Size: 53.1 MB (53057401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e15954c703f3cb50381fb3578aad33adeb993d84cce846322ebe02964c0eaf7`  
		Last Modified: Thu, 17 Sep 2026 21:40:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9094cbbf67bb90d154da852c8728fd1307f2ec280d623d7f4d32c172c7236dd7`  
		Last Modified: Thu, 17 Sep 2026 21:40:08 GMT  
		Size: 2.5 KB (2482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jdk-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3544887850db5c7a7b28067a672c5f154f603465ba2a78f5384e0e4ea1f32729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1109762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f32e5480a5ba487aab78996484ae6c9b804fa57e97451ef311e3f988e57be3ce`

```dockerfile
```

-	Layers:
	-	`sha256:ab77a764301cc3fe02a57a9be1ebea1dc7e685d7319e40999cd31cabac435151`  
		Last Modified: Thu, 17 Sep 2026 21:40:08 GMT  
		Size: 1.1 MB (1091052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efa3c19e9744579bb4d3c356be65993f7c08c1d87b0bcb2db751a9a6c377c926`  
		Last Modified: Thu, 17 Sep 2026 21:40:08 GMT  
		Size: 18.7 KB (18710 bytes)  
		MIME: application/vnd.in-toto+json
