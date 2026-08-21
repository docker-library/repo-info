## `eclipse-temurin:11-jre-alpine`

```console
$ docker pull eclipse-temurin@sha256:4e7cb404b9f3c311cf0eac5f4a74151b3f159b6818c9fdd1f3297389848c29b6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-jre-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:f01150e584f69c0a6f17ac0ef5b65e08f29241563e8698cfffaa1a7e6ffac06e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64491521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9254f9ef2dd2b8fd7542f6d18d9f898eebfa53e9024dec59efb232da2a898592`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:23:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:23:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:23:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:23:03 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:23:03 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 18:23:06 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='a9745bbf185f9c10b12c8dc7c8741522702c6e201dc8419277e6011bcf717b31';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_alpine-linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 21 Aug 2026 18:23:06 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:23:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:23:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:476beb10d9d62116f3fa98b80e922412a54355717cbac547897405f6060d74ef`  
		Last Modified: Fri, 21 Aug 2026 18:23:16 GMT  
		Size: 17.0 MB (16963158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5eb9dbb115ffc18c389fa92cf394e680d1fba0e3dded2824dbeed889197453a`  
		Last Modified: Fri, 21 Aug 2026 18:23:16 GMT  
		Size: 43.7 MB (43679381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d51414c8f0aa64299074e07ff6388d235a0fea4d86058fa7c7ae907d4c3bab3d`  
		Last Modified: Fri, 21 Aug 2026 18:23:15 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:418edac320e76d372fe5bc78835abfca751f0a45224c75bffc995a84c586d651`  
		Last Modified: Fri, 21 Aug 2026 18:23:15 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3ae577007f613fe062bfcc9edcd7830989c8a1d353ea4c35bc967a149ac0bc29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **917.1 KB (917088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e22609e34cd90c33c6d4ee112db223bb546854122432b661bcc97e1bd040f6c9`

```dockerfile
```

-	Layers:
	-	`sha256:04a3cc65bb56925f5e901136c8e9047cd3793c6c84d573abe176183eb36c1e2d`  
		Last Modified: Fri, 21 Aug 2026 18:23:15 GMT  
		Size: 898.2 KB (898200 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7c9ec181e41804c6824e4fe04d96e05894ef64ef80c9ef45fb7bf9d67d549d2`  
		Last Modified: Fri, 21 Aug 2026 18:23:15 GMT  
		Size: 18.9 KB (18888 bytes)  
		MIME: application/vnd.in-toto+json
