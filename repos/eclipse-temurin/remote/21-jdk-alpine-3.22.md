## `eclipse-temurin:21-jdk-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:6e4ab370222b896aed40d12326455e93ce674875cd575d588fc8458c6c4c2008
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-jdk-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:03a83e73e07972067d303226727a5a2690f44f4110726c39375d154b7df70d5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.6 MB (183628415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78332b1149a7dbc1e230aba47498311dba36aaaf636e48f8eee299bd5468593`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:43:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:43:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:43:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:43:18 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:43:18 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:43:25 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8e3ef290b2c182fed0f4318dfb928cde1f5b95bf5c28ff4bb236d38b0b177a74';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        x86_64)          ESUM='87af8e1557222db2a29c9d055c34a317916b4ddbdb91474d04b35229d337193e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 20 Nov 2026 17:43:26 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:43:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96547ceeb1e46cb8ba0f06c75a5d90c76cdd36bfc6b5d787a9380501913d5a2a`  
		Last Modified: Fri, 20 Nov 2026 17:43:41 GMT  
		Size: 21.2 MB (21185811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53522d20e9ca5affbc828e014e91f560f1913c70aa8b164da0bcffd4b70db7f5`  
		Last Modified: Fri, 20 Nov 2026 17:43:44 GMT  
		Size: 158.6 MB (158645638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9436463fdda0d55453b4771704f63bdc43fa97c893343c3f9295e9912b2225c2`  
		Last Modified: Fri, 20 Nov 2026 17:43:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8e1d6c391894d7d1b87a56c5db110c9118b6adc51ad5b3486aa178d9f8f6d7`  
		Last Modified: Fri, 20 Nov 2026 17:43:40 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:884e3f00f7f0f434598afe9a84ff45fce359a972983aac28ab44cb480dad253e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1108752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3be53064c7debe770ff4a4fe31f228bf6c4d9747cc4f35ee20b4a8a21e95eedb`

```dockerfile
```

-	Layers:
	-	`sha256:86eb61543c8db9d9c7b8584aff223b0dca4a4beb7f4b84fd808224940a4dd228`  
		Last Modified: Fri, 20 Nov 2026 17:43:40 GMT  
		Size: 1.1 MB (1088302 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:719e5cbcb6ea9ac2e9937dca5b12b4ce403b36c60658234f527630a1616bf0c5`  
		Last Modified: Fri, 20 Nov 2026 17:43:40 GMT  
		Size: 20.4 KB (20450 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jdk-alpine-3.22` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:dd0c3998d4a57f763200d6f761e2107221aac238dbf539c88f12bb0d8de1eb64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.0 MB (182032003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dab1bfb09a0f00d73636d13e566fad8bb805a4fd9956c2d86ecd7ff43b5f3aa2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:43:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:43:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:43:06 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:43:06 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:43:06 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:43:13 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8e3ef290b2c182fed0f4318dfb928cde1f5b95bf5c28ff4bb236d38b0b177a74';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        x86_64)          ESUM='87af8e1557222db2a29c9d055c34a317916b4ddbdb91474d04b35229d337193e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 20 Nov 2026 17:43:15 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:43:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:958cb8dbd64e4698d8591a0565b7d947b01be8eeb2e122631e38d5837d9a3f9d`  
		Last Modified: Fri, 20 Nov 2026 17:43:31 GMT  
		Size: 21.2 MB (21231803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7f201afa61ee91a7d42da51f05536dcb888b5dc52e00ff6e9de01686c126d6c`  
		Last Modified: Fri, 20 Nov 2026 17:43:34 GMT  
		Size: 156.7 MB (156670224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23c51bb3d9917eadba1a66c42a445df06fcb722c08e6a3a227d46a47bd718aea`  
		Last Modified: Fri, 20 Nov 2026 17:43:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db691fde7d50d787bc1bdbff404dc5a20c5c6e45bd24b0b11113aae752b9c02`  
		Last Modified: Fri, 20 Nov 2026 17:43:31 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3384d2090a32d16f5c2b5f2fca900b7e25a4ad5a691c13267e82b5b2b082c3ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1258876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e1a4bd415a217a7a77e87fab28963cd52bbbef6aebd94238af9d7a253c3ae1`

```dockerfile
```

-	Layers:
	-	`sha256:f25ee211b9e2daef1badf0f3a484bcdb120680d26ffae3f1153bb4a6882b6447`  
		Last Modified: Fri, 20 Nov 2026 17:43:31 GMT  
		Size: 1.2 MB (1238304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa285a04538959ac1b64d379ceb4e51b41864e9b9ed60850ddda8e2c251428f7`  
		Last Modified: Fri, 20 Nov 2026 17:43:30 GMT  
		Size: 20.6 KB (20572 bytes)  
		MIME: application/vnd.in-toto+json
