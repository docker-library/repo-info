## `clojure:temurin-26-tools-deps-1.12.6.1673-alpine`

```console
$ docker pull clojure@sha256:b33ca061cdbd7ca26fe2f099b78fb0971d8e8a1645ad7fbfe4333223d870beec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.6.1673-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:959f4ae40a070ff0d6dd54846e20529c0558816bf09c2511d8b8b7f1688c7416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138489429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ab1c0091decc54f5d1d135b54c5764cf842172501ded14a0f86461645e2db3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:57:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:57:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:57:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:57:38 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 22:57:38 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Wed, 21 Oct 2026 22:57:46 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='60186535f49539d060d6e523a714f04e32dcc72643d9eba24738e41323fca79d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        x86_64)          ESUM='7f0ebccd9a8b4a554f5caac8768f28ff9d1b1b74367db7d14639b11c9b3d9e41';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 22:57:47 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:57:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:57:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 22:57:47 GMT
CMD ["jshell"]
# Wed, 21 Oct 2026 23:39:42 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 23:39:42 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 23:39:46 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Wed, 21 Oct 2026 23:39:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 23:39:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 23:39:46 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 23:39:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37af5f6c1cc3d61c1d39db80aacfd42b2bd9497b52cdf4e5bb29da204a4adf68`  
		Last Modified: Wed, 21 Oct 2026 22:58:01 GMT  
		Size: 14.4 MB (14372149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c6700b0d64680905fad799a91440c82f048df1de0e08890aa3264a8d070c08`  
		Last Modified: Wed, 21 Oct 2026 22:58:03 GMT  
		Size: 93.8 MB (93802421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da8fe43bb290379cc167cd206ff515dd6f8ebcfec430d5d9e71c1d152846f873`  
		Last Modified: Wed, 21 Oct 2026 22:58:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd2eb0933d3ce6bbeb303ca2abb6c53d9967eb89997e78eaacf88199ed1aaf3`  
		Last Modified: Wed, 21 Oct 2026 22:58:00 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6ebb0d96eafcd450d1c023052669aaf7ea26f528b38c2ffe121e22b5b83d989`  
		Last Modified: Wed, 21 Oct 2026 23:39:56 GMT  
		Size: 26.5 MB (26458109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6340729d87ab815a835917475db752152131ed9012c77efea5ff50a37b44ab9b`  
		Last Modified: Wed, 21 Oct 2026 23:39:55 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54a691c9a1a972f5a5e11cfdf9683e84e94019befac33283cdf5ad42facb149f`  
		Last Modified: Wed, 21 Oct 2026 23:39:55 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:d411a4ccaf1f8346020fad9b23ddd804ebade6a65b9d77d932ae6648882f04d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1199627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087eee942bc53c0973adc68e4b010c1f86897f869e3c69596be2402c81557edd`

```dockerfile
```

-	Layers:
	-	`sha256:d320c348b730988a554402d267d9d64ba2590807236ac6dc0098b5b8fc37080e`  
		Last Modified: Wed, 21 Oct 2026 23:39:55 GMT  
		Size: 1.2 MB (1184201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ce0f58294950fc876190c542a15da829907b5b0620ca9d618c62c411be95be6`  
		Last Modified: Wed, 21 Oct 2026 23:39:55 GMT  
		Size: 15.4 KB (15426 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2074dcdf388415d0b9a745bf55d2921356239eb47971812355376d2cd76d8b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.9 MB (137917046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b98c8ce348a2b608732810bc3e16d1996cd27c80659eddd8638100aa31e39cae`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 23:20:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:20:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 23:20:17 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 23:20:17 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Wed, 21 Oct 2026 23:20:25 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='60186535f49539d060d6e523a714f04e32dcc72643d9eba24738e41323fca79d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        x86_64)          ESUM='7f0ebccd9a8b4a554f5caac8768f28ff9d1b1b74367db7d14639b11c9b3d9e41';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 23:20:26 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 23:20:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:20:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:26 GMT
CMD ["jshell"]
# Thu, 22 Oct 2026 00:29:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 22 Oct 2026 00:29:53 GMT
WORKDIR /tmp
# Thu, 22 Oct 2026 00:29:57 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Thu, 22 Oct 2026 00:29:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 22 Oct 2026 00:29:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 22 Oct 2026 00:29:57 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 22 Oct 2026 00:29:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af2c00dcd3dc5c7fdca61759583c1dd32754233131d14824c91b35649edd73cb`  
		Last Modified: Wed, 21 Oct 2026 23:20:42 GMT  
		Size: 14.4 MB (14426612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:636d40ad34c6922b8085fe90a3dcbb8870b81d6a28bbb2b6a828fcbaa4c0d728`  
		Last Modified: Wed, 21 Oct 2026 23:20:44 GMT  
		Size: 92.7 MB (92685458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ed5ebae0a6a3a09770a513e11755f546c650ca36cd273164fabcb810db2f59`  
		Last Modified: Wed, 21 Oct 2026 23:20:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb6ac887d7f7ecd1cc280b4d8bef317f30f0e2b0f015be458e74102bc6021ea`  
		Last Modified: Wed, 21 Oct 2026 23:20:41 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191a220f614e8105a733bf93219dd2df6759c595f95a539310c4df044962eacc`  
		Last Modified: Thu, 22 Oct 2026 00:30:07 GMT  
		Size: 26.6 MB (26610842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eb7e983eea874c1b0d1ca534a5658173b72f3f344fe8419d14ce82274d9d4b5`  
		Last Modified: Thu, 22 Oct 2026 00:30:06 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d8053918ae48154acd096c1292116e62372a3916c070abb0e4498198dbbdf9d`  
		Last Modified: Thu, 22 Oct 2026 00:30:06 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:abc5809c6a1748ab49071fc53751a7abf7c4a479645373e84d5ff3653b14c0fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1349069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:482d6df31e312d87fb51baaa44b8e7d2700ec0ad2b218a92fb29980ffacbbb35`

```dockerfile
```

-	Layers:
	-	`sha256:af29c161c8fcaaff29df0bf1a9d23bbf05d16ccd9e6bfa8d48cde3eed6f1fb77`  
		Last Modified: Thu, 22 Oct 2026 00:30:06 GMT  
		Size: 1.3 MB (1333550 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6a800fc4e4c278c3719720da12da12550bd4781e47757b8c7370268b61d3441`  
		Last Modified: Thu, 22 Oct 2026 00:30:06 GMT  
		Size: 15.5 KB (15519 bytes)  
		MIME: application/vnd.in-toto+json
