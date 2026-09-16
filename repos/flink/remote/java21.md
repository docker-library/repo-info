## `flink:java21`

```console
$ docker pull flink@sha256:b16d828430dc056051d9aa25b825560ffa16cd9f7f2e37013ad66be5fe555147
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `flink:java21` - linux; amd64

```console
$ docker pull flink@sha256:1b6a63948bc1d217bb00ffbbd592a2de908311972639af94fda6ed9a4c020279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **706.7 MB (706733663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f192c0b3f1715c3d6152d00fb16a4ce49d1dc818a0c3eb04b7e3d7e235113a08`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

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
# Wed, 16 Sep 2026 03:16:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:14 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 16 Sep 2026 03:17:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8a379a67c91a3ae61ffb33d46e0a40c7ba35e70713c4db31cfca30492f792eff';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='5f9c96b656827b9d14ebeda7739e25be554fa6d25669b03847c1df6e869c0679';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='fe1b73886269d589336532c31c0db0d01ac7cd567313cfe3e76f02b37b58c068';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        riscv64)          ESUM='e1fabd17fd266409221323a754b0a5467a0bdc118b06302646f7b795cd49d95a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2ec0aecaec755ffa8c7904983f89873e51c28e683de39946ba49496acae8fe96';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 03:17:37 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:17:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:17:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 04:14:43 GMT
RUN set -ex;   apt-get update;   apt-get -y install gpg libsnappy1v5 gettext-base libjemalloc-dev;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:14:43 GMT
ENV FLINK_TGZ_URL=https://dlcdn.apache.org/flink/flink-2.3.0/flink-2.3.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://downloads.apache.org/flink/flink-2.3.0/flink-2.3.0-bin-scala_2.12.tgz.asc GPG_KEY=E11F792053638C56C98ACFADB5B638DCA5F94E4A CHECK_GPG=true
# Wed, 16 Sep 2026 04:14:43 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 16 Sep 2026 04:14:43 GMT
ENV PATH=/opt/flink/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:14:43 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink # buildkit
# Wed, 16 Sep 2026 04:14:43 GMT
WORKDIR /opt/flink
# Wed, 16 Sep 2026 04:15:02 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";     if [ "$CHECK_GPG" = "true" ]; then     wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";     for server in hkps://keys.openpgp.org $(shuf -e                             keyserver.ubuntu.com                             hkp://keyserver.ubuntu.com:80                             pgp.mit.edu) ; do         gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;     done &&     gpg --batch --verify flink.tgz.asc flink.tgz;     gpgconf --kill all;     rm -rf "$GNUPGHOME" flink.tgz.asc;   fi;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;     CONF_FILE="${FLINK_HOME}/conf/config.yaml";   /bin/bash "$FLINK_HOME/bin/config-parser-utils.sh" "${FLINK_HOME}/conf" "${FLINK_HOME}/bin" "${FLINK_HOME}/lib"     "-repKV" "rest.address,localhost,0.0.0.0"     "-repKV" "rest.bind-address,localhost,0.0.0.0"     "-repKV" "jobmanager.bind-host,localhost,0.0.0.0"     "-repKV" "taskmanager.bind-host,localhost,0.0.0.0"     "-rmKV" "taskmanager.host=localhost"; # buildkit
# Wed, 16 Sep 2026 04:15:02 GMT
USER flink
# Wed, 16 Sep 2026 04:15:03 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 04:15:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 16 Sep 2026 04:15:03 GMT
EXPOSE map[6123/tcp:{} 8081/tcp:{}]
# Wed, 16 Sep 2026 04:15:03 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d10bcdd9a8ad2f2737d6760230c9cafe0fdb255ac82917ff8d7fbe174dec97`  
		Last Modified: Wed, 16 Sep 2026 03:16:29 GMT  
		Size: 16.9 MB (16947638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c598504294317537fe2edfca4fe2d105b93e91cfb69347fa86b5f2d20a5bc0d6`  
		Last Modified: Wed, 16 Sep 2026 03:17:50 GMT  
		Size: 53.1 MB (53097599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8aa988864d57d690f6ab0c872bc2ac67ceef6597a5dfbc66d2510c88ff20d79`  
		Last Modified: Wed, 16 Sep 2026 03:17:48 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230f8708b1a639a22aab59043f0690ccdf7779b22e8508dfe3ae66ca29e75b86`  
		Last Modified: Wed, 16 Sep 2026 03:17:48 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc37545d1226a74750930aa782b58d5e4b58cd8b8aed6285aa596bf8bb8ec292`  
		Last Modified: Wed, 16 Sep 2026 04:15:33 GMT  
		Size: 1.3 MB (1323732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11661bd1f6a506e4b7987754467d26ecdce64556b4106cffe9f13c3a4eb61c0`  
		Last Modified: Wed, 16 Sep 2026 04:15:33 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa41e5b1605892ea74b4f1a7a54217164b33ed0f42c0e24034188fc609baac72`  
		Last Modified: Wed, 16 Sep 2026 04:15:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e5da496eee80d7499d6131ee42394175b654118636a7a963efc101d6309065`  
		Last Modified: Wed, 16 Sep 2026 04:15:45 GMT  
		Size: 605.6 MB (605594441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2b6d364bee272f8e5edd0f448b5641e1a6110c778bdfad917081771e59263b5`  
		Last Modified: Wed, 16 Sep 2026 04:15:34 GMT  
		Size: 2.2 KB (2241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `flink:java21` - unknown; unknown

```console
$ docker pull flink@sha256:c03d10e6c94fa93abc36c880e721992c9fa362c0afbbb406e4de8525e145713c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3404185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d84970655eabb857096c5be5428cbad0b70b736040d7f9ac125f03de25efc129`

```dockerfile
```

-	Layers:
	-	`sha256:72a8dcd8316e4e06db15841fe0d2ec2c489c2210c65b81bdc340f3485572fd98`  
		Last Modified: Wed, 16 Sep 2026 04:15:33 GMT  
		Size: 3.4 MB (3380416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce2758af61c248c7842265c7ce13a82870bc40ace7d7941041ed67b1bc22f8ec`  
		Last Modified: Wed, 16 Sep 2026 04:15:33 GMT  
		Size: 23.8 KB (23769 bytes)  
		MIME: application/vnd.in-toto+json

### `flink:java21` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:b32e469e06c1714cbad91375045bcef9ad6886a1183f4856b84475e5a4ea0f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **705.0 MB (704961428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a22b4a302912204a2d723bb6b7f5ac96977aadf6ae5e824b8a447f84296117d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

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
# Wed, 16 Sep 2026 03:16:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:48 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:48 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 16 Sep 2026 03:17:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8a379a67c91a3ae61ffb33d46e0a40c7ba35e70713c4db31cfca30492f792eff';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='5f9c96b656827b9d14ebeda7739e25be554fa6d25669b03847c1df6e869c0679';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='fe1b73886269d589336532c31c0db0d01ac7cd567313cfe3e76f02b37b58c068';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        riscv64)          ESUM='e1fabd17fd266409221323a754b0a5467a0bdc118b06302646f7b795cd49d95a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2ec0aecaec755ffa8c7904983f89873e51c28e683de39946ba49496acae8fe96';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 03:17:15 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:17:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:17:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 04:14:26 GMT
RUN set -ex;   apt-get update;   apt-get -y install gpg libsnappy1v5 gettext-base libjemalloc-dev;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:14:27 GMT
ENV FLINK_TGZ_URL=https://dlcdn.apache.org/flink/flink-2.3.0/flink-2.3.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://downloads.apache.org/flink/flink-2.3.0/flink-2.3.0-bin-scala_2.12.tgz.asc GPG_KEY=E11F792053638C56C98ACFADB5B638DCA5F94E4A CHECK_GPG=true
# Wed, 16 Sep 2026 04:14:27 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 16 Sep 2026 04:14:27 GMT
ENV PATH=/opt/flink/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:14:27 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink # buildkit
# Wed, 16 Sep 2026 04:14:27 GMT
WORKDIR /opt/flink
# Wed, 16 Sep 2026 04:15:52 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";     if [ "$CHECK_GPG" = "true" ]; then     wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";     for server in hkps://keys.openpgp.org $(shuf -e                             keyserver.ubuntu.com                             hkp://keyserver.ubuntu.com:80                             pgp.mit.edu) ; do         gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;     done &&     gpg --batch --verify flink.tgz.asc flink.tgz;     gpgconf --kill all;     rm -rf "$GNUPGHOME" flink.tgz.asc;   fi;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;     CONF_FILE="${FLINK_HOME}/conf/config.yaml";   /bin/bash "$FLINK_HOME/bin/config-parser-utils.sh" "${FLINK_HOME}/conf" "${FLINK_HOME}/bin" "${FLINK_HOME}/lib"     "-repKV" "rest.address,localhost,0.0.0.0"     "-repKV" "rest.bind-address,localhost,0.0.0.0"     "-repKV" "jobmanager.bind-host,localhost,0.0.0.0"     "-repKV" "taskmanager.bind-host,localhost,0.0.0.0"     "-rmKV" "taskmanager.host=localhost"; # buildkit
# Wed, 16 Sep 2026 04:15:52 GMT
USER flink
# Wed, 16 Sep 2026 04:15:52 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 04:15:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 16 Sep 2026 04:15:52 GMT
EXPOSE map[6123/tcp:{} 8081/tcp:{}]
# Wed, 16 Sep 2026 04:15:52 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7cde1edee6e54f132e57d6c18fc40e37a3a93f2934e9872f6460883c7c4505`  
		Last Modified: Wed, 16 Sep 2026 03:17:04 GMT  
		Size: 17.0 MB (16957421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e240095b1560422b9576fd9198cb425611f3f37113bc9534fcfda1107397096`  
		Last Modified: Wed, 16 Sep 2026 03:17:30 GMT  
		Size: 52.3 MB (52273613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b5046ea41cca347fcd3806ef531169dfe5b69ddae4875d547504d7a2adab93`  
		Last Modified: Wed, 16 Sep 2026 03:17:28 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3807e9ee28faab9523b06552dd87fd4d1295c7f4119dee21e1eadd2f54da7a01`  
		Last Modified: Wed, 16 Sep 2026 03:17:28 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3b31c4b55e0d25c060205fc0f9464701f83204a28a73015c55d018fe2d6ac9`  
		Last Modified: Wed, 16 Sep 2026 04:16:27 GMT  
		Size: 1.2 MB (1188262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa5a9a07f3770c56fd56abfdb6c355cb175815802da1f461301ec3c0b382f33c`  
		Last Modified: Wed, 16 Sep 2026 04:16:27 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abab0f930d298624d266938f7fcde6ad215c2352410b5e3a7192ddd6e7ea73c2`  
		Last Modified: Wed, 16 Sep 2026 04:16:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b1feee81b3e51c872f32e92351a5e3522715f34cb5d34d65b3f4bf151535802`  
		Last Modified: Wed, 16 Sep 2026 04:16:39 GMT  
		Size: 605.6 MB (605594416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67c83a92ff224343d3ea8f3d055265dd7e4093ae39aa91c4b0ce7a608822378f`  
		Last Modified: Wed, 16 Sep 2026 04:16:28 GMT  
		Size: 2.2 KB (2240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `flink:java21` - unknown; unknown

```console
$ docker pull flink@sha256:f116a049880854678c7f5227a9a5ad9ef36d644093eeafd4de82c054f09b5eed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3404843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c613a6d95ce6b4da0bcf221e42febedc928d61e6229ab937cf3d6ae03034a599`

```dockerfile
```

-	Layers:
	-	`sha256:9deb3f2cf8cf65824eb37231d3a99c245d6543cba436bdcd766a6035ceb20198`  
		Last Modified: Wed, 16 Sep 2026 04:16:27 GMT  
		Size: 3.4 MB (3380916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c71c5624a04be6aa61811efae7df4fba08ff50a7b57c3e9eea2005e4a2961a8`  
		Last Modified: Wed, 16 Sep 2026 04:16:27 GMT  
		Size: 23.9 KB (23927 bytes)  
		MIME: application/vnd.in-toto+json
