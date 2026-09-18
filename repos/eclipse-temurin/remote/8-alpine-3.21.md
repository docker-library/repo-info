## `eclipse-temurin:8-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:c84ad9bb26fea96c4b20ec775672b1d20d4ef047e017c5de4ee9636038b4e035
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:bca9b4aec7a5cdbbb1c071293e66c0baf934d30ef63bac48d5569a14faec6509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72926664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b7bfe0f3fdf950951193903090df75320d3fa59a7119d5cc824fca06d72b740`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:39:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:39:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:39:54 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:39:54 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Thu, 17 Sep 2026 21:39:58 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='746bc5577ca2067bf2a96a0ae0f6cf50422f9cb7b5aa58a52e9fceabff5d0619';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Thu, 17 Sep 2026 21:39:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:39:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:39:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e9ed8cd9d592fc31e7e91c964adbc016bdfd5da327744540ead546f1bc4274a`  
		Last Modified: Thu, 17 Sep 2026 21:40:08 GMT  
		Size: 16.2 MB (16240593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af1fbd9be8c849d18167e92969d25e7d60eb3bb4882a3aaf0e050383a3abbbe0`  
		Last Modified: Thu, 17 Sep 2026 21:40:09 GMT  
		Size: 53.1 MB (53057443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c35250c54952e13591148736c7c505cf40f23a0247698a557adc553125f44361`  
		Last Modified: Thu, 17 Sep 2026 21:40:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:751f2bcd2540592357d75dbfb418d0d0f9126694c4b813a8397a1f39c3c0ab80`  
		Last Modified: Thu, 17 Sep 2026 21:40:08 GMT  
		Size: 2.5 KB (2482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:d85e746245733dd44adfee74546ee3623cc625b62bede3b76a46ab4885b3aede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1103872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f3c5523fbdebdd2c862c6acc489d2914c010f07f37db9a284d22889134ea049`

```dockerfile
```

-	Layers:
	-	`sha256:184f5fb9b1c05b23b71c0bb790b64b0187a476f4ceb6281a2db1b0200d0e1bbf`  
		Last Modified: Thu, 17 Sep 2026 21:40:08 GMT  
		Size: 1.1 MB (1085162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea01ea708a75b9ed9b7d66d4091e2a2095924bc0b62014963b3e6911214bf46e`  
		Last Modified: Thu, 17 Sep 2026 21:40:07 GMT  
		Size: 18.7 KB (18710 bytes)  
		MIME: application/vnd.in-toto+json
