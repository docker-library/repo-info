## `xwiki:17-mariadb-tomcat`

```console
$ docker pull xwiki@sha256:c33565c8dfc3dd037064ccb555fb104168a90fde56fa562701c6c2464f14eafa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:17-mariadb-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:cd2a5e6ae322a0d9cfa9d4808bffe3e8ce7feae1bfb8e6e584c952ab3239b7fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **770.2 MB (770193603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93e6b474b73b802bc041e64a2e61e67df6cc191bfeb18a6336121cab78c87bc`
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
# Wed, 09 Sep 2026 05:13:18 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 09 Sep 2026 05:13:18 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 09 Sep 2026 05:13:18 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 09 Sep 2026 05:13:18 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 09 Sep 2026 05:13:18 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 09 Sep 2026 05:13:18 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 09 Sep 2026 05:13:18 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 05:13:18 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Wed, 09 Sep 2026 05:13:18 GMT
ENV LIBREOFFICE_VERSION=26.2.6
# Wed, 09 Sep 2026 05:13:18 GMT
ENV LIBREOFFICE_SHA256_AMD64=fd0e8f8f2408dd2e5b90286e60f3f97cf566ba441cd48cfc5bcc68067303e0bc
# Wed, 09 Sep 2026 05:13:18 GMT
ENV LIBREOFFICE_SHA256_ARM64=f8e8b1d30abde0d530d727ce1b26909ccbedc3d76bcf75d93b3dd5fcd5b8d278
# Wed, 09 Sep 2026 05:13:18 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.6/deb
# Wed, 09 Sep 2026 05:13:40 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Wed, 09 Sep 2026 05:13:40 GMT
ENV XWIKI_VERSION=17.10.12
# Wed, 09 Sep 2026 05:13:40 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.12
# Wed, 09 Sep 2026 05:13:40 GMT
ENV XWIKI_DOWNLOAD_SHA256=68ce377fa59b2bd411eef863ab1216d08b63803b0a26264b3b00679fa0183ead
# Wed, 09 Sep 2026 05:14:00 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Wed, 09 Sep 2026 05:14:00 GMT
ENV MARIADB_JDBC_VERSION=3.5.10
# Wed, 09 Sep 2026 05:14:00 GMT
ENV MARIADB_JDBC_SHA256=919b8c1c771d9ee3465811462f242c9543ab401e140c64988ddbf1d8abcb18b2
# Wed, 09 Sep 2026 05:14:00 GMT
ENV MARIADB_JDBC_PREFIX=https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/3.5.10
# Wed, 09 Sep 2026 05:14:00 GMT
ENV MARIADB_JDBC_ARTIFACT=mariadb-java-client-3.5.10.jar
# Wed, 09 Sep 2026 05:14:00 GMT
ENV MARIADB_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mariadb-java-client-3.5.10.jar
# Wed, 09 Sep 2026 05:14:00 GMT
RUN set -eux;   curl $CURL_OPTIONS "${MARIADB_JDBC_PREFIX}/${MARIADB_JDBC_ARTIFACT}" -o $MARIADB_JDBC_TARGET;   echo "$MARIADB_JDBC_SHA256 *$MARIADB_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Wed, 09 Sep 2026 05:14:01 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 09 Sep 2026 05:14:01 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 09 Sep 2026 05:14:01 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Wed, 09 Sep 2026 05:14:01 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Wed, 09 Sep 2026 05:14:01 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 09 Sep 2026 05:14:01 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 05:14:01 GMT
VOLUME [/usr/local/xwiki]
# Wed, 09 Sep 2026 05:14:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 05:14:01 GMT
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
	-	`sha256:b726484a80eca35a38152ba46180b92f18bdd2c5921dbbc45ce57ced736ae747`  
		Last Modified: Wed, 09 Sep 2026 05:14:50 GMT  
		Size: 22.8 MB (22829612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba9dc27fe31f66a9e0417de36b16739660801c5043e10de5b3b4a7ece33882f`  
		Last Modified: Wed, 09 Sep 2026 05:15:00 GMT  
		Size: 303.6 MB (303619368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4991bc500f9dae148abc8912e4d7f6be73c0447369f7da46c3dd918237fe971`  
		Last Modified: Wed, 09 Sep 2026 05:15:00 GMT  
		Size: 328.6 MB (328568657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667c1e4f054fc16c02c6e7246d29a058869f334c8054477714f4d465d212fe17`  
		Last Modified: Wed, 09 Sep 2026 05:14:48 GMT  
		Size: 735.5 KB (735467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f14421538c0c83985102d00810c474332876b1fb267ac8ea865030a6321243`  
		Last Modified: Wed, 09 Sep 2026 05:14:50 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf2105c02e9c66464f50fc41d69c9fc85d8cb9a8a1d0fd69fc8e47e6ce1cc060`  
		Last Modified: Wed, 09 Sep 2026 05:14:51 GMT  
		Size: 2.3 KB (2310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78db6e08213db961f3fc9263f3da4968fec7268d4acbd4b80dcf96296dcaed06`  
		Last Modified: Wed, 09 Sep 2026 05:14:51 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77b4363cceddf66867f63f84b6bb2586b65fc526ff5c5a2b271950a14c49719d`  
		Last Modified: Wed, 09 Sep 2026 05:14:52 GMT  
		Size: 2.4 KB (2440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:096643d806d43140da8d76d124a69355e4ccb542ea0782c2e609dd3d6c5f69c9`  
		Last Modified: Wed, 09 Sep 2026 05:14:53 GMT  
		Size: 10.8 KB (10778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d711d12c8076149021d81083ce880568d60304070e7cd713577527fe7ea3d6e`  
		Last Modified: Wed, 09 Sep 2026 05:14:54 GMT  
		Size: 4.3 KB (4304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:17-mariadb-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:111e2fc8d9558217fd7e791ae2decb67426a2b918b3220989f391ad3daa8b79a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14384024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1c9cd18ca64f463ac57cc9e676a58095db3ff7d06c9efe122629e2cf3da4759`

```dockerfile
```

-	Layers:
	-	`sha256:d7919b0ce3e8b83cd3bfc329eb61b1b5c1cea11fb036edd0b549bfd4ee7688b2`  
		Last Modified: Wed, 09 Sep 2026 05:14:49 GMT  
		Size: 14.3 MB (14317521 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7e38630fa56c2b43bcc66447c7c619d6f919f787eced3c4fb34d3c6974a61cf`  
		Last Modified: Wed, 09 Sep 2026 05:14:48 GMT  
		Size: 66.5 KB (66503 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:17-mariadb-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:d58a73a52f8b87f5b498edf7fbc1a356f10f31e3386147501ec816ac8bb4af2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **764.5 MB (764493859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141f01fad50aee525704d46ca2368c49eadcb19960b0eb9cb5c0a38f78cadcbe`
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
# Wed, 09 Sep 2026 05:13:03 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 09 Sep 2026 05:13:03 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 09 Sep 2026 05:13:03 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 09 Sep 2026 05:13:03 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 09 Sep 2026 05:13:03 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 09 Sep 2026 05:13:03 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 09 Sep 2026 05:13:03 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 05:13:03 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Wed, 09 Sep 2026 05:13:03 GMT
ENV LIBREOFFICE_VERSION=26.2.6
# Wed, 09 Sep 2026 05:13:03 GMT
ENV LIBREOFFICE_SHA256_AMD64=fd0e8f8f2408dd2e5b90286e60f3f97cf566ba441cd48cfc5bcc68067303e0bc
# Wed, 09 Sep 2026 05:13:03 GMT
ENV LIBREOFFICE_SHA256_ARM64=f8e8b1d30abde0d530d727ce1b26909ccbedc3d76bcf75d93b3dd5fcd5b8d278
# Wed, 09 Sep 2026 05:13:03 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.6/deb
# Wed, 09 Sep 2026 05:13:25 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Wed, 09 Sep 2026 05:13:25 GMT
ENV XWIKI_VERSION=17.10.12
# Wed, 09 Sep 2026 05:13:25 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.12
# Wed, 09 Sep 2026 05:13:25 GMT
ENV XWIKI_DOWNLOAD_SHA256=68ce377fa59b2bd411eef863ab1216d08b63803b0a26264b3b00679fa0183ead
# Wed, 09 Sep 2026 05:13:47 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Wed, 09 Sep 2026 05:13:47 GMT
ENV MARIADB_JDBC_VERSION=3.5.10
# Wed, 09 Sep 2026 05:13:47 GMT
ENV MARIADB_JDBC_SHA256=919b8c1c771d9ee3465811462f242c9543ab401e140c64988ddbf1d8abcb18b2
# Wed, 09 Sep 2026 05:13:47 GMT
ENV MARIADB_JDBC_PREFIX=https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/3.5.10
# Wed, 09 Sep 2026 05:13:47 GMT
ENV MARIADB_JDBC_ARTIFACT=mariadb-java-client-3.5.10.jar
# Wed, 09 Sep 2026 05:13:47 GMT
ENV MARIADB_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mariadb-java-client-3.5.10.jar
# Wed, 09 Sep 2026 05:13:47 GMT
RUN set -eux;   curl $CURL_OPTIONS "${MARIADB_JDBC_PREFIX}/${MARIADB_JDBC_ARTIFACT}" -o $MARIADB_JDBC_TARGET;   echo "$MARIADB_JDBC_SHA256 *$MARIADB_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Wed, 09 Sep 2026 05:13:47 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 09 Sep 2026 05:13:47 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 09 Sep 2026 05:13:47 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Wed, 09 Sep 2026 05:13:47 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Wed, 09 Sep 2026 05:13:48 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 09 Sep 2026 05:13:48 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 05:13:48 GMT
VOLUME [/usr/local/xwiki]
# Wed, 09 Sep 2026 05:13:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 05:13:48 GMT
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
	-	`sha256:ce3a2db4b218f04d2974f29b430b5784a24b80d0e69e47bbd13eec6aece7a269`  
		Last Modified: Wed, 09 Sep 2026 05:14:34 GMT  
		Size: 22.7 MB (22737151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:309067ec87e96c6181db9d5229a200fd0ec0de8e147ef1a60f3f8999b5ed251c`  
		Last Modified: Wed, 09 Sep 2026 05:14:46 GMT  
		Size: 299.6 MB (299648884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae22c093f5e78c0329ab0eb96be55930b9224a8548cc52fb52a66f134903a17c`  
		Last Modified: Wed, 09 Sep 2026 05:14:46 GMT  
		Size: 328.6 MB (328568666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01487f32c421d97afebf6517719906e7a87614d9782394e5cc9aa31f8c19c90c`  
		Last Modified: Wed, 09 Sep 2026 05:14:33 GMT  
		Size: 735.5 KB (735462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a825604b7e99b7b86753b21ce019330176dc41df32bf0201e92b0e5e4bd68b`  
		Last Modified: Wed, 09 Sep 2026 05:14:35 GMT  
		Size: 1.8 KB (1838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a902de3d9c511458788e1217a2fa51b177cb32449690d396fd7d9891fb5bc840`  
		Last Modified: Wed, 09 Sep 2026 05:14:36 GMT  
		Size: 2.3 KB (2307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6d4df9a5e93e3ca7b4b920bc951e6afe17d05eaf136fc8d10c2667bf10cb6b`  
		Last Modified: Wed, 09 Sep 2026 05:14:37 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec20de4631e29bdde7915f46daa9049cd01a6d041591d8c0b1ccf8d0ebf4cc1`  
		Last Modified: Wed, 09 Sep 2026 05:14:37 GMT  
		Size: 2.4 KB (2437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0269a2b506d39022c26d43a81de6813a490a25326c82224dafedee209c28037f`  
		Last Modified: Wed, 09 Sep 2026 05:14:38 GMT  
		Size: 10.8 KB (10777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69db544d8cd11f57f4e9741eebef524c5cf34097b92f707abe6701b895f085e3`  
		Last Modified: Wed, 09 Sep 2026 05:14:38 GMT  
		Size: 4.3 KB (4306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:17-mariadb-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:378f788a12dc1ded1febbe776b54bde0a87823c6a16b80d1f4f0dab3af9412ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14384819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5057318ea21cf3641c653d3a2008aa7cc21fab71105ed790a357b28ccee79141`

```dockerfile
```

-	Layers:
	-	`sha256:790e71b3825280c3d0638264fe4ceae31ec22823545a91680dffab55e2dc8263`  
		Last Modified: Wed, 09 Sep 2026 05:14:34 GMT  
		Size: 14.3 MB (14318125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f036cc9d10e9b1e84667a7586d99136b58cea685f1bf0f839ec1cad467f4643`  
		Last Modified: Wed, 09 Sep 2026 05:14:33 GMT  
		Size: 66.7 KB (66694 bytes)  
		MIME: application/vnd.in-toto+json
