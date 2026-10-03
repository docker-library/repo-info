## `eclipse-temurin:8-jdk-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:27df3238e8e0e71593fee58bd3f5fc879b63d2027bb079080ec57f524847f548
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-jdk-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:6808d11c34685d59ee9a4038a48c54c3e8e84f81a873a9c787b3602f1f0cc368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75216763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d86cd3206c96d5b8bc265df1fa3bb7da662728477e07ec811f4323017d9973`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 23:42:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:42:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:42:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:42:41 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 02 Oct 2026 23:42:41 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 02 Oct 2026 23:42:44 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='f76b7c98a593f15bbfc9042866141185d63aa87e0afde3b7e48d2c4789a2def5';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 02 Oct 2026 23:42:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:42:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:42:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d7a1716a1d97a154d822742651620731fccca04be7eff5c2915fd3b49807307`  
		Last Modified: Fri, 02 Oct 2026 23:42:55 GMT  
		Size: 18.5 MB (18535858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a109083af75ce8b30eaae877184f05d5ca19364c6e69f572ed8d11324db07bf5`  
		Last Modified: Fri, 02 Oct 2026 23:42:56 GMT  
		Size: 53.1 MB (53052276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f13cc07e9c00c845da5ea70ba1f04684cfe5d50038ccbde6438edd5a511a2507`  
		Last Modified: Fri, 02 Oct 2026 23:42:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da7bec8ac40fcfb09cc2980ed28b35b397ca2c838a10539770f02698b32f049a`  
		Last Modified: Fri, 02 Oct 2026 23:42:54 GMT  
		Size: 2.5 KB (2482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jdk-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5b357a14994214311003a3d4591a41adca255c5e8b5d325bca7fcb77f6c18c3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1104608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe73d19c461b8893a8b2f7e0b68894b8e03e1bf44e2ca9f43e202298e959fafd`

```dockerfile
```

-	Layers:
	-	`sha256:29b221797f14fe560aa12620b2957946096d95eb956add2c2fa76ce14c761b0f`  
		Last Modified: Fri, 02 Oct 2026 23:42:55 GMT  
		Size: 1.1 MB (1085162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fbd2f4a9ed2aeb72b9c986255f902e0bf619067ba1e0318e88cd549b3c9dca7`  
		Last Modified: Fri, 02 Oct 2026 23:42:54 GMT  
		Size: 19.4 KB (19446 bytes)  
		MIME: application/vnd.in-toto+json
