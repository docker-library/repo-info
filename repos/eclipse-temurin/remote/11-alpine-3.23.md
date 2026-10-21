## `eclipse-temurin:11-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:d1d145531f563852444b27388d1ce480b5dec3d6ec9890088873ce7ee0bce79f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:3f6ee9ea6a1d615e405b4fa859d1f150d45d1b0af98d22693c169b754f6f6bd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.8 MB (161778887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792e53803f3cc9adaac37faadfc71f14de33c334415bdedab6829a326fd77b06`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:19:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:19:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:19:49 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 21:19:49 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Wed, 21 Oct 2026 21:19:59 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='1dc1d3259fa4ca7a2db43c539a60bfa7fc0ea595f445a71ef36d28120f3094aa';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 21 Oct 2026 21:20:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:20:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:20:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 21:20:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5d946981bc6e94ce1787d870009f70ab32a20f52061022b9af0888b0c53e34`  
		Last Modified: Wed, 21 Oct 2026 21:20:13 GMT  
		Size: 16.9 MB (16891375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37707783f12ccfbc5f495a75a7fe8606a5046851aeb59e89422c42d44cd8532c`  
		Last Modified: Wed, 21 Oct 2026 21:20:16 GMT  
		Size: 141.0 MB (141032692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:919758b86cdd98a20f7b93630dd13c07c8d66feba84410fcadef54e5cbe4a9ba`  
		Last Modified: Wed, 21 Oct 2026 21:20:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd36e3c5a12d91eb868d41e184774901e9e581788b03bcb5c5982137efe66d9`  
		Last Modified: Wed, 21 Oct 2026 21:20:13 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ec03efa16165fc8f878a58c5b5e4759ab52daa0d8bc72a1e183588507743395c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1008359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f5ebadf7cacb366e7e62cb1f4f3722652979dfe77e44d4062ea2b7b1a84cc2e`

```dockerfile
```

-	Layers:
	-	`sha256:bcd16ba297911082b7335ed7feb0cd0fdbefe3dd55ccaf1f6b194f15a83ba2ba`  
		Last Modified: Wed, 21 Oct 2026 21:20:13 GMT  
		Size: 988.4 KB (988430 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:853555a7c118259d20859e9a3a5573710739118cfed971c3b86d0d67126920ea`  
		Last Modified: Wed, 21 Oct 2026 21:20:13 GMT  
		Size: 19.9 KB (19929 bytes)  
		MIME: application/vnd.in-toto+json
