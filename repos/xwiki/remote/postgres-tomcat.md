## `xwiki:postgres-tomcat`

```console
$ docker pull xwiki@sha256:6091aec4bacbd49f2961f04db4685d4809abc711e772f9d81f5424371784ff10
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:aa47c5e35b5cdfc9981ac77ebc38490c932c57381198409219228a3f07c3dd99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **789.5 MB (789460928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ca31a11f0cfe2aa9a8ff148a6bf26fb3ff4f42b2aec8302ffba4b4b374f476b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:25:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:25:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:25:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:37 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:25:37 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:25:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8a379a67c91a3ae61ffb33d46e0a40c7ba35e70713c4db31cfca30492f792eff';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='5f9c96b656827b9d14ebeda7739e25be554fa6d25669b03847c1df6e869c0679';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='fe1b73886269d589336532c31c0db0d01ac7cd567313cfe3e76f02b37b58c068';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        riscv64)          ESUM='e1fabd17fd266409221323a754b0a5467a0bdc118b06302646f7b795cd49d95a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2ec0aecaec755ffa8c7904983f89873e51c28e683de39946ba49496acae8fe96';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:25:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:25:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 20:36:55 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 21 Aug 2026 20:36:55 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 20:36:55 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 21 Aug 2026 20:36:55 GMT
WORKDIR /usr/local/tomcat
# Fri, 21 Aug 2026 20:36:55 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 20:36:55 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 20:36:55 GMT
ENV TOMCAT_MAJOR=10
# Fri, 21 Aug 2026 20:36:55 GMT
ENV TOMCAT_VERSION=10.1.59
# Fri, 21 Aug 2026 20:36:55 GMT
ENV TOMCAT_SHA512=992a8e88fc9c0338445f018a1e4a2757c9e71708dba795e2864c9b1613f2b3b9b19c048e787682deae6d6bff9971defc746e31282085d52ef1d32192e09f7a0f
# Fri, 21 Aug 2026 20:36:55 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 21 Aug 2026 20:36:58 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 20:36:59 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 21 Aug 2026 20:36:59 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 20:36:59 GMT
ENTRYPOINT []
# Fri, 21 Aug 2026 20:36:59 GMT
CMD ["catalina.sh" "run"]
# Tue, 08 Sep 2026 21:25:49 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Tue, 08 Sep 2026 21:25:49 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Tue, 08 Sep 2026 21:25:49 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Tue, 08 Sep 2026 21:25:49 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Tue, 08 Sep 2026 21:25:49 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Tue, 08 Sep 2026 21:25:49 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Tue, 08 Sep 2026 21:25:49 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:25:49 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Tue, 08 Sep 2026 21:25:49 GMT
ENV LIBREOFFICE_VERSION=26.2.6
# Tue, 08 Sep 2026 21:25:49 GMT
ENV LIBREOFFICE_SHA256_AMD64=fd0e8f8f2408dd2e5b90286e60f3f97cf566ba441cd48cfc5bcc68067303e0bc
# Tue, 08 Sep 2026 21:25:49 GMT
ENV LIBREOFFICE_SHA256_ARM64=f8e8b1d30abde0d530d727ce1b26909ccbedc3d76bcf75d93b3dd5fcd5b8d278
# Tue, 08 Sep 2026 21:25:49 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.6/deb
# Tue, 08 Sep 2026 21:26:14 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Tue, 08 Sep 2026 21:26:14 GMT
ENV XWIKI_VERSION=18.7.0
# Tue, 08 Sep 2026 21:26:14 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.7.0
# Tue, 08 Sep 2026 21:26:14 GMT
ENV XWIKI_DOWNLOAD_SHA256=a7241fae987376b568a45494f11b034df9b155ba516d2ab0b20b5212a95803b9
# Tue, 08 Sep 2026 21:26:35 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Tue, 08 Sep 2026 21:26:35 GMT
ENV POSTGRES_JDBC_VERSION=42.7.13
# Tue, 08 Sep 2026 21:26:35 GMT
ENV POSTGRES_JDBC_SHA256=6e0e4cc2d8cae902084f8a2b18728b073a6fd9d1f87c9d8bff8f298c18185b93
# Tue, 08 Sep 2026 21:26:35 GMT
ENV POSTGRES_JDBC_PREFIX=https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.13
# Tue, 08 Sep 2026 21:26:35 GMT
ENV POSTGRES_JDBC_ARTIFACT=postgresql-42.7.13.jar
# Tue, 08 Sep 2026 21:26:35 GMT
ENV POSTGRES_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.13.jar
# Tue, 08 Sep 2026 21:26:35 GMT
RUN set -eux;   curl $CURL_OPTIONS "${POSTGRES_JDBC_PREFIX}/${POSTGRES_JDBC_ARTIFACT}" -o $POSTGRES_JDBC_TARGET;   echo "$POSTGRES_JDBC_SHA256 *$POSTGRES_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Tue, 08 Sep 2026 21:26:35 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Tue, 08 Sep 2026 21:26:35 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Tue, 08 Sep 2026 21:26:35 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Tue, 08 Sep 2026 21:26:35 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Tue, 08 Sep 2026 21:26:35 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Tue, 08 Sep 2026 21:26:35 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 08 Sep 2026 21:26:35 GMT
VOLUME [/usr/local/xwiki]
# Tue, 08 Sep 2026 21:26:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 21:26:35 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f329e4db3f4c3b30f5d71fc4c6fd72cc9933a2da04cd27f101ec5f49e0ba33`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 16.9 MB (16946238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c256661d95c11255861153eda7a7c78fb07fe86151e8955a598cabe4a37db51c`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 53.1 MB (53097595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:989e0d98c97535b8f2ee1e65b371e7674df0e3214a33e5acfabb9778fe2d4787`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:507729e6d2c55cb7600e94814d9b930de3314fdf1a3846b4aa24db6140b6a5ce`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab754fc0cce73d6840ac5788ab0ae50e70bc270d1097451c44d5e16c4e37262`  
		Last Modified: Fri, 21 Aug 2026 20:37:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf40615942218c1884bd44a88e6659af995231cf82919e8100a29efb445f095e`  
		Last Modified: Fri, 21 Aug 2026 20:37:07 GMT  
		Size: 14.4 MB (14382220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56cf3fa84e94cd1d6b3e7e3b5fd2d2289c7911cc4dab2fc08727c53055dfdd89`  
		Last Modified: Fri, 21 Aug 2026 20:37:07 GMT  
		Size: 225.2 KB (225248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3bc62975f4f61baa98c6ff790df147be4e3e1568cfc7f7b3283ff0806cdf259`  
		Last Modified: Tue, 08 Sep 2026 21:27:24 GMT  
		Size: 23.7 MB (23703347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d3b6bdef32b937736ef43371a2f97f2eb3419d9b59071c38dae3e796c31690`  
		Last Modified: Tue, 08 Sep 2026 21:27:35 GMT  
		Size: 303.6 MB (303619197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d096c19a4f75908f96587a25c9cd0c29e174fe5d6d2eea323f3dae799806db49`  
		Last Modified: Tue, 08 Sep 2026 21:27:36 GMT  
		Size: 346.6 MB (346565879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e40b156afac318012537a1eb6203299376772f39d14bbc5cc1de98f2ff6c6954`  
		Last Modified: Tue, 08 Sep 2026 21:27:23 GMT  
		Size: 1.1 MB (1142537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a540f189a2ba5773d3a9381f4218278128f552d95c542473364f9daef04a889`  
		Last Modified: Tue, 08 Sep 2026 21:27:25 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0802c67478a7f264924fd30a135261d870906f233ae412f328556bf7a30b2a0c`  
		Last Modified: Tue, 08 Sep 2026 21:27:26 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cf14710948ceaabbb077199fd3627699c56582cc89ce41392e21ce6a7d58d72`  
		Last Modified: Tue, 08 Sep 2026 21:27:26 GMT  
		Size: 873.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ab7a67d7537d29b597aa3dc6ce6f6afd41c8496503a5ba73fe65140887d4b9`  
		Last Modified: Tue, 08 Sep 2026 21:27:27 GMT  
		Size: 2.4 KB (2437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f8747376d19e359362e410f0a5e8048fbc78ce7c1893dc9c4570efb61add7d`  
		Last Modified: Tue, 08 Sep 2026 21:27:27 GMT  
		Size: 11.1 KB (11087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b3acb06f9bd8f6672ebd99acd4c617f5a712522134c6a02a0c900c619e60a7`  
		Last Modified: Tue, 08 Sep 2026 21:27:28 GMT  
		Size: 4.2 KB (4250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:postgres-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:b30c2d7a85d2afc189ea49681e76822f974041173f3ad98468d7288ac4eb576b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14403147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29f4ca0647d0b36e48e2c4f0d148e9d8d77e24116b87804681e96877450f8c63`

```dockerfile
```

-	Layers:
	-	`sha256:9959a3e8dbd94e57b0afab21826f29ab5d2c9297791fdcf279baae5dd9b14259`  
		Last Modified: Tue, 08 Sep 2026 21:27:23 GMT  
		Size: 14.3 MB (14336387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d293ccceea4fe39f748c0934d6aaae662f0ee21b2793898a6d08101867c11875`  
		Last Modified: Tue, 08 Sep 2026 21:27:23 GMT  
		Size: 66.8 KB (66760 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:2152a7d53a96b22d228902996a0347a4e90f4a7c8d6bf71bcbffb4b3f18ed70d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **783.7 MB (783714505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e0adce8c101f0f14923e8e6f6cac763ea4d845fc3d6cc41da47dfac6ddf729e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:28:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:28:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:28:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:28:29 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:28:29 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:28:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8a379a67c91a3ae61ffb33d46e0a40c7ba35e70713c4db31cfca30492f792eff';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='5f9c96b656827b9d14ebeda7739e25be554fa6d25669b03847c1df6e869c0679';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='fe1b73886269d589336532c31c0db0d01ac7cd567313cfe3e76f02b37b58c068';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        riscv64)          ESUM='e1fabd17fd266409221323a754b0a5467a0bdc118b06302646f7b795cd49d95a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2ec0aecaec755ffa8c7904983f89873e51c28e683de39946ba49496acae8fe96';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:28:33 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:28:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:28:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 19:21:41 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 21 Aug 2026 19:21:41 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:21:41 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 21 Aug 2026 19:21:41 GMT
WORKDIR /usr/local/tomcat
# Fri, 21 Aug 2026 19:21:41 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 19:21:41 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 19:21:41 GMT
ENV TOMCAT_MAJOR=10
# Fri, 21 Aug 2026 19:21:41 GMT
ENV TOMCAT_VERSION=10.1.59
# Fri, 21 Aug 2026 19:21:41 GMT
ENV TOMCAT_SHA512=992a8e88fc9c0338445f018a1e4a2757c9e71708dba795e2864c9b1613f2b3b9b19c048e787682deae6d6bff9971defc746e31282085d52ef1d32192e09f7a0f
# Fri, 21 Aug 2026 19:21:43 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 21 Aug 2026 19:21:48 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 19:21:49 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 21 Aug 2026 19:21:49 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 19:21:49 GMT
ENTRYPOINT []
# Fri, 21 Aug 2026 19:21:49 GMT
CMD ["catalina.sh" "run"]
# Tue, 08 Sep 2026 21:25:49 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Tue, 08 Sep 2026 21:25:49 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Tue, 08 Sep 2026 21:25:49 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Tue, 08 Sep 2026 21:25:49 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Tue, 08 Sep 2026 21:25:49 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Tue, 08 Sep 2026 21:25:49 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Tue, 08 Sep 2026 21:25:49 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:25:49 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Tue, 08 Sep 2026 21:25:49 GMT
ENV LIBREOFFICE_VERSION=26.2.6
# Tue, 08 Sep 2026 21:25:49 GMT
ENV LIBREOFFICE_SHA256_AMD64=fd0e8f8f2408dd2e5b90286e60f3f97cf566ba441cd48cfc5bcc68067303e0bc
# Tue, 08 Sep 2026 21:25:49 GMT
ENV LIBREOFFICE_SHA256_ARM64=f8e8b1d30abde0d530d727ce1b26909ccbedc3d76bcf75d93b3dd5fcd5b8d278
# Tue, 08 Sep 2026 21:25:49 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.6/deb
# Tue, 08 Sep 2026 21:26:10 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Tue, 08 Sep 2026 21:26:10 GMT
ENV XWIKI_VERSION=18.7.0
# Tue, 08 Sep 2026 21:26:10 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.7.0
# Tue, 08 Sep 2026 21:26:10 GMT
ENV XWIKI_DOWNLOAD_SHA256=a7241fae987376b568a45494f11b034df9b155ba516d2ab0b20b5212a95803b9
# Tue, 08 Sep 2026 21:26:30 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Tue, 08 Sep 2026 21:26:30 GMT
ENV POSTGRES_JDBC_VERSION=42.7.13
# Tue, 08 Sep 2026 21:26:30 GMT
ENV POSTGRES_JDBC_SHA256=6e0e4cc2d8cae902084f8a2b18728b073a6fd9d1f87c9d8bff8f298c18185b93
# Tue, 08 Sep 2026 21:26:30 GMT
ENV POSTGRES_JDBC_PREFIX=https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.13
# Tue, 08 Sep 2026 21:26:30 GMT
ENV POSTGRES_JDBC_ARTIFACT=postgresql-42.7.13.jar
# Tue, 08 Sep 2026 21:26:30 GMT
ENV POSTGRES_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.13.jar
# Tue, 08 Sep 2026 21:26:30 GMT
RUN set -eux;   curl $CURL_OPTIONS "${POSTGRES_JDBC_PREFIX}/${POSTGRES_JDBC_ARTIFACT}" -o $POSTGRES_JDBC_TARGET;   echo "$POSTGRES_JDBC_SHA256 *$POSTGRES_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Tue, 08 Sep 2026 21:26:30 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Tue, 08 Sep 2026 21:26:30 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Tue, 08 Sep 2026 21:26:31 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Tue, 08 Sep 2026 21:26:31 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Tue, 08 Sep 2026 21:26:31 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Tue, 08 Sep 2026 21:26:31 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 08 Sep 2026 21:26:31 GMT
VOLUME [/usr/local/xwiki]
# Tue, 08 Sep 2026 21:26:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 21:26:31 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eddc3451cad891eb57d3979f3ea6ea8eee45eba4fdbd8401534b39284d613623`  
		Last Modified: Fri, 21 Aug 2026 18:28:46 GMT  
		Size: 17.0 MB (16951779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ac9f9c806f07843af17f4e67a86faf3ca768e97ec15d45e97fae38dcfdc4cc`  
		Last Modified: Fri, 21 Aug 2026 18:28:47 GMT  
		Size: 52.3 MB (52273651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda3adcb84456bb22c514a2e660753d08ef8187b34279c62a1c2a6feb072b1a2`  
		Last Modified: Fri, 21 Aug 2026 18:28:45 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b79577144548e0cc6f704acda68f028bf5d48b0f462dbdd8a6d6ccb0114a8c96`  
		Last Modified: Fri, 21 Aug 2026 18:28:46 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eb62a5e76338e0296be3909fa199a5207a7ef40c8fc27b351169f245ba46e10`  
		Last Modified: Fri, 21 Aug 2026 19:21:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fc5711b3ad4979037b30289d982e8f469b89a4aa9d06fdab36e3fa42bbf1da`  
		Last Modified: Fri, 21 Aug 2026 19:21:59 GMT  
		Size: 14.4 MB (14384072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb507c547430f3e26ddade227db86284582f42207f237207f1415912ef6d0a99`  
		Last Modified: Fri, 21 Aug 2026 19:21:59 GMT  
		Size: 225.6 KB (225559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7507c6ad5e361d01d2badbbe5dd3cc212aad4d224211538973770bb1dabcd5`  
		Last Modified: Tue, 08 Sep 2026 21:29:11 GMT  
		Size: 23.6 MB (23608865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:541616ce258e7422263003740f57f1a299e80ba5a9b300d58cd2a6946b28c0ca`  
		Last Modified: Tue, 08 Sep 2026 21:29:25 GMT  
		Size: 299.6 MB (299649121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11809d47266d8ffa6bf804f391c36622f4154f0774ab20ef00fff02837f2a95f`  
		Last Modified: Tue, 08 Sep 2026 21:29:26 GMT  
		Size: 346.6 MB (346565824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2df2dd0caa76831a09994ff65b4bc86e166982cec52375f81a9dbd1629c3276f`  
		Last Modified: Tue, 08 Sep 2026 21:27:31 GMT  
		Size: 1.1 MB (1142535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5984b72977e9e6f47f64c85809581bdb0a6fdc368da0a1f707cbf13c3e7636b`  
		Last Modified: Tue, 08 Sep 2026 21:28:02 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2057f6c87e9ea921bc21bbad187d65969eb2bd006138d8cfcf51fdefe06e97b`  
		Last Modified: Tue, 08 Sep 2026 21:28:12 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16502e921e32f14e6c1c2f91789d2ec50fba5c21f489dad09c930d35bc739e2c`  
		Last Modified: Tue, 08 Sep 2026 21:28:22 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a146e835363ad53c25023b052dbb28e32c024445f3b0d935333239c9c11f1f`  
		Last Modified: Tue, 08 Sep 2026 21:28:33 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb947add3220907b07fa4733bfaaec3a3fa7594e3eea10e0b068a7452a40413`  
		Last Modified: Tue, 08 Sep 2026 21:28:42 GMT  
		Size: 11.1 KB (11082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33892a0d6d39be4c6cdf87fcfafd5149d4bc1648cadcc5ab2318b152e8c01d6f`  
		Last Modified: Tue, 08 Sep 2026 21:28:53 GMT  
		Size: 4.2 KB (4250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:postgres-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:27fa71a100d72cdafd1249678b91f65730852a6cf9e7dad7da7d4395a353005c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14403965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c86c8839278f6c3ec6b7ab14bb5cc8474855e492395fda7c21f9e12e8977777b`

```dockerfile
```

-	Layers:
	-	`sha256:000d2ddeec8004acd6171a09169c1d0fdee064972e21c926b29a4dfd5bf827e0`  
		Last Modified: Tue, 08 Sep 2026 21:28:11 GMT  
		Size: 14.3 MB (14337003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:644f8314681f3de6d17dcdb350f59e1c6070fb5c1afb6026b630d8e9ccb89557`  
		Last Modified: Tue, 08 Sep 2026 21:27:16 GMT  
		Size: 67.0 KB (66962 bytes)  
		MIME: application/vnd.in-toto+json
