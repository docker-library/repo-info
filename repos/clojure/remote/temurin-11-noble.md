## `clojure:temurin-11-noble`

```console
$ docker pull clojure@sha256:4cb357d840f38285aa9ea72ed3ca1bf3218d82c46178e06858924dff2d721db5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-noble` - linux; amd64

```console
$ docker pull clojure@sha256:7cacc1fc6b7c632825ec7499f088935ab9cbb1fa5bbf882b1e8f8c3886500cde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247137990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ff609369fd872083d4c4306ddfffd05fd13dbdd453d1e3233997811114e5d71`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

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
# Fri, 25 Sep 2026 22:35:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:21 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:35:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='95cd974d9155650255cb8747a44df8170b00f932ac7f63fec0598bf2ea5706e0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:35:47 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:35:47 GMT
CMD ["jshell"]
# Fri, 25 Sep 2026 23:20:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:20:30 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:20:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 25 Sep 2026 23:20:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:20:45 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bcd501e84c0668c8b9962e25c22e8ce0daec14f199370ac05ed605cdcda205`  
		Last Modified: Fri, 25 Sep 2026 22:35:35 GMT  
		Size: 17.0 MB (16967008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d763b676781b28db80a2bbe4be1d89f255cdefa66e1c090cd61bf675fbee0626`  
		Last Modified: Fri, 25 Sep 2026 22:36:06 GMT  
		Size: 145.9 MB (145869769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:111bcd1b3babcd6f51522e7e4db0deaaeb3a34c66147089467f4797566a0724c`  
		Last Modified: Fri, 25 Sep 2026 22:36:02 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad65c1d5edb54a191c6775a4636df8665bf46630f521db5d42f71688eb428185`  
		Last Modified: Fri, 25 Sep 2026 22:36:03 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d50e6e3c424b69eaae9e36a82d87b6befcaf426b99390784cf1ede54974ab60`  
		Last Modified: Fri, 25 Sep 2026 23:21:01 GMT  
		Size: 54.5 MB (54533826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0328c3011fc8c90047a51d52540ee4b701a894dc2a456ac7a298e906eacc5885`  
		Last Modified: Fri, 25 Sep 2026 23:21:00 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:1c43fe1dfb8a2a422affbb5721ab872436a5bedd0b200a3ef7e11c977aedbf23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5770703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a24fff1cce5a8ecae804bf801f7bb6bd2850c90960343262a4ae458db7d8d5d`

```dockerfile
```

-	Layers:
	-	`sha256:28d99e08ca9e4c18bbefc26eeb137e0f6400252472cc7e37b7e4810b13cd1a61`  
		Last Modified: Fri, 25 Sep 2026 23:21:00 GMT  
		Size: 5.8 MB (5756510 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a91fc673db7f087118a079886b83d1e548848ba37beefbcd20f2f48afc83f4e0`  
		Last Modified: Fri, 25 Sep 2026 23:20:59 GMT  
		Size: 14.2 KB (14193 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-noble` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:117d2a231f45cef6cd63cf94e5e6d36978f538a85159aaa609a6f0a33f1ab36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.0 MB (242951549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27db18bf6955909ad8ff4ca1777dfcc1a5643f2cc620dfe8c0fae4ed7eb38c3b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

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
# Fri, 25 Sep 2026 22:35:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:26 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:26 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:35:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='95cd974d9155650255cb8747a44df8170b00f932ac7f63fec0598bf2ea5706e0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:35:33 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:35:33 GMT
CMD ["jshell"]
# Fri, 25 Sep 2026 23:18:03 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:18:03 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:18:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 25 Sep 2026 23:18:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:18:21 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7186bc061409f6cb5494cc8920a3199a4af57e83786694202b4f0386b0e062de`  
		Last Modified: Fri, 25 Sep 2026 22:35:50 GMT  
		Size: 17.0 MB (16977391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acca42fe7e3cda3ad98de950887a7e6e33e161dedfbe5abbb9c72c3377f68407`  
		Last Modified: Fri, 25 Sep 2026 22:35:53 GMT  
		Size: 142.6 MB (142583861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0964d7b79b4a20426b8fbc21f8e5d8298a3e9df6d00eaf6e547827c46de6eb86`  
		Last Modified: Fri, 25 Sep 2026 22:35:49 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d4e605cf229657fb049005d7bf0097f8c50b778dd33fc78e90c5e326ceca1c`  
		Last Modified: Fri, 25 Sep 2026 22:35:49 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a42630c6b41f428b57b01c0eb0671a67ae59748bad4872d93468adc9628cfe2a`  
		Last Modified: Fri, 25 Sep 2026 23:18:37 GMT  
		Size: 54.4 MB (54445448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:144cdc1e9bc5526f38c83e5e77ea9e7cf036dec56073b3ef84710538d26a4127`  
		Last Modified: Fri, 25 Sep 2026 23:18:36 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:c39ad73af4fdc2d012fd96a6f4a72c39ada4851fb041a97bddd9c7e6cccff368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5778025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d96accfddebb0f6c32a7ac0fb2405987b86ee291cfaefb11e5a04f79cacdf930`

```dockerfile
```

-	Layers:
	-	`sha256:e7bf1b36ecb41e033650bf857dc9ec4bf19740788e13fe8100bda654f68b6228`  
		Last Modified: Fri, 25 Sep 2026 23:18:36 GMT  
		Size: 5.8 MB (5763716 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ff2bc618ecf40813f6dcc15056c5c31dcb5a552f906985fb7528bffe6b6619c`  
		Last Modified: Fri, 25 Sep 2026 23:18:36 GMT  
		Size: 14.3 KB (14309 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-noble` - linux; ppc64le

```console
$ docker pull clojure@sha256:4835c46d199a604fc9ebaa6cfef343e925ea98855fd6ed26345644ebc609149e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.0 MB (243001789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6c8251724308488a45fad336d8831f1dccfbdf4426ea75818fbeb577b4933ba`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

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
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 06:47:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 06:47:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 06:47:17 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 16 Sep 2026 06:48:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5906e0339e9322a688b2375eaf40666e00a16e008b0067b0a9f9e4b6c5033720';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='66a7d4af3572d920b0f1b01710ffa79888d4ddd1b784632e33a3d711aa7d1e63';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='abe56bf1e4aa83a676b1a4b397e80f47ad686eed9aaef3cd007d2212cadc5fb0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='e662ceae8e93c1754f31f444a2fc7089add9a77b62d8aea29af50409ca111cec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='9efb3c1430d363f7ba5b4262aa427ca30a5f466cd8107352223308fc73d1b0a3';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 06:48:38 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 06:48:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:48:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 06:48:39 GMT
CMD ["jshell"]
# Wed, 16 Sep 2026 10:25:17 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 10:25:17 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 10:34:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Wed, 16 Sep 2026 10:34:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 10:34:26 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4203fb8b2c14c1adc11a851d1fc29ab6315d968370915b4c1821d3df6e6db4`  
		Last Modified: Wed, 16 Sep 2026 06:47:54 GMT  
		Size: 18.8 MB (18765991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5a1ac381872c01c9734d34600f0bfb0e7f3ab92150cd46c03bd759d032f033`  
		Last Modified: Wed, 16 Sep 2026 06:49:10 GMT  
		Size: 133.1 MB (133104238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e04d5c18e71c5e5f72664df1943764fd3522ccb5901568f9365ebc6bc861d82f`  
		Last Modified: Wed, 16 Sep 2026 06:49:07 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:813fa241f57e2fdd78ae198b1db4ad6dc9531bc41c9de48673bbab1f9541ef9b`  
		Last Modified: Wed, 16 Sep 2026 06:49:07 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea6959f8660460fd3ffe353ff229895c9a02c719d7c18f47907067e9d8dcd81`  
		Last Modified: Wed, 16 Sep 2026 10:34:54 GMT  
		Size: 56.8 MB (56751330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5e9adc8bb549a33c0c7722e4c64f6eea3b1c2df76efdbcbdb00ee70c614da1`  
		Last Modified: Wed, 16 Sep 2026 10:34:53 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:0d124fbe979d35502cd4a17de013610a8454fa761f2d3fbde86dfb48bf0ff348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5775373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab7cac103bfbcf74deaec141814bb6ef6b0cf091f77ee0b93e061b60fd932109`

```dockerfile
```

-	Layers:
	-	`sha256:5c4a7eea96f80953c5a9707aa51cb8081f0fbf047bc177f1966a0d765ee6dda7`  
		Last Modified: Wed, 16 Sep 2026 10:34:53 GMT  
		Size: 5.8 MB (5761132 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6aef40826a6f206202b01bde2495971c1f2f638e1ddd2451bfeb9a6ec7206708`  
		Last Modified: Wed, 16 Sep 2026 10:34:52 GMT  
		Size: 14.2 KB (14241 bytes)  
		MIME: application/vnd.in-toto+json
