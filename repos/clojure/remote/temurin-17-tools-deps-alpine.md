## `clojure:temurin-17-tools-deps-alpine`

```console
$ docker pull clojure@sha256:f614c15cfe341dd295b5c60138103d705940e39e4ade75f60e6aa71cd968d2f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:341100f6f0cbb6e5a3bc6e9aa01afb81150de03a57c9f89a498bc57a6ed67075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.0 MB (195956984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56b35151cbe1a7e9388a7e28b9d41e7df13f5c0b07e337edd310588e0dec80d8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 21:56:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 21:56:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 21:56:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 21:56:26 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Tue, 03 Nov 2026 21:56:26 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 21:56:33 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='db018054d52c1c109ad128c1412ead2d84ae91052ce60ca370df17b6a89831f5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 03 Nov 2026 21:56:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 21:56:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 21:56:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 21:56:34 GMT
CMD ["jshell"]
# Tue, 03 Nov 2026 22:18:01 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 03 Nov 2026 22:18:01 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:18:04 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Tue, 03 Nov 2026 22:18:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 03 Nov 2026 22:18:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:18:04 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:18:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc0624e917b83aaf03e242bc462d24bd95decd45759241d246c0a98bdf2fc8a`  
		Last Modified: Tue, 03 Nov 2026 21:56:49 GMT  
		Size: 21.4 MB (21439965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd2f40a15e5828cbeb475e4de2a3925b6193e5d6a0177250833253f68d0d60f`  
		Last Modified: Tue, 03 Nov 2026 21:56:52 GMT  
		Size: 145.2 MB (145238108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d796ce7c94d07e26701b1bc6376d5e21299c235fc5d095c13b3c1d5caeb32d7d`  
		Last Modified: Tue, 03 Nov 2026 21:56:48 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7d45ac6b96edcf369cda70c4c45f070b21667db0b623f0ea06449134aa54f1`  
		Last Modified: Tue, 03 Nov 2026 21:56:48 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5ddafed70064d588a3da87af34af92fdf0a24bcde530cc47112934ef8f69242`  
		Last Modified: Tue, 03 Nov 2026 22:18:13 GMT  
		Size: 25.4 MB (25422160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a325f7c58a5edf092e6f4ecbc0c85e91d90c7b6539215762698696e5c8aac82`  
		Last Modified: Tue, 03 Nov 2026 22:18:12 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff8aaeacd129aa1d9f11edd99aa44e489787921c712fef7d5507e04b5b619eb`  
		Last Modified: Tue, 03 Nov 2026 22:18:12 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:714c51c1ceb03defc72f8990dc29873f39028bb0ff0f2bc7c2eff0257e21c97c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1302121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd356eb281a992df8160c393875ac80aa58e7a72c5ce835ed51788615c2cd065`

```dockerfile
```

-	Layers:
	-	`sha256:56da6c6691ec590f073f8eff0d3882a15c30c7a6589b5519126e1101a8feaf54`  
		Last Modified: Tue, 03 Nov 2026 22:18:12 GMT  
		Size: 1.3 MB (1286690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6321b664fc5cca5939b4742eaab87a7585aaa7e49257609377c776bb39ef084`  
		Last Modified: Tue, 03 Nov 2026 22:18:12 GMT  
		Size: 15.4 KB (15431 bytes)  
		MIME: application/vnd.in-toto+json
