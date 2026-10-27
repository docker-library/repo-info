## `eclipse-temurin:26-jre-noble`

```console
$ docker pull eclipse-temurin@sha256:dc172f465cb1fd334ecfbd8716d36142955e94485cfb0cd57fa469f4783aaa5c
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

### `eclipse-temurin:26-jre-noble` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:84ac38ad927a79b10858292aa3e2bf4f1a249a1b9cb2cff3163a82adfad158bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105821688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1037fd01ceb34227dffbe856952d0edb12775dade26a12ba6ef8a106c430f70`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:14:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:14:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:14:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:14:13 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:14:13 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Mon, 26 Oct 2026 23:14:30 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='35773116829554fb38e6acf9b92b3ba8bb7856557c3ab885e26e7d61e8c8e1b0';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9e1527681ae4a615044c88435d2c1a9faf1fd5c7baaf9514a4a4207608150087';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='be3fd8b8c10ceff1af6a44ee2c634bc0f93af3b5458d0be7881398fa91543909';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        riscv64)          ESUM='b3776588fe31947ea9234882203813187cf1b0449a4a98648bbacd6789c92f7f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_riscv64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='e2785bf8d457176258442e74db7d5ddca8ebf01e55945139c5728d638c21f58c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:14:30 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:14:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:14:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9152336db872f6ccfb59022187dd1df678cf4f5172f52f5d70203c428b2e1032`  
		Last Modified: Mon, 26 Oct 2026 23:14:42 GMT  
		Size: 11.5 MB (11455201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fab21d93ff1f20c989a2a5c3195b53bec39e9d06a2adf9f5a809f5c1a5a864fb`  
		Last Modified: Mon, 26 Oct 2026 23:14:44 GMT  
		Size: 64.6 MB (64596379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694325b3ae530c607b372db17d2f825632e0c7a394e66c9cad7459dd33f4daf7`  
		Last Modified: Mon, 26 Oct 2026 23:14:42 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:98f86df827bdaeae31754bcc06b31c21ed90d727e0a99110f49ee245e697c0ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3070262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76357eb9d456bc2ffbfed951002d4216562261aa98267b302f58f229ecc1cef1`

```dockerfile
```

-	Layers:
	-	`sha256:f30aca6bbb4d1952e45b5e79ab4b2ecd1f63fba377aefc7a6fb095a55754b8e2`  
		Last Modified: Mon, 26 Oct 2026 23:14:42 GMT  
		Size: 3.0 MB (3047167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:853cf41749ecf2af8e004ce431af92b34d478ca11ea063ab68f37c32b785c321`  
		Last Modified: Mon, 26 Oct 2026 23:14:42 GMT  
		Size: 23.1 KB (23095 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-noble` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:8b52b5df59c629087d24befc098181c3e844a2a7f35258c7321c1245403a2176
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103889984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef0fc04d6ec5a89ae5542c86e91cb307728e285d3c9428aff825da5819faddb9`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:18:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:18:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:18:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:18:54 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:18:54 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Mon, 26 Oct 2026 23:19:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='35773116829554fb38e6acf9b92b3ba8bb7856557c3ab885e26e7d61e8c8e1b0';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9e1527681ae4a615044c88435d2c1a9faf1fd5c7baaf9514a4a4207608150087';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='be3fd8b8c10ceff1af6a44ee2c634bc0f93af3b5458d0be7881398fa91543909';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        riscv64)          ESUM='b3776588fe31947ea9234882203813187cf1b0449a4a98648bbacd6789c92f7f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_riscv64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='e2785bf8d457176258442e74db7d5ddca8ebf01e55945139c5728d638c21f58c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:19:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:19:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:19:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21956db5219f944c8202da9d19d854129e7191ef7626b0daf73230af9d3b0f38`  
		Last Modified: Mon, 26 Oct 2026 23:19:28 GMT  
		Size: 11.5 MB (11453860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17c45b80eab860659d20a4ef0d72409d05820a29cd363ad2b51df293121f32b2`  
		Last Modified: Mon, 26 Oct 2026 23:19:29 GMT  
		Size: 63.5 MB (63493503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e0f95e49586b416e2023525b1ba7c6a1e0d52c815c3dfa7b71ed7b49655ae5`  
		Last Modified: Mon, 26 Oct 2026 23:19:27 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a907a7511a0f39562f5328e891bf48deddb57edc6ef904168fcff9be2482bf7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3070797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c04c6046d48906723b5cdaeaa77ab57a66eca5f354fcd0a0640d0286be884bc`

```dockerfile
```

-	Layers:
	-	`sha256:ad298ed63436c2929af1177e69fe6f0aa3de97198ab03fd8e302030fe454cc5a`  
		Last Modified: Mon, 26 Oct 2026 23:19:27 GMT  
		Size: 3.0 MB (3047592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fa8ef8fe266c008148444b60c17a6567d1d775d49754df5c39000976616b470`  
		Last Modified: Mon, 26 Oct 2026 23:19:27 GMT  
		Size: 23.2 KB (23205 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-noble` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:b09a6ad54fb7b9157faf8235a4bd520726157f4781b6355789bf73e6a076bed1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.1 MB (110063936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8389bc8bd76a2413ec119fbcea6c0c0a7babe64c2b9f99065b8891ef17716d22`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:42:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:42:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:42:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:42:40 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:42:40 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Sat, 17 Oct 2026 00:49:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='35773116829554fb38e6acf9b92b3ba8bb7856557c3ab885e26e7d61e8c8e1b0';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9e1527681ae4a615044c88435d2c1a9faf1fd5c7baaf9514a4a4207608150087';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='be3fd8b8c10ceff1af6a44ee2c634bc0f93af3b5458d0be7881398fa91543909';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        riscv64)          ESUM='b3776588fe31947ea9234882203813187cf1b0449a4a98648bbacd6789c92f7f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_riscv64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='e2785bf8d457176258442e74db7d5ddca8ebf01e55945139c5728d638c21f58c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:50:00 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:50:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:50:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2306a11bcce78ec3b8e2e9401709301884e67359dc804f81a23d29bf36c1214`  
		Last Modified: Sat, 17 Oct 2026 00:44:03 GMT  
		Size: 12.0 MB (12023360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e3d2061a7ce3182982e80409c5b3c06eb3e7ff75428e8b73b7a713bf1b3e53`  
		Last Modified: Sat, 17 Oct 2026 00:50:39 GMT  
		Size: 63.7 MB (63660089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0613cef01bc78dfdaf589350f5beeb05b089dded3a0d8b67caa7035fece50be`  
		Last Modified: Sat, 17 Oct 2026 00:50:37 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e6e5ec4045473b9476d47a0b174fd0a00025f70779475f1f6d09d4f5760df4d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3074206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1b03821f9f32a0230109892bfcb5a5999ebc98fbffff0cca1693ff11a3c77f`

```dockerfile
```

-	Layers:
	-	`sha256:51f1bda3a4fa67afbd0fa989a82bc99d6ecd3a2a91f407c4362830f804a69fe1`  
		Last Modified: Sat, 17 Oct 2026 00:50:37 GMT  
		Size: 3.1 MB (3051075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32c1112c5a59292a5173cd1f94a77b78d6e9ee2675aafc152667fe47eca0e2da`  
		Last Modified: Sat, 17 Oct 2026 00:50:37 GMT  
		Size: 23.1 KB (23131 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-noble` - linux; riscv64

```console
$ docker pull eclipse-temurin@sha256:23b0ff54dc618a9ec89763e5cd3bb62368faa71484ec686e8897541545d538d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.9 MB (105939716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a5f7b21bfc900591901f5ce61b2468be253936444a4546f5f61d7679203fe3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 08:25:26 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:25:27 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:25:27 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:26:13 GMT
ADD file:902c2a17706a401d4186db6f76d930ee8d9bfdf11a18905ad7b4475895533666 in / 
# Fri, 02 Oct 2026 08:26:17 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 16:07:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 16:07:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 16:07:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 16:07:34 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 16:07:34 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Sat, 17 Oct 2026 16:22:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='35773116829554fb38e6acf9b92b3ba8bb7856557c3ab885e26e7d61e8c8e1b0';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9e1527681ae4a615044c88435d2c1a9faf1fd5c7baaf9514a4a4207608150087';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='be3fd8b8c10ceff1af6a44ee2c634bc0f93af3b5458d0be7881398fa91543909';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        riscv64)          ESUM='b3776588fe31947ea9234882203813187cf1b0449a4a98648bbacd6789c92f7f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_riscv64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='e2785bf8d457176258442e74db7d5ddca8ebf01e55945139c5728d638c21f58c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 16:22:14 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 16:22:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 16:22:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6ac3b4459b1cfc53476c9bca2bcbbd91ffee22c902b3d5791e258f4a99455cf0`  
		Last Modified: Fri, 02 Oct 2026 08:36:44 GMT  
		Size: 31.1 MB (31052636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f62f0d3bcf28dc5ac8da5816e9644df67af9b5cbd86f722fca904b7ee29608e`  
		Last Modified: Sat, 17 Oct 2026 16:12:26 GMT  
		Size: 11.5 MB (11543668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a53d9c2c358fd3c30467322dc45c1eb69b24c4b0b2631a46a43d27177ee01570`  
		Last Modified: Sat, 17 Oct 2026 16:25:05 GMT  
		Size: 63.3 MB (63340915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:847134c9ff14a0e4d1d0e0bc32a86f1ffc8151f1c8a8ac61921010ebbca61890`  
		Last Modified: Sat, 17 Oct 2026 16:24:55 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:d05b30ea4e3e9edd6cfbdbd7db0dc16ea6f91c8c2a4b52127e08aa7ed1133fa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3062905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c370a30149eaa8e2fdb4a42d181043613da069fafb19544d0d57e6ff01e3e89`

```dockerfile
```

-	Layers:
	-	`sha256:4cde597428b246d0a5798cd541a03963e70318fbdc39b593d2c068c529d9c69e`  
		Last Modified: Sat, 17 Oct 2026 16:24:56 GMT  
		Size: 3.0 MB (3039775 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82d07b30584b99bb660d1a7e66397087d538c580a685f6ced4d7bc5795c5ae24`  
		Last Modified: Sat, 17 Oct 2026 16:24:55 GMT  
		Size: 23.1 KB (23130 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-noble` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:23df2d3d72c577042c25f8108cd6810885bce3b38d94e245bd0f461de8314d89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103925083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9fad0eb1bc95ea356f81702412e2449c00956050690fe1dd04887b6e748d67f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:59 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:59 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:00 GMT
ADD file:c2156dcf753b3a0ab0d36b29087b8209a73050420505b4ce2fb173267e1306b5 in / 
# Sun, 25 Oct 2026 14:18:01 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:42:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:42:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:42:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:42:48 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:48 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Mon, 26 Oct 2026 23:45:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='35773116829554fb38e6acf9b92b3ba8bb7856557c3ab885e26e7d61e8c8e1b0';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9e1527681ae4a615044c88435d2c1a9faf1fd5c7baaf9514a4a4207608150087';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='be3fd8b8c10ceff1af6a44ee2c634bc0f93af3b5458d0be7881398fa91543909';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        riscv64)          ESUM='b3776588fe31947ea9234882203813187cf1b0449a4a98648bbacd6789c92f7f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_riscv64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='e2785bf8d457176258442e74db7d5ddca8ebf01e55945139c5728d638c21f58c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:45:02 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:45:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:45:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:f0fdb9cf963ef02d3c2868640dfc39eba181814f056a5ff58b2befec68fae0f7`  
		Last Modified: Sun, 25 Oct 2026 14:50:38 GMT  
		Size: 29.9 MB (29947050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b628403190b81076c2b7354f5d653e41191b72a7d1bf6e7f5b24782bdb38a537`  
		Last Modified: Mon, 26 Oct 2026 23:43:39 GMT  
		Size: 11.7 MB (11731042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628f77da892d560caaab41526f1ec1bd7686856bc3a64a7264fb0eb1d2e9cd60`  
		Last Modified: Mon, 26 Oct 2026 23:45:27 GMT  
		Size: 62.2 MB (62244495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d9ef99e39a0977c6c9557d735eb8d924a89fad3dd21cc76ecdac6fd3967a92`  
		Last Modified: Mon, 26 Oct 2026 23:45:25 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:15900cb816b955d7ac29e1ea53a9dd8947ef92286d26713687e14e5721261493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3071860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceee060047ebe7f0a5ca20665f57b5a5242032319d66feacc5b99a5b875ed0ec`

```dockerfile
```

-	Layers:
	-	`sha256:b00520b2e1e93ac2b3ba138df2b10fa716e3d975e8f829fba313cac189e015ba`  
		Last Modified: Mon, 26 Oct 2026 23:45:25 GMT  
		Size: 3.0 MB (3048765 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1b3f285689c01d633bbad4b11953157b4b65e637678f7d5204e56da6ffded3d`  
		Last Modified: Mon, 26 Oct 2026 23:45:25 GMT  
		Size: 23.1 KB (23095 bytes)  
		MIME: application/vnd.in-toto+json
