## `eclipse-temurin:11-jre-alpine`

```console
$ docker pull eclipse-temurin@sha256:ea8a026083aaf0ad939774bec895ba24f67bd73cafde44c5eff6cf306870b878
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-jre-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:551dabdb59c2c5115a2648c957c85af1d15f21b0e2fb31ccf4fe459a53ebb44d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64503940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed7b6aeab59b4bbc5c78186d71affb90348bb1fd0a1c9d1017ec4cf26049c3d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:35:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:55 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:35:55 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:35:58 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='bb9951aab1dcd0f6c2b22d76a46773100a6639ad199f339ff288d360b3217ae2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:35:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85bf39b06481dd5bbd89dd92454dd0704ce4035ab425dc7871680906764f8f6d`  
		Last Modified: Fri, 25 Sep 2026 22:36:08 GMT  
		Size: 17.0 MB (16972139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fbb61e7f96e8abcb7398e33b6f93013242fa8573ca1c64fdc8b718fae46e055`  
		Last Modified: Fri, 25 Sep 2026 22:36:09 GMT  
		Size: 43.7 MB (43679473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31933871fb62db33d7c4ea6589153271162180cab0028d40da9e66de72b75628`  
		Last Modified: Fri, 25 Sep 2026 22:36:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:178dc6523d2e5c79e9ad214df0ef19398793db0430833032cf18b21d35f4a616`  
		Last Modified: Fri, 25 Sep 2026 22:36:08 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:106f8ceffee36b5ff24f58ce6e80b52e2e415ba8b06a3413e576e9c65657ed88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **918.4 KB (918421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef123ded274432dec76b201fdfa52f645b6bb20db7362f7b19cc790b8cfd076a`

```dockerfile
```

-	Layers:
	-	`sha256:0fdd197f2ec209137b657d60fb60ca09528ff6b62018a89246b1de5bfd91fbc8`  
		Last Modified: Fri, 25 Sep 2026 22:36:08 GMT  
		Size: 899.5 KB (899509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:336d67f7ceef2fd12908fd5b0da32882031b0a5d0bab4f351efcb8bcb848a6ef`  
		Last Modified: Fri, 25 Sep 2026 22:36:07 GMT  
		Size: 18.9 KB (18912 bytes)  
		MIME: application/vnd.in-toto+json
