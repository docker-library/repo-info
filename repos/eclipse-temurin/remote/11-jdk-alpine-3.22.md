## `eclipse-temurin:11-jdk-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:9557d21c9ddeb6516e361b94d5dbea8b5399156362625d4df3ca78b3f6101dd4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-jdk-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:5160f79e8d4133a8048c0e7b24328841f7162dda38ae6c6ced0ca71e2d33799f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161185962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3321589fd69a05f55c69f9ff372e43173acaa00fc11079018bb5632c9ae3c852`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:17:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:17:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:17:51 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:17:51 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Thu, 05 Nov 2026 19:17:57 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='1dc1d3259fa4ca7a2db43c539a60bfa7fc0ea595f445a71ef36d28120f3094aa';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 05 Nov 2026 19:17:58 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:17:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:17:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:17:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a1b5ec661a9defffdd6f0cdc4163e3d4e4b90bc3486835cb020b434f854f34`  
		Last Modified: Thu, 05 Nov 2026 19:18:12 GMT  
		Size: 16.4 MB (16356412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6429db0099abe96e833e9111e30a9fd6e8903b70fc7d41df4a985994fa9a219c`  
		Last Modified: Thu, 05 Nov 2026 19:18:15 GMT  
		Size: 141.0 MB (141032585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b9b2b7e6e4902dcf5e5e93c6417897d3e96b6b7bacfeb4832646ab357b18f3`  
		Last Modified: Thu, 05 Nov 2026 19:18:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d16099ad9cd2ab4c1ee64e61ded7b8d993c071612ca0599d70f43d54f5b9bf8`  
		Last Modified: Thu, 05 Nov 2026 19:18:11 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:aa4c979ab1750dfc3b62ee91198af8c853c7c4149b338c3ab42cc0a9c100c02f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1004024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:429204dc4e8125c4bb803ec5e460f4531e03df783bfd752b4324f4eb4b40a296`

```dockerfile
```

-	Layers:
	-	`sha256:5ac987900fa7bbc92a567493f854651de77dbdf1f516bf6855e3edb60a2ee84c`  
		Last Modified: Thu, 05 Nov 2026 19:18:11 GMT  
		Size: 984.1 KB (984096 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e0d52b61968f51353f45bd80eb98a53e3bb682cff79ead95d6f6d96f094ca2b`  
		Last Modified: Thu, 05 Nov 2026 19:18:11 GMT  
		Size: 19.9 KB (19928 bytes)  
		MIME: application/vnd.in-toto+json
