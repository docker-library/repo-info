## `xwiki:lts-mysql-tomcat`

```console
$ docker pull xwiki@sha256:b46f9542088713c98195c8028c47e6d8aa40e45f33f1a3cca8b914f091cc937c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:lts-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:27b622d94f765b57fde218a33806c34e7a894f9086592602f224f8f0a361bc4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **768.2 MB (768152754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a79bd2d51ad5f98566d199f4658d315dbdd40f37641067be8208dd6fbea14635`
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
# Wed, 12 Aug 2026 17:23:11 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 12 Aug 2026 17:23:11 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 12 Aug 2026 17:23:11 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 12 Aug 2026 17:23:11 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 12 Aug 2026 17:23:11 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 12 Aug 2026 17:23:11 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 12 Aug 2026 17:23:11 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:23:11 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Wed, 12 Aug 2026 17:23:11 GMT
ENV LIBREOFFICE_VERSION=25.8.7
# Wed, 12 Aug 2026 17:23:11 GMT
ENV LIBREOFFICE_SHA256_AMD64=7f4d7b2e36921eec5122c655249a24cc88935ee357e8261fd3bccd15aa1f7b9f
# Wed, 12 Aug 2026 17:23:11 GMT
ENV LIBREOFFICE_SHA256_ARM64=67e9b7dcdeae72c7aa1357345307e67376fc2b729a7f9ebfafb372b010e22ffa
# Wed, 12 Aug 2026 17:23:11 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/25.8.7/deb
# Wed, 12 Aug 2026 17:23:35 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Wed, 12 Aug 2026 17:23:35 GMT
ENV XWIKI_VERSION=17.10.12
# Wed, 12 Aug 2026 17:23:35 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.12
# Wed, 12 Aug 2026 17:23:35 GMT
ENV XWIKI_DOWNLOAD_SHA256=68ce377fa59b2bd411eef863ab1216d08b63803b0a26264b3b00679fa0183ead
# Wed, 12 Aug 2026 17:23:59 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Wed, 12 Aug 2026 17:23:59 GMT
ENV MYSQL_JDBC_VERSION=26.7.0
# Wed, 12 Aug 2026 17:23:59 GMT
ENV MYSQL_JDBC_SHA256=69084713593a4aa8d07c383619b9639276f08bccf8faf1c562178147d389b1e1
# Wed, 12 Aug 2026 17:23:59 GMT
ENV MYSQL_JDBC_PREFIX=https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/26.7.0
# Wed, 12 Aug 2026 17:23:59 GMT
ENV MYSQL_JDBC_ARTIFACT=mysql-connector-j-26.7.0.jar
# Wed, 12 Aug 2026 17:23:59 GMT
ENV MYSQL_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mysql-connector-j-26.7.0.jar
# Wed, 12 Aug 2026 17:23:59 GMT
RUN set -eux;   curl $CURL_OPTIONS "${MYSQL_JDBC_PREFIX}/${MYSQL_JDBC_ARTIFACT}" -o $MYSQL_JDBC_TARGET;   echo "$MYSQL_JDBC_SHA256 *$MYSQL_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Wed, 12 Aug 2026 17:23:59 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 12 Aug 2026 17:23:59 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 12 Aug 2026 17:23:59 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Wed, 12 Aug 2026 17:23:59 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Wed, 12 Aug 2026 17:23:59 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 12 Aug 2026 17:23:59 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 12 Aug 2026 17:23:59 GMT
VOLUME [/usr/local/xwiki]
# Wed, 12 Aug 2026 17:23:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:23:59 GMT
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
	-	`sha256:2498af915c4ab2f45ce809b2807f8673808d0dead33f7f1152bf453009551bb1`  
		Last Modified: Wed, 12 Aug 2026 17:24:45 GMT  
		Size: 22.8 MB (22829654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb7ab17f11512890e1650e8689d45403122afecb1d76f9b23f94e27760954cd3`  
		Last Modified: Wed, 12 Aug 2026 17:24:59 GMT  
		Size: 297.5 MB (297472422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7e6adebc9dbc60bdddc58ae0df3ac9fd6bcd09e9ab6139446626208ad4715f9`  
		Last Modified: Wed, 12 Aug 2026 17:25:00 GMT  
		Size: 328.6 MB (328568855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c1ffa69849710f9719e24376805a04d987a9ea69e8e562771518550773d43a7`  
		Last Modified: Wed, 12 Aug 2026 17:24:44 GMT  
		Size: 2.5 MB (2451646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea23776af5c02af90cf1043471301b64a53dc1ff7b109a6c2754b7d833416964`  
		Last Modified: Wed, 12 Aug 2026 17:24:45 GMT  
		Size: 1.8 KB (1839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96a7cb2800884a25cdb4e1d2862a89c00e1987e02408ecd0e9b2e345db133bc8`  
		Last Modified: Wed, 12 Aug 2026 17:24:47 GMT  
		Size: 2.4 KB (2373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c94e3df2346d87018fa6acb0744dc11446167a4303b9d8b46504a58e9ff32b`  
		Last Modified: Wed, 12 Aug 2026 17:24:47 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db1e39aff49df4ef6eac7038559ed9684ca25d7f8fcc7e3dad5224e21ef7519`  
		Last Modified: Wed, 12 Aug 2026 17:24:48 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deeaa7781556b6a76e14243aaccc99b7190b0db8687a41730cb202bab67bfee9`  
		Last Modified: Wed, 12 Aug 2026 17:24:49 GMT  
		Size: 10.8 KB (10779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00da9243a58a9e1555dd3fbb2c46016fe8eed3aa0744a6f288673187df5ea50f`  
		Last Modified: Wed, 12 Aug 2026 17:24:50 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:lts-mysql-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:586b0023b49d1714aa2f66e4f108165bbc201ab3e636f80b49a1f9711c666b83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14484385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8094faa87a5436cb4e3661131dc69bfec81bf9262c1ff29349f36a4bb012db`

```dockerfile
```

-	Layers:
	-	`sha256:5a7b013e7bc6333888f767581b1f94aedf7ee6c4aa077f93afeb29ba0d6cae45`  
		Last Modified: Wed, 12 Aug 2026 17:24:44 GMT  
		Size: 14.4 MB (14416806 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90a6829b8c9bab9a80c636ba1f6619026a98b9fcfbba33d703d95de5a9722cfd`  
		Last Modified: Wed, 12 Aug 2026 17:24:43 GMT  
		Size: 67.6 KB (67579 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:lts-mysql-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:261c4f06812bce8c250bd5147b94424c899b092a5c2624015cd5d0f13d7e2322
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **756.0 MB (756005767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3290609d69e492a575dbb215d730573225b9202cf39a6b84fe3333502daf34e7`
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
# Wed, 12 Aug 2026 17:23:22 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 12 Aug 2026 17:23:22 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 12 Aug 2026 17:23:22 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 12 Aug 2026 17:23:22 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 12 Aug 2026 17:23:22 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 12 Aug 2026 17:23:22 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 12 Aug 2026 17:23:22 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:23:22 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Wed, 12 Aug 2026 17:23:22 GMT
ENV LIBREOFFICE_VERSION=25.8.7
# Wed, 12 Aug 2026 17:23:22 GMT
ENV LIBREOFFICE_SHA256_AMD64=7f4d7b2e36921eec5122c655249a24cc88935ee357e8261fd3bccd15aa1f7b9f
# Wed, 12 Aug 2026 17:23:22 GMT
ENV LIBREOFFICE_SHA256_ARM64=67e9b7dcdeae72c7aa1357345307e67376fc2b729a7f9ebfafb372b010e22ffa
# Wed, 12 Aug 2026 17:23:22 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/25.8.7/deb
# Wed, 12 Aug 2026 17:23:48 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Wed, 12 Aug 2026 17:23:48 GMT
ENV XWIKI_VERSION=17.10.12
# Wed, 12 Aug 2026 17:23:48 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.12
# Wed, 12 Aug 2026 17:23:48 GMT
ENV XWIKI_DOWNLOAD_SHA256=68ce377fa59b2bd411eef863ab1216d08b63803b0a26264b3b00679fa0183ead
# Wed, 12 Aug 2026 17:24:08 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Wed, 12 Aug 2026 17:24:08 GMT
ENV MYSQL_JDBC_VERSION=26.7.0
# Wed, 12 Aug 2026 17:24:08 GMT
ENV MYSQL_JDBC_SHA256=69084713593a4aa8d07c383619b9639276f08bccf8faf1c562178147d389b1e1
# Wed, 12 Aug 2026 17:24:08 GMT
ENV MYSQL_JDBC_PREFIX=https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/26.7.0
# Wed, 12 Aug 2026 17:24:08 GMT
ENV MYSQL_JDBC_ARTIFACT=mysql-connector-j-26.7.0.jar
# Wed, 12 Aug 2026 17:24:08 GMT
ENV MYSQL_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mysql-connector-j-26.7.0.jar
# Wed, 12 Aug 2026 17:24:08 GMT
RUN set -eux;   curl $CURL_OPTIONS "${MYSQL_JDBC_PREFIX}/${MYSQL_JDBC_ARTIFACT}" -o $MYSQL_JDBC_TARGET;   echo "$MYSQL_JDBC_SHA256 *$MYSQL_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Wed, 12 Aug 2026 17:24:08 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 12 Aug 2026 17:24:08 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 12 Aug 2026 17:24:08 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Wed, 12 Aug 2026 17:24:08 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Wed, 12 Aug 2026 17:24:08 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 12 Aug 2026 17:24:08 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 12 Aug 2026 17:24:08 GMT
VOLUME [/usr/local/xwiki]
# Wed, 12 Aug 2026 17:24:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:24:08 GMT
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
	-	`sha256:ea194cc6354018eb8cd619a969cf5b7e5e071d7ea8a1f34ad7039f8a5ebfb869`  
		Last Modified: Wed, 12 Aug 2026 17:24:55 GMT  
		Size: 22.7 MB (22737094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090384f0a79057088d1be0d8a8a71e0f21b085f5b8ba11671d49949a6c50b016`  
		Last Modified: Wed, 12 Aug 2026 17:25:07 GMT  
		Size: 289.5 MB (289482109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e028228df117a529558f2c50959318114a09e20f2c4c25acb946819f414f65b3`  
		Last Modified: Wed, 12 Aug 2026 17:25:08 GMT  
		Size: 328.6 MB (328568816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d4f0b1802ec4e3e3922755e3e1c6fd3327596f6943b5a0bcbd7ea77b68cb569`  
		Last Modified: Wed, 12 Aug 2026 17:24:54 GMT  
		Size: 2.5 MB (2451654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43faecef634e34559f393fba60869ae18eef2963920123d45834faad06cf17b0`  
		Last Modified: Wed, 12 Aug 2026 17:24:56 GMT  
		Size: 1.8 KB (1841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff05a2ac77c0d80405013207973e3647ac02311b221202e8019779c8c4080745`  
		Last Modified: Wed, 12 Aug 2026 17:24:57 GMT  
		Size: 2.4 KB (2373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364ee4f995a32c91e451a3397e381fc07dfea21189f0406c8ce0f7ffc247d579`  
		Last Modified: Wed, 12 Aug 2026 17:24:57 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de9534450e5f15cc03da1ccbad836d27c3e5c669e2c7117d8f8e70eaf949f03`  
		Last Modified: Wed, 12 Aug 2026 17:24:59 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68bbe7f353c2605d588e94de9ef98d428677b989d82ea4bc2a738e0b2dd50f6e`  
		Last Modified: Wed, 12 Aug 2026 17:24:59 GMT  
		Size: 10.8 KB (10778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772f2b1cde695ea519f6d23551006ab3176131d8922997b2a5d81fe5120a249e`  
		Last Modified: Wed, 12 Aug 2026 17:25:00 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:lts-mysql-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:1fb1871e2eda72ea73dbbb14bb0adca815006e1fefd27def61133f4874f8c02a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14485273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a9d1ffe110705d3a94a3663257a2551242e217f6c65ee00b78bdb0df80258aa`

```dockerfile
```

-	Layers:
	-	`sha256:3d876f2ef505c26da21693dae4aa3c3ee2c36f049541e2771b6cfb7743d58921`  
		Last Modified: Wed, 12 Aug 2026 17:24:55 GMT  
		Size: 14.4 MB (14417456 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b14aa6a81a2fbe3eedfa8e400263dd43b00fef986427625fcef01e9a5ea135e`  
		Last Modified: Wed, 12 Aug 2026 17:24:54 GMT  
		Size: 67.8 KB (67817 bytes)  
		MIME: application/vnd.in-toto+json
