## `eclipse-temurin:25-jdk-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:164cc2fcb41449376d6d880fd7ec8ec6b56b7bf93d601cf038cc3d9a7814d26b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:25-jdk-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:2082593428d96797add4e26597c74cff13bfc31d75f809431802bcab17a4e6cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.7 MB (109725764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29e5c733ac0982cd38187fea7840a1504d6dcb7e58d193cee5ace2c2511c5ba4`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 19:15:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:15:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:15:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:15:27 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 29 Oct 2026 19:15:27 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 29 Oct 2026 19:15:33 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='d02eadc0a0f93faba4be38c8657eb8eef842103a4c7c2400f5827dbd90fc21c9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='efc86581260b73c340c313e7577c4c85d6a8a899edc3748d78bee5238fe44a4e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 29 Oct 2026 19:15:35 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:15:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:15:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:15:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3497ac610fab64b29477f5e69201d4fabd973d0d79f468841c4d4535d3844ee0`  
		Last Modified: Thu, 29 Oct 2026 19:15:51 GMT  
		Size: 14.3 MB (14266642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39cc1f262256dd65be426501c6ede99769903e715f41d9dc8c01f5e5f0a557d1`  
		Last Modified: Thu, 29 Oct 2026 19:15:52 GMT  
		Size: 91.7 MB (91662176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83f8f5616649f66095f2e0fae4e5b7a62e3077f5ab3555bf6bafa6378da75003`  
		Last Modified: Thu, 29 Oct 2026 19:15:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:013f37925848bd35d09cb7ec64816a0c6fed3fe9b76638914d64b361e6fc7e39`  
		Last Modified: Thu, 29 Oct 2026 19:15:50 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f7259f140f839b37f87e58cdebe3bb1be436736f1068bfc579143d8e073deb68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **967.7 KB (967667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b98f5c2356e3cf328122e7c6ac401a740c6d2ef69d2e6b9abde98f15feba382`

```dockerfile
```

-	Layers:
	-	`sha256:5c140faedfce52cb938f06f927ff1fc4ca894628b6c0c4fa7eb1f20c62faa51c`  
		Last Modified: Thu, 29 Oct 2026 19:15:50 GMT  
		Size: 947.1 KB (947150 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e9df0adea374f31e97c25bb0ec0e08da830dbe00544b3c2656810d2fb3d88eb`  
		Last Modified: Thu, 29 Oct 2026 19:15:50 GMT  
		Size: 20.5 KB (20517 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-alpine-3.22` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:9ca9a62ce17e5911b2a31c22467bae5ce65a7d461fa78c3e640a135af3db2339
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.1 MB (109060288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d279b916d3835a685f79e411e00d1a8522f10a65a3f041626089d3871313989`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 19:08:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:08:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:08:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:08:42 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 29 Oct 2026 19:08:42 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 29 Oct 2026 19:08:48 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='d02eadc0a0f93faba4be38c8657eb8eef842103a4c7c2400f5827dbd90fc21c9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='efc86581260b73c340c313e7577c4c85d6a8a899edc3748d78bee5238fe44a4e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 29 Oct 2026 19:08:50 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:08:50 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:08:50 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:08:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4854aa6ffa67a08d1bcdb0ab6ba76eb3aacf2754998fee47b238fb634217b460`  
		Last Modified: Thu, 29 Oct 2026 19:09:05 GMT  
		Size: 14.4 MB (14362530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:565ce3279edafa75a43c9fae069c2c754efe70007fb4aedf77f535c893b65b97`  
		Last Modified: Thu, 29 Oct 2026 19:09:07 GMT  
		Size: 90.6 MB (90567785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47bc97841320a5f76e181a04770c48a20c41e39671ab504c27d04f36829ea1f9`  
		Last Modified: Thu, 29 Oct 2026 19:09:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40db6f94db8caf55d223ea9dd76bb28cd25889ea8aa9b495f7f061f520a95bb3`  
		Last Modified: Thu, 29 Oct 2026 19:09:04 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0d18d2269d14cf4238a08f4713f73950ad2cdd91328937582df971fd5e85c12c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1117790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:285126adde2f87740c41b10caabe09ab2c2a3de65fdf8a60fabb7af5e8343eb3`

```dockerfile
```

-	Layers:
	-	`sha256:837f9b6fc2d65a488dc4723ddcd9090f49728a641081e8fa4fb0c31395e77fe6`  
		Last Modified: Thu, 29 Oct 2026 19:09:04 GMT  
		Size: 1.1 MB (1097149 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e3f892916c619ae034c8c2c2ab9420b9c5d1b1b1d0606b6b4e8dc02c90bba43`  
		Last Modified: Thu, 29 Oct 2026 19:09:04 GMT  
		Size: 20.6 KB (20641 bytes)  
		MIME: application/vnd.in-toto+json
