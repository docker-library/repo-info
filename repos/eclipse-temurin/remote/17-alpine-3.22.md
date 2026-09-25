## `eclipse-temurin:17-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:43852eeec291d260df014e40bc04e5a15c034e9737eeb6393bdf0fac7330f1b2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:36b957f4fe0ca5a7f533b98a849e824a7f050221551d5257f8da9ae1f0ab8559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (169951336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:130a58c3b2571744e2f3a5dcae6b0c3c0c8e80dd279e76a4b8e2de86837eb96f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:36:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:24 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:36:24 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:36:30 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='0c4fcdefa2737ccd66e049245fdb9dc431f91796182141204cd5f8192cb288e6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:36:31 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:36:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3687093c11b2bc25d251f616a187a478161a15922f6e1242607c78a0e4f429`  
		Last Modified: Fri, 25 Sep 2026 22:36:46 GMT  
		Size: 21.2 MB (21183716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb1970ae1b323afc436b51d8ada723a168e2013b46b4e18a3334d456b4f1763`  
		Last Modified: Fri, 25 Sep 2026 22:36:48 GMT  
		Size: 145.0 MB (144972955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b057d335acfb05a3cea76fb475ce4a60c34984812210e6d60745f232580127`  
		Last Modified: Fri, 25 Sep 2026 22:36:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:838973578fdfed586d7ab3f8a36656c4d05ad1f95680d9d9a3048c1b9265b9bc`  
		Last Modified: Fri, 25 Sep 2026 22:36:45 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:cbe4419f229ad9b381279a988c11c6fed4c632d081ddd3a88c625daede86eb7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1108013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e7b7a3fa31feb237ab710642e49421b7e1633d06ffb8c2a80a6b7d93b12e101`

```dockerfile
```

-	Layers:
	-	`sha256:237de749f7da550e4f9f03e9809a2614facbee4bd5ec62ca2c4f07bb7e60a806`  
		Last Modified: Fri, 25 Sep 2026 22:36:45 GMT  
		Size: 1.1 MB (1088383 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:801d1694e8b8a6832c94f2a6b0815645ac946834858616792b4afa825dccecfe`  
		Last Modified: Fri, 25 Sep 2026 22:36:45 GMT  
		Size: 19.6 KB (19630 bytes)  
		MIME: application/vnd.in-toto+json
