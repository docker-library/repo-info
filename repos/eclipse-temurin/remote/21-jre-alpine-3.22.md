## `eclipse-temurin:21-jre-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:f816ce16bcad97d2e68420362bf37edd914a2a986b2b5aa4a7b3e7492128a0e8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-jre-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:0f0a80d2759bc6c490345783765c35e4b71c766e8e0adaf877b9572404baf496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73531623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:943f92d2ab8e8912cb8d665298d66244c79d70c340ea0ed9f4b9f624ef054486`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:18:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:18:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:18:49 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:18:49 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 05 Nov 2026 19:18:52 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='382633eb2ba28cc5b97be1446eb1dd8d2a60a3795be0166a030e4cda338c490e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='9138eab0f7d230e17163953f015ec9ae2431dbc49069c658b7f991e45b54fb9b';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 19:18:52 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:18:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496fc5cd2fa3b46c8e3388b4f05fffa28c9060ecee2b85a130ac69abd0edd45f`  
		Last Modified: Thu, 05 Nov 2026 19:19:04 GMT  
		Size: 16.4 MB (16356366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3371c9c8089d23f730abf9b807677cef453d6a54998ce49f5f46808c0a94f50`  
		Last Modified: Thu, 05 Nov 2026 19:19:05 GMT  
		Size: 53.4 MB (53378291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5382d051abdb0d3a7505455c3b4ef3bc39972133e44f6811c3195c574ffeeb46`  
		Last Modified: Thu, 05 Nov 2026 19:19:03 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5686eb9efc74a5a278c4dd2ad889569419e92e8fb19240b2bcea7f17d9e3845`  
		Last Modified: Thu, 05 Nov 2026 19:19:03 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:be34e3aff1bbc4a35e14e763e6d6dd9bbbbe75daeee5789bd15f8b7bb26872f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **901.0 KB (900987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da08128e2bf19e0d3cb74224fdeb9e90d9feb4410e5c50ccf99407eceed54357`

```dockerfile
```

-	Layers:
	-	`sha256:b0abd5171b4a78f3a8b84475327827f0be82b7abfb269ee3a2aaed852d0230ed`  
		Last Modified: Thu, 05 Nov 2026 19:19:03 GMT  
		Size: 882.0 KB (881962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57388394c70284e46e9053ae30438cce20e1805561ac3f4bd046543795f75a3c`  
		Last Modified: Thu, 05 Nov 2026 19:19:03 GMT  
		Size: 19.0 KB (19025 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-alpine-3.22` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:ce8d4769d477bbffa3e2aa088041fcdb9cc58a51d55fd0203450a0db9565131b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72882746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aa46a4c0bc8a2cde060e202dba4331bfb76555e645791cb70ba504d2aec00e3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:13:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:13:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:13:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:13:18 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:13:18 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 05 Nov 2026 19:13:21 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='382633eb2ba28cc5b97be1446eb1dd8d2a60a3795be0166a030e4cda338c490e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='9138eab0f7d230e17163953f015ec9ae2431dbc49069c658b7f991e45b54fb9b';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 19:13:21 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:13:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:13:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6c5bf5ded7aa1bc8528e4b6b8d89e8ca9795aae43d1b0fd0ea5fcfcfb6efbb`  
		Last Modified: Thu, 05 Nov 2026 19:13:33 GMT  
		Size: 16.3 MB (16308336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec8b3db033ce5157b39da34727134e354e490e3616149a4a4f089e89dfa085ea`  
		Last Modified: Thu, 05 Nov 2026 19:13:34 GMT  
		Size: 52.4 MB (52444435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db80d10c64c4fa4eda6221813cff4ac361cf554174757e1ddd02e25989d16139`  
		Last Modified: Thu, 05 Nov 2026 19:13:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dbc28436e4ea72679f2477a19bac94c2af51a12967f2dac747667dd29fde137`  
		Last Modified: Thu, 05 Nov 2026 19:13:32 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c88934fe9fac83d121e5716d8d286a4ad2f39ad61a0a99ffc1010232dfab4134
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **900.5 KB (900511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:770583a26a1053ae81587fe5e0a31dee6062699bcfa0991b5906d9bb1129a6b8`

```dockerfile
```

-	Layers:
	-	`sha256:f075e638ec897320ddc89e1b7e61fd38d92a124239a4c22c3ee39ee35eb0067f`  
		Last Modified: Thu, 05 Nov 2026 19:13:32 GMT  
		Size: 881.4 KB (881376 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f73c983b37ddf7b1fb0afffc85bf4216d6173ce5f46e35cc4237f4413738961c`  
		Last Modified: Thu, 05 Nov 2026 19:13:33 GMT  
		Size: 19.1 KB (19135 bytes)  
		MIME: application/vnd.in-toto+json
