## `eclipse-temurin:8-jre-alpine-3.24`

```console
$ docker pull eclipse-temurin@sha256:8d9e089742fa5f8f31e0dcce21b9b108083b154a53dce8f61845fe006b21c0bb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-jre-alpine-3.24` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:8e051349deb71bd6fc2c81e197eda795c320b6a10ae28f6327cf3f81d91e548d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.5 MB (65536156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527c8a85bd56930e610108009c56df16724029a11b31def5a952e82fae202edb`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 23:42:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:42:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:42:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:42:42 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 02 Oct 2026 23:42:42 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 02 Oct 2026 23:42:45 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='0b8a29d654d4ea5cd2ee7bbcf3e89fe0f66596eb17870255e683a526757d2b8c';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 02 Oct 2026 23:42:45 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:42:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:42:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93352f6be94118fdc2ca39b339314798844c243a96feece828e69120b97a2dda`  
		Last Modified: Fri, 02 Oct 2026 23:42:56 GMT  
		Size: 19.4 MB (19442747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3e96239f055f744ecbaa56e3e64185216cb627d5f35c04f720e93192ed336d6`  
		Last Modified: Fri, 02 Oct 2026 23:42:56 GMT  
		Size: 42.2 MB (42241082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2654d667386a158ae57e468435fbfe67311e7e05b6a7d7330506cc4967e029`  
		Last Modified: Fri, 02 Oct 2026 23:42:55 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc1aa19a873dc140d33a1eca5ebc68db5730e91da026ed21a85127b332537815`  
		Last Modified: Fri, 02 Oct 2026 23:42:55 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:d0886e8204616d180f39f73e42b43cfcd90c4abaeb517bc40f2d5c72da5bba7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **937.3 KB (937326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be3675eeebdbdd02fc8138d0753030756670476c8d10dabd48dc003539d1d0ab`

```dockerfile
```

-	Layers:
	-	`sha256:84929464da04ee80c35416a656effc68096e081259ac36abc50b22e828661205`  
		Last Modified: Fri, 02 Oct 2026 23:42:55 GMT  
		Size: 917.7 KB (917732 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9f6ec98ab97b668d789e9257a05b1d65bc95cf4394f9c31f351b56e6776619d`  
		Last Modified: Fri, 02 Oct 2026 23:42:55 GMT  
		Size: 19.6 KB (19594 bytes)  
		MIME: application/vnd.in-toto+json
