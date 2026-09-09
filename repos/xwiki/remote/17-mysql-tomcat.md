## `xwiki:17-mysql-tomcat`

```console
$ docker pull xwiki@sha256:38ee832b392d16dcdeff9ff13c474fd1e5a3a03cc5a990ce3c383e1e54b6698b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:17-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:a6ed9bcd95b6c8858121a0eecd611dc5d73b88fbadc6dd064643371acb4621b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **771.9 MB (771909649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4a7925730996091fa55a54d83cb242af5cf1f3a79954ca49fdeec78028e2f1f`
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
# Wed, 09 Sep 2026 04:25:40 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 09 Sep 2026 04:25:40 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 04:25:40 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 09 Sep 2026 04:25:40 GMT
WORKDIR /usr/local/tomcat
# Wed, 09 Sep 2026 04:25:40 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 09 Sep 2026 04:25:40 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 09 Sep 2026 04:25:40 GMT
ENV TOMCAT_MAJOR=10
# Wed, 09 Sep 2026 04:25:40 GMT
ENV TOMCAT_VERSION=10.1.59
# Wed, 09 Sep 2026 04:25:40 GMT
ENV TOMCAT_SHA512=992a8e88fc9c0338445f018a1e4a2757c9e71708dba795e2864c9b1613f2b3b9b19c048e787682deae6d6bff9971defc746e31282085d52ef1d32192e09f7a0f
# Wed, 09 Sep 2026 04:25:40 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 09 Sep 2026 04:25:45 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:25:46 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 09 Sep 2026 04:25:46 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 09 Sep 2026 04:25:46 GMT
ENTRYPOINT []
# Wed, 09 Sep 2026 04:25:46 GMT
CMD ["catalina.sh" "run"]
# Wed, 09 Sep 2026 05:13:15 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 09 Sep 2026 05:13:15 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 09 Sep 2026 05:13:15 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 09 Sep 2026 05:13:15 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 09 Sep 2026 05:13:15 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 09 Sep 2026 05:13:15 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 09 Sep 2026 05:13:15 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 05:13:15 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Wed, 09 Sep 2026 05:13:15 GMT
ENV LIBREOFFICE_VERSION=26.2.6
# Wed, 09 Sep 2026 05:13:15 GMT
ENV LIBREOFFICE_SHA256_AMD64=fd0e8f8f2408dd2e5b90286e60f3f97cf566ba441cd48cfc5bcc68067303e0bc
# Wed, 09 Sep 2026 05:13:15 GMT
ENV LIBREOFFICE_SHA256_ARM64=f8e8b1d30abde0d530d727ce1b26909ccbedc3d76bcf75d93b3dd5fcd5b8d278
# Wed, 09 Sep 2026 05:13:15 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.6/deb
# Wed, 09 Sep 2026 05:13:37 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Wed, 09 Sep 2026 05:13:37 GMT
ENV XWIKI_VERSION=17.10.12
# Wed, 09 Sep 2026 05:13:37 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.12
# Wed, 09 Sep 2026 05:13:37 GMT
ENV XWIKI_DOWNLOAD_SHA256=68ce377fa59b2bd411eef863ab1216d08b63803b0a26264b3b00679fa0183ead
# Wed, 09 Sep 2026 05:13:56 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Wed, 09 Sep 2026 05:13:56 GMT
ENV MYSQL_JDBC_VERSION=26.7.0
# Wed, 09 Sep 2026 05:13:56 GMT
ENV MYSQL_JDBC_SHA256=69084713593a4aa8d07c383619b9639276f08bccf8faf1c562178147d389b1e1
# Wed, 09 Sep 2026 05:13:56 GMT
ENV MYSQL_JDBC_PREFIX=https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/26.7.0
# Wed, 09 Sep 2026 05:13:56 GMT
ENV MYSQL_JDBC_ARTIFACT=mysql-connector-j-26.7.0.jar
# Wed, 09 Sep 2026 05:13:56 GMT
ENV MYSQL_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mysql-connector-j-26.7.0.jar
# Wed, 09 Sep 2026 05:13:57 GMT
RUN set -eux;   curl $CURL_OPTIONS "${MYSQL_JDBC_PREFIX}/${MYSQL_JDBC_ARTIFACT}" -o $MYSQL_JDBC_TARGET;   echo "$MYSQL_JDBC_SHA256 *$MYSQL_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Wed, 09 Sep 2026 05:13:57 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 09 Sep 2026 05:13:57 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 09 Sep 2026 05:13:57 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Wed, 09 Sep 2026 05:13:57 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Wed, 09 Sep 2026 05:13:57 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 09 Sep 2026 05:13:57 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 05:13:57 GMT
VOLUME [/usr/local/xwiki]
# Wed, 09 Sep 2026 05:13:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 05:13:57 GMT
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
	-	`sha256:84a22299dcfbf44a4a0391c07bb1a1e9c7915d2d85424c5798c16ee29036832a`  
		Last Modified: Wed, 09 Sep 2026 04:25:53 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b37c997d403cdd171b59deca4775b913e2cae1b54a41f13a622bd3fcc1bc5f2d`  
		Last Modified: Wed, 09 Sep 2026 04:25:54 GMT  
		Size: 14.4 MB (14382228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf2b16a6991a5e74e4d467388bce0db85f5fb73f993dd4a23e1ec086995795f2`  
		Last Modified: Wed, 09 Sep 2026 04:25:54 GMT  
		Size: 225.2 KB (225239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ec2a7f63978e9f82be7309248ac69ea7b62b1464b2d836f92e9f772536cb97f`  
		Last Modified: Wed, 09 Sep 2026 05:14:43 GMT  
		Size: 22.8 MB (22829597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d58b1f71bb63d449ae0ead345302d0b70741c4df85c994a534aaa6f813144b42`  
		Last Modified: Wed, 09 Sep 2026 05:14:51 GMT  
		Size: 303.6 MB (303619112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d5d2a5834d14ca2a13df47c86785cf44f7594473444a7cdf24013b061af1713`  
		Last Modified: Wed, 09 Sep 2026 05:14:52 GMT  
		Size: 328.6 MB (328568696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b770dc2606d3182693b5d9455c1dc9338c5157a428f8d5d9fd3f68fc771cf76`  
		Last Modified: Wed, 09 Sep 2026 05:14:42 GMT  
		Size: 2.5 MB (2451648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7e42424e747235b0cf943934c663d5c1811d959cec422b022d484e1e4608d6`  
		Last Modified: Wed, 09 Sep 2026 05:14:43 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f9045995971a59f6f5daef6773815a9886819363eb7a5c8820b748a7ef66ea`  
		Last Modified: Wed, 09 Sep 2026 05:14:44 GMT  
		Size: 2.4 KB (2372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef3f16b70c94f85b771bba591cd473524f1e1971739c265d097f4eee93c75e96`  
		Last Modified: Wed, 09 Sep 2026 05:14:44 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faff1f6258688321aa6f6591a33d78581a6a730606f7c0daba73c9d1e84feb4c`  
		Last Modified: Wed, 09 Sep 2026 05:14:45 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da464ca2a145c420f54704d2883e45255564b9922777456fd2108844c2677446`  
		Last Modified: Wed, 09 Sep 2026 05:14:45 GMT  
		Size: 10.8 KB (10778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7365fea47df369d72749b422507c1954761454d0cbe143b85664e53a8f4f0ab`  
		Last Modified: Wed, 09 Sep 2026 05:14:47 GMT  
		Size: 4.3 KB (4340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:17-mysql-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:e6fbb4b7d886a2efa960802dbe82bb05895e4a3472a5b04a2519bf9b8f7b3a14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14386269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cabf092f286ec6ecb27c415cefdbe00311baec7f7550e0e93f89f0ca13e8d847`

```dockerfile
```

-	Layers:
	-	`sha256:001b4a5ddf54ca9fae3517bf6246370a8248639b5834f33ed67f4377507fadbd`  
		Last Modified: Wed, 09 Sep 2026 05:14:42 GMT  
		Size: 14.3 MB (14318744 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ac22839c4788596b451d2c096b9ce306e6028698c8eb4eaf994cdeeda20e838`  
		Last Modified: Wed, 09 Sep 2026 05:14:41 GMT  
		Size: 67.5 KB (67525 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:17-mysql-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:c514725dec24a11aeb3d5328a71e71aaf85715de87cb68f07a0b99d37eb5cac7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **766.2 MB (766210293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:291f691fe4efa22ec0c78f5ac86602f736d46e03eaa63a337fb15bffde40749a`
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
# Wed, 09 Sep 2026 04:18:54 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 09 Sep 2026 04:18:54 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 04:18:54 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 09 Sep 2026 04:18:54 GMT
WORKDIR /usr/local/tomcat
# Wed, 09 Sep 2026 04:18:54 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 09 Sep 2026 04:18:54 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 09 Sep 2026 04:18:54 GMT
ENV TOMCAT_MAJOR=10
# Wed, 09 Sep 2026 04:18:54 GMT
ENV TOMCAT_VERSION=10.1.59
# Wed, 09 Sep 2026 04:18:54 GMT
ENV TOMCAT_SHA512=992a8e88fc9c0338445f018a1e4a2757c9e71708dba795e2864c9b1613f2b3b9b19c048e787682deae6d6bff9971defc746e31282085d52ef1d32192e09f7a0f
# Wed, 09 Sep 2026 04:19:21 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 09 Sep 2026 04:19:29 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:19:29 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 09 Sep 2026 04:19:29 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 09 Sep 2026 04:19:29 GMT
ENTRYPOINT []
# Wed, 09 Sep 2026 04:19:29 GMT
CMD ["catalina.sh" "run"]
# Wed, 09 Sep 2026 05:12:55 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 09 Sep 2026 05:12:55 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 09 Sep 2026 05:12:55 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 09 Sep 2026 05:12:55 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 09 Sep 2026 05:12:55 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 09 Sep 2026 05:12:55 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 09 Sep 2026 05:12:55 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 05:12:55 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Wed, 09 Sep 2026 05:12:55 GMT
ENV LIBREOFFICE_VERSION=26.2.6
# Wed, 09 Sep 2026 05:12:55 GMT
ENV LIBREOFFICE_SHA256_AMD64=fd0e8f8f2408dd2e5b90286e60f3f97cf566ba441cd48cfc5bcc68067303e0bc
# Wed, 09 Sep 2026 05:12:55 GMT
ENV LIBREOFFICE_SHA256_ARM64=f8e8b1d30abde0d530d727ce1b26909ccbedc3d76bcf75d93b3dd5fcd5b8d278
# Wed, 09 Sep 2026 05:12:55 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.6/deb
# Wed, 09 Sep 2026 05:13:13 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Wed, 09 Sep 2026 05:13:13 GMT
ENV XWIKI_VERSION=17.10.12
# Wed, 09 Sep 2026 05:13:13 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.12
# Wed, 09 Sep 2026 05:13:13 GMT
ENV XWIKI_DOWNLOAD_SHA256=68ce377fa59b2bd411eef863ab1216d08b63803b0a26264b3b00679fa0183ead
# Wed, 09 Sep 2026 05:13:33 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Wed, 09 Sep 2026 05:13:33 GMT
ENV MYSQL_JDBC_VERSION=26.7.0
# Wed, 09 Sep 2026 05:13:33 GMT
ENV MYSQL_JDBC_SHA256=69084713593a4aa8d07c383619b9639276f08bccf8faf1c562178147d389b1e1
# Wed, 09 Sep 2026 05:13:33 GMT
ENV MYSQL_JDBC_PREFIX=https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/26.7.0
# Wed, 09 Sep 2026 05:13:33 GMT
ENV MYSQL_JDBC_ARTIFACT=mysql-connector-j-26.7.0.jar
# Wed, 09 Sep 2026 05:13:33 GMT
ENV MYSQL_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mysql-connector-j-26.7.0.jar
# Wed, 09 Sep 2026 05:13:33 GMT
RUN set -eux;   curl $CURL_OPTIONS "${MYSQL_JDBC_PREFIX}/${MYSQL_JDBC_ARTIFACT}" -o $MYSQL_JDBC_TARGET;   echo "$MYSQL_JDBC_SHA256 *$MYSQL_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Wed, 09 Sep 2026 05:13:33 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 09 Sep 2026 05:13:33 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 09 Sep 2026 05:13:33 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Wed, 09 Sep 2026 05:13:34 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Wed, 09 Sep 2026 05:13:34 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 09 Sep 2026 05:13:34 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 05:13:34 GMT
VOLUME [/usr/local/xwiki]
# Wed, 09 Sep 2026 05:13:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 05:13:34 GMT
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
	-	`sha256:b58016a4bfa07895c9607f40aa15aeed8d79dcc73a93af83be79a956a03000d1`  
		Last Modified: Wed, 09 Sep 2026 04:19:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d1afa89c71f8b0f64576a4e579c4890b150948b15eaa803f311151661159aa6`  
		Last Modified: Wed, 09 Sep 2026 04:19:38 GMT  
		Size: 14.4 MB (14384034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cbf1ff55bd7e03a33ec8fc5236d3f3cc9261dfead03a2e052812df35614754d`  
		Last Modified: Wed, 09 Sep 2026 04:19:38 GMT  
		Size: 225.7 KB (225654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:240a8cbf676d6e4135c0c82a6309f5f8cea7ce14e1da135e611d48522b423818`  
		Last Modified: Wed, 09 Sep 2026 05:14:21 GMT  
		Size: 22.7 MB (22737144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe2c249972ea41997170b52c0a81c217c34ddeef11c6df2ce150748b02de0f35`  
		Last Modified: Wed, 09 Sep 2026 05:14:29 GMT  
		Size: 299.6 MB (299648992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64dd923685f33121d80071e5af5ef96e9594c0281bb0fee84f226856efcfb834`  
		Last Modified: Wed, 09 Sep 2026 05:14:29 GMT  
		Size: 328.6 MB (328568708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2141c4bd1ae0b22bd33a07697f1e1f686b38e2fe4c978046c63d6f7c19d3f52`  
		Last Modified: Wed, 09 Sep 2026 05:14:20 GMT  
		Size: 2.5 MB (2451650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f543990bbfa1e15559c0fdd457befd121be825ae3860fd5c090fcae4a0e41d38`  
		Last Modified: Wed, 09 Sep 2026 05:14:21 GMT  
		Size: 1.8 KB (1839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96f2c35981d4e97b384e9976cc7840c5792639daad212b2549b5040b3af16b4`  
		Last Modified: Wed, 09 Sep 2026 05:14:22 GMT  
		Size: 2.4 KB (2370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aeef3108c7a381a6fdccc1cedeb29dc6a572cc04947ad7d9f70b0d803973cc5`  
		Last Modified: Wed, 09 Sep 2026 05:14:22 GMT  
		Size: 874.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f1a5eda6a19c1ffe94876bdd6ab08f212246840b1664b923f3900d132d09d2f`  
		Last Modified: Wed, 09 Sep 2026 05:14:23 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9bad11fa503b17eaefe65958d9ee6a7fc120f48c0fd62f9f0fa57aeb73d002`  
		Last Modified: Wed, 09 Sep 2026 05:14:24 GMT  
		Size: 10.8 KB (10779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef164ca1c489ba84c2f3d51d81b8779b53a828fe48519340f1f93435dd62003`  
		Last Modified: Wed, 09 Sep 2026 05:14:25 GMT  
		Size: 4.3 KB (4335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:17-mysql-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:486be2a76bd76bfe26a45c0fa69ed00391c5594ff47f55f695c046db9ace1987
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14387160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2765a9f6d7ffaf7b9546f38e1d3619add0f391c21f8ff98fd22c893a9189d384`

```dockerfile
```

-	Layers:
	-	`sha256:652edbede2077be8453bb7f6865e58e471c3a099f2c449467e01c1a42f6ec816`  
		Last Modified: Wed, 09 Sep 2026 05:14:20 GMT  
		Size: 14.3 MB (14319396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34648b4c48c97de369f48389984ddbe79c2d9e7d3a92809cbb219cb1a70b196f`  
		Last Modified: Wed, 09 Sep 2026 05:14:19 GMT  
		Size: 67.8 KB (67764 bytes)  
		MIME: application/vnd.in-toto+json
