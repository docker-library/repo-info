## `eclipse-temurin:17-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:c40e843b1845fb3577dc95d27ff55ea841a1835ee65bc2ba8e31e980bd49e61f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:18a6b66e951ca80f64c99e79a6640d4284c377d53ca1e048cb41c129eac409ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.2 MB (170185303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b12136c0c67e2a7a2abdca7286a2a155766864e878833dc9b40d4188e26bd22`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:23:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:23:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:23:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:23:39 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:23:39 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:23:45 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='c8bb5bc6984762dbce2ab7403d90832b6897c07f36f8706e4a315aa7a566d04d';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:23:46 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:23:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:23:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:23:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7defd034402886823ea8bde30762441b812c437376776380a2f317e2d67c2f8`  
		Last Modified: Fri, 21 Aug 2026 18:24:00 GMT  
		Size: 21.4 MB (21367990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5d6e4c1307f0b5358f675af3ae44bfcee302ed5763be4a4b420c73d4c19d98`  
		Last Modified: Fri, 21 Aug 2026 18:24:03 GMT  
		Size: 145.0 MB (144970300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8792ee580f313db763b70a2ddf7329ffca8b786668a0d8ee6bed1fa9e6884ddf`  
		Last Modified: Fri, 21 Aug 2026 18:23:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b09369bcba53f2d2696c5002eb393388150c955f973665310e0c0ba1a53e644e`  
		Last Modified: Fri, 21 Aug 2026 18:23:59 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:78fd73545c6254afaf0b07680fe3341d076e7744a96eb6e8e4ffc3ba61c38bf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1107982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9882e365116f983dcef9c2633422a1e3733cb2d4694cfe746347b8f8aaa7dfea`

```dockerfile
```

-	Layers:
	-	`sha256:bc720bafba70589ab846704aa48e556824d0a5187d2115f757cfa5326ea98528`  
		Last Modified: Fri, 21 Aug 2026 18:23:59 GMT  
		Size: 1.1 MB (1088371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d190ccbbe26a064a22d76ce7cf3882e01246df91d97f746a79f1bb10e7049add`  
		Last Modified: Fri, 21 Aug 2026 18:23:59 GMT  
		Size: 19.6 KB (19611 bytes)  
		MIME: application/vnd.in-toto+json
