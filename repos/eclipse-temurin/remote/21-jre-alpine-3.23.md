## `eclipse-temurin:21-jre-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:034d979877898d295f5e1c29559a2678f3efff1ed15c2ab4395787141b8df6d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-jre-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:d5cdce7755afed2238a6556f2be9eca695e103e61bf8229dd7ef50eb4c89e495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (74002778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad8578c58890a646623920ba633f191ca090190ac0937636ada4084c5fbba4e7`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:19:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:19:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:19:30 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 21:19:30 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Wed, 21 Oct 2026 21:20:51 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='98e15ae359e1f87160ee4c0abb43336513e41712d439fd4a805a5474af32b2c7';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='7bc7c2f9ba5ffea5f727e14581964bd54294b8edc2be9a79ea6393f8d0799200';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 21 Oct 2026 21:20:51 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:20:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:20:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e28ac739b33e6834bc2139aa7999d0180cd0a366205f8d3532e8fa8c5683b9`  
		Last Modified: Wed, 21 Oct 2026 21:19:44 GMT  
		Size: 16.9 MB (16891298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2105c582a867a0386eec94f040eca3f3b4cf39574f5edcb290495bf2a0fb782c`  
		Last Modified: Wed, 21 Oct 2026 21:21:04 GMT  
		Size: 53.3 MB (53256664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24c35f5bd50930df12c1bbe3f85c2cc95496293c200563ff97134d6412efde1`  
		Last Modified: Wed, 21 Oct 2026 21:21:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8bf078a9c3187f5eddc540eafcccd66e7e111afcdf3239b020abf6d60af870`  
		Last Modified: Wed, 21 Oct 2026 21:21:02 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ea21f1588fb7722956f79264aeabc32a78c51c7272a13380ba51f6832c1e7e75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **905.4 KB (905365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c76e0e9abb6a5b8ff0d82c4e4474a6ab24205bb64f429e444c4f379640e5cad`

```dockerfile
```

-	Layers:
	-	`sha256:f5468abc33edce2b423d61f1b2c0615872fe1526a4e37fdda0f180ff6809fdfa`  
		Last Modified: Wed, 21 Oct 2026 21:21:02 GMT  
		Size: 886.3 KB (886308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:446ca4a41ab17d49f28787a91e8f8d9629500306d2928af4bb70fc864ac1af86`  
		Last Modified: Wed, 21 Oct 2026 21:21:02 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-alpine-3.23` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:707e59a9e74b63bcf691bbbcfbab62a86ea788bf7905d31d21c665ecdfe72a8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73357133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed609562a021478fb71e4078af5d4cefa456196f3fe8497f4f06482aa13b40bb`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:20:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:20:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:20:11 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:20:11 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 21:20:11 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Wed, 21 Oct 2026 21:20:37 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='98e15ae359e1f87160ee4c0abb43336513e41712d439fd4a805a5474af32b2c7';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='7bc7c2f9ba5ffea5f727e14581964bd54294b8edc2be9a79ea6393f8d0799200';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 21 Oct 2026 21:20:37 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:20:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:20:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2373984ca85cb9aed8d67309c0165c35a06d75e5da0debd0999d13b327483b68`  
		Last Modified: Wed, 21 Oct 2026 21:20:49 GMT  
		Size: 16.8 MB (16841218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3743f1b7b088fe8d9b0eab462f160991edf71a7bf308db200ff5d59fcffdc8d2`  
		Last Modified: Wed, 21 Oct 2026 21:20:50 GMT  
		Size: 52.3 MB (52323830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1ff3a69a4b18685ca618bffdd054acf17cc51170fd9d171a19e6d3bcfbfcc95`  
		Last Modified: Wed, 21 Oct 2026 21:20:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cf88cd5b15a899f693bc77d4c8815e47d52b9327ebddd32dbca2883c35f1147`  
		Last Modified: Wed, 21 Oct 2026 21:20:47 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4d8c81f89be43bcc6ff577489ed7b32e52463bf33fd2577f044fb2db9677f019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **904.2 KB (904239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26e71afafdf39bafba4efd7049aa8edffef10363e8e3e5e389b7fb6b954b5efb`

```dockerfile
```

-	Layers:
	-	`sha256:8af545e0d1f3b89a03a2eaaf8b2016928e3a33cc8a2ca1949c7f67a95475d5dc`  
		Last Modified: Wed, 21 Oct 2026 21:20:48 GMT  
		Size: 885.1 KB (885072 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9aac55cc3ee11fefcf481e72159918e64f19ee666bda082d157ce3b7d11b164`  
		Last Modified: Wed, 21 Oct 2026 21:20:48 GMT  
		Size: 19.2 KB (19167 bytes)  
		MIME: application/vnd.in-toto+json
