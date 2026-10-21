## `eclipse-temurin:8u504-b01-jdk-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:5abec39f83aea15f61e9454c9c0e3bd0976cf3d1098e236883d20ad174494bf4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8u504-b01-jdk-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:4f72bb12c16f212e9483598dee1784a6ca8ba6a432dc72715643363a2fb7f0f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72918299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc2f5dd149dd756327b6e67920b3102d4afd13b37a3bc1656cbab68fb06c65f1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:19:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:19:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:19:28 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 21:19:28 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Wed, 21 Oct 2026 21:19:32 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='f76b7c98a593f15bbfc9042866141185d63aa87e0afde3b7e48d2c4789a2def5';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 21 Oct 2026 21:19:32 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:19:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:19:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6635dee1955ab16503de2b6844ef5d0041b3536c0cdabeeaaa42754c0bc6125b`  
		Last Modified: Wed, 21 Oct 2026 21:19:44 GMT  
		Size: 16.2 MB (16238057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abdd1cf91f1831a34192c416d59fd7669907950496f22d36556aaacca2d65fc3`  
		Last Modified: Wed, 21 Oct 2026 21:19:45 GMT  
		Size: 53.1 MB (53052236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b850adc81416d4d9bce9b425d28969095d595e956c8de2ef2f6b34143a3a63`  
		Last Modified: Wed, 21 Oct 2026 21:19:43 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfca780b27f53a8376b08b2203d5f5322c849f6e358e107d3e3b48ac97a9c4ba`  
		Last Modified: Wed, 21 Oct 2026 21:19:41 GMT  
		Size: 2.5 KB (2483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5e59c03922e5bbe247819bd3f4156a90b5580bdaaa1bbae6bd887bb49048ed8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1102670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b5cf74551fba5143a313c44305eaea855b8914c84071ad4a79eb9d70bc9dade`

```dockerfile
```

-	Layers:
	-	`sha256:f97328f7e3c7c94b755211a9b10fd424d6ecb0f55cda8a028012790beb402267`  
		Last Modified: Wed, 21 Oct 2026 21:19:43 GMT  
		Size: 1.1 MB (1083225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0418d858ece32870ce538031192ce9909c7360999bf73ac7194de9809e7f0138`  
		Last Modified: Wed, 21 Oct 2026 21:19:43 GMT  
		Size: 19.4 KB (19445 bytes)  
		MIME: application/vnd.in-toto+json
