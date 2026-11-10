## `eclipse-temurin:11-jre-alpine-3.24`

```console
$ docker pull eclipse-temurin@sha256:403eef35e7d44e61a4532dde4cd23c577e1828ae6052a12f7a0af7076028e2a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-jre-alpine-3.24` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:116ef4da2a183bd08a86f7d31a222c4a298b46a427d16f529c29a3ac98818324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64526538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd9342b6134fbb21cc540cadb6a0278cb8ecb7cf2257716484940b4c8f421c7`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 23:35:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:35:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:35:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:35:30 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 09 Nov 2026 23:35:30 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Mon, 09 Nov 2026 23:35:32 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='8e569f461461ac364ac9e9d14a2b70c15e3869dc9b41da2c6817bc7b02297567';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_alpine-linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:35:33 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:35:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:35:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb107f0fedc7319af731c16682abe03e5a28c199a3c943067dd9e8f5b35d2333`  
		Last Modified: Mon, 09 Nov 2026 23:35:44 GMT  
		Size: 17.0 MB (16969946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0c5c768c686165c91a0c26ccabbff2c1cad48b7c1d9349898f785b341893969`  
		Last Modified: Mon, 09 Nov 2026 23:35:45 GMT  
		Size: 43.7 MB (43700329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143ff7e3dab8dd2bf932d76e9181fcc800793a02912e08c1c1e49df03c64d6d9`  
		Last Modified: Mon, 09 Nov 2026 23:35:42 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cbf5c9f8e1e7326500efef1555e3b7b3fa442128564a70998abcf3a3c953bbe`  
		Last Modified: Mon, 09 Nov 2026 23:35:42 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:fc87d4e1e019c1f95921b8fde48ea28f93a6d03f1399c0c88885d8e4ec147df1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **916.5 KB (916466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a2eaf52640da8ce7684c1ccb789b2a57cce07ec4e2933e4d6c43ebcbbd43bb8`

```dockerfile
```

-	Layers:
	-	`sha256:13c08a4c806d1884db067913aca425eab99fe8367f1154776dd9d2e50a55dd0c`  
		Last Modified: Mon, 09 Nov 2026 23:35:43 GMT  
		Size: 897.6 KB (897566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b08c9b2410d960d1b937a720cbb862caee78b34edc5d06b71dcc33c16d21f60f`  
		Last Modified: Mon, 09 Nov 2026 23:35:43 GMT  
		Size: 18.9 KB (18900 bytes)  
		MIME: application/vnd.in-toto+json
