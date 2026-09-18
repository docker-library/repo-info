## `eclipse-temurin:17-jre-alpine`

```console
$ docker pull eclipse-temurin@sha256:45d19def67191d1df7d233282051ac2f6908c6b2d7eaef75441d7e7c721c6d01
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-jre-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:1fdef62a67e57195c66e9ab48587c85c9b38a305dc04c9ce369c1d17c16a4f3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.0 MB (68010087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc27e47522de24b96b7b25057b0720d113229ded0e7039c71c2c4f6b0a007bb`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:40:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:40:09 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:40:09 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Thu, 17 Sep 2026 21:40:45 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='561ea743b8481ed75bf095bff8d156943360f3a6c0ba808215b946f73fc3b89a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_alpine-linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 17 Sep 2026 21:40:45 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:40:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:40:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41f79fa0cffa294f31971572d2080d75052ea5a5d2401177495d9a27b425198d`  
		Last Modified: Thu, 17 Sep 2026 21:40:33 GMT  
		Size: 17.0 MB (16972097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffd9b2eac7cb5cae64a0d17f3d905772506911b3bd112ba2e3f10e1ee96d023d`  
		Last Modified: Thu, 17 Sep 2026 21:40:55 GMT  
		Size: 47.2 MB (47185662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c26d47e96ba6e4fd4bdf019566eef0a53e7c66295733d85e9b73b94babc8aa50`  
		Last Modified: Thu, 17 Sep 2026 21:40:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:368b6cac25d8f7833f4241b31e7cacf7f1b77b7958b0be0af3a5e650b3fcc5d0`  
		Last Modified: Thu, 17 Sep 2026 21:40:54 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:00b62264fd27b58c12f080b1d9db8deb73a0ed90e2bda86af1d44c0b16cddc8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **906.5 KB (906515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84a17c1dc209ac1102dced89d408ece4477c9d2e1f7e4e810e6bc47cd905e74b`

```dockerfile
```

-	Layers:
	-	`sha256:c6243d6cd2fbdc116945906a36e67688e8b3f59062c6209357126e33ffc3c7e9`  
		Last Modified: Thu, 17 Sep 2026 21:40:54 GMT  
		Size: 887.6 KB (887629 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed8cf2982f2be6d7917d632c0c744ff89bf5811a5a3aadd1fff7a019200c5ef0`  
		Last Modified: Thu, 17 Sep 2026 21:40:54 GMT  
		Size: 18.9 KB (18886 bytes)  
		MIME: application/vnd.in-toto+json
