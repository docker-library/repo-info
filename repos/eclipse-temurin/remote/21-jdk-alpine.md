## `eclipse-temurin:21-jdk-alpine`

```console
$ docker pull eclipse-temurin@sha256:0bfc69a4758a86710e5c474032d28400a8bd00874766f9e8b1642ac2fd293159
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-jdk-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:9ececb44042a7cc91e4e6bca525c678e811c1602330a80b5f2d2fcfa0aa97c4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.6 MB (183624358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5d7904924e075ef70ed3d3163f60ce6c5ca716b511fa6733d38ce82d4534743`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:37:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:18 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:37:18 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:37:26 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8242627927adc90ac2561d0812dd39890ebc21ef09b550bc2e8b93640b8af4f8';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='bd8824214e42b33333c7f55a039ea078ad6ea6be20d7c5b011c801fb2bdb44f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:37:27 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:37:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0e05dd51e5ffe47d317144d69de9a3946dc8d83750c639d76c40e723b3b608`  
		Last Modified: Fri, 25 Sep 2026 22:37:42 GMT  
		Size: 21.4 MB (21442562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:802e35573aa7ee42b46fd9714582af48caf0f6aebbf2992311da030c8ff5a423`  
		Last Modified: Fri, 25 Sep 2026 22:37:45 GMT  
		Size: 158.3 MB (158329466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aeafda7b1fad5c53a3b22b763dd94158c78503c46b440abd39af469e9184f21`  
		Last Modified: Fri, 25 Sep 2026 22:37:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75bb0de4136d37b665782e892fb7132a0c4d32a3d4bf6989609487696b5e32f`  
		Last Modified: Fri, 25 Sep 2026 22:37:41 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jdk-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1542b095025c2284656a41111c1f5974440c1131cfd800cc068c36f47b778467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1113948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a97cd205cb833b8351f41478e873247486737c13e99e4c767dc2ba7fb138a28`

```dockerfile
```

-	Layers:
	-	`sha256:f79467a00eb871c05257cd097ad23ad2107e16d1bd4b5b32841075385e10d9f4`  
		Last Modified: Fri, 25 Sep 2026 22:37:41 GMT  
		Size: 1.1 MB (1092498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e60658e2c99f4d09f02b4b02055cfb3219f88612d4e3a6b0cd87c8c3a071e72`  
		Last Modified: Fri, 25 Sep 2026 22:37:41 GMT  
		Size: 21.4 KB (21450 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:9bc7354ecf82f90e2cdac8fb5210b3f27ecd975bd2c7f3f7dca152de42439253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181945212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e79a5f1f460b284d05f67c94630673b07e588b7d83ebc169093cb8bb61a812`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:36:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:29 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:36:29 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:36:37 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8242627927adc90ac2561d0812dd39890ebc21ef09b550bc2e8b93640b8af4f8';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='bd8824214e42b33333c7f55a039ea078ad6ea6be20d7c5b011c801fb2bdb44f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:36:38 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:36:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c807d060ae33e5d5997c7313f9cfce87a3f219dcf1e33b59a3bced411008d43e`  
		Last Modified: Fri, 25 Sep 2026 22:36:55 GMT  
		Size: 21.4 MB (21419753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8438b55bfa39bf94c0be01accbc3ffad4dc8d2d7ad997a468531d1f6acd5c68c`  
		Last Modified: Fri, 25 Sep 2026 22:36:57 GMT  
		Size: 156.3 MB (156335210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:166f645a3063ab63a42a670309a370a7fb7933e3a9d7b68cf3f3ea3becdcdb56`  
		Last Modified: Fri, 25 Sep 2026 22:36:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:794d8b8fb47ba05f395f78c45b91f2e8ead46216c584a8dfcdb22f4f7b2c2558`  
		Last Modified: Fri, 25 Sep 2026 22:36:54 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jdk-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f7ac4a4dc3c6bd574a0f1a6a5edfbdece8a96a7ccb254f0a1073834371b64d9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1263494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bff056d827d0f106c91f0cae2d01168797b426edc6d15f6522d6839117144b1`

```dockerfile
```

-	Layers:
	-	`sha256:bf66ad52d41a24c3010793feecd2f9e8e579836b9f1390f44acf461521160f6d`  
		Last Modified: Fri, 25 Sep 2026 22:36:54 GMT  
		Size: 1.2 MB (1241886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e44f7682965b22c28e43c53d3b806d6af90d3a5c2d41d6e19b0d03e14a58cae6`  
		Last Modified: Fri, 25 Sep 2026 22:36:54 GMT  
		Size: 21.6 KB (21608 bytes)  
		MIME: application/vnd.in-toto+json
