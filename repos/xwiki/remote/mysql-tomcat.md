## `xwiki:mysql-tomcat`

```console
$ docker pull xwiki@sha256:85c383a994fce825122c8dcfe9f658c8c5c0efe9c5b4e0b323b4dc6362a59a07
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:2d586e26cc62d4d980733a3c21ebc81b96c6cc3e5e4b59102e2a7d4e471b993a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **792.7 MB (792683090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fca813d2503ad43e393d2b9727c6f93cdf8847f8a2ee0e3dcc4710861dd13c7e`
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
# Wed, 30 Sep 2026 19:04:24 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 30 Sep 2026 19:04:24 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 30 Sep 2026 19:04:24 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 30 Sep 2026 19:04:24 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 30 Sep 2026 19:04:24 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 30 Sep 2026 19:04:24 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 30 Sep 2026 19:04:24 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 30 Sep 2026 19:04:24 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Wed, 30 Sep 2026 19:04:24 GMT
ENV LIBREOFFICE_VERSION=26.2.6
# Wed, 30 Sep 2026 19:04:24 GMT
ENV LIBREOFFICE_SHA256_AMD64=fd0e8f8f2408dd2e5b90286e60f3f97cf566ba441cd48cfc5bcc68067303e0bc
# Wed, 30 Sep 2026 19:04:24 GMT
ENV LIBREOFFICE_SHA256_ARM64=f8e8b1d30abde0d530d727ce1b26909ccbedc3d76bcf75d93b3dd5fcd5b8d278
# Wed, 30 Sep 2026 19:04:24 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.6/deb
# Wed, 30 Sep 2026 19:04:46 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Wed, 30 Sep 2026 19:04:46 GMT
ENV XWIKI_VERSION=18.8.0
# Wed, 30 Sep 2026 19:04:46 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.8.0
# Wed, 30 Sep 2026 19:04:46 GMT
ENV XWIKI_DOWNLOAD_SHA256=4229bed73db82721ee8e795c1136dbf5d9827aade8894027687d95655f8907b1
# Wed, 30 Sep 2026 19:05:07 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Wed, 30 Sep 2026 19:05:07 GMT
ENV MYSQL_JDBC_VERSION=26.7.0
# Wed, 30 Sep 2026 19:05:07 GMT
ENV MYSQL_JDBC_SHA256=69084713593a4aa8d07c383619b9639276f08bccf8faf1c562178147d389b1e1
# Wed, 30 Sep 2026 19:05:07 GMT
ENV MYSQL_JDBC_PREFIX=https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/26.7.0
# Wed, 30 Sep 2026 19:05:07 GMT
ENV MYSQL_JDBC_ARTIFACT=mysql-connector-j-26.7.0.jar
# Wed, 30 Sep 2026 19:05:07 GMT
ENV MYSQL_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mysql-connector-j-26.7.0.jar
# Wed, 30 Sep 2026 19:05:07 GMT
RUN set -eux;   curl $CURL_OPTIONS "${MYSQL_JDBC_PREFIX}/${MYSQL_JDBC_ARTIFACT}" -o $MYSQL_JDBC_TARGET;   echo "$MYSQL_JDBC_SHA256 *$MYSQL_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Wed, 30 Sep 2026 19:05:07 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 30 Sep 2026 19:05:07 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 30 Sep 2026 19:05:07 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Wed, 30 Sep 2026 19:05:07 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Wed, 30 Sep 2026 19:05:07 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 30 Sep 2026 19:05:07 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 30 Sep 2026 19:05:07 GMT
VOLUME [/usr/local/xwiki]
# Wed, 30 Sep 2026 19:05:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 19:05:07 GMT
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
	-	`sha256:34c0c571c893030a0afc357966021d9d6bc9df00b158c734579fe40fad852c87`  
		Last Modified: Wed, 30 Sep 2026 19:05:58 GMT  
		Size: 22.8 MB (22832963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc1aa174857aaf7f9df83273b7c58bcfd41318e44f65b7d3065b489afcbb8b9b`  
		Last Modified: Wed, 30 Sep 2026 19:06:08 GMT  
		Size: 303.6 MB (303619205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92fb3c02259786b9be58a12ad3f9ee1965e21f890eac1d68ab87fec86bff1c46`  
		Last Modified: Wed, 30 Sep 2026 19:06:09 GMT  
		Size: 349.3 MB (349328841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76246049a5acf5ae1af9ac06f003224b58d4d892cbd3965e1561bc332b55397c`  
		Last Modified: Wed, 30 Sep 2026 19:05:57 GMT  
		Size: 2.5 MB (2451658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef57a6f0b659eb6507a9ca716959f223c96e5f8f18b05f28ba20e17cc0f7663d`  
		Last Modified: Wed, 30 Sep 2026 19:05:58 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35533430bdd3697d27d02527a41a1a122ef05caf4a0ff6c6b53d4e697667f147`  
		Last Modified: Wed, 30 Sep 2026 19:05:59 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85c8b4f89e1c2717826dc30cb95fbebc0517271b29135d1f0f2e3989c47e51b`  
		Last Modified: Wed, 30 Sep 2026 19:05:59 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196ed2cae34623c2616fd57fb732b028bb1719bfe63aa993b26db068b69feb1d`  
		Last Modified: Wed, 30 Sep 2026 19:06:01 GMT  
		Size: 2.4 KB (2436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31415a693d23ab77eeb9f39ac17b5a766a5a3240aad62e8fd98b32fc5f2763ef`  
		Last Modified: Wed, 30 Sep 2026 19:06:01 GMT  
		Size: 11.3 KB (11301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2247d7c46ff60de85babd1f7aeab6cd2010d1a48d94245d3813eab9548055d48`  
		Last Modified: Wed, 30 Sep 2026 19:06:02 GMT  
		Size: 4.3 KB (4341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:mysql-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:0de64b469cc60cc6288315361515e45512c73222a4e92925099c2dbad2356777
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14421365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76a3763ce1aad2d58ee5cd98e10225644cfd40745d80d9ab9ce688d3f68e2bdb`

```dockerfile
```

-	Layers:
	-	`sha256:78b9605e156bef657569caf783e99a6cb391ac4373a8cd9f9727aa22d20cadb7`  
		Last Modified: Wed, 30 Sep 2026 19:05:57 GMT  
		Size: 14.4 MB (14353234 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a614aa30ba615bccb318ab0e8c602a3eb31e99ade1e6bf25d4c305ff216f12f`  
		Last Modified: Wed, 30 Sep 2026 19:05:56 GMT  
		Size: 68.1 KB (68131 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:mysql-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:93db6ca1407af9eecf7c961389a3bab62f7f391c66dccfbf816cf95d804fdfe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **787.0 MB (786983359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87e9c35c40ae8ad82fd4ddaa1e0bd216b6bd09f0b7d15049ba7f5da32515fb8b`
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
# Wed, 30 Sep 2026 19:04:04 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 30 Sep 2026 19:04:04 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 30 Sep 2026 19:04:04 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 30 Sep 2026 19:04:04 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 30 Sep 2026 19:04:04 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 30 Sep 2026 19:04:04 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 30 Sep 2026 19:04:04 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 30 Sep 2026 19:04:04 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Wed, 30 Sep 2026 19:04:04 GMT
ENV LIBREOFFICE_VERSION=26.2.6
# Wed, 30 Sep 2026 19:04:04 GMT
ENV LIBREOFFICE_SHA256_AMD64=fd0e8f8f2408dd2e5b90286e60f3f97cf566ba441cd48cfc5bcc68067303e0bc
# Wed, 30 Sep 2026 19:04:04 GMT
ENV LIBREOFFICE_SHA256_ARM64=f8e8b1d30abde0d530d727ce1b26909ccbedc3d76bcf75d93b3dd5fcd5b8d278
# Wed, 30 Sep 2026 19:04:04 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.6/deb
# Wed, 30 Sep 2026 19:04:26 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Wed, 30 Sep 2026 19:04:26 GMT
ENV XWIKI_VERSION=18.8.0
# Wed, 30 Sep 2026 19:04:26 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.8.0
# Wed, 30 Sep 2026 19:04:26 GMT
ENV XWIKI_DOWNLOAD_SHA256=4229bed73db82721ee8e795c1136dbf5d9827aade8894027687d95655f8907b1
# Wed, 30 Sep 2026 19:04:48 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Wed, 30 Sep 2026 19:04:48 GMT
ENV MYSQL_JDBC_VERSION=26.7.0
# Wed, 30 Sep 2026 19:04:48 GMT
ENV MYSQL_JDBC_SHA256=69084713593a4aa8d07c383619b9639276f08bccf8faf1c562178147d389b1e1
# Wed, 30 Sep 2026 19:04:48 GMT
ENV MYSQL_JDBC_PREFIX=https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/26.7.0
# Wed, 30 Sep 2026 19:04:48 GMT
ENV MYSQL_JDBC_ARTIFACT=mysql-connector-j-26.7.0.jar
# Wed, 30 Sep 2026 19:04:48 GMT
ENV MYSQL_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mysql-connector-j-26.7.0.jar
# Wed, 30 Sep 2026 19:04:48 GMT
RUN set -eux;   curl $CURL_OPTIONS "${MYSQL_JDBC_PREFIX}/${MYSQL_JDBC_ARTIFACT}" -o $MYSQL_JDBC_TARGET;   echo "$MYSQL_JDBC_SHA256 *$MYSQL_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Wed, 30 Sep 2026 19:04:48 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 30 Sep 2026 19:04:48 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 30 Sep 2026 19:04:48 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Wed, 30 Sep 2026 19:04:48 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Wed, 30 Sep 2026 19:04:48 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 30 Sep 2026 19:04:48 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 30 Sep 2026 19:04:48 GMT
VOLUME [/usr/local/xwiki]
# Wed, 30 Sep 2026 19:04:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 19:04:48 GMT
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
	-	`sha256:b99ec34a26ae87aab985a14a373d9acd81b226e6a6ea965b868e7fd849aa6b7b`  
		Last Modified: Wed, 30 Sep 2026 19:05:36 GMT  
		Size: 22.7 MB (22736691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a875a74174892871cca520b1023a0e7b8f3cfa8ef0e135448317699fa34af11`  
		Last Modified: Wed, 30 Sep 2026 19:05:45 GMT  
		Size: 299.6 MB (299649004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cc802cd780516743f5df4bfee593f50f519b40cdd219883eca242f5f7c735c3`  
		Last Modified: Wed, 30 Sep 2026 19:05:46 GMT  
		Size: 349.3 MB (349328886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:803d96a506afa1250101fd7847f3b92c90bf845c47f38765d9e08cdc45ea24a3`  
		Last Modified: Wed, 30 Sep 2026 19:05:35 GMT  
		Size: 2.5 MB (2451649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8cc22b9b3db19f9343d735bc7ec06a86524110ee3c40d5637fa448fffba78e5`  
		Last Modified: Wed, 30 Sep 2026 19:05:36 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d78e7642b8323c5d5e09e53c2654d34f9e449a0d4454f3a7c1dbe0a345014e66`  
		Last Modified: Wed, 30 Sep 2026 19:05:37 GMT  
		Size: 2.4 KB (2370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3b7bb5d236e3808e073d383bdbf887a2c39f8409cda11ef9ae3d9913b46b789`  
		Last Modified: Wed, 30 Sep 2026 19:05:37 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7e169173418b743d461a83c23e1f14650f1782192af03fe2eedb860e215ae6`  
		Last Modified: Wed, 30 Sep 2026 19:05:38 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd23b3ca66b539263a407b9f7fd2624cc6ba9b862fa0e4e905050785253d5a0`  
		Last Modified: Wed, 30 Sep 2026 19:05:39 GMT  
		Size: 11.3 KB (11305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa0604e82d727aa7ca51bbb16e0f65bdc620e9c73b920c9fcbaa0fa0a6a0291`  
		Last Modified: Wed, 30 Sep 2026 19:05:40 GMT  
		Size: 4.3 KB (4341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:mysql-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:4a482c40a2fb88ea08dd7393cfa7866ac83fa1ef0b7beeb440e8a48d281582ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14422302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b77b290552a6fe60b04b87127386f58b4cec9f324895015a36f93ea21686e530`

```dockerfile
```

-	Layers:
	-	`sha256:ddada7d0865dfcdca7acf3be079be8cf1f88b92de747cc81feb4b43cd2bcb562`  
		Last Modified: Wed, 30 Sep 2026 19:05:35 GMT  
		Size: 14.4 MB (14353910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5580ee4d892bc25633ce9533bbb387dcb6f6a56a4c9e57dcdd7a69a8a23e87e1`  
		Last Modified: Wed, 30 Sep 2026 19:05:34 GMT  
		Size: 68.4 KB (68392 bytes)  
		MIME: application/vnd.in-toto+json
