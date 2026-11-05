## `eclipse-temurin:11-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:fc96620bbb4504fb0573f0fcde83394a9682054aec6d50f04d31e0cb5957969d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:972fc9bf0914dedcbb506663f965d487ed7313dae9161f117109fdeb7b095d1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.8 MB (161778848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767a256eaa469379223dd4a6303dad85f9e252c0028563740a31c84d2d9367ce`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:17:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:17:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:17:48 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:17:48 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Thu, 05 Nov 2026 19:17:54 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='1dc1d3259fa4ca7a2db43c539a60bfa7fc0ea595f445a71ef36d28120f3094aa';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 05 Nov 2026 19:17:55 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:17:55 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:17:55 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:17:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c90c071a2bb2203612f475537b24151e34fa518f0b29acc74a0038b5b2ced3`  
		Last Modified: Thu, 05 Nov 2026 19:18:09 GMT  
		Size: 16.9 MB (16890985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8757f7a540cbd129410bb2552be3b190ff671bd8760fd1bf37d2ae3540ccde3a`  
		Last Modified: Thu, 05 Nov 2026 19:18:12 GMT  
		Size: 141.0 MB (141032683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfecfb81b8fc53a2eb261df2fe128fe01405f7f575fc7eef428fb9bfd07ab2f`  
		Last Modified: Thu, 05 Nov 2026 19:18:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a91e83244372cb0e6a45169c74d4d3509713d72dbb7c7998275d8b7282a358`  
		Last Modified: Thu, 05 Nov 2026 19:18:09 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:513851e5d581991973ffa361e4e4ce5a5fc47b02dcfc18a610a2fa6546d3bf27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1008363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:178d827646d6c3adfbe75cf3fc5ff44e58d564c468184c125ecc0a7142067a9c`

```dockerfile
```

-	Layers:
	-	`sha256:95b0a380eb39eb901981499dc6cbba0589a853aa37cf0b2f0ba60aaec00a79b5`  
		Last Modified: Thu, 05 Nov 2026 19:18:09 GMT  
		Size: 988.4 KB (988434 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf517420f3263b388f24eaf8a2555152ad335bc1b49e39823bcb58470f4a756c`  
		Last Modified: Thu, 05 Nov 2026 19:18:08 GMT  
		Size: 19.9 KB (19929 bytes)  
		MIME: application/vnd.in-toto+json
