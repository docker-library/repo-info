## `xwiki:16-mariadb-tomcat`

```console
$ docker pull xwiki@sha256:b7c2b7069ba0a86b398969c9fc6f1fc0aa8a465898259d4ed4fe8f24ecbf32fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:16-mariadb-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:dfd56c11cc798ee4b3b19a082f9837ff85f8765b4d76a835724bfaac5d5b6c5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **760.3 MB (760263115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16ac2bd0e5cbcd4048def3ca41eefcf6ca553c55c5188a082fed3c9af376da3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:20:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:20:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:20:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:20:44 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:20:44 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 02:20:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8a379a67c91a3ae61ffb33d46e0a40c7ba35e70713c4db31cfca30492f792eff';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='5f9c96b656827b9d14ebeda7739e25be554fa6d25669b03847c1df6e869c0679';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='fe1b73886269d589336532c31c0db0d01ac7cd567313cfe3e76f02b37b58c068';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        riscv64)          ESUM='e1fabd17fd266409221323a754b0a5467a0bdc118b06302646f7b795cd49d95a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2ec0aecaec755ffa8c7904983f89873e51c28e683de39946ba49496acae8fe96';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:20:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:20:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:20:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 04:26:14 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 09 Sep 2026 04:26:14 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 04:26:14 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 09 Sep 2026 04:26:14 GMT
WORKDIR /usr/local/tomcat
# Wed, 09 Sep 2026 04:26:14 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 09 Sep 2026 04:26:14 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 09 Sep 2026 04:26:14 GMT
ENV TOMCAT_MAJOR=9
# Wed, 09 Sep 2026 04:26:14 GMT
ENV TOMCAT_VERSION=9.0.121
# Wed, 09 Sep 2026 04:26:14 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Wed, 09 Sep 2026 04:26:14 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 09 Sep 2026 04:26:23 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:26:24 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 09 Sep 2026 04:26:24 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 09 Sep 2026 04:26:24 GMT
ENTRYPOINT []
# Wed, 09 Sep 2026 04:26:24 GMT
CMD ["catalina.sh" "run"]
# Wed, 09 Sep 2026 05:14:08 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 09 Sep 2026 05:14:08 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 09 Sep 2026 05:14:08 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 09 Sep 2026 05:14:08 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 09 Sep 2026 05:14:08 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 09 Sep 2026 05:14:08 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 09 Sep 2026 05:14:08 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 05:14:08 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Wed, 09 Sep 2026 05:14:08 GMT
ENV LIBREOFFICE_VERSION=26.2.6
# Wed, 09 Sep 2026 05:14:08 GMT
ENV LIBREOFFICE_SHA256_AMD64=fd0e8f8f2408dd2e5b90286e60f3f97cf566ba441cd48cfc5bcc68067303e0bc
# Wed, 09 Sep 2026 05:14:08 GMT
ENV LIBREOFFICE_SHA256_ARM64=f8e8b1d30abde0d530d727ce1b26909ccbedc3d76bcf75d93b3dd5fcd5b8d278
# Wed, 09 Sep 2026 05:14:08 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.6/deb
# Wed, 09 Sep 2026 05:14:29 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Wed, 09 Sep 2026 05:14:29 GMT
ENV XWIKI_VERSION=16.10.18
# Wed, 09 Sep 2026 05:14:29 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/16.10.18
# Wed, 09 Sep 2026 05:14:29 GMT
ENV XWIKI_DOWNLOAD_SHA256=53de2ca1583d8d4b17d858b2b81b615dd29b08dbac73eecd2d61deae7afee5bf
# Wed, 09 Sep 2026 05:14:48 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Wed, 09 Sep 2026 05:14:48 GMT
ENV MARIADB_JDBC_VERSION=3.5.10
# Wed, 09 Sep 2026 05:14:48 GMT
ENV MARIADB_JDBC_SHA256=919b8c1c771d9ee3465811462f242c9543ab401e140c64988ddbf1d8abcb18b2
# Wed, 09 Sep 2026 05:14:48 GMT
ENV MARIADB_JDBC_PREFIX=https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/3.5.10
# Wed, 09 Sep 2026 05:14:48 GMT
ENV MARIADB_JDBC_ARTIFACT=mariadb-java-client-3.5.10.jar
# Wed, 09 Sep 2026 05:14:48 GMT
ENV MARIADB_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mariadb-java-client-3.5.10.jar
# Wed, 09 Sep 2026 05:14:48 GMT
RUN set -eux;   curl $CURL_OPTIONS "${MARIADB_JDBC_PREFIX}/${MARIADB_JDBC_ARTIFACT}" -o $MARIADB_JDBC_TARGET;   echo "$MARIADB_JDBC_SHA256 *$MARIADB_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Wed, 09 Sep 2026 05:14:48 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 09 Sep 2026 05:14:48 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 09 Sep 2026 05:14:48 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Wed, 09 Sep 2026 05:14:48 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Wed, 09 Sep 2026 05:14:48 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 09 Sep 2026 05:14:48 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 05:14:48 GMT
VOLUME [/usr/local/xwiki]
# Wed, 09 Sep 2026 05:14:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 05:14:48 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772850025094b770302a690dad677c0341d7733bbd4387f964b1a816a6bc3080`  
		Last Modified: Wed, 09 Sep 2026 02:21:01 GMT  
		Size: 16.9 MB (16946804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:290ba3f2ba3bdbc75176cb8a44004666ce51cb8e07926fb07cb1459d03344e74`  
		Last Modified: Wed, 09 Sep 2026 02:21:04 GMT  
		Size: 53.1 MB (53097607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f11fec0bf28c4fcfd24a36ba1e793f6d80612ca08135334d2529bc4cc74af53`  
		Last Modified: Wed, 09 Sep 2026 02:21:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6632003ddd870d8e553e0e8fda05617cc4b0a44048e3c5470bffa6d0985d72c`  
		Last Modified: Wed, 09 Sep 2026 02:21:00 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a916db86ad8525089746517911669ad29ddc445944823712ce4b15ad6a4f3d5f`  
		Last Modified: Wed, 09 Sep 2026 04:26:33 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfce45f6f90a8abc0294b8d9dc96086da51f7275941dddf8550a7b9e57f374c`  
		Last Modified: Wed, 09 Sep 2026 04:26:33 GMT  
		Size: 13.9 MB (13872764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d56bd1d8343a288fc651dac7cc769b809d9c8ab455721b8f0d0636cecd46bfd1`  
		Last Modified: Wed, 09 Sep 2026 04:26:33 GMT  
		Size: 225.3 KB (225271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cd023ca85e8e8a15090381a33d9a40091d3670b0f3911a69ca7d5a8a65eb564`  
		Last Modified: Wed, 09 Sep 2026 05:15:37 GMT  
		Size: 22.8 MB (22829548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd18944a31cc99acd563de8ec1b35ca3f2de27a63dcaa71d0c4b6e671cb697c6`  
		Last Modified: Wed, 09 Sep 2026 05:15:50 GMT  
		Size: 303.6 MB (303619477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d03871b4a79747c33217e1e1b13f07901b3882c5c2ba073c0b80e83b6783c287`  
		Last Modified: Wed, 09 Sep 2026 05:15:50 GMT  
		Size: 319.2 MB (319151561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d97e90f7e8d03f668637831c95387b3327d3d4f5063eff25ed6a3ebfb8832a`  
		Last Modified: Wed, 09 Sep 2026 05:15:35 GMT  
		Size: 735.5 KB (735465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fc2efdbe60b48ee4e93bcbae2108a563ae7131fefc21c0d98983d92fb4a4528`  
		Last Modified: Wed, 09 Sep 2026 05:15:36 GMT  
		Size: 1.8 KB (1838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc78518dffdf3417458af8b5cd3e99db144ba1a9482d55b758279d3c059746a`  
		Last Modified: Wed, 09 Sep 2026 05:15:38 GMT  
		Size: 2.3 KB (2310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4574f3189b8bd0e7bdf035105d9d39ebd427fbb38315a4e7e201c5fdca017619`  
		Last Modified: Wed, 09 Sep 2026 05:15:38 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2daa835d4ce2e3fece097ba24ec57b1d3362500b09a6d0de74eaff5687feb252`  
		Last Modified: Wed, 09 Sep 2026 05:15:39 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dbd6b0ce0631494ba351712cc6c8dc9b54cd28cf70df1c4371decc4fb8b5932`  
		Last Modified: Wed, 09 Sep 2026 05:15:40 GMT  
		Size: 6.8 KB (6770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbf32292d44b22583ac3da4fdc1f424e47ed4dcc62c5ed3d93d00451f4ae9970`  
		Last Modified: Wed, 09 Sep 2026 05:15:41 GMT  
		Size: 4.3 KB (4307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:16-mariadb-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:5ffc51844ac0d2e7985fe34dfa31a65cbc6fa88a1c93424b9b19e326d7bf9208
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14314098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1170f53f1f3e929c17d25b58aed88e73a2cbadb0db504a10ecc9f4900f7fed30`

```dockerfile
```

-	Layers:
	-	`sha256:21ecc7a74dab5f19d6817d842ee614e43131c3e76a84e35fd6bdc490463f3746`  
		Last Modified: Wed, 09 Sep 2026 05:15:36 GMT  
		Size: 14.2 MB (14248234 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf8d653ce0eb1c1f3bb91ce7f93c41ebac14bbc7f6aa4150f205f70a0e36a63b`  
		Last Modified: Wed, 09 Sep 2026 05:15:35 GMT  
		Size: 65.9 KB (65864 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:16-mariadb-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:3b6499e13a3f4b81d71f252a98edcae79832fcf62b8fe88ad0d030cb3c64a50e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **754.6 MB (754570612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8248b69adca8983f712643a9486ee8e859b7a4d13a5dd9589717d0f8d9c676a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:17:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:17:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:17:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:17:16 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:17:16 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 02:17:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8a379a67c91a3ae61ffb33d46e0a40c7ba35e70713c4db31cfca30492f792eff';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='5f9c96b656827b9d14ebeda7739e25be554fa6d25669b03847c1df6e869c0679';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='fe1b73886269d589336532c31c0db0d01ac7cd567313cfe3e76f02b37b58c068';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        riscv64)          ESUM='e1fabd17fd266409221323a754b0a5467a0bdc118b06302646f7b795cd49d95a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2ec0aecaec755ffa8c7904983f89873e51c28e683de39946ba49496acae8fe96';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:17:53 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:17:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:17:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 04:20:12 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 09 Sep 2026 04:20:12 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 04:20:12 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 09 Sep 2026 04:20:12 GMT
WORKDIR /usr/local/tomcat
# Wed, 09 Sep 2026 04:20:12 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 09 Sep 2026 04:20:12 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 09 Sep 2026 04:20:12 GMT
ENV TOMCAT_MAJOR=9
# Wed, 09 Sep 2026 04:20:12 GMT
ENV TOMCAT_VERSION=9.0.121
# Wed, 09 Sep 2026 04:20:12 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Wed, 09 Sep 2026 04:20:13 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 09 Sep 2026 04:20:19 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:20:20 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 09 Sep 2026 04:20:20 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 09 Sep 2026 04:20:20 GMT
ENTRYPOINT []
# Wed, 09 Sep 2026 04:20:20 GMT
CMD ["catalina.sh" "run"]
# Wed, 09 Sep 2026 05:14:01 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 09 Sep 2026 05:14:01 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 09 Sep 2026 05:14:01 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 09 Sep 2026 05:14:01 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 09 Sep 2026 05:14:01 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 09 Sep 2026 05:14:01 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 09 Sep 2026 05:14:01 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 05:14:01 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Wed, 09 Sep 2026 05:14:01 GMT
ENV LIBREOFFICE_VERSION=26.2.6
# Wed, 09 Sep 2026 05:14:01 GMT
ENV LIBREOFFICE_SHA256_AMD64=fd0e8f8f2408dd2e5b90286e60f3f97cf566ba441cd48cfc5bcc68067303e0bc
# Wed, 09 Sep 2026 05:14:01 GMT
ENV LIBREOFFICE_SHA256_ARM64=f8e8b1d30abde0d530d727ce1b26909ccbedc3d76bcf75d93b3dd5fcd5b8d278
# Wed, 09 Sep 2026 05:14:01 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.6/deb
# Wed, 09 Sep 2026 05:14:21 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Wed, 09 Sep 2026 05:14:21 GMT
ENV XWIKI_VERSION=16.10.18
# Wed, 09 Sep 2026 05:14:21 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/16.10.18
# Wed, 09 Sep 2026 05:14:21 GMT
ENV XWIKI_DOWNLOAD_SHA256=53de2ca1583d8d4b17d858b2b81b615dd29b08dbac73eecd2d61deae7afee5bf
# Wed, 09 Sep 2026 05:14:40 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Wed, 09 Sep 2026 05:14:40 GMT
ENV MARIADB_JDBC_VERSION=3.5.10
# Wed, 09 Sep 2026 05:14:40 GMT
ENV MARIADB_JDBC_SHA256=919b8c1c771d9ee3465811462f242c9543ab401e140c64988ddbf1d8abcb18b2
# Wed, 09 Sep 2026 05:14:40 GMT
ENV MARIADB_JDBC_PREFIX=https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/3.5.10
# Wed, 09 Sep 2026 05:14:40 GMT
ENV MARIADB_JDBC_ARTIFACT=mariadb-java-client-3.5.10.jar
# Wed, 09 Sep 2026 05:14:40 GMT
ENV MARIADB_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mariadb-java-client-3.5.10.jar
# Wed, 09 Sep 2026 05:14:40 GMT
RUN set -eux;   curl $CURL_OPTIONS "${MARIADB_JDBC_PREFIX}/${MARIADB_JDBC_ARTIFACT}" -o $MARIADB_JDBC_TARGET;   echo "$MARIADB_JDBC_SHA256 *$MARIADB_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Wed, 09 Sep 2026 05:14:40 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 09 Sep 2026 05:14:40 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 09 Sep 2026 05:14:40 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Wed, 09 Sep 2026 05:14:40 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Wed, 09 Sep 2026 05:14:40 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 09 Sep 2026 05:14:40 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 05:14:40 GMT
VOLUME [/usr/local/xwiki]
# Wed, 09 Sep 2026 05:14:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 05:14:40 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ca2a7a366901ef7c2eb6ddfea86df8ef093f952c6d6d09d25f8bdeb941f352c`  
		Last Modified: Wed, 09 Sep 2026 02:17:41 GMT  
		Size: 17.0 MB (16954989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e45c970b059562399b43b5f085417eda2a1b0f20d9bc9d0d2d7fbeb2ae534981`  
		Last Modified: Wed, 09 Sep 2026 02:18:07 GMT  
		Size: 52.3 MB (52273641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41b7ffac32a64aa17c9ca560bb8807207e1dc100ad08139ce6bcf778e207d222`  
		Last Modified: Wed, 09 Sep 2026 02:18:05 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5dab19d890b92e5fa3e57624d571dc0373a00de9c113685f7bef108ca8abf9`  
		Last Modified: Wed, 09 Sep 2026 02:18:06 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eb6efa125bc1050218ad0c580646f4d0d3bfb9b1cf176cc6eac16f3bf81e0f0`  
		Last Modified: Wed, 09 Sep 2026 04:20:30 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c52d46c5368daea4e7f3d6f7d6c1bf513e7556a5420ca9a92d2265188a3248b`  
		Last Modified: Wed, 09 Sep 2026 04:20:30 GMT  
		Size: 13.9 MB (13881699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc5b529331fdcfd3ddafda05d8a37f1fa8a285548f6911b268d428352dc04977`  
		Last Modified: Wed, 09 Sep 2026 04:20:30 GMT  
		Size: 225.6 KB (225636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2770fd56e82deeb3a8592e8dc07fd5896f5f267bf190f3ab8f1a4e57acedd03b`  
		Last Modified: Wed, 09 Sep 2026 05:15:28 GMT  
		Size: 22.7 MB (22737211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dda613d2e197afd82a226787c28b99bc75874f7b5aade613a4c4dbea4e58da98`  
		Last Modified: Wed, 09 Sep 2026 05:15:37 GMT  
		Size: 299.6 MB (299648954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fbd355f367bc7f8f1395217f1ea0f520435a05737a17892ffaf376d57d7eb4d`  
		Last Modified: Wed, 09 Sep 2026 05:15:37 GMT  
		Size: 319.2 MB (319151668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0897ad6c729a7913502a538fd3240672f673b724631b124c45d0a9c2276ce21e`  
		Last Modified: Wed, 09 Sep 2026 05:15:27 GMT  
		Size: 735.5 KB (735455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57db81ba702e2431c0fae6f3d74defff553ed9d4e845434e2c6a8f4a82e0e09d`  
		Last Modified: Wed, 09 Sep 2026 05:15:28 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5becb806632664dab0f34c04a5f15d8725aaf78036d57d8a1ea875c23b98cb22`  
		Last Modified: Wed, 09 Sep 2026 05:15:29 GMT  
		Size: 2.3 KB (2305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146bc4b9fc0c29ab0cb8480acf2a8698719dc9b7972ca5a3895fe1dcf640b334`  
		Last Modified: Wed, 09 Sep 2026 05:15:30 GMT  
		Size: 873.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0caebbe2fc532ba6c2454b62cba68af5859a4627c9034d6d01f5a3acde9ed6f3`  
		Last Modified: Wed, 09 Sep 2026 05:15:30 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8222e734ef4602134bda7f16f2f0e800c6afeed7cb479477ec8f9047b4d6675a`  
		Last Modified: Wed, 09 Sep 2026 05:15:31 GMT  
		Size: 6.8 KB (6767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fbbf12558c3598eaffba48c875d5b14516279b401b24d83d2392f016f0332de`  
		Last Modified: Wed, 09 Sep 2026 05:15:32 GMT  
		Size: 4.3 KB (4301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:16-mariadb-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:92f05842a14bba056f30c23575037e7ee58bd381e28671f803dd057d88c333fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14314845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70739469fd65b8e60c90d5198443076704f5901e429601053128f6065707d7b5`

```dockerfile
```

-	Layers:
	-	`sha256:084a8032cdd61b9be40ca304921d08d186b7e4b423cd84466cc6683363757b5d`  
		Last Modified: Wed, 09 Sep 2026 05:15:27 GMT  
		Size: 14.2 MB (14248814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78f9c428e45986b985e99524ed5a3e4365c548bb74545fdb90d6ec5f6beb4601`  
		Last Modified: Wed, 09 Sep 2026 05:15:26 GMT  
		Size: 66.0 KB (66031 bytes)  
		MIME: application/vnd.in-toto+json
