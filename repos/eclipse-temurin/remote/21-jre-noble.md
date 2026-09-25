## `eclipse-temurin:21-jre-noble`

```console
$ docker pull eclipse-temurin@sha256:7edbe8532195c8222735caca437e56780e1fc7db08a4b4b4af77fe188cccc15f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-temurin:21-jre-noble` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:a24fdda21f9ab6482cb01302f09d05bc463f265001f335d2e7d446751a40eb62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.8 MB (99831391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6fe0577c6a717205746753eff4e667269b8ae5dd2fc049050f99201efa5acf5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:38:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:38:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:38:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:38:28 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:38:28 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:38:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='7b0731083e1f298d2216b266bfbb2ea600482cc025362af4129aaed758afc611';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:38:31 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2858e1f816f1123084b25b2960a4407effeabb754b3707c19a7f840a8993645d`  
		Last Modified: Fri, 25 Sep 2026 22:38:43 GMT  
		Size: 17.0 MB (16967071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beb27ce4ddc09fdbc0415ad7fde2f1fc3c487cec2d6a17a079cc1f8807216248`  
		Last Modified: Fri, 25 Sep 2026 22:38:44 GMT  
		Size: 53.1 MB (53097582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f48cc1bec32eb15c5cae25cc86a646303d7dcb5302639f62cb6be03f9fc43e4`  
		Last Modified: Fri, 25 Sep 2026 22:38:42 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82114a80401c4fe150e5d00a6423568546d038b30a663c65df80bd5799b6f43d`  
		Last Modified: Fri, 25 Sep 2026 22:38:42 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:bc06e296b2cee5a74a1f651bb82ac439262de3d0e2ff858d5d3a97278ad90dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3294273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6298360542a1fac569e3321a4c139ab8faf779397c47cc16f11cf7ce6ac15f6a`

```dockerfile
```

-	Layers:
	-	`sha256:57b566e5611ace24373f1d4d1b9e61b391387bf75ea27a0dc91c1c083bc264d2`  
		Last Modified: Fri, 25 Sep 2026 22:38:42 GMT  
		Size: 3.3 MB (3271706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f803d0c4282a37df7066c4e1e76ca1f21c70e0b042c5400d5b5ba2703139b92c`  
		Last Modified: Fri, 25 Sep 2026 22:38:42 GMT  
		Size: 22.6 KB (22567 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-noble` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:11ef6037c4f2182d04314669f767ba4ba4670bb81900bb4213f602e752ec1945
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98195400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6814fb2846eb274be31451eb718f96e209e03a08809bed3cc403dbbc1b9c699a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:35:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:13 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:13 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:37:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='7b0731083e1f298d2216b266bfbb2ea600482cc025362af4129aaed758afc611';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:37:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e0035b7e45a81e60690afb8f7160f988b3c03e3fb7dbbf238e383fe51828e40`  
		Last Modified: Fri, 25 Sep 2026 22:35:27 GMT  
		Size: 17.0 MB (16977369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1647273fe4ac5c1e20d0ae151b27ad49496eec99ecbbc9e40c960cc6f0fce8a`  
		Last Modified: Fri, 25 Sep 2026 22:37:31 GMT  
		Size: 52.3 MB (52273827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e2475e7e6950ef78cb624102aa6f1b85d38bffc97d84628d0b681650ab83b34`  
		Last Modified: Fri, 25 Sep 2026 22:37:29 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:578a92f1fad0d0d855eaa30b7cbd35f8a8d381413fb0ce57f6ba8b556a7d8a76`  
		Last Modified: Fri, 25 Sep 2026 22:37:29 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f94db493467c138303f9df97bbaed4804782524d9f4b38bfbf871769270c43e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3294830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b297bb777eebd510ad4d6776920e9a1e42d463ce8f1ac1218be49dc68c56bf4`

```dockerfile
```

-	Layers:
	-	`sha256:19e9aca8b54127c797f42e4f3fb2cbd62118303123fa7a2d92a47099ada52f5c`  
		Last Modified: Fri, 25 Sep 2026 22:37:29 GMT  
		Size: 3.3 MB (3272153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12fe62440b69edd780c74f425aee95b61e804ad7e8d1eb308457d2ff5b6e4102`  
		Last Modified: Fri, 25 Sep 2026 22:37:29 GMT  
		Size: 22.7 KB (22677 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-noble` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:bcd727dd657dbe7842aa4ef3c7b20162997b2040d6a9b990eadc85b4d0315167
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106277735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a59532320b81c61e7bf24a6b3a8d0775088dff3226270e3b6e24b53d9e516c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:34:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:34:03 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:58:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='7b0731083e1f298d2216b266bfbb2ea600482cc025362af4129aaed758afc611';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:58:09 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:58:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:58:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0dc4ca29f5ca7e294a6a894d89e44c4f2de248709545d2a44d42686c9eb9365`  
		Last Modified: Fri, 25 Sep 2026 22:35:05 GMT  
		Size: 18.8 MB (18783708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:788c0599804cf2ca5f7dc17e69b2ec076bef435f05bc02a8cdadeab756adf118`  
		Last Modified: Fri, 25 Sep 2026 22:58:38 GMT  
		Size: 53.1 MB (53114446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e9aca683bb791d459fd75756ab40f105e6a0838bf581e7df00dddd4876bc6b`  
		Last Modified: Fri, 25 Sep 2026 22:58:37 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f70d9bc8330cdc7d0b001e38844df7e4a0ccab0f88a1d1e6a008401ff91d988`  
		Last Modified: Fri, 25 Sep 2026 22:58:37 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a7db5593e62cada762ce908d4a6bc3f5499acd5a79bedf1f3926f68a0371cf1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3298365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4244d29480fe8378cdf4c66ad2e11937625b83a012c8c93ce819cd4faea7c927`

```dockerfile
```

-	Layers:
	-	`sha256:32a8d6dea87bbd2af1fda7a64604916a564bce41704d984f864dad7db6a8b194`  
		Last Modified: Fri, 25 Sep 2026 22:58:37 GMT  
		Size: 3.3 MB (3275762 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:879319bc5d97541bc1b9ac780a8eeb02a3755140091fc773f1856822227fb890`  
		Last Modified: Fri, 25 Sep 2026 22:58:37 GMT  
		Size: 22.6 KB (22603 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-noble` - linux; riscv64

```console
$ docker pull eclipse-temurin@sha256:127070d7e4e696ffb45f39406929b6ec1cdf42a497fdb0cf4f2f7c733018f82d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101488748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:370e495912b6a164446a40ed97968dac5c3e819d6007605258eb04703cdcd38e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 11 Sep 2026 13:13:20 GMT
ARG RELEASE
# Fri, 11 Sep 2026 13:13:21 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 13:13:21 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 13:14:28 GMT
ADD file:0347a49c8424872a16c193cce85674e478b1e7045067852c419ceffbe1e8faa0 in / 
# Fri, 11 Sep 2026 13:14:33 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:41:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 18 Sep 2026 18:41:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 18:41:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 18 Sep 2026 18:41:31 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 18 Sep 2026 18:41:31 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 18 Sep 2026 18:51:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8a379a67c91a3ae61ffb33d46e0a40c7ba35e70713c4db31cfca30492f792eff';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='5f9c96b656827b9d14ebeda7739e25be554fa6d25669b03847c1df6e869c0679';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='fe1b73886269d589336532c31c0db0d01ac7cd567313cfe3e76f02b37b58c068';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        riscv64)          ESUM='e1fabd17fd266409221323a754b0a5467a0bdc118b06302646f7b795cd49d95a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2ec0aecaec755ffa8c7904983f89873e51c28e683de39946ba49496acae8fe96';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 18 Sep 2026 18:51:45 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 18 Sep 2026 18:51:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:51:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:aaab2a0ba2a1e3d3ddb5fa18f45aeabd3d5ea39840a67f33c3ef011e15f84e42`  
		Last Modified: Fri, 11 Sep 2026 13:39:11 GMT  
		Size: 31.1 MB (31052602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07f98a9ef630aae1969917b15f60fd08bebd6d36bfe3cb0ce0db2c1595e38e6`  
		Last Modified: Fri, 18 Sep 2026 18:44:20 GMT  
		Size: 17.8 MB (17837859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c36634eaf1f8c564e92f039e5c27dbd8dadaa5ad90711a5526ed40fb9b8399d`  
		Last Modified: Fri, 18 Sep 2026 18:54:26 GMT  
		Size: 52.6 MB (52595663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eb604e5080519f1d94bba47e38f1bfe022158e66c8dd8648a7e78b65b3f11e1`  
		Last Modified: Fri, 18 Sep 2026 18:54:17 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7c20865cc72bacf79ab190461230e5f7dd114c557a9807c4a2b986bb0704d05`  
		Last Modified: Fri, 18 Sep 2026 18:54:17 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:db65149bd8550bd5ea7e9c6b820bd5e233013c6b17659a65d8963c0a0a8d2b44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3286299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792f2042e8fb80c3833e01f5c9658a19b41f2e50097822cd772e5cb54321d244`

```dockerfile
```

-	Layers:
	-	`sha256:77a3db64527716f86f865284602ba9aba97693522fc0fbcc9ea526e71756e35b`  
		Last Modified: Fri, 18 Sep 2026 18:54:18 GMT  
		Size: 3.3 MB (3263756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b6a10dce1abfeefe5ae24ca0e3a23d704a567cac357a524370d891775375e59`  
		Last Modified: Fri, 18 Sep 2026 18:54:17 GMT  
		Size: 22.5 KB (22543 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-noble` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:8601b4b6ad018e97c54f60dea6acabfc77bfd87c0367380f410d60acee677936
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.1 MB (97143198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:412a6b854802be48a7d71e2679ab86f4972f458e0edc82eb4ef956f85439d90c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:08 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:08 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:08 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:09 GMT
ADD file:62feb922e0e5d063c128e1d59ecbc5c2274c804b45055ac83d490a0a0c953700 in / 
# Fri, 11 Sep 2026 11:53:09 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:38:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:38:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:38:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:38:41 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:38:41 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:38:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='7b0731083e1f298d2216b266bfbb2ea600482cc025362af4129aaed758afc611';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:38:43 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:2d1aac92a29a4eacd140d431dc526f6da099043772d537d221717429ee877b2a`  
		Last Modified: Fri, 11 Sep 2026 13:39:18 GMT  
		Size: 29.9 MB (29945392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daee76998095116af0d76f7418bb4fb71638a19fbf5c58b542e5b564b1784207`  
		Last Modified: Fri, 25 Sep 2026 22:39:00 GMT  
		Size: 17.6 MB (17557013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef8a402ed5da6b78f68ace12c66be3f383c03280744c37a0ed0ef801720a030`  
		Last Modified: Fri, 25 Sep 2026 22:39:01 GMT  
		Size: 49.6 MB (49638171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7a2fe801bfeceeef8e9f7ae71d5697aa5396d06066c3146897422d3be54fc52`  
		Last Modified: Fri, 25 Sep 2026 22:39:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df56de081664d88a9c5a2558691930a24eb998cfc7e992ad837b5614fa42efb8`  
		Last Modified: Fri, 25 Sep 2026 22:39:00 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0ae536d8e8df4c587d33abaceb9ed8f301d837f456db3a2d2e302d712cf4dbee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3296473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b52ce9981a7248e32bd86c2ea5de7a0d1f139f8563c566240ce00fed682b51c`

```dockerfile
```

-	Layers:
	-	`sha256:1d9ef9cf14b734eef386602493af13bfcd33411ecd83157de15d9305895dd37b`  
		Last Modified: Fri, 25 Sep 2026 22:39:00 GMT  
		Size: 3.3 MB (3273906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:534cdfc0f4ae9cc7a039c7bc945f221e1eac4104b614005f6f5d20d34d0ef526`  
		Last Modified: Fri, 25 Sep 2026 22:39:00 GMT  
		Size: 22.6 KB (22567 bytes)  
		MIME: application/vnd.in-toto+json
