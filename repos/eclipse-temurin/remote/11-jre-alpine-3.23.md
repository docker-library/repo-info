## `eclipse-temurin:11-jre-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:02bfe87e1bbeb3d2d941e3ec132e35365401aa06e88342c9bc8954ad6d4bbb71
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-jre-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:aeeb54c1efa97405d36747a9db9b962c89d1bda324effccc11316397036a025b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64424980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e13a1dbb2fb5be73e8f1df50c83f944346964154e74f63552fc10fab69117d46`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:36:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:02 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:36:02 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:36:04 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='bb9951aab1dcd0f6c2b22d76a46773100a6639ad199f339ff288d360b3217ae2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:36:04 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b019e464b73c74b19ed8df7a049c8be3fc0ee74269b0e4df29ce26ce49e6db0`  
		Last Modified: Fri, 25 Sep 2026 22:36:14 GMT  
		Size: 16.9 MB (16894343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da05fc1736ecf9cc12726d11ac1304a9d253f6facd685cb273a15ba3410b41c9`  
		Last Modified: Fri, 25 Sep 2026 22:36:15 GMT  
		Size: 43.7 MB (43679540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45cee13dddae8e4c97b6386ad0f710ba6c39cabe95cf6f0e6cfdc0df15a45e9b`  
		Last Modified: Fri, 25 Sep 2026 22:36:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e8f1b49cfca162940d5a0a98e12dc6726126bcc317163b49a602ba2b6958d6`  
		Last Modified: Fri, 25 Sep 2026 22:36:13 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3e348eb32283c4022a30849dea847beb342cdb2a15c575a94e036be8b9b2df82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **917.1 KB (917095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efc974ef6b89519b3d81bdd2380a9664b5b4ef0b8c1618162a82dabd446f1e3c`

```dockerfile
```

-	Layers:
	-	`sha256:5663e30edf1029302589822cd8cf30084b11bc0b44030647bf15e92ff236dcd9`  
		Last Modified: Fri, 25 Sep 2026 22:36:14 GMT  
		Size: 898.9 KB (898861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e08ea7310eb4a3a033879f51b8da17738f5cc78a87c1be53815a3e7a4d45ef4`  
		Last Modified: Fri, 25 Sep 2026 22:36:14 GMT  
		Size: 18.2 KB (18234 bytes)  
		MIME: application/vnd.in-toto+json
