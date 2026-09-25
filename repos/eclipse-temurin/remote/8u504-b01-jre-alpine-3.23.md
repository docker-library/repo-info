## `eclipse-temurin:8u504-b01-jre-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:d1abaaa5c1abe96d1718aeaad3db44f53450b2a6bb4b532519e2f12d5dbf5e21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8u504-b01-jre-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:1bad72c9b9c357743a37d08580f4bdb7b7c7815aed91798753f07db80ef1ab77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62986687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb8fff1e714739b9c1c36bb0ac82bb4ba3076774202b89a5062e90b462caed4c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:35:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:06 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:06 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:35:06 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:35:09 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='0b8a29d654d4ea5cd2ee7bbcf3e89fe0f66596eb17870255e683a526757d2b8c';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:35:09 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11cdab1177f747f85479564f37d708b798fd46c3c399e7269dfe61abf261129`  
		Last Modified: Fri, 25 Sep 2026 22:35:19 GMT  
		Size: 16.9 MB (16894528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:092ca9061488635151ca97226ce9f73155481ce2268285d8f1f31d58d17cafab`  
		Last Modified: Fri, 25 Sep 2026 22:35:20 GMT  
		Size: 42.2 MB (42241060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d37532332eba1e53ea2e75be1ffd521383f4a341f0adce5837b438ed731b80`  
		Last Modified: Fri, 25 Sep 2026 22:35:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5995347d0bbc4fbe5bce9b67c93a6d994f4783ab87bfcdd56e051828ba67b72c`  
		Last Modified: Fri, 25 Sep 2026 22:35:19 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5ee7505b1d901c739ff206a3cf5fc4112920d047e2654aedd2f737153ef56416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **935.3 KB (935276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:295b54559a454aa18514af5d9f6b48594e273ea0c4ea1d92a7daa9f296343a32`

```dockerfile
```

-	Layers:
	-	`sha256:d3abf568814194e5262d7321608f89a478c61fa66903eb29e888f58656a85e51`  
		Last Modified: Fri, 25 Sep 2026 22:35:19 GMT  
		Size: 917.1 KB (917090 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46fc457223e5bddf38584aa2e1b4ed90a15ccf0edc4a77e9388a0badca1f170d`  
		Last Modified: Fri, 25 Sep 2026 22:35:19 GMT  
		Size: 18.2 KB (18186 bytes)  
		MIME: application/vnd.in-toto+json
