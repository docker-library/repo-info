## `xwiki:mariadb-tomcat`

```console
$ docker pull xwiki@sha256:8bb79a9b50829b4c348c65551f86122714d78a3db3d83ad7b76fe59af67e5864
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:mariadb-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:2f6825dc322fd805890eab13d05185672a65c07889e75809582a3e556242c646
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **784.1 MB (784099772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4573d3217445620d6fcda067496aba274b8429d068acf4a98d64993418266e59`
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
# Tue, 04 Aug 2026 04:13:14 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Tue, 04 Aug 2026 04:13:14 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Tue, 04 Aug 2026 04:13:14 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Tue, 04 Aug 2026 04:13:14 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Tue, 04 Aug 2026 04:13:14 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Tue, 04 Aug 2026 04:13:14 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Tue, 04 Aug 2026 04:13:14 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1 &&   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 04:13:14 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Tue, 04 Aug 2026 04:13:14 GMT
ENV LIBREOFFICE_VERSION=25.8.7
# Tue, 04 Aug 2026 04:13:14 GMT
ENV LIBREOFFICE_SHA256_AMD64=7f4d7b2e36921eec5122c655249a24cc88935ee357e8261fd3bccd15aa1f7b9f
# Tue, 04 Aug 2026 04:13:14 GMT
ENV LIBREOFFICE_SHA256_ARM64=67e9b7dcdeae72c7aa1357345307e67376fc2b729a7f9ebfafb372b010e22ffa
# Tue, 04 Aug 2026 04:13:14 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/25.8.7/deb
# Tue, 04 Aug 2026 04:16:43 GMT
RUN LO_ARCH="$(dpkg --print-architecture)" &&   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac &&   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz" &&   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz &&   echo "$LO_SHA256 /tmp/libreoffice.tar.gz" | sha256sum -c - &&   mkdir -p /tmp/libreoffice &&   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz &&   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb &&   ln -fs $(ls -d /opt/libreoffice*) /opt/libreoffice &&   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Tue, 04 Aug 2026 04:16:43 GMT
ENV XWIKI_VERSION=18.6.0
# Tue, 04 Aug 2026 04:16:43 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.6.0
# Tue, 04 Aug 2026 04:16:43 GMT
ENV XWIKI_DOWNLOAD_SHA256=3f4d0210f57efd98be916379e18f4714c600312c22b288f20bbc0ff39a8a4fff
# Tue, 04 Aug 2026 04:17:05 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Tue, 04 Aug 2026 04:17:05 GMT
ENV MARIADB_JDBC_VERSION=3.5.9
# Tue, 04 Aug 2026 04:17:05 GMT
ENV MARIADB_JDBC_SHA256=11e3bb5bbf8ef0e806ae4d6c5d5033fedf7262cc777f0190bde8a2f3c8e6bd8d
# Tue, 04 Aug 2026 04:17:05 GMT
ENV MARIADB_JDBC_PREFIX=https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/3.5.9
# Tue, 04 Aug 2026 04:17:05 GMT
ENV MARIADB_JDBC_ARTIFACT=mariadb-java-client-3.5.9.jar
# Tue, 04 Aug 2026 04:17:05 GMT
ENV MARIADB_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mariadb-java-client-3.5.9.jar
# Tue, 04 Aug 2026 04:17:05 GMT
RUN curl $CURL_OPTIONS "${MARIADB_JDBC_PREFIX}/${MARIADB_JDBC_ARTIFACT}" -o $MARIADB_JDBC_TARGET &&   echo "$MARIADB_JDBC_SHA256 $MARIADB_JDBC_TARGET" | sha256sum -c - # buildkit
# Tue, 04 Aug 2026 04:17:05 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Tue, 04 Aug 2026 04:17:05 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Tue, 04 Aug 2026 04:17:05 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Tue, 04 Aug 2026 04:17:05 GMT
RUN LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml &&   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new" &&   mv "$LOGBACK.new" "$LOGBACK" &&   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Tue, 04 Aug 2026 04:17:05 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Tue, 04 Aug 2026 04:17:05 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 04:17:05 GMT
VOLUME [/usr/local/xwiki]
# Tue, 04 Aug 2026 04:17:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:17:05 GMT
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
	-	`sha256:0209857c2e5afc572f7dca4e03b04c8a03fc23dab6cebb595422a76d1f8b3535`  
		Last Modified: Tue, 04 Aug 2026 04:17:55 GMT  
		Size: 22.8 MB (22829673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba13948c8796b029fbc6e7e8ea2349df87e5036573611f4becb9873e8e1570b`  
		Last Modified: Tue, 04 Aug 2026 04:18:05 GMT  
		Size: 297.5 MB (297472871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c81b75e216193e4cbf513f392267cf5e17fd77d8b9ccf6df83f1683669390d`  
		Last Modified: Tue, 04 Aug 2026 04:18:06 GMT  
		Size: 346.2 MB (346238236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d57f82e259557ed40ef0d36669df9bca48577a3c4510d6ecd13f23d0ec95e40`  
		Last Modified: Tue, 04 Aug 2026 04:17:54 GMT  
		Size: 728.9 KB (728940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:347678e1015fb6f35a7f4af682e5b7e76a7449db0fb61c2a528d198c102bcafb`  
		Last Modified: Tue, 04 Aug 2026 04:17:55 GMT  
		Size: 1.8 KB (1838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8b33d9dadf9673636ac258cb3b25425625583476971cd5989042303f76c4ad`  
		Last Modified: Tue, 04 Aug 2026 04:17:56 GMT  
		Size: 2.3 KB (2308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d118a1c7167ee22ae42f874e449fe845ae756c39b4f761d367f92d4d6b789f6`  
		Last Modified: Tue, 04 Aug 2026 04:17:57 GMT  
		Size: 873.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283b92676ba84211e5b098e0e688f1010ba921aece05f16323828a68c9ec1ed2`  
		Last Modified: Tue, 04 Aug 2026 04:17:58 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49a6f3377b486789fde5b72127c9e458c68c22ef11beaf8bf12dc47442f2392c`  
		Last Modified: Tue, 04 Aug 2026 04:17:58 GMT  
		Size: 11.0 KB (10999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1b1fb131151a73a343b3cb49bbecb4b356b92bee2488fed550aa3ab8a32ab0`  
		Last Modified: Tue, 04 Aug 2026 04:17:59 GMT  
		Size: 4.1 KB (4063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:mariadb-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:4d0c1212e0b1c1b06ba162481b351123f39f8cb63f9a7a9333849405e1015506
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14499799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa3ea428eeda5bd0970093d4526c251074b24e7d2835c372a34ebd74f4d22a90`

```dockerfile
```

-	Layers:
	-	`sha256:67c95731c827c27b935d1bac3cd696e77bf231db77603ed85ef97df3d25977f0`  
		Last Modified: Tue, 04 Aug 2026 04:17:54 GMT  
		Size: 14.4 MB (14434160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0d4ffee45ae9944de50fe0dcc8c1efd8eb82a60db0c26a9bc88344f22474ec1`  
		Last Modified: Tue, 04 Aug 2026 04:17:53 GMT  
		Size: 65.6 KB (65639 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:mariadb-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:923e5651e65725de40f567fbde3e64ede5b1ce119c33c9f2251df6f38543a851
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **772.0 MB (771952856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a91c96d7fda0110e48442e046c888fb1928a181683a9217ffe19763b814b1066`
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
# Tue, 04 Aug 2026 04:13:00 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Tue, 04 Aug 2026 04:13:00 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Tue, 04 Aug 2026 04:13:00 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Tue, 04 Aug 2026 04:13:00 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Tue, 04 Aug 2026 04:13:00 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Tue, 04 Aug 2026 04:13:00 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Tue, 04 Aug 2026 04:13:00 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1 &&   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 04:13:00 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Tue, 04 Aug 2026 04:13:00 GMT
ENV LIBREOFFICE_VERSION=25.8.7
# Tue, 04 Aug 2026 04:13:00 GMT
ENV LIBREOFFICE_SHA256_AMD64=7f4d7b2e36921eec5122c655249a24cc88935ee357e8261fd3bccd15aa1f7b9f
# Tue, 04 Aug 2026 04:13:00 GMT
ENV LIBREOFFICE_SHA256_ARM64=67e9b7dcdeae72c7aa1357345307e67376fc2b729a7f9ebfafb372b010e22ffa
# Tue, 04 Aug 2026 04:13:00 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/25.8.7/deb
# Tue, 04 Aug 2026 04:13:20 GMT
RUN LO_ARCH="$(dpkg --print-architecture)" &&   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac &&   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz" &&   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz &&   echo "$LO_SHA256 /tmp/libreoffice.tar.gz" | sha256sum -c - &&   mkdir -p /tmp/libreoffice &&   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz &&   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb &&   ln -fs $(ls -d /opt/libreoffice*) /opt/libreoffice &&   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Tue, 04 Aug 2026 04:13:20 GMT
ENV XWIKI_VERSION=18.6.0
# Tue, 04 Aug 2026 04:13:20 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.6.0
# Tue, 04 Aug 2026 04:13:20 GMT
ENV XWIKI_DOWNLOAD_SHA256=3f4d0210f57efd98be916379e18f4714c600312c22b288f20bbc0ff39a8a4fff
# Tue, 04 Aug 2026 04:13:42 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Tue, 04 Aug 2026 04:13:42 GMT
ENV MARIADB_JDBC_VERSION=3.5.9
# Tue, 04 Aug 2026 04:13:42 GMT
ENV MARIADB_JDBC_SHA256=11e3bb5bbf8ef0e806ae4d6c5d5033fedf7262cc777f0190bde8a2f3c8e6bd8d
# Tue, 04 Aug 2026 04:13:42 GMT
ENV MARIADB_JDBC_PREFIX=https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/3.5.9
# Tue, 04 Aug 2026 04:13:42 GMT
ENV MARIADB_JDBC_ARTIFACT=mariadb-java-client-3.5.9.jar
# Tue, 04 Aug 2026 04:13:42 GMT
ENV MARIADB_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mariadb-java-client-3.5.9.jar
# Tue, 04 Aug 2026 04:13:42 GMT
RUN curl $CURL_OPTIONS "${MARIADB_JDBC_PREFIX}/${MARIADB_JDBC_ARTIFACT}" -o $MARIADB_JDBC_TARGET &&   echo "$MARIADB_JDBC_SHA256 $MARIADB_JDBC_TARGET" | sha256sum -c - # buildkit
# Tue, 04 Aug 2026 04:13:42 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Tue, 04 Aug 2026 04:13:42 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Tue, 04 Aug 2026 04:13:42 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Tue, 04 Aug 2026 04:13:42 GMT
RUN LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml &&   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new" &&   mv "$LOGBACK.new" "$LOGBACK" &&   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Tue, 04 Aug 2026 04:13:42 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Tue, 04 Aug 2026 04:13:42 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 04:13:42 GMT
VOLUME [/usr/local/xwiki]
# Tue, 04 Aug 2026 04:13:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:13:42 GMT
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
	-	`sha256:b45d85ef16bd931ede5ef305904e6bb39f0fbf569a65ce29cf281b59ec891f00`  
		Last Modified: Tue, 04 Aug 2026 04:14:28 GMT  
		Size: 22.7 MB (22737171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c16ae15507df2a072bf8a0121cfbb904645d34274f8e15a0f992659a357708`  
		Last Modified: Tue, 04 Aug 2026 04:14:37 GMT  
		Size: 289.5 MB (289482557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c80657b4f0c5fdc1c3df9e58a5463e559b45207a099408518a3f1a898e17fde`  
		Last Modified: Tue, 04 Aug 2026 04:14:38 GMT  
		Size: 346.2 MB (346238235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b97c3f58184c4b5d400ea946107f370195758e25cdd770db817acbeddb1b7731`  
		Last Modified: Tue, 04 Aug 2026 04:14:27 GMT  
		Size: 728.9 KB (728936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76b3211088ffb893efd28a1344853365cbaf9c11bf53d76d17a15018d1b1a484`  
		Last Modified: Tue, 04 Aug 2026 04:14:29 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eb53987c385320e8ec0b436bd9ffc1a4154cdba511068a5d08a8ae1d5bf63c0`  
		Last Modified: Tue, 04 Aug 2026 04:14:30 GMT  
		Size: 2.3 KB (2308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eadf7276545d41f68c4033b386bc948644d06e709913fe84bcab859c668c146c`  
		Last Modified: Tue, 04 Aug 2026 04:14:30 GMT  
		Size: 873.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6245a2a9cd710934a7e37727eb95f320d661fe82698e8c18e12fe4fd787c8244`  
		Last Modified: Tue, 04 Aug 2026 04:14:31 GMT  
		Size: 2.4 KB (2440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4806e468690d91e7de89d5a1f88e052c329c7baa07e6ea533fc28405c0e4ae`  
		Last Modified: Tue, 04 Aug 2026 04:14:31 GMT  
		Size: 11.0 KB (10997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d09fe112d844f3463318631fadd6276ea08e4b3ea0277451d0bbf65ec50ae8c`  
		Last Modified: Tue, 04 Aug 2026 04:14:32 GMT  
		Size: 4.1 KB (4061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:mariadb-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:65ef323b79a4eaa275d2e940e2c5000b9f17a4eb9d1876dcf6ccaca7c854326d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14500616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1f29340225445c0e0eaa072ff746001c91f3fe45f83c3ddc4a198040d0e8529`

```dockerfile
```

-	Layers:
	-	`sha256:00fbfe5b357dcdc6e694881b7608192f7b40225672303df375ff27ca7c0abe5c`  
		Last Modified: Tue, 04 Aug 2026 04:14:28 GMT  
		Size: 14.4 MB (14434774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31e45d9fabb07519432593b63f06888e14aed21768c4f02ad3731c61912cbadf`  
		Last Modified: Tue, 04 Aug 2026 04:14:27 GMT  
		Size: 65.8 KB (65842 bytes)  
		MIME: application/vnd.in-toto+json
