## `eclipse-temurin:25-jre-alpine`

```console
$ docker pull eclipse-temurin@sha256:3c0a9084927a221ccd1d007fcaf614465672c0af37aaa834c5184483afe56d61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:25-jre-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:2f9d7b671dd5f7acc9ced625afb7f90916c81668b905c9d03f52d3c8544c7db3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75490424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b514ae52d20c3d366477e819a9d9ff4f3de3d6824e814a4566b16f1d8ad0487f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:38:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:38:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:38:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:38:47 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:38:47 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:38:52 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='0200539904de3669dce5c435aa1ef71f530325d6461c76d85fe90d5424e4974e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='cde9e39d32cab07722cb3218d91980091012f16333f8a298c40896cd05e2ffea';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Fri, 25 Sep 2026 22:38:52 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f99db5f04f896356bdd837ec95e1a30a91acd5c885e89eba4d792c7a819ac679`  
		Last Modified: Fri, 25 Sep 2026 22:39:04 GMT  
		Size: 9.5 MB (9514464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a766f641652ca0bddbb5a883f2c2a18bd9751a651fd945c0d7b863570626917`  
		Last Modified: Fri, 25 Sep 2026 22:39:05 GMT  
		Size: 62.1 MB (62123631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5adb22c6bb2b14a1a6f2d309443ef34684290537c1318e49928f2956caa74ecc`  
		Last Modified: Fri, 25 Sep 2026 22:39:03 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35ca26035cc04e7b728a1e6348996e01709eb0a1d08829d901858b0f2aeb84b`  
		Last Modified: Fri, 25 Sep 2026 22:39:04 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:66b560dd6efba30f1b4d1618c6432cd55a910cc7507fe0bc7c18b3ba0785e557
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **805.9 KB (805924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e52290d70f0449dafeec7995811d78c7db80a21e58d61756634acae7808c8c`

```dockerfile
```

-	Layers:
	-	`sha256:ed811dca30d349a6f26e348292b4869ea5dc1ba4475ca3c71337204538a97f0b`  
		Last Modified: Fri, 25 Sep 2026 22:39:03 GMT  
		Size: 786.1 KB (786095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db22e9db040d9c2763879e2927d27a7dc00b44bd680504b81c95ce5ad6cb6d55`  
		Last Modified: Fri, 25 Sep 2026 22:39:03 GMT  
		Size: 19.8 KB (19829 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:f1286b7530a3ae2f9a9bad98a08fb99e2b4524afe508384fbb892bc8e37c86c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.7 MB (74746190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cccd21d6ee2a6e0b9f88a1fe83372527d7b440f4d210128b1d9ea2557702f99c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:37:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:49 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:37:49 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:37:55 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='0200539904de3669dce5c435aa1ef71f530325d6461c76d85fe90d5424e4974e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='cde9e39d32cab07722cb3218d91980091012f16333f8a298c40896cd05e2ffea';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Fri, 25 Sep 2026 22:37:55 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:55 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:55 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8febf20367bf967a82355481a2dd31d62c93fe8339bca5f83fcc1c8b89684dd0`  
		Last Modified: Fri, 25 Sep 2026 22:38:08 GMT  
		Size: 9.5 MB (9519089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefe914f997d2c9be5bfce996347bf6b29bda9b236c9255782ba69ca28bacf8c`  
		Last Modified: Fri, 25 Sep 2026 22:38:09 GMT  
		Size: 61.0 MB (61036853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fabbb04499dc8e3d0726bf1eaf7bf41ce3fd1a6b5f758183b1820e0fbbc679`  
		Last Modified: Fri, 25 Sep 2026 22:38:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:605d4f3b942c757763e084cea42e354a416acd50a65c891e5bb05259c3ee1ad0`  
		Last Modified: Fri, 25 Sep 2026 22:38:07 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0a52d7b97b5289475343dc02fde59a728888899c11849a92230d4bfc10f4c960
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **804.8 KB (804842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63f25412b4c25ef9041fda9ec9acc0dbde2f3c4802f329d6ab14543def65eea8`

```dockerfile
```

-	Layers:
	-	`sha256:ba480568b347a8c0e9fd13ea2cd77f657d183b83895bf80f3236d8c08553a023`  
		Last Modified: Fri, 25 Sep 2026 22:38:07 GMT  
		Size: 784.9 KB (784880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:166d6b882199c08e1114e0034bc2f57f303dcecdeed29565b150506646c2188d`  
		Last Modified: Fri, 25 Sep 2026 22:38:07 GMT  
		Size: 20.0 KB (19962 bytes)  
		MIME: application/vnd.in-toto+json
