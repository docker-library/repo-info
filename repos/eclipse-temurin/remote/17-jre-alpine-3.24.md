## `eclipse-temurin:17-jre-alpine-3.24`

```console
$ docker pull eclipse-temurin@sha256:5c658c46ee58c35b00394b0ccd9c52dc76f34e66ad7bc426de7be8a466a20431
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-jre-alpine-3.24` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:d58cead12c137c5241ed42946f3ed7602ac46f82161d9bd5db8633537f862a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68103602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bb756644aacca9c7c2c27f71947ac3141d0e036cc68e12ce8f0420cb8e791ad`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 21:57:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 21:57:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 21:57:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 21:57:01 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Tue, 03 Nov 2026 21:57:01 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 21:57:04 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='e42129db57e3965d9d8befdb097531d7887916690338ff0be7d1b0113287c872';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_alpine-linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 03 Nov 2026 21:57:04 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 21:57:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 21:57:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a39843ede75593ee79975fc55a5dbe9fe6ecfa3acea86740b62f504cd174a0`  
		Last Modified: Tue, 03 Nov 2026 21:57:15 GMT  
		Size: 17.0 MB (16970056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc46b7297ab59ee26dc28facbc5e638f1156c6c41e8ece8da0e7d1fa31682130`  
		Last Modified: Tue, 03 Nov 2026 21:57:16 GMT  
		Size: 47.3 MB (47277847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e85a159118f2f3679ebb6b4f841cec34e45c96959c011f77f943a5187a75180`  
		Last Modified: Tue, 03 Nov 2026 21:57:14 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ca84e69851e60139afdd8550892558df3b510e6a6d52106b72f69ce206e8597`  
		Last Modified: Tue, 03 Nov 2026 21:57:14 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c508e4bca318d3a036ae2571b508a7987146c9c817057168cc33d2caab0f24d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **904.6 KB (904584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96878e937cb8bda8c49962209c2fd1d9c2a973c8d3f4eb9460278659178a24f4`

```dockerfile
```

-	Layers:
	-	`sha256:77b44e514b6ff2404062b83f8c770c461c76e214807a47a1f605418009f090cd`  
		Last Modified: Tue, 03 Nov 2026 21:57:14 GMT  
		Size: 885.7 KB (885696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00a516f7103be260deb7b077ad7c85c427b80f02a041777e2d42104ba07106d4`  
		Last Modified: Tue, 03 Nov 2026 21:57:14 GMT  
		Size: 18.9 KB (18888 bytes)  
		MIME: application/vnd.in-toto+json
