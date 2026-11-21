## `eclipse-temurin:17-jdk-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:558993dbfd9823a016125a1b872e44a6567eda9f67d2bb2ea56c2741ad21083d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-jdk-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:5b47141bf95df0d19d88f16413e392f5b21bbf9ffdaab5cda1ae52bb2914aaf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.2 MB (170241085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601a8edc5d0a505ec554ace95c5bd84fea2d2c15e268a6b4660bd66fb049d9bc`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:42:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:42:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:42:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:42:26 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:42:26 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:42:33 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='4ac50955ad93051e45280c4edabae97c7c9ca4e1d2842c4e430e5b7d9960a570';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 20 Nov 2026 17:42:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:42:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:42:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:42:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac3fb9c1c7f7c970ee09f5a8f8b55b82551ca7d4229025e7475a1ebeb4e2101`  
		Last Modified: Fri, 20 Nov 2026 17:42:50 GMT  
		Size: 21.2 MB (21185715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9432671fe986104e180122787fd588ff4a32ce9cf17c1e8fe87268d60a8709f`  
		Last Modified: Fri, 20 Nov 2026 17:42:52 GMT  
		Size: 145.3 MB (145258403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae9dfb4ef95a54407f3f0fc601cb956ad9580ff05646d80f54945d6e9856c84f`  
		Last Modified: Fri, 20 Nov 2026 17:42:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68250676cf49333dbb5828d899de8d9611c6c059a7634bf003e6723da83f203f`  
		Last Modified: Fri, 20 Nov 2026 17:42:49 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e2b271e6daf8bff4c3e6717ffe9ab7b0619e0fe922cf49e36565586bc79accf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1106080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14bfa9a8168ed6d19d2df3b5222ba9c26b780685dfd60a34248bedea667254e1`

```dockerfile
```

-	Layers:
	-	`sha256:ec485ecf590d231f0ec44376f3d39927327c4c9b3c00aafbf5dfec26c2df7a91`  
		Last Modified: Fri, 20 Nov 2026 17:42:49 GMT  
		Size: 1.1 MB (1086450 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0a323ce48497d7b98c5112b0b1c7913832627431facc9ecca62f881ab910bc2`  
		Last Modified: Fri, 20 Nov 2026 17:42:49 GMT  
		Size: 19.6 KB (19630 bytes)  
		MIME: application/vnd.in-toto+json
