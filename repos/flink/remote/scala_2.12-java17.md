## `flink:scala_2.12-java17`

```console
$ docker pull flink@sha256:ee90699f8113601b79f96c4dc7b33de98dccc057ac06b40405af4d49f61c5f64
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `flink:scala_2.12-java17` - linux; amd64

```console
$ docker pull flink@sha256:43d670d1b8832aa389a47ddf41d18e3d94a52dcb16d1e21f847e1c36f53e1bc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **701.2 MB (701177954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc984d76d8a4ab8b19b6ea1b57fcb6ec527c65c9c66bdecbfe6be352acd3f39e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:18:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:18:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:18:15 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:18:15 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:18:15 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Sat, 17 Oct 2026 00:18:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        riscv64)          ESUM='79c40c11fbad2b6771d08b9d4a7328bedfe49660b711930d3fe6529e5f28f99f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:18:51 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:18:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:18:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 01:18:09 GMT
RUN set -ex;   apt-get update;   apt-get -y install gpg libsnappy1v5 gettext-base libjemalloc-dev;   rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:18:09 GMT
ENV FLINK_TGZ_URL=https://dlcdn.apache.org/flink/flink-2.3.0/flink-2.3.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://downloads.apache.org/flink/flink-2.3.0/flink-2.3.0-bin-scala_2.12.tgz.asc GPG_KEY=E11F792053638C56C98ACFADB5B638DCA5F94E4A CHECK_GPG=true
# Sat, 17 Oct 2026 01:18:09 GMT
ENV FLINK_HOME=/opt/flink
# Sat, 17 Oct 2026 01:18:09 GMT
ENV PATH=/opt/flink/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:18:09 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink # buildkit
# Sat, 17 Oct 2026 01:18:09 GMT
WORKDIR /opt/flink
# Sat, 17 Oct 2026 01:18:22 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";     if [ "$CHECK_GPG" = "true" ]; then     wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";     for server in hkps://keys.openpgp.org $(shuf -e                             keyserver.ubuntu.com                             hkp://keyserver.ubuntu.com:80                             pgp.mit.edu) ; do         gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;     done &&     gpg --batch --verify flink.tgz.asc flink.tgz;     gpgconf --kill all;     rm -rf "$GNUPGHOME" flink.tgz.asc;   fi;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;     CONF_FILE="${FLINK_HOME}/conf/config.yaml";   /bin/bash "$FLINK_HOME/bin/config-parser-utils.sh" "${FLINK_HOME}/conf" "${FLINK_HOME}/bin" "${FLINK_HOME}/lib"     "-repKV" "rest.address,localhost,0.0.0.0"     "-repKV" "rest.bind-address,localhost,0.0.0.0"     "-repKV" "jobmanager.bind-host,localhost,0.0.0.0"     "-repKV" "taskmanager.bind-host,localhost,0.0.0.0"     "-rmKV" "taskmanager.host=localhost"; # buildkit
# Sat, 17 Oct 2026 01:18:22 GMT
USER flink
# Sat, 17 Oct 2026 01:18:23 GMT
COPY docker-entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 01:18:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 01:18:23 GMT
EXPOSE map[6123/tcp:{} 8081/tcp:{}]
# Sat, 17 Oct 2026 01:18:23 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53881550a73777150bc3f49f1023445a37182e4a1fba2887a353d7c430cc9e81`  
		Last Modified: Sat, 17 Oct 2026 00:18:39 GMT  
		Size: 17.0 MB (16967745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35aad6bca00c45382d1f6829ebe1062b3e088d4926dfaed4b4d6e087978e4128`  
		Last Modified: Sat, 17 Oct 2026 00:19:03 GMT  
		Size: 47.5 MB (47519998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953e16d753b3a0be4499e0245bb1166f946a39b8088247b2d22930dbf4c06032`  
		Last Modified: Sat, 17 Oct 2026 00:19:02 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b84e7ff4e8f714aa702b09ab370049423696b34db4471101f4a1bffa2694a0d2`  
		Last Modified: Sat, 17 Oct 2026 00:19:02 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77f76a218623601831cfc3928fb8633a7723bc8ff4c7e355432335c42603a9b5`  
		Last Modified: Sat, 17 Oct 2026 01:18:55 GMT  
		Size: 1.3 MB (1323801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4fa811b02324a1a549f4ccff598052ddefa4d0e154c166a5824255156be45d`  
		Last Modified: Sat, 17 Oct 2026 01:18:55 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1b906db800022e6b773c02e4d53555074ab5214ef6de66b5788bacf2144540`  
		Last Modified: Sat, 17 Oct 2026 01:18:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807804219ed6a34e9f46d54bac58c055aa66573196436157ecf4f7ca5c984c2c`  
		Last Modified: Sat, 17 Oct 2026 01:19:06 GMT  
		Size: 605.6 MB (605594513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:640506e4f5d6e5a90fbace1606af6c7bda2d07f79715b85f4d7709c5f6a919b7`  
		Last Modified: Sat, 17 Oct 2026 01:18:56 GMT  
		Size: 2.2 KB (2241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `flink:scala_2.12-java17` - unknown; unknown

```console
$ docker pull flink@sha256:d1fac5bd2b52933998665f97b58be60d6a2919baa389b99d87ebab98aeb7caca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3406580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8714c55df01bae4fc3f0d7d77b77850c5e35ff703f43ae5a5e14a25268439659`

```dockerfile
```

-	Layers:
	-	`sha256:514bfe29d97f551706bcdf2fc497c841583f04099d31381fb86e29c979e81c58`  
		Last Modified: Sat, 17 Oct 2026 01:18:55 GMT  
		Size: 3.4 MB (3380994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6adab7f70324e54b9e6962070a9c29475e42fddf94f72ca1eabc94c7d908417`  
		Last Modified: Sat, 17 Oct 2026 01:18:55 GMT  
		Size: 25.6 KB (25586 bytes)  
		MIME: application/vnd.in-toto+json

### `flink:scala_2.12-java17` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:9d255584a39bd5d57ee694156465bdd3028c0a3eb57a805e35c1ea92ed84f67b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **699.7 MB (699708877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44888e7213a02902df21ebc1a0b3223c5f25020b7e4a254c7a4717785ff36d8e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:18:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:18:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:18:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:18:25 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:18:25 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Sat, 17 Oct 2026 00:19:01 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        riscv64)          ESUM='79c40c11fbad2b6771d08b9d4a7328bedfe49660b711930d3fe6529e5f28f99f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:19:01 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:19:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:19:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 01:17:50 GMT
RUN set -ex;   apt-get update;   apt-get -y install gpg libsnappy1v5 gettext-base libjemalloc-dev;   rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:17:50 GMT
ENV FLINK_TGZ_URL=https://dlcdn.apache.org/flink/flink-2.3.0/flink-2.3.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://downloads.apache.org/flink/flink-2.3.0/flink-2.3.0-bin-scala_2.12.tgz.asc GPG_KEY=E11F792053638C56C98ACFADB5B638DCA5F94E4A CHECK_GPG=true
# Sat, 17 Oct 2026 01:17:50 GMT
ENV FLINK_HOME=/opt/flink
# Sat, 17 Oct 2026 01:17:50 GMT
ENV PATH=/opt/flink/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:17:50 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink # buildkit
# Sat, 17 Oct 2026 01:17:50 GMT
WORKDIR /opt/flink
# Sat, 17 Oct 2026 01:19:29 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";     if [ "$CHECK_GPG" = "true" ]; then     wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";     for server in hkps://keys.openpgp.org $(shuf -e                             keyserver.ubuntu.com                             hkp://keyserver.ubuntu.com:80                             pgp.mit.edu) ; do         gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;     done &&     gpg --batch --verify flink.tgz.asc flink.tgz;     gpgconf --kill all;     rm -rf "$GNUPGHOME" flink.tgz.asc;   fi;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;     CONF_FILE="${FLINK_HOME}/conf/config.yaml";   /bin/bash "$FLINK_HOME/bin/config-parser-utils.sh" "${FLINK_HOME}/conf" "${FLINK_HOME}/bin" "${FLINK_HOME}/lib"     "-repKV" "rest.address,localhost,0.0.0.0"     "-repKV" "rest.bind-address,localhost,0.0.0.0"     "-repKV" "jobmanager.bind-host,localhost,0.0.0.0"     "-repKV" "taskmanager.bind-host,localhost,0.0.0.0"     "-rmKV" "taskmanager.host=localhost"; # buildkit
# Sat, 17 Oct 2026 01:19:29 GMT
USER flink
# Sat, 17 Oct 2026 01:19:29 GMT
COPY docker-entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 01:19:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 01:19:29 GMT
EXPOSE map[6123/tcp:{} 8081/tcp:{}]
# Sat, 17 Oct 2026 01:19:29 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7340ea953352ca0869781fdc40355315af93fc141f87d3ceaa5328ebf68d1cd3`  
		Last Modified: Sat, 17 Oct 2026 00:18:50 GMT  
		Size: 17.0 MB (16977534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0346e3757d20a6d7a24b8124514f7f85ca6a8d3e7aa975ceba4b7ec7fe95525b`  
		Last Modified: Sat, 17 Oct 2026 00:19:14 GMT  
		Size: 47.0 MB (47002635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3a6017d885c5f24db85419c12fa7bcdae5d6112be2fe328230692a810857245`  
		Last Modified: Sat, 17 Oct 2026 00:19:12 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:019aaa3e0e1c69f6b81c227764da44b56c1fc28c0a5f72ea1cf6726933edc4f1`  
		Last Modified: Sat, 17 Oct 2026 00:19:12 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71830751304c6f3dae0167532d23a6780f0594c99fa62c6b22ff2d60570c34fb`  
		Last Modified: Sat, 17 Oct 2026 01:20:04 GMT  
		Size: 1.2 MB (1188309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a558af01f3d790db9baf04d2d59349c203b7afe23105aa2571909ab9e8af6b`  
		Last Modified: Sat, 17 Oct 2026 01:20:03 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68995e878fee042dccf6518b2f93d25f557cc09be032425e3238715666716556`  
		Last Modified: Sat, 17 Oct 2026 01:20:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26bbe4fcd40aef03f2268df3f9a5b61e649d1284a8cfe386e37c3463e5bc2a47`  
		Last Modified: Sat, 17 Oct 2026 01:20:14 GMT  
		Size: 605.6 MB (605594504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35c31565317058ec04cc9df18c2019a05a6203aa569353752d10fce573be962`  
		Last Modified: Sat, 17 Oct 2026 01:20:05 GMT  
		Size: 2.2 KB (2240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `flink:scala_2.12-java17` - unknown; unknown

```console
$ docker pull flink@sha256:70838f89f630a3162a891f2bdaa069be78be8666f1c0f1ff4bf916d0df4f4948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3407383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41acebe025dc5394244c934f3b2107f19d803f34c48ea7c306eda71d2acfeeb7`

```dockerfile
```

-	Layers:
	-	`sha256:06447ae5d8f5a319c410f7819a20c71fa6964c4cbad96045079bc9ffe6519606`  
		Last Modified: Sat, 17 Oct 2026 01:20:04 GMT  
		Size: 3.4 MB (3381566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:465f4a852f72fc59b6895db22d91eabad5a23f093d5d06e584c7b84af0d11ddf`  
		Last Modified: Sat, 17 Oct 2026 01:20:03 GMT  
		Size: 25.8 KB (25817 bytes)  
		MIME: application/vnd.in-toto+json
