## `eclipse-temurin:8-alpine`

```console
$ docker pull eclipse-temurin@sha256:f7e012bb01e38b4e7bb7ecc4da7d35bbdcbdc1874f659fad84b160907714628c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:49b1198fba94126cf2e38fcb8957520e740d2d5fc25c052d269a6b3f8eba22c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73876736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d0f733f0ebbeb48e02466eae2d7cca621e98e7589835e257753525f7505676`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:33:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:33:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:33:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:33:51 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:33:51 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:33:55 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='f76b7c98a593f15bbfc9042866141185d63aa87e0afde3b7e48d2c4789a2def5';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 25 Sep 2026 22:33:55 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:33:55 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:33:55 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be10a3c95a01d653a3de981633046d67ce3df8d2b77693a0c0886895fa06021`  
		Last Modified: Fri, 25 Sep 2026 22:34:06 GMT  
		Size: 17.0 MB (16972134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c48b0d7b2ccb1b7b2c73bc9253207135286a48af9623c86163951ea4f66e3059`  
		Last Modified: Fri, 25 Sep 2026 22:34:07 GMT  
		Size: 53.1 MB (53052254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ead448b829c47928e071856ca6eb419f5ea30d4c208830ab33ffff655c3824`  
		Last Modified: Fri, 25 Sep 2026 22:34:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9076589e157d0d4ad4589559a7dd82cab1cf4f8e0391463eee6ae0358ac409a`  
		Last Modified: Fri, 25 Sep 2026 22:34:06 GMT  
		Size: 2.5 KB (2482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e2672b844d901d980f3853b771d80b79396fca63f9da21a17c169316a2275d9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1111717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ccb654e50858a72bfbb2d0e81240004340053df6dd37faef37e2c1e6097a32f`

```dockerfile
```

-	Layers:
	-	`sha256:7b34c3b0ff516867476615b312ec160c849167887728c059d8985fa4320ab7bf`  
		Last Modified: Fri, 25 Sep 2026 22:34:06 GMT  
		Size: 1.1 MB (1092014 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dbea88d5fe302006ee6af66c4ae197542911570486923bd7291d0dc1db9874f`  
		Last Modified: Fri, 25 Sep 2026 22:34:06 GMT  
		Size: 19.7 KB (19703 bytes)  
		MIME: application/vnd.in-toto+json
