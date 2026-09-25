## `eclipse-temurin:8-jdk-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:d20db654d5d037b9d98fb2cfc811baf2bb6eeba290b1e5f6d25c1c17f1062692
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-jdk-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:0d14e13597f07f7e8dd33276154623ee58a14f91378c4162e988e7a884cd4c9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73797820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1357f728be481a88cd237024b62d9b518d6bff5f63056a41cb9f2bdad156d181`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:34:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:31 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:34:31 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:34:35 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='f76b7c98a593f15bbfc9042866141185d63aa87e0afde3b7e48d2c4789a2def5';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 25 Sep 2026 22:34:35 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675a1d613ce116133d1aa9650ba4bf5af5bee505eed5b94753dc0951216d5b48`  
		Last Modified: Fri, 25 Sep 2026 22:34:46 GMT  
		Size: 16.9 MB (16894435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9cd9c10aee87b419262316c3ea9997e89092a9d584f4879f31f72db55717ac`  
		Last Modified: Fri, 25 Sep 2026 22:34:47 GMT  
		Size: 53.1 MB (53052269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad0d39553717a65234ef8a554e938cf2ad0841d013ee6f5d503c2f73480ebd01`  
		Last Modified: Fri, 25 Sep 2026 22:34:45 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b80f3fdecfe740863bbfaa5eafe5378433c27be67d6327b15ba550b35ed42e`  
		Last Modified: Fri, 25 Sep 2026 22:34:45 GMT  
		Size: 2.5 KB (2482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jdk-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5a79c378e86e09ba48f22a4d55ab6bc33503aa5cdff63932f22b2d52c0761092
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1109763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9ac8a91207406c8911f58d120763d67f64584fca6741377c4b95d9e8bbd052`

```dockerfile
```

-	Layers:
	-	`sha256:5392f5f8c05839481d050024ec9472a12546cfe033a996384a9c8a874a9be45b`  
		Last Modified: Fri, 25 Sep 2026 22:34:46 GMT  
		Size: 1.1 MB (1091052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99b35d133370f8606bfd232c4c06614b10677059bed8171c94c66dc9578ff9e9`  
		Last Modified: Fri, 25 Sep 2026 22:34:45 GMT  
		Size: 18.7 KB (18711 bytes)  
		MIME: application/vnd.in-toto+json
