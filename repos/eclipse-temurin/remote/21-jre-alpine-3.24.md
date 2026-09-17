## `eclipse-temurin:21-jre-alpine-3.24`

```console
$ docker pull eclipse-temurin@sha256:3a48cd0298a7073cbabfd3056942f72fb260ba9b892524aff8da2962f0c9d983
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-jre-alpine-3.24` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:4cbffea0432e0209a002c816a9fad6557d83147e56d5df6a73cdeec3c03ea522
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.1 MB (74068088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d61c725e9bb2fc08e1abce08e10025e5cf89773079fa0107a673b2286fc74330`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:24:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:24:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:24:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:24:09 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:24:09 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:25:05 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a4f70d2be5c55940dd60b6636643a05125e60e6c3dbc2a8402032b0346744dfa';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='9a7f8712a2741bb14e2452eed2de99f62d02e05617e27d59f1861a0cdad58486';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 21 Aug 2026 18:25:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:25:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c7ed5940eebd779785c13f34a1b11489ad059b0670847f32d66f4b9c374c6e5`  
		Last Modified: Fri, 21 Aug 2026 18:24:23 GMT  
		Size: 17.0 MB (16963182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d265ab119d2b568721a3fa664d42c4d7dd1e3d09c07b0078d7eb96e0736028b`  
		Last Modified: Fri, 21 Aug 2026 18:25:18 GMT  
		Size: 53.3 MB (53255926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc6f0d2e629f6a85e77001610611dd55da666c775a5f69a3fe2ba3d46e6293a2`  
		Last Modified: Fri, 21 Aug 2026 18:25:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bda7269e79c96ae35b60164222a9b4ea8d74b66827f9453987cb35a26fdfa90f`  
		Last Modified: Fri, 21 Aug 2026 18:25:16 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:56bb98e799e754f0f4b41f8e4fe1898ff97d1aceed163728fecf3f8ca0aea289
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **907.3 KB (907282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec985eb16e0ce91ca11426cb7c44f16c9043cd4138921ee585fcfb00a9ab29d1`

```dockerfile
```

-	Layers:
	-	`sha256:93fcecd16b1b143b4e7dd70d7dbc2e440636771f08e2b41d34f0ff6268cae0c4`  
		Last Modified: Fri, 21 Aug 2026 18:25:16 GMT  
		Size: 887.6 KB (887584 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b197fa56ba1d37202844be95ca1ed9c82cb24bc80e43e513afde81bfc87b1c41`  
		Last Modified: Fri, 21 Aug 2026 18:25:16 GMT  
		Size: 19.7 KB (19698 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-alpine-3.24` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:c37702f9464c94b787baabbb881193b89a6b8948d6e1eb30a4be5230c89c32ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73409758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a693aab30792f693f9f06cc4b15dc9cc3f372224a4c46272a465d92662f777e7`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:41:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:41:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:41:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:41:08 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:41:08 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Thu, 17 Sep 2026 21:41:13 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a4f70d2be5c55940dd60b6636643a05125e60e6c3dbc2a8402032b0346744dfa';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='9a7f8712a2741bb14e2452eed2de99f62d02e05617e27d59f1861a0cdad58486';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 17 Sep 2026 21:41:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:41:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:41:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812fe85c160175ce5b91c3a3a11e0b0be1ae984712002faa21c0221cabc4076d`  
		Last Modified: Thu, 17 Sep 2026 21:41:25 GMT  
		Size: 16.9 MB (16896432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a61c22caf84736dd47aedb58d7db89d4a43e4b54201966f634a094967010682`  
		Last Modified: Thu, 17 Sep 2026 21:41:26 GMT  
		Size: 52.3 MB (52323079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89c87ab44a5797062b9c3da0c11a218e143787fb41221d7adc519b7b5daeedf`  
		Last Modified: Thu, 17 Sep 2026 21:41:24 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90972f3f7dd1f598944ef1ecaa2ddf0a97aea12207c9094e076a04b77317cd3`  
		Last Modified: Thu, 17 Sep 2026 21:41:24 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c93b71ef24fc90182f97d74474a77ec8dbdfcba094f773e441aafa09020c1b41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **907.5 KB (907498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0d1de6d1c6f6b765a16e4796a5664a672cd64561bb7cc43da206bb0e942722a`

```dockerfile
```

-	Layers:
	-	`sha256:5265d71cb7b36bfeeda42965305a395a9212db84182619ce73a579a8edc8d616`  
		Last Modified: Thu, 17 Sep 2026 21:41:24 GMT  
		Size: 887.7 KB (887665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bee54c9108a1b5a68880f529143178c48dcbbe36e86c1c0833eb1956b01b61a`  
		Last Modified: Thu, 17 Sep 2026 21:41:24 GMT  
		Size: 19.8 KB (19833 bytes)  
		MIME: application/vnd.in-toto+json
