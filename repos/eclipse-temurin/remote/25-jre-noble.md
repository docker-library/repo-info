## `eclipse-temurin:25-jre-noble`

```console
$ docker pull eclipse-temurin@sha256:30772b161c319f9a10c82e30fd77b7b6702c6b051e44e0e9f3d7ab5dd389a5ab
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

### `eclipse-temurin:25-jre-noble` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:d83c24be1a395b4982f39e9de5712f48a2cc90452d39d2d9cd33663ed54db1b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104300455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:642eb283d527841d53fef69c094ef1f6ea2073e203efc683a07235b675b8b2b8`
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
# Fri, 25 Sep 2026 22:39:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:39:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:39:15 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:39:15 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:39:15 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:39:33 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='dcf12c8c5e0b49bbae7978f42ca6671e10671db7509f406a0f0e65e3b3dc65a9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:39:33 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:39:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:39:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e987dcb9766f0eed65feeed1a3c3c53b1eba0282b024c1c1e1c6b239229162b9`  
		Last Modified: Fri, 25 Sep 2026 22:39:47 GMT  
		Size: 11.5 MB (11457500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d664886f57490c5c1ed5074a8428c8e03ae07098dfa7b45636212beecbe55cc9`  
		Last Modified: Fri, 25 Sep 2026 22:39:48 GMT  
		Size: 63.1 MB (63076343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cef96934f3f6f13ea437a48de42c9e39dd3642fe1ce9434f77c78ec7b00bf1fd`  
		Last Modified: Fri, 25 Sep 2026 22:39:46 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:44a6af79a97d95a1e162ce7e9a1c9f2079de906137e9f1ba57c04d87aaad8964
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3072767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1c62088ca33d93bfff2722008d8515c3b7d1900878619790d28225319f66f04`

```dockerfile
```

-	Layers:
	-	`sha256:88c9e2dabb025eec3f2c7d4a75ba05bda81a88ae129030e8d775a87cd6afdd0a`  
		Last Modified: Fri, 25 Sep 2026 22:39:46 GMT  
		Size: 3.0 MB (3049672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d978ef6e23ffcfa8833a6136aa2cd7d7328681b78b811b93ebd8f5292c31ce44`  
		Last Modified: Fri, 25 Sep 2026 22:39:46 GMT  
		Size: 23.1 KB (23095 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-noble` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:f6548ba38705ddcbf2451909d2d3b221e8ddbb919edca3311f29fc12f182da3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.3 MB (102322360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a2304bc7ef49fde3dc855e2dc55fa7f12fb94c95adbfce2dce63fb92acf687`
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
# Fri, 25 Sep 2026 22:38:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:38:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:38:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:38:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:38:21 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:38:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='dcf12c8c5e0b49bbae7978f42ca6671e10671db7509f406a0f0e65e3b3dc65a9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:38:37 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8d1eab90108b66f3baacdd5eccc491b1db237da6da6c819cb2da948af5f1592`  
		Last Modified: Fri, 25 Sep 2026 22:38:51 GMT  
		Size: 11.5 MB (11455996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e17db3f6c92259c579dcc285f0d7cc2fd64d5f8cccbdc44645ad0f23e3b40fde`  
		Last Modified: Fri, 25 Sep 2026 22:38:53 GMT  
		Size: 61.9 MB (61922289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e581fb393e6f7eee1d13b8a8b87e9d28cf94b087b671294ab2e7881862720d`  
		Last Modified: Fri, 25 Sep 2026 22:38:51 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7542878cae0aae4ea20d827ef6aca3e6c3ee84acff85f69d259376cfdf5504a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3073302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0584b044ec480b559bd7b26ae2c12adf4ddfebd85a7e2c00ab0e358c747c09c6`

```dockerfile
```

-	Layers:
	-	`sha256:fe22202c44f1c562dd718b1bc0df81e54c0e96d9760501fe2d1be7d9c1fa3934`  
		Last Modified: Fri, 25 Sep 2026 22:38:51 GMT  
		Size: 3.1 MB (3050097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54b00f32a190c59918f1a081f4f6ba38fa89c03f764345f973d01e153122ede3`  
		Last Modified: Fri, 25 Sep 2026 22:38:50 GMT  
		Size: 23.2 KB (23205 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-noble` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:d8dcb962153e98a0b5a79e21bb04b9d8aa3b9d6d12a91c7d82674202e90f2093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108422229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a090487e4855b2aab0690210c31b3f81e56cbf91324c819ff7f9a30a31ce998`
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
# Fri, 25 Sep 2026 23:04:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:04:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:04:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 23:04:52 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 23:04:52 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 23:05:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='dcf12c8c5e0b49bbae7978f42ca6671e10671db7509f406a0f0e65e3b3dc65a9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 23:05:26 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 23:05:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 23:05:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0357385a24770be0e066f7524d8fe531ba48b779357b59d30ac162a060069159`  
		Last Modified: Fri, 25 Sep 2026 23:05:57 GMT  
		Size: 12.0 MB (12024537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f930208de9eafb2e636c994e00deab09da7842b3a221638347df62d8044200c`  
		Last Modified: Fri, 25 Sep 2026 23:05:58 GMT  
		Size: 62.0 MB (62018237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93b8452d757c5f89a118bda38076b5819d386b54aa213bf611aae2d9dd14a2d`  
		Last Modified: Fri, 25 Sep 2026 23:05:56 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4c80e00a30d7565cb401299ff044999d7f1cecf9e7249e94a8a8d8b8990875f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3076079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a28d1187257b600f3c4508d040080d176c35180dbdf1ef5c750795616094cb4f`

```dockerfile
```

-	Layers:
	-	`sha256:95d9baa08dd6ff45fe8bd8f091d6fed3aa34b1b0ffabc39a472a5017c00ecf9c`  
		Last Modified: Fri, 25 Sep 2026 23:05:56 GMT  
		Size: 3.1 MB (3052948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba652d734d83bcf67c3d9ca3572643acc5ed19363832b62e6d7a9c18f5f1c2a9`  
		Last Modified: Fri, 25 Sep 2026 23:05:56 GMT  
		Size: 23.1 KB (23131 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-noble` - linux; riscv64

```console
$ docker pull eclipse-temurin@sha256:461e1dd5651c899336a01eb1f218470fb3834bc3166e6730ae0261a27b50e7bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104266010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:788418bf5b39eb6ed247d58deaf2ec18c2ab95f6aa598a786c90cc959f6cfedb`
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
# Fri, 18 Sep 2026 19:04:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 18 Sep 2026 19:04:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 19:04:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 18 Sep 2026 19:04:43 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 18 Sep 2026 19:04:43 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 18 Sep 2026 19:06:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        arm64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64el)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        riscv64)          ESUM='ee3e62f50e2bdd5b65f9f8937b33d862846d0245bc1be0dd8e3a99ea10fce32a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 18 Sep 2026 19:06:53 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 18 Sep 2026 19:06:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 18 Sep 2026 19:06:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:aaab2a0ba2a1e3d3ddb5fa18f45aeabd3d5ea39840a67f33c3ef011e15f84e42`  
		Last Modified: Fri, 11 Sep 2026 13:39:11 GMT  
		Size: 31.1 MB (31052602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aa33d7440c222b087ca520bc9cbbcf09fae1c8b6b4601ab7c8d42b5092b2f75`  
		Last Modified: Fri, 18 Sep 2026 19:09:41 GMT  
		Size: 11.5 MB (11529625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c134a03314541e9e8598117b7e966fd5a9a951ea140430f1cfbdfc158e602c04`  
		Last Modified: Fri, 18 Sep 2026 19:09:50 GMT  
		Size: 61.7 MB (61681286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ef64fb1175a552501bfab52e3b4ab472d34c137bdc72830c7b791fdc0bfeb5f`  
		Last Modified: Fri, 18 Sep 2026 19:09:38 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:44e0c4f1cafc515713d1c579eec1f0748fe455a43a29a9d8f3da1c6a52855c83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3064707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e693eceab5ad54601c39de67f216c6f76e9be7a14a7fe5bf01294a307d0c5f9`

```dockerfile
```

-	Layers:
	-	`sha256:70004be64bd9186b8a639489c1655be8a6b6b548d756ef2d0f93fab0f17a694e`  
		Last Modified: Fri, 18 Sep 2026 19:09:39 GMT  
		Size: 3.0 MB (3041636 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8aaa462ad879101c0427fdef4fb30d99e6b777e3fd9b0d1bca73a482c701b61`  
		Last Modified: Fri, 18 Sep 2026 19:09:38 GMT  
		Size: 23.1 KB (23071 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-noble` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:52d5dfdf2c204ca060e3f1bdabcc2819e7b2165ee5878d13b2c258bf7b4af094
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.2 MB (102212993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3893de5e41c4b5c5b3626031fb9a47c720013e4a82aa45cbd24196cb2c36a179`
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
# Fri, 25 Sep 2026 22:40:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:40:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:40:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:40:18 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:40:18 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:40:29 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='dcf12c8c5e0b49bbae7978f42ca6671e10671db7509f406a0f0e65e3b3dc65a9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:40:29 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:40:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:40:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:2d1aac92a29a4eacd140d431dc526f6da099043772d537d221717429ee877b2a`  
		Last Modified: Fri, 11 Sep 2026 13:39:18 GMT  
		Size: 29.9 MB (29945392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:072a03d96e37551090b7616f4b8d9b05f37e4c7de27d8178c2c1e6001c6297c1`  
		Last Modified: Fri, 25 Sep 2026 22:40:48 GMT  
		Size: 11.7 MB (11734734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75d9c4dfe47aa911fecf7daeb2f8d3b9bf119cc0d4f30fe1b937030b44176849`  
		Last Modified: Fri, 25 Sep 2026 22:40:49 GMT  
		Size: 60.5 MB (60530370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e27b9784c3b275d7fa3bdc94acc80b9fc9e9f9e6f48b81af7ac8ca660cf4f0f7`  
		Last Modified: Fri, 25 Sep 2026 22:40:47 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:65e50d11bef648a28be05cc49d9be14cd5874b68fc6b7fe8f8c82aa741424486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3074365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fddf878eb53ef71a9f62985147a63a68e46d9694f1d4393f48c31480b60ddc9e`

```dockerfile
```

-	Layers:
	-	`sha256:9f21353f5dd01a9925fb14b10812f89208763f1d3f974a4dd51e2ba7d6aaeda9`  
		Last Modified: Fri, 25 Sep 2026 22:40:47 GMT  
		Size: 3.1 MB (3051270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61d1407f436d3e4ecb26c25e27132fd1e8d82c6f7edca5a3944528e5a1f2aebb`  
		Last Modified: Fri, 25 Sep 2026 22:40:47 GMT  
		Size: 23.1 KB (23095 bytes)  
		MIME: application/vnd.in-toto+json
