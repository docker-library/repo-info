## `eclipse-temurin:21-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:8769a23340df6c509b21e609588e53e2440d13497beb4e78afa3727466f44430
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:ce2ff01ecec649f2f8a1d200379c7ad6af4f855ca313948ba43cc342e97f413c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (182975320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e92fb11a9c6d3e67eb40938b7cb718460ff3e8b452ade6c289a487a16d28079`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:20:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:20:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:20:46 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:20:46 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 21:20:46 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Wed, 21 Oct 2026 21:20:53 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8242627927adc90ac2561d0812dd39890ebc21ef09b550bc2e8b93640b8af4f8';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='bd8824214e42b33333c7f55a039ea078ad6ea6be20d7c5b011c801fb2bdb44f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 21 Oct 2026 21:20:54 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:20:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:20:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 21:20:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6107f08e981d517fe1b3fcc22e1df39df4e25ad771f4bc644ab6b3b6da357c7d`  
		Last Modified: Wed, 21 Oct 2026 21:21:11 GMT  
		Size: 21.0 MB (21018034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1658c85ee551d0928cf07581497ff5415ed51c657cc4475d08dc1f7a6109e87c`  
		Last Modified: Wed, 21 Oct 2026 21:21:13 GMT  
		Size: 158.3 MB (158329305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afe7b933c72a215ca267f601a00ff57cc40877cf05842f172601214df11014e8`  
		Last Modified: Wed, 21 Oct 2026 21:21:10 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e56d056f0dee53a6ef546b62a1c2a3a15354895bd76f9100a3c5e6d07728297b`  
		Last Modified: Wed, 21 Oct 2026 21:21:10 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3b524f982f7f133ad2fc982b2bc6124c67b0f85d09932e6ffef1a51d8742edce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1107200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e8e4910aaca0dcbdffd623ce27383960a2ab682afbb9bb601c3a1e450ee93d9`

```dockerfile
```

-	Layers:
	-	`sha256:38079980b7dd4548ae7be5bc117e4b415bb4861623eaec45da498499f5854335`  
		Last Modified: Wed, 21 Oct 2026 21:21:10 GMT  
		Size: 1.1 MB (1086750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d4a51f84f290158104fb6d595e40407ba8e5d9681630212cb4092825e775aa0`  
		Last Modified: Wed, 21 Oct 2026 21:21:10 GMT  
		Size: 20.4 KB (20450 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-alpine-3.21` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:fb892d488dc3fd658f045bc478ef22a54f293b411a9d1d4b681e5d2f039bec22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.4 MB (181375095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6465ea398cd676907b77d60a8e6c83b411986998a6eb33adaeb732f239731120`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:20:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:20:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:20:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:20:34 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 21:20:34 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Wed, 21 Oct 2026 21:20:42 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8242627927adc90ac2561d0812dd39890ebc21ef09b550bc2e8b93640b8af4f8';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='bd8824214e42b33333c7f55a039ea078ad6ea6be20d7c5b011c801fb2bdb44f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 21 Oct 2026 21:20:43 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:20:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:20:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 21:20:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6337e439e74efca640b63b68c02811daa6c60cad9ce556f55904714a822968`  
		Last Modified: Wed, 21 Oct 2026 21:21:00 GMT  
		Size: 21.1 MB (21062950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f45acb3bdd6b7e496b2160c2a5bcbe367e10c84c7fe672a785e4f5429267e671`  
		Last Modified: Wed, 21 Oct 2026 21:21:03 GMT  
		Size: 156.3 MB (156335183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1875e45fe1251ac31b1f00c8a04dbd886016f935ae2ec2cd24072bffe29995c0`  
		Last Modified: Wed, 21 Oct 2026 21:20:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd2c43ea86c5089fa157776382067744e96987869b21ec8d564fa87bb9b7ae0`  
		Last Modified: Wed, 21 Oct 2026 21:20:57 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:20bf31ae8895af45959d9b15d0125ac5c49617b55de18d49b3a3b0c8d20066d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1257324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483e919a5f1e30dd0b9bbac30c9d0868938a9e6033d191a4d32ce3c553a07567`

```dockerfile
```

-	Layers:
	-	`sha256:2dd6e5ab02dc5933bb73b8d21edc218ad644f68bb65e3e6f2d2f8b4cc350630e`  
		Last Modified: Wed, 21 Oct 2026 21:20:59 GMT  
		Size: 1.2 MB (1236752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1df511920f646c0b88384854459313a61bfeebc20fb1bc126ceb2d30d9a4258`  
		Last Modified: Wed, 21 Oct 2026 21:20:59 GMT  
		Size: 20.6 KB (20572 bytes)  
		MIME: application/vnd.in-toto+json
