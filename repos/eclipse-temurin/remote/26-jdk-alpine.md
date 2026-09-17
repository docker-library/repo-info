## `eclipse-temurin:26-jdk-alpine`

```console
$ docker pull eclipse-temurin@sha256:7deaeb4a58f7465349e9f785479e2bad30a13432fd90c4dd05e1a0d93226552c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:26-jdk-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:ebeaa3d1afc75fcebcfbe3166010e7e3264fed8a6c797aad0cea73699f1b172a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (112018942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b89d139c2128dffa16a21bf34c86ed429ca54b90765165eeafcd4605291357d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:26:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:30 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:26:30 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 18:26:36 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='bee481d4ba078ac1aaa741541bb0b99de876d679ccc80f9685710b72bc7b04f1';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='88caf27ab9f2a15a52a114ea18fa20c518ccc325b5ba4bb5fd6c42c56b581498';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 21 Aug 2026 18:26:37 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:26:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:26:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:26:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5452eb2d46e5afd46652ba2459404a0b581faeff2124634dcc9277d891ff518`  
		Last Modified: Fri, 21 Aug 2026 18:26:52 GMT  
		Size: 14.4 MB (14369260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6481711e3f1020188b9e74053a709052b5d3189afb0072eaea1e536eb62205`  
		Last Modified: Fri, 21 Aug 2026 18:26:53 GMT  
		Size: 93.8 MB (93800700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b1496ebe6bf2f6123752166aa307e4272ad2cd8f1a6a66ec46d5acc4b09d3db`  
		Last Modified: Fri, 21 Aug 2026 18:26:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c59e66bceb7aa1c4028b56c80468d8c3b248bdd69485bfc2fc8fd652c9344832`  
		Last Modified: Fri, 21 Aug 2026 18:26:51 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:68d5b274a1ab3b2d6717837b923a2568ddcb63eba02a0441d34c137365b75b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **969.7 KB (969698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f949b114974e47f87f0ccfbc7565e6b4b904162143ef13d58bb2a567bfd26ad6`

```dockerfile
```

-	Layers:
	-	`sha256:59310be0a87e23f2292267470ee0eefc41912ab5be76fda9c4abac7294309484`  
		Last Modified: Fri, 21 Aug 2026 18:26:51 GMT  
		Size: 948.2 KB (948167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5dfe96f1ac16fb8b0eee48719342372a2d9ca2c9996961c02ef9f8d68382b012`  
		Last Modified: Fri, 21 Aug 2026 18:26:51 GMT  
		Size: 21.5 KB (21531 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jdk-alpine` - linux; arm64 variant v8

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

### `eclipse-temurin:26-jdk-alpine` - unknown; unknown

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
