## `eclipse-temurin:8-alpine`

```console
$ docker pull eclipse-temurin@sha256:d548e9a13d876bbabe331ff425c77fc6c10f81e6f8f3e2662c3d027d7c7809f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:9fa8a1fd7bbdcd0a4cf352533b4ac7a9a586b811155f2889cfb1c85ca703bee4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73924624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd48103899fd947acfdac0d6aeb13988aeab2ee597194cadf5d850671d1a5339`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 23:15:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:15:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:15:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:15:07 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 09 Nov 2026 23:15:07 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 09 Nov 2026 23:15:11 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='e2a7fa7d86033e6c315aa45a7ba772d1d93ccb4f736cab40291a5d7b0998e6b9';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Mon, 09 Nov 2026 23:15:11 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:15:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:15:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e335c202f791af152bc5669d5df1ce02692a7f6e744c75f539bbfcc9f3eff1`  
		Last Modified: Mon, 09 Nov 2026 23:15:23 GMT  
		Size: 17.0 MB (16969793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ca25b887c85d2c52499a304b8fa2447374770a4626666acf7b5f1eaf40cb12`  
		Last Modified: Mon, 09 Nov 2026 23:15:23 GMT  
		Size: 53.1 MB (53098549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e452cf2924d316a5cf84c549df7adeb00dd568393d4d34630d47dc643a738188`  
		Last Modified: Mon, 09 Nov 2026 23:15:22 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a545bb8d704584747868a4e76c42dd706367fb85a45626c9f9a863253fe6d16c`  
		Last Modified: Mon, 09 Nov 2026 23:15:22 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:64c5fec28e54ff2c9004391bda66f33503dd7c05e904d11b944c9fd4a76814f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1109783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c33a56da843ae4aa6ce673e5cf3b052b168cd4d9ee4cce4c50614495ba7ccd3`

```dockerfile
```

-	Layers:
	-	`sha256:419bd7656b72c518ee67df223362f03c5991af5cba701c0735e90be5e28384ae`  
		Last Modified: Mon, 09 Nov 2026 23:15:22 GMT  
		Size: 1.1 MB (1090081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:308c2aa04cc67711a657816ec12c47bce7abf5232be50bb686951f4b728dd687`  
		Last Modified: Mon, 09 Nov 2026 23:15:22 GMT  
		Size: 19.7 KB (19702 bytes)  
		MIME: application/vnd.in-toto+json
