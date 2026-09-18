## `eclipse-temurin:11-jre-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:cc4fc15af9ca616d1220d9f524d1f98c3f4e7f325bcbdf410e5a7971100e47ee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-jre-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:3f17588cd0bb30e60e4ec8b9e8b9b3757e3a7cdf9ed227dd3973c6b437a7dd89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64424468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c9d23b4629c80d5cf80eb98ef1cf80a187808d764bc4941705c36cfe6e19c0`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:40:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:40:19 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:40:19 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Thu, 17 Sep 2026 21:40:21 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='a9745bbf185f9c10b12c8dc7c8741522702c6e201dc8419277e6011bcf717b31';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_alpine-linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 17 Sep 2026 21:40:21 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:40:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:40:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ff32c03fcec7246b85e7fdbd737b4234c04a5489f1a4e430fbf9647359ff03`  
		Last Modified: Thu, 17 Sep 2026 21:40:32 GMT  
		Size: 16.9 MB (16893995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:becfba9dec0e94e4ff61a30d814da111a492084b64432bb25c82d0680ed4b378`  
		Last Modified: Thu, 17 Sep 2026 21:40:32 GMT  
		Size: 43.7 MB (43679378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c031f5f38595db4c464b6fb557c117268dc1a8f703dc5e1ba9df20991414d00`  
		Last Modified: Thu, 17 Sep 2026 21:40:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc823e481d15d07ef6ab1394e0fb2964a2b8e43fb52b20266c78f880113a07d`  
		Last Modified: Thu, 17 Sep 2026 21:40:31 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:398b21d52376b5b52d1c431dc21207551114528eeb09e2f63771e167334645d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **917.1 KB (917063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0651b8f322195b18b1c8926c3ead60a9eaf1ae92bfafa07b1c35d347b6653439`

```dockerfile
```

-	Layers:
	-	`sha256:408a44237d445dd3553a2d1c7dc68d063e83fb8e2f4bda29c1e1ef2e97161560`  
		Last Modified: Thu, 17 Sep 2026 21:40:31 GMT  
		Size: 898.8 KB (898849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72fd28e9e44bb57c5887020ad8f691175d9072d24392e00d25a9c9fec32106a1`  
		Last Modified: Thu, 17 Sep 2026 21:40:31 GMT  
		Size: 18.2 KB (18214 bytes)  
		MIME: application/vnd.in-toto+json
