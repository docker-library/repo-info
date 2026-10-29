## `eclipse-temurin:25-jdk-alpine`

```console
$ docker pull eclipse-temurin@sha256:425f0b733cb23843bd78dbe5552513976d0cf12b9722752c48a5161cf5cd2f32
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:25-jdk-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:94d0c90d37d09cf6e868642cb3434dbac4333620f97e9fb2b66d258fe7e31277
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.9 MB (109890504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d081453512858f7bb6991cb437e856e5724b7e022c20b692343df7c0244fc845`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 19:14:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:14:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:14:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:14:52 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 29 Oct 2026 19:14:52 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 29 Oct 2026 19:14:59 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='d02eadc0a0f93faba4be38c8657eb8eef842103a4c7c2400f5827dbd90fc21c9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='efc86581260b73c340c313e7577c4c85d6a8a899edc3748d78bee5238fe44a4e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 29 Oct 2026 19:15:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:15:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:15:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:15:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eb45b395123c6a1ce4ec62b23cf94618e9b325f9c7a58e00b2f2eac960cf183`  
		Last Modified: Thu, 29 Oct 2026 19:15:16 GMT  
		Size: 14.4 MB (14371873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c612d305a2a8de9b17efd435a33be852767e64fba32fe1f539e9ab009537557`  
		Last Modified: Thu, 29 Oct 2026 19:15:17 GMT  
		Size: 91.7 MB (91662929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322dda1a77ef5557bc041cf413b5abe5cc3f500209b477b169d3fc1cf096b2dd`  
		Last Modified: Thu, 29 Oct 2026 19:15:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f13d875536ccd5fdc17c0f274f7aee0d7341763d5715d3839994f8f1094cd40`  
		Last Modified: Thu, 29 Oct 2026 19:15:15 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:d65c2615eddf2f709a7646dfeb4d8c86437fe1fcf82c34ab8db8826f473bd5c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **970.9 KB (970918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ccf798dcbd9ac665147a8b79f8077c3919a2920c7f45a7373e77473847f6e1`

```dockerfile
```

-	Layers:
	-	`sha256:e531df444d555ebd547e31ce3c8b62806bdffc2892c674fb0f912a73b6559ef8`  
		Last Modified: Thu, 29 Oct 2026 19:15:15 GMT  
		Size: 949.4 KB (949405 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f58f7e0b44f73f983109284b89e96be39641e6719ed15dcefa9c90ef0657b6db`  
		Last Modified: Thu, 29 Oct 2026 19:15:15 GMT  
		Size: 21.5 KB (21513 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:b95ca25913c3920af7aa12339c123e1a0769f1acd8e9700e258c4fea09c97ca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.2 MB (109190141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ceaf8a03467dc31b4770f60e8684ac0929ecafb7b7ae942d82edac586fc94b4`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 19:08:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:08:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:08:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:08:37 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 29 Oct 2026 19:08:37 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 29 Oct 2026 19:08:44 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='d02eadc0a0f93faba4be38c8657eb8eef842103a4c7c2400f5827dbd90fc21c9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='efc86581260b73c340c313e7577c4c85d6a8a899edc3748d78bee5238fe44a4e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 29 Oct 2026 19:08:45 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:08:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:08:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:08:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3edcd50e718a2f4101e85d16314285b745c3ea9b33151d18b938f8aac93ac7df`  
		Last Modified: Thu, 29 Oct 2026 19:09:00 GMT  
		Size: 14.4 MB (14426595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fa4f856064e0b0db046d418809159800673715f047ca16f2d08293b923f4cd`  
		Last Modified: Thu, 29 Oct 2026 19:09:02 GMT  
		Size: 90.6 MB (90570467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2baa268d22601cacfc5ba529bf98685e41c1e0f22cbb331631e92c3ef1b2054e`  
		Last Modified: Thu, 29 Oct 2026 19:08:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1714fb6723c421b6216aec3007a40a545cd71a2d4027c5f631f01062ed49bf65`  
		Last Modified: Thu, 29 Oct 2026 19:08:59 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2826f8b9c3cf2bdde35fd06fa57ff12b1504ea5c48fb9f843d05dff83135a58c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1120461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34e139cb4f381cdc6df1e1e173fd03283029548b6225eb9d7be92191976c10c7`

```dockerfile
```

-	Layers:
	-	`sha256:2cee897511ae966ae813bde02caf45ec2896b3e4aa180e6e97c4e185899d49bb`  
		Last Modified: Thu, 29 Oct 2026 19:08:59 GMT  
		Size: 1.1 MB (1098790 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:849b9e56a4e541fbed975256310087a2da6049540cc81ff49ef76a5259742bc0`  
		Last Modified: Thu, 29 Oct 2026 19:08:59 GMT  
		Size: 21.7 KB (21671 bytes)  
		MIME: application/vnd.in-toto+json
