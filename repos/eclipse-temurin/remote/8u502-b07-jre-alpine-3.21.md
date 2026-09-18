## `eclipse-temurin:8u502-b07-jre-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:90ac91eef90feca5f91f5b1aea60a23d8f31b4bd0b7171144267c637042e7557
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8u502-b07-jre-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:3523ee36e2e797e52af58ee86794bdf3d99cc4e35829c39390bf7f1fa082768e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62133875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f231c8280ce90d409935d36d2810c4b28074e56ea8db7d29c95172caecf6c65c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:40:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:40:08 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:40:08 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Thu, 17 Sep 2026 21:40:10 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='39d17b519d925e2a979056d800e712b4d5f8b68112413ab1d06f525c1571c164';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 17 Sep 2026 21:40:10 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:40:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:40:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb8798133e400e306f97e6bf7488e9fb2da703ea4047f3d645ed83a1a8dd801`  
		Last Modified: Thu, 17 Sep 2026 21:40:20 GMT  
		Size: 16.2 MB (16240620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00335b0afe4e2ac7d1f771d4fc8db4dfcb78bf6c2047328bc8d12fbcba9974e1`  
		Last Modified: Thu, 17 Sep 2026 21:40:20 GMT  
		Size: 42.3 MB (42264647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e4f5f64ec5fbf35147872723afa71713c46c8a3e6a7631482a61274ab254ea2`  
		Last Modified: Thu, 17 Sep 2026 21:40:19 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f6de6081452541e0b6bf26ee35943a6f5a9a1042cef322effb65f80ce68a508`  
		Last Modified: Thu, 17 Sep 2026 21:40:19 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u502-b07-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f6bd073444b26640e58a35dd52ae145f74f4e7ecf58188546601ffeba9bb077b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **929.4 KB (929387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e07e3d515694b3c807aede82a534796c9ca172d1f61b18cdd6c35dd75a04344b`

```dockerfile
```

-	Layers:
	-	`sha256:0602833136c30fe9116d6b67bea116062ab47247d37a220c1e31e452a96ad119`  
		Last Modified: Thu, 17 Sep 2026 21:40:19 GMT  
		Size: 911.2 KB (911200 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36053590a9115a0b42cf27f6d3debdb7b7422b775e015056d7e8c41f52dfe665`  
		Last Modified: Thu, 17 Sep 2026 21:40:19 GMT  
		Size: 18.2 KB (18187 bytes)  
		MIME: application/vnd.in-toto+json
