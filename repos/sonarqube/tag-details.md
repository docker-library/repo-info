<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `sonarqube`

-	[`sonarqube:8-community`](#sonarqube8-community)
-	[`sonarqube:8-datacenter-app`](#sonarqube8-datacenter-app)
-	[`sonarqube:8-datacenter-search`](#sonarqube8-datacenter-search)
-	[`sonarqube:8-developer`](#sonarqube8-developer)
-	[`sonarqube:8-enterprise`](#sonarqube8-enterprise)
-	[`sonarqube:8.9-community`](#sonarqube89-community)
-	[`sonarqube:8.9-datacenter-app`](#sonarqube89-datacenter-app)
-	[`sonarqube:8.9-datacenter-search`](#sonarqube89-datacenter-search)
-	[`sonarqube:8.9-developer`](#sonarqube89-developer)
-	[`sonarqube:8.9-enterprise`](#sonarqube89-enterprise)
-	[`sonarqube:8.9.10-community`](#sonarqube8910-community)
-	[`sonarqube:8.9.10-datacenter-app`](#sonarqube8910-datacenter-app)
-	[`sonarqube:8.9.10-datacenter-search`](#sonarqube8910-datacenter-search)
-	[`sonarqube:8.9.10-developer`](#sonarqube8910-developer)
-	[`sonarqube:8.9.10-enterprise`](#sonarqube8910-enterprise)
-	[`sonarqube:9-community`](#sonarqube9-community)
-	[`sonarqube:9-datacenter-app`](#sonarqube9-datacenter-app)
-	[`sonarqube:9-datacenter-search`](#sonarqube9-datacenter-search)
-	[`sonarqube:9-developer`](#sonarqube9-developer)
-	[`sonarqube:9-enterprise`](#sonarqube9-enterprise)
-	[`sonarqube:9.8-community`](#sonarqube98-community)
-	[`sonarqube:9.8-datacenter-app`](#sonarqube98-datacenter-app)
-	[`sonarqube:9.8-datacenter-search`](#sonarqube98-datacenter-search)
-	[`sonarqube:9.8-developer`](#sonarqube98-developer)
-	[`sonarqube:9.8-enterprise`](#sonarqube98-enterprise)
-	[`sonarqube:9.8.0-community`](#sonarqube980-community)
-	[`sonarqube:9.8.0-datacenter-app`](#sonarqube980-datacenter-app)
-	[`sonarqube:9.8.0-datacenter-search`](#sonarqube980-datacenter-search)
-	[`sonarqube:9.8.0-developer`](#sonarqube980-developer)
-	[`sonarqube:9.8.0-enterprise`](#sonarqube980-enterprise)
-	[`sonarqube:community`](#sonarqubecommunity)
-	[`sonarqube:datacenter-app`](#sonarqubedatacenter-app)
-	[`sonarqube:datacenter-search`](#sonarqubedatacenter-search)
-	[`sonarqube:developer`](#sonarqubedeveloper)
-	[`sonarqube:enterprise`](#sonarqubeenterprise)
-	[`sonarqube:latest`](#sonarqubelatest)
-	[`sonarqube:lts`](#sonarqubelts)
-	[`sonarqube:lts-community`](#sonarqubelts-community)
-	[`sonarqube:lts-datacenter-app`](#sonarqubelts-datacenter-app)
-	[`sonarqube:lts-datacenter-search`](#sonarqubelts-datacenter-search)
-	[`sonarqube:lts-developer`](#sonarqubelts-developer)
-	[`sonarqube:lts-enterprise`](#sonarqubelts-enterprise)

## `sonarqube:8-community`

```console
$ docker pull sonarqube@sha256:eb2f0be32efdf08bef8d7370d09a0b123bc2430ae80e29a07720c9aa68233c00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:8-community` - linux; amd64

```console
$ docker pull sonarqube@sha256:150f959098fe7a1c16c9a9dcb7fa8465f6d29c2d4c777ad8ade6c33d4f014f82
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.8 MB (327809765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4009139ebd1985ba735e70d240fcc40681829273c7759fb3ae52e2ff51fb6a13`
-	Entrypoint: `["bin\/run.sh"]`
-	Default Command: `["bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 19 Dec 2022 21:23:44 GMT
ENV JAVA_VERSION=jdk-11.0.11+9 LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:23:58 GMT
RUN set -eux;     apk add --no-cache tzdata --virtual .build-deps curl binutils zstd;     GLIBC_VER="2.33-r0";     ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download";     GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-10.2.0-6-x86_64.pkg.tar.zst";     GCC_LIBS_SHA256="e33b45e4a10ef26259d6acf8e7b5dd6dc63800641e41eb67fa6588d061f79c1c";     ZLIB_URL="https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.12-1-x86_64.pkg.tar.zst";     ZLIB_SHA256=2b6d0f4ee6782993ef673aef2d71c3adbc6f7c31aad7b374a12fde43b8c333b0;     curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub;     SGERRAND_RSA_SHA256="823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2";     echo "${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub" | sha256sum -c - ;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-${GLIBC_VER}.apk;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-bin-${GLIBC_VER}.apk;     curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-i18n-${GLIBC_VER}.apk;     /usr/glibc-compat/bin/localedef --inputfile en_US --charmap UTF-8 "$LANG" || true ;    echo "export LANG=$LANG" > /etc/profile.d/locale.sh;     curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.zst;     echo "${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.zst" | sha256sum -c - ;     mkdir /tmp/gcc;     zstd -d /tmp/gcc-libs.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/gcc-libs.tar -C /tmp/gcc;     mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib;     strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*;     curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.zst;     echo "${ZLIB_SHA256} */tmp/libz.tar.zst" | sha256sum -c - ;    mkdir /tmp/libz;     zstd -d /tmp/libz.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/libz.tar -C /tmp/libz;     mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib;     apk del --purge .build-deps glibc-i18n;     rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar* /tmp/libz /tmp/libz.tar.zst /var/cache/apk/*;
# Mon, 19 Dec 2022 21:24:03 GMT
RUN set -eux;     apk add --no-cache --virtual .fetch-deps curl;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64|arm64)          ESUM='76f7da05d905b5f9de8de1a34c1a206744f7589bf0eed876cd9069cb1d913806';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.13_8.tar.gz';          ;;        armhf|armv7l)          ESUM='aee2f20d005b58e79c3c6c02271f797cb387d33a135b762886990b9bf7cb262e';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_arm_linux_hotspot_11.0.13_8.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='8f267876675dac3da3f4ceccd44d812b57098505eeec5fb1688d54bdeffcd1da';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.13_8.tar.gz';          ;;        s390x)          ESUM='b4a5af4ffcc98f6b7cdd2232f79aa12f20efa769b5255277fa4974e2e19d4409';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_s390x_linux_hotspot_11.0.13_8.tar.gz';          ;;        amd64|x86_64)          ESUM='fb0a27e6e1f26a1ee79daa92e4cfe3ec0d676acfe114d99dd84b3414f056e8a0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_x64_linux_hotspot_11.0.13_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     apk del --purge .fetch-deps;     rm -rf /var/cache/apk/*;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 19 Dec 2022 21:24:04 GMT
ARG SONARQUBE_VERSION=8.9.10.61524
# Mon, 19 Dec 2022 21:24:04 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.10.61524.zip
# Mon, 19 Dec 2022 21:24:04 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=8.9.10.61524 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:24:18 GMT
# ARGS: SONARQUBE_VERSION=8.9.10.61524 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.10.61524.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME};     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:24:18 GMT
COPY --chown=sonarqube:sonarqubemulti:aed345498324cc768d63aba16bd3b3de027a0213cb3a62a9a3b27799dbf88552 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:24:19 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:24:19 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:24:19 GMT
ENTRYPOINT ["bin/run.sh"]
# Mon, 19 Dec 2022 21:24:19 GMT
CMD ["bin/sonar.sh"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a155b04154c01862d7fd054da999b577fe5ec09c74b84d64ae8ce31815da793e`  
		Last Modified: Mon, 19 Dec 2022 21:29:35 GMT  
		Size: 7.5 MB (7492787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4934f5353f9b5bf594c3be7825575cbd8816b6facff9fb0b7a88d6a6f7b98db9`  
		Last Modified: Mon, 19 Dec 2022 21:29:41 GMT  
		Size: 43.3 MB (43343246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370b716987f3969299644a449ff7508a2965eede0a2057babe59094dd1dc3b91`  
		Last Modified: Mon, 19 Dec 2022 21:29:49 GMT  
		Size: 274.1 MB (274145144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e1eb66a3a748b3f954bead92ffb66dbdeea89c6c071df90711fdafcf5022f6`  
		Last Modified: Mon, 19 Dec 2022 21:29:34 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:8-datacenter-app`

```console
$ docker pull sonarqube@sha256:bb91d972417473670c6616321210a70f055d099769765563fec737177418f155
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:8-datacenter-app` - linux; amd64

```console
$ docker pull sonarqube@sha256:e4255e77dd90a1edf8aa34ef5e51e13c008513305ca156f2713e365e2b38aedc
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **431.9 MB (431854567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f86af1fd9e0256edf670621c66d8d78df60fe50b91ec5a830d57de6e19de784`
-	Entrypoint: `["bin\/run.sh"]`
-	Default Command: `["bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 19 Dec 2022 21:24:24 GMT
ENV JAVA_VERSION=jdk-11.0.10+9 LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:24:37 GMT
RUN set -eux;     apk add --no-cache tzdata --virtual .build-deps curl binutils zstd;     GLIBC_VER="2.33-r0";     ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download";     GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-10.2.0-6-x86_64.pkg.tar.zst";     GCC_LIBS_SHA256="e33b45e4a10ef26259d6acf8e7b5dd6dc63800641e41eb67fa6588d061f79c1c";     ZLIB_URL="https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.12-1-x86_64.pkg.tar.zst";     ZLIB_SHA256=2b6d0f4ee6782993ef673aef2d71c3adbc6f7c31aad7b374a12fde43b8c333b0;     curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub;     SGERRAND_RSA_SHA256="823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2";     echo "${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub" | sha256sum -c - ;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-${GLIBC_VER}.apk;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-bin-${GLIBC_VER}.apk;     curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-i18n-${GLIBC_VER}.apk;     /usr/glibc-compat/bin/localedef --inputfile en_US --charmap UTF-8 "$LANG" || true ;    echo "export LANG=$LANG" > /etc/profile.d/locale.sh;     curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.zst;     echo "${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.zst" | sha256sum -c - ;     mkdir /tmp/gcc;     zstd -d /tmp/gcc-libs.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/gcc-libs.tar -C /tmp/gcc;     mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib;     strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*;     curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.zst;     echo "${ZLIB_SHA256} */tmp/libz.tar.zst" | sha256sum -c - ;    mkdir /tmp/libz;     zstd -d /tmp/libz.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/libz.tar -C /tmp/libz;     mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib;     apk del --purge .build-deps glibc-i18n;     rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar* /tmp/libz /tmp/libz.tar.zst /var/cache/apk/*;
# Mon, 19 Dec 2022 21:24:42 GMT
RUN set -eux;     apk add --no-cache --virtual .fetch-deps curl;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64|arm64)          ESUM='76f7da05d905b5f9de8de1a34c1a206744f7589bf0eed876cd9069cb1d913806';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.13_8.tar.gz';          ;;        armhf|armv7l)          ESUM='aee2f20d005b58e79c3c6c02271f797cb387d33a135b762886990b9bf7cb262e';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_arm_linux_hotspot_11.0.13_8.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='8f267876675dac3da3f4ceccd44d812b57098505eeec5fb1688d54bdeffcd1da';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.13_8.tar.gz';          ;;        s390x)          ESUM='b4a5af4ffcc98f6b7cdd2232f79aa12f20efa769b5255277fa4974e2e19d4409';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_s390x_linux_hotspot_11.0.13_8.tar.gz';          ;;        amd64|x86_64)          ESUM='fb0a27e6e1f26a1ee79daa92e4cfe3ec0d676acfe114d99dd84b3414f056e8a0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_x64_linux_hotspot_11.0.13_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     apk del --purge .fetch-deps;     rm -rf /var/cache/apk/*;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 19 Dec 2022 21:24:43 GMT
ARG SONARQUBE_VERSION=8.9.10.61524
# Mon, 19 Dec 2022 21:25:33 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-8.9.10.61524.zip
# Mon, 19 Dec 2022 21:25:33 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=8.9.10.61524 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=application SONAR_CLUSTER_ENABLED=true
# Mon, 19 Dec 2022 21:25:49 GMT
# ARGS: SONARQUBE_VERSION=8.9.10.61524 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-8.9.10.61524.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt ;    cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:25:50 GMT
COPY --chown=sonarqube:sonarqubemulti:51df763f101eec590ff619b8aadba3476acd9a155be2557d6807f6fb4f272767 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:25:50 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:25:51 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:25:51 GMT
ENTRYPOINT ["bin/run.sh"]
# Mon, 19 Dec 2022 21:25:51 GMT
CMD ["bin/sonar.sh"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801f2941a1dfad67df87edbeef8ab1792bbf69c5d10e461a1ac0454346116d9b`  
		Last Modified: Mon, 19 Dec 2022 21:30:05 GMT  
		Size: 7.5 MB (7492797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4412b9adb8889263429649c5aa909e26d4204c3fd41401ea912f78f2c04e6a`  
		Last Modified: Mon, 19 Dec 2022 21:30:10 GMT  
		Size: 43.3 MB (43343200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee5bbfc8513a6f387b781325d92834f0906e9959d20322452101f1d1cf138d6`  
		Last Modified: Mon, 19 Dec 2022 21:31:23 GMT  
		Size: 378.2 MB (378189686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c77acf9a9450afc8eb01e573df514c3803a467636afea69f2a10cd47d872745`  
		Last Modified: Mon, 19 Dec 2022 21:31:04 GMT  
		Size: 1.4 KB (1395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:8-datacenter-search`

```console
$ docker pull sonarqube@sha256:045f3ff36842cf2353cec758fefea417bb87665f36ccc7ea449c49ca9965fb3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:8-datacenter-search` - linux; amd64

```console
$ docker pull sonarqube@sha256:f631cfe46368435c68c5a6ec04cdf8878d1bef37206b0a5df8daa76d7db4a886
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **431.8 MB (431809569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:437a7a2a232a2b8a9bca172f1aa9cda376b70e67a31d3a354e185cc6f3db40b0`
-	Entrypoint: `["bin\/run.sh"]`
-	Default Command: `["bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 19 Dec 2022 21:24:24 GMT
ENV JAVA_VERSION=jdk-11.0.10+9 LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:24:37 GMT
RUN set -eux;     apk add --no-cache tzdata --virtual .build-deps curl binutils zstd;     GLIBC_VER="2.33-r0";     ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download";     GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-10.2.0-6-x86_64.pkg.tar.zst";     GCC_LIBS_SHA256="e33b45e4a10ef26259d6acf8e7b5dd6dc63800641e41eb67fa6588d061f79c1c";     ZLIB_URL="https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.12-1-x86_64.pkg.tar.zst";     ZLIB_SHA256=2b6d0f4ee6782993ef673aef2d71c3adbc6f7c31aad7b374a12fde43b8c333b0;     curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub;     SGERRAND_RSA_SHA256="823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2";     echo "${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub" | sha256sum -c - ;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-${GLIBC_VER}.apk;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-bin-${GLIBC_VER}.apk;     curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-i18n-${GLIBC_VER}.apk;     /usr/glibc-compat/bin/localedef --inputfile en_US --charmap UTF-8 "$LANG" || true ;    echo "export LANG=$LANG" > /etc/profile.d/locale.sh;     curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.zst;     echo "${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.zst" | sha256sum -c - ;     mkdir /tmp/gcc;     zstd -d /tmp/gcc-libs.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/gcc-libs.tar -C /tmp/gcc;     mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib;     strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*;     curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.zst;     echo "${ZLIB_SHA256} */tmp/libz.tar.zst" | sha256sum -c - ;    mkdir /tmp/libz;     zstd -d /tmp/libz.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/libz.tar -C /tmp/libz;     mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib;     apk del --purge .build-deps glibc-i18n;     rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar* /tmp/libz /tmp/libz.tar.zst /var/cache/apk/*;
# Mon, 19 Dec 2022 21:26:02 GMT
RUN set -eux;     apk add --no-cache --virtual .fetch-deps curl;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64|arm64)          ESUM='fde6b29df23b6e7ed6e16a237a0f44273fb9e267fdfbd0b3de5add98e55649f6';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.11_9.tar.gz';          ;;        armhf|armv7l)          ESUM='ad02656f800fd64c2b090b23ad24a099d9cd1054948ecb0e9851bc39c51c8be8';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.11_9.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='37c19c7c2d1cea627b854a475ef1a765d30357d765d20cf3f96590037e79d0f3';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.11_9.tar.gz';          ;;        s390x)          ESUM='f18101fc50aad795a41b4d3bbc591308c83664fd2390bf2bc007fd9b3d531e6c';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.11_9.tar.gz';          ;;        amd64|x86_64)          ESUM='144f2c6bcf64faa32016f2474b6c01031be75d25325e9c3097aed6589bc5d548';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.11_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     apk del --purge .fetch-deps;     rm -rf /var/cache/apk/*;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 19 Dec 2022 21:26:03 GMT
ARG SONARQUBE_VERSION=8.9.10.61524
# Mon, 19 Dec 2022 21:26:03 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-8.9.10.61524.zip
# Mon, 19 Dec 2022 21:26:03 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=8.9.10.61524 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=search SONAR_CLUSTER_ENABLED=true
# Mon, 19 Dec 2022 21:26:20 GMT
# ARGS: SONARQUBE_VERSION=8.9.10.61524 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-8.9.10.61524.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt ;    cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:26:21 GMT
COPY --chown=sonarqube:sonarqubemulti:270da8217279c47ae0242cde83fc983aadec2b66d86bcd0a13541b65a67704f9 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:26:21 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:26:21 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:26:21 GMT
ENTRYPOINT ["bin/run.sh"]
# Mon, 19 Dec 2022 21:26:21 GMT
CMD ["bin/sonar.sh"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801f2941a1dfad67df87edbeef8ab1792bbf69c5d10e461a1ac0454346116d9b`  
		Last Modified: Mon, 19 Dec 2022 21:30:05 GMT  
		Size: 7.5 MB (7492797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b25525918ecce74c4d6b65021b8fe7fd7a11dcafc0954421236b8b25b895137`  
		Last Modified: Mon, 19 Dec 2022 21:31:42 GMT  
		Size: 43.3 MB (43297675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e645db067f920985007507be33866ba2b95e10288f663eda56d7f904bf56754e`  
		Last Modified: Mon, 19 Dec 2022 21:31:54 GMT  
		Size: 378.2 MB (378190200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e3bcc80a055e1e984e528f683e4db029165f92d4395417513e960654d0a22d`  
		Last Modified: Mon, 19 Dec 2022 21:31:35 GMT  
		Size: 1.4 KB (1408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:8-developer`

```console
$ docker pull sonarqube@sha256:4bca63533a9e7428f19908cf49ac4e8ff79f8a010666e2a82fbab83f9235e1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:8-developer` - linux; amd64

```console
$ docker pull sonarqube@sha256:a1dfafdfa89a12a1870b917fc6def57b80d5feb5c5e8d1f120fcd48c5990a80a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.7 MB (388732175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59fce3983431db9fb3036dbe6af7a9c67238327ff238468c57776406895b642`
-	Entrypoint: `["bin\/run.sh"]`
-	Default Command: `["bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 19 Dec 2022 21:24:24 GMT
ENV JAVA_VERSION=jdk-11.0.10+9 LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:24:37 GMT
RUN set -eux;     apk add --no-cache tzdata --virtual .build-deps curl binutils zstd;     GLIBC_VER="2.33-r0";     ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download";     GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-10.2.0-6-x86_64.pkg.tar.zst";     GCC_LIBS_SHA256="e33b45e4a10ef26259d6acf8e7b5dd6dc63800641e41eb67fa6588d061f79c1c";     ZLIB_URL="https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.12-1-x86_64.pkg.tar.zst";     ZLIB_SHA256=2b6d0f4ee6782993ef673aef2d71c3adbc6f7c31aad7b374a12fde43b8c333b0;     curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub;     SGERRAND_RSA_SHA256="823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2";     echo "${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub" | sha256sum -c - ;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-${GLIBC_VER}.apk;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-bin-${GLIBC_VER}.apk;     curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-i18n-${GLIBC_VER}.apk;     /usr/glibc-compat/bin/localedef --inputfile en_US --charmap UTF-8 "$LANG" || true ;    echo "export LANG=$LANG" > /etc/profile.d/locale.sh;     curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.zst;     echo "${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.zst" | sha256sum -c - ;     mkdir /tmp/gcc;     zstd -d /tmp/gcc-libs.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/gcc-libs.tar -C /tmp/gcc;     mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib;     strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*;     curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.zst;     echo "${ZLIB_SHA256} */tmp/libz.tar.zst" | sha256sum -c - ;    mkdir /tmp/libz;     zstd -d /tmp/libz.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/libz.tar -C /tmp/libz;     mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib;     apk del --purge .build-deps glibc-i18n;     rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar* /tmp/libz /tmp/libz.tar.zst /var/cache/apk/*;
# Mon, 19 Dec 2022 21:24:42 GMT
RUN set -eux;     apk add --no-cache --virtual .fetch-deps curl;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64|arm64)          ESUM='76f7da05d905b5f9de8de1a34c1a206744f7589bf0eed876cd9069cb1d913806';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.13_8.tar.gz';          ;;        armhf|armv7l)          ESUM='aee2f20d005b58e79c3c6c02271f797cb387d33a135b762886990b9bf7cb262e';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_arm_linux_hotspot_11.0.13_8.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='8f267876675dac3da3f4ceccd44d812b57098505eeec5fb1688d54bdeffcd1da';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.13_8.tar.gz';          ;;        s390x)          ESUM='b4a5af4ffcc98f6b7cdd2232f79aa12f20efa769b5255277fa4974e2e19d4409';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_s390x_linux_hotspot_11.0.13_8.tar.gz';          ;;        amd64|x86_64)          ESUM='fb0a27e6e1f26a1ee79daa92e4cfe3ec0d676acfe114d99dd84b3414f056e8a0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_x64_linux_hotspot_11.0.13_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     apk del --purge .fetch-deps;     rm -rf /var/cache/apk/*;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 19 Dec 2022 21:24:43 GMT
ARG SONARQUBE_VERSION=8.9.10.61524
# Mon, 19 Dec 2022 21:24:43 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-8.9.10.61524.zip
# Mon, 19 Dec 2022 21:24:43 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=8.9.10.61524 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:24:58 GMT
# ARGS: SONARQUBE_VERSION=8.9.10.61524 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-8.9.10.61524.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:24:59 GMT
COPY --chown=sonarqube:sonarqubemulti:aed345498324cc768d63aba16bd3b3de027a0213cb3a62a9a3b27799dbf88552 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:24:59 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:24:59 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:24:59 GMT
ENTRYPOINT ["bin/run.sh"]
# Mon, 19 Dec 2022 21:25:00 GMT
CMD ["bin/sonar.sh"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801f2941a1dfad67df87edbeef8ab1792bbf69c5d10e461a1ac0454346116d9b`  
		Last Modified: Mon, 19 Dec 2022 21:30:05 GMT  
		Size: 7.5 MB (7492797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4412b9adb8889263429649c5aa909e26d4204c3fd41401ea912f78f2c04e6a`  
		Last Modified: Mon, 19 Dec 2022 21:30:10 GMT  
		Size: 43.3 MB (43343200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4edec7e59f84f86bb19e6abc36bc617e91a0786de12be91893fbe24643001b`  
		Last Modified: Mon, 19 Dec 2022 21:30:21 GMT  
		Size: 335.1 MB (335067592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee210cb6c28dede06c62c5743cbed4722b197cc82912e3acef796bef252df077`  
		Last Modified: Mon, 19 Dec 2022 21:30:04 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:8-enterprise`

```console
$ docker pull sonarqube@sha256:6a0625fa9df64fa48bc00f7191b91212a35d0c83fa9c218b268df7a91b1c26b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:8-enterprise` - linux; amd64

```console
$ docker pull sonarqube@sha256:e205831f60391aae2f10ec095658e477cb9f497d017f926896f46028eb962ac3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.4 MB (409404070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c044eca90e8720bf88431a32eab379ba1d47c3ee0986a797bced5fb30048800`
-	Entrypoint: `["bin\/run.sh"]`
-	Default Command: `["bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 19 Dec 2022 21:24:24 GMT
ENV JAVA_VERSION=jdk-11.0.10+9 LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:24:37 GMT
RUN set -eux;     apk add --no-cache tzdata --virtual .build-deps curl binutils zstd;     GLIBC_VER="2.33-r0";     ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download";     GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-10.2.0-6-x86_64.pkg.tar.zst";     GCC_LIBS_SHA256="e33b45e4a10ef26259d6acf8e7b5dd6dc63800641e41eb67fa6588d061f79c1c";     ZLIB_URL="https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.12-1-x86_64.pkg.tar.zst";     ZLIB_SHA256=2b6d0f4ee6782993ef673aef2d71c3adbc6f7c31aad7b374a12fde43b8c333b0;     curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub;     SGERRAND_RSA_SHA256="823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2";     echo "${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub" | sha256sum -c - ;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-${GLIBC_VER}.apk;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-bin-${GLIBC_VER}.apk;     curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-i18n-${GLIBC_VER}.apk;     /usr/glibc-compat/bin/localedef --inputfile en_US --charmap UTF-8 "$LANG" || true ;    echo "export LANG=$LANG" > /etc/profile.d/locale.sh;     curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.zst;     echo "${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.zst" | sha256sum -c - ;     mkdir /tmp/gcc;     zstd -d /tmp/gcc-libs.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/gcc-libs.tar -C /tmp/gcc;     mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib;     strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*;     curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.zst;     echo "${ZLIB_SHA256} */tmp/libz.tar.zst" | sha256sum -c - ;    mkdir /tmp/libz;     zstd -d /tmp/libz.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/libz.tar -C /tmp/libz;     mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib;     apk del --purge .build-deps glibc-i18n;     rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar* /tmp/libz /tmp/libz.tar.zst /var/cache/apk/*;
# Mon, 19 Dec 2022 21:25:08 GMT
RUN set -eux;     apk add --no-cache --virtual .fetch-deps curl;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64|arm64)          ESUM='76f7da05d905b5f9de8de1a34c1a206744f7589bf0eed876cd9069cb1d913806';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.13_8.tar.gz';          ;;        armhf|armv7l)          ESUM='aee2f20d005b58e79c3c6c02271f797cb387d33a135b762886990b9bf7cb262e';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_arm_linux_hotspot_11.0.13_8.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='8f267876675dac3da3f4ceccd44d812b57098505eeec5fb1688d54bdeffcd1da';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.13_8.tar.gz';          ;;        s390x)          ESUM='b4a5af4ffcc98f6b7cdd2232f79aa12f20efa769b5255277fa4974e2e19d4409';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_s390x_linux_hotspot_11.0.13_8.tar.gz';          ;;        amd64|x86_64)          ESUM='fb0a27e6e1f26a1ee79daa92e4cfe3ec0d676acfe114d99dd84b3414f056e8a0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_x64_linux_hotspot_11.0.13_8.tar.gz';          ;;        *)           echo "Unsupported arch: ${ARCH}";           exit 1;           ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     apk del --purge .fetch-deps;     rm -rf /var/cache/apk/*;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 19 Dec 2022 21:25:09 GMT
ARG SONARQUBE_VERSION=8.9.10.61524
# Mon, 19 Dec 2022 21:25:09 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-enterprise/sonarqube-enterprise-8.9.10.61524.zip
# Mon, 19 Dec 2022 21:25:09 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=8.9.10.61524 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:25:25 GMT
# ARGS: SONARQUBE_VERSION=8.9.10.61524 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-enterprise/sonarqube-enterprise-8.9.10.61524.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME};     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:25:27 GMT
COPY --chown=sonarqube:sonarqubemulti:aed345498324cc768d63aba16bd3b3de027a0213cb3a62a9a3b27799dbf88552 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:25:27 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:25:27 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:25:27 GMT
ENTRYPOINT ["bin/run.sh"]
# Mon, 19 Dec 2022 21:25:27 GMT
CMD ["bin/sonar.sh"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801f2941a1dfad67df87edbeef8ab1792bbf69c5d10e461a1ac0454346116d9b`  
		Last Modified: Mon, 19 Dec 2022 21:30:05 GMT  
		Size: 7.5 MB (7492797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16d8e8238b878485bf358ae377f4a2537d1665aee4be22e9d217cfd509dd429`  
		Last Modified: Mon, 19 Dec 2022 21:30:40 GMT  
		Size: 43.3 MB (43343227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec1faa3f908a7d6154b16ccd21d4e3e7a511372cdf22fa533476d0621c369f4`  
		Last Modified: Mon, 19 Dec 2022 21:30:52 GMT  
		Size: 355.7 MB (355739459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7665da00e2e72c3cb0fad36da1742b94d14d6bda2d9af32f3b78efe1147e90`  
		Last Modified: Mon, 19 Dec 2022 21:30:34 GMT  
		Size: 1.1 KB (1098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:8.9-community`

```console
$ docker pull sonarqube@sha256:eb2f0be32efdf08bef8d7370d09a0b123bc2430ae80e29a07720c9aa68233c00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:8.9-community` - linux; amd64

```console
$ docker pull sonarqube@sha256:150f959098fe7a1c16c9a9dcb7fa8465f6d29c2d4c777ad8ade6c33d4f014f82
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.8 MB (327809765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4009139ebd1985ba735e70d240fcc40681829273c7759fb3ae52e2ff51fb6a13`
-	Entrypoint: `["bin\/run.sh"]`
-	Default Command: `["bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 19 Dec 2022 21:23:44 GMT
ENV JAVA_VERSION=jdk-11.0.11+9 LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:23:58 GMT
RUN set -eux;     apk add --no-cache tzdata --virtual .build-deps curl binutils zstd;     GLIBC_VER="2.33-r0";     ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download";     GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-10.2.0-6-x86_64.pkg.tar.zst";     GCC_LIBS_SHA256="e33b45e4a10ef26259d6acf8e7b5dd6dc63800641e41eb67fa6588d061f79c1c";     ZLIB_URL="https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.12-1-x86_64.pkg.tar.zst";     ZLIB_SHA256=2b6d0f4ee6782993ef673aef2d71c3adbc6f7c31aad7b374a12fde43b8c333b0;     curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub;     SGERRAND_RSA_SHA256="823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2";     echo "${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub" | sha256sum -c - ;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-${GLIBC_VER}.apk;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-bin-${GLIBC_VER}.apk;     curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-i18n-${GLIBC_VER}.apk;     /usr/glibc-compat/bin/localedef --inputfile en_US --charmap UTF-8 "$LANG" || true ;    echo "export LANG=$LANG" > /etc/profile.d/locale.sh;     curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.zst;     echo "${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.zst" | sha256sum -c - ;     mkdir /tmp/gcc;     zstd -d /tmp/gcc-libs.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/gcc-libs.tar -C /tmp/gcc;     mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib;     strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*;     curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.zst;     echo "${ZLIB_SHA256} */tmp/libz.tar.zst" | sha256sum -c - ;    mkdir /tmp/libz;     zstd -d /tmp/libz.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/libz.tar -C /tmp/libz;     mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib;     apk del --purge .build-deps glibc-i18n;     rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar* /tmp/libz /tmp/libz.tar.zst /var/cache/apk/*;
# Mon, 19 Dec 2022 21:24:03 GMT
RUN set -eux;     apk add --no-cache --virtual .fetch-deps curl;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64|arm64)          ESUM='76f7da05d905b5f9de8de1a34c1a206744f7589bf0eed876cd9069cb1d913806';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.13_8.tar.gz';          ;;        armhf|armv7l)          ESUM='aee2f20d005b58e79c3c6c02271f797cb387d33a135b762886990b9bf7cb262e';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_arm_linux_hotspot_11.0.13_8.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='8f267876675dac3da3f4ceccd44d812b57098505eeec5fb1688d54bdeffcd1da';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.13_8.tar.gz';          ;;        s390x)          ESUM='b4a5af4ffcc98f6b7cdd2232f79aa12f20efa769b5255277fa4974e2e19d4409';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_s390x_linux_hotspot_11.0.13_8.tar.gz';          ;;        amd64|x86_64)          ESUM='fb0a27e6e1f26a1ee79daa92e4cfe3ec0d676acfe114d99dd84b3414f056e8a0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_x64_linux_hotspot_11.0.13_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     apk del --purge .fetch-deps;     rm -rf /var/cache/apk/*;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 19 Dec 2022 21:24:04 GMT
ARG SONARQUBE_VERSION=8.9.10.61524
# Mon, 19 Dec 2022 21:24:04 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.10.61524.zip
# Mon, 19 Dec 2022 21:24:04 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=8.9.10.61524 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:24:18 GMT
# ARGS: SONARQUBE_VERSION=8.9.10.61524 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.10.61524.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME};     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:24:18 GMT
COPY --chown=sonarqube:sonarqubemulti:aed345498324cc768d63aba16bd3b3de027a0213cb3a62a9a3b27799dbf88552 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:24:19 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:24:19 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:24:19 GMT
ENTRYPOINT ["bin/run.sh"]
# Mon, 19 Dec 2022 21:24:19 GMT
CMD ["bin/sonar.sh"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a155b04154c01862d7fd054da999b577fe5ec09c74b84d64ae8ce31815da793e`  
		Last Modified: Mon, 19 Dec 2022 21:29:35 GMT  
		Size: 7.5 MB (7492787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4934f5353f9b5bf594c3be7825575cbd8816b6facff9fb0b7a88d6a6f7b98db9`  
		Last Modified: Mon, 19 Dec 2022 21:29:41 GMT  
		Size: 43.3 MB (43343246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370b716987f3969299644a449ff7508a2965eede0a2057babe59094dd1dc3b91`  
		Last Modified: Mon, 19 Dec 2022 21:29:49 GMT  
		Size: 274.1 MB (274145144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e1eb66a3a748b3f954bead92ffb66dbdeea89c6c071df90711fdafcf5022f6`  
		Last Modified: Mon, 19 Dec 2022 21:29:34 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:8.9-datacenter-app`

```console
$ docker pull sonarqube@sha256:bb91d972417473670c6616321210a70f055d099769765563fec737177418f155
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:8.9-datacenter-app` - linux; amd64

```console
$ docker pull sonarqube@sha256:e4255e77dd90a1edf8aa34ef5e51e13c008513305ca156f2713e365e2b38aedc
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **431.9 MB (431854567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f86af1fd9e0256edf670621c66d8d78df60fe50b91ec5a830d57de6e19de784`
-	Entrypoint: `["bin\/run.sh"]`
-	Default Command: `["bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 19 Dec 2022 21:24:24 GMT
ENV JAVA_VERSION=jdk-11.0.10+9 LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:24:37 GMT
RUN set -eux;     apk add --no-cache tzdata --virtual .build-deps curl binutils zstd;     GLIBC_VER="2.33-r0";     ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download";     GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-10.2.0-6-x86_64.pkg.tar.zst";     GCC_LIBS_SHA256="e33b45e4a10ef26259d6acf8e7b5dd6dc63800641e41eb67fa6588d061f79c1c";     ZLIB_URL="https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.12-1-x86_64.pkg.tar.zst";     ZLIB_SHA256=2b6d0f4ee6782993ef673aef2d71c3adbc6f7c31aad7b374a12fde43b8c333b0;     curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub;     SGERRAND_RSA_SHA256="823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2";     echo "${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub" | sha256sum -c - ;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-${GLIBC_VER}.apk;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-bin-${GLIBC_VER}.apk;     curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-i18n-${GLIBC_VER}.apk;     /usr/glibc-compat/bin/localedef --inputfile en_US --charmap UTF-8 "$LANG" || true ;    echo "export LANG=$LANG" > /etc/profile.d/locale.sh;     curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.zst;     echo "${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.zst" | sha256sum -c - ;     mkdir /tmp/gcc;     zstd -d /tmp/gcc-libs.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/gcc-libs.tar -C /tmp/gcc;     mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib;     strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*;     curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.zst;     echo "${ZLIB_SHA256} */tmp/libz.tar.zst" | sha256sum -c - ;    mkdir /tmp/libz;     zstd -d /tmp/libz.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/libz.tar -C /tmp/libz;     mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib;     apk del --purge .build-deps glibc-i18n;     rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar* /tmp/libz /tmp/libz.tar.zst /var/cache/apk/*;
# Mon, 19 Dec 2022 21:24:42 GMT
RUN set -eux;     apk add --no-cache --virtual .fetch-deps curl;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64|arm64)          ESUM='76f7da05d905b5f9de8de1a34c1a206744f7589bf0eed876cd9069cb1d913806';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.13_8.tar.gz';          ;;        armhf|armv7l)          ESUM='aee2f20d005b58e79c3c6c02271f797cb387d33a135b762886990b9bf7cb262e';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_arm_linux_hotspot_11.0.13_8.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='8f267876675dac3da3f4ceccd44d812b57098505eeec5fb1688d54bdeffcd1da';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.13_8.tar.gz';          ;;        s390x)          ESUM='b4a5af4ffcc98f6b7cdd2232f79aa12f20efa769b5255277fa4974e2e19d4409';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_s390x_linux_hotspot_11.0.13_8.tar.gz';          ;;        amd64|x86_64)          ESUM='fb0a27e6e1f26a1ee79daa92e4cfe3ec0d676acfe114d99dd84b3414f056e8a0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_x64_linux_hotspot_11.0.13_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     apk del --purge .fetch-deps;     rm -rf /var/cache/apk/*;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 19 Dec 2022 21:24:43 GMT
ARG SONARQUBE_VERSION=8.9.10.61524
# Mon, 19 Dec 2022 21:25:33 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-8.9.10.61524.zip
# Mon, 19 Dec 2022 21:25:33 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=8.9.10.61524 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=application SONAR_CLUSTER_ENABLED=true
# Mon, 19 Dec 2022 21:25:49 GMT
# ARGS: SONARQUBE_VERSION=8.9.10.61524 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-8.9.10.61524.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt ;    cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:25:50 GMT
COPY --chown=sonarqube:sonarqubemulti:51df763f101eec590ff619b8aadba3476acd9a155be2557d6807f6fb4f272767 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:25:50 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:25:51 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:25:51 GMT
ENTRYPOINT ["bin/run.sh"]
# Mon, 19 Dec 2022 21:25:51 GMT
CMD ["bin/sonar.sh"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801f2941a1dfad67df87edbeef8ab1792bbf69c5d10e461a1ac0454346116d9b`  
		Last Modified: Mon, 19 Dec 2022 21:30:05 GMT  
		Size: 7.5 MB (7492797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4412b9adb8889263429649c5aa909e26d4204c3fd41401ea912f78f2c04e6a`  
		Last Modified: Mon, 19 Dec 2022 21:30:10 GMT  
		Size: 43.3 MB (43343200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee5bbfc8513a6f387b781325d92834f0906e9959d20322452101f1d1cf138d6`  
		Last Modified: Mon, 19 Dec 2022 21:31:23 GMT  
		Size: 378.2 MB (378189686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c77acf9a9450afc8eb01e573df514c3803a467636afea69f2a10cd47d872745`  
		Last Modified: Mon, 19 Dec 2022 21:31:04 GMT  
		Size: 1.4 KB (1395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:8.9-datacenter-search`

```console
$ docker pull sonarqube@sha256:045f3ff36842cf2353cec758fefea417bb87665f36ccc7ea449c49ca9965fb3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:8.9-datacenter-search` - linux; amd64

```console
$ docker pull sonarqube@sha256:f631cfe46368435c68c5a6ec04cdf8878d1bef37206b0a5df8daa76d7db4a886
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **431.8 MB (431809569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:437a7a2a232a2b8a9bca172f1aa9cda376b70e67a31d3a354e185cc6f3db40b0`
-	Entrypoint: `["bin\/run.sh"]`
-	Default Command: `["bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 19 Dec 2022 21:24:24 GMT
ENV JAVA_VERSION=jdk-11.0.10+9 LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:24:37 GMT
RUN set -eux;     apk add --no-cache tzdata --virtual .build-deps curl binutils zstd;     GLIBC_VER="2.33-r0";     ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download";     GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-10.2.0-6-x86_64.pkg.tar.zst";     GCC_LIBS_SHA256="e33b45e4a10ef26259d6acf8e7b5dd6dc63800641e41eb67fa6588d061f79c1c";     ZLIB_URL="https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.12-1-x86_64.pkg.tar.zst";     ZLIB_SHA256=2b6d0f4ee6782993ef673aef2d71c3adbc6f7c31aad7b374a12fde43b8c333b0;     curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub;     SGERRAND_RSA_SHA256="823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2";     echo "${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub" | sha256sum -c - ;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-${GLIBC_VER}.apk;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-bin-${GLIBC_VER}.apk;     curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-i18n-${GLIBC_VER}.apk;     /usr/glibc-compat/bin/localedef --inputfile en_US --charmap UTF-8 "$LANG" || true ;    echo "export LANG=$LANG" > /etc/profile.d/locale.sh;     curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.zst;     echo "${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.zst" | sha256sum -c - ;     mkdir /tmp/gcc;     zstd -d /tmp/gcc-libs.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/gcc-libs.tar -C /tmp/gcc;     mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib;     strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*;     curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.zst;     echo "${ZLIB_SHA256} */tmp/libz.tar.zst" | sha256sum -c - ;    mkdir /tmp/libz;     zstd -d /tmp/libz.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/libz.tar -C /tmp/libz;     mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib;     apk del --purge .build-deps glibc-i18n;     rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar* /tmp/libz /tmp/libz.tar.zst /var/cache/apk/*;
# Mon, 19 Dec 2022 21:26:02 GMT
RUN set -eux;     apk add --no-cache --virtual .fetch-deps curl;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64|arm64)          ESUM='fde6b29df23b6e7ed6e16a237a0f44273fb9e267fdfbd0b3de5add98e55649f6';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.11_9.tar.gz';          ;;        armhf|armv7l)          ESUM='ad02656f800fd64c2b090b23ad24a099d9cd1054948ecb0e9851bc39c51c8be8';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.11_9.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='37c19c7c2d1cea627b854a475ef1a765d30357d765d20cf3f96590037e79d0f3';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.11_9.tar.gz';          ;;        s390x)          ESUM='f18101fc50aad795a41b4d3bbc591308c83664fd2390bf2bc007fd9b3d531e6c';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.11_9.tar.gz';          ;;        amd64|x86_64)          ESUM='144f2c6bcf64faa32016f2474b6c01031be75d25325e9c3097aed6589bc5d548';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.11_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     apk del --purge .fetch-deps;     rm -rf /var/cache/apk/*;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 19 Dec 2022 21:26:03 GMT
ARG SONARQUBE_VERSION=8.9.10.61524
# Mon, 19 Dec 2022 21:26:03 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-8.9.10.61524.zip
# Mon, 19 Dec 2022 21:26:03 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=8.9.10.61524 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=search SONAR_CLUSTER_ENABLED=true
# Mon, 19 Dec 2022 21:26:20 GMT
# ARGS: SONARQUBE_VERSION=8.9.10.61524 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-8.9.10.61524.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt ;    cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:26:21 GMT
COPY --chown=sonarqube:sonarqubemulti:270da8217279c47ae0242cde83fc983aadec2b66d86bcd0a13541b65a67704f9 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:26:21 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:26:21 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:26:21 GMT
ENTRYPOINT ["bin/run.sh"]
# Mon, 19 Dec 2022 21:26:21 GMT
CMD ["bin/sonar.sh"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801f2941a1dfad67df87edbeef8ab1792bbf69c5d10e461a1ac0454346116d9b`  
		Last Modified: Mon, 19 Dec 2022 21:30:05 GMT  
		Size: 7.5 MB (7492797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b25525918ecce74c4d6b65021b8fe7fd7a11dcafc0954421236b8b25b895137`  
		Last Modified: Mon, 19 Dec 2022 21:31:42 GMT  
		Size: 43.3 MB (43297675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e645db067f920985007507be33866ba2b95e10288f663eda56d7f904bf56754e`  
		Last Modified: Mon, 19 Dec 2022 21:31:54 GMT  
		Size: 378.2 MB (378190200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e3bcc80a055e1e984e528f683e4db029165f92d4395417513e960654d0a22d`  
		Last Modified: Mon, 19 Dec 2022 21:31:35 GMT  
		Size: 1.4 KB (1408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:8.9-developer`

```console
$ docker pull sonarqube@sha256:4bca63533a9e7428f19908cf49ac4e8ff79f8a010666e2a82fbab83f9235e1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:8.9-developer` - linux; amd64

```console
$ docker pull sonarqube@sha256:a1dfafdfa89a12a1870b917fc6def57b80d5feb5c5e8d1f120fcd48c5990a80a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.7 MB (388732175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59fce3983431db9fb3036dbe6af7a9c67238327ff238468c57776406895b642`
-	Entrypoint: `["bin\/run.sh"]`
-	Default Command: `["bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 19 Dec 2022 21:24:24 GMT
ENV JAVA_VERSION=jdk-11.0.10+9 LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:24:37 GMT
RUN set -eux;     apk add --no-cache tzdata --virtual .build-deps curl binutils zstd;     GLIBC_VER="2.33-r0";     ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download";     GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-10.2.0-6-x86_64.pkg.tar.zst";     GCC_LIBS_SHA256="e33b45e4a10ef26259d6acf8e7b5dd6dc63800641e41eb67fa6588d061f79c1c";     ZLIB_URL="https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.12-1-x86_64.pkg.tar.zst";     ZLIB_SHA256=2b6d0f4ee6782993ef673aef2d71c3adbc6f7c31aad7b374a12fde43b8c333b0;     curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub;     SGERRAND_RSA_SHA256="823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2";     echo "${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub" | sha256sum -c - ;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-${GLIBC_VER}.apk;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-bin-${GLIBC_VER}.apk;     curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-i18n-${GLIBC_VER}.apk;     /usr/glibc-compat/bin/localedef --inputfile en_US --charmap UTF-8 "$LANG" || true ;    echo "export LANG=$LANG" > /etc/profile.d/locale.sh;     curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.zst;     echo "${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.zst" | sha256sum -c - ;     mkdir /tmp/gcc;     zstd -d /tmp/gcc-libs.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/gcc-libs.tar -C /tmp/gcc;     mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib;     strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*;     curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.zst;     echo "${ZLIB_SHA256} */tmp/libz.tar.zst" | sha256sum -c - ;    mkdir /tmp/libz;     zstd -d /tmp/libz.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/libz.tar -C /tmp/libz;     mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib;     apk del --purge .build-deps glibc-i18n;     rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar* /tmp/libz /tmp/libz.tar.zst /var/cache/apk/*;
# Mon, 19 Dec 2022 21:24:42 GMT
RUN set -eux;     apk add --no-cache --virtual .fetch-deps curl;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64|arm64)          ESUM='76f7da05d905b5f9de8de1a34c1a206744f7589bf0eed876cd9069cb1d913806';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.13_8.tar.gz';          ;;        armhf|armv7l)          ESUM='aee2f20d005b58e79c3c6c02271f797cb387d33a135b762886990b9bf7cb262e';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_arm_linux_hotspot_11.0.13_8.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='8f267876675dac3da3f4ceccd44d812b57098505eeec5fb1688d54bdeffcd1da';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.13_8.tar.gz';          ;;        s390x)          ESUM='b4a5af4ffcc98f6b7cdd2232f79aa12f20efa769b5255277fa4974e2e19d4409';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_s390x_linux_hotspot_11.0.13_8.tar.gz';          ;;        amd64|x86_64)          ESUM='fb0a27e6e1f26a1ee79daa92e4cfe3ec0d676acfe114d99dd84b3414f056e8a0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_x64_linux_hotspot_11.0.13_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     apk del --purge .fetch-deps;     rm -rf /var/cache/apk/*;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 19 Dec 2022 21:24:43 GMT
ARG SONARQUBE_VERSION=8.9.10.61524
# Mon, 19 Dec 2022 21:24:43 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-8.9.10.61524.zip
# Mon, 19 Dec 2022 21:24:43 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=8.9.10.61524 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:24:58 GMT
# ARGS: SONARQUBE_VERSION=8.9.10.61524 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-8.9.10.61524.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:24:59 GMT
COPY --chown=sonarqube:sonarqubemulti:aed345498324cc768d63aba16bd3b3de027a0213cb3a62a9a3b27799dbf88552 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:24:59 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:24:59 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:24:59 GMT
ENTRYPOINT ["bin/run.sh"]
# Mon, 19 Dec 2022 21:25:00 GMT
CMD ["bin/sonar.sh"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801f2941a1dfad67df87edbeef8ab1792bbf69c5d10e461a1ac0454346116d9b`  
		Last Modified: Mon, 19 Dec 2022 21:30:05 GMT  
		Size: 7.5 MB (7492797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4412b9adb8889263429649c5aa909e26d4204c3fd41401ea912f78f2c04e6a`  
		Last Modified: Mon, 19 Dec 2022 21:30:10 GMT  
		Size: 43.3 MB (43343200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4edec7e59f84f86bb19e6abc36bc617e91a0786de12be91893fbe24643001b`  
		Last Modified: Mon, 19 Dec 2022 21:30:21 GMT  
		Size: 335.1 MB (335067592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee210cb6c28dede06c62c5743cbed4722b197cc82912e3acef796bef252df077`  
		Last Modified: Mon, 19 Dec 2022 21:30:04 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:8.9-enterprise`

```console
$ docker pull sonarqube@sha256:6a0625fa9df64fa48bc00f7191b91212a35d0c83fa9c218b268df7a91b1c26b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:8.9-enterprise` - linux; amd64

```console
$ docker pull sonarqube@sha256:e205831f60391aae2f10ec095658e477cb9f497d017f926896f46028eb962ac3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.4 MB (409404070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c044eca90e8720bf88431a32eab379ba1d47c3ee0986a797bced5fb30048800`
-	Entrypoint: `["bin\/run.sh"]`
-	Default Command: `["bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 19 Dec 2022 21:24:24 GMT
ENV JAVA_VERSION=jdk-11.0.10+9 LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:24:37 GMT
RUN set -eux;     apk add --no-cache tzdata --virtual .build-deps curl binutils zstd;     GLIBC_VER="2.33-r0";     ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download";     GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-10.2.0-6-x86_64.pkg.tar.zst";     GCC_LIBS_SHA256="e33b45e4a10ef26259d6acf8e7b5dd6dc63800641e41eb67fa6588d061f79c1c";     ZLIB_URL="https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.12-1-x86_64.pkg.tar.zst";     ZLIB_SHA256=2b6d0f4ee6782993ef673aef2d71c3adbc6f7c31aad7b374a12fde43b8c333b0;     curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub;     SGERRAND_RSA_SHA256="823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2";     echo "${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub" | sha256sum -c - ;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-${GLIBC_VER}.apk;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-bin-${GLIBC_VER}.apk;     curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-i18n-${GLIBC_VER}.apk;     /usr/glibc-compat/bin/localedef --inputfile en_US --charmap UTF-8 "$LANG" || true ;    echo "export LANG=$LANG" > /etc/profile.d/locale.sh;     curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.zst;     echo "${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.zst" | sha256sum -c - ;     mkdir /tmp/gcc;     zstd -d /tmp/gcc-libs.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/gcc-libs.tar -C /tmp/gcc;     mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib;     strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*;     curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.zst;     echo "${ZLIB_SHA256} */tmp/libz.tar.zst" | sha256sum -c - ;    mkdir /tmp/libz;     zstd -d /tmp/libz.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/libz.tar -C /tmp/libz;     mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib;     apk del --purge .build-deps glibc-i18n;     rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar* /tmp/libz /tmp/libz.tar.zst /var/cache/apk/*;
# Mon, 19 Dec 2022 21:25:08 GMT
RUN set -eux;     apk add --no-cache --virtual .fetch-deps curl;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64|arm64)          ESUM='76f7da05d905b5f9de8de1a34c1a206744f7589bf0eed876cd9069cb1d913806';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.13_8.tar.gz';          ;;        armhf|armv7l)          ESUM='aee2f20d005b58e79c3c6c02271f797cb387d33a135b762886990b9bf7cb262e';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_arm_linux_hotspot_11.0.13_8.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='8f267876675dac3da3f4ceccd44d812b57098505eeec5fb1688d54bdeffcd1da';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.13_8.tar.gz';          ;;        s390x)          ESUM='b4a5af4ffcc98f6b7cdd2232f79aa12f20efa769b5255277fa4974e2e19d4409';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_s390x_linux_hotspot_11.0.13_8.tar.gz';          ;;        amd64|x86_64)          ESUM='fb0a27e6e1f26a1ee79daa92e4cfe3ec0d676acfe114d99dd84b3414f056e8a0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_x64_linux_hotspot_11.0.13_8.tar.gz';          ;;        *)           echo "Unsupported arch: ${ARCH}";           exit 1;           ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     apk del --purge .fetch-deps;     rm -rf /var/cache/apk/*;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 19 Dec 2022 21:25:09 GMT
ARG SONARQUBE_VERSION=8.9.10.61524
# Mon, 19 Dec 2022 21:25:09 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-enterprise/sonarqube-enterprise-8.9.10.61524.zip
# Mon, 19 Dec 2022 21:25:09 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=8.9.10.61524 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:25:25 GMT
# ARGS: SONARQUBE_VERSION=8.9.10.61524 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-enterprise/sonarqube-enterprise-8.9.10.61524.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME};     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:25:27 GMT
COPY --chown=sonarqube:sonarqubemulti:aed345498324cc768d63aba16bd3b3de027a0213cb3a62a9a3b27799dbf88552 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:25:27 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:25:27 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:25:27 GMT
ENTRYPOINT ["bin/run.sh"]
# Mon, 19 Dec 2022 21:25:27 GMT
CMD ["bin/sonar.sh"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801f2941a1dfad67df87edbeef8ab1792bbf69c5d10e461a1ac0454346116d9b`  
		Last Modified: Mon, 19 Dec 2022 21:30:05 GMT  
		Size: 7.5 MB (7492797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16d8e8238b878485bf358ae377f4a2537d1665aee4be22e9d217cfd509dd429`  
		Last Modified: Mon, 19 Dec 2022 21:30:40 GMT  
		Size: 43.3 MB (43343227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec1faa3f908a7d6154b16ccd21d4e3e7a511372cdf22fa533476d0621c369f4`  
		Last Modified: Mon, 19 Dec 2022 21:30:52 GMT  
		Size: 355.7 MB (355739459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7665da00e2e72c3cb0fad36da1742b94d14d6bda2d9af32f3b78efe1147e90`  
		Last Modified: Mon, 19 Dec 2022 21:30:34 GMT  
		Size: 1.1 KB (1098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:8.9.10-community`

```console
$ docker pull sonarqube@sha256:eb2f0be32efdf08bef8d7370d09a0b123bc2430ae80e29a07720c9aa68233c00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:8.9.10-community` - linux; amd64

```console
$ docker pull sonarqube@sha256:150f959098fe7a1c16c9a9dcb7fa8465f6d29c2d4c777ad8ade6c33d4f014f82
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.8 MB (327809765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4009139ebd1985ba735e70d240fcc40681829273c7759fb3ae52e2ff51fb6a13`
-	Entrypoint: `["bin\/run.sh"]`
-	Default Command: `["bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 19 Dec 2022 21:23:44 GMT
ENV JAVA_VERSION=jdk-11.0.11+9 LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:23:58 GMT
RUN set -eux;     apk add --no-cache tzdata --virtual .build-deps curl binutils zstd;     GLIBC_VER="2.33-r0";     ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download";     GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-10.2.0-6-x86_64.pkg.tar.zst";     GCC_LIBS_SHA256="e33b45e4a10ef26259d6acf8e7b5dd6dc63800641e41eb67fa6588d061f79c1c";     ZLIB_URL="https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.12-1-x86_64.pkg.tar.zst";     ZLIB_SHA256=2b6d0f4ee6782993ef673aef2d71c3adbc6f7c31aad7b374a12fde43b8c333b0;     curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub;     SGERRAND_RSA_SHA256="823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2";     echo "${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub" | sha256sum -c - ;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-${GLIBC_VER}.apk;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-bin-${GLIBC_VER}.apk;     curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-i18n-${GLIBC_VER}.apk;     /usr/glibc-compat/bin/localedef --inputfile en_US --charmap UTF-8 "$LANG" || true ;    echo "export LANG=$LANG" > /etc/profile.d/locale.sh;     curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.zst;     echo "${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.zst" | sha256sum -c - ;     mkdir /tmp/gcc;     zstd -d /tmp/gcc-libs.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/gcc-libs.tar -C /tmp/gcc;     mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib;     strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*;     curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.zst;     echo "${ZLIB_SHA256} */tmp/libz.tar.zst" | sha256sum -c - ;    mkdir /tmp/libz;     zstd -d /tmp/libz.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/libz.tar -C /tmp/libz;     mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib;     apk del --purge .build-deps glibc-i18n;     rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar* /tmp/libz /tmp/libz.tar.zst /var/cache/apk/*;
# Mon, 19 Dec 2022 21:24:03 GMT
RUN set -eux;     apk add --no-cache --virtual .fetch-deps curl;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64|arm64)          ESUM='76f7da05d905b5f9de8de1a34c1a206744f7589bf0eed876cd9069cb1d913806';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.13_8.tar.gz';          ;;        armhf|armv7l)          ESUM='aee2f20d005b58e79c3c6c02271f797cb387d33a135b762886990b9bf7cb262e';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_arm_linux_hotspot_11.0.13_8.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='8f267876675dac3da3f4ceccd44d812b57098505eeec5fb1688d54bdeffcd1da';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.13_8.tar.gz';          ;;        s390x)          ESUM='b4a5af4ffcc98f6b7cdd2232f79aa12f20efa769b5255277fa4974e2e19d4409';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_s390x_linux_hotspot_11.0.13_8.tar.gz';          ;;        amd64|x86_64)          ESUM='fb0a27e6e1f26a1ee79daa92e4cfe3ec0d676acfe114d99dd84b3414f056e8a0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_x64_linux_hotspot_11.0.13_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     apk del --purge .fetch-deps;     rm -rf /var/cache/apk/*;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 19 Dec 2022 21:24:04 GMT
ARG SONARQUBE_VERSION=8.9.10.61524
# Mon, 19 Dec 2022 21:24:04 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.10.61524.zip
# Mon, 19 Dec 2022 21:24:04 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=8.9.10.61524 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:24:18 GMT
# ARGS: SONARQUBE_VERSION=8.9.10.61524 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.10.61524.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME};     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:24:18 GMT
COPY --chown=sonarqube:sonarqubemulti:aed345498324cc768d63aba16bd3b3de027a0213cb3a62a9a3b27799dbf88552 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:24:19 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:24:19 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:24:19 GMT
ENTRYPOINT ["bin/run.sh"]
# Mon, 19 Dec 2022 21:24:19 GMT
CMD ["bin/sonar.sh"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a155b04154c01862d7fd054da999b577fe5ec09c74b84d64ae8ce31815da793e`  
		Last Modified: Mon, 19 Dec 2022 21:29:35 GMT  
		Size: 7.5 MB (7492787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4934f5353f9b5bf594c3be7825575cbd8816b6facff9fb0b7a88d6a6f7b98db9`  
		Last Modified: Mon, 19 Dec 2022 21:29:41 GMT  
		Size: 43.3 MB (43343246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370b716987f3969299644a449ff7508a2965eede0a2057babe59094dd1dc3b91`  
		Last Modified: Mon, 19 Dec 2022 21:29:49 GMT  
		Size: 274.1 MB (274145144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e1eb66a3a748b3f954bead92ffb66dbdeea89c6c071df90711fdafcf5022f6`  
		Last Modified: Mon, 19 Dec 2022 21:29:34 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:8.9.10-datacenter-app`

```console
$ docker pull sonarqube@sha256:bb91d972417473670c6616321210a70f055d099769765563fec737177418f155
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:8.9.10-datacenter-app` - linux; amd64

```console
$ docker pull sonarqube@sha256:e4255e77dd90a1edf8aa34ef5e51e13c008513305ca156f2713e365e2b38aedc
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **431.9 MB (431854567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f86af1fd9e0256edf670621c66d8d78df60fe50b91ec5a830d57de6e19de784`
-	Entrypoint: `["bin\/run.sh"]`
-	Default Command: `["bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 19 Dec 2022 21:24:24 GMT
ENV JAVA_VERSION=jdk-11.0.10+9 LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:24:37 GMT
RUN set -eux;     apk add --no-cache tzdata --virtual .build-deps curl binutils zstd;     GLIBC_VER="2.33-r0";     ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download";     GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-10.2.0-6-x86_64.pkg.tar.zst";     GCC_LIBS_SHA256="e33b45e4a10ef26259d6acf8e7b5dd6dc63800641e41eb67fa6588d061f79c1c";     ZLIB_URL="https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.12-1-x86_64.pkg.tar.zst";     ZLIB_SHA256=2b6d0f4ee6782993ef673aef2d71c3adbc6f7c31aad7b374a12fde43b8c333b0;     curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub;     SGERRAND_RSA_SHA256="823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2";     echo "${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub" | sha256sum -c - ;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-${GLIBC_VER}.apk;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-bin-${GLIBC_VER}.apk;     curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-i18n-${GLIBC_VER}.apk;     /usr/glibc-compat/bin/localedef --inputfile en_US --charmap UTF-8 "$LANG" || true ;    echo "export LANG=$LANG" > /etc/profile.d/locale.sh;     curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.zst;     echo "${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.zst" | sha256sum -c - ;     mkdir /tmp/gcc;     zstd -d /tmp/gcc-libs.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/gcc-libs.tar -C /tmp/gcc;     mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib;     strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*;     curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.zst;     echo "${ZLIB_SHA256} */tmp/libz.tar.zst" | sha256sum -c - ;    mkdir /tmp/libz;     zstd -d /tmp/libz.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/libz.tar -C /tmp/libz;     mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib;     apk del --purge .build-deps glibc-i18n;     rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar* /tmp/libz /tmp/libz.tar.zst /var/cache/apk/*;
# Mon, 19 Dec 2022 21:24:42 GMT
RUN set -eux;     apk add --no-cache --virtual .fetch-deps curl;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64|arm64)          ESUM='76f7da05d905b5f9de8de1a34c1a206744f7589bf0eed876cd9069cb1d913806';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.13_8.tar.gz';          ;;        armhf|armv7l)          ESUM='aee2f20d005b58e79c3c6c02271f797cb387d33a135b762886990b9bf7cb262e';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_arm_linux_hotspot_11.0.13_8.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='8f267876675dac3da3f4ceccd44d812b57098505eeec5fb1688d54bdeffcd1da';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.13_8.tar.gz';          ;;        s390x)          ESUM='b4a5af4ffcc98f6b7cdd2232f79aa12f20efa769b5255277fa4974e2e19d4409';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_s390x_linux_hotspot_11.0.13_8.tar.gz';          ;;        amd64|x86_64)          ESUM='fb0a27e6e1f26a1ee79daa92e4cfe3ec0d676acfe114d99dd84b3414f056e8a0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_x64_linux_hotspot_11.0.13_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     apk del --purge .fetch-deps;     rm -rf /var/cache/apk/*;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 19 Dec 2022 21:24:43 GMT
ARG SONARQUBE_VERSION=8.9.10.61524
# Mon, 19 Dec 2022 21:25:33 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-8.9.10.61524.zip
# Mon, 19 Dec 2022 21:25:33 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=8.9.10.61524 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=application SONAR_CLUSTER_ENABLED=true
# Mon, 19 Dec 2022 21:25:49 GMT
# ARGS: SONARQUBE_VERSION=8.9.10.61524 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-8.9.10.61524.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt ;    cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:25:50 GMT
COPY --chown=sonarqube:sonarqubemulti:51df763f101eec590ff619b8aadba3476acd9a155be2557d6807f6fb4f272767 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:25:50 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:25:51 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:25:51 GMT
ENTRYPOINT ["bin/run.sh"]
# Mon, 19 Dec 2022 21:25:51 GMT
CMD ["bin/sonar.sh"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801f2941a1dfad67df87edbeef8ab1792bbf69c5d10e461a1ac0454346116d9b`  
		Last Modified: Mon, 19 Dec 2022 21:30:05 GMT  
		Size: 7.5 MB (7492797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4412b9adb8889263429649c5aa909e26d4204c3fd41401ea912f78f2c04e6a`  
		Last Modified: Mon, 19 Dec 2022 21:30:10 GMT  
		Size: 43.3 MB (43343200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee5bbfc8513a6f387b781325d92834f0906e9959d20322452101f1d1cf138d6`  
		Last Modified: Mon, 19 Dec 2022 21:31:23 GMT  
		Size: 378.2 MB (378189686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c77acf9a9450afc8eb01e573df514c3803a467636afea69f2a10cd47d872745`  
		Last Modified: Mon, 19 Dec 2022 21:31:04 GMT  
		Size: 1.4 KB (1395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:8.9.10-datacenter-search`

```console
$ docker pull sonarqube@sha256:045f3ff36842cf2353cec758fefea417bb87665f36ccc7ea449c49ca9965fb3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:8.9.10-datacenter-search` - linux; amd64

```console
$ docker pull sonarqube@sha256:f631cfe46368435c68c5a6ec04cdf8878d1bef37206b0a5df8daa76d7db4a886
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **431.8 MB (431809569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:437a7a2a232a2b8a9bca172f1aa9cda376b70e67a31d3a354e185cc6f3db40b0`
-	Entrypoint: `["bin\/run.sh"]`
-	Default Command: `["bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 19 Dec 2022 21:24:24 GMT
ENV JAVA_VERSION=jdk-11.0.10+9 LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:24:37 GMT
RUN set -eux;     apk add --no-cache tzdata --virtual .build-deps curl binutils zstd;     GLIBC_VER="2.33-r0";     ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download";     GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-10.2.0-6-x86_64.pkg.tar.zst";     GCC_LIBS_SHA256="e33b45e4a10ef26259d6acf8e7b5dd6dc63800641e41eb67fa6588d061f79c1c";     ZLIB_URL="https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.12-1-x86_64.pkg.tar.zst";     ZLIB_SHA256=2b6d0f4ee6782993ef673aef2d71c3adbc6f7c31aad7b374a12fde43b8c333b0;     curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub;     SGERRAND_RSA_SHA256="823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2";     echo "${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub" | sha256sum -c - ;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-${GLIBC_VER}.apk;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-bin-${GLIBC_VER}.apk;     curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-i18n-${GLIBC_VER}.apk;     /usr/glibc-compat/bin/localedef --inputfile en_US --charmap UTF-8 "$LANG" || true ;    echo "export LANG=$LANG" > /etc/profile.d/locale.sh;     curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.zst;     echo "${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.zst" | sha256sum -c - ;     mkdir /tmp/gcc;     zstd -d /tmp/gcc-libs.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/gcc-libs.tar -C /tmp/gcc;     mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib;     strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*;     curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.zst;     echo "${ZLIB_SHA256} */tmp/libz.tar.zst" | sha256sum -c - ;    mkdir /tmp/libz;     zstd -d /tmp/libz.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/libz.tar -C /tmp/libz;     mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib;     apk del --purge .build-deps glibc-i18n;     rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar* /tmp/libz /tmp/libz.tar.zst /var/cache/apk/*;
# Mon, 19 Dec 2022 21:26:02 GMT
RUN set -eux;     apk add --no-cache --virtual .fetch-deps curl;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64|arm64)          ESUM='fde6b29df23b6e7ed6e16a237a0f44273fb9e267fdfbd0b3de5add98e55649f6';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.11_9.tar.gz';          ;;        armhf|armv7l)          ESUM='ad02656f800fd64c2b090b23ad24a099d9cd1054948ecb0e9851bc39c51c8be8';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.11_9.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='37c19c7c2d1cea627b854a475ef1a765d30357d765d20cf3f96590037e79d0f3';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.11_9.tar.gz';          ;;        s390x)          ESUM='f18101fc50aad795a41b4d3bbc591308c83664fd2390bf2bc007fd9b3d531e6c';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.11_9.tar.gz';          ;;        amd64|x86_64)          ESUM='144f2c6bcf64faa32016f2474b6c01031be75d25325e9c3097aed6589bc5d548';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.11_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     apk del --purge .fetch-deps;     rm -rf /var/cache/apk/*;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 19 Dec 2022 21:26:03 GMT
ARG SONARQUBE_VERSION=8.9.10.61524
# Mon, 19 Dec 2022 21:26:03 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-8.9.10.61524.zip
# Mon, 19 Dec 2022 21:26:03 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=8.9.10.61524 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=search SONAR_CLUSTER_ENABLED=true
# Mon, 19 Dec 2022 21:26:20 GMT
# ARGS: SONARQUBE_VERSION=8.9.10.61524 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-8.9.10.61524.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt ;    cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:26:21 GMT
COPY --chown=sonarqube:sonarqubemulti:270da8217279c47ae0242cde83fc983aadec2b66d86bcd0a13541b65a67704f9 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:26:21 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:26:21 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:26:21 GMT
ENTRYPOINT ["bin/run.sh"]
# Mon, 19 Dec 2022 21:26:21 GMT
CMD ["bin/sonar.sh"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801f2941a1dfad67df87edbeef8ab1792bbf69c5d10e461a1ac0454346116d9b`  
		Last Modified: Mon, 19 Dec 2022 21:30:05 GMT  
		Size: 7.5 MB (7492797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b25525918ecce74c4d6b65021b8fe7fd7a11dcafc0954421236b8b25b895137`  
		Last Modified: Mon, 19 Dec 2022 21:31:42 GMT  
		Size: 43.3 MB (43297675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e645db067f920985007507be33866ba2b95e10288f663eda56d7f904bf56754e`  
		Last Modified: Mon, 19 Dec 2022 21:31:54 GMT  
		Size: 378.2 MB (378190200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e3bcc80a055e1e984e528f683e4db029165f92d4395417513e960654d0a22d`  
		Last Modified: Mon, 19 Dec 2022 21:31:35 GMT  
		Size: 1.4 KB (1408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:8.9.10-developer`

```console
$ docker pull sonarqube@sha256:4bca63533a9e7428f19908cf49ac4e8ff79f8a010666e2a82fbab83f9235e1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:8.9.10-developer` - linux; amd64

```console
$ docker pull sonarqube@sha256:a1dfafdfa89a12a1870b917fc6def57b80d5feb5c5e8d1f120fcd48c5990a80a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.7 MB (388732175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59fce3983431db9fb3036dbe6af7a9c67238327ff238468c57776406895b642`
-	Entrypoint: `["bin\/run.sh"]`
-	Default Command: `["bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 19 Dec 2022 21:24:24 GMT
ENV JAVA_VERSION=jdk-11.0.10+9 LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:24:37 GMT
RUN set -eux;     apk add --no-cache tzdata --virtual .build-deps curl binutils zstd;     GLIBC_VER="2.33-r0";     ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download";     GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-10.2.0-6-x86_64.pkg.tar.zst";     GCC_LIBS_SHA256="e33b45e4a10ef26259d6acf8e7b5dd6dc63800641e41eb67fa6588d061f79c1c";     ZLIB_URL="https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.12-1-x86_64.pkg.tar.zst";     ZLIB_SHA256=2b6d0f4ee6782993ef673aef2d71c3adbc6f7c31aad7b374a12fde43b8c333b0;     curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub;     SGERRAND_RSA_SHA256="823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2";     echo "${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub" | sha256sum -c - ;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-${GLIBC_VER}.apk;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-bin-${GLIBC_VER}.apk;     curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-i18n-${GLIBC_VER}.apk;     /usr/glibc-compat/bin/localedef --inputfile en_US --charmap UTF-8 "$LANG" || true ;    echo "export LANG=$LANG" > /etc/profile.d/locale.sh;     curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.zst;     echo "${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.zst" | sha256sum -c - ;     mkdir /tmp/gcc;     zstd -d /tmp/gcc-libs.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/gcc-libs.tar -C /tmp/gcc;     mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib;     strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*;     curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.zst;     echo "${ZLIB_SHA256} */tmp/libz.tar.zst" | sha256sum -c - ;    mkdir /tmp/libz;     zstd -d /tmp/libz.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/libz.tar -C /tmp/libz;     mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib;     apk del --purge .build-deps glibc-i18n;     rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar* /tmp/libz /tmp/libz.tar.zst /var/cache/apk/*;
# Mon, 19 Dec 2022 21:24:42 GMT
RUN set -eux;     apk add --no-cache --virtual .fetch-deps curl;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64|arm64)          ESUM='76f7da05d905b5f9de8de1a34c1a206744f7589bf0eed876cd9069cb1d913806';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.13_8.tar.gz';          ;;        armhf|armv7l)          ESUM='aee2f20d005b58e79c3c6c02271f797cb387d33a135b762886990b9bf7cb262e';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_arm_linux_hotspot_11.0.13_8.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='8f267876675dac3da3f4ceccd44d812b57098505eeec5fb1688d54bdeffcd1da';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.13_8.tar.gz';          ;;        s390x)          ESUM='b4a5af4ffcc98f6b7cdd2232f79aa12f20efa769b5255277fa4974e2e19d4409';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_s390x_linux_hotspot_11.0.13_8.tar.gz';          ;;        amd64|x86_64)          ESUM='fb0a27e6e1f26a1ee79daa92e4cfe3ec0d676acfe114d99dd84b3414f056e8a0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_x64_linux_hotspot_11.0.13_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     apk del --purge .fetch-deps;     rm -rf /var/cache/apk/*;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 19 Dec 2022 21:24:43 GMT
ARG SONARQUBE_VERSION=8.9.10.61524
# Mon, 19 Dec 2022 21:24:43 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-8.9.10.61524.zip
# Mon, 19 Dec 2022 21:24:43 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=8.9.10.61524 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:24:58 GMT
# ARGS: SONARQUBE_VERSION=8.9.10.61524 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-8.9.10.61524.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:24:59 GMT
COPY --chown=sonarqube:sonarqubemulti:aed345498324cc768d63aba16bd3b3de027a0213cb3a62a9a3b27799dbf88552 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:24:59 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:24:59 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:24:59 GMT
ENTRYPOINT ["bin/run.sh"]
# Mon, 19 Dec 2022 21:25:00 GMT
CMD ["bin/sonar.sh"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801f2941a1dfad67df87edbeef8ab1792bbf69c5d10e461a1ac0454346116d9b`  
		Last Modified: Mon, 19 Dec 2022 21:30:05 GMT  
		Size: 7.5 MB (7492797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4412b9adb8889263429649c5aa909e26d4204c3fd41401ea912f78f2c04e6a`  
		Last Modified: Mon, 19 Dec 2022 21:30:10 GMT  
		Size: 43.3 MB (43343200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4edec7e59f84f86bb19e6abc36bc617e91a0786de12be91893fbe24643001b`  
		Last Modified: Mon, 19 Dec 2022 21:30:21 GMT  
		Size: 335.1 MB (335067592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee210cb6c28dede06c62c5743cbed4722b197cc82912e3acef796bef252df077`  
		Last Modified: Mon, 19 Dec 2022 21:30:04 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:8.9.10-enterprise`

```console
$ docker pull sonarqube@sha256:6a0625fa9df64fa48bc00f7191b91212a35d0c83fa9c218b268df7a91b1c26b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:8.9.10-enterprise` - linux; amd64

```console
$ docker pull sonarqube@sha256:e205831f60391aae2f10ec095658e477cb9f497d017f926896f46028eb962ac3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.4 MB (409404070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c044eca90e8720bf88431a32eab379ba1d47c3ee0986a797bced5fb30048800`
-	Entrypoint: `["bin\/run.sh"]`
-	Default Command: `["bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 19 Dec 2022 21:24:24 GMT
ENV JAVA_VERSION=jdk-11.0.10+9 LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:24:37 GMT
RUN set -eux;     apk add --no-cache tzdata --virtual .build-deps curl binutils zstd;     GLIBC_VER="2.33-r0";     ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download";     GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-10.2.0-6-x86_64.pkg.tar.zst";     GCC_LIBS_SHA256="e33b45e4a10ef26259d6acf8e7b5dd6dc63800641e41eb67fa6588d061f79c1c";     ZLIB_URL="https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.12-1-x86_64.pkg.tar.zst";     ZLIB_SHA256=2b6d0f4ee6782993ef673aef2d71c3adbc6f7c31aad7b374a12fde43b8c333b0;     curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub;     SGERRAND_RSA_SHA256="823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2";     echo "${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub" | sha256sum -c - ;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-${GLIBC_VER}.apk;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-bin-${GLIBC_VER}.apk;     curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-i18n-${GLIBC_VER}.apk;     /usr/glibc-compat/bin/localedef --inputfile en_US --charmap UTF-8 "$LANG" || true ;    echo "export LANG=$LANG" > /etc/profile.d/locale.sh;     curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.zst;     echo "${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.zst" | sha256sum -c - ;     mkdir /tmp/gcc;     zstd -d /tmp/gcc-libs.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/gcc-libs.tar -C /tmp/gcc;     mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib;     strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*;     curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.zst;     echo "${ZLIB_SHA256} */tmp/libz.tar.zst" | sha256sum -c - ;    mkdir /tmp/libz;     zstd -d /tmp/libz.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/libz.tar -C /tmp/libz;     mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib;     apk del --purge .build-deps glibc-i18n;     rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar* /tmp/libz /tmp/libz.tar.zst /var/cache/apk/*;
# Mon, 19 Dec 2022 21:25:08 GMT
RUN set -eux;     apk add --no-cache --virtual .fetch-deps curl;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64|arm64)          ESUM='76f7da05d905b5f9de8de1a34c1a206744f7589bf0eed876cd9069cb1d913806';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.13_8.tar.gz';          ;;        armhf|armv7l)          ESUM='aee2f20d005b58e79c3c6c02271f797cb387d33a135b762886990b9bf7cb262e';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_arm_linux_hotspot_11.0.13_8.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='8f267876675dac3da3f4ceccd44d812b57098505eeec5fb1688d54bdeffcd1da';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.13_8.tar.gz';          ;;        s390x)          ESUM='b4a5af4ffcc98f6b7cdd2232f79aa12f20efa769b5255277fa4974e2e19d4409';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_s390x_linux_hotspot_11.0.13_8.tar.gz';          ;;        amd64|x86_64)          ESUM='fb0a27e6e1f26a1ee79daa92e4cfe3ec0d676acfe114d99dd84b3414f056e8a0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_x64_linux_hotspot_11.0.13_8.tar.gz';          ;;        *)           echo "Unsupported arch: ${ARCH}";           exit 1;           ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     apk del --purge .fetch-deps;     rm -rf /var/cache/apk/*;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 19 Dec 2022 21:25:09 GMT
ARG SONARQUBE_VERSION=8.9.10.61524
# Mon, 19 Dec 2022 21:25:09 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-enterprise/sonarqube-enterprise-8.9.10.61524.zip
# Mon, 19 Dec 2022 21:25:09 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=8.9.10.61524 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:25:25 GMT
# ARGS: SONARQUBE_VERSION=8.9.10.61524 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-enterprise/sonarqube-enterprise-8.9.10.61524.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME};     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:25:27 GMT
COPY --chown=sonarqube:sonarqubemulti:aed345498324cc768d63aba16bd3b3de027a0213cb3a62a9a3b27799dbf88552 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:25:27 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:25:27 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:25:27 GMT
ENTRYPOINT ["bin/run.sh"]
# Mon, 19 Dec 2022 21:25:27 GMT
CMD ["bin/sonar.sh"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801f2941a1dfad67df87edbeef8ab1792bbf69c5d10e461a1ac0454346116d9b`  
		Last Modified: Mon, 19 Dec 2022 21:30:05 GMT  
		Size: 7.5 MB (7492797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16d8e8238b878485bf358ae377f4a2537d1665aee4be22e9d217cfd509dd429`  
		Last Modified: Mon, 19 Dec 2022 21:30:40 GMT  
		Size: 43.3 MB (43343227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec1faa3f908a7d6154b16ccd21d4e3e7a511372cdf22fa533476d0621c369f4`  
		Last Modified: Mon, 19 Dec 2022 21:30:52 GMT  
		Size: 355.7 MB (355739459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7665da00e2e72c3cb0fad36da1742b94d14d6bda2d9af32f3b78efe1147e90`  
		Last Modified: Mon, 19 Dec 2022 21:30:34 GMT  
		Size: 1.1 KB (1098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:9-community`

```console
$ docker pull sonarqube@sha256:d01fc01edd48c0fcdd8841255cfc30eb05b43e160b4c1b9056ca0c75d32ac285
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:9-community` - linux; amd64

```console
$ docker pull sonarqube@sha256:709288e86514674efc6d7f1d821d194a53f73733ae9fae31c634821922f6c4fa
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.1 MB (377084908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db451e99d1334ef25e4e766bf7daed8d75ad896d265c337f371933f7d36f47f8`
-	Entrypoint: `["\/opt\/sonarqube\/bin\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:08:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:26:24 GMT
ARG JAVA_VERSION=17
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_VERSION=9.8.0.63668
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:26:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:26:42 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME};     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:26:43 GMT
COPY --chown=sonarqube:sonarqubemulti:66701f646ad2f21287c063721ad66eabe0c3f39a3371b70504abf154fe36a694 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:26:43 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:26:43 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:26:43 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:26:44 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:26:44 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c884cb0d3d1d23ced4fd5fdad79c7bfd3d1d1463d1ec66db1661140ccbbf934`  
		Last Modified: Mon, 19 Dec 2022 21:32:30 GMT  
		Size: 374.3 MB (374260281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4d01bc5fb2325878a6eecadd93afaeed88243d1bbb531cbd3ec6b2843dcce8`  
		Last Modified: Mon, 19 Dec 2022 21:32:06 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:9-datacenter-app`

```console
$ docker pull sonarqube@sha256:0286235a959203db35298bc52263af4ea86626aae21f4f5860a3ee80e7e0721b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:9-datacenter-app` - linux; amd64

```console
$ docker pull sonarqube@sha256:89ab281af2e3890496c3caf7379f5920ad0d95e305ade20a81bdb1d8be620102
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **512.2 MB (512201950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15aeaee88ab27bc342c859834e6688e6a5a82726f2b14f9bcf26824893f50018`
-	Entrypoint: `["\/opt\/sonarqube\/bin\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:08:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:26:24 GMT
ARG JAVA_VERSION=17
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_VERSION=9.8.0.63668
# Mon, 19 Dec 2022 21:27:56 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:27:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=application SONAR_CLUSTER_ENABLED=true
# Mon, 19 Dec 2022 21:28:17 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt ;    cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:28:19 GMT
COPY --chown=sonarqube:sonarqubemulti:b3583528dc7e1c8c3d5b50dfbb55820aeec61ed9bbc812d0d58f5c5875189ea8 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:28:19 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:28:19 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:28:20 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:28:20 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:28:20 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782855121ed446725fc66028c41268e133e5f19f78de505fa93cae76004b7254`  
		Last Modified: Mon, 19 Dec 2022 21:34:33 GMT  
		Size: 509.4 MB (509376915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f730c985f4097ad6293c1d3ca485acc0ccadb2159527ba1b5802ce253674f1`  
		Last Modified: Mon, 19 Dec 2022 21:34:04 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:9-datacenter-search`

```console
$ docker pull sonarqube@sha256:2180c089dde914b3431be1e47c6c25e9b6ba442fb44d5461521a0a70cff9c2bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:9-datacenter-search` - linux; amd64

```console
$ docker pull sonarqube@sha256:3970f912e3c3879325a2eb0bd8641a1958edf0c9a0b6e707783f5faf0216138c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **512.2 MB (512201955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bfef7acc178acd2158e3b46c0a51dd5a15579c9dde2d99b6dfc3f3f3d0fa637`
-	Entrypoint: `["\/opt\/sonarqube\/bin\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:08:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:26:24 GMT
ARG JAVA_VERSION=17
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_VERSION=9.8.0.63668
# Mon, 19 Dec 2022 21:27:56 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:28:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=search SONAR_CLUSTER_ENABLED=true
# Mon, 19 Dec 2022 21:28:46 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt ;    cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:28:47 GMT
COPY --chown=sonarqube:sonarqubemulti:8997cda09b77db3cd2004e36d485c5b54ddd96e9993642921bc6be78ee8af554 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:28:48 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:28:48 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:28:48 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:28:48 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:28:48 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf04d055b391ae32b4396f63626539bede23251eb8852519dde42fdf425afcd`  
		Last Modified: Mon, 19 Dec 2022 21:35:14 GMT  
		Size: 509.4 MB (509376934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d475376965e2e8e2635e0aee283ac099f042e12d4f5b705933aa340fae0d9c97`  
		Last Modified: Mon, 19 Dec 2022 21:34:45 GMT  
		Size: 1.5 KB (1509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:9-developer`

```console
$ docker pull sonarqube@sha256:a73ecba149df1ebb84f0dc483657ab6cdcf8ed5c6cb72964630fb12b043ccc9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:9-developer` - linux; amd64

```console
$ docker pull sonarqube@sha256:377991e4e7d1138b83449056d3b7710d19414904a4074ab6e810341ad8b3bb05
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **471.4 MB (471387807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d78f3c8bfbb797f14c3841d6903b4597c3b2411ece4fed72f709fd093c5688d`
-	Entrypoint: `["\/opt\/sonarqube\/bin\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:08:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:26:24 GMT
ARG JAVA_VERSION=17
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_VERSION=9.8.0.63668
# Mon, 19 Dec 2022 21:26:48 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:26:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:27:08 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:27:10 GMT
COPY --chown=sonarqube:sonarqubemulti:66701f646ad2f21287c063721ad66eabe0c3f39a3371b70504abf154fe36a694 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:27:10 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:27:10 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:27:10 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:27:10 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:27:10 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c89ebc03a4cfca8e726050f95f4ad434050dd0c998028def4a75bdf88450c2`  
		Last Modified: Mon, 19 Dec 2022 21:33:12 GMT  
		Size: 468.6 MB (468563179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d9a31e6d20ccce30f7771885ac6efa0b4cd05feb59f23619538ec5b4061efa`  
		Last Modified: Mon, 19 Dec 2022 21:32:44 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:9-enterprise`

```console
$ docker pull sonarqube@sha256:1ab1bf770b7cf836462935d895bce56ee91a715332a58c034d7a14989bdce34b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:9-enterprise` - linux; amd64

```console
$ docker pull sonarqube@sha256:31b5f861c349b66b57fc3ca2227361934f6654b929c4d2a19bb80b05c2d86005
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **489.7 MB (489737330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b2e8af1c318101d4ef9bfb01b15aeecda72889cf0b1b9a9c4273519ce7d4a18`
-	Entrypoint: `["\/opt\/sonarqube\/bin\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:08:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:26:24 GMT
ARG JAVA_VERSION=17
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_VERSION=9.8.0.63668
# Mon, 19 Dec 2022 21:27:16 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-enterprise/sonarqube-enterprise-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:27:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:27:51 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-enterprise/sonarqube-enterprise-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME};     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apk del --purge build-dependencies; 	cd "${SONARQUBE_HOME}/elasticsearch/bin" ; 	sed -i -e 's/\r$//' elasticsearch elasticsearch-env elasticsearch-env-from-file ;
# Mon, 19 Dec 2022 21:27:53 GMT
COPY --chown=sonarqube:sonarqubemulti:66701f646ad2f21287c063721ad66eabe0c3f39a3371b70504abf154fe36a694 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:27:53 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:27:53 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:27:53 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:27:54 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:27:54 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a74adf3e42460539d08a81f6e32c7eac14d43ad96e3a1bc724e0dcf0b169b92`  
		Last Modified: Mon, 19 Dec 2022 21:33:52 GMT  
		Size: 486.9 MB (486912702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6766136c10d8f070ea88591b85a9f9d3acb4057aba76c2a7a608cdcbd9acb59c`  
		Last Modified: Mon, 19 Dec 2022 21:33:24 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:9.8-community`

```console
$ docker pull sonarqube@sha256:d01fc01edd48c0fcdd8841255cfc30eb05b43e160b4c1b9056ca0c75d32ac285
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:9.8-community` - linux; amd64

```console
$ docker pull sonarqube@sha256:709288e86514674efc6d7f1d821d194a53f73733ae9fae31c634821922f6c4fa
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.1 MB (377084908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db451e99d1334ef25e4e766bf7daed8d75ad896d265c337f371933f7d36f47f8`
-	Entrypoint: `["\/opt\/sonarqube\/bin\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:08:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:26:24 GMT
ARG JAVA_VERSION=17
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_VERSION=9.8.0.63668
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:26:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:26:42 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME};     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:26:43 GMT
COPY --chown=sonarqube:sonarqubemulti:66701f646ad2f21287c063721ad66eabe0c3f39a3371b70504abf154fe36a694 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:26:43 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:26:43 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:26:43 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:26:44 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:26:44 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c884cb0d3d1d23ced4fd5fdad79c7bfd3d1d1463d1ec66db1661140ccbbf934`  
		Last Modified: Mon, 19 Dec 2022 21:32:30 GMT  
		Size: 374.3 MB (374260281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4d01bc5fb2325878a6eecadd93afaeed88243d1bbb531cbd3ec6b2843dcce8`  
		Last Modified: Mon, 19 Dec 2022 21:32:06 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:9.8-datacenter-app`

```console
$ docker pull sonarqube@sha256:0286235a959203db35298bc52263af4ea86626aae21f4f5860a3ee80e7e0721b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:9.8-datacenter-app` - linux; amd64

```console
$ docker pull sonarqube@sha256:89ab281af2e3890496c3caf7379f5920ad0d95e305ade20a81bdb1d8be620102
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **512.2 MB (512201950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15aeaee88ab27bc342c859834e6688e6a5a82726f2b14f9bcf26824893f50018`
-	Entrypoint: `["\/opt\/sonarqube\/bin\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:08:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:26:24 GMT
ARG JAVA_VERSION=17
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_VERSION=9.8.0.63668
# Mon, 19 Dec 2022 21:27:56 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:27:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=application SONAR_CLUSTER_ENABLED=true
# Mon, 19 Dec 2022 21:28:17 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt ;    cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:28:19 GMT
COPY --chown=sonarqube:sonarqubemulti:b3583528dc7e1c8c3d5b50dfbb55820aeec61ed9bbc812d0d58f5c5875189ea8 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:28:19 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:28:19 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:28:20 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:28:20 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:28:20 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782855121ed446725fc66028c41268e133e5f19f78de505fa93cae76004b7254`  
		Last Modified: Mon, 19 Dec 2022 21:34:33 GMT  
		Size: 509.4 MB (509376915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f730c985f4097ad6293c1d3ca485acc0ccadb2159527ba1b5802ce253674f1`  
		Last Modified: Mon, 19 Dec 2022 21:34:04 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:9.8-datacenter-search`

```console
$ docker pull sonarqube@sha256:2180c089dde914b3431be1e47c6c25e9b6ba442fb44d5461521a0a70cff9c2bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:9.8-datacenter-search` - linux; amd64

```console
$ docker pull sonarqube@sha256:3970f912e3c3879325a2eb0bd8641a1958edf0c9a0b6e707783f5faf0216138c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **512.2 MB (512201955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bfef7acc178acd2158e3b46c0a51dd5a15579c9dde2d99b6dfc3f3f3d0fa637`
-	Entrypoint: `["\/opt\/sonarqube\/bin\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:08:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:26:24 GMT
ARG JAVA_VERSION=17
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_VERSION=9.8.0.63668
# Mon, 19 Dec 2022 21:27:56 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:28:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=search SONAR_CLUSTER_ENABLED=true
# Mon, 19 Dec 2022 21:28:46 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt ;    cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:28:47 GMT
COPY --chown=sonarqube:sonarqubemulti:8997cda09b77db3cd2004e36d485c5b54ddd96e9993642921bc6be78ee8af554 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:28:48 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:28:48 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:28:48 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:28:48 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:28:48 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf04d055b391ae32b4396f63626539bede23251eb8852519dde42fdf425afcd`  
		Last Modified: Mon, 19 Dec 2022 21:35:14 GMT  
		Size: 509.4 MB (509376934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d475376965e2e8e2635e0aee283ac099f042e12d4f5b705933aa340fae0d9c97`  
		Last Modified: Mon, 19 Dec 2022 21:34:45 GMT  
		Size: 1.5 KB (1509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:9.8-developer`

```console
$ docker pull sonarqube@sha256:a73ecba149df1ebb84f0dc483657ab6cdcf8ed5c6cb72964630fb12b043ccc9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:9.8-developer` - linux; amd64

```console
$ docker pull sonarqube@sha256:377991e4e7d1138b83449056d3b7710d19414904a4074ab6e810341ad8b3bb05
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **471.4 MB (471387807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d78f3c8bfbb797f14c3841d6903b4597c3b2411ece4fed72f709fd093c5688d`
-	Entrypoint: `["\/opt\/sonarqube\/bin\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:08:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:26:24 GMT
ARG JAVA_VERSION=17
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_VERSION=9.8.0.63668
# Mon, 19 Dec 2022 21:26:48 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:26:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:27:08 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:27:10 GMT
COPY --chown=sonarqube:sonarqubemulti:66701f646ad2f21287c063721ad66eabe0c3f39a3371b70504abf154fe36a694 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:27:10 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:27:10 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:27:10 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:27:10 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:27:10 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c89ebc03a4cfca8e726050f95f4ad434050dd0c998028def4a75bdf88450c2`  
		Last Modified: Mon, 19 Dec 2022 21:33:12 GMT  
		Size: 468.6 MB (468563179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d9a31e6d20ccce30f7771885ac6efa0b4cd05feb59f23619538ec5b4061efa`  
		Last Modified: Mon, 19 Dec 2022 21:32:44 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:9.8-enterprise`

```console
$ docker pull sonarqube@sha256:1ab1bf770b7cf836462935d895bce56ee91a715332a58c034d7a14989bdce34b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:9.8-enterprise` - linux; amd64

```console
$ docker pull sonarqube@sha256:31b5f861c349b66b57fc3ca2227361934f6654b929c4d2a19bb80b05c2d86005
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **489.7 MB (489737330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b2e8af1c318101d4ef9bfb01b15aeecda72889cf0b1b9a9c4273519ce7d4a18`
-	Entrypoint: `["\/opt\/sonarqube\/bin\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:08:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:26:24 GMT
ARG JAVA_VERSION=17
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_VERSION=9.8.0.63668
# Mon, 19 Dec 2022 21:27:16 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-enterprise/sonarqube-enterprise-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:27:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:27:51 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-enterprise/sonarqube-enterprise-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME};     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apk del --purge build-dependencies; 	cd "${SONARQUBE_HOME}/elasticsearch/bin" ; 	sed -i -e 's/\r$//' elasticsearch elasticsearch-env elasticsearch-env-from-file ;
# Mon, 19 Dec 2022 21:27:53 GMT
COPY --chown=sonarqube:sonarqubemulti:66701f646ad2f21287c063721ad66eabe0c3f39a3371b70504abf154fe36a694 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:27:53 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:27:53 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:27:53 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:27:54 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:27:54 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a74adf3e42460539d08a81f6e32c7eac14d43ad96e3a1bc724e0dcf0b169b92`  
		Last Modified: Mon, 19 Dec 2022 21:33:52 GMT  
		Size: 486.9 MB (486912702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6766136c10d8f070ea88591b85a9f9d3acb4057aba76c2a7a608cdcbd9acb59c`  
		Last Modified: Mon, 19 Dec 2022 21:33:24 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:9.8.0-community`

```console
$ docker pull sonarqube@sha256:d01fc01edd48c0fcdd8841255cfc30eb05b43e160b4c1b9056ca0c75d32ac285
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:9.8.0-community` - linux; amd64

```console
$ docker pull sonarqube@sha256:709288e86514674efc6d7f1d821d194a53f73733ae9fae31c634821922f6c4fa
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.1 MB (377084908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db451e99d1334ef25e4e766bf7daed8d75ad896d265c337f371933f7d36f47f8`
-	Entrypoint: `["\/opt\/sonarqube\/bin\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:08:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:26:24 GMT
ARG JAVA_VERSION=17
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_VERSION=9.8.0.63668
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:26:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:26:42 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME};     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:26:43 GMT
COPY --chown=sonarqube:sonarqubemulti:66701f646ad2f21287c063721ad66eabe0c3f39a3371b70504abf154fe36a694 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:26:43 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:26:43 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:26:43 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:26:44 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:26:44 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c884cb0d3d1d23ced4fd5fdad79c7bfd3d1d1463d1ec66db1661140ccbbf934`  
		Last Modified: Mon, 19 Dec 2022 21:32:30 GMT  
		Size: 374.3 MB (374260281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4d01bc5fb2325878a6eecadd93afaeed88243d1bbb531cbd3ec6b2843dcce8`  
		Last Modified: Mon, 19 Dec 2022 21:32:06 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:9.8.0-datacenter-app`

```console
$ docker pull sonarqube@sha256:0286235a959203db35298bc52263af4ea86626aae21f4f5860a3ee80e7e0721b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:9.8.0-datacenter-app` - linux; amd64

```console
$ docker pull sonarqube@sha256:89ab281af2e3890496c3caf7379f5920ad0d95e305ade20a81bdb1d8be620102
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **512.2 MB (512201950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15aeaee88ab27bc342c859834e6688e6a5a82726f2b14f9bcf26824893f50018`
-	Entrypoint: `["\/opt\/sonarqube\/bin\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:08:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:26:24 GMT
ARG JAVA_VERSION=17
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_VERSION=9.8.0.63668
# Mon, 19 Dec 2022 21:27:56 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:27:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=application SONAR_CLUSTER_ENABLED=true
# Mon, 19 Dec 2022 21:28:17 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt ;    cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:28:19 GMT
COPY --chown=sonarqube:sonarqubemulti:b3583528dc7e1c8c3d5b50dfbb55820aeec61ed9bbc812d0d58f5c5875189ea8 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:28:19 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:28:19 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:28:20 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:28:20 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:28:20 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782855121ed446725fc66028c41268e133e5f19f78de505fa93cae76004b7254`  
		Last Modified: Mon, 19 Dec 2022 21:34:33 GMT  
		Size: 509.4 MB (509376915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f730c985f4097ad6293c1d3ca485acc0ccadb2159527ba1b5802ce253674f1`  
		Last Modified: Mon, 19 Dec 2022 21:34:04 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:9.8.0-datacenter-search`

```console
$ docker pull sonarqube@sha256:2180c089dde914b3431be1e47c6c25e9b6ba442fb44d5461521a0a70cff9c2bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:9.8.0-datacenter-search` - linux; amd64

```console
$ docker pull sonarqube@sha256:3970f912e3c3879325a2eb0bd8641a1958edf0c9a0b6e707783f5faf0216138c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **512.2 MB (512201955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bfef7acc178acd2158e3b46c0a51dd5a15579c9dde2d99b6dfc3f3f3d0fa637`
-	Entrypoint: `["\/opt\/sonarqube\/bin\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:08:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:26:24 GMT
ARG JAVA_VERSION=17
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_VERSION=9.8.0.63668
# Mon, 19 Dec 2022 21:27:56 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:28:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=search SONAR_CLUSTER_ENABLED=true
# Mon, 19 Dec 2022 21:28:46 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt ;    cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:28:47 GMT
COPY --chown=sonarqube:sonarqubemulti:8997cda09b77db3cd2004e36d485c5b54ddd96e9993642921bc6be78ee8af554 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:28:48 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:28:48 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:28:48 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:28:48 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:28:48 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf04d055b391ae32b4396f63626539bede23251eb8852519dde42fdf425afcd`  
		Last Modified: Mon, 19 Dec 2022 21:35:14 GMT  
		Size: 509.4 MB (509376934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d475376965e2e8e2635e0aee283ac099f042e12d4f5b705933aa340fae0d9c97`  
		Last Modified: Mon, 19 Dec 2022 21:34:45 GMT  
		Size: 1.5 KB (1509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:9.8.0-developer`

```console
$ docker pull sonarqube@sha256:a73ecba149df1ebb84f0dc483657ab6cdcf8ed5c6cb72964630fb12b043ccc9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:9.8.0-developer` - linux; amd64

```console
$ docker pull sonarqube@sha256:377991e4e7d1138b83449056d3b7710d19414904a4074ab6e810341ad8b3bb05
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **471.4 MB (471387807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d78f3c8bfbb797f14c3841d6903b4597c3b2411ece4fed72f709fd093c5688d`
-	Entrypoint: `["\/opt\/sonarqube\/bin\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:08:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:26:24 GMT
ARG JAVA_VERSION=17
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_VERSION=9.8.0.63668
# Mon, 19 Dec 2022 21:26:48 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:26:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:27:08 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:27:10 GMT
COPY --chown=sonarqube:sonarqubemulti:66701f646ad2f21287c063721ad66eabe0c3f39a3371b70504abf154fe36a694 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:27:10 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:27:10 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:27:10 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:27:10 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:27:10 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c89ebc03a4cfca8e726050f95f4ad434050dd0c998028def4a75bdf88450c2`  
		Last Modified: Mon, 19 Dec 2022 21:33:12 GMT  
		Size: 468.6 MB (468563179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d9a31e6d20ccce30f7771885ac6efa0b4cd05feb59f23619538ec5b4061efa`  
		Last Modified: Mon, 19 Dec 2022 21:32:44 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:9.8.0-enterprise`

```console
$ docker pull sonarqube@sha256:1ab1bf770b7cf836462935d895bce56ee91a715332a58c034d7a14989bdce34b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:9.8.0-enterprise` - linux; amd64

```console
$ docker pull sonarqube@sha256:31b5f861c349b66b57fc3ca2227361934f6654b929c4d2a19bb80b05c2d86005
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **489.7 MB (489737330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b2e8af1c318101d4ef9bfb01b15aeecda72889cf0b1b9a9c4273519ce7d4a18`
-	Entrypoint: `["\/opt\/sonarqube\/bin\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:08:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:26:24 GMT
ARG JAVA_VERSION=17
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_VERSION=9.8.0.63668
# Mon, 19 Dec 2022 21:27:16 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-enterprise/sonarqube-enterprise-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:27:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:27:51 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-enterprise/sonarqube-enterprise-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME};     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apk del --purge build-dependencies; 	cd "${SONARQUBE_HOME}/elasticsearch/bin" ; 	sed -i -e 's/\r$//' elasticsearch elasticsearch-env elasticsearch-env-from-file ;
# Mon, 19 Dec 2022 21:27:53 GMT
COPY --chown=sonarqube:sonarqubemulti:66701f646ad2f21287c063721ad66eabe0c3f39a3371b70504abf154fe36a694 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:27:53 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:27:53 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:27:53 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:27:54 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:27:54 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a74adf3e42460539d08a81f6e32c7eac14d43ad96e3a1bc724e0dcf0b169b92`  
		Last Modified: Mon, 19 Dec 2022 21:33:52 GMT  
		Size: 486.9 MB (486912702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6766136c10d8f070ea88591b85a9f9d3acb4057aba76c2a7a608cdcbd9acb59c`  
		Last Modified: Mon, 19 Dec 2022 21:33:24 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:community`

```console
$ docker pull sonarqube@sha256:d01fc01edd48c0fcdd8841255cfc30eb05b43e160b4c1b9056ca0c75d32ac285
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:community` - linux; amd64

```console
$ docker pull sonarqube@sha256:709288e86514674efc6d7f1d821d194a53f73733ae9fae31c634821922f6c4fa
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.1 MB (377084908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db451e99d1334ef25e4e766bf7daed8d75ad896d265c337f371933f7d36f47f8`
-	Entrypoint: `["\/opt\/sonarqube\/bin\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:08:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:26:24 GMT
ARG JAVA_VERSION=17
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_VERSION=9.8.0.63668
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:26:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:26:42 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME};     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:26:43 GMT
COPY --chown=sonarqube:sonarqubemulti:66701f646ad2f21287c063721ad66eabe0c3f39a3371b70504abf154fe36a694 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:26:43 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:26:43 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:26:43 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:26:44 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:26:44 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c884cb0d3d1d23ced4fd5fdad79c7bfd3d1d1463d1ec66db1661140ccbbf934`  
		Last Modified: Mon, 19 Dec 2022 21:32:30 GMT  
		Size: 374.3 MB (374260281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4d01bc5fb2325878a6eecadd93afaeed88243d1bbb531cbd3ec6b2843dcce8`  
		Last Modified: Mon, 19 Dec 2022 21:32:06 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:datacenter-app`

```console
$ docker pull sonarqube@sha256:0286235a959203db35298bc52263af4ea86626aae21f4f5860a3ee80e7e0721b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:datacenter-app` - linux; amd64

```console
$ docker pull sonarqube@sha256:89ab281af2e3890496c3caf7379f5920ad0d95e305ade20a81bdb1d8be620102
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **512.2 MB (512201950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15aeaee88ab27bc342c859834e6688e6a5a82726f2b14f9bcf26824893f50018`
-	Entrypoint: `["\/opt\/sonarqube\/bin\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:08:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:26:24 GMT
ARG JAVA_VERSION=17
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_VERSION=9.8.0.63668
# Mon, 19 Dec 2022 21:27:56 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:27:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=application SONAR_CLUSTER_ENABLED=true
# Mon, 19 Dec 2022 21:28:17 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt ;    cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:28:19 GMT
COPY --chown=sonarqube:sonarqubemulti:b3583528dc7e1c8c3d5b50dfbb55820aeec61ed9bbc812d0d58f5c5875189ea8 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:28:19 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:28:19 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:28:20 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:28:20 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:28:20 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782855121ed446725fc66028c41268e133e5f19f78de505fa93cae76004b7254`  
		Last Modified: Mon, 19 Dec 2022 21:34:33 GMT  
		Size: 509.4 MB (509376915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f730c985f4097ad6293c1d3ca485acc0ccadb2159527ba1b5802ce253674f1`  
		Last Modified: Mon, 19 Dec 2022 21:34:04 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:datacenter-search`

```console
$ docker pull sonarqube@sha256:2180c089dde914b3431be1e47c6c25e9b6ba442fb44d5461521a0a70cff9c2bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:datacenter-search` - linux; amd64

```console
$ docker pull sonarqube@sha256:3970f912e3c3879325a2eb0bd8641a1958edf0c9a0b6e707783f5faf0216138c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **512.2 MB (512201955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bfef7acc178acd2158e3b46c0a51dd5a15579c9dde2d99b6dfc3f3f3d0fa637`
-	Entrypoint: `["\/opt\/sonarqube\/bin\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:08:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:26:24 GMT
ARG JAVA_VERSION=17
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_VERSION=9.8.0.63668
# Mon, 19 Dec 2022 21:27:56 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:28:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=search SONAR_CLUSTER_ENABLED=true
# Mon, 19 Dec 2022 21:28:46 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt ;    cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:28:47 GMT
COPY --chown=sonarqube:sonarqubemulti:8997cda09b77db3cd2004e36d485c5b54ddd96e9993642921bc6be78ee8af554 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:28:48 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:28:48 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:28:48 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:28:48 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:28:48 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf04d055b391ae32b4396f63626539bede23251eb8852519dde42fdf425afcd`  
		Last Modified: Mon, 19 Dec 2022 21:35:14 GMT  
		Size: 509.4 MB (509376934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d475376965e2e8e2635e0aee283ac099f042e12d4f5b705933aa340fae0d9c97`  
		Last Modified: Mon, 19 Dec 2022 21:34:45 GMT  
		Size: 1.5 KB (1509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:developer`

```console
$ docker pull sonarqube@sha256:a73ecba149df1ebb84f0dc483657ab6cdcf8ed5c6cb72964630fb12b043ccc9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:developer` - linux; amd64

```console
$ docker pull sonarqube@sha256:377991e4e7d1138b83449056d3b7710d19414904a4074ab6e810341ad8b3bb05
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **471.4 MB (471387807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d78f3c8bfbb797f14c3841d6903b4597c3b2411ece4fed72f709fd093c5688d`
-	Entrypoint: `["\/opt\/sonarqube\/bin\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:08:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:26:24 GMT
ARG JAVA_VERSION=17
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_VERSION=9.8.0.63668
# Mon, 19 Dec 2022 21:26:48 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:26:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:27:08 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:27:10 GMT
COPY --chown=sonarqube:sonarqubemulti:66701f646ad2f21287c063721ad66eabe0c3f39a3371b70504abf154fe36a694 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:27:10 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:27:10 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:27:10 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:27:10 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:27:10 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c89ebc03a4cfca8e726050f95f4ad434050dd0c998028def4a75bdf88450c2`  
		Last Modified: Mon, 19 Dec 2022 21:33:12 GMT  
		Size: 468.6 MB (468563179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d9a31e6d20ccce30f7771885ac6efa0b4cd05feb59f23619538ec5b4061efa`  
		Last Modified: Mon, 19 Dec 2022 21:32:44 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:enterprise`

```console
$ docker pull sonarqube@sha256:1ab1bf770b7cf836462935d895bce56ee91a715332a58c034d7a14989bdce34b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:enterprise` - linux; amd64

```console
$ docker pull sonarqube@sha256:31b5f861c349b66b57fc3ca2227361934f6654b929c4d2a19bb80b05c2d86005
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **489.7 MB (489737330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b2e8af1c318101d4ef9bfb01b15aeecda72889cf0b1b9a9c4273519ce7d4a18`
-	Entrypoint: `["\/opt\/sonarqube\/bin\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:08:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:26:24 GMT
ARG JAVA_VERSION=17
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_VERSION=9.8.0.63668
# Mon, 19 Dec 2022 21:27:16 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-enterprise/sonarqube-enterprise-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:27:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:27:51 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-enterprise/sonarqube-enterprise-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME};     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apk del --purge build-dependencies; 	cd "${SONARQUBE_HOME}/elasticsearch/bin" ; 	sed -i -e 's/\r$//' elasticsearch elasticsearch-env elasticsearch-env-from-file ;
# Mon, 19 Dec 2022 21:27:53 GMT
COPY --chown=sonarqube:sonarqubemulti:66701f646ad2f21287c063721ad66eabe0c3f39a3371b70504abf154fe36a694 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:27:53 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:27:53 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:27:53 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:27:54 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:27:54 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a74adf3e42460539d08a81f6e32c7eac14d43ad96e3a1bc724e0dcf0b169b92`  
		Last Modified: Mon, 19 Dec 2022 21:33:52 GMT  
		Size: 486.9 MB (486912702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6766136c10d8f070ea88591b85a9f9d3acb4057aba76c2a7a608cdcbd9acb59c`  
		Last Modified: Mon, 19 Dec 2022 21:33:24 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:latest`

```console
$ docker pull sonarqube@sha256:d01fc01edd48c0fcdd8841255cfc30eb05b43e160b4c1b9056ca0c75d32ac285
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:latest` - linux; amd64

```console
$ docker pull sonarqube@sha256:709288e86514674efc6d7f1d821d194a53f73733ae9fae31c634821922f6c4fa
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.1 MB (377084908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db451e99d1334ef25e4e766bf7daed8d75ad896d265c337f371933f7d36f47f8`
-	Entrypoint: `["\/opt\/sonarqube\/bin\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:08:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:26:24 GMT
ARG JAVA_VERSION=17
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_VERSION=9.8.0.63668
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:26:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:26:42 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME};     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:26:43 GMT
COPY --chown=sonarqube:sonarqubemulti:66701f646ad2f21287c063721ad66eabe0c3f39a3371b70504abf154fe36a694 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:26:43 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:26:43 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:26:43 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:26:44 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:26:44 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c884cb0d3d1d23ced4fd5fdad79c7bfd3d1d1463d1ec66db1661140ccbbf934`  
		Last Modified: Mon, 19 Dec 2022 21:32:30 GMT  
		Size: 374.3 MB (374260281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4d01bc5fb2325878a6eecadd93afaeed88243d1bbb531cbd3ec6b2843dcce8`  
		Last Modified: Mon, 19 Dec 2022 21:32:06 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:lts`

```console
$ docker pull sonarqube@sha256:eb2f0be32efdf08bef8d7370d09a0b123bc2430ae80e29a07720c9aa68233c00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:lts` - linux; amd64

```console
$ docker pull sonarqube@sha256:150f959098fe7a1c16c9a9dcb7fa8465f6d29c2d4c777ad8ade6c33d4f014f82
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.8 MB (327809765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4009139ebd1985ba735e70d240fcc40681829273c7759fb3ae52e2ff51fb6a13`
-	Entrypoint: `["bin\/run.sh"]`
-	Default Command: `["bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 19 Dec 2022 21:23:44 GMT
ENV JAVA_VERSION=jdk-11.0.11+9 LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:23:58 GMT
RUN set -eux;     apk add --no-cache tzdata --virtual .build-deps curl binutils zstd;     GLIBC_VER="2.33-r0";     ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download";     GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-10.2.0-6-x86_64.pkg.tar.zst";     GCC_LIBS_SHA256="e33b45e4a10ef26259d6acf8e7b5dd6dc63800641e41eb67fa6588d061f79c1c";     ZLIB_URL="https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.12-1-x86_64.pkg.tar.zst";     ZLIB_SHA256=2b6d0f4ee6782993ef673aef2d71c3adbc6f7c31aad7b374a12fde43b8c333b0;     curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub;     SGERRAND_RSA_SHA256="823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2";     echo "${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub" | sha256sum -c - ;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-${GLIBC_VER}.apk;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-bin-${GLIBC_VER}.apk;     curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-i18n-${GLIBC_VER}.apk;     /usr/glibc-compat/bin/localedef --inputfile en_US --charmap UTF-8 "$LANG" || true ;    echo "export LANG=$LANG" > /etc/profile.d/locale.sh;     curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.zst;     echo "${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.zst" | sha256sum -c - ;     mkdir /tmp/gcc;     zstd -d /tmp/gcc-libs.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/gcc-libs.tar -C /tmp/gcc;     mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib;     strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*;     curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.zst;     echo "${ZLIB_SHA256} */tmp/libz.tar.zst" | sha256sum -c - ;    mkdir /tmp/libz;     zstd -d /tmp/libz.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/libz.tar -C /tmp/libz;     mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib;     apk del --purge .build-deps glibc-i18n;     rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar* /tmp/libz /tmp/libz.tar.zst /var/cache/apk/*;
# Mon, 19 Dec 2022 21:24:03 GMT
RUN set -eux;     apk add --no-cache --virtual .fetch-deps curl;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64|arm64)          ESUM='76f7da05d905b5f9de8de1a34c1a206744f7589bf0eed876cd9069cb1d913806';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.13_8.tar.gz';          ;;        armhf|armv7l)          ESUM='aee2f20d005b58e79c3c6c02271f797cb387d33a135b762886990b9bf7cb262e';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_arm_linux_hotspot_11.0.13_8.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='8f267876675dac3da3f4ceccd44d812b57098505eeec5fb1688d54bdeffcd1da';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.13_8.tar.gz';          ;;        s390x)          ESUM='b4a5af4ffcc98f6b7cdd2232f79aa12f20efa769b5255277fa4974e2e19d4409';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_s390x_linux_hotspot_11.0.13_8.tar.gz';          ;;        amd64|x86_64)          ESUM='fb0a27e6e1f26a1ee79daa92e4cfe3ec0d676acfe114d99dd84b3414f056e8a0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_x64_linux_hotspot_11.0.13_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     apk del --purge .fetch-deps;     rm -rf /var/cache/apk/*;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 19 Dec 2022 21:24:04 GMT
ARG SONARQUBE_VERSION=8.9.10.61524
# Mon, 19 Dec 2022 21:24:04 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.10.61524.zip
# Mon, 19 Dec 2022 21:24:04 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=8.9.10.61524 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:24:18 GMT
# ARGS: SONARQUBE_VERSION=8.9.10.61524 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.10.61524.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME};     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:24:18 GMT
COPY --chown=sonarqube:sonarqubemulti:aed345498324cc768d63aba16bd3b3de027a0213cb3a62a9a3b27799dbf88552 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:24:19 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:24:19 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:24:19 GMT
ENTRYPOINT ["bin/run.sh"]
# Mon, 19 Dec 2022 21:24:19 GMT
CMD ["bin/sonar.sh"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a155b04154c01862d7fd054da999b577fe5ec09c74b84d64ae8ce31815da793e`  
		Last Modified: Mon, 19 Dec 2022 21:29:35 GMT  
		Size: 7.5 MB (7492787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4934f5353f9b5bf594c3be7825575cbd8816b6facff9fb0b7a88d6a6f7b98db9`  
		Last Modified: Mon, 19 Dec 2022 21:29:41 GMT  
		Size: 43.3 MB (43343246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370b716987f3969299644a449ff7508a2965eede0a2057babe59094dd1dc3b91`  
		Last Modified: Mon, 19 Dec 2022 21:29:49 GMT  
		Size: 274.1 MB (274145144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e1eb66a3a748b3f954bead92ffb66dbdeea89c6c071df90711fdafcf5022f6`  
		Last Modified: Mon, 19 Dec 2022 21:29:34 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:lts-community`

```console
$ docker pull sonarqube@sha256:eb2f0be32efdf08bef8d7370d09a0b123bc2430ae80e29a07720c9aa68233c00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:lts-community` - linux; amd64

```console
$ docker pull sonarqube@sha256:150f959098fe7a1c16c9a9dcb7fa8465f6d29c2d4c777ad8ade6c33d4f014f82
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.8 MB (327809765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4009139ebd1985ba735e70d240fcc40681829273c7759fb3ae52e2ff51fb6a13`
-	Entrypoint: `["bin\/run.sh"]`
-	Default Command: `["bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 19 Dec 2022 21:23:44 GMT
ENV JAVA_VERSION=jdk-11.0.11+9 LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:23:58 GMT
RUN set -eux;     apk add --no-cache tzdata --virtual .build-deps curl binutils zstd;     GLIBC_VER="2.33-r0";     ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download";     GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-10.2.0-6-x86_64.pkg.tar.zst";     GCC_LIBS_SHA256="e33b45e4a10ef26259d6acf8e7b5dd6dc63800641e41eb67fa6588d061f79c1c";     ZLIB_URL="https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.12-1-x86_64.pkg.tar.zst";     ZLIB_SHA256=2b6d0f4ee6782993ef673aef2d71c3adbc6f7c31aad7b374a12fde43b8c333b0;     curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub;     SGERRAND_RSA_SHA256="823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2";     echo "${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub" | sha256sum -c - ;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-${GLIBC_VER}.apk;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-bin-${GLIBC_VER}.apk;     curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-i18n-${GLIBC_VER}.apk;     /usr/glibc-compat/bin/localedef --inputfile en_US --charmap UTF-8 "$LANG" || true ;    echo "export LANG=$LANG" > /etc/profile.d/locale.sh;     curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.zst;     echo "${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.zst" | sha256sum -c - ;     mkdir /tmp/gcc;     zstd -d /tmp/gcc-libs.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/gcc-libs.tar -C /tmp/gcc;     mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib;     strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*;     curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.zst;     echo "${ZLIB_SHA256} */tmp/libz.tar.zst" | sha256sum -c - ;    mkdir /tmp/libz;     zstd -d /tmp/libz.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/libz.tar -C /tmp/libz;     mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib;     apk del --purge .build-deps glibc-i18n;     rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar* /tmp/libz /tmp/libz.tar.zst /var/cache/apk/*;
# Mon, 19 Dec 2022 21:24:03 GMT
RUN set -eux;     apk add --no-cache --virtual .fetch-deps curl;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64|arm64)          ESUM='76f7da05d905b5f9de8de1a34c1a206744f7589bf0eed876cd9069cb1d913806';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.13_8.tar.gz';          ;;        armhf|armv7l)          ESUM='aee2f20d005b58e79c3c6c02271f797cb387d33a135b762886990b9bf7cb262e';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_arm_linux_hotspot_11.0.13_8.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='8f267876675dac3da3f4ceccd44d812b57098505eeec5fb1688d54bdeffcd1da';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.13_8.tar.gz';          ;;        s390x)          ESUM='b4a5af4ffcc98f6b7cdd2232f79aa12f20efa769b5255277fa4974e2e19d4409';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_s390x_linux_hotspot_11.0.13_8.tar.gz';          ;;        amd64|x86_64)          ESUM='fb0a27e6e1f26a1ee79daa92e4cfe3ec0d676acfe114d99dd84b3414f056e8a0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_x64_linux_hotspot_11.0.13_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     apk del --purge .fetch-deps;     rm -rf /var/cache/apk/*;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 19 Dec 2022 21:24:04 GMT
ARG SONARQUBE_VERSION=8.9.10.61524
# Mon, 19 Dec 2022 21:24:04 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.10.61524.zip
# Mon, 19 Dec 2022 21:24:04 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=8.9.10.61524 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:24:18 GMT
# ARGS: SONARQUBE_VERSION=8.9.10.61524 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.10.61524.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME};     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:24:18 GMT
COPY --chown=sonarqube:sonarqubemulti:aed345498324cc768d63aba16bd3b3de027a0213cb3a62a9a3b27799dbf88552 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:24:19 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:24:19 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:24:19 GMT
ENTRYPOINT ["bin/run.sh"]
# Mon, 19 Dec 2022 21:24:19 GMT
CMD ["bin/sonar.sh"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a155b04154c01862d7fd054da999b577fe5ec09c74b84d64ae8ce31815da793e`  
		Last Modified: Mon, 19 Dec 2022 21:29:35 GMT  
		Size: 7.5 MB (7492787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4934f5353f9b5bf594c3be7825575cbd8816b6facff9fb0b7a88d6a6f7b98db9`  
		Last Modified: Mon, 19 Dec 2022 21:29:41 GMT  
		Size: 43.3 MB (43343246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370b716987f3969299644a449ff7508a2965eede0a2057babe59094dd1dc3b91`  
		Last Modified: Mon, 19 Dec 2022 21:29:49 GMT  
		Size: 274.1 MB (274145144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e1eb66a3a748b3f954bead92ffb66dbdeea89c6c071df90711fdafcf5022f6`  
		Last Modified: Mon, 19 Dec 2022 21:29:34 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:lts-datacenter-app`

```console
$ docker pull sonarqube@sha256:bb91d972417473670c6616321210a70f055d099769765563fec737177418f155
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:lts-datacenter-app` - linux; amd64

```console
$ docker pull sonarqube@sha256:e4255e77dd90a1edf8aa34ef5e51e13c008513305ca156f2713e365e2b38aedc
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **431.9 MB (431854567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f86af1fd9e0256edf670621c66d8d78df60fe50b91ec5a830d57de6e19de784`
-	Entrypoint: `["bin\/run.sh"]`
-	Default Command: `["bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 19 Dec 2022 21:24:24 GMT
ENV JAVA_VERSION=jdk-11.0.10+9 LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:24:37 GMT
RUN set -eux;     apk add --no-cache tzdata --virtual .build-deps curl binutils zstd;     GLIBC_VER="2.33-r0";     ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download";     GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-10.2.0-6-x86_64.pkg.tar.zst";     GCC_LIBS_SHA256="e33b45e4a10ef26259d6acf8e7b5dd6dc63800641e41eb67fa6588d061f79c1c";     ZLIB_URL="https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.12-1-x86_64.pkg.tar.zst";     ZLIB_SHA256=2b6d0f4ee6782993ef673aef2d71c3adbc6f7c31aad7b374a12fde43b8c333b0;     curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub;     SGERRAND_RSA_SHA256="823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2";     echo "${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub" | sha256sum -c - ;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-${GLIBC_VER}.apk;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-bin-${GLIBC_VER}.apk;     curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-i18n-${GLIBC_VER}.apk;     /usr/glibc-compat/bin/localedef --inputfile en_US --charmap UTF-8 "$LANG" || true ;    echo "export LANG=$LANG" > /etc/profile.d/locale.sh;     curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.zst;     echo "${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.zst" | sha256sum -c - ;     mkdir /tmp/gcc;     zstd -d /tmp/gcc-libs.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/gcc-libs.tar -C /tmp/gcc;     mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib;     strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*;     curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.zst;     echo "${ZLIB_SHA256} */tmp/libz.tar.zst" | sha256sum -c - ;    mkdir /tmp/libz;     zstd -d /tmp/libz.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/libz.tar -C /tmp/libz;     mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib;     apk del --purge .build-deps glibc-i18n;     rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar* /tmp/libz /tmp/libz.tar.zst /var/cache/apk/*;
# Mon, 19 Dec 2022 21:24:42 GMT
RUN set -eux;     apk add --no-cache --virtual .fetch-deps curl;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64|arm64)          ESUM='76f7da05d905b5f9de8de1a34c1a206744f7589bf0eed876cd9069cb1d913806';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.13_8.tar.gz';          ;;        armhf|armv7l)          ESUM='aee2f20d005b58e79c3c6c02271f797cb387d33a135b762886990b9bf7cb262e';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_arm_linux_hotspot_11.0.13_8.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='8f267876675dac3da3f4ceccd44d812b57098505eeec5fb1688d54bdeffcd1da';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.13_8.tar.gz';          ;;        s390x)          ESUM='b4a5af4ffcc98f6b7cdd2232f79aa12f20efa769b5255277fa4974e2e19d4409';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_s390x_linux_hotspot_11.0.13_8.tar.gz';          ;;        amd64|x86_64)          ESUM='fb0a27e6e1f26a1ee79daa92e4cfe3ec0d676acfe114d99dd84b3414f056e8a0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_x64_linux_hotspot_11.0.13_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     apk del --purge .fetch-deps;     rm -rf /var/cache/apk/*;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 19 Dec 2022 21:24:43 GMT
ARG SONARQUBE_VERSION=8.9.10.61524
# Mon, 19 Dec 2022 21:25:33 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-8.9.10.61524.zip
# Mon, 19 Dec 2022 21:25:33 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=8.9.10.61524 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=application SONAR_CLUSTER_ENABLED=true
# Mon, 19 Dec 2022 21:25:49 GMT
# ARGS: SONARQUBE_VERSION=8.9.10.61524 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-8.9.10.61524.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt ;    cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:25:50 GMT
COPY --chown=sonarqube:sonarqubemulti:51df763f101eec590ff619b8aadba3476acd9a155be2557d6807f6fb4f272767 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:25:50 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:25:51 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:25:51 GMT
ENTRYPOINT ["bin/run.sh"]
# Mon, 19 Dec 2022 21:25:51 GMT
CMD ["bin/sonar.sh"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801f2941a1dfad67df87edbeef8ab1792bbf69c5d10e461a1ac0454346116d9b`  
		Last Modified: Mon, 19 Dec 2022 21:30:05 GMT  
		Size: 7.5 MB (7492797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4412b9adb8889263429649c5aa909e26d4204c3fd41401ea912f78f2c04e6a`  
		Last Modified: Mon, 19 Dec 2022 21:30:10 GMT  
		Size: 43.3 MB (43343200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee5bbfc8513a6f387b781325d92834f0906e9959d20322452101f1d1cf138d6`  
		Last Modified: Mon, 19 Dec 2022 21:31:23 GMT  
		Size: 378.2 MB (378189686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c77acf9a9450afc8eb01e573df514c3803a467636afea69f2a10cd47d872745`  
		Last Modified: Mon, 19 Dec 2022 21:31:04 GMT  
		Size: 1.4 KB (1395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:lts-datacenter-search`

```console
$ docker pull sonarqube@sha256:045f3ff36842cf2353cec758fefea417bb87665f36ccc7ea449c49ca9965fb3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:lts-datacenter-search` - linux; amd64

```console
$ docker pull sonarqube@sha256:f631cfe46368435c68c5a6ec04cdf8878d1bef37206b0a5df8daa76d7db4a886
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **431.8 MB (431809569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:437a7a2a232a2b8a9bca172f1aa9cda376b70e67a31d3a354e185cc6f3db40b0`
-	Entrypoint: `["bin\/run.sh"]`
-	Default Command: `["bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 19 Dec 2022 21:24:24 GMT
ENV JAVA_VERSION=jdk-11.0.10+9 LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:24:37 GMT
RUN set -eux;     apk add --no-cache tzdata --virtual .build-deps curl binutils zstd;     GLIBC_VER="2.33-r0";     ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download";     GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-10.2.0-6-x86_64.pkg.tar.zst";     GCC_LIBS_SHA256="e33b45e4a10ef26259d6acf8e7b5dd6dc63800641e41eb67fa6588d061f79c1c";     ZLIB_URL="https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.12-1-x86_64.pkg.tar.zst";     ZLIB_SHA256=2b6d0f4ee6782993ef673aef2d71c3adbc6f7c31aad7b374a12fde43b8c333b0;     curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub;     SGERRAND_RSA_SHA256="823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2";     echo "${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub" | sha256sum -c - ;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-${GLIBC_VER}.apk;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-bin-${GLIBC_VER}.apk;     curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-i18n-${GLIBC_VER}.apk;     /usr/glibc-compat/bin/localedef --inputfile en_US --charmap UTF-8 "$LANG" || true ;    echo "export LANG=$LANG" > /etc/profile.d/locale.sh;     curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.zst;     echo "${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.zst" | sha256sum -c - ;     mkdir /tmp/gcc;     zstd -d /tmp/gcc-libs.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/gcc-libs.tar -C /tmp/gcc;     mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib;     strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*;     curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.zst;     echo "${ZLIB_SHA256} */tmp/libz.tar.zst" | sha256sum -c - ;    mkdir /tmp/libz;     zstd -d /tmp/libz.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/libz.tar -C /tmp/libz;     mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib;     apk del --purge .build-deps glibc-i18n;     rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar* /tmp/libz /tmp/libz.tar.zst /var/cache/apk/*;
# Mon, 19 Dec 2022 21:26:02 GMT
RUN set -eux;     apk add --no-cache --virtual .fetch-deps curl;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64|arm64)          ESUM='fde6b29df23b6e7ed6e16a237a0f44273fb9e267fdfbd0b3de5add98e55649f6';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.11_9.tar.gz';          ;;        armhf|armv7l)          ESUM='ad02656f800fd64c2b090b23ad24a099d9cd1054948ecb0e9851bc39c51c8be8';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.11_9.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='37c19c7c2d1cea627b854a475ef1a765d30357d765d20cf3f96590037e79d0f3';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.11_9.tar.gz';          ;;        s390x)          ESUM='f18101fc50aad795a41b4d3bbc591308c83664fd2390bf2bc007fd9b3d531e6c';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.11_9.tar.gz';          ;;        amd64|x86_64)          ESUM='144f2c6bcf64faa32016f2474b6c01031be75d25325e9c3097aed6589bc5d548';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.11_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     apk del --purge .fetch-deps;     rm -rf /var/cache/apk/*;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 19 Dec 2022 21:26:03 GMT
ARG SONARQUBE_VERSION=8.9.10.61524
# Mon, 19 Dec 2022 21:26:03 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-8.9.10.61524.zip
# Mon, 19 Dec 2022 21:26:03 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=8.9.10.61524 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=search SONAR_CLUSTER_ENABLED=true
# Mon, 19 Dec 2022 21:26:20 GMT
# ARGS: SONARQUBE_VERSION=8.9.10.61524 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-8.9.10.61524.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt ;    cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:26:21 GMT
COPY --chown=sonarqube:sonarqubemulti:270da8217279c47ae0242cde83fc983aadec2b66d86bcd0a13541b65a67704f9 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:26:21 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:26:21 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:26:21 GMT
ENTRYPOINT ["bin/run.sh"]
# Mon, 19 Dec 2022 21:26:21 GMT
CMD ["bin/sonar.sh"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801f2941a1dfad67df87edbeef8ab1792bbf69c5d10e461a1ac0454346116d9b`  
		Last Modified: Mon, 19 Dec 2022 21:30:05 GMT  
		Size: 7.5 MB (7492797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b25525918ecce74c4d6b65021b8fe7fd7a11dcafc0954421236b8b25b895137`  
		Last Modified: Mon, 19 Dec 2022 21:31:42 GMT  
		Size: 43.3 MB (43297675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e645db067f920985007507be33866ba2b95e10288f663eda56d7f904bf56754e`  
		Last Modified: Mon, 19 Dec 2022 21:31:54 GMT  
		Size: 378.2 MB (378190200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e3bcc80a055e1e984e528f683e4db029165f92d4395417513e960654d0a22d`  
		Last Modified: Mon, 19 Dec 2022 21:31:35 GMT  
		Size: 1.4 KB (1408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:lts-developer`

```console
$ docker pull sonarqube@sha256:4bca63533a9e7428f19908cf49ac4e8ff79f8a010666e2a82fbab83f9235e1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:lts-developer` - linux; amd64

```console
$ docker pull sonarqube@sha256:a1dfafdfa89a12a1870b917fc6def57b80d5feb5c5e8d1f120fcd48c5990a80a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.7 MB (388732175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59fce3983431db9fb3036dbe6af7a9c67238327ff238468c57776406895b642`
-	Entrypoint: `["bin\/run.sh"]`
-	Default Command: `["bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 19 Dec 2022 21:24:24 GMT
ENV JAVA_VERSION=jdk-11.0.10+9 LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:24:37 GMT
RUN set -eux;     apk add --no-cache tzdata --virtual .build-deps curl binutils zstd;     GLIBC_VER="2.33-r0";     ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download";     GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-10.2.0-6-x86_64.pkg.tar.zst";     GCC_LIBS_SHA256="e33b45e4a10ef26259d6acf8e7b5dd6dc63800641e41eb67fa6588d061f79c1c";     ZLIB_URL="https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.12-1-x86_64.pkg.tar.zst";     ZLIB_SHA256=2b6d0f4ee6782993ef673aef2d71c3adbc6f7c31aad7b374a12fde43b8c333b0;     curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub;     SGERRAND_RSA_SHA256="823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2";     echo "${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub" | sha256sum -c - ;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-${GLIBC_VER}.apk;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-bin-${GLIBC_VER}.apk;     curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-i18n-${GLIBC_VER}.apk;     /usr/glibc-compat/bin/localedef --inputfile en_US --charmap UTF-8 "$LANG" || true ;    echo "export LANG=$LANG" > /etc/profile.d/locale.sh;     curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.zst;     echo "${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.zst" | sha256sum -c - ;     mkdir /tmp/gcc;     zstd -d /tmp/gcc-libs.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/gcc-libs.tar -C /tmp/gcc;     mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib;     strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*;     curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.zst;     echo "${ZLIB_SHA256} */tmp/libz.tar.zst" | sha256sum -c - ;    mkdir /tmp/libz;     zstd -d /tmp/libz.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/libz.tar -C /tmp/libz;     mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib;     apk del --purge .build-deps glibc-i18n;     rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar* /tmp/libz /tmp/libz.tar.zst /var/cache/apk/*;
# Mon, 19 Dec 2022 21:24:42 GMT
RUN set -eux;     apk add --no-cache --virtual .fetch-deps curl;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64|arm64)          ESUM='76f7da05d905b5f9de8de1a34c1a206744f7589bf0eed876cd9069cb1d913806';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.13_8.tar.gz';          ;;        armhf|armv7l)          ESUM='aee2f20d005b58e79c3c6c02271f797cb387d33a135b762886990b9bf7cb262e';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_arm_linux_hotspot_11.0.13_8.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='8f267876675dac3da3f4ceccd44d812b57098505eeec5fb1688d54bdeffcd1da';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.13_8.tar.gz';          ;;        s390x)          ESUM='b4a5af4ffcc98f6b7cdd2232f79aa12f20efa769b5255277fa4974e2e19d4409';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_s390x_linux_hotspot_11.0.13_8.tar.gz';          ;;        amd64|x86_64)          ESUM='fb0a27e6e1f26a1ee79daa92e4cfe3ec0d676acfe114d99dd84b3414f056e8a0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_x64_linux_hotspot_11.0.13_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     apk del --purge .fetch-deps;     rm -rf /var/cache/apk/*;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 19 Dec 2022 21:24:43 GMT
ARG SONARQUBE_VERSION=8.9.10.61524
# Mon, 19 Dec 2022 21:24:43 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-8.9.10.61524.zip
# Mon, 19 Dec 2022 21:24:43 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=8.9.10.61524 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:24:58 GMT
# ARGS: SONARQUBE_VERSION=8.9.10.61524 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-8.9.10.61524.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:24:59 GMT
COPY --chown=sonarqube:sonarqubemulti:aed345498324cc768d63aba16bd3b3de027a0213cb3a62a9a3b27799dbf88552 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:24:59 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:24:59 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:24:59 GMT
ENTRYPOINT ["bin/run.sh"]
# Mon, 19 Dec 2022 21:25:00 GMT
CMD ["bin/sonar.sh"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801f2941a1dfad67df87edbeef8ab1792bbf69c5d10e461a1ac0454346116d9b`  
		Last Modified: Mon, 19 Dec 2022 21:30:05 GMT  
		Size: 7.5 MB (7492797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4412b9adb8889263429649c5aa909e26d4204c3fd41401ea912f78f2c04e6a`  
		Last Modified: Mon, 19 Dec 2022 21:30:10 GMT  
		Size: 43.3 MB (43343200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4edec7e59f84f86bb19e6abc36bc617e91a0786de12be91893fbe24643001b`  
		Last Modified: Mon, 19 Dec 2022 21:30:21 GMT  
		Size: 335.1 MB (335067592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee210cb6c28dede06c62c5743cbed4722b197cc82912e3acef796bef252df077`  
		Last Modified: Mon, 19 Dec 2022 21:30:04 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:lts-enterprise`

```console
$ docker pull sonarqube@sha256:6a0625fa9df64fa48bc00f7191b91212a35d0c83fa9c218b268df7a91b1c26b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:lts-enterprise` - linux; amd64

```console
$ docker pull sonarqube@sha256:e205831f60391aae2f10ec095658e477cb9f497d017f926896f46028eb962ac3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.4 MB (409404070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c044eca90e8720bf88431a32eab379ba1d47c3ee0986a797bced5fb30048800`
-	Entrypoint: `["bin\/run.sh"]`
-	Default Command: `["bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 19 Dec 2022 21:24:24 GMT
ENV JAVA_VERSION=jdk-11.0.10+9 LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:24:37 GMT
RUN set -eux;     apk add --no-cache tzdata --virtual .build-deps curl binutils zstd;     GLIBC_VER="2.33-r0";     ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download";     GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-10.2.0-6-x86_64.pkg.tar.zst";     GCC_LIBS_SHA256="e33b45e4a10ef26259d6acf8e7b5dd6dc63800641e41eb67fa6588d061f79c1c";     ZLIB_URL="https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.12-1-x86_64.pkg.tar.zst";     ZLIB_SHA256=2b6d0f4ee6782993ef673aef2d71c3adbc6f7c31aad7b374a12fde43b8c333b0;     curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub;     SGERRAND_RSA_SHA256="823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2";     echo "${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub" | sha256sum -c - ;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-${GLIBC_VER}.apk;     curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-bin-${GLIBC_VER}.apk;     curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk;     apk add --no-cache /tmp/glibc-i18n-${GLIBC_VER}.apk;     /usr/glibc-compat/bin/localedef --inputfile en_US --charmap UTF-8 "$LANG" || true ;    echo "export LANG=$LANG" > /etc/profile.d/locale.sh;     curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.zst;     echo "${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.zst" | sha256sum -c - ;     mkdir /tmp/gcc;     zstd -d /tmp/gcc-libs.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/gcc-libs.tar -C /tmp/gcc;     mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib;     strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*;     curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.zst;     echo "${ZLIB_SHA256} */tmp/libz.tar.zst" | sha256sum -c - ;    mkdir /tmp/libz;     zstd -d /tmp/libz.tar.zst --output-dir-flat /tmp;     tar -xf /tmp/libz.tar -C /tmp/libz;     mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib;     apk del --purge .build-deps glibc-i18n;     rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar* /tmp/libz /tmp/libz.tar.zst /var/cache/apk/*;
# Mon, 19 Dec 2022 21:25:08 GMT
RUN set -eux;     apk add --no-cache --virtual .fetch-deps curl;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64|arm64)          ESUM='76f7da05d905b5f9de8de1a34c1a206744f7589bf0eed876cd9069cb1d913806';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.13_8.tar.gz';          ;;        armhf|armv7l)          ESUM='aee2f20d005b58e79c3c6c02271f797cb387d33a135b762886990b9bf7cb262e';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_arm_linux_hotspot_11.0.13_8.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='8f267876675dac3da3f4ceccd44d812b57098505eeec5fb1688d54bdeffcd1da';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.13_8.tar.gz';          ;;        s390x)          ESUM='b4a5af4ffcc98f6b7cdd2232f79aa12f20efa769b5255277fa4974e2e19d4409';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_s390x_linux_hotspot_11.0.13_8.tar.gz';          ;;        amd64|x86_64)          ESUM='fb0a27e6e1f26a1ee79daa92e4cfe3ec0d676acfe114d99dd84b3414f056e8a0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jre_x64_linux_hotspot_11.0.13_8.tar.gz';          ;;        *)           echo "Unsupported arch: ${ARCH}";           exit 1;           ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     apk del --purge .fetch-deps;     rm -rf /var/cache/apk/*;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 19 Dec 2022 21:25:09 GMT
ARG SONARQUBE_VERSION=8.9.10.61524
# Mon, 19 Dec 2022 21:25:09 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-enterprise/sonarqube-enterprise-8.9.10.61524.zip
# Mon, 19 Dec 2022 21:25:09 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=8.9.10.61524 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:25:25 GMT
# ARGS: SONARQUBE_VERSION=8.9.10.61524 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-enterprise/sonarqube-enterprise-8.9.10.61524.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME};     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:25:27 GMT
COPY --chown=sonarqube:sonarqubemulti:aed345498324cc768d63aba16bd3b3de027a0213cb3a62a9a3b27799dbf88552 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:25:27 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:25:27 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:25:27 GMT
ENTRYPOINT ["bin/run.sh"]
# Mon, 19 Dec 2022 21:25:27 GMT
CMD ["bin/sonar.sh"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801f2941a1dfad67df87edbeef8ab1792bbf69c5d10e461a1ac0454346116d9b`  
		Last Modified: Mon, 19 Dec 2022 21:30:05 GMT  
		Size: 7.5 MB (7492797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16d8e8238b878485bf358ae377f4a2537d1665aee4be22e9d217cfd509dd429`  
		Last Modified: Mon, 19 Dec 2022 21:30:40 GMT  
		Size: 43.3 MB (43343227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec1faa3f908a7d6154b16ccd21d4e3e7a511372cdf22fa533476d0621c369f4`  
		Last Modified: Mon, 19 Dec 2022 21:30:52 GMT  
		Size: 355.7 MB (355739459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7665da00e2e72c3cb0fad36da1742b94d14d6bda2d9af32f3b78efe1147e90`  
		Last Modified: Mon, 19 Dec 2022 21:30:34 GMT  
		Size: 1.1 KB (1098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
