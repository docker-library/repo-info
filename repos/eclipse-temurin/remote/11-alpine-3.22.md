## `eclipse-temurin:11-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:a9a711a01d08413ac4c46bb3b98d712e12f9a6050606c8776ea4c8cc24519be9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:72fefc1eded30bb648d619700d655456ad550c8b3689ee0716a6ccea43b0c609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161182998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d57a3c6925b38f7581597b0849c859c202fcf4fbdb9349fd9cc3c20fe2a1f73e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:19:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:19:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:19:52 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 21:19:52 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Wed, 21 Oct 2026 21:19:59 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='1dc1d3259fa4ca7a2db43c539a60bfa7fc0ea595f445a71ef36d28120f3094aa';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 21 Oct 2026 21:20:01 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:20:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:20:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 21:20:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76fb6408b7a0264f8f28b20e874ff4f0bcafbc7aa98f31d631d359767e4bc86a`  
		Last Modified: Wed, 21 Oct 2026 21:20:16 GMT  
		Size: 16.4 MB (16353359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37707783f12ccfbc5f495a75a7fe8606a5046851aeb59e89422c42d44cd8532c`  
		Last Modified: Wed, 21 Oct 2026 21:20:16 GMT  
		Size: 141.0 MB (141032692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155e9518e45b75837654243a30da84ccdf3b41c6d403c0e7365ffe27478e0272`  
		Last Modified: Wed, 21 Oct 2026 21:20:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f84523a183c0f6c1e4e18751f5f84c61e59a45b1af84f915eab0e92e4a877cf3`  
		Last Modified: Wed, 21 Oct 2026 21:20:14 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7dabbbdb8962525d0d1e40b1ae135e99114403ca229f0eae10fc30bc75564647
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1004021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:080a721369bacfd8384b3d3daa8d37f9d9e2a2bfb707a297eb99b9ec7eb8303b`

```dockerfile
```

-	Layers:
	-	`sha256:7f0be81aa2f61c018c7c5c9ff8200fe91cfb582a7f4e6f382affed4d106f1de8`  
		Last Modified: Wed, 21 Oct 2026 21:20:15 GMT  
		Size: 984.1 KB (984092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:132692567e1b17c3e409b36433a33837d4978fd7bb4605fe67b7bc0059747ce3`  
		Last Modified: Wed, 21 Oct 2026 21:20:15 GMT  
		Size: 19.9 KB (19929 bytes)  
		MIME: application/vnd.in-toto+json
