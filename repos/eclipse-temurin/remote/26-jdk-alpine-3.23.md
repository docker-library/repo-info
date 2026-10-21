## `eclipse-temurin:26-jdk-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:18689d46aab9ee42b863ed672b1f30f71b8afeed142192ab03237b8ddc44d624
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:26-jdk-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:74491eb4be100e33a9dcce41420e65ea67bc860eafb76ec8d4be7763ad6fc449
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (111983177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f6c8713437e586d7c44be564e5b93a0a0386e7c1e3023b392599ca247b09127`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:21:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:21:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:21:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:21:20 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 21:21:20 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Wed, 21 Oct 2026 21:21:30 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='60186535f49539d060d6e523a714f04e32dcc72643d9eba24738e41323fca79d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        x86_64)          ESUM='7f0ebccd9a8b4a554f5caac8768f28ff9d1b1b74367db7d14639b11c9b3d9e41';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 21:21:31 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:21:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:21:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 21:21:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d18469719c71c11dc0ab4c364b648f1d8d3a54ea6db95fa73d4ef0a77b5fe7`  
		Last Modified: Wed, 21 Oct 2026 21:21:46 GMT  
		Size: 14.3 MB (14325952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad61cc17328a838a507fdcbcbb6a554a227a907bec4e0f837e163f6dedf3a68`  
		Last Modified: Wed, 21 Oct 2026 21:21:48 GMT  
		Size: 93.8 MB (93802406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c983d18316c789feb1229cc94cbc57f9aced5f5b27ea91f08da18a349b97df16`  
		Last Modified: Wed, 21 Oct 2026 21:21:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfa2a425a25ee31adcb103c8d0512b7a4fc667ae08c4a808e34bfa50d446921`  
		Last Modified: Wed, 21 Oct 2026 21:21:46 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:826affa49dcdafbb11b5ec7354b99a82946355d7bcb30df222ec0caa1eed7f15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **967.1 KB (967105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acdfb165e9424626973a3d82aeff00ca6f53e7219f7f4207b7094ce9b4b50a4`

```dockerfile
```

-	Layers:
	-	`sha256:57d1520215ac1af2c06085a3bdbf4822f32c427be263a212a700206ee2e80da0`  
		Last Modified: Wed, 21 Oct 2026 21:21:46 GMT  
		Size: 946.6 KB (946559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44db306aa1a5fee5d1fb14fffa8dfeacbf0e22e5a7192ce8dec2aa4da3227e03`  
		Last Modified: Wed, 21 Oct 2026 21:21:46 GMT  
		Size: 20.5 KB (20546 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jdk-alpine-3.23` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:9b585f3e65f045c8d0226288adb698fbb7ab67753caa04cb7f6de3d1c5110fa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111264197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6e0bb5da6bf28d9d1e8572c1360aead5b85501475e4d82bebedc3b38362bdee`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:21:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:21:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:21:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:21:10 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 21:21:10 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Wed, 21 Oct 2026 21:21:21 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='60186535f49539d060d6e523a714f04e32dcc72643d9eba24738e41323fca79d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        x86_64)          ESUM='7f0ebccd9a8b4a554f5caac8768f28ff9d1b1b74367db7d14639b11c9b3d9e41';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 21:21:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:21:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:21:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 21:21:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd09f87870ffb6cdab8f1da15fa4f56465fb2829fefd5a8cf3dcab37fd4e06a3`  
		Last Modified: Wed, 21 Oct 2026 21:21:39 GMT  
		Size: 14.4 MB (14386529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de3950057b07fee64e896489557c448b8eb785e1285d08216b09776ab901349f`  
		Last Modified: Wed, 21 Oct 2026 21:21:40 GMT  
		Size: 92.7 MB (92685581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da648414ad212ffd91593a8cf919f51444af20d8c2967d4b2d265492b38b5624`  
		Last Modified: Wed, 21 Oct 2026 21:21:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a927ca9537e34b71f3efb5ca67199f4dd4f977cf5c79c3d750e739e048e0de58`  
		Last Modified: Wed, 21 Oct 2026 21:21:29 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a901ea09aa82ae440fad5203bdb2bc661521eb0e9a47a9ce9ff8870f89231db1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1116577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53685a83c1bb02aea03683673844df2560b545f7c65554f8613296129e0ad93b`

```dockerfile
```

-	Layers:
	-	`sha256:998a2dcef50acdca8cb02b8dcb8a759153ec1dfbeb35b72690b58bf7a27b6432`  
		Last Modified: Wed, 21 Oct 2026 21:21:38 GMT  
		Size: 1.1 MB (1095908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09e101e8ac00dd271b1d61e3e41da602ca5615d5753f25a780a2ee95e37c9109`  
		Last Modified: Wed, 21 Oct 2026 21:21:38 GMT  
		Size: 20.7 KB (20669 bytes)  
		MIME: application/vnd.in-toto+json
