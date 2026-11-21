## `eclipse-temurin:21-jre-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:ede6cb5d82663c549e1656c160d25c63c3607085ea5a78005af81a72e6f62d0e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-jre-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:12a7260ba1ae53dbf7f342e103b423beca8a15d2527dd50258ef66ea80ba0fc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.1 MB (74141366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25d81b8514c3d4229fc1a6cb622225b962d122a4a4c06eb25471b3b1cbba0836`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:43:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:43:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:43:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:43:41 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:43:41 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:43:44 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='0236751150c82f1ef91be8cc32a36091a95e97650285fea848f2bb82311e5da7';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        x86_64)          ESUM='72835f41a468ae949fc058f8ec6a73d303ca3e5ea165621e08aacb36bb537bba';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 20 Nov 2026 17:43:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d90d9289a0e95e6db9259bcca9fd70a3fbcba01c97077c9a5291d1e34ed6d2`  
		Last Modified: Fri, 20 Nov 2026 17:43:55 GMT  
		Size: 16.9 MB (16900178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c924f2decfc12e05e74bf81b194f86371b5bd5b0533850e692a4e66a2cb4e32f`  
		Last Modified: Fri, 20 Nov 2026 17:43:56 GMT  
		Size: 53.4 MB (53386012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8649f6ee63258eb318836a9e2f9ce6e9db7e763cd2c647da3edd3782aecc748f`  
		Last Modified: Fri, 20 Nov 2026 17:43:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc6b28bd48d94871dfefb789fa559eae8ab656f19187cf1702aa877437bb96cd`  
		Last Modified: Fri, 20 Nov 2026 17:43:55 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ce874cf9c9fd5f6687420f6034bf522753022943942bf94ecbd13881bc23bdb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **905.4 KB (905369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b78c902846d413f5b1bf6c166617a481ebce9cc414d9b17ebb45fe55ae65ec4`

```dockerfile
```

-	Layers:
	-	`sha256:3ad9da52142b455a24b70558fb5cec46e1338ceaedbd413a02b02b268826f208`  
		Last Modified: Fri, 20 Nov 2026 17:43:54 GMT  
		Size: 886.3 KB (886312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:601fcb2102f2384e5c470624949a381afa6371216675c42ccd814084eed6fdc7`  
		Last Modified: Fri, 20 Nov 2026 17:43:54 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-alpine-3.23` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:89d42d6c0e5ff72ee017b2d7acccd117982deab2e1a8e66ae3be7e72033e8a7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73497054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8386b1355948f65c1f0970f3412692b5180890cb0db18a368c687785f598cad1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:43:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:43:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:43:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:43:20 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:43:20 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:43:23 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='0236751150c82f1ef91be8cc32a36091a95e97650285fea848f2bb82311e5da7';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        x86_64)          ESUM='72835f41a468ae949fc058f8ec6a73d303ca3e5ea165621e08aacb36bb537bba';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 20 Nov 2026 17:43:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da549761cbbea42966373e7c09040b3e118a8d36bb41e79ad8b1507c99e870c7`  
		Last Modified: Fri, 20 Nov 2026 17:43:35 GMT  
		Size: 16.8 MB (16844572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:619018dc5c44c26cbf6d24a19ce7b5f74a288ec2faba53309d80492cead3dcb7`  
		Last Modified: Fri, 20 Nov 2026 17:43:36 GMT  
		Size: 52.5 MB (52459671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fce981ec554a256d48217eb1992a99abe0608cbc153a09d24e4e149e87d9bc3`  
		Last Modified: Fri, 20 Nov 2026 17:43:35 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0819893b08ef7218e11737004da6361f1d312ae427a3d2a14aa06e9f6941b0b3`  
		Last Modified: Fri, 20 Nov 2026 17:43:35 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c53e9a3b5b019c8bf97c56028fba3e6f1f8ca0c448bb5d95c73db1ab775ab3f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **904.2 KB (904243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa779f0e1d8e99673ea930494a05322ad1c19fd94eb7f8f46ca83986f02369da`

```dockerfile
```

-	Layers:
	-	`sha256:8c56570f0ef9ec87086d906cb317b92ed126e10e0571588af9e9af3e465b5fa0`  
		Last Modified: Fri, 20 Nov 2026 17:43:35 GMT  
		Size: 885.1 KB (885076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38f3c3c77bee6bade9b7b5b682512984b69e591b7f62ca1c51dafcc1187b980b`  
		Last Modified: Fri, 20 Nov 2026 17:43:35 GMT  
		Size: 19.2 KB (19167 bytes)  
		MIME: application/vnd.in-toto+json
