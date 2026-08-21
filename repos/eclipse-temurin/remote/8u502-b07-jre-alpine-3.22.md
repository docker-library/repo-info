## `eclipse-temurin:8u502-b07-jre-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:eb7c4ef2d1608af755d52b0dd987393d2952bbeb171b73e009b55e621c64010d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8u502-b07-jre-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:0e394ed3f7e640d5fa0efe1dc674073a8a2294794d013253f88084bd10556abb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62401878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffbb08032a53047b246f3ad43c3ee29b832c487ed3c492b78e78235ec3a82a69`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:22:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:22:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:22:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:22:24 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:22:24 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Fri, 21 Aug 2026 18:22:27 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='39d17b519d925e2a979056d800e712b4d5f8b68112413ab1d06f525c1571c164';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 21 Aug 2026 18:22:27 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:22:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:22:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b2cf1b63b64610533c7e67b1c4fcea8da6f47cc4813142e18847de9bab4f7d6`  
		Last Modified: Fri, 21 Aug 2026 18:22:38 GMT  
		Size: 16.3 MB (16346994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db2b09c57d21a0e399727e6fb446ffdc18affc23564b80720d70091be6b2782e`  
		Last Modified: Fri, 21 Aug 2026 18:22:39 GMT  
		Size: 42.3 MB (42264704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6802dcf6afa95de6e5b522a569e076301916b908e94d9252e226ceda804e5c`  
		Last Modified: Fri, 21 Aug 2026 18:22:37 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35189042c4c6ae78a058ff364fe54d782b268fa9fcc33ece0713d7a21b021e2`  
		Last Modified: Fri, 21 Aug 2026 18:22:37 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u502-b07-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:cb411129702f5535bb6da58ac3c63c7f5589777a603ca8cf899f0b78c2bde603
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **929.6 KB (929646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73346168d29b2f8bed32d07187d4b3caaeccab69f851d6b7afd9089f4fe13cb7`

```dockerfile
```

-	Layers:
	-	`sha256:8a471911b52e9e6e8cc3b269f56f55e9fff03f7e304ef607af9a5d68bb306205`  
		Last Modified: Fri, 21 Aug 2026 18:22:37 GMT  
		Size: 911.5 KB (911459 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:387f4463c06790ae18cd66dc2e50712071faedfb1c2e765df9056e4659de89aa`  
		Last Modified: Fri, 21 Aug 2026 18:22:37 GMT  
		Size: 18.2 KB (18187 bytes)  
		MIME: application/vnd.in-toto+json
