## `eclipse-temurin:25-jre-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:47304ee18462d9375d3ccb4fef9654ef622ecc42b0eda5172c85d61cb9a0e191
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:25-jre-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:3e7ad41f49384dc58cb36a7cfe3072b3631ff06bb39b435322fde7a6f679e0e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75341949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591a419735601de9ac7b4e9ba5a00158a5c2077a61cc6289a5991a52e3f3dc26`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:26:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:05 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:26:05 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:26:09 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='c9a48a33d65f308c6066bbfdfc0d4b9143793588a0def79df219760b25bb8b84';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='4a641bfa74e961efd9cc6dbfb6eccf0bec13014904433f00eb33df84c393318f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Fri, 21 Aug 2026 18:26:09 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:26:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:26:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe71211660a13056d058ee44cf9358634924ec1152ceaa8d08e2c34dfb8cbc2`  
		Last Modified: Fri, 21 Aug 2026 18:26:21 GMT  
		Size: 9.4 MB (9431555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcaaf6ead3895cf325e8a9e7b8eb51f5dcee052c6e10d1f246b3a4efddbef974`  
		Last Modified: Fri, 21 Aug 2026 18:26:22 GMT  
		Size: 62.1 MB (62120209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:292a20252e572f22f7920e6a7c0348f1c7b531bbdf8491dc5238a12818c2cbae`  
		Last Modified: Fri, 21 Aug 2026 18:26:19 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93715b3fb4d57df635b0fcde26882e17aa91e3a1f3bf4639dc61afcc15a0a9dd`  
		Last Modified: Fri, 21 Aug 2026 18:26:21 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:93570ed73cba9bb356df477a842aef3dc1298151bebe3791e4efd15f4f027573
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **802.0 KB (801982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e58520556427cde919c37f3fadfb043779b2f8e852a5f200b3653d4b55d3350`

```dockerfile
```

-	Layers:
	-	`sha256:491123e9ed326253ed7851d78e89d61ffa7ef08027cfacef8053cc6332d29123`  
		Last Modified: Fri, 21 Aug 2026 18:26:21 GMT  
		Size: 782.9 KB (782861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69bbd1fbc9dba1149f53022acd632a0e9e694e4bb409ba0e4d7ee374908a271f`  
		Last Modified: Fri, 21 Aug 2026 18:26:20 GMT  
		Size: 19.1 KB (19121 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-alpine-3.22` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:50707c0cf631d2b2fcbad1bcc94c21c722e3948cdfeb0ee3ef09d013f32e00fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.6 MB (74614872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b801614599a8fd871ff1e827fb37dafac48869ed238cbd9520e3d58fa717442`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:41:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:41:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:41:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:41:52 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:41:52 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Thu, 17 Sep 2026 21:41:56 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='c9a48a33d65f308c6066bbfdfc0d4b9143793588a0def79df219760b25bb8b84';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='4a641bfa74e961efd9cc6dbfb6eccf0bec13014904433f00eb33df84c393318f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Thu, 17 Sep 2026 21:41:56 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:41:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:41:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5d5b586dc03789b46ae8e293bf5c64eba4d000fb4049e3546adb628dbc6d85c`  
		Last Modified: Thu, 17 Sep 2026 21:42:09 GMT  
		Size: 9.5 MB (9455523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c43890b2e277c0541df286bfa308b7533b8f83492ae1a480b8edae8090262f3`  
		Last Modified: Thu, 17 Sep 2026 21:42:10 GMT  
		Size: 61.0 MB (61033675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d44dfd4ae9b0dbcc85403ec175fba188b76e91691b1a061f7c220cb8ceb2cf5`  
		Last Modified: Thu, 17 Sep 2026 21:42:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b3970f2574ebe589d2362d3585c3118d006a6b3c27727208620bf3a6883d4d`  
		Last Modified: Thu, 17 Sep 2026 21:42:08 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3f9b750749a3d72aa06098db1a4433f0360ba20588940e623d52361ab8583ca3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **802.8 KB (802796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:975c20944a2ca731885ebe4f9c8d44fea937fc8726d06b083b74e9bc5a22beb7`

```dockerfile
```

-	Layers:
	-	`sha256:f8eb21870805a4b03eebf507178cb6d43f88fd72a6303fd2943a4bc4913dbda8`  
		Last Modified: Thu, 17 Sep 2026 21:42:08 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08af369da29bcddbc03dea88f4666d08541a8106ec4c2d3e9cc0184ef94b416d`  
		Last Modified: Thu, 17 Sep 2026 21:42:08 GMT  
		Size: 19.2 KB (19231 bytes)  
		MIME: application/vnd.in-toto+json
