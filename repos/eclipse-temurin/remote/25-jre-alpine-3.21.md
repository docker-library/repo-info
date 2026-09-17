## `eclipse-temurin:25-jre-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:5ec06f1cf657dff7b657fecfd37bf3537f330937a5b233afbbbb7efe394b7ff6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:25-jre-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:e084bfa62137606ab0f5c412de0763e5bff57e93563b289d010f8423511439fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75223537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ec91ba7c25297582fa25e3fc714990d20dee03f39dbcf0c3d664e09fe379f02`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:26:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:19 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:26:19 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:26:23 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='c9a48a33d65f308c6066bbfdfc0d4b9143793588a0def79df219760b25bb8b84';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='4a641bfa74e961efd9cc6dbfb6eccf0bec13014904433f00eb33df84c393318f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Fri, 21 Aug 2026 18:26:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:26:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:26:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56097f65d48a6fcd961446bf2490da576ccc12c18647e82645a88d08e257be2e`  
		Last Modified: Fri, 21 Aug 2026 18:26:37 GMT  
		Size: 9.5 MB (9453392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a730cf5ab941ed7b13e4c302c655233f7a6a30a651ef3fc4fa3f3c5f000480d`  
		Last Modified: Fri, 21 Aug 2026 18:26:38 GMT  
		Size: 62.1 MB (62120681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66e4167c59b2d260e353c1ac2a20e6328610ee183ba5f4033fc232753671539c`  
		Last Modified: Fri, 21 Aug 2026 18:26:37 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:259a6acd370dd8d6d369294cf3df87c873e87035c78e0b06554886831ef93880`  
		Last Modified: Fri, 21 Aug 2026 18:26:36 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:179c5dafa04d3cb46121e490d43a4c1afdf2ca531642a3ef4077675c7034f5cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **818.1 KB (818100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4167f1467cc3dc27d04534b2db5b7fed06211c05f9e20f3f83c4bc713c093031`

```dockerfile
```

-	Layers:
	-	`sha256:745ada88974c90ea3687b808a60f51316af9879cf97e61182f73fc44c9040e5a`  
		Last Modified: Fri, 21 Aug 2026 18:26:36 GMT  
		Size: 799.0 KB (798979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8525911c8932eddb29b4a5c522065f82f54adae65eea58a1f4eeb2c409fb573f`  
		Last Modified: Fri, 21 Aug 2026 18:26:36 GMT  
		Size: 19.1 KB (19121 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-alpine-3.21` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:bce067b906cda9654fc5bc6b346212775d57bf7c4208131368fc169d53348147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.4 MB (74442857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2253cc50bf784aa525763387359a836c4df79a085c81e048a679ea2b5219ae69`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:41:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:41:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:41:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:41:55 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:41:55 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Thu, 17 Sep 2026 21:41:59 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='c9a48a33d65f308c6066bbfdfc0d4b9143793588a0def79df219760b25bb8b84';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='4a641bfa74e961efd9cc6dbfb6eccf0bec13014904433f00eb33df84c393318f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Thu, 17 Sep 2026 21:42:00 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:42:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:42:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71379ca81d0f0cc0f563541e7b06526da1bc023435411e76c50dc25aac7dff02`  
		Last Modified: Thu, 17 Sep 2026 21:42:12 GMT  
		Size: 9.4 MB (9432501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dd524658cffa795a9d8ba5ee6f107b6dd0be26cc3b2a64861a74e8ff65b7036`  
		Last Modified: Thu, 17 Sep 2026 21:42:13 GMT  
		Size: 61.0 MB (61033267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3aa743e9c97ce28ca0c07649337bad8155e0648ec87e1c93974331c49e12cdc`  
		Last Modified: Thu, 17 Sep 2026 21:42:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e97cbb8c158f718f526eb95fac4f856e908e674e2f23e9d9d100eb41bc1d78`  
		Last Modified: Thu, 17 Sep 2026 21:42:12 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:14556644ebd5397afc98755155604b3fca1246e8ba30dd1d5aabd81adee0c3ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **802.0 KB (802022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e4b6185a5721e70f460014c77cd5330cf2bc038df3658d20fe3565b35dcd73e`

```dockerfile
```

-	Layers:
	-	`sha256:987e247ac0852988376e51858bc52a013feee6d2dd9b4a2775ee62685f9b34e3`  
		Last Modified: Thu, 17 Sep 2026 21:42:12 GMT  
		Size: 782.8 KB (782791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2409edc0bee82a9ff82d59b020fd6282b231a8d8ea691ccfd71cacb48f33a269`  
		Last Modified: Thu, 17 Sep 2026 21:42:12 GMT  
		Size: 19.2 KB (19231 bytes)  
		MIME: application/vnd.in-toto+json
