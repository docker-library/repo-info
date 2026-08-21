## `eclipse-temurin:11-jdk-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:46b7f7979d35b28ddbf0339d3c3105aaf5ede9fb88394ad17db5b2037ea8732f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-jdk-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:721a42d22bc01c14a41530fef7964db7e4a0efb045eb350448b4cacfd60380fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161170988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61614f82c7af0301167aa42d8cb44d46a62ea88c9751d072cd0821bdbe324651`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:22:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:22:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:22:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:22:43 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:22:43 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 18:22:49 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='be9831861b7a4b5fc8ec0d9540d462230f6b9bd6c7ee29585ec1ce52d1435d6c';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:22:50 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:22:50 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:22:50 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:22:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:607e3aaa6c71bcce367ff009d92909aa05818ce6a4eb377f326587c16921b699`  
		Last Modified: Fri, 21 Aug 2026 18:23:05 GMT  
		Size: 16.3 MB (16346724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb55473d1114caddc94880be8ccd556fd2e824a491c692cd05a1aa788bd97fc6`  
		Last Modified: Fri, 21 Aug 2026 18:23:08 GMT  
		Size: 141.0 MB (141034079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826e936cd8dea1cbcc5d81df4330c8065f654d4a02306800bd98a1af84abe252`  
		Last Modified: Fri, 21 Aug 2026 18:23:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a48cc9efaa341e92defb50dfd0785f3164afb0945ed43d2781be15906b81671c`  
		Last Modified: Fri, 21 Aug 2026 18:23:04 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ab3841a40941f2179be7beb3ba06295750d74d345a7014535b7f76f6c5a3de62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1003894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:457db156e8f9493b4e75bc75497f801c6e1c2fc71f9d23e9b1c6c0bb00932cf9`

```dockerfile
```

-	Layers:
	-	`sha256:b946e7f99cd8ad803ff43dbb253929ff42016f0f97b23d177f875e00b0c7c405`  
		Last Modified: Fri, 21 Aug 2026 18:23:05 GMT  
		Size: 984.7 KB (984724 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee28e897859d93c187c6e3f665b6361f85b77c7dcbad44164d4a2215f98068d4`  
		Last Modified: Fri, 21 Aug 2026 18:23:04 GMT  
		Size: 19.2 KB (19170 bytes)  
		MIME: application/vnd.in-toto+json
