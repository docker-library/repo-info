## `eclipse-temurin:17-jre-alpine`

```console
$ docker pull eclipse-temurin@sha256:2b4113ae80e31f103b284dd3bc3e008add670cf8555417b5b289fa1128f2f0a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-jre-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:0e5c2d4d99462c0f26e29af1c22e20ff766934fceac545ffe65d1a73dd0d723c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70597103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd08509806f5e3256f8e411176c1935d10c75dd551e1d5f4e2944a5d40fe590`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:42:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:42:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:42:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:42:37 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:42:37 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:42:41 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='99fabb8e2517861fbbf1fc26103ee62240ec693340c4c7a812f7043e82acb203';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_x64_alpine-linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 20 Nov 2026 17:42:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:42:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:42:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eb318847749c55417559b6d572e2e769887191fb2e198b1e105105f8f3cd901`  
		Last Modified: Fri, 20 Nov 2026 17:42:51 GMT  
		Size: 19.5 MB (19454218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b88795063da9d2aec70f0f4077ec74f48a6b07e944599fcb12b9deb7ef409a49`  
		Last Modified: Fri, 20 Nov 2026 17:42:52 GMT  
		Size: 47.3 MB (47286626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301dd8d42df252c8fa93189e366f9ec8e2008d3d298ad14e671607bfe4013ec0`  
		Last Modified: Fri, 20 Nov 2026 17:42:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:202ae9033ef399ce1d490e2f03cffbc8beb648da964ea30dddf633f83a2bed43`  
		Last Modified: Fri, 20 Nov 2026 17:42:50 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:fcdf7661e1034a101afe4eec000e7018c13aa4520477d15e5d4be116ce91fabe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **904.6 KB (904626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2413c01e230fbf416fe5d4703df6a05c8b041dde7facf8f575b5bcc237de255c`

```dockerfile
```

-	Layers:
	-	`sha256:8f65ac8e3d2a47fd7fb5d3d057e6004de7e56d6242f3b5ddc47eb21e27d33fd1`  
		Last Modified: Fri, 20 Nov 2026 17:42:50 GMT  
		Size: 885.7 KB (885714 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3048597aff768f301e0ba5e722405b6adcf2fea7a228a27ebf5412a60c4112b`  
		Last Modified: Fri, 20 Nov 2026 17:42:50 GMT  
		Size: 18.9 KB (18912 bytes)  
		MIME: application/vnd.in-toto+json
