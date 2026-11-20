## `flink:scala_2.12-java21`

```console
$ docker pull flink@sha256:2326ca8bfacdd5f20fcce9590b1a3d00cb234bd29da0e3eece985f6c654e62ab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `flink:scala_2.12-java21` - linux; amd64

```console
$ docker pull flink@sha256:1f6877b2ce3f9dd9908fdd60715fdf6135007b611748625c6d84e8ffe3d24adf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.0 MB (712995159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4406be3b298961bd50cf795d414da84687fbb0b068de85894649da73c444bcb5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:16:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:52 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:52 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:16:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        riscv64)          ESUM='40c66736338abeb8b633d50036e5f83e3a3f55654723f31589fa09c081eec118';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:16:55 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:16:55 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:16:55 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 04:13:53 GMT
RUN set -ex;   apt-get update;   apt-get -y install gpg libsnappy1v5 gettext-base libjemalloc-dev;   rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:13:53 GMT
ENV FLINK_TGZ_URL=https://dlcdn.apache.org/flink/flink-2.3.0/flink-2.3.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://downloads.apache.org/flink/flink-2.3.0/flink-2.3.0-bin-scala_2.12.tgz.asc GPG_KEY=E11F792053638C56C98ACFADB5B638DCA5F94E4A CHECK_GPG=true
# Fri, 20 Nov 2026 04:13:53 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 20 Nov 2026 04:13:53 GMT
ENV PATH=/opt/flink/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 04:13:53 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink # buildkit
# Fri, 20 Nov 2026 04:13:53 GMT
WORKDIR /opt/flink
# Fri, 20 Nov 2026 04:14:34 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";     if [ "$CHECK_GPG" = "true" ]; then     wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";     for server in hkps://keys.openpgp.org $(shuf -e                             keyserver.ubuntu.com                             hkp://keyserver.ubuntu.com:80                             pgp.mit.edu) ; do         gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;     done &&     gpg --batch --verify flink.tgz.asc flink.tgz;     gpgconf --kill all;     rm -rf "$GNUPGHOME" flink.tgz.asc;   fi;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;     CONF_FILE="${FLINK_HOME}/conf/config.yaml";   /bin/bash "$FLINK_HOME/bin/config-parser-utils.sh" "${FLINK_HOME}/conf" "${FLINK_HOME}/bin" "${FLINK_HOME}/lib"     "-repKV" "rest.address,localhost,0.0.0.0"     "-repKV" "rest.bind-address,localhost,0.0.0.0"     "-repKV" "jobmanager.bind-host,localhost,0.0.0.0"     "-repKV" "taskmanager.bind-host,localhost,0.0.0.0"     "-rmKV" "taskmanager.host=localhost"; # buildkit
# Fri, 20 Nov 2026 04:14:34 GMT
USER flink
# Fri, 20 Nov 2026 04:14:34 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 04:14:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 04:14:34 GMT
EXPOSE map[6123/tcp:{} 8081/tcp:{}]
# Fri, 20 Nov 2026 04:14:34 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0180cf2ec896829ee2407696c0afa37b9da1e82b9c23beb6982f5e7f4b896b2c`  
		Last Modified: Fri, 20 Nov 2026 03:17:08 GMT  
		Size: 23.1 MB (23065160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43fc2a6f4c29bdb5ebcf8f3d403bc8c3a45f696f04904dedd565915f8c0d6749`  
		Last Modified: Fri, 20 Nov 2026 03:17:09 GMT  
		Size: 53.2 MB (53212166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:608477df11c7f7af26131564f30b2f41bbab5e38e3537a4484686338c6e9a99d`  
		Last Modified: Fri, 20 Nov 2026 03:17:07 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e9b7c34a720236d6a6d4f7eee3e9ac49aab02591ff36fe4376356b84322fcf9`  
		Last Modified: Fri, 20 Nov 2026 03:17:07 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e55b058d303319d452451dcbc03654fad85e60aa16459a6a19c4ab8e1d0a98b`  
		Last Modified: Fri, 20 Nov 2026 04:15:04 GMT  
		Size: 1.3 MB (1323861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f319b9392c86095d4a4cad90db607acd73bb0414dddd3de7a958a4ce5c47c88`  
		Last Modified: Fri, 20 Nov 2026 04:15:04 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e69d5c41bf05b0a98d15c3083b214a4c5b78ef99ddc6463631b5cc841b3a4f9`  
		Last Modified: Fri, 20 Nov 2026 04:15:03 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd0fe9257adb35edd87d7867cabd658c95fd8509590e327ad39acfcde493243`  
		Last Modified: Fri, 20 Nov 2026 04:15:17 GMT  
		Size: 605.6 MB (605594536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b765d32d88a2e06399593efaafd795798ac48f4121950cb087dfdb89cf7929e5`  
		Last Modified: Fri, 20 Nov 2026 04:15:05 GMT  
		Size: 2.2 KB (2240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `flink:scala_2.12-java21` - unknown; unknown

```console
$ docker pull flink@sha256:ad1c583ccdba5d931ac443be9b35283f82f07914cd79ca29467c586dee815b96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3404171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7600bfbd1ce300cbd460486588489b867f7951aaa594e338002d62e2813b4cee`

```dockerfile
```

-	Layers:
	-	`sha256:0de84f8364d99bf9e341d9df692008fbb8859923713df74a223e42eed1436569`  
		Last Modified: Fri, 20 Nov 2026 04:15:04 GMT  
		Size: 3.4 MB (3380402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47c5535a7419dfc36e4dbeb6aa5287256589d26ce31c15b168975e851c96d7a9`  
		Last Modified: Fri, 20 Nov 2026 04:15:03 GMT  
		Size: 23.8 KB (23769 bytes)  
		MIME: application/vnd.in-toto+json

### `flink:scala_2.12-java21` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:b7ef9e15d1d11ebfc54e6d1679ff541319fa9fe9c475f3727cca690d585b73aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **711.0 MB (710994482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80a08b6732c9e3f3e8d9060ff7b0f77e63178a5d118d53867aca549f38b4c6e8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:16:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:15 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:15 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:15 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:17:19 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        riscv64)          ESUM='40c66736338abeb8b633d50036e5f83e3a3f55654723f31589fa09c081eec118';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:17:19 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:17:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:17:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 04:13:56 GMT
RUN set -ex;   apt-get update;   apt-get -y install gpg libsnappy1v5 gettext-base libjemalloc-dev;   rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:13:56 GMT
ENV FLINK_TGZ_URL=https://dlcdn.apache.org/flink/flink-2.3.0/flink-2.3.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://downloads.apache.org/flink/flink-2.3.0/flink-2.3.0-bin-scala_2.12.tgz.asc GPG_KEY=E11F792053638C56C98ACFADB5B638DCA5F94E4A CHECK_GPG=true
# Fri, 20 Nov 2026 04:13:56 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 20 Nov 2026 04:13:56 GMT
ENV PATH=/opt/flink/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 04:13:56 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink # buildkit
# Fri, 20 Nov 2026 04:13:56 GMT
WORKDIR /opt/flink
# Fri, 20 Nov 2026 04:14:36 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";     if [ "$CHECK_GPG" = "true" ]; then     wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";     for server in hkps://keys.openpgp.org $(shuf -e                             keyserver.ubuntu.com                             hkp://keyserver.ubuntu.com:80                             pgp.mit.edu) ; do         gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;     done &&     gpg --batch --verify flink.tgz.asc flink.tgz;     gpgconf --kill all;     rm -rf "$GNUPGHOME" flink.tgz.asc;   fi;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;     CONF_FILE="${FLINK_HOME}/conf/config.yaml";   /bin/bash "$FLINK_HOME/bin/config-parser-utils.sh" "${FLINK_HOME}/conf" "${FLINK_HOME}/bin" "${FLINK_HOME}/lib"     "-repKV" "rest.address,localhost,0.0.0.0"     "-repKV" "rest.bind-address,localhost,0.0.0.0"     "-repKV" "jobmanager.bind-host,localhost,0.0.0.0"     "-repKV" "taskmanager.bind-host,localhost,0.0.0.0"     "-rmKV" "taskmanager.host=localhost"; # buildkit
# Fri, 20 Nov 2026 04:14:36 GMT
USER flink
# Fri, 20 Nov 2026 04:14:36 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 04:14:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 04:14:36 GMT
EXPOSE map[6123/tcp:{} 8081/tcp:{}]
# Fri, 20 Nov 2026 04:14:36 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:330f12a9acd71db4e1eae11fd24d9f12bc114fe5373c881480c966f5b9906ef4`  
		Last Modified: Fri, 20 Nov 2026 03:16:44 GMT  
		Size: 22.8 MB (22849363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d7c0a57374d45c78b923120c24f14b6d8b2cad87d56d79be4f45855e2108296`  
		Last Modified: Fri, 20 Nov 2026 03:17:33 GMT  
		Size: 52.4 MB (52390850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a6e883af4c7b216f8931515a93553529d6e40e4276d170d8d17a4e2c028fb9d`  
		Last Modified: Fri, 20 Nov 2026 03:17:31 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b7a2336750b71eeca35d956a459e11180c8680b3b8eca5b579ff3c082f4eda2`  
		Last Modified: Fri, 20 Nov 2026 03:17:31 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccaee451084338c0dd10e0ff45fb1bd86c60a157f616e7666925f0dcf0fc935a`  
		Last Modified: Fri, 20 Nov 2026 04:15:10 GMT  
		Size: 1.2 MB (1188329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aa94fd1a4526929445209c5a8f2ec539a941aa7b3dfd7bdd61425e7a5343370`  
		Last Modified: Fri, 20 Nov 2026 04:15:08 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3be525b876d7db01d8fd4d4578166d54fdd6a42c9887f5f74cac36d88681673`  
		Last Modified: Fri, 20 Nov 2026 04:15:08 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc079ec3968eec529d6970400acd1414502824d0bdd8fdfd91739a55ea4c3f08`  
		Last Modified: Fri, 20 Nov 2026 04:15:21 GMT  
		Size: 605.6 MB (605594488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2e2275eb6fd514b55eed2092c84cc328fd3d0ce53d2b6d26a60d9b3bbd4be6`  
		Last Modified: Fri, 20 Nov 2026 04:15:09 GMT  
		Size: 2.2 KB (2240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `flink:scala_2.12-java21` - unknown; unknown

```console
$ docker pull flink@sha256:11fbe72771d1c43d2d2838a72707e5559e8fef7a1837bc32b9350df09de99ef8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3404829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecff82fde054a925db6cf82c1037867ce4925dc52b588da5d2e702e113fc9551`

```dockerfile
```

-	Layers:
	-	`sha256:f280a48b8c676bf4dbe75584fd93c78592df0dbb7cbb3a090f8742fe1effe70e`  
		Last Modified: Fri, 20 Nov 2026 04:15:10 GMT  
		Size: 3.4 MB (3380902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7af7fe2322a34d0533892fc62dd4b9ebdd7a68d89d3b14e3cb206a9aedc4eb1b`  
		Last Modified: Fri, 20 Nov 2026 04:15:10 GMT  
		Size: 23.9 KB (23927 bytes)  
		MIME: application/vnd.in-toto+json
