## `eclipse-temurin:11-jre-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:d77414a1112922468e474b5687195daa11dc0644f6185e1d70ecbdfb210f7027
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-jre-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:80e907936e3da79cd851d02febba9192b1b227a46a0fc7f23602c18c5a30083e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64425569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94f18dead14495b9a04d62aa34e0c9db843c7fcca95c180c5fb786b7a1c9652`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:19:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:19:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:19:53 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 21:19:53 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Wed, 21 Oct 2026 21:19:56 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='bb9951aab1dcd0f6c2b22d76a46773100a6639ad199f339ff288d360b3217ae2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 21 Oct 2026 21:19:57 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:19:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:19:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59d9e0f1a8f0e6f5044ae072d58ade899ba38f12f063bf53d98c6c618df46ee3`  
		Last Modified: Wed, 21 Oct 2026 21:20:07 GMT  
		Size: 16.9 MB (16891302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c06c12fcb3389df7d4014ad4c8ca1b86ccd2183827b463ba2c0d6258310a5c`  
		Last Modified: Wed, 21 Oct 2026 21:20:08 GMT  
		Size: 43.7 MB (43679451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7dec3640ae1bc811e13ed66e71a2452a2bc7a23efd744353a85e3d7e8ceda0b`  
		Last Modified: Wed, 21 Oct 2026 21:20:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0651d9ef72db9b51ec6ab46409b282e0eb467d77eeff9034d3702bb3a9fe1444`  
		Last Modified: Wed, 21 Oct 2026 21:20:06 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a75842654d0723e08ac5c36a31ded156e28226ae0abb71436b0b7eedbd650daf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **915.9 KB (915897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ade5659ac959ad5cc71cd9fd0e7d9f634db3203b1c7e5a9d8e8e5a0550b7c45`

```dockerfile
```

-	Layers:
	-	`sha256:89bcb532bbdf6f11fb9bf6821205f0fae9820fd0d6fde06a31b093870eb47bde`  
		Last Modified: Wed, 21 Oct 2026 21:20:06 GMT  
		Size: 896.9 KB (896924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a83b26e207f26c28baa36282bf60e9361f5af00021018fbfc65fb0580211a247`  
		Last Modified: Wed, 21 Oct 2026 21:20:06 GMT  
		Size: 19.0 KB (18973 bytes)  
		MIME: application/vnd.in-toto+json
