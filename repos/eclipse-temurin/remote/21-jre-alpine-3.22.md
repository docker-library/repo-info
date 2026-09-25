## `eclipse-temurin:21-jre-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:c41c6119886d540fff8448951335fc6b471eaaf111ba64a0fc9db06102201700
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-jre-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:5b17f29cd2f022bd5d59ec35c0123fa70106926a27da46c9c5300a0e11bd786a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73408744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dde7fd20517ef6ac31495fadd77e5a7fdd7acdd1bf53b4e05917c73c2edfbaa`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:38:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:38:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:38:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:38:02 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:38:02 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:38:05 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='98e15ae359e1f87160ee4c0abb43336513e41712d439fd4a805a5474af32b2c7';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='7bc7c2f9ba5ffea5f727e14581964bd54294b8edc2be9a79ea6393f8d0799200';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:38:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:855cc975c272945adc1cfb5129b22adc64c10b58838fedaa2ae588987045080f`  
		Last Modified: Fri, 25 Sep 2026 22:38:17 GMT  
		Size: 16.4 MB (16357407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514d51dc2d825830df00b1cd085db733d125153ddd881ce5473cd587ac11a034`  
		Last Modified: Fri, 25 Sep 2026 22:38:18 GMT  
		Size: 53.3 MB (53256673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce5650613f717b4ce795137e2b240e6c3726ddfab95b5ae85d8531e0cad63d8`  
		Last Modified: Fri, 25 Sep 2026 22:38:16 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33754f7b3d479fa32fb2dff6d3725515e25b7a7df16820c0f5b42248a6127e3`  
		Last Modified: Fri, 25 Sep 2026 22:38:16 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:99b6da29bcb06250aaec7cd816b748ad1ae0274c3637a8382fa21428f55d0e48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **903.0 KB (902964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89b36ea5b5f71994b6ebc22cb926508d6933c090c8e999bd24f7fbaea09c94d9`

```dockerfile
```

-	Layers:
	-	`sha256:7dfec02daae4069e3a00a074e536e91337054117371e82bee58d40d43fa0dae1`  
		Last Modified: Fri, 25 Sep 2026 22:38:16 GMT  
		Size: 883.9 KB (883907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2cef37c39aec98ade417e589aadce26d715c53dec6b49988def8999c7efb6c6e`  
		Last Modified: Fri, 25 Sep 2026 22:38:16 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-alpine-3.22` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:4424e66886a0bd5f5117d889c96bd64824102451d35bab83f378dbca2c569cfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.8 MB (72755531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20fc77c1219c910a644c89b7cd0bc461114cf1b2ac37cfd124fd72d79df3f911`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:37:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:11 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:11 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:37:11 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:37:14 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='98e15ae359e1f87160ee4c0abb43336513e41712d439fd4a805a5474af32b2c7';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='7bc7c2f9ba5ffea5f727e14581964bd54294b8edc2be9a79ea6393f8d0799200';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:37:14 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1125c548a1229746e2efcfba32d5c9a0edd736d7bc733e4167310f4b165ea9`  
		Last Modified: Fri, 25 Sep 2026 22:37:26 GMT  
		Size: 16.3 MB (16306053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:456ad689138417e8ab4c0382a119a77a5ae3dc50faa720c9bfaadf110e190afa`  
		Last Modified: Fri, 25 Sep 2026 22:37:27 GMT  
		Size: 52.3 MB (52323803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c406f05689e59ef8e6846da14ddab91f84a36e5dcda77f4ed60a42ebe4146bc`  
		Last Modified: Fri, 25 Sep 2026 22:37:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1d98ad56e33ef58587197e7f4163ddbe7c57507edbf33306e9275d52fad8b5`  
		Last Modified: Fri, 25 Sep 2026 22:37:25 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:fb3a55e4c4e1a7e4dded3de28ce339bcec0b34438f1089daa8ae4a904f4d643f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **902.5 KB (902488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f474615edc96de31d8c832720666ea9b250046d1a42a242f17285cf16864fc`

```dockerfile
```

-	Layers:
	-	`sha256:bff5212c9fb900ad02356de6900654f6fc52f03484c102c0ff21b088f31e9cf3`  
		Last Modified: Fri, 25 Sep 2026 22:37:25 GMT  
		Size: 883.3 KB (883321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec7c9d81092c9e21df45d364530764dfc9047d6e7cfb9011331305a9e38f46c7`  
		Last Modified: Fri, 25 Sep 2026 22:37:25 GMT  
		Size: 19.2 KB (19167 bytes)  
		MIME: application/vnd.in-toto+json
