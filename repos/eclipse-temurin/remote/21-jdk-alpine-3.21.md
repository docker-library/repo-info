## `eclipse-temurin:21-jdk-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:9d4da7a8303ddd4bd2a7e815220489f973a013c9720336c95831bb8205fa8e5d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-jdk-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:7d50df0b19e8a9ee9d35372cc478ff1be1289c1524879e0203939c83619c7554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.3 MB (183269687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21787c94d4279ed4c30f165a34786f3e12e49ebd36914c8db8f85282e86db77a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 19:09:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:09:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:09:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:09:56 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 29 Oct 2026 19:09:56 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:10:04 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a41f2d7b886ed318db51543cd045d94dd35179f66df302e6c3fd48a41a6dd9f5';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='dc453842ee3f24710258f42a95bdfe5c2bfc0ca9d70c12f950ead82aee0c8361';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 29 Oct 2026 19:10:05 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:10:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:10:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:10:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2790f3ef135ed68beaad5cb51fa5c1befa54a38fc943fcb471fa5ae78b1f501`  
		Last Modified: Thu, 29 Oct 2026 19:10:21 GMT  
		Size: 21.0 MB (21018061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b87bf57fb1d78f56ef00137664a9b13f9cc9a0ca6342c36a0830e127e975ff`  
		Last Modified: Thu, 29 Oct 2026 19:10:24 GMT  
		Size: 158.6 MB (158623641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9610388790d9041f05abeb20feb464af8d9c943f14823d017a29c5677369b0`  
		Last Modified: Thu, 29 Oct 2026 19:10:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a748de40ec031a4b0b9d92bb8c48caf1d1abad430366605d1551537c59cc46e2`  
		Last Modified: Thu, 29 Oct 2026 19:10:20 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jdk-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:cf8ba96214edaccebce2ff904575c2ea67374f8620ea5fbabe73ed0c4c1fd25c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1107160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49fcd4e4a6e34811eba5b43bfa02def73d40dccce4a8b02001a0075ff743b50c`

```dockerfile
```

-	Layers:
	-	`sha256:94f7a9fbbc8c25e09e06ea4553e6e12c35c6c0b64f4bc49286b0510a928d92f6`  
		Last Modified: Thu, 29 Oct 2026 19:10:20 GMT  
		Size: 1.1 MB (1086738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e364d32b6e97d874c2aa6fb70d7ffa629c2e67d2c52a181c4416ffbd5ad0c31a`  
		Last Modified: Thu, 29 Oct 2026 19:10:20 GMT  
		Size: 20.4 KB (20422 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jdk-alpine-3.21` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:bfcfa710ad21db92aff4aa602f50097571ac300d6308e6705a393fcf9648362c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.7 MB (181681504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed85cdb8940a123efda47cdc3d3e56f5ff0bae97ce1c212cefbcc41557772356`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 19:06:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:06:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:06:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:06:31 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 29 Oct 2026 19:06:31 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:06:38 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a41f2d7b886ed318db51543cd045d94dd35179f66df302e6c3fd48a41a6dd9f5';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='dc453842ee3f24710258f42a95bdfe5c2bfc0ca9d70c12f950ead82aee0c8361';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 29 Oct 2026 19:06:39 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:06:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:06:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:06:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5618e783aa9f8cf63a9ee1ffd9b3c178671c5b29f2439d9c7a79f01099ba959e`  
		Last Modified: Thu, 29 Oct 2026 19:06:56 GMT  
		Size: 21.1 MB (21062561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:422727bff30814e18e69596d962182e6ba5cfb3e3a96e4c06ab632f4043f6a74`  
		Last Modified: Thu, 29 Oct 2026 19:06:58 GMT  
		Size: 156.6 MB (156641980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cd5d933dab1e47c1c88ad4640bb7858e653d84e22bd542eda52c88c0de67df8`  
		Last Modified: Thu, 29 Oct 2026 19:06:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc2a1795d0c93e34ee5af9d99e9db5bb5479d99e8fc5880def9be5f1dddd05b`  
		Last Modified: Thu, 29 Oct 2026 19:06:55 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jdk-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4f45492a8cd2e3db679080284694eb83593b6197f94de83842a60d332f3f73eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1257284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e7b5092eab367bd38f621d7efb87c52d3da08557f429a1785b8992bc105203`

```dockerfile
```

-	Layers:
	-	`sha256:66e0b4817a23f8355400aa509ef7d71fe935fcf3a9ff3ee415430e54c0a62988`  
		Last Modified: Thu, 29 Oct 2026 19:06:55 GMT  
		Size: 1.2 MB (1236740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57b1e850a2a78e7dd11f924c77f30f2895239ca096438678c97b3d12822bfbce`  
		Last Modified: Thu, 29 Oct 2026 19:06:55 GMT  
		Size: 20.5 KB (20544 bytes)  
		MIME: application/vnd.in-toto+json
