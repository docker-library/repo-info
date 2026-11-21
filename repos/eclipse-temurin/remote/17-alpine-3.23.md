## `eclipse-temurin:17-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:c4b19652a225d9b16b2a5d1a24a1781ee2b72aafcaa329b203e633700f3e04a1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:275e8af988e0a07fcd88e81b7b58da910a983d8be31f1b1fbc6fb013930fb97e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170489489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3754719859ac0ae007281643206e5bb81effc8994a838c339bdaf7122d73d8f7`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:42:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:42:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:42:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:42:19 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:42:19 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:42:25 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='4ac50955ad93051e45280c4edabae97c7c9ca4e1d2842c4e430e5b7d9960a570';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 20 Nov 2026 17:42:26 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:42:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:42:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:42:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d5690195bd4c69a82c3ea6dbe98a18650cf257545c611b21af469a68f2c3a7`  
		Last Modified: Fri, 20 Nov 2026 17:42:41 GMT  
		Size: 21.4 MB (21375999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94f3a79aebaae1371d75e50032426ed0b944ee07afbb55b6201e7ea22b7ab888`  
		Last Modified: Fri, 20 Nov 2026 17:42:44 GMT  
		Size: 145.3 MB (145258312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18449223a5e6b298e67e205150f3debe4594f2ada10b9c8a46c6aac688e51d0b`  
		Last Modified: Fri, 20 Nov 2026 17:42:40 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55454ccc7c8673a107c9f5e31f2bd9d9954a8eae897d939bc59d9a77d35211c2`  
		Last Modified: Fri, 20 Nov 2026 17:42:40 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f2d32d30f4721331fee5b932112c42d0fbe2d1850c959e31982fcf2b3a540046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1107374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1428746e05262805ba0d4964d2865999bd487ba288de654238a1be37e562744e`

```dockerfile
```

-	Layers:
	-	`sha256:27e898f0a55a2bab3d759fc96c10609cd0b1e000d9680e8433682da2d573ff46`  
		Last Modified: Fri, 20 Nov 2026 17:42:40 GMT  
		Size: 1.1 MB (1087743 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2eeed2e4b73b8b2c5c9fd3558fa7dd047ffcc2eaa230c37b7450fa33c6b16cf`  
		Last Modified: Fri, 20 Nov 2026 17:42:40 GMT  
		Size: 19.6 KB (19631 bytes)  
		MIME: application/vnd.in-toto+json
