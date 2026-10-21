## `eclipse-temurin:17-jre-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:6d96833b2e78a8143b90f2646b59ca54463264dbed5b34f6304366aaaf8b9148
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-jre-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:885e39c340e5a245445711cfa6058fb218948149520f0f33500ad79b2357cfe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.9 MB (67932558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d9e46801685e4e225a529a17383915ad073ba3fbc5291f72ef7c4590793ba32`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:19:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:19:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:19:49 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 21:19:49 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Wed, 21 Oct 2026 21:20:25 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='72423b1464907857f4e7ca854a2b8fd9f7cf6b9dd15bd3ea31ef6cf33b097aea';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_alpine-linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 21 Oct 2026 21:20:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:20:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:20:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5d946981bc6e94ce1787d870009f70ab32a20f52061022b9af0888b0c53e34`  
		Last Modified: Wed, 21 Oct 2026 21:20:13 GMT  
		Size: 16.9 MB (16891375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18b57a7223627ae1c2cd53d7202fd178c8afde1267d3ad22a16fde18920213ec`  
		Last Modified: Wed, 21 Oct 2026 21:20:36 GMT  
		Size: 47.2 MB (47186369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d5d914d7b2b01af3b60ac11e8dfd136bb9f15905e50a95e82b266868d0e4e49`  
		Last Modified: Wed, 21 Oct 2026 21:20:34 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243c351ddf102a32fff0b3c26837aee5dba25fae5de70bc3751956a82aa1b2e3`  
		Last Modified: Wed, 21 Oct 2026 21:20:34 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0b3e20a3248a67dc4bc4841a245f9fd0b44cd9e0aa14a57c20e3ad86b1b42842
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **904.0 KB (904033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddaa4327b45d41576b1a1a26f22e3e8c532a8fde500511492f8dfa62ba7f31e`

```dockerfile
```

-	Layers:
	-	`sha256:4be16418e6acf15ccc42bccc64bbc9c8cf939025e6a4ac30f6938669a9b0fc0a`  
		Last Modified: Wed, 21 Oct 2026 21:20:34 GMT  
		Size: 885.1 KB (885060 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4eb28b75b54e708fa69611064c040b55bd6c5896b892dc3d2e358141ce22afe6`  
		Last Modified: Wed, 21 Oct 2026 21:20:34 GMT  
		Size: 19.0 KB (18973 bytes)  
		MIME: application/vnd.in-toto+json
