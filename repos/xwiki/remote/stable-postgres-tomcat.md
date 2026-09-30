## `xwiki:stable-postgres-tomcat`

```console
$ docker pull xwiki@sha256:c61e02eb03add80e2ae45fdd20a7f5a30e4c442281dcc8f79e73c2a95ff71a64
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:stable-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:3a941f6bd274af839fe3ca42c69b1c27f561a45ac59abf1263675d3adb8bb5a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **791.4 MB (791373924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfc20afe87dd15212e32c845c4c964d61e1e24e893d0c61c0400c80ccc41963b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

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
# Fri, 25 Sep 2026 22:38:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:38:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:38:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:38:28 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:38:28 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:38:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='7b0731083e1f298d2216b266bfbb2ea600482cc025362af4129aaed758afc611';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:38:31 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 26 Sep 2026 00:20:01 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 26 Sep 2026 00:20:01 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 00:20:01 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 26 Sep 2026 00:20:01 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:20:01 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:20:01 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:20:01 GMT
ENV TOMCAT_MAJOR=10
# Sat, 26 Sep 2026 00:20:01 GMT
ENV TOMCAT_VERSION=10.1.60
# Sat, 26 Sep 2026 00:20:01 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Sat, 26 Sep 2026 00:20:01 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 26 Sep 2026 00:20:08 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 00:20:09 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 26 Sep 2026 00:20:09 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 26 Sep 2026 00:20:09 GMT
ENTRYPOINT []
# Sat, 26 Sep 2026 00:20:09 GMT
CMD ["catalina.sh" "run"]
# Wed, 30 Sep 2026 19:05:36 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 30 Sep 2026 19:05:36 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 30 Sep 2026 19:05:36 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 30 Sep 2026 19:05:36 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 30 Sep 2026 19:05:36 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 30 Sep 2026 19:05:36 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 30 Sep 2026 19:05:36 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 30 Sep 2026 19:05:36 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Wed, 30 Sep 2026 19:05:36 GMT
ENV LIBREOFFICE_VERSION=26.2.6
# Wed, 30 Sep 2026 19:05:36 GMT
ENV LIBREOFFICE_SHA256_AMD64=fd0e8f8f2408dd2e5b90286e60f3f97cf566ba441cd48cfc5bcc68067303e0bc
# Wed, 30 Sep 2026 19:05:36 GMT
ENV LIBREOFFICE_SHA256_ARM64=f8e8b1d30abde0d530d727ce1b26909ccbedc3d76bcf75d93b3dd5fcd5b8d278
# Wed, 30 Sep 2026 19:05:36 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.6/deb
# Wed, 30 Sep 2026 19:05:57 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Wed, 30 Sep 2026 19:05:57 GMT
ENV XWIKI_VERSION=18.8.0
# Wed, 30 Sep 2026 19:05:57 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.8.0
# Wed, 30 Sep 2026 19:05:57 GMT
ENV XWIKI_DOWNLOAD_SHA256=4229bed73db82721ee8e795c1136dbf5d9827aade8894027687d95655f8907b1
# Wed, 30 Sep 2026 19:06:18 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Wed, 30 Sep 2026 19:06:18 GMT
ENV POSTGRES_JDBC_VERSION=42.7.13
# Wed, 30 Sep 2026 19:06:18 GMT
ENV POSTGRES_JDBC_SHA256=6e0e4cc2d8cae902084f8a2b18728b073a6fd9d1f87c9d8bff8f298c18185b93
# Wed, 30 Sep 2026 19:06:18 GMT
ENV POSTGRES_JDBC_PREFIX=https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.13
# Wed, 30 Sep 2026 19:06:18 GMT
ENV POSTGRES_JDBC_ARTIFACT=postgresql-42.7.13.jar
# Wed, 30 Sep 2026 19:06:18 GMT
ENV POSTGRES_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.13.jar
# Wed, 30 Sep 2026 19:06:18 GMT
RUN set -eux;   curl $CURL_OPTIONS "${POSTGRES_JDBC_PREFIX}/${POSTGRES_JDBC_ARTIFACT}" -o $POSTGRES_JDBC_TARGET;   echo "$POSTGRES_JDBC_SHA256 *$POSTGRES_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Wed, 30 Sep 2026 19:06:18 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 30 Sep 2026 19:06:18 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 30 Sep 2026 19:06:18 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Wed, 30 Sep 2026 19:06:18 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Wed, 30 Sep 2026 19:06:18 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 30 Sep 2026 19:06:18 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 30 Sep 2026 19:06:18 GMT
VOLUME [/usr/local/xwiki]
# Wed, 30 Sep 2026 19:06:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 19:06:18 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2858e1f816f1123084b25b2960a4407effeabb754b3707c19a7f840a8993645d`  
		Last Modified: Fri, 25 Sep 2026 22:38:43 GMT  
		Size: 17.0 MB (16967071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beb27ce4ddc09fdbc0415ad7fde2f1fc3c487cec2d6a17a079cc1f8807216248`  
		Last Modified: Fri, 25 Sep 2026 22:38:44 GMT  
		Size: 53.1 MB (53097582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f48cc1bec32eb15c5cae25cc86a646303d7dcb5302639f62cb6be03f9fc43e4`  
		Last Modified: Fri, 25 Sep 2026 22:38:42 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82114a80401c4fe150e5d00a6423568546d038b30a663c65df80bd5799b6f43d`  
		Last Modified: Fri, 25 Sep 2026 22:38:42 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d8a3741544df57309913a141d3ad87aa1917bfa437681c6634f8025ea6c33b9`  
		Last Modified: Sat, 26 Sep 2026 00:20:17 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9b3bddda4f4bde161a386680261a99e4b117501df1172e6947f12112e32947`  
		Last Modified: Sat, 26 Sep 2026 00:20:18 GMT  
		Size: 14.4 MB (14370355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9364c410e081447fde18d9e670e85a9bcbf99133f8f5a0c3cc67388e6fbd2953`  
		Last Modified: Sat, 26 Sep 2026 00:20:17 GMT  
		Size: 225.3 KB (225313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17e40bc46ac1ed438be10b3fab2c5098aadb406948c0ed2b1e15cc05aaa45392`  
		Last Modified: Wed, 30 Sep 2026 19:07:06 GMT  
		Size: 22.8 MB (22832935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f5e06305d1faa60df59dee6e51aa0ce8886a1f7f39ae357dbe5a764ca988e6c`  
		Last Modified: Wed, 30 Sep 2026 19:07:15 GMT  
		Size: 303.6 MB (303619130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85da6aa69a1b277f950fb4d777f3f993deed7b6006b8c07b2b9c5e18b6ece299`  
		Last Modified: Wed, 30 Sep 2026 19:07:17 GMT  
		Size: 349.3 MB (349328817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4c4c85969a4b9e8a50a025c507e4d89e27bb940b0f233aeaf8285c16d2a7ae3`  
		Last Modified: Wed, 30 Sep 2026 19:07:05 GMT  
		Size: 1.1 MB (1142530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b838e04f90c5d59c585a33dcbcc093589e3e9ff7799cadc53afa98479530221`  
		Last Modified: Wed, 30 Sep 2026 19:07:06 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44038d0c28943080d3cc17a78a0abd48b2baaab808706651bb8febbb7a8e9e24`  
		Last Modified: Wed, 30 Sep 2026 19:07:07 GMT  
		Size: 2.5 KB (2549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a4587d0dcdf17c125545692ae86d7bad302013ce93d01ebcabfe77d2bce91fe`  
		Last Modified: Wed, 30 Sep 2026 19:07:08 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e031b988861412e32baa524f187cfc497f63a1f58a4b109ff1047bfa71693b44`  
		Last Modified: Wed, 30 Sep 2026 19:07:09 GMT  
		Size: 2.4 KB (2437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a23bdf584665b9de655dc1733d35cc9079bea1af2fc6d1f203a182e0a9c35b`  
		Last Modified: Wed, 30 Sep 2026 19:07:09 GMT  
		Size: 11.3 KB (11302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31a948fc59107d31a1f64fbb9a8babff70bc30d3c2b30d305cf7b0367a1eaab`  
		Last Modified: Wed, 30 Sep 2026 19:07:10 GMT  
		Size: 4.3 KB (4251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:stable-postgres-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:353dc4b761509449ac65c19e7809a1d7affe9ca57faf6d328b961ab4acc896f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14418508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0925e6454251e3e3ea2fe0916f51d9210100099771edd51122929b84c37bbcde`

```dockerfile
```

-	Layers:
	-	`sha256:d9d3e7406c6217fb94b86d7be9a688251ce5267568624bf2edad020f419d7a12`  
		Last Modified: Wed, 30 Sep 2026 19:07:06 GMT  
		Size: 14.4 MB (14351736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77562ce121095e081c95eb3e1c6a41147f8cecaa14e8ee85103c8ea30f5b3024`  
		Last Modified: Wed, 30 Sep 2026 19:07:05 GMT  
		Size: 66.8 KB (66772 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:stable-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:93304905271b0c8c6880ea33e963e104ce1ed3a80af29c48b43cf31712aec265
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **785.7 MB (785674132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:622dfa1fd4bfdd9a0c00096c71edfee553f9e2829e6e98c704eb78938d7b5e0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

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
# Fri, 25 Sep 2026 22:35:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:13 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:13 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:37:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='7b0731083e1f298d2216b266bfbb2ea600482cc025362af4129aaed758afc611';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:37:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 26 Sep 2026 00:15:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 26 Sep 2026 00:15:49 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 00:15:49 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 26 Sep 2026 00:15:49 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:15:49 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:15:49 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:15:49 GMT
ENV TOMCAT_MAJOR=10
# Sat, 26 Sep 2026 00:15:49 GMT
ENV TOMCAT_VERSION=10.1.60
# Sat, 26 Sep 2026 00:15:49 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Sat, 26 Sep 2026 00:15:49 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 26 Sep 2026 00:15:54 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 00:15:55 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 26 Sep 2026 00:15:55 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 26 Sep 2026 00:15:55 GMT
ENTRYPOINT []
# Sat, 26 Sep 2026 00:15:55 GMT
CMD ["catalina.sh" "run"]
# Wed, 30 Sep 2026 19:05:49 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 30 Sep 2026 19:05:49 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 30 Sep 2026 19:05:49 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 30 Sep 2026 19:05:49 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 30 Sep 2026 19:05:49 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 30 Sep 2026 19:05:49 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 30 Sep 2026 19:05:49 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 30 Sep 2026 19:05:49 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Wed, 30 Sep 2026 19:05:49 GMT
ENV LIBREOFFICE_VERSION=26.2.6
# Wed, 30 Sep 2026 19:05:49 GMT
ENV LIBREOFFICE_SHA256_AMD64=fd0e8f8f2408dd2e5b90286e60f3f97cf566ba441cd48cfc5bcc68067303e0bc
# Wed, 30 Sep 2026 19:05:49 GMT
ENV LIBREOFFICE_SHA256_ARM64=f8e8b1d30abde0d530d727ce1b26909ccbedc3d76bcf75d93b3dd5fcd5b8d278
# Wed, 30 Sep 2026 19:05:49 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.6/deb
# Wed, 30 Sep 2026 19:06:06 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Wed, 30 Sep 2026 19:06:06 GMT
ENV XWIKI_VERSION=18.8.0
# Wed, 30 Sep 2026 19:06:06 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.8.0
# Wed, 30 Sep 2026 19:06:06 GMT
ENV XWIKI_DOWNLOAD_SHA256=4229bed73db82721ee8e795c1136dbf5d9827aade8894027687d95655f8907b1
# Wed, 30 Sep 2026 19:06:27 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Wed, 30 Sep 2026 19:06:27 GMT
ENV POSTGRES_JDBC_VERSION=42.7.13
# Wed, 30 Sep 2026 19:06:27 GMT
ENV POSTGRES_JDBC_SHA256=6e0e4cc2d8cae902084f8a2b18728b073a6fd9d1f87c9d8bff8f298c18185b93
# Wed, 30 Sep 2026 19:06:27 GMT
ENV POSTGRES_JDBC_PREFIX=https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.13
# Wed, 30 Sep 2026 19:06:27 GMT
ENV POSTGRES_JDBC_ARTIFACT=postgresql-42.7.13.jar
# Wed, 30 Sep 2026 19:06:27 GMT
ENV POSTGRES_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.13.jar
# Wed, 30 Sep 2026 19:06:27 GMT
RUN set -eux;   curl $CURL_OPTIONS "${POSTGRES_JDBC_PREFIX}/${POSTGRES_JDBC_ARTIFACT}" -o $POSTGRES_JDBC_TARGET;   echo "$POSTGRES_JDBC_SHA256 *$POSTGRES_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Wed, 30 Sep 2026 19:06:27 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 30 Sep 2026 19:06:27 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 30 Sep 2026 19:06:27 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Wed, 30 Sep 2026 19:06:27 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Wed, 30 Sep 2026 19:06:27 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 30 Sep 2026 19:06:27 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 30 Sep 2026 19:06:27 GMT
VOLUME [/usr/local/xwiki]
# Wed, 30 Sep 2026 19:06:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 19:06:27 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e0035b7e45a81e60690afb8f7160f988b3c03e3fb7dbbf238e383fe51828e40`  
		Last Modified: Fri, 25 Sep 2026 22:35:27 GMT  
		Size: 17.0 MB (16977369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1647273fe4ac5c1e20d0ae151b27ad49496eec99ecbbc9e40c960cc6f0fce8a`  
		Last Modified: Fri, 25 Sep 2026 22:37:31 GMT  
		Size: 52.3 MB (52273827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e2475e7e6950ef78cb624102aa6f1b85d38bffc97d84628d0b681650ab83b34`  
		Last Modified: Fri, 25 Sep 2026 22:37:29 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:578a92f1fad0d0d855eaa30b7cbd35f8a8d381413fb0ce57f6ba8b556a7d8a76`  
		Last Modified: Fri, 25 Sep 2026 22:37:29 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c474d5c98992862b30f4e83ef8ec32b8089e604b0cda5c39b9a372921899cd67`  
		Last Modified: Sat, 26 Sep 2026 00:16:03 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e60d379aa74ec1dc1f779e8e23a47aeb6cc38a50e12f9b9734d5f40b95ee0f`  
		Last Modified: Sat, 26 Sep 2026 00:16:04 GMT  
		Size: 14.4 MB (14372678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8153ec74611447e25f123f3af4218c9bae4b5775c8cc03f779901a070332fb76`  
		Last Modified: Sat, 26 Sep 2026 00:16:03 GMT  
		Size: 225.7 KB (225684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d88cb7686bc4a59bb049ed0c007e5d27dc4028582256b0ee2fab33bacbb0b1`  
		Last Modified: Wed, 30 Sep 2026 19:07:15 GMT  
		Size: 22.7 MB (22736681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eceb22255e0571d9ffa57d74c46453212cdec8a4cbe59ad832e0fcd0c0f9a37`  
		Last Modified: Wed, 30 Sep 2026 19:07:23 GMT  
		Size: 299.6 MB (299648899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a0d8715de4ebd222e6be3758cc4af8b71ee07352e2d611c7952ac2d05771f4`  
		Last Modified: Wed, 30 Sep 2026 19:07:24 GMT  
		Size: 349.3 MB (349328818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d8118fa77b45553c774cd03404597f11b782fce5d3c26e926c4154f2cd2a37`  
		Last Modified: Wed, 30 Sep 2026 19:07:14 GMT  
		Size: 1.1 MB (1142525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4148997b123b138ccce7dd7998b734cf8b18e50c4d7d4cb77264102fa8f8b72f`  
		Last Modified: Wed, 30 Sep 2026 19:07:15 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887feef93c3c516494fdc03c62f748fcd12596b36f9dd0f0ca02069951a66940`  
		Last Modified: Wed, 30 Sep 2026 19:07:16 GMT  
		Size: 2.5 KB (2550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f975840b59139f1df50694fec61d58380d83a1e6f65d1dcd2fd8a8ebd034bce5`  
		Last Modified: Wed, 30 Sep 2026 19:07:16 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9141c07e98261563ef3a2cee0a3060bc2451cbee6e9bdb797fb66e7fe4523fcb`  
		Last Modified: Wed, 30 Sep 2026 19:07:17 GMT  
		Size: 2.4 KB (2436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20974d638a9cea6843bc0de44610338184468777db56dec86611d186dab5234`  
		Last Modified: Wed, 30 Sep 2026 19:07:17 GMT  
		Size: 11.3 KB (11300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fab58aae3a7dfff81ba7b668ce2c940aef4b88e000275ff97c9a6d70ba7f98c`  
		Last Modified: Wed, 30 Sep 2026 19:07:19 GMT  
		Size: 4.2 KB (4249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:stable-postgres-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:f499abeaef9fdc98ffcfcf030c155045aca4c92506a908ad6cf0cafe56e064be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14419327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d40c7c64e52f5ba4187d4b85342ff4652738b58c6a11884cf4bdc359f8e01e3`

```dockerfile
```

-	Layers:
	-	`sha256:760ad27eb85050ca6bdbd7e9f8703799bf4700f9eaf99934a82b0452fac8cf16`  
		Last Modified: Wed, 30 Sep 2026 19:07:14 GMT  
		Size: 14.4 MB (14352352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e759c0f534a6a6b88fdd5e10f437c14690225704f102b98cad010a8651f74806`  
		Last Modified: Wed, 30 Sep 2026 19:07:13 GMT  
		Size: 67.0 KB (66975 bytes)  
		MIME: application/vnd.in-toto+json
