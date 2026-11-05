## `eclipse-temurin:11-jre-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:7281ca263db2337fef4049925e22331028a71d989677bc917ff98be80f31239e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-jre-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:0b72e299cdea3c41e130e923a68996c3a5ede649de7ae1f72a9d6f5b62cfab9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63832681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43ac4b1cd390c52d7457404c7351836d23411d4fb7c913cc4a35b72b67e790bd`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:17:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:17:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:17:42 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:17:42 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Thu, 05 Nov 2026 19:18:05 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='bb9951aab1dcd0f6c2b22d76a46773100a6639ad199f339ff288d360b3217ae2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 19:18:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:18:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15579bb362e5cdae7813546b4ecf58c5adf75140d8a4c430d59ca87de2867e25`  
		Last Modified: Thu, 05 Nov 2026 19:17:55 GMT  
		Size: 16.4 MB (16356288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ebcfc278795d79feb6fbf546e81122c95ecd30e058f70f666d266e212200ec`  
		Last Modified: Thu, 05 Nov 2026 19:18:16 GMT  
		Size: 43.7 MB (43679430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67c1cd50a61c1f798204fe3ec32d81497e69d69e0697c20119779afb5cc620ce`  
		Last Modified: Thu, 05 Nov 2026 19:18:14 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967e908f5be09484fba261e9bc57e2eda6ba30f8071b9d17c156e38adbf6aa9e`  
		Last Modified: Thu, 05 Nov 2026 19:18:14 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1ceaeb45795ad4df6dc1420574f46e30a6f8800749bb02f45feebd260a42d946
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **911.6 KB (911563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad76e91ad4dfbb7bd68c96c0f99feb2f06130ec55a5b64eead45c0db0e450d91`

```dockerfile
```

-	Layers:
	-	`sha256:79ccdf9d5d07e467c22131750595d832bfcb3f152bde78fd3afa34048745499a`  
		Last Modified: Thu, 05 Nov 2026 19:18:14 GMT  
		Size: 892.6 KB (892590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:422035c177dd12251b0a5b133ed3655f2ace49682440cf020f28ed4b439dce1e`  
		Last Modified: Thu, 05 Nov 2026 19:18:14 GMT  
		Size: 19.0 KB (18973 bytes)  
		MIME: application/vnd.in-toto+json
