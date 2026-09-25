## `eclipse-temurin:8-jre-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:ee5ed1688257bd7785acab379e5ca3ec73fad75d47cc309583785c3de945a585
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-jre-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:709b7f7dcfdffafaf98ede91a225887d8386fff0548245bd3f11da41933da512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62393311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4190500d8bf76eab0f6959f8ced8f9c5a8ce0d0edd65e1b6ce94f483d7faea06`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:34:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:39 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:34:39 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:34:42 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='0b8a29d654d4ea5cd2ee7bbcf3e89fe0f66596eb17870255e683a526757d2b8c';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:34:42 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6473f088a263fa698a5b6eb911a21849e9e0437a9e70ed0ba6032d71a7ce3a`  
		Last Modified: Fri, 25 Sep 2026 22:34:52 GMT  
		Size: 16.4 MB (16357568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd8e9ea8a30e3416774744f95bf764238faae8f60f37bec7a82f32acd2fe6812`  
		Last Modified: Fri, 25 Sep 2026 22:34:53 GMT  
		Size: 42.2 MB (42241080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0abd61161a6cf81383a09d652ba00e7a1116fb6db93a75e0d3ef807e53e4fbf9`  
		Last Modified: Fri, 25 Sep 2026 22:34:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c3245f2b2bb77501c66f7ba23e08cd7b005e2d3d81661e8296a366c885ce7db`  
		Last Modified: Fri, 25 Sep 2026 22:34:52 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:674eefb9bfe2861c327e7eff24ea7987d0f567c8772818139699b9948c2f8422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **930.9 KB (930939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cc72827bbcdcecb18bb7048d55713ab6daacfa5345282a177216469ebe98fe6`

```dockerfile
```

-	Layers:
	-	`sha256:915de45f5c28b8bdf0e4e9b41f8cc6521e83ef70c4bf22d39a39c704dbaf4dd6`  
		Last Modified: Fri, 25 Sep 2026 22:34:52 GMT  
		Size: 912.8 KB (912752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:feed494660fd2ac9018fc41abf384e6faf010151dede022d8034526f2981f6d2`  
		Last Modified: Fri, 25 Sep 2026 22:34:51 GMT  
		Size: 18.2 KB (18187 bytes)  
		MIME: application/vnd.in-toto+json
