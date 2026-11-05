## `eclipse-temurin:17-jre-alpine`

```console
$ docker pull eclipse-temurin@sha256:e2ba4e947bd5e236a9866fbdda03e4936036cb9e9d16ea0d84d103d6634a5c21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-jre-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:df2fcd61a7987cfd3514756f2cb6c6e940fdd8076bdfd4e362121850e6893a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68104031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5ee33acf101a1eb81c8b78916a84c0fb3665a808ad9f8b2ceedfb74a40ec70`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:18:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:18:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:18:20 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:18:20 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Thu, 05 Nov 2026 19:18:23 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='e42129db57e3965d9d8befdb097531d7887916690338ff0be7d1b0113287c872';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_alpine-linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 19:18:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:18:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c1466a5ca3232269f244aa3094532f0316913add44aba17d25893be1044bc4`  
		Last Modified: Thu, 05 Nov 2026 19:18:33 GMT  
		Size: 17.0 MB (16969909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fc65da0c5fbc0036993160c5218ccf5f099137891cc3173dd0584fe80ca6ec`  
		Last Modified: Thu, 05 Nov 2026 19:18:34 GMT  
		Size: 47.3 MB (47277859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cd29f11df7190b54d024588b636720cf0dce330a910e4b9e777e712485e9c2b`  
		Last Modified: Thu, 05 Nov 2026 19:18:33 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1d02633a996e89809e5ec77ed71a8ec39581554fbb82ae1d86ca5ff7613e95`  
		Last Modified: Thu, 05 Nov 2026 19:18:33 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:15d21724e79c819a73157bd4740f41dbaf17a2449d162e0ca9b5eaa0946532cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **904.6 KB (904584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f7f81b1fe23f607e1be27e4b7780c67103d94cddc85b13456fd61b27ba8a80c`

```dockerfile
```

-	Layers:
	-	`sha256:434af89767f1eb1556b7840cd5e4d62981f0b474704bfa73e4f2606587e2fe8d`  
		Last Modified: Thu, 05 Nov 2026 19:18:33 GMT  
		Size: 885.7 KB (885696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a9e2ae14d3c3fd8f76c0b491cb98f0727c7f803a7e3ffb57e97a7b54a41ee71`  
		Last Modified: Thu, 05 Nov 2026 19:18:33 GMT  
		Size: 18.9 KB (18888 bytes)  
		MIME: application/vnd.in-toto+json
