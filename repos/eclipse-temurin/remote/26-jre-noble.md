## `eclipse-temurin:26-jre-noble`

```console
$ docker pull eclipse-temurin@sha256:2aeffa653c32c0c720ed5553b0db517645682d17d5ad37a94dc2c076f2e7b45e
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
$ docker pull eclipse-temurin@sha256:5b1336954cce99799ae2b615ac00c57d5890d1338755f439c6b6967360884bab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105820485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65cb9416546419d1c09575216fbbe5aee5c2f6e001d41caf02ca8b55b3019a95`
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
# Fri, 25 Sep 2026 22:40:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:40:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:40:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:40:04 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:40:04 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 25 Sep 2026 22:40:21 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='35773116829554fb38e6acf9b92b3ba8bb7856557c3ab885e26e7d61e8c8e1b0';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9e1527681ae4a615044c88435d2c1a9faf1fd5c7baaf9514a4a4207608150087';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='be3fd8b8c10ceff1af6a44ee2c634bc0f93af3b5458d0be7881398fa91543909';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        riscv64)          ESUM='b3776588fe31947ea9234882203813187cf1b0449a4a98648bbacd6789c92f7f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_riscv64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='e2785bf8d457176258442e74db7d5ddca8ebf01e55945139c5728d638c21f58c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:40:21 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:40:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:40:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee0ab64195feebf8b921da1ff3edbb9159abdc252650ad58ee77729e2bef57d`  
		Last Modified: Fri, 25 Sep 2026 22:40:35 GMT  
		Size: 11.5 MB (11457536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64cba429bc1bf7d1b87b77e7e91ee944e1a4188abba68e106aeb014d85852385`  
		Last Modified: Fri, 25 Sep 2026 22:40:36 GMT  
		Size: 64.6 MB (64596336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53fd5a9d75d70c61c82c13ae86f8cd54368de17e65b538249da88498f6821308`  
		Last Modified: Fri, 25 Sep 2026 22:40:35 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9f2546168edeabf84d3e8be773e18dd13177358350ab23564af5052568ebd614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3070888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2ec8fa232f13a69aa8474055238d108af5558fd183dd14e54050aaaa73b853c`

```dockerfile
```

-	Layers:
	-	`sha256:25d60c6a47a8cd5ec94e1f9a9052a6f66c8ad8d3e4a8e95d2e851e8463ab088a`  
		Last Modified: Fri, 25 Sep 2026 22:40:35 GMT  
		Size: 3.0 MB (3047793 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7726cf7c50460373ea787f6fb7ecfe774d08a362d878c1350ba0140f0a95fe97`  
		Last Modified: Fri, 25 Sep 2026 22:40:34 GMT  
		Size: 23.1 KB (23095 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-noble` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:15677895b02771d1299b8555137666ab03e3a692feabc859c4b4993d3c0468d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103893538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f715be02b504a6cd5eb3acdd644f6b858083485e07e87e36e0dd03b2d9d57f0e`
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
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 25 Sep 2026 22:39:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='35773116829554fb38e6acf9b92b3ba8bb7856557c3ab885e26e7d61e8c8e1b0';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9e1527681ae4a615044c88435d2c1a9faf1fd5c7baaf9514a4a4207608150087';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='be3fd8b8c10ceff1af6a44ee2c634bc0f93af3b5458d0be7881398fa91543909';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        riscv64)          ESUM='b3776588fe31947ea9234882203813187cf1b0449a4a98648bbacd6789c92f7f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_riscv64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='e2785bf8d457176258442e74db7d5ddca8ebf01e55945139c5728d638c21f58c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:39:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:39:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:39:17 GMT
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
	-	`sha256:860cbfff4aaeaf59c5dfd7eb6096433db61619ad0314d01c1ef784188ba608ad`  
		Last Modified: Fri, 25 Sep 2026 22:39:32 GMT  
		Size: 63.5 MB (63493467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695ca9f30445f2f1eea837b084966a117a513fccd206d643423f58d6c1c21e16`  
		Last Modified: Fri, 25 Sep 2026 22:39:30 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:679b420f3a4c4fc0e712962c76570d4981e623d770963c6375850cede948de5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3071423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4e5350e9ad7c21b2f312cfcf1741958cec6c431713992f72e536e41ea670e46`

```dockerfile
```

-	Layers:
	-	`sha256:5736e67448831dc30c81a8ddf9ab946b90ef208bf21acfa18f894dc9bf28a4ba`  
		Last Modified: Fri, 25 Sep 2026 22:39:31 GMT  
		Size: 3.0 MB (3048218 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2eaa0070b1626b79de2fe2aab2f8b8c21473706b806250cce45b1c8428f6b05`  
		Last Modified: Fri, 25 Sep 2026 22:39:30 GMT  
		Size: 23.2 KB (23205 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-noble` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:a27cd53dd70f3a0099b54e18a07fb105b3fa75c2fb0b725fa029417bb0667a78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (110041123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b2e97c84bfb4cec6aa90fae8957871632f54dfb1f59eabeaaa45e3614415513`
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
# Wed, 16 Sep 2026 06:58:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 06:58:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 06:58:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 06:58:36 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 06:58:36 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Wed, 16 Sep 2026 07:03:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='585c4cce5807ce5677289a123680a8648c84c9afac66727a0e3027298d8e32c7';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        arm64)          ESUM='3c689572d2ea7aa3e19db5e5bc4ee41e90b557593d15eefcec179a9b8abfff0e';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64el)          ESUM='8698a0734da25b9edc552eb80e9db8e69583afbcecbfda291c9f23bac4062f17';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        riscv64)          ESUM='781e70f2ae6c82a99d09cd2beeed55fc9f87f9ec998c12fc1bee7378c01d3fbe';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_riscv64_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='5803ccac6551ec18aada9ab58a55d7fa3b82f5e698dfd32f8ed16f5dd4b5255e';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 07:03:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 07:03:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 07:03:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a709d68fd3b59622e1ba3c295d91a5e051d85a20d3ec9d1ac84d63c21d9ba537`  
		Last Modified: Wed, 16 Sep 2026 07:01:10 GMT  
		Size: 12.0 MB (12003115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2794e7a2780214687190868c40b144ab87b766f9e320421c47aca06c9cc8ef0`  
		Last Modified: Wed, 16 Sep 2026 07:04:20 GMT  
		Size: 63.7 MB (63658554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b7a09640a6803a4ce05abd4fc7725334587a5472caf0542110d4011b6205cd8`  
		Last Modified: Wed, 16 Sep 2026 07:04:18 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:04675c81dcdb8c5c6948ebd097c310a9a9358c5c84d14707e56d9b053a0d7202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3074162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f73a73b82610d387fbb8bdfbcdb058eb9044d53c42dbc28c000347a7c444ca96`

```dockerfile
```

-	Layers:
	-	`sha256:18863dfa2df77f71483c80ab087b2148515779e4601b5a5246bbc3be6710835e`  
		Last Modified: Wed, 16 Sep 2026 07:04:18 GMT  
		Size: 3.1 MB (3051061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7e01469ef7fd9770757c53172d63ea69eac9d7f3e0a81dec1ae61550a956609`  
		Last Modified: Wed, 16 Sep 2026 07:04:17 GMT  
		Size: 23.1 KB (23101 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-noble` - linux; riscv64

```console
$ docker pull eclipse-temurin@sha256:a453d710b5289a631a3f2d85b7a07c2e6738288d2e0ab3db0590f83c12d43efb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.9 MB (105925086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:720bfe1797e5458f0734a39de58e416ed1d24051e4e51e00edab186c62f8a16a`
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
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 18 Sep 2026 19:19:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='585c4cce5807ce5677289a123680a8648c84c9afac66727a0e3027298d8e32c7';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        arm64)          ESUM='3c689572d2ea7aa3e19db5e5bc4ee41e90b557593d15eefcec179a9b8abfff0e';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64el)          ESUM='8698a0734da25b9edc552eb80e9db8e69583afbcecbfda291c9f23bac4062f17';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        riscv64)          ESUM='781e70f2ae6c82a99d09cd2beeed55fc9f87f9ec998c12fc1bee7378c01d3fbe';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_riscv64_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='5803ccac6551ec18aada9ab58a55d7fa3b82f5e698dfd32f8ed16f5dd4b5255e';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 18 Sep 2026 19:19:39 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 18 Sep 2026 19:19:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 18 Sep 2026 19:19:39 GMT
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
	-	`sha256:86f040a05fcb3f5c7101d35a96b6f01b48061b227c089d0be449820c237f6578`  
		Last Modified: Fri, 18 Sep 2026 19:22:38 GMT  
		Size: 63.3 MB (63340364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0deceda3d870d499f68707368d36294635af6e5620264f05919cd896170df434`  
		Last Modified: Fri, 18 Sep 2026 19:22:28 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1e159f6438da5c253e6cb17d8df951bc623de7211b7034b7c0bae0e5d0986bf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3062862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a622171c5eda0f44ff0a7ef8ba02dd3cb0d7328667e4dc29367a1656038f0ea`

```dockerfile
```

-	Layers:
	-	`sha256:3327e2b9d3a63158a7e239cf0f7ebf4399a51dc29cb6eb3f1892b5cb3b1db3e1`  
		Last Modified: Fri, 18 Sep 2026 19:22:28 GMT  
		Size: 3.0 MB (3039761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c504372588bffa9d85ca5f2e51bb6a1a98981d47b13ab5461a0dec558f0416c`  
		Last Modified: Fri, 18 Sep 2026 19:22:28 GMT  
		Size: 23.1 KB (23101 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-noble` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:17fa90bd3a030a3cb1a564d022cf032dde2bc77ee35eea2e44ee41a9bc13a36e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103927094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79277431c74a503ca053c98cca8eefad60f1444fb67c6f3bbb8a95852bf2b307`
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
# Fri, 25 Sep 2026 22:42:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:42:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:42:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:42:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:42:14 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 25 Sep 2026 22:42:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='35773116829554fb38e6acf9b92b3ba8bb7856557c3ab885e26e7d61e8c8e1b0';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9e1527681ae4a615044c88435d2c1a9faf1fd5c7baaf9514a4a4207608150087';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='be3fd8b8c10ceff1af6a44ee2c634bc0f93af3b5458d0be7881398fa91543909';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        riscv64)          ESUM='b3776588fe31947ea9234882203813187cf1b0449a4a98648bbacd6789c92f7f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_riscv64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='e2785bf8d457176258442e74db7d5ddca8ebf01e55945139c5728d638c21f58c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:42:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:42:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:42:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:2d1aac92a29a4eacd140d431dc526f6da099043772d537d221717429ee877b2a`  
		Last Modified: Fri, 11 Sep 2026 13:39:18 GMT  
		Size: 29.9 MB (29945392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c24aa3caece557d5928af84c7e75174ebbdc9e3a379a1b973f1e2662c5a9f36`  
		Last Modified: Fri, 25 Sep 2026 22:42:42 GMT  
		Size: 11.7 MB (11734658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dca7c5a7d25bc9170d13a176a4413e839e63dd6658f816ce5f9cc1cdd17091e`  
		Last Modified: Fri, 25 Sep 2026 22:42:43 GMT  
		Size: 62.2 MB (62244547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:117b898a1be5c77ac433f55ad1b2eb6ea1434d133916bc5f2eeebb995b1c1169`  
		Last Modified: Fri, 25 Sep 2026 22:42:42 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0c1ea2d57d7e4161f8af78bd20d49f4a7b4289261102234cbbe1bed829d75c8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3072486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb8b38f972cfadbbca9963d18a3a5804714d505bd633833590d6a83a120b8e8`

```dockerfile
```

-	Layers:
	-	`sha256:84eb017055131997367d828dbf9eba070cc7ed18c318a61c6b78ed40497865a6`  
		Last Modified: Fri, 25 Sep 2026 22:42:42 GMT  
		Size: 3.0 MB (3049391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:648fa01d9990dc1318aa4df6df1be84a52db9f3e7966441fdd070199298de46c`  
		Last Modified: Fri, 25 Sep 2026 22:42:42 GMT  
		Size: 23.1 KB (23095 bytes)  
		MIME: application/vnd.in-toto+json
