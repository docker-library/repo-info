## `clojure:temurin-25-tools-deps-alpine`

```console
$ docker pull clojure@sha256:b6215cb0285a2fd05a2b52e81c9af1731724c63c23bdf39800a9bf6eecd75766
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:79a77ff9c4bb9be567f7eef330858107e8651cde6941cc12aa63c0ae79122a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136355750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b81dbcb32145ff96cadec1da85802a739afad4f623720339e0415ac4221567d8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 19:14:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:14:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:14:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:14:52 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 29 Oct 2026 19:14:52 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 29 Oct 2026 19:14:59 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='d02eadc0a0f93faba4be38c8657eb8eef842103a4c7c2400f5827dbd90fc21c9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='efc86581260b73c340c313e7577c4c85d6a8a899edc3748d78bee5238fe44a4e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 29 Oct 2026 19:15:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:15:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:15:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:15:00 GMT
CMD ["jshell"]
# Thu, 29 Oct 2026 20:05:42 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:05:42 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:05:45 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Thu, 29 Oct 2026 20:05:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:05:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:05:45 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:05:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eb45b395123c6a1ce4ec62b23cf94618e9b325f9c7a58e00b2f2eac960cf183`  
		Last Modified: Thu, 29 Oct 2026 19:15:16 GMT  
		Size: 14.4 MB (14371873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c612d305a2a8de9b17efd435a33be852767e64fba32fe1f539e9ab009537557`  
		Last Modified: Thu, 29 Oct 2026 19:15:17 GMT  
		Size: 91.7 MB (91662929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322dda1a77ef5557bc041cf413b5abe5cc3f500209b477b169d3fc1cf096b2dd`  
		Last Modified: Thu, 29 Oct 2026 19:15:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f13d875536ccd5fdc17c0f274f7aee0d7341763d5715d3839994f8f1094cd40`  
		Last Modified: Thu, 29 Oct 2026 19:15:15 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14cfcfe79921273b50ac1497ba5637f1ad9b9d28387fe57cda1d3114ab893427`  
		Last Modified: Thu, 29 Oct 2026 20:05:54 GMT  
		Size: 26.5 MB (26464191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39706f9b2067742d8d5c56a3c90c85d72210a888dcbb8909e67ff79f55eaeaf7`  
		Last Modified: Thu, 29 Oct 2026 20:05:54 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00b4cc794071a610027f3e1a20bd4cac00327cfc67fb40f211ab65ef0c8e535`  
		Last Modified: Thu, 29 Oct 2026 20:05:54 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:1ebc0a604c004f7b1ae98f175531fb958677aa5e6695ef4dbae7cb1ba5eec314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1201506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c0f42183d2d89eadc17c37418e6eec112e3be84b73e43cf8978c98db1094d5f`

```dockerfile
```

-	Layers:
	-	`sha256:1e0930cb067a1361c91a1ec6c8444ea3aa534d1e83bcc6bcfde4e2ff9414e4b7`  
		Last Modified: Thu, 29 Oct 2026 20:05:54 GMT  
		Size: 1.2 MB (1186081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ccc58657a3c638ff681bba79a505f68c7b95094f03584b9066c0f2ff6a68041`  
		Last Modified: Thu, 29 Oct 2026 20:05:54 GMT  
		Size: 15.4 KB (15425 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7928239e4e9dcde7edf831573072ccb02a78ad032a8ad1097d916763ae5b1d94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135790428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087d39ab18c489aa21881a98726ef64d34d21688d783a4feab4ff49e089406aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 23:20:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:20:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 23:20:13 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 23:20:13 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Wed, 21 Oct 2026 23:20:21 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8d19373d427017d86ac87cf6a47ba49746be864832f60b52b7e3b1531c6b2cb8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='f18648ee5ce45261f50dc9493fdae7ddebaa2a7a857cafda3e2a448a79c03dee';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:23 GMT
CMD ["jshell"]
# Thu, 22 Oct 2026 00:29:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 22 Oct 2026 00:29:40 GMT
WORKDIR /tmp
# Thu, 22 Oct 2026 00:29:44 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Thu, 22 Oct 2026 00:29:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 22 Oct 2026 00:29:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 22 Oct 2026 00:29:44 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 22 Oct 2026 00:29:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1925f5d03239a36fc9f03b115d2e5b92dc16f876eeb732ed46b48002dcecb5f7`  
		Last Modified: Wed, 21 Oct 2026 23:20:39 GMT  
		Size: 14.4 MB (14426609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562f033fac9bf045bf190e4b2ddc72cbf318dbdd7b25f3bccd29ce25af7422ee`  
		Last Modified: Wed, 21 Oct 2026 23:20:44 GMT  
		Size: 90.6 MB (90558872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e943606091df57124abb9c8d6433a2ce29045e747b95bb2a68961a93e76bee3d`  
		Last Modified: Wed, 21 Oct 2026 23:20:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddcc2580d02d2fbdc4df3760c57b4f1d100d320ac01f05fe05ac8a33a47e34db`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b743749743df8ba2991288670a49f70462699d145d9d15cd8ea3c7c653c6b4`  
		Last Modified: Thu, 22 Oct 2026 00:29:52 GMT  
		Size: 26.6 MB (26610812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34c8d151ba4e496e13706b3edbd36c46e81b236ad3a1d08ffe006344d4b92e5`  
		Last Modified: Thu, 22 Oct 2026 00:29:52 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f1b502f845a379928c0110a1ad2eca1db1a3e51125496ccf9aeed6513fc360`  
		Last Modified: Thu, 22 Oct 2026 00:29:52 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:bc58d0cc93bb123e7b99a34f5e8866a55a94235bab9de203ecb1c2933701a2f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 MB (1351572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfd84284a902361cbee29c163ff8d3b94b012aa353040bb48ecfc01eaa9763f5`

```dockerfile
```

-	Layers:
	-	`sha256:f72e92b797d8a47e62d2b43beab4aa89538b06af8903d0f1f6a1e7e3f7151874`  
		Last Modified: Thu, 22 Oct 2026 00:29:51 GMT  
		Size: 1.3 MB (1336053 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd28fb60479ad38c0448726e88a83d1e5084c5cb45ddd173c84ec40625755153`  
		Last Modified: Thu, 22 Oct 2026 00:29:51 GMT  
		Size: 15.5 KB (15519 bytes)  
		MIME: application/vnd.in-toto+json
