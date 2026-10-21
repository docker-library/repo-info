## `eclipse-temurin:11-jre-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:a5a2dc90abb55864774e83ba1c49d6927a250d9b4798bbb312bfc778e3869dbf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-jre-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:46461e967cc375b806971bf2221d154af5f5d755d20ab6552a91cbe5b462bc29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63829668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83add97a49d198fee43cd69691cf8df24f2e854e92cc34e874a229283002f428`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:19:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:19:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:19:58 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 21:19:58 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Wed, 21 Oct 2026 21:20:00 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='bb9951aab1dcd0f6c2b22d76a46773100a6639ad199f339ff288d360b3217ae2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 21 Oct 2026 21:20:00 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:20:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:20:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0907545bf05b71359d7ebcc0be7759fe134621880c77c7b7b0121b251e2f2fde`  
		Last Modified: Wed, 21 Oct 2026 21:20:11 GMT  
		Size: 16.4 MB (16353300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66aac03ac16fa1295e8fefe7c0601040774eb4245c64b5e30b3fd1b9b4b25d1`  
		Last Modified: Wed, 21 Oct 2026 21:20:11 GMT  
		Size: 43.7 MB (43679423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:763a5421ee7a68b372be166aead2c0f79740b10f7e3fafdf21b901f9bae27238`  
		Last Modified: Wed, 21 Oct 2026 21:20:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ecec61aa3d7007a8c0219f242f46cd2cb09433eb9aad1cb15b8e52b1d8692a9`  
		Last Modified: Wed, 21 Oct 2026 21:20:10 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:73b2fb3433f94a61c97cc81ac1062f3a173ea1d1bcdd5f09bf8df7e9c743f7a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **911.6 KB (911559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:113d7ea26ed9f2abb3c820f05b0c904f3e77dfacec8aef9ced3dd7e4ed0cba28`

```dockerfile
```

-	Layers:
	-	`sha256:8d70f8f6e6ff7d776f372d47463ec6ab3e67e1ba17dd34d9075fb39e470d5a11`  
		Last Modified: Wed, 21 Oct 2026 21:20:10 GMT  
		Size: 892.6 KB (892586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c810f0981e877bb5655cd81057190f61a405f851a1ea3a2be62dfc58acda3246`  
		Last Modified: Wed, 21 Oct 2026 21:20:10 GMT  
		Size: 19.0 KB (18973 bytes)  
		MIME: application/vnd.in-toto+json
