## `eclipse-temurin:25-jre-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:ba83cfa64d8b12c7c16e9a33e53ffb7edf04348f4b4e56ed3e268658806c6fef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:25-jre-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:b626dfd90ef92c7a6f7374a6f93c4505c62b8c8fde6b4cdefbb81e0eef8c8cdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75160168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb3ef440bb1c7df7c01164111d227ecf492bfab1253c6e6f21bcc6d6a6a5c49`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:21:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:21:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:21:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:21:16 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 21:21:16 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Wed, 21 Oct 2026 21:21:20 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='0200539904de3669dce5c435aa1ef71f530325d6461c76d85fe90d5424e4974e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='cde9e39d32cab07722cb3218d91980091012f16333f8a298c40896cd05e2ffea';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 21:21:20 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:21:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:21:20 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0244497c7790c90d29942090b7db8edbb0ade6c7505116e2998d389bc647217`  
		Last Modified: Wed, 21 Oct 2026 21:21:32 GMT  
		Size: 9.4 MB (9412474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7e536c00f2b9a5abecfaee4e88c16ad22880f35384f7ebca7e2531cdbe38049`  
		Last Modified: Wed, 21 Oct 2026 21:21:33 GMT  
		Size: 62.1 MB (62119711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ccb1708c8d0b53a6fb2029278f060f1e1548249f6f58e3ffe846cc3c9600e3e`  
		Last Modified: Wed, 21 Oct 2026 21:21:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d22ecebd5c32b3a2757e4f01c3b98017fe75a0ebc483ec6e76b0018162ea377d`  
		Last Modified: Wed, 21 Oct 2026 21:21:31 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:685d6534014883449ccfb8c9e8c737a2997b2b0b13f1b23c7ca83bb9257e5f4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.6 KB (800608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579f70a60a35c5202ac383bcad345f4009e4e1aecdddd5355a74811b50da20a7`

```dockerfile
```

-	Layers:
	-	`sha256:4fe60fdde7c15b6dde40281da00895d8aa78a5727f0f81c7d9254f4049414966`  
		Last Modified: Wed, 21 Oct 2026 21:21:31 GMT  
		Size: 781.5 KB (781455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7777313fd6379945b13c03cb6cd1bac32d97dcab43d6fc9770478ea9f536c4f`  
		Last Modified: Wed, 21 Oct 2026 21:21:31 GMT  
		Size: 19.2 KB (19153 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-alpine-3.21` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:ed942847691bb04cd73da69562f6452d1eef842067be7c7da9ac0cee9e5a7a8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.4 MB (74440608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5815767966930791a0d5c72a3ce087ca6fe22f569eed329b170724eadc1e19`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:21:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:21:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:21:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:21:12 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 21:21:12 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Wed, 21 Oct 2026 21:21:17 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='0200539904de3669dce5c435aa1ef71f530325d6461c76d85fe90d5424e4974e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='cde9e39d32cab07722cb3218d91980091012f16333f8a298c40896cd05e2ffea';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 21:21:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:21:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:21:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27d7a2e03ac64e3b11810837aa7a75bbe5850db0a17e609946caa65da787ffcc`  
		Last Modified: Wed, 21 Oct 2026 21:21:29 GMT  
		Size: 9.4 MB (9429330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718344511cb6c6dabd99e757c94d217b132a39016c07b27e6fea571a79696ef0`  
		Last Modified: Wed, 21 Oct 2026 21:21:31 GMT  
		Size: 61.0 MB (61034317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b8a9b3a517e6b0b4b20e219e4e48f08666a5a0c3cc1046056f343572e6ed198`  
		Last Modified: Wed, 21 Oct 2026 21:21:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a927ca9537e34b71f3efb5ca67199f4dd4f977cf5c79c3d750e739e048e0de58`  
		Last Modified: Wed, 21 Oct 2026 21:21:29 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:fd7c764d7e6466b49a3a8042246d6b85af2d3b7af0489e288c97182c3183518e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.1 KB (800129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cf77f4113f898cd73126cd01ec9c105ef28823b63710d6aef434bb564ac8616`

```dockerfile
```

-	Layers:
	-	`sha256:7a986bdc3a59f3d391305b7792d847a246fd776c9515cb1145ce28306b64f3a6`  
		Last Modified: Wed, 21 Oct 2026 21:21:29 GMT  
		Size: 780.9 KB (780866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c5d2c0a7cfc0e9834e39dc55c2c2b2d8766dfd9162d9ac785c16b3fe8d94e39`  
		Last Modified: Wed, 21 Oct 2026 21:21:29 GMT  
		Size: 19.3 KB (19263 bytes)  
		MIME: application/vnd.in-toto+json
