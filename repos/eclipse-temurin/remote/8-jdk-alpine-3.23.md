## `eclipse-temurin:8-jdk-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:3ff93d86facc2da461bfdc56874c4d83f7e7e19ba34b256ebd66585ab75cb813
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-jdk-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:722226f34e0bd9d113d6f6c889c892a0b68fd2f986a9b841669c38062faed05b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73798551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe82df4846f3fb69353041b684c3ef0b1049d42f3179cb78c853f56aa4d1f0cd`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:17:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:17:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:17:17 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:17:17 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Thu, 05 Nov 2026 19:17:21 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='f76b7c98a593f15bbfc9042866141185d63aa87e0afde3b7e48d2c4789a2def5';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Thu, 05 Nov 2026 19:17:21 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:17:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:17:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c079d530f8f8ae37b178bdffe19a1a20f968c244f46f02f12dd393b38c9270a`  
		Last Modified: Thu, 05 Nov 2026 19:17:33 GMT  
		Size: 16.9 MB (16891093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9edc0d3b0eb638930b968480bf16ad50e554aa65241b01cbe7f13798b0513392`  
		Last Modified: Thu, 05 Nov 2026 19:17:34 GMT  
		Size: 53.1 MB (53052258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2661fdbc29ef9881e6df1ecafc61208e52edf6426a48a769c9c59eabc01eec3`  
		Last Modified: Thu, 05 Nov 2026 19:17:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da1c716f6ed7161e020ab2df4a0c2bb3c92df043af9dee8c0bc3cd8475dcddd6`  
		Last Modified: Thu, 05 Nov 2026 19:17:33 GMT  
		Size: 2.5 KB (2483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jdk-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a652e39c2254ae1f585f3d7a6e7489e7e2f103350b57fcfee2f64fb06ee86487
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1108564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f20f9cb0d77b5f6151716d36b257b02c46ca22986bb58f9f364588770e1300e2`

```dockerfile
```

-	Layers:
	-	`sha256:b7e8c4f2b452678c1b2451f10ddd7fa07edb2194fa4f990727001d899185db89`  
		Last Modified: Thu, 05 Nov 2026 19:17:32 GMT  
		Size: 1.1 MB (1089119 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a90d6facfabf40da15f57832fd0fed74c7530f4546e465a4d360b3b508ea10ac`  
		Last Modified: Thu, 05 Nov 2026 19:17:32 GMT  
		Size: 19.4 KB (19445 bytes)  
		MIME: application/vnd.in-toto+json
