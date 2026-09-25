## `eclipse-temurin:25-jre-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:d14b5b3cb1464cdbf81e0b8a0a6f45f308dcf08d8aea97934569f1237a167ded
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:25-jre-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:f5bdfe5862c15f142f9a3a3bc18d45d46bf6af8302321a17c05343ff11b0fbb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75438414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b3b503a21e920c266847fa69b192790688e6ffc41f5886954c42e603a095053`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:38:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:38:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:38:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:38:51 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:38:51 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:38:56 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='0200539904de3669dce5c435aa1ef71f530325d6461c76d85fe90d5424e4974e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='cde9e39d32cab07722cb3218d91980091012f16333f8a298c40896cd05e2ffea';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Fri, 25 Sep 2026 22:38:56 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f03683b3018538444ee35ccb9742ad1f540a21f21c24588b2bda722ed5a18a6f`  
		Last Modified: Fri, 25 Sep 2026 22:39:07 GMT  
		Size: 9.5 MB (9463564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d0b347fcbc6d658b2e6bb72795069ccd83f251a14fab15e8422b02b515170c5`  
		Last Modified: Fri, 25 Sep 2026 22:39:09 GMT  
		Size: 62.1 MB (62123756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:000fa8453821588968cbcd2e579bc0abfd886f5ec38b7fd70e9656db7b1df486`  
		Last Modified: Fri, 25 Sep 2026 22:39:07 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaef0fb72a3baa2fb0a84c431afd8a13f237408a877029b9b5ea23123d73f705`  
		Last Modified: Fri, 25 Sep 2026 22:39:07 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:cf6428a1ac2f56e53704dbcbd8d4bbca667d9ce806e1545a8410babf404aaf4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **804.6 KB (804596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e33d86de304455ea206096351fb7e7ba3cdd8e632367fbc333347c53cf1c4ba`

```dockerfile
```

-	Layers:
	-	`sha256:21f8c519b69bca25059045deaa43a94f6dcf2ecbcce9308549c6751cd82333af`  
		Last Modified: Fri, 25 Sep 2026 22:39:07 GMT  
		Size: 785.4 KB (785443 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70cb2f4f451bbbbcc818948762494f062459862ee8f7ef48a17298cb8baa7bf7`  
		Last Modified: Fri, 25 Sep 2026 22:39:07 GMT  
		Size: 19.2 KB (19153 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-alpine-3.23` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:5abbf4a2f201e80893f1ee462ee4613613fbff375a17aef9420b2a4652c3addd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.7 MB (74705639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81945be68700191e6d23047a441b90383f2714fcce3c7d2a9f85ca981f09c372`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:38:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:38:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:38:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:38:00 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:38:00 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:38:04 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='0200539904de3669dce5c435aa1ef71f530325d6461c76d85fe90d5424e4974e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='cde9e39d32cab07722cb3218d91980091012f16333f8a298c40896cd05e2ffea';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Fri, 25 Sep 2026 22:38:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:770eb0497a59184a5d735ea569f6f41281b01e6351153e3ac2c0d426e2a01126`  
		Last Modified: Fri, 25 Sep 2026 22:38:17 GMT  
		Size: 9.5 MB (9480086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbd7a19e92f37eaa52fa256c523878f2b527ffc652301cf83ddeacdf9de30fac`  
		Last Modified: Fri, 25 Sep 2026 22:38:19 GMT  
		Size: 61.0 MB (61036906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b230c1d9e882bf157f5cba2b714952edb9fd1bc8a2be75bd21cf9b9613e12891`  
		Last Modified: Fri, 25 Sep 2026 22:38:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da8b45bedc01bdcf21c6f60f94497366a62d5835b6c4a2293f0007b4e8767677`  
		Last Modified: Fri, 25 Sep 2026 22:38:17 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5afe0d2a4f02ea40bbae48e3bf84f71ed5a01eb54f631a750b9c496edd17ed16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **803.5 KB (803466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61641ac969735ef54a215e61b25345db4c037e205478b8644867484089c94023`

```dockerfile
```

-	Layers:
	-	`sha256:761f080ee3d3a8bd53c54c7a7288d840a64925a1d94791a160c7b8f2a80bfa38`  
		Last Modified: Fri, 25 Sep 2026 22:38:17 GMT  
		Size: 784.2 KB (784204 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a27c1ea3f48fe2f905109ccfcd61573e16031efb9be9be4a67303c54d0fe1e90`  
		Last Modified: Fri, 25 Sep 2026 22:38:17 GMT  
		Size: 19.3 KB (19262 bytes)  
		MIME: application/vnd.in-toto+json
