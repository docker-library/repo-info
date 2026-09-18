## `eclipse-temurin:11-jre-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:f003c9518df27d798d93eda90c19426240565c0574ca2d2a44446c5de80f95a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-jre-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:68f6901ebdb19dbf0c86a792738dac75a488ecede0d16699a7a475716f6c1100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63548617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e1daa53bb8e70b3bd2ef2eebf9c318d5b25f5f6652a5809c9d4f1e3c01686a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:40:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:40:25 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:40:25 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Thu, 17 Sep 2026 21:40:28 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='a9745bbf185f9c10b12c8dc7c8741522702c6e201dc8419277e6011bcf717b31';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_alpine-linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 17 Sep 2026 21:40:28 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:40:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:40:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041c9ee79283fa897e1e78d19b4ce1242697c46af5e50261069c97717852149b`  
		Last Modified: Thu, 17 Sep 2026 21:40:38 GMT  
		Size: 16.2 MB (16240620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4668db621cb2753946009026dc71d2d8a41b7fdc5e71f7e6bf3505727efc8cc`  
		Last Modified: Thu, 17 Sep 2026 21:40:39 GMT  
		Size: 43.7 MB (43679387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e127310c8912adad324669fe9cf0153ef9dd6cfdc8b4d051cba40fdd575417`  
		Last Modified: Thu, 17 Sep 2026 21:40:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6acbd1142e6b829116a2ca457d74790b09a6c7453e2359badeb1a22485a5b633`  
		Last Modified: Thu, 17 Sep 2026 21:40:38 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5be5180774f268ec6a0622fb3dda20a46e15650ba62cd5a9e46de6656f1b432d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **911.2 KB (911172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fc77204b0aa2d0674c74f0cece424bd13cd23ebee2b93c26bbf195acbb4d8a8`

```dockerfile
```

-	Layers:
	-	`sha256:cf748076100eca723bffb1cc55c9f4c28608cd36ee4506b44ef1491e33544eb5`  
		Last Modified: Thu, 17 Sep 2026 21:40:38 GMT  
		Size: 893.0 KB (892959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ad793c6cbbcc582acc7ee9c3662709a7f36d47ada883641d97301bf6500b19e`  
		Last Modified: Thu, 17 Sep 2026 21:40:37 GMT  
		Size: 18.2 KB (18213 bytes)  
		MIME: application/vnd.in-toto+json
