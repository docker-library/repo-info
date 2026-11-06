## `clojure:temurin-27-alpine`

```console
$ docker pull clojure@sha256:bf97204155f72d000318b544527b290747959fcb6b6e7448911381a6604875e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-27-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:3ee7129e77632137b23586d454ebe74743bcc5edcb8762d6f69981f3d161b3b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.6 MB (137602221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9159f4afbd3b93e0326f463ad952e4a14d5ca01b4499c7fb80313612899486e6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:19:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:19:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:19:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:19:12 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:19:12 GMT
ENV JAVA_VERSION=jdk-27+35
# Thu, 05 Nov 2026 19:19:21 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='440353d641e7726396dff5d9a9d0d17c05a070dc25664c20f9d7efafc2f16cf7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='45aef7cd5ae667c6f5dd100c96a99e5a00e61c512664bb13326cf149b7d37e0f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 05 Nov 2026 19:19:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:19:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:19:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:19:23 GMT
CMD ["jshell"]
# Thu, 05 Nov 2026 20:28:47 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 20:28:47 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 20:28:50 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Thu, 05 Nov 2026 20:28:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 20:28:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 20:28:50 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 20:28:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3082458f008ca28bd68707854b95556dbed015e482a78fa8ac778eebc06f341e`  
		Last Modified: Thu, 05 Nov 2026 19:19:38 GMT  
		Size: 14.4 MB (14374227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8943366f03fcc5d06d787e5f8aaa6a676c381bb5ca2732bc4ff1bffa5669cd0`  
		Last Modified: Thu, 05 Nov 2026 19:19:39 GMT  
		Size: 92.9 MB (92906066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfcefcdbcd2edef56703e2b712bef5d25cb42f9d4dc1fe60e17c1eb00501785b`  
		Last Modified: Thu, 05 Nov 2026 19:19:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7263295670e0bec5ec834b545dfe10a1bb361bcbdbd5325f4a2bb356f475c640`  
		Last Modified: Thu, 05 Nov 2026 19:19:29 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86038175b85bdc266eed15221b961b0b7e0328caeed08c156e5bb6126553e86`  
		Last Modified: Thu, 05 Nov 2026 20:29:01 GMT  
		Size: 26.5 MB (26464609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a1cec404deebcc8e301474298e3763b46181930bc7359d49e50757391100d60`  
		Last Modified: Thu, 05 Nov 2026 20:29:00 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b19264397e0a8a7e184893a39799fb83237737bfcb06761f32518468792f70f`  
		Last Modified: Thu, 05 Nov 2026 20:29:00 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:7350ca9d1f290bacfb200dbcacb91f64cd1509d9d2385c777e446ae9e33a3e86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1198358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d79e7ef27f4c6d712b8da5536bfe2496d9ee41e6abd79b0832933306a84639b`

```dockerfile
```

-	Layers:
	-	`sha256:ab897179f0f9499e3317ac4cdbd947152f5db812d49b5cf1fa258031f56c46f7`  
		Last Modified: Thu, 05 Nov 2026 20:29:00 GMT  
		Size: 1.2 MB (1182936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7677054d527de4e1c1915652b873f427f7c1464383a6ac1ce23d8656a128ac8e`  
		Last Modified: Thu, 05 Nov 2026 20:29:00 GMT  
		Size: 15.4 KB (15422 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c4a60ca81388cc4020036026fe159c718d235864a55017cb92de8307666ba746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.0 MB (137033186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fae00acc29801c88edff0b6028332c345afdfb3b850d7f509a63396c2942e4c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:14:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:14:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:14:10 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:14:10 GMT
ENV JAVA_VERSION=jdk-27+35
# Thu, 05 Nov 2026 19:14:19 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='440353d641e7726396dff5d9a9d0d17c05a070dc25664c20f9d7efafc2f16cf7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='45aef7cd5ae667c6f5dd100c96a99e5a00e61c512664bb13326cf149b7d37e0f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 05 Nov 2026 19:14:21 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:14:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:14:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:14:21 GMT
CMD ["jshell"]
# Thu, 05 Nov 2026 21:35:13 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 21:35:13 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 21:35:17 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Thu, 05 Nov 2026 21:35:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 21:35:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 21:35:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 21:35:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2236bf9be55a388dff4aedff14163d594d765ba5b8caabfe85701c55ea5afccd`  
		Last Modified: Thu, 05 Nov 2026 19:14:36 GMT  
		Size: 14.4 MB (14426912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153b5e43a6d1967ccc3b86df66761fd02b61bbbc6e3e6cdbbff1f06554cb2a24`  
		Last Modified: Thu, 05 Nov 2026 19:14:37 GMT  
		Size: 91.8 MB (91790900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0320b64047158996296aaf5e8a422b50feef43ebc4a5d13acd93adf613c32d85`  
		Last Modified: Thu, 05 Nov 2026 19:14:35 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0d5d3524956ba0f974e8dce4e8a7344dc822d1d66acb7449cff123ca8dbcb1`  
		Last Modified: Thu, 05 Nov 2026 19:14:35 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aae45d1bf2f0949d8aa9a658dc48f3eb2f6799dee4a361794f6b7c5061d0402`  
		Last Modified: Thu, 05 Nov 2026 21:35:26 GMT  
		Size: 26.6 MB (26621138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb2bd90607bf1268292bfe1f9dc49b285f0b3dc2949ff1aa84013233d823545`  
		Last Modified: Thu, 05 Nov 2026 21:35:25 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cb304e2bf340a9f13fabe004a771036ecd615628520a6896c6d8118de49d8ee`  
		Last Modified: Thu, 05 Nov 2026 21:35:25 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:691205c6f9be3d68b604cdca166bfff028c596764624c2d38a273dcfc8155418
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1347798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd39db33090837b5b675b9c7f4a21f9547eb6ebbcabc7fc0c7528954369b9986`

```dockerfile
```

-	Layers:
	-	`sha256:94e533a553e0f284e01f71dd505136a6db9053275d5d402fa85ef6aca48fbe22`  
		Last Modified: Thu, 05 Nov 2026 21:35:25 GMT  
		Size: 1.3 MB (1332285 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4a5810f8a13fcff4f527960e134a0b7abaf1f888654dee36ca10c3f429f2858`  
		Last Modified: Thu, 05 Nov 2026 21:35:26 GMT  
		Size: 15.5 KB (15513 bytes)  
		MIME: application/vnd.in-toto+json
