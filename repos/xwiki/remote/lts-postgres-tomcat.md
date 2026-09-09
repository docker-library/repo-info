## `xwiki:lts-postgres-tomcat`

```console
$ docker pull xwiki@sha256:2d6552d92255f24556aaf37ad9cfe32c07f701069347fd0f1f59b7dcac156a2f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:lts-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:784d1dc33f139c981c98ceb30dc2257acacc3c1857491c79d61f26d67f7e23ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **770.6 MB (770600597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f662fc350fa89dffceec455e02bc4e754db2a959b58432baa5b418e80e33b6c0`
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
# Wed, 09 Sep 2026 05:13:17 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 09 Sep 2026 05:13:17 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 09 Sep 2026 05:13:17 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 09 Sep 2026 05:13:17 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 09 Sep 2026 05:13:17 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 09 Sep 2026 05:13:17 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 09 Sep 2026 05:13:17 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 05:13:17 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Wed, 09 Sep 2026 05:13:17 GMT
ENV LIBREOFFICE_VERSION=26.2.6
# Wed, 09 Sep 2026 05:13:17 GMT
ENV LIBREOFFICE_SHA256_AMD64=fd0e8f8f2408dd2e5b90286e60f3f97cf566ba441cd48cfc5bcc68067303e0bc
# Wed, 09 Sep 2026 05:13:17 GMT
ENV LIBREOFFICE_SHA256_ARM64=f8e8b1d30abde0d530d727ce1b26909ccbedc3d76bcf75d93b3dd5fcd5b8d278
# Wed, 09 Sep 2026 05:13:17 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.6/deb
# Wed, 09 Sep 2026 05:13:46 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Wed, 09 Sep 2026 05:13:46 GMT
ENV XWIKI_VERSION=17.10.12
# Wed, 09 Sep 2026 05:13:46 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.12
# Wed, 09 Sep 2026 05:13:46 GMT
ENV XWIKI_DOWNLOAD_SHA256=68ce377fa59b2bd411eef863ab1216d08b63803b0a26264b3b00679fa0183ead
# Wed, 09 Sep 2026 05:14:06 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Wed, 09 Sep 2026 05:14:06 GMT
ENV POSTGRES_JDBC_VERSION=42.7.13
# Wed, 09 Sep 2026 05:14:06 GMT
ENV POSTGRES_JDBC_SHA256=6e0e4cc2d8cae902084f8a2b18728b073a6fd9d1f87c9d8bff8f298c18185b93
# Wed, 09 Sep 2026 05:14:06 GMT
ENV POSTGRES_JDBC_PREFIX=https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.13
# Wed, 09 Sep 2026 05:14:06 GMT
ENV POSTGRES_JDBC_ARTIFACT=postgresql-42.7.13.jar
# Wed, 09 Sep 2026 05:14:06 GMT
ENV POSTGRES_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.13.jar
# Wed, 09 Sep 2026 05:14:06 GMT
RUN set -eux;   curl $CURL_OPTIONS "${POSTGRES_JDBC_PREFIX}/${POSTGRES_JDBC_ARTIFACT}" -o $POSTGRES_JDBC_TARGET;   echo "$POSTGRES_JDBC_SHA256 *$POSTGRES_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Wed, 09 Sep 2026 05:14:06 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 09 Sep 2026 05:14:06 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 09 Sep 2026 05:14:06 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Wed, 09 Sep 2026 05:14:06 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Wed, 09 Sep 2026 05:14:07 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 09 Sep 2026 05:14:07 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 05:14:07 GMT
VOLUME [/usr/local/xwiki]
# Wed, 09 Sep 2026 05:14:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 05:14:07 GMT
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
	-	`sha256:7870cb9d2dc338f999c1159f006d8daeaa6c2b43dbc11d933de682643f869a8d`  
		Last Modified: Wed, 09 Sep 2026 05:15:04 GMT  
		Size: 22.8 MB (22829639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e31e0f5fcb0cb2cc21c3129fb4af30d32e2ac76e40cc74e421b9bd99908690bb`  
		Last Modified: Wed, 09 Sep 2026 05:15:23 GMT  
		Size: 303.6 MB (303619070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6cde1b89d98754b4c131a6324080892e6a91e63cb46d1fff5ce24f351fc8fd8`  
		Last Modified: Wed, 09 Sep 2026 05:15:23 GMT  
		Size: 328.6 MB (328568664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0369f7f4df7cc9f729f47e9553cbf870823d3e74737cd713237a91bb5da2a95`  
		Last Modified: Wed, 09 Sep 2026 05:14:57 GMT  
		Size: 1.1 MB (1142538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098b51f60af4477e01e173fb8f6d4857aa4a0c6064a92abd44936ea2c4ad6b3c`  
		Last Modified: Wed, 09 Sep 2026 05:15:00 GMT  
		Size: 1.8 KB (1838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb419375bbb96cacbbf150fdc2ceeba3a95ce51ab50bb3ec929c7cbd4c33f17`  
		Last Modified: Wed, 09 Sep 2026 05:15:03 GMT  
		Size: 2.5 KB (2550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8da8d5b6676e8f2bfbb7fc81bb7209ece538a4aee224f890b3057198fa74db`  
		Last Modified: Wed, 09 Sep 2026 05:15:05 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3a5105b83b1802e6098dbfa4ae8a24d3dfccabdcba656fd50074666906dcb6`  
		Last Modified: Wed, 09 Sep 2026 05:15:07 GMT  
		Size: 2.4 KB (2440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1132c78e9cdedc88e10b5ce8459c928ad2d9ebb7604eebf48182614fe81b5b`  
		Last Modified: Wed, 09 Sep 2026 05:15:07 GMT  
		Size: 10.8 KB (10776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1703c1c8d7d2a0d2caafe8f42ff5a790d9eec164c8010ddbeaddd13facf4eb7`  
		Last Modified: Wed, 09 Sep 2026 05:15:09 GMT  
		Size: 4.3 KB (4252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:lts-postgres-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:1b603f01f3adbd250613d9ba30a37929a8738c928ff527eca53313ee57f7068f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14383996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:294a3042e84ec83ae16c331e4bfb1aefa5a0739d5b7e85258e99cd429d8ef704`

```dockerfile
```

-	Layers:
	-	`sha256:311f4e0b75a214f17a923c238e90e64a9ea513ea753cb1731eb7ab3056aab047`  
		Last Modified: Wed, 09 Sep 2026 05:15:01 GMT  
		Size: 14.3 MB (14317536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7c67f6e936aa5ec4593037be16a865683631d73ac554b6fb1209711f326990f`  
		Last Modified: Wed, 09 Sep 2026 05:14:56 GMT  
		Size: 66.5 KB (66460 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:lts-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:2ce92f8ca6f066b5669e33d678bd461017d6db8358d7c8d6506075148d3b0675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **764.9 MB (764901083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c1e6d9825ea0b263cffdaa510628ff57a00a0101966f2afb69c9ed39fe7bad`
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
# Wed, 09 Sep 2026 05:12:52 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 09 Sep 2026 05:12:52 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 09 Sep 2026 05:12:52 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 09 Sep 2026 05:12:52 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 09 Sep 2026 05:12:52 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 09 Sep 2026 05:12:52 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 09 Sep 2026 05:12:52 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 05:12:52 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Wed, 09 Sep 2026 05:12:52 GMT
ENV LIBREOFFICE_VERSION=26.2.6
# Wed, 09 Sep 2026 05:12:52 GMT
ENV LIBREOFFICE_SHA256_AMD64=fd0e8f8f2408dd2e5b90286e60f3f97cf566ba441cd48cfc5bcc68067303e0bc
# Wed, 09 Sep 2026 05:12:52 GMT
ENV LIBREOFFICE_SHA256_ARM64=f8e8b1d30abde0d530d727ce1b26909ccbedc3d76bcf75d93b3dd5fcd5b8d278
# Wed, 09 Sep 2026 05:12:52 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.6/deb
# Wed, 09 Sep 2026 05:13:13 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Wed, 09 Sep 2026 05:13:13 GMT
ENV XWIKI_VERSION=17.10.12
# Wed, 09 Sep 2026 05:13:13 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.12
# Wed, 09 Sep 2026 05:13:13 GMT
ENV XWIKI_DOWNLOAD_SHA256=68ce377fa59b2bd411eef863ab1216d08b63803b0a26264b3b00679fa0183ead
# Wed, 09 Sep 2026 05:13:34 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Wed, 09 Sep 2026 05:13:34 GMT
ENV POSTGRES_JDBC_VERSION=42.7.13
# Wed, 09 Sep 2026 05:13:34 GMT
ENV POSTGRES_JDBC_SHA256=6e0e4cc2d8cae902084f8a2b18728b073a6fd9d1f87c9d8bff8f298c18185b93
# Wed, 09 Sep 2026 05:13:34 GMT
ENV POSTGRES_JDBC_PREFIX=https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.13
# Wed, 09 Sep 2026 05:13:34 GMT
ENV POSTGRES_JDBC_ARTIFACT=postgresql-42.7.13.jar
# Wed, 09 Sep 2026 05:13:34 GMT
ENV POSTGRES_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.13.jar
# Wed, 09 Sep 2026 05:13:34 GMT
RUN set -eux;   curl $CURL_OPTIONS "${POSTGRES_JDBC_PREFIX}/${POSTGRES_JDBC_ARTIFACT}" -o $POSTGRES_JDBC_TARGET;   echo "$POSTGRES_JDBC_SHA256 *$POSTGRES_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Wed, 09 Sep 2026 05:13:34 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 09 Sep 2026 05:13:34 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 09 Sep 2026 05:13:34 GMT
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
	-	`sha256:0d29d9844864bd1c78a143444e8649294de98bafd45d80c4cea7b1d71923093c`  
		Last Modified: Wed, 09 Sep 2026 05:14:21 GMT  
		Size: 22.7 MB (22737119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86289eeba58255874e0c21d60893dfefcba9939cbbd4d46cc956f8a725b3e973`  
		Last Modified: Wed, 09 Sep 2026 05:14:29 GMT  
		Size: 299.6 MB (299648883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35938a3b040b15b0c082b4784e63aa3ea8ac25c8899319e433d6d25a5ee2c7e5`  
		Last Modified: Wed, 09 Sep 2026 05:14:30 GMT  
		Size: 328.6 MB (328568666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8b8809efccc66ca18c4cf9842750bead2959be65fe57a5209ce50b9dfba8bc`  
		Last Modified: Wed, 09 Sep 2026 05:14:20 GMT  
		Size: 1.1 MB (1142539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef70b981faf3801596d82bbc2467324e5b397372f900cd079e33314c676cd03b`  
		Last Modified: Wed, 09 Sep 2026 05:14:21 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221b9c45ef1b896f67304bfd3b9da229681344030789308ec1de06f12623c603`  
		Last Modified: Wed, 09 Sep 2026 05:14:22 GMT  
		Size: 2.5 KB (2549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:525c04165769447711372eedba4afb7e31a8bf0fe2336553699817c2fcbbb956`  
		Last Modified: Wed, 09 Sep 2026 05:14:22 GMT  
		Size: 873.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:851a0137a7129004edad558024ebd68612899a78c408d159d79e7b8c4dd58f57`  
		Last Modified: Wed, 09 Sep 2026 05:14:23 GMT  
		Size: 2.4 KB (2440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb85d22be4434a8b1fc570552724d19d01636d00f83af0139c3730349c88149`  
		Last Modified: Wed, 09 Sep 2026 05:14:23 GMT  
		Size: 10.8 KB (10778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993139136a81bccf0038b40ababf656c5928c893cabf6b1e284a9cbc693e9639`  
		Last Modified: Wed, 09 Sep 2026 05:14:25 GMT  
		Size: 4.2 KB (4245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:lts-postgres-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:74f62cfa3111fad5428c486d89013149d328210f93aa183ba8e203a01d1136ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14384791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b8967a19994d7aa7a223239736bb5f5eb8f46ce83a58fd2b959ff620e54d52f`

```dockerfile
```

-	Layers:
	-	`sha256:36e5f242235e87cb7a18c101e49a0c4c300a7f17bccae73f7dffc56663edb22a`  
		Last Modified: Wed, 09 Sep 2026 05:14:20 GMT  
		Size: 14.3 MB (14318140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89ca638a46d55618a24ba9a518afcda5672ed71195d7dba53d19346885aac4ed`  
		Last Modified: Wed, 09 Sep 2026 05:14:19 GMT  
		Size: 66.7 KB (66651 bytes)  
		MIME: application/vnd.in-toto+json
