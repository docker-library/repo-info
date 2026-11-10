## `eclipse-temurin:8u512-b09-jre-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:362ad4ec3384302e113193f4cf9d7fdf81b1aa4419a027e27e683b9d48b94641
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8u512-b09-jre-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:5d2920da82505026d976c4b0a65ba9070212040435b819e8d90f4caadc9a3a63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62432903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b6b399ef2f9f6123aafdc06b45b06ecc9462c41b3f6a5638d47aa2f7de090bb`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 23:16:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:16:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:16:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:16:28 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 09 Nov 2026 23:16:28 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 09 Nov 2026 23:16:31 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='12b6d25841b3e932a60dab34da43f4989a07f767444e3fe7c58d1187252753d9';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:16:31 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:16:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:16:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22157909feb8ad174fd1c74421f951ba1f7c4134a11f9a01835493901ba27c2`  
		Last Modified: Mon, 09 Nov 2026 23:16:41 GMT  
		Size: 16.4 MB (16356400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56db5ee5b18e136c303d55501b1269427d187c7bf003385f8f8d827158be2187`  
		Last Modified: Mon, 09 Nov 2026 23:16:42 GMT  
		Size: 42.3 MB (42279538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c8b37b25cb97ec15a500806b666da3acd1cc2ee23b664deca7e49d11fa7dc25`  
		Last Modified: Mon, 09 Nov 2026 23:16:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4729fdc9c9d98c66a41a1be7fd550bb56f29a568a81e20530b3901379efb984d`  
		Last Modified: Mon, 09 Nov 2026 23:16:40 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u512-b09-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7d878a68034f8a70e01b4fccd9e8b5c9b75f8722a425250d7bd6ec04fee67eaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **929.0 KB (929006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:650cc389ef04d7fec11e3a8d2b22e363c3225f3eed0cbed48ef8549a93d5c103`

```dockerfile
```

-	Layers:
	-	`sha256:7e6cb30c9b40a3144ea79dbea1aa20dc7bc0ceed82d8dd9834b3ff45844422ee`  
		Last Modified: Mon, 09 Nov 2026 23:16:40 GMT  
		Size: 910.8 KB (910819 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd33d3146814f7d8537adfb6f34feb31ac96d16589e2f1ea8b6dcdc4b836cb3e`  
		Last Modified: Mon, 09 Nov 2026 23:16:40 GMT  
		Size: 18.2 KB (18187 bytes)  
		MIME: application/vnd.in-toto+json
