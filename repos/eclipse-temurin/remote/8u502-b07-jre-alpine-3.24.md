## `eclipse-temurin:8u502-b07-jre-alpine-3.24`

```console
$ docker pull eclipse-temurin@sha256:fc657ddcda392e8e9e3e1d487356a93254784a37618db23a8bf6c4cc2b158a4c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8u502-b07-jre-alpine-3.24` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:ae0a6bfa0fe06fd49f210c24ead55317610d32145654f00ed78cd8ea1994410d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63089132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ced0bd5e35517b1b3a3b5e6be67aff8f568e2077aca78c083331bd7de20011d7`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:39:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:39:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:39:57 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:39:57 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Thu, 17 Sep 2026 21:40:00 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='39d17b519d925e2a979056d800e712b4d5f8b68112413ab1d06f525c1571c164';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 17 Sep 2026 21:40:00 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:40:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:40:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:715567758c1c536af8822447f21377d14dd56f1fa3b6fbc5114aba61a2bf0fba`  
		Last Modified: Thu, 17 Sep 2026 21:40:11 GMT  
		Size: 17.0 MB (16972107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70b723be31bc5f8d45f69cb916c05588f68767e2f9a1111e5046f6357e7cbe37`  
		Last Modified: Thu, 17 Sep 2026 21:40:12 GMT  
		Size: 42.3 MB (42264700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75bf925a6d1756f98916ec991ce93a9e681bd61f12f119353df2d0eb0e9bccf`  
		Last Modified: Thu, 17 Sep 2026 21:40:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edf3c3f416fbc19ed77b3428887343eee6bdb2e7dda68a7b7be9809128a2b63e`  
		Last Modified: Thu, 17 Sep 2026 21:40:10 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u502-b07-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e843aee4dd32fe38c3bc661d927d3bad422e155c61e9880e6a0e110e9461e190
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **936.6 KB (936591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d511956772ce9489af9d26ebd16b6d7e8cc76abdd3a81dceef6ed98dfabf197`

```dockerfile
```

-	Layers:
	-	`sha256:c54f44121c4a8e218f5eeeb4bbcfa4c7ca4aae2ab1ae276335dea47dd0362293`  
		Last Modified: Thu, 17 Sep 2026 21:40:10 GMT  
		Size: 917.7 KB (917732 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f895c6845d376176bfe326739ddb25826a1916f87f383b825cf3213573f8cff`  
		Last Modified: Thu, 17 Sep 2026 21:40:10 GMT  
		Size: 18.9 KB (18859 bytes)  
		MIME: application/vnd.in-toto+json
