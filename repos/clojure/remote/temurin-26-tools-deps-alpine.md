## `clojure:temurin-26-tools-deps-alpine`

```console
$ docker pull clojure@sha256:7d1c22bfae5b9d90c074d0fb7d325c5f753e5f8719fc6ed8c9d4ffdfa9772e02
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:4269e6dbfd6356e7108ae6f6c549b27ee181374c8c49054ddc0f31e886d9ed7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138483698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23f57352bf04d1a1672f6662f60944d91048ef2b91144f3ca87745c362d24bc4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:39:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:39:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:39:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:39:17 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:39:17 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 25 Sep 2026 22:39:24 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='60186535f49539d060d6e523a714f04e32dcc72643d9eba24738e41323fca79d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        x86_64)          ESUM='7f0ebccd9a8b4a554f5caac8768f28ff9d1b1b74367db7d14639b11c9b3d9e41';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 25 Sep 2026 22:39:25 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:39:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:39:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:39:25 GMT
CMD ["jshell"]
# Fri, 25 Sep 2026 23:25:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:25:51 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:25:55 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 25 Sep 2026 23:25:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:25:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:25:55 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:25:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7857f324d0219f713cdee798a6a1b5c5517e1774af16e90889409197f82da8da`  
		Last Modified: Fri, 25 Sep 2026 22:39:39 GMT  
		Size: 14.4 MB (14374645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe7780a0186010a052851cf102036653bf9c1135cf2a9051fb6185abf30143d5`  
		Last Modified: Fri, 25 Sep 2026 22:39:41 GMT  
		Size: 93.8 MB (93802649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91fd786f361eb1702fa43a9fed578735248b522558dfeb97ad46d1da9ec5daf0`  
		Last Modified: Fri, 25 Sep 2026 22:39:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f39ca676d9ec51822af2278793116e14805516fe0cc9c80ebf2a1a3fbd241d`  
		Last Modified: Fri, 25 Sep 2026 22:39:39 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a7558ce0b565e59838b64e4ea15bef861355febb06040d894990272dfbe1ecc`  
		Last Modified: Fri, 25 Sep 2026 23:26:05 GMT  
		Size: 26.5 MB (26453025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f274cfae6add286457bc016c2dc02d7a53571859a9d3063c752d66dd34935cf3`  
		Last Modified: Fri, 25 Sep 2026 23:26:04 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbdb04010cf61471db0c4c09754a3d63323eb7958e4d449250d0573e7a123aa2`  
		Last Modified: Fri, 25 Sep 2026 23:26:04 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:08458dea5f42395d9f00afaea7a19f826953516dcc09c9ba46f64cef21f7ec64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1201565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:236b97aeb163a48404c08c2ffd2f96de33b88439d0250d9bc55abe73e65e00b2`

```dockerfile
```

-	Layers:
	-	`sha256:c43677590cf2d217ce8d34f827ddedfeef13de59894af0d0a589d76df744df44`  
		Last Modified: Fri, 25 Sep 2026 23:26:04 GMT  
		Size: 1.2 MB (1186138 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c38aebede13652373954e77955549c874060602e2bdefbe560e9be305d429e9`  
		Last Modified: Fri, 25 Sep 2026 23:26:04 GMT  
		Size: 15.4 KB (15427 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:54cd3789dafa5f1a9bc1c730f626c673b414b1bd66cbac5e6384f224afb5939b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.9 MB (137905829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e99b4c2436559281deb2ed7c44be95c67be372ca31da238bb6ea3eecfd366c7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:38:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:38:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:38:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:38:25 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:38:25 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 25 Sep 2026 22:38:33 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='60186535f49539d060d6e523a714f04e32dcc72643d9eba24738e41323fca79d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        x86_64)          ESUM='7f0ebccd9a8b4a554f5caac8768f28ff9d1b1b74367db7d14639b11c9b3d9e41';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 25 Sep 2026 22:38:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:38:34 GMT
CMD ["jshell"]
# Fri, 25 Sep 2026 23:23:38 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:23:38 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:23:41 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 25 Sep 2026 23:23:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:23:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:23:41 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:23:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40385dd44488aac97962274035e7a6740bbf903709d6e87998af95008c264bcb`  
		Last Modified: Fri, 25 Sep 2026 22:38:49 GMT  
		Size: 14.4 MB (14425150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:720569efe44d83d1e5ea42fb00f9b5a9136421eb37f080744467f6ca00ee73e9`  
		Last Modified: Fri, 25 Sep 2026 22:38:51 GMT  
		Size: 92.7 MB (92686134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:341b35e65e00462b515a29ba77d7e56243d45bbc6e83f9891f5a25a55d96fd56`  
		Last Modified: Fri, 25 Sep 2026 22:38:49 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe96a123e637f54e6d0afc553357b53d54647699c9883f67bac6ef910a99a390`  
		Last Modified: Fri, 25 Sep 2026 22:38:46 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c47eb192ea2b21925d52acd8c4231d33811535caf82df7c7673a84fd9d6aff`  
		Last Modified: Fri, 25 Sep 2026 23:23:50 GMT  
		Size: 26.6 MB (26603247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9004afd8560a9adb3c709022fefc0011bd121ba43dd217f22ff7e5e4b8c00a`  
		Last Modified: Fri, 25 Sep 2026 23:23:50 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bacb46c3d58b8f640bcaaf739daace136feced20339e58d4b0dc87c965c3794c`  
		Last Modified: Fri, 25 Sep 2026 23:23:50 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:fe60add7542dcfe43413747db9f3fba5742603bb4cd1fc03b04e563ef9626eaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 MB (1351006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54068506a5765f34fbddde0dda5fe1707c4d0042c48455bf9c765ff6dacd5a77`

```dockerfile
```

-	Layers:
	-	`sha256:1a0cbf78c843b3ab3276b97e08185e861c30af8b0b4c29d119eb372a3a7d29c4`  
		Last Modified: Fri, 25 Sep 2026 23:23:50 GMT  
		Size: 1.3 MB (1335487 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d22e37a837a915f3338434822c1cbfa6f11f25e78d62bdeef456dcc12b229249`  
		Last Modified: Fri, 25 Sep 2026 23:23:50 GMT  
		Size: 15.5 KB (15519 bytes)  
		MIME: application/vnd.in-toto+json
