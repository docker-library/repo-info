## `clojure:temurin-27-tools-deps-alpine`

```console
$ docker pull clojure@sha256:0bb415d93e2549b23944c41b681d0872667b0f635901afec6222a30bca928259
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:cd296aafddc1147c38912eba28ca16d7f83a8cc44e159b764dfbafab71824ef9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.6 MB (137593075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02026e013562cc0aa8df6c4733aa2054ea7df7e83cc0f60e2eeedacc66b325f6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:57:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:57:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:57:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:57:43 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 22:57:43 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 21 Oct 2026 22:57:52 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='440353d641e7726396dff5d9a9d0d17c05a070dc25664c20f9d7efafc2f16cf7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='45aef7cd5ae667c6f5dd100c96a99e5a00e61c512664bb13326cf149b7d37e0f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 22:57:54 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:57:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:57:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 22:57:54 GMT
CMD ["jshell"]
# Wed, 21 Oct 2026 23:39:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 23:39:49 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 23:39:52 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Wed, 21 Oct 2026 23:39:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 23:39:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 23:39:52 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 23:39:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:954723d5358cb00043454fda5e881ebb40121d4d66847db028e072ce23688a6b`  
		Last Modified: Wed, 21 Oct 2026 22:58:08 GMT  
		Size: 14.4 MB (14372091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01877b8666d4b4fc2bc460bde62c83f0331f3d0167f6b683b0f2adf56784068b`  
		Last Modified: Wed, 21 Oct 2026 22:58:11 GMT  
		Size: 92.9 MB (92906133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4ddf1c3cc092cce9253f39465decfc27489a8d26116dcd988d381c90f51ec7`  
		Last Modified: Wed, 21 Oct 2026 22:58:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcbbb802aa32709a5ce834fd607cd4389239fa8bc3aebc230a4b3083033a11be`  
		Last Modified: Wed, 21 Oct 2026 22:58:07 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a153ce38fb077be1b7e5262988fd844894e1a722f2ac8c046ef6e4ef52258d`  
		Last Modified: Wed, 21 Oct 2026 23:40:01 GMT  
		Size: 26.5 MB (26458101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d1e6743b5bdc2012d7d11fe469839eacd12cfcc6e0476be2b09c9d52baf31f0`  
		Last Modified: Wed, 21 Oct 2026 23:40:00 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5e9b6304ce2cf8960880a4a4e055d3cc86e11d65bed11a69394660cf32ba2e7`  
		Last Modified: Wed, 21 Oct 2026 23:40:00 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:3df191ddae8c2dc5af7192b84116edaaacb85c266567bbce02d175c847a310d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1198354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11ef102c4213632e9a1831d96c16216f5bfd456cd4dc95cb174955b4de6e56a4`

```dockerfile
```

-	Layers:
	-	`sha256:66dbadfd2a18afb02f62a64d83e1c47f4988f59287b7af54917a8dc6335f1ba6`  
		Last Modified: Wed, 21 Oct 2026 23:40:00 GMT  
		Size: 1.2 MB (1182932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9756e0d031631a938eb73485ad511a58abb1fd8e19880bce75880fab987cf4e`  
		Last Modified: Wed, 21 Oct 2026 23:40:00 GMT  
		Size: 15.4 KB (15422 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9e511426d2d5aadacb0bd7618d48298863672f36c4bad21664924bacc593d2c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.0 MB (137022463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd0c0bd0134ef57214d9e27b5500f3453f735ce6c8052507234c73fee6428170`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 23:20:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:20:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 23:20:24 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 23:20:24 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 21 Oct 2026 23:20:34 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='440353d641e7726396dff5d9a9d0d17c05a070dc25664c20f9d7efafc2f16cf7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='45aef7cd5ae667c6f5dd100c96a99e5a00e61c512664bb13326cf149b7d37e0f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 23:20:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 23:20:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:20:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:36 GMT
CMD ["jshell"]
# Thu, 22 Oct 2026 00:29:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 22 Oct 2026 00:29:56 GMT
WORKDIR /tmp
# Thu, 22 Oct 2026 00:30:00 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Thu, 22 Oct 2026 00:30:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 22 Oct 2026 00:30:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 22 Oct 2026 00:30:00 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 22 Oct 2026 00:30:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:875cf4f2569cd9113cda9691a62238a5e032242f0626f8f2f665d0554e629a4a`  
		Last Modified: Wed, 21 Oct 2026 23:20:51 GMT  
		Size: 14.4 MB (14426583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4084ebb14a32dd6d83e4a097559b82a3bdb8164175e1914986d04f4a965635c`  
		Last Modified: Wed, 21 Oct 2026 23:20:53 GMT  
		Size: 91.8 MB (91790925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4e834e9ec8b7b6546cba25985b5be4dbf99e601322920cda5b1e2fcd9d70dc`  
		Last Modified: Wed, 21 Oct 2026 23:20:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7951dbb32453398c235abe8cb73740408f41c7f98896fc50b7a186a574a7eb9`  
		Last Modified: Wed, 21 Oct 2026 23:20:43 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8849a17a53a1ecdc0fbf25e281c89403e47d64ecaeb870fbbccc525979fd9472`  
		Last Modified: Thu, 22 Oct 2026 00:30:10 GMT  
		Size: 26.6 MB (26610823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b70f700fcf7b7a820a3f055dc3e24998158b184a4664aed2c87e6215d8fff4`  
		Last Modified: Thu, 22 Oct 2026 00:30:09 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0638eccfcb3cd7a5c77f56f777aefe1bc0f6afb470022b98343fdd8bba5f495`  
		Last Modified: Thu, 22 Oct 2026 00:30:09 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:6c9dcc1b8b308b964057f5616fc426cf8c67bb870b8b1d18ffd371f0843179f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1347795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb370a1d1800e9454c62b9820a87896cef0b4a693cb931ec1a16a77d5d87926`

```dockerfile
```

-	Layers:
	-	`sha256:7444061ae7aa0ccdcd4e884c273bafbff01fe490b8847803885dca1edd26c1c4`  
		Last Modified: Thu, 22 Oct 2026 00:30:09 GMT  
		Size: 1.3 MB (1332281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:194fb98040de8c1be3908d53b71c5ced437ca759bd5f988fc944bcd3ef4857c2`  
		Last Modified: Thu, 22 Oct 2026 00:30:09 GMT  
		Size: 15.5 KB (15514 bytes)  
		MIME: application/vnd.in-toto+json
