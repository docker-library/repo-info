## `eclipse-temurin:26-jre-alpine-3.24`

```console
$ docker pull eclipse-temurin@sha256:9eedff2367194d11eddd6f14101b444945a708c986270cd5716b934596ba3a31
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:26-jre-alpine-3.24` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:c539f08296bd2c100c2a22268b69887ed119bde77bd23dc70aee8ca304d43b66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.2 MB (77217774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f91721b6c239d2db11ea0938eee08c384b7b9ddd3cee22a564bb4070a8bd9de5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:39:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:39:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:39:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:39:39 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:39:39 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 25 Sep 2026 22:39:44 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='e69231c395189e522128c0cd4a77ba51afdb8a4d20043432e782c64598e75f09';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_aarch64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        x86_64)          ESUM='6e888041f134826787d62bbf35fd007ea27ad18588c4c5e46e78d2706449d368';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Fri, 25 Sep 2026 22:39:45 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:39:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:39:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16b05fcebfe8c57f93542dd1148937505f445c81c78972964c840047977935e7`  
		Last Modified: Fri, 25 Sep 2026 22:39:56 GMT  
		Size: 9.5 MB (9514370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf772278932394d5aebb5e8d704d84b351fe82d17342a913d6e443ea391e8c6`  
		Last Modified: Fri, 25 Sep 2026 22:39:58 GMT  
		Size: 63.9 MB (63851076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b6093df39ca87004ccdfbb804bc19e2793c1c831175f095ea7f96a649e0d0b1`  
		Last Modified: Fri, 25 Sep 2026 22:39:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1131cca3cc01b26563030be9a9fd89d8ca3927d971413be6ba654557b480d2b7`  
		Last Modified: Fri, 25 Sep 2026 22:39:56 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a37acd3aa7b39e07b5dbc967703a47af1669e3633ece9c0b4e890ac977ee306d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **804.0 KB (804045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2ef79b5bbb7d610ed98599140e0e6350c8d2bd221399d4edbb7443d56a7933f`

```dockerfile
```

-	Layers:
	-	`sha256:b080b829ea64de907daaead087257b8a9a73063445e62e240eb65b86cb6f7efd`  
		Last Modified: Fri, 25 Sep 2026 22:39:56 GMT  
		Size: 784.2 KB (784216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:837a4cc68722266d481509e08222a1f3ea563aea16d75d3df76f423ae9a42543`  
		Last Modified: Fri, 25 Sep 2026 22:39:56 GMT  
		Size: 19.8 KB (19829 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-alpine-3.24` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:82f603531da6e700d8ffdb9f586c161a96a384663bc560c825bb4ea8e145c705
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.4 MB (76441173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9d8e8a2eaf2e6f7f626a0dfddb8cd520432ea8de9f1482dfd670eef8883b2d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:38:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:38:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:38:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:38:45 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:38:45 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 25 Sep 2026 22:38:50 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='e69231c395189e522128c0cd4a77ba51afdb8a4d20043432e782c64598e75f09';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_aarch64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        x86_64)          ESUM='6e888041f134826787d62bbf35fd007ea27ad18588c4c5e46e78d2706449d368';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Fri, 25 Sep 2026 22:38:50 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3616bfe71d066062738832dce2ac95cfee6b642945da3029cc446237eba8f5b6`  
		Last Modified: Fri, 25 Sep 2026 22:39:03 GMT  
		Size: 9.5 MB (9519208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5adb2b531cf8b2d3ac9db14f96322db41d9572fa0bae60f22e8fc3e05fd8bee4`  
		Last Modified: Fri, 25 Sep 2026 22:39:04 GMT  
		Size: 62.7 MB (62731717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44251796b2e068f23798daf74387e6b953ad792ad522ae2c04d29685b2b1bd69`  
		Last Modified: Fri, 25 Sep 2026 22:39:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0c2830ad3aebf5710d5e75ad9fce3a98f4d0d4d77dde9ba4994986ea23f6276`  
		Last Modified: Fri, 25 Sep 2026 22:39:03 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:766c6b8fd531e71e4bb3daef817d23f0dc9824c5c02ed329126c8e8cd70629d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **803.0 KB (802964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47898c044a4c981e824dcb1ab9fdc691b26360bc63c2c0105c35d0e3c6a93d9a`

```dockerfile
```

-	Layers:
	-	`sha256:50fee48950ce206f30c171a7859e073e6e10ba522064aa6d7dba8f60c1572eab`  
		Last Modified: Fri, 25 Sep 2026 22:39:02 GMT  
		Size: 783.0 KB (783001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2125031eb67938d1e708ee476e9387a4085ffaa3f245987105ec9e3fd912676e`  
		Last Modified: Fri, 25 Sep 2026 22:39:03 GMT  
		Size: 20.0 KB (19963 bytes)  
		MIME: application/vnd.in-toto+json
