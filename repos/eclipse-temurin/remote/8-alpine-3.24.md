## `eclipse-temurin:8-alpine-3.24`

```console
$ docker pull eclipse-temurin@sha256:304e5b1c8256d38118399d3487a6dee20539031609c031077ae73557a06fa25f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-alpine-3.24` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:3bcd1c7079902ceeac0b69b67bbe822440226e4209063e9b4f7e834e3aa5a2c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73878395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed0def2112c652a326b1a00625aca9f4d34858927bf532cfb91d3b3353e3862e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:17:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:17:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:17:17 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:17:17 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Thu, 05 Nov 2026 19:17:21 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='f76b7c98a593f15bbfc9042866141185d63aa87e0afde3b7e48d2c4789a2def5';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Thu, 05 Nov 2026 19:17:22 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:17:22 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:17:22 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8035704c80859394a8364eca39af883307430f251fc57f483351f344ca52a56a`  
		Last Modified: Thu, 05 Nov 2026 19:17:33 GMT  
		Size: 17.0 MB (16969889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0d36374ee491a8742a3dfd99c3e0e3b1f129294ef9dc77a09c689332b9adab9`  
		Last Modified: Thu, 05 Nov 2026 19:17:34 GMT  
		Size: 53.1 MB (53052221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d97008882b8bc67522851a54fd6dbbf29c429a3d67ee1f9012896fb097621cb3`  
		Last Modified: Thu, 05 Nov 2026 19:17:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431660bfdae6024b3a7e0be5cdefa0a8b94bb862decc1a431b00cad3339f88f2`  
		Last Modified: Thu, 05 Nov 2026 19:17:32 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4acc3807b32906baed388ff96f9b614b9f3da1162194c953aa6e35e7166cd50c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1110519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54bc331bbe41285568a4f1322e0d91bbb0977763bdad3ce66799dc2f09dd65aa`

```dockerfile
```

-	Layers:
	-	`sha256:072f5de45986680515d23cc36069721115ac5a57aadd0956ab4a70d8e97dff5f`  
		Last Modified: Thu, 05 Nov 2026 19:17:32 GMT  
		Size: 1.1 MB (1090081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71a1354a471dddaa6dd14f88ebc652e9352331b2677fdf3466b006c65800fe65`  
		Last Modified: Thu, 05 Nov 2026 19:17:32 GMT  
		Size: 20.4 KB (20438 bytes)  
		MIME: application/vnd.in-toto+json
