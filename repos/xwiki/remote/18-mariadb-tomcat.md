## `xwiki:18-mariadb-tomcat`

```console
$ docker pull xwiki@sha256:4c805bf01751c200510d2d1cc1aa96d7be79797005e8e504d2fe49589706888a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:18-mariadb-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:16b24288983e63cecfda91789d879670414299c94d965766c4b336fc812ff22f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **793.4 MB (793376651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c85e848491abc48400f3e2754cefd40ffaf5ca306e65f1a13ee527c7cce40fb8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:17:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:17:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:17:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:17:29 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:17:29 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 02 Oct 2026 01:19:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='7b0731083e1f298d2216b266bfbb2ea600482cc025362af4129aaed758afc611';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:19:07 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:19:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:19:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:26:33 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:26:33 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:26:33 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:26:33 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:26:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:26:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:26:33 GMT
ENV TOMCAT_MAJOR=10
# Fri, 02 Oct 2026 03:26:33 GMT
ENV TOMCAT_VERSION=10.1.60
# Fri, 02 Oct 2026 03:26:33 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Fri, 02 Oct 2026 03:26:33 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:26:39 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:26:40 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:26:40 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:26:40 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:26:40 GMT
CMD ["catalina.sh" "run"]
# Fri, 02 Oct 2026 04:13:21 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Fri, 02 Oct 2026 04:13:21 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Fri, 02 Oct 2026 04:13:21 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Fri, 02 Oct 2026 04:13:21 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Fri, 02 Oct 2026 04:13:21 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Fri, 02 Oct 2026 04:13:21 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Fri, 02 Oct 2026 04:13:21 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 04:13:21 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Fri, 02 Oct 2026 04:13:21 GMT
ENV LIBREOFFICE_VERSION=26.2.6
# Fri, 02 Oct 2026 04:13:21 GMT
ENV LIBREOFFICE_SHA256_AMD64=fd0e8f8f2408dd2e5b90286e60f3f97cf566ba441cd48cfc5bcc68067303e0bc
# Fri, 02 Oct 2026 04:13:21 GMT
ENV LIBREOFFICE_SHA256_ARM64=f8e8b1d30abde0d530d727ce1b26909ccbedc3d76bcf75d93b3dd5fcd5b8d278
# Fri, 02 Oct 2026 04:13:21 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.6/deb
# Fri, 02 Oct 2026 04:13:39 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Fri, 02 Oct 2026 04:13:39 GMT
ENV XWIKI_VERSION=18.8.0
# Fri, 02 Oct 2026 04:13:39 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.8.0
# Fri, 02 Oct 2026 04:13:39 GMT
ENV XWIKI_DOWNLOAD_SHA256=4229bed73db82721ee8e795c1136dbf5d9827aade8894027687d95655f8907b1
# Fri, 02 Oct 2026 04:14:01 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Fri, 02 Oct 2026 04:14:01 GMT
ENV MARIADB_JDBC_VERSION=3.5.10
# Fri, 02 Oct 2026 04:14:01 GMT
ENV MARIADB_JDBC_SHA256=919b8c1c771d9ee3465811462f242c9543ab401e140c64988ddbf1d8abcb18b2
# Fri, 02 Oct 2026 04:14:01 GMT
ENV MARIADB_JDBC_PREFIX=https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/3.5.10
# Fri, 02 Oct 2026 04:14:01 GMT
ENV MARIADB_JDBC_ARTIFACT=mariadb-java-client-3.5.10.jar
# Fri, 02 Oct 2026 04:14:01 GMT
ENV MARIADB_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mariadb-java-client-3.5.10.jar
# Fri, 02 Oct 2026 04:14:01 GMT
RUN set -eux;   curl $CURL_OPTIONS "${MARIADB_JDBC_PREFIX}/${MARIADB_JDBC_ARTIFACT}" -o $MARIADB_JDBC_TARGET;   echo "$MARIADB_JDBC_SHA256 *$MARIADB_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Fri, 02 Oct 2026 04:14:01 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Fri, 02 Oct 2026 04:14:01 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Fri, 02 Oct 2026 04:14:01 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Fri, 02 Oct 2026 04:14:01 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Fri, 02 Oct 2026 04:14:01 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Fri, 02 Oct 2026 04:14:01 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 04:14:01 GMT
VOLUME [/usr/local/xwiki]
# Fri, 02 Oct 2026 04:14:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Oct 2026 04:14:01 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49b14164d4d96e593cb68db980906b691931cdcde6f60b918280317c89e55462`  
		Last Modified: Fri, 02 Oct 2026 01:17:43 GMT  
		Size: 19.4 MB (19375635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c48d168a51b541814c6814256cd298e11114f5f088e4511cffb4f6b3622d1b6`  
		Last Modified: Fri, 02 Oct 2026 01:19:20 GMT  
		Size: 53.1 MB (53097597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5165dac19553999758e23bf9247e5bac05f0d26ee503d13bf70c1e8873eb8d37`  
		Last Modified: Fri, 02 Oct 2026 01:19:18 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e0e048361058af7411fe47569c4d90b68a917dba037514c3831b7bf7029c7b`  
		Last Modified: Fri, 02 Oct 2026 01:19:18 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634b653dd21ab5437e8659595e420268844af2cc0d013d9eae543cd592eeb8fb`  
		Last Modified: Fri, 02 Oct 2026 03:26:48 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b847659e6d67d24897b78d36063b9623fc9a5deb085f7214f8607f7730dc930f`  
		Last Modified: Fri, 02 Oct 2026 03:26:49 GMT  
		Size: 14.4 MB (14370381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076571f848f08e3f7a946e60413f763bbed5a4556bfa9ea33e9c034f3c20358a`  
		Last Modified: Fri, 02 Oct 2026 03:26:48 GMT  
		Size: 225.6 KB (225555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17eb2916987fce6ff13dfa987d8b3aee5b454db5733841a0a42b508ce8c057c9`  
		Last Modified: Fri, 02 Oct 2026 04:14:48 GMT  
		Size: 22.8 MB (22833193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5350a730ab6c25697c3ab28a0c92bc11646cd2ef221bf2c623d53525f1196b`  
		Last Modified: Fri, 02 Oct 2026 04:14:58 GMT  
		Size: 303.6 MB (303619628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b315ae9634e09d49a542261fbcf38bdeace963ccbe49d942c84195add678703`  
		Last Modified: Fri, 02 Oct 2026 04:14:59 GMT  
		Size: 349.3 MB (349328887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0433d7c379139556c8c1417828d28ecec70a6e4a0438d755583a53dc95558f50`  
		Last Modified: Fri, 02 Oct 2026 04:14:46 GMT  
		Size: 735.5 KB (735463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f27dbd0325d60968f1d9faec8da9b41717adf89bc9a0670ca1d8fe2f1c5e781a`  
		Last Modified: Fri, 02 Oct 2026 04:14:47 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2379714619bff870724c6877be6ccb836635c771354bd40f4401054da1d0cefa`  
		Last Modified: Fri, 02 Oct 2026 04:14:49 GMT  
		Size: 2.3 KB (2308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf94f0b37a8c428f9bc62890c37d34f8dc926db0cc02865d0d2d73280628aa15`  
		Last Modified: Fri, 02 Oct 2026 04:14:49 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:709989bbc33275604ae00fd39cb3065c3589b33eb110f3177fbdd5a4c7024d4b`  
		Last Modified: Fri, 02 Oct 2026 04:14:50 GMT  
		Size: 2.4 KB (2436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142d4f659e681eba1507e00bb8323cf8897951cf922842ad60b8cc8efc821892`  
		Last Modified: Fri, 02 Oct 2026 04:14:50 GMT  
		Size: 11.3 KB (11302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018525abe3146f4c2ba7282eb5ca03b731bde121795dfb60fa4933b1a11e72cf`  
		Last Modified: Fri, 02 Oct 2026 04:14:51 GMT  
		Size: 4.3 KB (4305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:18-mariadb-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:c1f82bcd0d75033fdc9170281c30165c2782178d3079f35052683b8684f5c8df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14418532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b37b868a68bcb7d88a77bdbbe4d494c6fd5e7ef1947799cc31ee23919bba922c`

```dockerfile
```

-	Layers:
	-	`sha256:bce301f37cc928b4ba0aed3b1e8d84512e24285e84228854f530c2b0896992c6`  
		Last Modified: Fri, 02 Oct 2026 04:14:47 GMT  
		Size: 14.4 MB (14351719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b9355fc2f471c13683d10d6a2ac399396e9282ff0c70c0c636b78c6a92edf94`  
		Last Modified: Fri, 02 Oct 2026 04:14:46 GMT  
		Size: 66.8 KB (66813 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:18-mariadb-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:271ed422b4609b1711b3d55eb949c02140c132af674539267c4fa0564a110b0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **787.5 MB (787529822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f794f54dfc8c3101faf84c139c4f1af83b9d254641508cf878ec1673a6d8871`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:18:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:18:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:18:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:18:41 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:18:41 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 02 Oct 2026 01:19:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='7b0731083e1f298d2216b266bfbb2ea600482cc025362af4129aaed758afc611';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:19:07 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:19:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:19:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:25:06 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:25:06 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:25:06 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:25:08 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:25:08 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:25:08 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:25:08 GMT
ENV TOMCAT_MAJOR=10
# Fri, 02 Oct 2026 03:25:08 GMT
ENV TOMCAT_VERSION=10.1.60
# Fri, 02 Oct 2026 03:25:08 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Fri, 02 Oct 2026 03:25:32 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:25:39 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:25:40 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:25:40 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:25:40 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:25:40 GMT
CMD ["catalina.sh" "run"]
# Fri, 02 Oct 2026 04:13:11 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Fri, 02 Oct 2026 04:13:11 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Fri, 02 Oct 2026 04:13:11 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Fri, 02 Oct 2026 04:13:11 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Fri, 02 Oct 2026 04:13:11 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Fri, 02 Oct 2026 04:13:11 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Fri, 02 Oct 2026 04:13:11 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 04:13:11 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Fri, 02 Oct 2026 04:13:11 GMT
ENV LIBREOFFICE_VERSION=26.2.6
# Fri, 02 Oct 2026 04:13:11 GMT
ENV LIBREOFFICE_SHA256_AMD64=fd0e8f8f2408dd2e5b90286e60f3f97cf566ba441cd48cfc5bcc68067303e0bc
# Fri, 02 Oct 2026 04:13:11 GMT
ENV LIBREOFFICE_SHA256_ARM64=f8e8b1d30abde0d530d727ce1b26909ccbedc3d76bcf75d93b3dd5fcd5b8d278
# Fri, 02 Oct 2026 04:13:11 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.6/deb
# Fri, 02 Oct 2026 04:13:48 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Fri, 02 Oct 2026 04:13:48 GMT
ENV XWIKI_VERSION=18.8.0
# Fri, 02 Oct 2026 04:13:48 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.8.0
# Fri, 02 Oct 2026 04:13:48 GMT
ENV XWIKI_DOWNLOAD_SHA256=4229bed73db82721ee8e795c1136dbf5d9827aade8894027687d95655f8907b1
# Fri, 02 Oct 2026 04:14:09 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Fri, 02 Oct 2026 04:14:09 GMT
ENV MARIADB_JDBC_VERSION=3.5.10
# Fri, 02 Oct 2026 04:14:09 GMT
ENV MARIADB_JDBC_SHA256=919b8c1c771d9ee3465811462f242c9543ab401e140c64988ddbf1d8abcb18b2
# Fri, 02 Oct 2026 04:14:09 GMT
ENV MARIADB_JDBC_PREFIX=https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/3.5.10
# Fri, 02 Oct 2026 04:14:09 GMT
ENV MARIADB_JDBC_ARTIFACT=mariadb-java-client-3.5.10.jar
# Fri, 02 Oct 2026 04:14:09 GMT
ENV MARIADB_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mariadb-java-client-3.5.10.jar
# Fri, 02 Oct 2026 04:14:09 GMT
RUN set -eux;   curl $CURL_OPTIONS "${MARIADB_JDBC_PREFIX}/${MARIADB_JDBC_ARTIFACT}" -o $MARIADB_JDBC_TARGET;   echo "$MARIADB_JDBC_SHA256 *$MARIADB_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Fri, 02 Oct 2026 04:14:09 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Fri, 02 Oct 2026 04:14:09 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Fri, 02 Oct 2026 04:14:09 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Fri, 02 Oct 2026 04:14:09 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Fri, 02 Oct 2026 04:14:09 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Fri, 02 Oct 2026 04:14:09 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 04:14:09 GMT
VOLUME [/usr/local/xwiki]
# Fri, 02 Oct 2026 04:14:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Oct 2026 04:14:09 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e719170bea597650f1176bbe6e7e3de1aa31243ed5e9c508aad9c51f26d81d`  
		Last Modified: Fri, 02 Oct 2026 01:18:56 GMT  
		Size: 19.2 MB (19241374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6a82f4237959aa9d80d4135827058db2b23e5fcaeeeec0570b524044aa9ce41`  
		Last Modified: Fri, 02 Oct 2026 01:19:21 GMT  
		Size: 52.3 MB (52273842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e98619ad31209554cf888d01a927e8eacc51b5b26cd74f6c150c0daafc6690d`  
		Last Modified: Fri, 02 Oct 2026 01:19:19 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baae1338e74a2d60cbc4c8b6599e3cb5e1480d72d2fd8e6bb14911288c467627`  
		Last Modified: Fri, 02 Oct 2026 01:19:20 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0881ec17cbe97054da5efd97b73e1eaa46a26f9cc96e113a06fe28640f0e52e9`  
		Last Modified: Fri, 02 Oct 2026 03:25:23 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b78bb8b3f564ad0061495d3cb7411ac745dafb2b77e686e5d037e932194f8a`  
		Last Modified: Fri, 02 Oct 2026 03:25:48 GMT  
		Size: 14.4 MB (14372669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c1546d70cfaffaa2227845053a24e99afe3a6068ba3b116547bb610719af04`  
		Last Modified: Fri, 02 Oct 2026 03:25:48 GMT  
		Size: 225.8 KB (225769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d0b8bd66eb3be43c955ca53d0d1df85af9008eff941ed622d1a16a1b33b66b`  
		Last Modified: Fri, 02 Oct 2026 04:14:57 GMT  
		Size: 22.7 MB (22736769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c51a250589f29245be3c0637b9b8e9265dd2763597db3368e43d863782ed48ed`  
		Last Modified: Fri, 02 Oct 2026 04:15:08 GMT  
		Size: 299.6 MB (299649067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:419c0cc1caf70cdc94960626664375c7813817d4d2a6c4f0409c6e6b34ad6d7e`  
		Last Modified: Fri, 02 Oct 2026 04:15:09 GMT  
		Size: 349.3 MB (349328888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c02b6ee39465d245a18e1bc5a563c8dfc3f1c08f8efa04cd8843a3bb3d8b5b`  
		Last Modified: Fri, 02 Oct 2026 04:14:56 GMT  
		Size: 735.5 KB (735462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949ffd227b0a374c6e4728cc0b4c015cb00fbc37a23e2dbad13ec9c5ca90504c`  
		Last Modified: Fri, 02 Oct 2026 04:14:57 GMT  
		Size: 1.8 KB (1839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a347694774587ed5748ea353e0aaa19ed87364e5d4a1d558ba1ef6039b7b32`  
		Last Modified: Fri, 02 Oct 2026 04:14:58 GMT  
		Size: 2.3 KB (2312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8f40040d6a544e301bccf21c47d75ce743701053800798154be62aa45702ef3`  
		Last Modified: Fri, 02 Oct 2026 04:14:59 GMT  
		Size: 873.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:769c0303cb9e18ee25f660ac91ce413544711775ed0e485160723d2da3a5b037`  
		Last Modified: Fri, 02 Oct 2026 04:15:00 GMT  
		Size: 2.4 KB (2438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae2dfbc42c795023fee2cfc16e8ef94baa920142409d337d7bf093110b393a14`  
		Last Modified: Fri, 02 Oct 2026 04:15:00 GMT  
		Size: 11.3 KB (11302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9ef0149eb3e1ed4b24796ef2527f864084d1906e29e91009bd90c33711215f`  
		Last Modified: Fri, 02 Oct 2026 04:15:01 GMT  
		Size: 4.3 KB (4305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:18-mariadb-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:b105094ce2807457752a6e7f2a9492dd85de6e351489f1b9bb8609de5101b72b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14419351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93d4485e961b13c45c701f22c0e87001cfa7ce4503dad68a312ba18dfb24a4b1`

```dockerfile
```

-	Layers:
	-	`sha256:e5be39cea993a06f9d308a75ed5b74637cf389df2ef4bef6eb2b772bfef0b81a`  
		Last Modified: Fri, 02 Oct 2026 04:14:56 GMT  
		Size: 14.4 MB (14352335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c50170fecdcf5f85f6ee87d50797db9e4bcf03c4f458607c08770af12a074968`  
		Last Modified: Fri, 02 Oct 2026 04:14:55 GMT  
		Size: 67.0 KB (67016 bytes)  
		MIME: application/vnd.in-toto+json
