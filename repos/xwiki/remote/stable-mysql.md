## `xwiki:stable-mysql`

```console
$ docker pull xwiki@sha256:13a2c5f626a8a47264b9a4889b3a01d1279f0cac73dcae027d0918db5d3cd265
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:stable-mysql` - linux; amd64

```console
$ docker pull xwiki@sha256:944a429984005f9dd130d21f0a0e64dc58ecc40a7785479dfccc150b9dd8e083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **785.8 MB (785815980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377e7d41f06f57ec51a26d761c5787531b876f1187c9c0b697f99aa79f36600d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:18:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:18:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:18:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:05 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:18:05 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 04 Aug 2026 01:18:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='f3d8843c5a1b77ded3353e0df85d803d84b9faa5ece20673564e7c47fc4591d9';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:18:09 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:18:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 03:26:04 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 04 Aug 2026 03:26:04 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:26:04 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 04 Aug 2026 03:26:04 GMT
WORKDIR /usr/local/tomcat
# Tue, 04 Aug 2026 03:26:04 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 03:26:04 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 03:26:04 GMT
ENV TOMCAT_MAJOR=10
# Tue, 04 Aug 2026 03:26:04 GMT
ENV TOMCAT_VERSION=10.1.57
# Tue, 04 Aug 2026 03:26:04 GMT
ENV TOMCAT_SHA512=2fa1866ec647d4222b07ea937a4cc266adee219a1a8870107e72fc2349248dd1e32b157fa18108451f4c6e3b162f0fdfbdd11dd7855d4e49a2f0f609004a77f3
# Tue, 04 Aug 2026 03:26:05 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 04 Aug 2026 03:26:09 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:26:10 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 04 Aug 2026 03:26:10 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 04 Aug 2026 03:26:10 GMT
ENTRYPOINT []
# Tue, 04 Aug 2026 03:26:10 GMT
CMD ["catalina.sh" "run"]
# Tue, 04 Aug 2026 04:12:42 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Tue, 04 Aug 2026 04:12:42 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Tue, 04 Aug 2026 04:12:42 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Tue, 04 Aug 2026 04:12:42 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Tue, 04 Aug 2026 04:12:42 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Tue, 04 Aug 2026 04:12:42 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Tue, 04 Aug 2026 04:12:42 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1 &&   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 04:12:42 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Tue, 04 Aug 2026 04:12:42 GMT
ENV LIBREOFFICE_VERSION=25.8.7
# Tue, 04 Aug 2026 04:12:42 GMT
ENV LIBREOFFICE_SHA256_AMD64=7f4d7b2e36921eec5122c655249a24cc88935ee357e8261fd3bccd15aa1f7b9f
# Tue, 04 Aug 2026 04:12:42 GMT
ENV LIBREOFFICE_SHA256_ARM64=67e9b7dcdeae72c7aa1357345307e67376fc2b729a7f9ebfafb372b010e22ffa
# Tue, 04 Aug 2026 04:12:42 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/25.8.7/deb
# Tue, 04 Aug 2026 04:13:02 GMT
RUN LO_ARCH="$(dpkg --print-architecture)" &&   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac &&   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz" &&   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz &&   echo "$LO_SHA256 /tmp/libreoffice.tar.gz" | sha256sum -c - &&   mkdir -p /tmp/libreoffice &&   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz &&   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb &&   ln -fs $(ls -d /opt/libreoffice*) /opt/libreoffice &&   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Tue, 04 Aug 2026 04:13:02 GMT
ENV XWIKI_VERSION=18.6.0
# Tue, 04 Aug 2026 04:13:02 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.6.0
# Tue, 04 Aug 2026 04:13:02 GMT
ENV XWIKI_DOWNLOAD_SHA256=3f4d0210f57efd98be916379e18f4714c600312c22b288f20bbc0ff39a8a4fff
# Tue, 04 Aug 2026 04:13:24 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Tue, 04 Aug 2026 04:13:24 GMT
ENV MYSQL_JDBC_VERSION=9.7.0
# Tue, 04 Aug 2026 04:13:24 GMT
ENV MYSQL_JDBC_SHA256=0353648eaa1c91e0f4020c959abf756bc866ffd583df22ae6b6f6e0cbd43eb44
# Tue, 04 Aug 2026 04:13:24 GMT
ENV MYSQL_JDBC_PREFIX=https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/9.7.0
# Tue, 04 Aug 2026 04:13:24 GMT
ENV MYSQL_JDBC_ARTIFACT=mysql-connector-j-9.7.0.jar
# Tue, 04 Aug 2026 04:13:24 GMT
ENV MYSQL_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mysql-connector-j-9.7.0.jar
# Tue, 04 Aug 2026 04:13:24 GMT
RUN curl $CURL_OPTIONS "${MYSQL_JDBC_PREFIX}/${MYSQL_JDBC_ARTIFACT}" -o $MYSQL_JDBC_TARGET &&   echo "$MYSQL_JDBC_SHA256 $MYSQL_JDBC_TARGET" | sha256sum -c - # buildkit
# Tue, 04 Aug 2026 04:13:24 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Tue, 04 Aug 2026 04:13:24 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Tue, 04 Aug 2026 04:13:24 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Tue, 04 Aug 2026 04:13:24 GMT
RUN LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml &&   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new" &&   mv "$LOGBACK.new" "$LOGBACK" &&   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Tue, 04 Aug 2026 04:13:24 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Tue, 04 Aug 2026 04:13:24 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 04:13:24 GMT
VOLUME [/usr/local/xwiki]
# Tue, 04 Aug 2026 04:13:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:13:24 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db609f0511d6a531ae0c608482194102e3b44423827e5087555be1f32a977c3`  
		Last Modified: Tue, 04 Aug 2026 01:18:22 GMT  
		Size: 19.3 MB (19345541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0b0b9c8c3cda2f2a083b90ee737957c84124b2832310c7add37dbd8e6abcea4`  
		Last Modified: Tue, 04 Aug 2026 01:18:24 GMT  
		Size: 53.1 MB (53123202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2acd1ddedbb669f90237c42d72ff6e525f6fb0c41a6bc39c88cf52bcd93b327`  
		Last Modified: Tue, 04 Aug 2026 01:18:22 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31e784d031e69160094ca9e6db5b52cebc312e641fb92e44b9ea6c728c5d7f2`  
		Last Modified: Tue, 04 Aug 2026 01:18:22 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5628e739aa4cfafb460c0e3f9cd1f882b967ca909022d104c2a66d375ef3b1e6`  
		Last Modified: Tue, 04 Aug 2026 03:26:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcf4ddf87fe482204dd415d79617ef6471fb73b6f1034e78140d2749c2ab3a56`  
		Last Modified: Tue, 04 Aug 2026 03:26:19 GMT  
		Size: 14.4 MB (14359742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f4b39a75db51f5a368ee4d485a311dfb743160214c98bb89f6c1f2a86794e19`  
		Last Modified: Tue, 04 Aug 2026 03:26:18 GMT  
		Size: 225.3 KB (225291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5c1d1d70682d3dce9059d1bd26544c132a18200d86d1fba0cb077a1ad27d35`  
		Last Modified: Tue, 04 Aug 2026 04:14:14 GMT  
		Size: 22.8 MB (22829622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f73ebe383a3cf544a8e7c5eaca8fe45fcab15b806c0188b0950ad1ab93e9b9`  
		Last Modified: Tue, 04 Aug 2026 04:14:22 GMT  
		Size: 297.5 MB (297471883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ef2f20fb863ba511731ac19aab533b3c31bdf160834c17620805febdc4025d`  
		Last Modified: Tue, 04 Aug 2026 04:14:23 GMT  
		Size: 346.2 MB (346238309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:465857a288dde390c2a5c68e8b6bca2a761206517c3ac4e5e97b7c4d1bceb5f7`  
		Last Modified: Tue, 04 Aug 2026 04:14:13 GMT  
		Size: 2.4 MB (2446018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fe60a31f94551147d3dbb1f87f07b066062d0c18b9f393ff77b7f9585be4a06`  
		Last Modified: Tue, 04 Aug 2026 04:14:14 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59fdab505c16a2eb855b3eb55732e7a3d121f915724d2210930d6a71da0c674b`  
		Last Modified: Tue, 04 Aug 2026 04:14:15 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551c2698e7a7b56010e91f079603d5da1526b0c69eaa3fee03f1680e056229ff`  
		Last Modified: Tue, 04 Aug 2026 04:14:15 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2f5388f62a84c1c7aaf5fdc72f6459ae8aaebdb8f5864aba56777207300671`  
		Last Modified: Tue, 04 Aug 2026 04:14:17 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:203a42201f336e034ab98b910f6d16fdf1359a468955fc06794782b599f34762`  
		Last Modified: Tue, 04 Aug 2026 04:14:17 GMT  
		Size: 11.0 KB (10997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b51e7219570aa76ef233ff8960bb5cba2e5d768f7f62fa0cb262c3ae2d8087f`  
		Last Modified: Tue, 04 Aug 2026 04:14:18 GMT  
		Size: 4.1 KB (4100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:stable-mysql` - unknown; unknown

```console
$ docker pull xwiki@sha256:4ec2137dbb6a7ecc61795e3dedcf272e22608a8600323a43ba977b3c7715a9f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14502631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7db1c09f8ca4d0afbc51f136917f47719f988681f8b4fae3890ef86ffde50865`

```dockerfile
```

-	Layers:
	-	`sha256:05346acd777ca7bb4bc100dcdcff3cef8be4bae85e1153f07f2655e8cf5366a7`  
		Last Modified: Tue, 04 Aug 2026 04:14:13 GMT  
		Size: 14.4 MB (14435675 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f78139312325e8adc62479d8ac041b6f59d9d57f6cd85acc332db1141d566120`  
		Last Modified: Tue, 04 Aug 2026 04:14:12 GMT  
		Size: 67.0 KB (66956 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:stable-mysql` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:4a05802a06d545b9a44617facd6fd7b6e432fe331f39fec8545d1619e989f134
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **773.7 MB (773669575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7a912e01c71d44fe87ba9e70e1335eeed2751fbfcbcfbac9aeec8d8eac297a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:27:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:27:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:27:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:27:58 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:27:58 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 04 Aug 2026 01:28:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='f3d8843c5a1b77ded3353e0df85d803d84b9faa5ece20673564e7c47fc4591d9';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:28:02 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:28:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:28:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 03:19:48 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 04 Aug 2026 03:19:48 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:19:48 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 04 Aug 2026 03:19:48 GMT
WORKDIR /usr/local/tomcat
# Tue, 04 Aug 2026 03:19:48 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 03:19:48 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 03:19:48 GMT
ENV TOMCAT_MAJOR=10
# Tue, 04 Aug 2026 03:19:48 GMT
ENV TOMCAT_VERSION=10.1.57
# Tue, 04 Aug 2026 03:19:48 GMT
ENV TOMCAT_SHA512=2fa1866ec647d4222b07ea937a4cc266adee219a1a8870107e72fc2349248dd1e32b157fa18108451f4c6e3b162f0fdfbdd11dd7855d4e49a2f0f609004a77f3
# Tue, 04 Aug 2026 03:19:48 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 04 Aug 2026 03:19:55 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:19:56 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 04 Aug 2026 03:19:56 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 04 Aug 2026 03:19:56 GMT
ENTRYPOINT []
# Tue, 04 Aug 2026 03:19:56 GMT
CMD ["catalina.sh" "run"]
# Tue, 04 Aug 2026 04:12:34 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Tue, 04 Aug 2026 04:12:34 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Tue, 04 Aug 2026 04:12:34 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Tue, 04 Aug 2026 04:12:34 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Tue, 04 Aug 2026 04:12:34 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Tue, 04 Aug 2026 04:12:34 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Tue, 04 Aug 2026 04:12:34 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1 &&   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 04:12:34 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Tue, 04 Aug 2026 04:12:34 GMT
ENV LIBREOFFICE_VERSION=25.8.7
# Tue, 04 Aug 2026 04:12:34 GMT
ENV LIBREOFFICE_SHA256_AMD64=7f4d7b2e36921eec5122c655249a24cc88935ee357e8261fd3bccd15aa1f7b9f
# Tue, 04 Aug 2026 04:12:34 GMT
ENV LIBREOFFICE_SHA256_ARM64=67e9b7dcdeae72c7aa1357345307e67376fc2b729a7f9ebfafb372b010e22ffa
# Tue, 04 Aug 2026 04:12:34 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/25.8.7/deb
# Tue, 04 Aug 2026 04:12:52 GMT
RUN LO_ARCH="$(dpkg --print-architecture)" &&   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac &&   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz" &&   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz &&   echo "$LO_SHA256 /tmp/libreoffice.tar.gz" | sha256sum -c - &&   mkdir -p /tmp/libreoffice &&   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz &&   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb &&   ln -fs $(ls -d /opt/libreoffice*) /opt/libreoffice &&   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Tue, 04 Aug 2026 04:12:52 GMT
ENV XWIKI_VERSION=18.6.0
# Tue, 04 Aug 2026 04:12:52 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.6.0
# Tue, 04 Aug 2026 04:12:52 GMT
ENV XWIKI_DOWNLOAD_SHA256=3f4d0210f57efd98be916379e18f4714c600312c22b288f20bbc0ff39a8a4fff
# Tue, 04 Aug 2026 04:13:14 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Tue, 04 Aug 2026 04:13:14 GMT
ENV MYSQL_JDBC_VERSION=9.7.0
# Tue, 04 Aug 2026 04:13:14 GMT
ENV MYSQL_JDBC_SHA256=0353648eaa1c91e0f4020c959abf756bc866ffd583df22ae6b6f6e0cbd43eb44
# Tue, 04 Aug 2026 04:13:14 GMT
ENV MYSQL_JDBC_PREFIX=https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/9.7.0
# Tue, 04 Aug 2026 04:13:14 GMT
ENV MYSQL_JDBC_ARTIFACT=mysql-connector-j-9.7.0.jar
# Tue, 04 Aug 2026 04:13:14 GMT
ENV MYSQL_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mysql-connector-j-9.7.0.jar
# Tue, 04 Aug 2026 04:13:14 GMT
RUN curl $CURL_OPTIONS "${MYSQL_JDBC_PREFIX}/${MYSQL_JDBC_ARTIFACT}" -o $MYSQL_JDBC_TARGET &&   echo "$MYSQL_JDBC_SHA256 $MYSQL_JDBC_TARGET" | sha256sum -c - # buildkit
# Tue, 04 Aug 2026 04:13:14 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Tue, 04 Aug 2026 04:13:14 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Tue, 04 Aug 2026 04:13:14 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Tue, 04 Aug 2026 04:13:14 GMT
RUN LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml &&   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new" &&   mv "$LOGBACK.new" "$LOGBACK" &&   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Tue, 04 Aug 2026 04:13:14 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Tue, 04 Aug 2026 04:13:15 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 04:13:15 GMT
VOLUME [/usr/local/xwiki]
# Tue, 04 Aug 2026 04:13:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:13:15 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40501aa6065f35c62f51a3adac24cd69021db23b6be3790cc06e85d984f303d`  
		Last Modified: Tue, 04 Aug 2026 01:28:15 GMT  
		Size: 17.0 MB (16950948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da155a57f6201a82fcc6a428ea6cf11db5bd715d1ab51f1e4a609f4ff00f5e81`  
		Last Modified: Tue, 04 Aug 2026 01:28:16 GMT  
		Size: 52.3 MB (52314863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6ffd2f8998c8f393f62d0792bd96ba7ae1b0d862070122182ac538504d1b7f9`  
		Last Modified: Tue, 04 Aug 2026 01:28:14 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acaf32fa9272cd80c33f65c6c8f50b0dfe08768f5557c2e5b49301ceb961268c`  
		Last Modified: Tue, 04 Aug 2026 01:28:14 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02494443538d90ad8be95a341396533073597bbf22465c7f0598d5e89dc62276`  
		Last Modified: Tue, 04 Aug 2026 03:20:05 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8390a7133686e043740ab13701d8c682f04272812d7b8930bc3e072b0c7dd4b`  
		Last Modified: Tue, 04 Aug 2026 03:20:05 GMT  
		Size: 14.4 MB (14362545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d1fcae21b6ac81b8d9a4bf8b61fe7b2a79825dea36dbb3e3e7aacc1082008a9`  
		Last Modified: Tue, 04 Aug 2026 03:20:05 GMT  
		Size: 225.6 KB (225625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b370d875734c2b7892ad2892ad175968ef0c586a2e5beca38f9d0c75a607ff`  
		Last Modified: Tue, 04 Aug 2026 04:14:02 GMT  
		Size: 22.7 MB (22737001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef00d08a8841a37d967e2a0d679877a5216795e7384243768304505d11bbb152`  
		Last Modified: Tue, 04 Aug 2026 04:14:12 GMT  
		Size: 289.5 MB (289482203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98de7a46923af2bfd032a8aeb9fb94a04585202d5d86803055c6d6c01b0114c9`  
		Last Modified: Tue, 04 Aug 2026 04:14:13 GMT  
		Size: 346.2 MB (346238268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7879564377df6f2affdfd2a6ae796c9d669d6e51e80e9c7a393c15f928d4469f`  
		Last Modified: Tue, 04 Aug 2026 04:14:00 GMT  
		Size: 2.4 MB (2446030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f9df272c2dcec474756258145ae747f86e48f64fd764fc402bd6b91484da843`  
		Last Modified: Tue, 04 Aug 2026 04:14:02 GMT  
		Size: 1.8 KB (1839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70b5fe681c4027233cb25a0587029e729f6fd889821c2ac6e0f4b8189441e4a0`  
		Last Modified: Tue, 04 Aug 2026 04:14:03 GMT  
		Size: 2.4 KB (2374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46d71c70afce5062aa93e3cac0aa3bc162e688614968eeb4aadd5a92dbceedd4`  
		Last Modified: Tue, 04 Aug 2026 04:14:03 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5829b7fa71d70539f817170e4ef0383c6369e161af27cbc676ceb93bfade4cb5`  
		Last Modified: Tue, 04 Aug 2026 04:14:04 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f35c52b208d4a954e438d9d2fbedf98793fb8bb3718ba2554413c7b064df3bd1`  
		Last Modified: Tue, 04 Aug 2026 04:14:04 GMT  
		Size: 11.0 KB (10999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e554037c9508f6b5257843e4c20eee5549219d25a513dc62c4e75aa8866116`  
		Last Modified: Tue, 04 Aug 2026 04:14:06 GMT  
		Size: 4.1 KB (4101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:stable-mysql` - unknown; unknown

```console
$ docker pull xwiki@sha256:c7f3f5abfaaa02cf6d4d532c6373f73a2639af1924c8afa9ac887ccb3506e657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14503569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9704c861de705caf5894118a01f8f1f8939b47dc65e184f4a1511ff3bda27b2`

```dockerfile
```

-	Layers:
	-	`sha256:9e0bd50065847bc7f1edcbf9d7e213ad1d9d83a460b6f7015d312901816ae260`  
		Last Modified: Tue, 04 Aug 2026 04:14:01 GMT  
		Size: 14.4 MB (14436349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:213ae7461b4fcdf84c20114863b1a1af4b0588e877cfce3fed5fa37338077f95`  
		Last Modified: Tue, 04 Aug 2026 04:14:00 GMT  
		Size: 67.2 KB (67220 bytes)  
		MIME: application/vnd.in-toto+json
