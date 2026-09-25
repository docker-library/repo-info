## `eclipse-temurin:8u504-b01-jdk-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:f2e29051c461d15a308b9d29d3206ee7593455370898d005dbebec1fca935124
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8u504-b01-jdk-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:23cbbdb655976ffbedc4522ce0b9990a7db36099ff6ed036e25db6f8f8af928d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73204245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a723589d72b8db9fbabbfe60fa2248f1f9b489667f5f490569f70bfa59c0a641`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:34:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:42 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:34:42 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:34:46 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='f76b7c98a593f15bbfc9042866141185d63aa87e0afde3b7e48d2c4789a2def5';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 25 Sep 2026 22:34:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ead8e1621893244955309b7638c2b43a2c26831086b98bf21d8c55a971b7fb7b`  
		Last Modified: Fri, 25 Sep 2026 22:34:57 GMT  
		Size: 16.4 MB (16357330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0899e2e04a6a4ebc214dfd758bcbb755d171f442f30dfedba6472f0b3e727d6`  
		Last Modified: Fri, 25 Sep 2026 22:34:58 GMT  
		Size: 53.1 MB (53052229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b01fc1e2be01826a74075bf77342aee27f5deb881007c7d54358fd2cdb21d6a`  
		Last Modified: Fri, 25 Sep 2026 22:34:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d79ae852775b8fa719220eb06b04b6bc393c7346451eb8cdb28eceba38e4c83`  
		Last Modified: Fri, 25 Sep 2026 22:34:57 GMT  
		Size: 2.5 KB (2482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2315466cd85115a88568622949fd954c7de55f570b671278535f26621a0e1c1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1105424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad1a1211ce52f57b5136faaecd5ed454c4ac2c8275c430b19e5a7ca5ad2466f`

```dockerfile
```

-	Layers:
	-	`sha256:0e3342db9978b60658715ee729cb6667cb5f517621d8f45f3b876e472ab80da9`  
		Last Modified: Fri, 25 Sep 2026 22:34:57 GMT  
		Size: 1.1 MB (1086714 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acc2941a3aab179ade33947118ce8ee5cb608bd61ec67ef9c2b8c62d0cf83070`  
		Last Modified: Fri, 25 Sep 2026 22:34:57 GMT  
		Size: 18.7 KB (18710 bytes)  
		MIME: application/vnd.in-toto+json
