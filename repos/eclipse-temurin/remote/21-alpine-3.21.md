## `eclipse-temurin:21-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:bcca026007b8ab0377f8fe33f4bcd04038785e7dc1b4a3d09743e881e9e1cecd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:06f316a968bedb8c9383ed0dca8c13e70dec36a911688a82beaee789e63503c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (182979863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f86e4d8419eac000e960a4c9803bf162bc918ea25a21e87c145012586cb9f77`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:37:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:29 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:37:29 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:37:35 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8242627927adc90ac2561d0812dd39890ebc21ef09b550bc2e8b93640b8af4f8';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='bd8824214e42b33333c7f55a039ea078ad6ea6be20d7c5b011c801fb2bdb44f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:37:37 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:37:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50fc5d400d46a9ad3ea6ce69f707d4839a0aae8c56e450a534352376ed988366`  
		Last Modified: Fri, 25 Sep 2026 22:37:53 GMT  
		Size: 21.0 MB (21021829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5424a34ea2a727a00ed26134de218061792f1272d9538843235c8cd74665855`  
		Last Modified: Fri, 25 Sep 2026 22:37:55 GMT  
		Size: 158.3 MB (158329424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0dc7822bbace837bf3b4d996d884e6014dbf5ae2f78072a1237e693d9d89e9`  
		Last Modified: Fri, 25 Sep 2026 22:37:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd807765fba80c0ad3d1a47829a0c09da22b0334b2e7f367e9759c0afdbeb62`  
		Last Modified: Fri, 25 Sep 2026 22:37:51 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9aee8658b2c67d66ad7fb5c5bf82c6f793ba61c91349dc4343dbb5f7868ac1d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1109137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:440e939404439568bd5dcb0ab4f0b37b1685f2461cf0bd9b67487422dca3868a`

```dockerfile
```

-	Layers:
	-	`sha256:493d2030cacb6490027042bac3f50d80025c535aa1c9c7a43ba0bbc581e5d750`  
		Last Modified: Fri, 25 Sep 2026 22:37:52 GMT  
		Size: 1.1 MB (1088687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a73e35a7c71331b19bb4ad15bd6be4634e10a3eb0b686e5fd0b1cce4e42aa54`  
		Last Modified: Fri, 25 Sep 2026 22:37:52 GMT  
		Size: 20.4 KB (20450 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-alpine-3.21` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:f09aa14ee194b16f22450e49d1fae6b38cc96961a1147af62c20aa2746e7fcfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.4 MB (181371916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04ab5a1ffe13d64a7a408de9008a3c5d1bd3af9631cf320d44f28e7e44480f8b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:36:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:39 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:36:39 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:36:46 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8242627927adc90ac2561d0812dd39890ebc21ef09b550bc2e8b93640b8af4f8';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='bd8824214e42b33333c7f55a039ea078ad6ea6be20d7c5b011c801fb2bdb44f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:36:47 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:36:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7161bbe1ff2b16dfb7c9258d59f679c72ccdca17fcdcb211ca3f6a8228d91bb`  
		Last Modified: Fri, 25 Sep 2026 22:37:04 GMT  
		Size: 21.1 MB (21059609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24441f5a0382e0d2bce4136a774adf1b62ce06369a886eb4680ef0a87ddff531`  
		Last Modified: Fri, 25 Sep 2026 22:37:07 GMT  
		Size: 156.3 MB (156335214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a6812487c299ea3d67e94a664e69b14a4a2ffa2204758a283d839ccdc5e0fe8`  
		Last Modified: Fri, 25 Sep 2026 22:37:03 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c970a408bd8a759bcac75b2493179ecdb2fd559052c44104e5dffa7b6a83b8e`  
		Last Modified: Fri, 25 Sep 2026 22:37:03 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c1e003559c06b6e059b278d4001c634f07effa1369514a58d5cba1bcd3fa9e53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1259261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2d36f2fc4e4cc77df4ff54cdd1d12b7ad9d330bd655a738d1edb6c2f0fd4da2`

```dockerfile
```

-	Layers:
	-	`sha256:a2d6df03be5a46ad52df0dc7a7a9d494a31f6f1a961519987f4c675d1a9f8d20`  
		Last Modified: Fri, 25 Sep 2026 22:37:03 GMT  
		Size: 1.2 MB (1238689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cf0949f80d953f837da620c5488d5841f332aae7fe9357634b90feb53657b0c`  
		Last Modified: Fri, 25 Sep 2026 22:37:03 GMT  
		Size: 20.6 KB (20572 bytes)  
		MIME: application/vnd.in-toto+json
