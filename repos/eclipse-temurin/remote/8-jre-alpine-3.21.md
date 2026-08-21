## `eclipse-temurin:8-jre-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:741b303ba69e63693e3d4f5ca18b5221ae458b9cc5d1feb318356adb01be691e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-jre-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:fd0698e735af651b93ff02dc69be649024eaf9fd4bcae1f207ad6eac23bb880e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62187926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:130aff84c25257611ead1722a03e11ac1cb0db5de5614dfeee9855d5fd0387fc`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:22:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:22:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:22:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:22:28 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:22:28 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Fri, 21 Aug 2026 18:22:30 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='39d17b519d925e2a979056d800e712b4d5f8b68112413ab1d06f525c1571c164';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 21 Aug 2026 18:22:31 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:22:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:22:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82561fbce6edbbdd327f5cb1b02b09764da775a0daed5c01e84962895e7bead4`  
		Last Modified: Fri, 21 Aug 2026 18:22:42 GMT  
		Size: 16.3 MB (16273825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e468fa9fd0e5ceeea36c7022c318d4fd29ab14c4bf2ef60bbb5d58af52c0965`  
		Last Modified: Fri, 21 Aug 2026 18:22:42 GMT  
		Size: 42.3 MB (42264637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835e6e12a0a823656f7e15a33e6820dcf48a1868bd709e240d9b04bbb7989b18`  
		Last Modified: Fri, 21 Aug 2026 18:22:41 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:097a6fcc92642a1c50bc7fea5f144c1051fbd38842e2a7cf0caee72b87b0c579`  
		Last Modified: Fri, 21 Aug 2026 18:22:41 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:64f97bc455de7dd0a2e9a6dcdfdab83670842aa15fd311aeaab5de23d5730ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **945.0 KB (944986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db3471365fa785ab8df80cf26b623c02a228100aa7f2cd6401f8317040b4106a`

```dockerfile
```

-	Layers:
	-	`sha256:8b09be56f988b007ee468ba1a1523636335ebfb3004d923e00d86de0fb0b3fdf`  
		Last Modified: Fri, 21 Aug 2026 18:22:41 GMT  
		Size: 926.8 KB (926799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ec676e7d2d7e671a145ed4ec948d224fa1b9e53b87cbedd193819d403179bcf`  
		Last Modified: Fri, 21 Aug 2026 18:22:41 GMT  
		Size: 18.2 KB (18187 bytes)  
		MIME: application/vnd.in-toto+json
