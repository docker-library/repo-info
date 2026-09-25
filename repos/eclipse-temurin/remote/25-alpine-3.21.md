## `eclipse-temurin:25-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:85d59a742f07999afc622094e494ba3c91a58af19c09c1f8d2cc5854a1d24c7a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:25-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:23582c3af8d442d5cabf98fcd5e7664608624d326e652e4909d22c7e38975d2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109450274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c99c0e034a2206bf7c09a079a4a4541db293864983c6bbdb2719238a84a3508`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:38:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:38:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:38:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:38:31 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:38:31 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:38:38 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8d19373d427017d86ac87cf6a47ba49746be864832f60b52b7e3b1531c6b2cb8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='f18648ee5ce45261f50dc9493fdae7ddebaa2a7a857cafda3e2a448a79c03dee';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 25 Sep 2026 22:38:39 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:38:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde87ead8003d7a190888029c0452e2bc39aac151824a0cbd423976bd8fd9107`  
		Last Modified: Fri, 25 Sep 2026 22:38:54 GMT  
		Size: 14.2 MB (14192114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9519bfd34e119b1476cf3723a6a4d4f1e17060b13e754c986a9571d5c1cf8cb9`  
		Last Modified: Fri, 25 Sep 2026 22:38:56 GMT  
		Size: 91.6 MB (91629549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7f32520fa3fe0960abd88f3b602f74af2ebc248487289d446c57dcbc1e1ba4e`  
		Last Modified: Fri, 25 Sep 2026 22:38:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c454681049bbd7489099b9f708963072cac178ebe80715ff5c771abd35d6a0b1`  
		Last Modified: Fri, 25 Sep 2026 22:38:53 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a3d787a9b8603a4497389d74f5210369454b59434cba897805c0f1d7424b1a77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **969.5 KB (969491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42566bae55aef2af9868ac024226aae022abb7fb317a768e6c7902306f8c784e`

```dockerfile
```

-	Layers:
	-	`sha256:75f2ad6ab5683b292d86cc8bb0608febe5f93df2c205e6d3a434f6870b7292a3`  
		Last Modified: Fri, 25 Sep 2026 22:38:53 GMT  
		Size: 948.9 KB (948944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1e7d1e6e915cb023d2addefdcc4a75d2a7c27c4fd1acb54a75418cf026659d4`  
		Last Modified: Fri, 25 Sep 2026 22:38:53 GMT  
		Size: 20.5 KB (20547 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-alpine-3.21` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:df6d3366f75575a57c9b59126eb73113acfc21258023fb0981f72b10d9a626e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.8 MB (108825750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cbb91bdea9d4e8d5ff8c94de63c768f02ad56271e6120a2b042cc3c09c96c1d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:37:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:35 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:37:35 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:37:42 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8d19373d427017d86ac87cf6a47ba49746be864832f60b52b7e3b1531c6b2cb8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='f18648ee5ce45261f50dc9493fdae7ddebaa2a7a857cafda3e2a448a79c03dee';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 25 Sep 2026 22:37:43 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:37:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11de65799bff5043a8bcd04893593b4157286007145d74e066db8738ad27cc0b`  
		Last Modified: Fri, 25 Sep 2026 22:37:58 GMT  
		Size: 14.3 MB (14289977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c803e71a91c96114b90c1bfd64ce5c28e63afe99c827bf67a62e9301d0aaa8`  
		Last Modified: Fri, 25 Sep 2026 22:38:00 GMT  
		Size: 90.6 MB (90558679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359e0620e8b22d6cd6437bbe02968612ac8d77d04dd1823b5451b501190c0092`  
		Last Modified: Fri, 25 Sep 2026 22:37:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a79a3f2b22440b07c088b78d32cd31b1a06f39c9da1f489e16fe446ef582a81`  
		Last Modified: Fri, 25 Sep 2026 22:37:58 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0398db0c727839fbd3305022adce978619cd6aadb3e8a47cb1e355790fd20256
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1119612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd58efd3a5ce87534883fafc64f1d4fa9d7b1429e9bd6d7f710ff959d26c3138`

```dockerfile
```

-	Layers:
	-	`sha256:23b3b4fca4673860efcad61fb3a1d3d78984cf2efe3e941fa1a35b346369833f`  
		Last Modified: Fri, 25 Sep 2026 22:37:58 GMT  
		Size: 1.1 MB (1098943 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1ad27eec86a1dc2f9563e52876c2d372a71cce3c3f23633b2d6658efbc03134`  
		Last Modified: Fri, 25 Sep 2026 22:37:58 GMT  
		Size: 20.7 KB (20669 bytes)  
		MIME: application/vnd.in-toto+json
