## `eclipse-temurin:17-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:141286ded871a3873a203775093911168eb060273509b152edc71fe215d82509
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:e079e6a10399870ff0339e81b4fcd95f53274cf4d2b19fa427a0df241bd10f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.6 MB (169620719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8906472bd1d0c8e2bc3be223135c7aa7c5fcfa1362f0628b87ea02380e515fe0`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:40:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:40:42 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:40:42 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Thu, 17 Sep 2026 21:40:48 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='c8bb5bc6984762dbce2ab7403d90832b6897c07f36f8706e4a315aa7a566d04d';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 17 Sep 2026 21:40:49 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:40:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:40:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:40:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcd93a6b160d5cfee12b9d78b7de1ee4897d5beb92c24efc7d4f72959e27b7ef`  
		Last Modified: Thu, 17 Sep 2026 21:41:03 GMT  
		Size: 21.0 MB (21021862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00fb67c1af303f8a005784240793c5b5d221c8aa85f3fdfc084856967acfe276`  
		Last Modified: Thu, 17 Sep 2026 21:41:06 GMT  
		Size: 145.0 MB (144970247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d76918f885e67fe985a8829034e5003faf36ddfd08418fe69f4b895c93348a9`  
		Last Modified: Thu, 17 Sep 2026 21:41:02 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:368b6cac25d8f7833f4241b31e7cacf7f1b77b7958b0be0af3a5e650b3fcc5d0`  
		Last Modified: Thu, 17 Sep 2026 21:40:54 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:bba53948c516c47e7a7b23f7a349d9745b112d2c470d9f0417aa16e3ae0aa669
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1106434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e2309d96b00569257e5a0da4b10856e9a616026eb487ae800ac38f12481abf`

```dockerfile
```

-	Layers:
	-	`sha256:a03d4070d98f011594499e54efcc1025947b4e8e78047690d15c09071c718f32`  
		Last Modified: Thu, 17 Sep 2026 21:41:02 GMT  
		Size: 1.1 MB (1086823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3b330b2a5f095c7ee440e2464ac504f970ea28cf97c85a2565652e5be46030d`  
		Last Modified: Thu, 17 Sep 2026 21:41:02 GMT  
		Size: 19.6 KB (19611 bytes)  
		MIME: application/vnd.in-toto+json
