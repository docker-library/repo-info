## `eclipse-temurin:25-jre-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:7ec950978e14058a5a67b4ab3a8e2ed2b736bedd218d6a14d7868f56de11ec2b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:25-jre-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:692f31064ae2be4c9607c40fa89b7f80e7c2c3553c80045e69cab68a50e09c91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75430734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:789c79b55da1d5f9c316db192cf72e7ad7f54847bd7ad8f02271efb7f92f9f67`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:40:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:40:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:40:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:40:25 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:40:25 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:40:29 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='2d50e05c4120fb1f35ced1a3cc53aa83040e5732c4e5955461cf2749db69cc2f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_aarch64_alpine-linux_hotspot_25.0.5.1_2.tar.gz';          ;;        x86_64)          ESUM='b3d29ef8453da5e29c86b1ae08d8ed2a02597782b4ab5637e87f87b6bcc4cba9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Fri, 20 Nov 2026 17:40:29 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:40:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:40:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c52645667c4a3b2111d4b4e5a18ad59f074a52c057916902c022c0f8b88401e`  
		Last Modified: Fri, 20 Nov 2026 17:40:42 GMT  
		Size: 9.4 MB (9437883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba03c82d6a6a4c2a62df3204ede4f714d0526547c73d1aa091417896ed9e070e`  
		Last Modified: Fri, 20 Nov 2026 17:40:43 GMT  
		Size: 62.2 MB (62195889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22405145df109e1dd8f05b64e11c61aceb4242d42a0e3e720ce98de5432a5d8b`  
		Last Modified: Fri, 20 Nov 2026 17:40:41 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccba2c3a47920e5ccc2eaf9928e50955c81290377696f34752b0d07c6734d0fd`  
		Last Modified: Fri, 20 Nov 2026 17:40:41 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3cbc4c68ffa167d1d07ced2e8487ede2582795fccb2beb807bcf810f72e954e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **801.4 KB (801386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18d245f16d6b3cbbb4e01243be1269fb8c33cacfa1a1861bc6af62a13d9bdee`

```dockerfile
```

-	Layers:
	-	`sha256:a1338c060356af7a95c5c68733ac608b8ef3def5555a1441fbce0ff4a41febe6`  
		Last Modified: Fri, 20 Nov 2026 17:40:41 GMT  
		Size: 782.2 KB (782233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97536c8d47c872dfde2500671bd487ad9e1e515b59b0979f327fc1db5b1c114e`  
		Last Modified: Fri, 20 Nov 2026 17:40:41 GMT  
		Size: 19.2 KB (19153 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-alpine-3.22` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:fa8c9d22d06a0acb1244e12acbd61cf0620b043e8e5c7bd415ec8ecb46c5979b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.7 MB (74676510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa2861de8c5064e620260074f553ee3e554ede76abf5c7c3cec57e5c1a8e312b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:40:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:40:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:40:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:40:30 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:40:30 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:40:36 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='2d50e05c4120fb1f35ced1a3cc53aa83040e5732c4e5955461cf2749db69cc2f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_aarch64_alpine-linux_hotspot_25.0.5.1_2.tar.gz';          ;;        x86_64)          ESUM='b3d29ef8453da5e29c86b1ae08d8ed2a02597782b4ab5637e87f87b6bcc4cba9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Fri, 20 Nov 2026 17:40:36 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:40:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:40:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d680042e0d5281dc6a9fe4cce8db19fa30535b33cef0e145745c0f55b9ce59cc`  
		Last Modified: Fri, 20 Nov 2026 17:40:49 GMT  
		Size: 9.5 MB (9455061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8474ed323f4014b3eff08450e68e4e3ef72f4f33508e303673e35bcc9e8dcb`  
		Last Modified: Fri, 20 Nov 2026 17:40:51 GMT  
		Size: 61.1 MB (61091476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1431b27b589900dbcf5d1d41448d07fb90f2a64e327cfb042c985f5d96851dbd`  
		Last Modified: Fri, 20 Nov 2026 17:40:49 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b663f84b3c59cb444f300c7ac4f2dbda9eb1ccda0562061b895cba52667718`  
		Last Modified: Fri, 20 Nov 2026 17:40:49 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:d10e9759dbba192e9886dcffe0af63c514b35d7838f4452d214652a22c7b7b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.9 KB (800906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f13b44918e76c43d3e59d24680731a03652f988d7f3c3bb9f0bd2327af35e20`

```dockerfile
```

-	Layers:
	-	`sha256:ecef792c6fb656b4e8a5ae36b6cf242efdb7d387e368dbac694b8c632c07f77a`  
		Last Modified: Fri, 20 Nov 2026 17:40:49 GMT  
		Size: 781.6 KB (781644 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64c2cc72253d423cce986b0aae0065d5f012283a8a0a5ed98ee42fd369be811f`  
		Last Modified: Fri, 20 Nov 2026 17:40:49 GMT  
		Size: 19.3 KB (19262 bytes)  
		MIME: application/vnd.in-toto+json
