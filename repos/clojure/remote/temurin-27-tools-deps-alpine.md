## `clojure:temurin-27-tools-deps-alpine`

```console
$ docker pull clojure@sha256:5a0520af8712b2b543a7f0c9ce0b5b91e9d40a42158115fd4a4961aa5890ac21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:b7ece6397112b846ace8e21ab8fb0c5678fa13a912770409bc6f053d649eb3a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.6 MB (137631121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b48fbb181a69985aa2a13ef07cef308ca8d7c7e13ad011f6e145855b4f370083`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 23:59:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:59:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:59:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:59:27 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 09 Nov 2026 23:59:27 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 09 Nov 2026 23:59:36 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='d6e8d5e5c101d9319a995405de1e800b02f718ac226dccd8c3b11dae46479ae0';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='576a3b8ba79aa5a8bc7f1cb8b54aeffab8b2d1fb84a8fde4f8f3035ac65dfca1';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Mon, 09 Nov 2026 23:59:37 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:59:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:59:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 09 Nov 2026 23:59:37 GMT
CMD ["jshell"]
# Thu, 19 Nov 2026 22:09:02 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:09:02 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:09:05 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Thu, 19 Nov 2026 22:09:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:09:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:09:05 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:09:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93ed93a99e5d55f8af8dc3a24c77d471ff9526c1241d219636ecfc2769b6eb20`  
		Last Modified: Mon, 09 Nov 2026 23:59:53 GMT  
		Size: 14.4 MB (14374223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c256599417f464ffb66ee1fb6120d07620abb51e8d2cc4f285b294000ef1bfe`  
		Last Modified: Mon, 09 Nov 2026 23:59:55 GMT  
		Size: 92.9 MB (92933924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd18cfa921ae379a99dec4f661111b42962de5e846feec79ae47be9f0ea2516`  
		Last Modified: Mon, 09 Nov 2026 23:59:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6ffe6cf444c3d3eb425f2be5e9b207f0cd14119135c24bde3273a7b142836f`  
		Last Modified: Mon, 09 Nov 2026 23:59:52 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b550b397c9ce44738ce5cba9f317667620f3f26e926a50b6fd865bfcaae95258`  
		Last Modified: Thu, 19 Nov 2026 22:09:15 GMT  
		Size: 26.5 MB (26465156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52d6d20320c2dc5177416ca84c0e5d836e6ee774063cca0452d2f408ae926126`  
		Last Modified: Thu, 19 Nov 2026 22:09:14 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d0b783f747f34cb152e9dd93ba43af1b94932a498fcc4674cc7524a752793f`  
		Last Modified: Thu, 19 Nov 2026 22:09:14 GMT  
		Size: 903.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:5604cb080dc2d8a301651e3da6aa539a33d7baf81355e2fead06fac70a3eaaa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1197778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d8541aa024f6afcbb9ea70e99a737ddb23f8d783a8945629b44a34b8ee87ec`

```dockerfile
```

-	Layers:
	-	`sha256:c8c9e425d2362c16753673056bd147d4a5258be6d5757e19a4ae39db8d362de6`  
		Last Modified: Thu, 19 Nov 2026 22:09:14 GMT  
		Size: 1.2 MB (1182353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5f61713b83e764ff45fb53d51903c09df8bd15fea96b4042c1400741fb1e162`  
		Last Modified: Thu, 19 Nov 2026 22:09:14 GMT  
		Size: 15.4 KB (15425 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cf0d0e9e5e2086f8541da16f855f7fa3f230d1130a80f25e92286a8012a9cd9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.1 MB (137061141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f9cf77f1bcc566ee36ba9b4c208169f459c2c37f8065008c2f32ac402f58e4b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 23:58:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:58:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:58:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:58:37 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 09 Nov 2026 23:58:37 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 09 Nov 2026 23:58:46 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='d6e8d5e5c101d9319a995405de1e800b02f718ac226dccd8c3b11dae46479ae0';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='576a3b8ba79aa5a8bc7f1cb8b54aeffab8b2d1fb84a8fde4f8f3035ac65dfca1';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Mon, 09 Nov 2026 23:58:48 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:58:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:58:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 09 Nov 2026 23:58:48 GMT
CMD ["jshell"]
# Thu, 19 Nov 2026 22:09:06 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:09:06 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:09:10 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Thu, 19 Nov 2026 22:09:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:09:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:09:10 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:09:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509db30f8a3b67081ba9649deab24a42f9804d7c2d1589a1d0e930b0a5c683ee`  
		Last Modified: Mon, 09 Nov 2026 23:59:03 GMT  
		Size: 14.4 MB (14426929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c1d377e3e0fc1ee3943a785051d5c3e51327bb02e47b4008863a69226e77d76`  
		Last Modified: Mon, 09 Nov 2026 23:59:05 GMT  
		Size: 91.8 MB (91820890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:275a03a2423586cc92dcb9089c7d1908a25d8211f50c0872e9d9541d5218860e`  
		Last Modified: Mon, 09 Nov 2026 23:59:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27dad9cbad193e2eae1c53433c54a10ad15b9e08b2006cb2f38f6b20be95014`  
		Last Modified: Mon, 09 Nov 2026 23:59:03 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f21492e6cb47a69936296ad72efadb2886456de036126ed37836c21eae9de6e8`  
		Last Modified: Thu, 19 Nov 2026 22:09:19 GMT  
		Size: 26.6 MB (26618582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02d84a3459d5bc1052ba2ff230bd810b1f898c6107a8f6fbe77fc5b19b0c315a`  
		Last Modified: Thu, 19 Nov 2026 22:09:18 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad54849c9e68fcd7a4d7ac5750296b1e58c8a55dbfb3fe5d61216a4a7a583e6`  
		Last Modified: Thu, 19 Nov 2026 22:09:18 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:dff71c004fe6bac8440d0a0f2c75df927c6f21dddee568f1aeb81200b9028e9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1347219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:029ea2570901282d3950e2248ac4da58b63da6f2d484a15a69f5605bb7147973`

```dockerfile
```

-	Layers:
	-	`sha256:0ce686c2731f79db35a13291466d91e299e1914046cb91a0c057bc155b9ee531`  
		Last Modified: Thu, 19 Nov 2026 22:09:18 GMT  
		Size: 1.3 MB (1331702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:421bc5c6c9373eeb1ef5cfd534e346107a090e13a5f3382ac2103d9841984af9`  
		Last Modified: Thu, 19 Nov 2026 22:09:18 GMT  
		Size: 15.5 KB (15517 bytes)  
		MIME: application/vnd.in-toto+json
