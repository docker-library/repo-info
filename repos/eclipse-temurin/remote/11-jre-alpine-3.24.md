## `eclipse-temurin:11-jre-alpine-3.24`

```console
$ docker pull eclipse-temurin@sha256:e7969cf962d7cac2e7c16d3dba12d22e0073641504f04802a7d3e2731ef22c10
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-jre-alpine-3.24` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:c522610479e744b0c881eb54d3660c48d837c17b7efbabe4a1d7647c6d71b721
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.0 MB (66974543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65018c07e2bf1f264d199afdd869b633e2de7abee63bb76bff7124f04aaf6329`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 23:43:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:43:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:43:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:43:23 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 02 Oct 2026 23:43:23 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 02 Oct 2026 23:43:26 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='bb9951aab1dcd0f6c2b22d76a46773100a6639ad199f339ff288d360b3217ae2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 02 Oct 2026 23:43:26 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:43:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:43:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f67820664a14b831543f8a1c48f926e7d40bdb0f1f4e7a133d53e53559ccbd03`  
		Last Modified: Fri, 02 Oct 2026 23:43:37 GMT  
		Size: 19.4 MB (19442780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2138b4a26b4c03ec6abfa9f1de54550690ac847df47f7401f212b7e83972d73b`  
		Last Modified: Fri, 02 Oct 2026 23:43:38 GMT  
		Size: 43.7 MB (43679437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e419266bc6a1258c91f862f95a25144b5501d3c341201d5c23328bf037016a1`  
		Last Modified: Fri, 02 Oct 2026 23:43:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d150b45ba09d9e0bd95acb56789123500d22b772eeba97d47f0c880fed598b41`  
		Last Modified: Fri, 02 Oct 2026 23:43:36 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:32212c5baab12b45291b123eda557231a361bf12a39af5ae103d9cf2a1ed4df7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **919.2 KB (919159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:755dc6e5b1c68e67b7b940349268a6d084e355441fd701a168ed2d67fddb04fb`

```dockerfile
```

-	Layers:
	-	`sha256:b2a63f999507505e066f04aa7597bba82300ece413f795890da1a2638bf97d2c`  
		Last Modified: Fri, 02 Oct 2026 23:43:36 GMT  
		Size: 899.5 KB (899509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4b47ff51d7912c848b2b64e4f8e844f22be3698eaaf2dee3d1bfa5ac7baa51d`  
		Last Modified: Fri, 02 Oct 2026 23:43:36 GMT  
		Size: 19.6 KB (19650 bytes)  
		MIME: application/vnd.in-toto+json
