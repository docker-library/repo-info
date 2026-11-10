## `eclipse-temurin:8u512-b09-jdk-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:73e132c706e8ecaad0113136b3cadf761b7c3b05b46737b9ce2d56f45ffc0dc9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8u512-b09-jdk-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:9496f242f8c24653e1207e36ac2b048da2d39d639cd008c2c02a52e2bb7f5594
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73251791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58234b1dd9c26bd4b2d21f40e25c52be662732ce5266b517bddd52fe42ad9325`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 23:15:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:15:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:15:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:15:47 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 09 Nov 2026 23:15:47 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 09 Nov 2026 23:15:50 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='e2a7fa7d86033e6c315aa45a7ba772d1d93ccb4f736cab40291a5d7b0998e6b9';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Mon, 09 Nov 2026 23:15:50 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:15:50 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:15:50 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345956e0db567482bb359061f5488c1ac4f50af1aa4a83464b6a60252f5a26e8`  
		Last Modified: Mon, 09 Nov 2026 23:16:02 GMT  
		Size: 16.4 MB (16356295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e884896db4d68c8be0217b96248353e6afbdd5fbad1ddf1e4105bffa7f908f9e`  
		Last Modified: Mon, 09 Nov 2026 23:16:03 GMT  
		Size: 53.1 MB (53098511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f633775a4799f59a232d1a109a1cb68777a5335af620cfba7f8af64fc7793c1`  
		Last Modified: Mon, 09 Nov 2026 23:16:01 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3192d1755dcab59765d4a9d8cd960a0938397b5f10dd112f5114615cdb49323d`  
		Last Modified: Mon, 09 Nov 2026 23:16:01 GMT  
		Size: 2.5 KB (2482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u512-b09-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7a3d6f6d2e63b846a97029dd0b5ca07bf5e3767165201cbdb4ac74ea24c7623c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1103492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81855ede742c7c46da26cb13f70b44dbdedae1a7860477e5c4c24ce4541152cb`

```dockerfile
```

-	Layers:
	-	`sha256:8c1c97a7c26f80484fe5ef0bae4a99b5e2db5ac470beb14eb7ae68303c6f28eb`  
		Last Modified: Mon, 09 Nov 2026 23:16:01 GMT  
		Size: 1.1 MB (1084781 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f78345b689b8b593bafd6568c73e0330c96bdba9b6d4f2f3cb6e388f824484bb`  
		Last Modified: Mon, 09 Nov 2026 23:16:01 GMT  
		Size: 18.7 KB (18711 bytes)  
		MIME: application/vnd.in-toto+json
