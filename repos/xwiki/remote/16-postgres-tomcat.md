## `xwiki:16-postgres-tomcat`

```console
$ docker pull xwiki@sha256:49ea21e47fa159e0d805c70c0fe0929a04c62c34211c44e94107495f49304362
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:16-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:4f7fd12c47f02dbc097a39a11f67a9ed1a47b4ecb559c9c9ec60e553a38331ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **760.7 MB (760669842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8e7230eb1b15bdff6b38b6d9bde1e2f4c6a5ed8f99b8b1457e6e67b9d277f6`
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
# Wed, 09 Sep 2026 05:14:04 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 09 Sep 2026 05:14:04 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 09 Sep 2026 05:14:04 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 09 Sep 2026 05:14:04 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 09 Sep 2026 05:14:04 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 09 Sep 2026 05:14:04 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 09 Sep 2026 05:14:04 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 05:14:04 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Wed, 09 Sep 2026 05:14:04 GMT
ENV LIBREOFFICE_VERSION=26.2.6
# Wed, 09 Sep 2026 05:14:04 GMT
ENV LIBREOFFICE_SHA256_AMD64=fd0e8f8f2408dd2e5b90286e60f3f97cf566ba441cd48cfc5bcc68067303e0bc
# Wed, 09 Sep 2026 05:14:04 GMT
ENV LIBREOFFICE_SHA256_ARM64=f8e8b1d30abde0d530d727ce1b26909ccbedc3d76bcf75d93b3dd5fcd5b8d278
# Wed, 09 Sep 2026 05:14:04 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.6/deb
# Wed, 09 Sep 2026 05:14:22 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Wed, 09 Sep 2026 05:14:22 GMT
ENV XWIKI_VERSION=16.10.18
# Wed, 09 Sep 2026 05:14:22 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/16.10.18
# Wed, 09 Sep 2026 05:14:22 GMT
ENV XWIKI_DOWNLOAD_SHA256=53de2ca1583d8d4b17d858b2b81b615dd29b08dbac73eecd2d61deae7afee5bf
# Wed, 09 Sep 2026 05:14:40 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Wed, 09 Sep 2026 05:14:40 GMT
ENV POSTGRES_JDBC_VERSION=42.7.13
# Wed, 09 Sep 2026 05:14:40 GMT
ENV POSTGRES_JDBC_SHA256=6e0e4cc2d8cae902084f8a2b18728b073a6fd9d1f87c9d8bff8f298c18185b93
# Wed, 09 Sep 2026 05:14:40 GMT
ENV POSTGRES_JDBC_PREFIX=https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.13
# Wed, 09 Sep 2026 05:14:40 GMT
ENV POSTGRES_JDBC_ARTIFACT=postgresql-42.7.13.jar
# Wed, 09 Sep 2026 05:14:40 GMT
ENV POSTGRES_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.13.jar
# Wed, 09 Sep 2026 05:14:40 GMT
RUN set -eux;   curl $CURL_OPTIONS "${POSTGRES_JDBC_PREFIX}/${POSTGRES_JDBC_ARTIFACT}" -o $POSTGRES_JDBC_TARGET;   echo "$POSTGRES_JDBC_SHA256 *$POSTGRES_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Wed, 09 Sep 2026 05:14:40 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 09 Sep 2026 05:14:40 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 09 Sep 2026 05:14:40 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Wed, 09 Sep 2026 05:14:40 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Wed, 09 Sep 2026 05:14:41 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 09 Sep 2026 05:14:41 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 05:14:41 GMT
VOLUME [/usr/local/xwiki]
# Wed, 09 Sep 2026 05:14:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 05:14:41 GMT
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
	-	`sha256:2d1b5db706678f37f9b4fbee5311680e437119d29317701f2691d04de0c321a6`  
		Last Modified: Wed, 09 Sep 2026 05:15:23 GMT  
		Size: 22.8 MB (22829541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6afd411e95e72a3026cf00ec65eddcaf5fccd1a24ad0ddf573e96926e778dd61`  
		Last Modified: Wed, 09 Sep 2026 05:15:32 GMT  
		Size: 303.6 MB (303618969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:309e5ea256a41c21e8f9db31f4949e19ef4266deaa6ea2bbc389c976822ceae8`  
		Last Modified: Wed, 09 Sep 2026 05:15:31 GMT  
		Size: 319.2 MB (319151561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb51d93f1e384a4b5d6bd5a99698e063fc306d737574bd40179b7976f855ffb7`  
		Last Modified: Wed, 09 Sep 2026 05:15:22 GMT  
		Size: 1.1 MB (1142532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc7d227d8e2cab82329706eb9d3b54f4a6221bfe4aaf0dd0819f0b874d156ce9`  
		Last Modified: Wed, 09 Sep 2026 05:15:23 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf2dc38fc0ce740915c865a13a3caa415543557f68771d7d41b23f71d2ae665`  
		Last Modified: Wed, 09 Sep 2026 05:15:24 GMT  
		Size: 2.5 KB (2549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c1336e2196516546b4c325137fca2ab661c4c39c7bfc6c4616d32d6b2a863e`  
		Last Modified: Wed, 09 Sep 2026 05:15:25 GMT  
		Size: 873.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a172a6c6cd244cb5acc40fbee822457ec964969d2ac7a53e2e52a7b0049f5ae`  
		Last Modified: Wed, 09 Sep 2026 05:15:26 GMT  
		Size: 2.4 KB (2438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc5736b286d7a97ba4c7ae8a0e3081dac9116e598b02dfe09a279bc5cafa79f`  
		Last Modified: Wed, 09 Sep 2026 05:15:26 GMT  
		Size: 6.8 KB (6770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c2088e078ea3e3ce26001444f403c8e2e24628eb721728aebfc7e92a6bbe90`  
		Last Modified: Wed, 09 Sep 2026 05:15:27 GMT  
		Size: 4.3 KB (4251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:16-postgres-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:383cd798276498ce3aa10136ab528bdee7c4714614aafa54a2fd0a62ac55f7bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14314062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d49ad677ed25efb1b55f2028a30a78fbaa9d5827106fd2b439b5dcebb0948861`

```dockerfile
```

-	Layers:
	-	`sha256:9f7f515a2a24f0f235e01163ed6c77d2cd904a0607ddd3b013a19eca0f2cef2c`  
		Last Modified: Wed, 09 Sep 2026 05:15:22 GMT  
		Size: 14.2 MB (14248245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b43fd70fdd4ce88302ce290fbc4dbbf097c6ac0201246eceb55a783eeb91cc71`  
		Last Modified: Wed, 09 Sep 2026 05:15:22 GMT  
		Size: 65.8 KB (65817 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:16-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:0b168cbb92fbac29573451d70195f4d48a06e8c5836198c27b1334aec7630c78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **755.0 MB (754977729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e867f7ed3b2dc85fdd2114c3a8dc4f06bc8b14cd5aaadef8f180d76e3762ee5c`
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
# Wed, 09 Sep 2026 05:13:41 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 09 Sep 2026 05:13:41 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 09 Sep 2026 05:13:41 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 09 Sep 2026 05:13:41 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 09 Sep 2026 05:13:41 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 09 Sep 2026 05:13:41 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 09 Sep 2026 05:13:41 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 05:13:41 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Wed, 09 Sep 2026 05:13:41 GMT
ENV LIBREOFFICE_VERSION=26.2.6
# Wed, 09 Sep 2026 05:13:41 GMT
ENV LIBREOFFICE_SHA256_AMD64=fd0e8f8f2408dd2e5b90286e60f3f97cf566ba441cd48cfc5bcc68067303e0bc
# Wed, 09 Sep 2026 05:13:41 GMT
ENV LIBREOFFICE_SHA256_ARM64=f8e8b1d30abde0d530d727ce1b26909ccbedc3d76bcf75d93b3dd5fcd5b8d278
# Wed, 09 Sep 2026 05:13:41 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.6/deb
# Wed, 09 Sep 2026 05:14:06 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Wed, 09 Sep 2026 05:14:06 GMT
ENV XWIKI_VERSION=16.10.18
# Wed, 09 Sep 2026 05:14:06 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/16.10.18
# Wed, 09 Sep 2026 05:14:06 GMT
ENV XWIKI_DOWNLOAD_SHA256=53de2ca1583d8d4b17d858b2b81b615dd29b08dbac73eecd2d61deae7afee5bf
# Wed, 09 Sep 2026 05:14:25 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Wed, 09 Sep 2026 05:14:25 GMT
ENV POSTGRES_JDBC_VERSION=42.7.13
# Wed, 09 Sep 2026 05:14:25 GMT
ENV POSTGRES_JDBC_SHA256=6e0e4cc2d8cae902084f8a2b18728b073a6fd9d1f87c9d8bff8f298c18185b93
# Wed, 09 Sep 2026 05:14:25 GMT
ENV POSTGRES_JDBC_PREFIX=https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.13
# Wed, 09 Sep 2026 05:14:25 GMT
ENV POSTGRES_JDBC_ARTIFACT=postgresql-42.7.13.jar
# Wed, 09 Sep 2026 05:14:25 GMT
ENV POSTGRES_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.13.jar
# Wed, 09 Sep 2026 05:14:25 GMT
RUN set -eux;   curl $CURL_OPTIONS "${POSTGRES_JDBC_PREFIX}/${POSTGRES_JDBC_ARTIFACT}" -o $POSTGRES_JDBC_TARGET;   echo "$POSTGRES_JDBC_SHA256 *$POSTGRES_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Wed, 09 Sep 2026 05:14:25 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 09 Sep 2026 05:14:25 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 09 Sep 2026 05:14:25 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Wed, 09 Sep 2026 05:14:25 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Wed, 09 Sep 2026 05:14:25 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 09 Sep 2026 05:14:25 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 05:14:25 GMT
VOLUME [/usr/local/xwiki]
# Wed, 09 Sep 2026 05:14:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 05:14:25 GMT
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
	-	`sha256:730a2258b531379c69d7057038835ddb09dd9b63c6a60991b4d89287fdbb8b16`  
		Last Modified: Wed, 09 Sep 2026 05:15:12 GMT  
		Size: 22.7 MB (22737102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83afcda5c13b06dc3a6dd0e62d178d1472c64157f50fa8246e9a927ada4c4694`  
		Last Modified: Wed, 09 Sep 2026 05:15:22 GMT  
		Size: 299.6 MB (299648883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123e7bcdf3f70f555f12fd897f772d263535c60bbe0a787b240c99951209e44a`  
		Last Modified: Wed, 09 Sep 2026 05:15:22 GMT  
		Size: 319.2 MB (319151691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fcd102c326be07fe55c97747b61a0c15b44387af30a096baacbef2f68f19851`  
		Last Modified: Wed, 09 Sep 2026 05:15:11 GMT  
		Size: 1.1 MB (1142534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd52adb072f3a75106ddc01339cee9a631226cd5d5ffd2c1308332d6803155c`  
		Last Modified: Wed, 09 Sep 2026 05:15:12 GMT  
		Size: 1.8 KB (1838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a323c9fb6da60b7ebd3d26f8a7ed4e64ebdb2621061850549218f4b13aa01b5d`  
		Last Modified: Wed, 09 Sep 2026 05:15:13 GMT  
		Size: 2.5 KB (2546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52bfc45c60e328f16e04215240f97700413b6b8702d25ea36f704ebc6d97b615`  
		Last Modified: Wed, 09 Sep 2026 05:15:14 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00ac17d0d4f3741909b25f78075d38c72d179f9acae7e4941d3537a6f339e38`  
		Last Modified: Wed, 09 Sep 2026 05:15:15 GMT  
		Size: 2.4 KB (2436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c845dd05f9449740286cf23d44cadd822ea075ecd1d2ed259cfb939c4164a47`  
		Last Modified: Wed, 09 Sep 2026 05:15:15 GMT  
		Size: 6.8 KB (6768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56de221e41375977d1680ce4d1f320cc56d29dfe357b0435fab51671eeb3a5bc`  
		Last Modified: Wed, 09 Sep 2026 05:15:16 GMT  
		Size: 4.3 KB (4251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:16-postgres-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:7f57370d11a8f8136ec1edb4047919284dc0e0157fa9878d3ce5b0e6fdb0a13b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14314809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7e7fcc67a7661aa97989acf187e35eaeb1a7298c7262e4ab5b6ad9d155fa4eb`

```dockerfile
```

-	Layers:
	-	`sha256:7a215a6fe95eb80b678af54feeb066f65b50a88d157179385eb6ed0352529d53`  
		Last Modified: Wed, 09 Sep 2026 05:15:12 GMT  
		Size: 14.2 MB (14248825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8008c28ec31dce209cf10c36f498c1adc2a854c95fb558a3716f7eb00946331`  
		Last Modified: Wed, 09 Sep 2026 05:15:10 GMT  
		Size: 66.0 KB (65984 bytes)  
		MIME: application/vnd.in-toto+json
