## `eclipse-temurin:8u504-b01-jdk-alpine-3.24`

```console
$ docker pull eclipse-temurin@sha256:722702cc1316544012854d01f762cc033959fb175470a61856355f8f65769a2b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8u504-b01-jdk-alpine-3.24` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:1bb711d01b54a6b0950f07389bfe80ac45c575d529fa7dbed0fb798f879f3b78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76347378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d648f20e3005efbac1aca339970cbd7f9169dac4dbeeafe1d0a4bae510e4eb3e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 23:42:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:42:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:42:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:42:34 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 02 Oct 2026 23:42:34 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 02 Oct 2026 23:42:38 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='f76b7c98a593f15bbfc9042866141185d63aa87e0afde3b7e48d2c4789a2def5';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 02 Oct 2026 23:42:39 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:42:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:42:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd8ed23f10189bf7778d4c3663aaf84e061893e4569b2695187949b4c407f13`  
		Last Modified: Fri, 02 Oct 2026 23:42:50 GMT  
		Size: 19.4 MB (19442738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b3cb6cb8de8a3b68db8269b9268fc207dc884c095cd7f5c49d524bb5db63068`  
		Last Modified: Fri, 02 Oct 2026 23:42:51 GMT  
		Size: 53.1 MB (53052291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7337f8f47ee92150dc317557df097b1c7d6dd6ea83f1bb2794ba52538cc0fc9f`  
		Last Modified: Fri, 02 Oct 2026 23:42:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f386062612dcd176724032b83530634aad76e770418249519b226b218c1ca7`  
		Last Modified: Fri, 02 Oct 2026 23:42:49 GMT  
		Size: 2.5 KB (2482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9afa09083d94fa3239265a8187895f801982662463133175e5c1e90586e84bf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1112452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70431be74b00fc77dd928c3dc91dbb48c069e3fee53d02decfb208a7941d9285`

```dockerfile
```

-	Layers:
	-	`sha256:0b7f7827d531107f182ac721c1d2f5b05ad83d4150d959f8713872a842a5da38`  
		Last Modified: Fri, 02 Oct 2026 23:42:49 GMT  
		Size: 1.1 MB (1092014 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c06c16a6f5248105f07098b89f34a06c7dc6f5c10b0cc0db17a68ce5b2425ee`  
		Last Modified: Fri, 02 Oct 2026 23:42:49 GMT  
		Size: 20.4 KB (20438 bytes)  
		MIME: application/vnd.in-toto+json
