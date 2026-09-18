## `eclipse-temurin:26-alpine-3.24`

```console
$ docker pull eclipse-temurin@sha256:8b7a8c567ddf2ea80020d175f83879ebedc0cc631040a5d4dc6a12a0cb8ec5e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:26-alpine-3.24` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:25255280132d5261ba398a67c973071cc12c22ea35a863f5b30fd075295b24c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (112027941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e0caab0d8a30132fc74b54ba59c7fadf02feb60fc738fa7ac2f75ab066b8f0e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:41:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:41:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:41:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:41:36 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:41:36 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Thu, 17 Sep 2026 21:41:45 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='bee481d4ba078ac1aaa741541bb0b99de876d679ccc80f9685710b72bc7b04f1';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='88caf27ab9f2a15a52a114ea18fa20c518ccc325b5ba4bb5fd6c42c56b581498';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 17 Sep 2026 21:41:46 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:41:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:41:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:41:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b66dcb7b01fcdeca7f62c679c464bbe20acbefd50a3331b676e29cd05f386bee`  
		Last Modified: Thu, 17 Sep 2026 21:42:00 GMT  
		Size: 14.4 MB (14374531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d03614ef550b5e943c68431070253a31b23c3065dad8291dcd80709bd17c24`  
		Last Modified: Thu, 17 Sep 2026 21:42:02 GMT  
		Size: 93.8 MB (93801080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc9d703f257bbe41ec26485da713acf142f45808b48508a04aa501e8699e79b4`  
		Last Modified: Thu, 17 Sep 2026 21:41:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5530708bfe33252422b2d03a100129c7bacb9843e65eca678957f8ea4e2c083`  
		Last Modified: Thu, 17 Sep 2026 21:41:53 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5111021afb25ad80d263d67b629d870a21bb92f89fcc26f106c1c30aeebbcf89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **971.0 KB (970991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:006937b156fb72ed467885a65fb362c34ab679d8291b43acd12c576b5eb286b0`

```dockerfile
```

-	Layers:
	-	`sha256:abd2bdc7dcebc88454fa2c757aed10f87a7486130aeeae1c1989f6163ba07fa7`  
		Last Modified: Thu, 17 Sep 2026 21:41:59 GMT  
		Size: 949.5 KB (949460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a58432d8126f972d85be6a990ccb07db5ca957de12a855c557203086d5a4aa5`  
		Last Modified: Thu, 17 Sep 2026 21:41:59 GMT  
		Size: 21.5 KB (21531 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-alpine-3.24` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:f74efed8dc38d531dd661795808e32d2308778d7c56633bfa335ab7c9519f534
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111297370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae873a528c2e014cfdfdfbba948a228104ed1427279738b4f84bb2080f5d576`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:42:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:42:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:42:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:42:07 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:42:07 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Thu, 17 Sep 2026 21:42:17 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='bee481d4ba078ac1aaa741541bb0b99de876d679ccc80f9685710b72bc7b04f1';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='88caf27ab9f2a15a52a114ea18fa20c518ccc325b5ba4bb5fd6c42c56b581498';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 17 Sep 2026 21:42:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:42:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:42:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:42:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fb1c0605fe61bad47cdaaa406a9bd4240f2c48e430411b83b1350714715469f`  
		Last Modified: Thu, 17 Sep 2026 21:42:34 GMT  
		Size: 14.4 MB (14424429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243ee7006a758f0641099f3fb9342fd26699e5be627759545918bee805b23f37`  
		Last Modified: Thu, 17 Sep 2026 21:42:35 GMT  
		Size: 92.7 MB (92682695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d723a4d5484baf0911cfcd4fae1f13a609cb5a446049befb7ab798e2883cb80e`  
		Last Modified: Thu, 17 Sep 2026 21:42:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61163323f058d340a13fd51a507276a2e9cf86ba0dd6dd09bb7d759baa833dbc`  
		Last Modified: Thu, 17 Sep 2026 21:42:33 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a2bd8f3689c0c1e85aec4c910aad4137e4304f08e6dbd38ac63aaf0a3bd01798
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1120534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea483ec5150b4f26a1f4bb84334fb8be1ee60259569bdf4b6b4412cd6d6d81ab`

```dockerfile
```

-	Layers:
	-	`sha256:33a0a8f2fb0d7a33fef3331a1466968eec455bbdf4b89af66a8b83b3146e80ad`  
		Last Modified: Thu, 17 Sep 2026 21:42:33 GMT  
		Size: 1.1 MB (1098845 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16eb7f49bc084eab87e096461ba60e8ff88886dfcdefa9adbf23af61fd0cd860`  
		Last Modified: Thu, 17 Sep 2026 21:42:33 GMT  
		Size: 21.7 KB (21689 bytes)  
		MIME: application/vnd.in-toto+json
