## `flink:java11`

```console
$ docker pull flink@sha256:76069d91850c88aa7bdcb8e87f8fb45f70e0f0a80e32aa8ea53149951b3097bd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `flink:java11` - linux; amd64

```console
$ docker pull flink@sha256:465319f1cd1aae1fbeb057469cb20c64d1d0fafc2bfa06ce2170200640ddfc5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **701.0 MB (701037865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ceb22b18bde2b4f13c777d7b99b8169c38a5e48f618c07ea9118287f79f0a86`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:17:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:17:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:17:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:17:08 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:17:08 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:17:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:17:11 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:17:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:17:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 00:16:54 GMT
RUN set -ex;   apt-get update;   apt-get -y install gpg libsnappy1v5 gettext-base libjemalloc-dev;   rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:16:55 GMT
ENV FLINK_TGZ_URL=https://dlcdn.apache.org/flink/flink-2.3.0/flink-2.3.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://downloads.apache.org/flink/flink-2.3.0/flink-2.3.0-bin-scala_2.12.tgz.asc GPG_KEY=E11F792053638C56C98ACFADB5B638DCA5F94E4A CHECK_GPG=true
# Thu, 12 Nov 2026 00:16:55 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 12 Nov 2026 00:16:55 GMT
ENV PATH=/opt/flink/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:16:55 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink # buildkit
# Thu, 12 Nov 2026 00:16:55 GMT
WORKDIR /opt/flink
# Thu, 12 Nov 2026 00:17:26 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";     if [ "$CHECK_GPG" = "true" ]; then     wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";     for server in hkps://keys.openpgp.org $(shuf -e                             keyserver.ubuntu.com                             hkp://keyserver.ubuntu.com:80                             pgp.mit.edu) ; do         gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;     done &&     gpg --batch --verify flink.tgz.asc flink.tgz;     gpgconf --kill all;     rm -rf "$GNUPGHOME" flink.tgz.asc;   fi;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;     CONF_FILE="${FLINK_HOME}/conf/config.yaml";   /bin/bash "$FLINK_HOME/bin/config-parser-utils.sh" "${FLINK_HOME}/conf" "${FLINK_HOME}/bin" "${FLINK_HOME}/lib"     "-repKV" "rest.address,localhost,0.0.0.0"     "-repKV" "rest.bind-address,localhost,0.0.0.0"     "-repKV" "jobmanager.bind-host,localhost,0.0.0.0"     "-repKV" "taskmanager.bind-host,localhost,0.0.0.0"     "-rmKV" "taskmanager.host=localhost"; # buildkit
# Thu, 12 Nov 2026 00:17:26 GMT
USER flink
# Thu, 12 Nov 2026 00:17:26 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 00:17:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Nov 2026 00:17:26 GMT
EXPOSE map[6123/tcp:{} 8081/tcp:{}]
# Thu, 12 Nov 2026 00:17:26 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16af2eba9bc8d0bb382ac128542967e0244e4149a5167346a3609b5c02250eb7`  
		Last Modified: Wed, 11 Nov 2026 23:17:25 GMT  
		Size: 17.0 MB (16968781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd5ffe3a8573849a46c62104d066d9a0238288b3722be90c7996fd183deaa38`  
		Last Modified: Wed, 11 Nov 2026 23:17:26 GMT  
		Size: 47.4 MB (47351616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e6810092226afebad4d044648bcbf7fdd2e52e37220e0ae2da3d595e3b09b23`  
		Last Modified: Wed, 11 Nov 2026 23:17:24 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72f525a27ee971f5f3a289935521db1283b5b80178d66ecf1b1a96d4401a0d4e`  
		Last Modified: Wed, 11 Nov 2026 23:17:24 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f12c8749be8cbadbce4d3b845d995fc1af3c1638432204c84668ae1d684c4644`  
		Last Modified: Thu, 12 Nov 2026 00:17:58 GMT  
		Size: 1.3 MB (1323674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f014cc7a2cbf917b310de1ba5a6f5b8bce74c4c99a6256b2cf20631d553857a0`  
		Last Modified: Thu, 12 Nov 2026 00:17:58 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:901499cf4f41f9b36c94d867721b2844b2ec6b2c959d3ad0079f1637d5476e5b`  
		Last Modified: Thu, 12 Nov 2026 00:17:58 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9fd433238378fb773067585fd1fb234440b33fede0aae2058b8fd7107f9215`  
		Last Modified: Thu, 12 Nov 2026 00:18:11 GMT  
		Size: 605.6 MB (605594441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:491297578d5d2d112cce4b9175607bbb0717f5ddb792a5d1417f1003135a9f3a`  
		Last Modified: Thu, 12 Nov 2026 00:17:59 GMT  
		Size: 2.2 KB (2240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `flink:java11` - unknown; unknown

```console
$ docker pull flink@sha256:0ad438511a8957e721ff726b21e0a9bebdb3f71606929e91037293ed870b2abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3415408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e76c75c8bcc3c9df7a80d7d4b0a3d5d3862eea6a5475834a825b6bb4b617978d`

```dockerfile
```

-	Layers:
	-	`sha256:76410495820de80fd05f1b09839d38dda1d83ba50d1886b5221ec8fcbfe42acb`  
		Last Modified: Thu, 12 Nov 2026 00:17:58 GMT  
		Size: 3.4 MB (3391637 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14f9668bfaf861c835f6e11b05c645dbbc8908e5064e5e3af67e6d8c319e4b6d`  
		Last Modified: Thu, 12 Nov 2026 00:17:58 GMT  
		Size: 23.8 KB (23771 bytes)  
		MIME: application/vnd.in-toto+json

### `flink:java11` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:5b710f5428f0f701f0c89aea5409c2e2eea02f62657745ee99706ac964a09bc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **698.4 MB (698393084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1c72d2c84db1a547d244a77843355c11d8fe46f82f9b8a5518e5d347946a343`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:21:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:21:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:21:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:21:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:21:12 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:21:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:21:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:21:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:21:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 00:32:03 GMT
RUN set -ex;   apt-get update;   apt-get -y install gpg libsnappy1v5 gettext-base libjemalloc-dev;   rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:32:03 GMT
ENV FLINK_TGZ_URL=https://dlcdn.apache.org/flink/flink-2.3.0/flink-2.3.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://downloads.apache.org/flink/flink-2.3.0/flink-2.3.0-bin-scala_2.12.tgz.asc GPG_KEY=E11F792053638C56C98ACFADB5B638DCA5F94E4A CHECK_GPG=true
# Thu, 12 Nov 2026 00:32:03 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 12 Nov 2026 00:32:03 GMT
ENV PATH=/opt/flink/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:32:03 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink # buildkit
# Thu, 12 Nov 2026 00:32:03 GMT
WORKDIR /opt/flink
# Thu, 12 Nov 2026 00:32:22 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";     if [ "$CHECK_GPG" = "true" ]; then     wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";     for server in hkps://keys.openpgp.org $(shuf -e                             keyserver.ubuntu.com                             hkp://keyserver.ubuntu.com:80                             pgp.mit.edu) ; do         gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;     done &&     gpg --batch --verify flink.tgz.asc flink.tgz;     gpgconf --kill all;     rm -rf "$GNUPGHOME" flink.tgz.asc;   fi;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;     CONF_FILE="${FLINK_HOME}/conf/config.yaml";   /bin/bash "$FLINK_HOME/bin/config-parser-utils.sh" "${FLINK_HOME}/conf" "${FLINK_HOME}/bin" "${FLINK_HOME}/lib"     "-repKV" "rest.address,localhost,0.0.0.0"     "-repKV" "rest.bind-address,localhost,0.0.0.0"     "-repKV" "jobmanager.bind-host,localhost,0.0.0.0"     "-repKV" "taskmanager.bind-host,localhost,0.0.0.0"     "-rmKV" "taskmanager.host=localhost"; # buildkit
# Thu, 12 Nov 2026 00:32:22 GMT
USER flink
# Thu, 12 Nov 2026 00:32:22 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 00:32:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Nov 2026 00:32:22 GMT
EXPOSE map[6123/tcp:{} 8081/tcp:{}]
# Thu, 12 Nov 2026 00:32:22 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b8ee1fba1c12acf3073da6bbf47d7f577b1408c55e995fc155be22719fa83d8`  
		Last Modified: Wed, 11 Nov 2026 23:21:29 GMT  
		Size: 17.0 MB (16978210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27a9f4f9f615ee35c7b8ad02ad452d1b27983a17a69dc782dde91b22507a10c4`  
		Last Modified: Wed, 11 Nov 2026 23:21:30 GMT  
		Size: 45.7 MB (45660541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e29c00c8386154f2b9e54dfdbd83f83cc64156f2479049dbffee054b0442e5`  
		Last Modified: Wed, 11 Nov 2026 23:21:27 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69343d5cc62197a325b3a13f7375e8d850f1b1c91a98ca00679cee6518bfdd03`  
		Last Modified: Wed, 11 Nov 2026 23:21:27 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fb53da57bd8857c14db9af8bf335a1b42396d887f7733a374c8d52988bfabc8`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 1.2 MB (1188427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a39bb50573b7b8981bbebf73742f163a80b461cd12e9d69ee4233dd61d984ee`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807ec07b5fbd62968f46efed1378bba3ab6734f8ec020379b24f21f161129da3`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3691c613af764583e8173d2371236b85f5340cca268a043c00c3f38be76cb7a2`  
		Last Modified: Thu, 12 Nov 2026 00:33:12 GMT  
		Size: 605.6 MB (605594513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5796890884040af871cc2f0ef56419066af72c0ad67bb67a43c240a27f647997`  
		Last Modified: Thu, 12 Nov 2026 00:32:58 GMT  
		Size: 2.2 KB (2240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `flink:java11` - unknown; unknown

```console
$ docker pull flink@sha256:2bb8cef889d900e7407c3d33d4567e46e165e1ff16c60464ea70c934d12bb192
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3416685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8432ad5215239b5a0866154069e3d17c3d1faf3504451e4e60a6dc202a647d9f`

```dockerfile
```

-	Layers:
	-	`sha256:33fa6f204afc9719a35dd8340fd2d4dcd69303253846d58d920f5330eeb27a3c`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 3.4 MB (3392755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40346e48d93d403d4019efe1951ac35c5d1de07d73ec3888a8fbc34529aeede5`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 23.9 KB (23930 bytes)  
		MIME: application/vnd.in-toto+json
