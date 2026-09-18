## `eclipse-temurin:8-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:3484eb0b5d69d2a427af2ef542e31102a841a437f3ce8e904aa2d334427f23ec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:79bd0e404d710a1761f8a83cee924caa7719c9709711f8df886a2fefadfc77d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73209232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7661a689b24122cfdebf4ac499e557ea0479ff782c7b21484ef8f234b9afa4f3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:39:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:39:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:39:53 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:39:53 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Thu, 17 Sep 2026 21:39:57 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='746bc5577ca2067bf2a96a0ae0f6cf50422f9cb7b5aa58a52e9fceabff5d0619';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Thu, 17 Sep 2026 21:39:57 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:39:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:39:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adaf8003db271a791e77e0b355c392ef6505b397400df60f12e26e6006a44556`  
		Last Modified: Thu, 17 Sep 2026 21:40:08 GMT  
		Size: 16.4 MB (16357150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49fb12a5a8ab4b454967cb16cab2efb3ee16ff00623ba1fa39e2a590d1821b50`  
		Last Modified: Thu, 17 Sep 2026 21:40:10 GMT  
		Size: 53.1 MB (53057397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e15954c703f3cb50381fb3578aad33adeb993d84cce846322ebe02964c0eaf7`  
		Last Modified: Thu, 17 Sep 2026 21:40:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f1cffba85302b2315815fb644f6ac34dcfa472613d50d8675fe3401526725ee`  
		Last Modified: Thu, 17 Sep 2026 21:40:08 GMT  
		Size: 2.5 KB (2482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:77c1974daf4c5c6653c97f53bc413e4f22f738e1743556da371eeacc67b70c36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1105424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db19ecf9238c8eca735f9c6456d25ac56115866e1c868a53039da4d64cfabd21`

```dockerfile
```

-	Layers:
	-	`sha256:6e82d262a16c74cee0bbdaa548a94542ee9390e3fb329698f9a2a8e03c676e5a`  
		Last Modified: Thu, 17 Sep 2026 21:40:08 GMT  
		Size: 1.1 MB (1086714 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64e14d00f32e731b0cae4240416586c29addf632475e40b221993da4d1ae77b4`  
		Last Modified: Thu, 17 Sep 2026 21:40:08 GMT  
		Size: 18.7 KB (18710 bytes)  
		MIME: application/vnd.in-toto+json
