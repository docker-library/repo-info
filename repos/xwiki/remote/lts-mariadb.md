## `xwiki:lts-mariadb`

```console
$ docker pull xwiki@sha256:75cd0cd58679c75f6a6c8af7e627ab3c8d3ab904c1ec92d93eb72144abc47eac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:lts-mariadb` - linux; amd64

```console
$ docker pull xwiki@sha256:fc32476294700781a0ad1618b2996edba20deed9f109ed3f2b42637003ebb5cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **766.3 MB (766342358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a76296aa5dd2dbaf32fc46ed1c0cd5ef4934e36b88ed308fe4643df9863a006e`
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
# Tue, 04 Aug 2026 04:13:57 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Tue, 04 Aug 2026 04:13:57 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Tue, 04 Aug 2026 04:13:57 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Tue, 04 Aug 2026 04:13:57 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Tue, 04 Aug 2026 04:13:57 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Tue, 04 Aug 2026 04:13:57 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Tue, 04 Aug 2026 04:13:57 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1 &&   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 04:13:57 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Tue, 04 Aug 2026 04:13:57 GMT
ENV LIBREOFFICE_VERSION=25.8.7
# Tue, 04 Aug 2026 04:13:57 GMT
ENV LIBREOFFICE_SHA256_AMD64=7f4d7b2e36921eec5122c655249a24cc88935ee357e8261fd3bccd15aa1f7b9f
# Tue, 04 Aug 2026 04:13:57 GMT
ENV LIBREOFFICE_SHA256_ARM64=67e9b7dcdeae72c7aa1357345307e67376fc2b729a7f9ebfafb372b010e22ffa
# Tue, 04 Aug 2026 04:13:57 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/25.8.7/deb
# Tue, 04 Aug 2026 04:14:18 GMT
RUN LO_ARCH="$(dpkg --print-architecture)" &&   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac &&   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz" &&   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz &&   echo "$LO_SHA256 /tmp/libreoffice.tar.gz" | sha256sum -c - &&   mkdir -p /tmp/libreoffice &&   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz &&   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb &&   ln -fs $(ls -d /opt/libreoffice*) /opt/libreoffice &&   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Tue, 04 Aug 2026 04:14:18 GMT
ENV XWIKI_VERSION=17.10.11
# Tue, 04 Aug 2026 04:14:18 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.11
# Tue, 04 Aug 2026 04:14:18 GMT
ENV XWIKI_DOWNLOAD_SHA256=c52f9330775dd822eb7af3d9abc84a8c2fd82a295e0233379a0d27ee48722f5a
# Tue, 04 Aug 2026 04:14:39 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Tue, 04 Aug 2026 04:14:39 GMT
ENV MARIADB_JDBC_VERSION=3.5.9
# Tue, 04 Aug 2026 04:14:39 GMT
ENV MARIADB_JDBC_SHA256=11e3bb5bbf8ef0e806ae4d6c5d5033fedf7262cc777f0190bde8a2f3c8e6bd8d
# Tue, 04 Aug 2026 04:14:39 GMT
ENV MARIADB_JDBC_PREFIX=https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/3.5.9
# Tue, 04 Aug 2026 04:14:39 GMT
ENV MARIADB_JDBC_ARTIFACT=mariadb-java-client-3.5.9.jar
# Tue, 04 Aug 2026 04:14:39 GMT
ENV MARIADB_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mariadb-java-client-3.5.9.jar
# Tue, 04 Aug 2026 04:14:39 GMT
RUN curl $CURL_OPTIONS "${MARIADB_JDBC_PREFIX}/${MARIADB_JDBC_ARTIFACT}" -o $MARIADB_JDBC_TARGET &&   echo "$MARIADB_JDBC_SHA256 $MARIADB_JDBC_TARGET" | sha256sum -c - # buildkit
# Tue, 04 Aug 2026 04:14:39 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Tue, 04 Aug 2026 04:14:39 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Tue, 04 Aug 2026 04:14:39 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Tue, 04 Aug 2026 04:14:39 GMT
RUN LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml &&   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new" &&   mv "$LOGBACK.new" "$LOGBACK" &&   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Tue, 04 Aug 2026 04:14:39 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Tue, 04 Aug 2026 04:14:39 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 04:14:39 GMT
VOLUME [/usr/local/xwiki]
# Tue, 04 Aug 2026 04:14:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:14:39 GMT
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
	-	`sha256:5b2d7d96335efaba1d9c7d95d1f16736a4e3be0277c0fed9852277d2c3d6875d`  
		Last Modified: Tue, 04 Aug 2026 04:15:24 GMT  
		Size: 22.8 MB (22829658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed5aaf5425bc55e45cd67c02ab8c9a814f4a1faaef6286d8014db4751f46faef`  
		Last Modified: Tue, 04 Aug 2026 04:15:33 GMT  
		Size: 297.5 MB (297472926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93343bc381f05e9e4a7b77f8228d4e3b746d2d0284c1f2317eae2ca98f897013`  
		Last Modified: Tue, 04 Aug 2026 04:15:33 GMT  
		Size: 328.5 MB (328481002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328c975526974c49c0f793d688bf483242cf70600bee27c403820159f079d7a7`  
		Last Modified: Tue, 04 Aug 2026 04:15:23 GMT  
		Size: 728.9 KB (728937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d82e57bcbf5d93ae0f25e34f5d53b4bb4c1313bf32a68b6095a1f67abdc6b0`  
		Last Modified: Tue, 04 Aug 2026 04:15:24 GMT  
		Size: 1.8 KB (1839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70223e706311472e878e7bf6d7feb056d113c7b4564bbad9a8c5899104ca2a38`  
		Last Modified: Tue, 04 Aug 2026 04:15:25 GMT  
		Size: 2.3 KB (2311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750d7fef27bf59d605d38500f12a4aa1f26e1e9c7d4f9667717ef61b3005eea2`  
		Last Modified: Tue, 04 Aug 2026 04:15:26 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b455edc84b601546a6da8d6ab93768518c7d524e1ffac7a708446c2a57fa29`  
		Last Modified: Tue, 04 Aug 2026 04:15:27 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac09c91441c25d86f9adf30ea2a28313b82737073067ff771ac4095dbd959be`  
		Last Modified: Tue, 04 Aug 2026 04:15:27 GMT  
		Size: 10.8 KB (10772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a56156ff88c56d28983fc4a532dcdc0204fe560575f6c281c8711b7c546539d`  
		Last Modified: Tue, 04 Aug 2026 04:15:28 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:lts-mariadb` - unknown; unknown

```console
$ docker pull xwiki@sha256:4fe39e02c9f1615f694882ba671f981c516d1e53cd118cd8404e20eba04077c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14480921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dcd05818ec7a98f76cea7e9a11c38ae10bc5ec6ece09466f5a65ebdc04887c4`

```dockerfile
```

-	Layers:
	-	`sha256:9bcc8b04625ce71aeb8d18608b6dd2e224b0616cdc63a298d89bbc715fb03735`  
		Last Modified: Tue, 04 Aug 2026 04:15:24 GMT  
		Size: 14.4 MB (14415580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d004af61e5118a5ab03044364fd87a8789ca69534cd578ea2a6bae7f251c6f9`  
		Last Modified: Tue, 04 Aug 2026 04:15:23 GMT  
		Size: 65.3 KB (65341 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:lts-mariadb` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:997ad91f88ecf38ed66a443ca06fc4e13682e30b077ae27e790ace56287c8e34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **754.2 MB (754194957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d9c0435d12a288bb3eccd638eefbaebb348f5c6ac4927507dadb8e5ae1a9465`
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
# Tue, 04 Aug 2026 04:13:56 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Tue, 04 Aug 2026 04:13:56 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Tue, 04 Aug 2026 04:13:56 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Tue, 04 Aug 2026 04:13:56 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Tue, 04 Aug 2026 04:13:56 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Tue, 04 Aug 2026 04:13:56 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Tue, 04 Aug 2026 04:13:56 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1 &&   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 04:13:56 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Tue, 04 Aug 2026 04:13:56 GMT
ENV LIBREOFFICE_VERSION=25.8.7
# Tue, 04 Aug 2026 04:13:56 GMT
ENV LIBREOFFICE_SHA256_AMD64=7f4d7b2e36921eec5122c655249a24cc88935ee357e8261fd3bccd15aa1f7b9f
# Tue, 04 Aug 2026 04:13:56 GMT
ENV LIBREOFFICE_SHA256_ARM64=67e9b7dcdeae72c7aa1357345307e67376fc2b729a7f9ebfafb372b010e22ffa
# Tue, 04 Aug 2026 04:13:56 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/25.8.7/deb
# Tue, 04 Aug 2026 04:14:18 GMT
RUN LO_ARCH="$(dpkg --print-architecture)" &&   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac &&   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz" &&   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz &&   echo "$LO_SHA256 /tmp/libreoffice.tar.gz" | sha256sum -c - &&   mkdir -p /tmp/libreoffice &&   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz &&   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb &&   ln -fs $(ls -d /opt/libreoffice*) /opt/libreoffice &&   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Tue, 04 Aug 2026 04:14:18 GMT
ENV XWIKI_VERSION=17.10.11
# Tue, 04 Aug 2026 04:14:18 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.11
# Tue, 04 Aug 2026 04:14:18 GMT
ENV XWIKI_DOWNLOAD_SHA256=c52f9330775dd822eb7af3d9abc84a8c2fd82a295e0233379a0d27ee48722f5a
# Tue, 04 Aug 2026 04:14:40 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Tue, 04 Aug 2026 04:14:40 GMT
ENV MARIADB_JDBC_VERSION=3.5.9
# Tue, 04 Aug 2026 04:14:40 GMT
ENV MARIADB_JDBC_SHA256=11e3bb5bbf8ef0e806ae4d6c5d5033fedf7262cc777f0190bde8a2f3c8e6bd8d
# Tue, 04 Aug 2026 04:14:40 GMT
ENV MARIADB_JDBC_PREFIX=https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/3.5.9
# Tue, 04 Aug 2026 04:14:40 GMT
ENV MARIADB_JDBC_ARTIFACT=mariadb-java-client-3.5.9.jar
# Tue, 04 Aug 2026 04:14:40 GMT
ENV MARIADB_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mariadb-java-client-3.5.9.jar
# Tue, 04 Aug 2026 04:14:40 GMT
RUN curl $CURL_OPTIONS "${MARIADB_JDBC_PREFIX}/${MARIADB_JDBC_ARTIFACT}" -o $MARIADB_JDBC_TARGET &&   echo "$MARIADB_JDBC_SHA256 $MARIADB_JDBC_TARGET" | sha256sum -c - # buildkit
# Tue, 04 Aug 2026 04:14:40 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Tue, 04 Aug 2026 04:14:40 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Tue, 04 Aug 2026 04:14:40 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Tue, 04 Aug 2026 04:14:40 GMT
RUN LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml &&   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new" &&   mv "$LOGBACK.new" "$LOGBACK" &&   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Tue, 04 Aug 2026 04:14:40 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Tue, 04 Aug 2026 04:14:40 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 04:14:40 GMT
VOLUME [/usr/local/xwiki]
# Tue, 04 Aug 2026 04:14:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:14:40 GMT
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
	-	`sha256:6930aa541fb0c4444aa513748fc88e11adee248890851252fd5ac99ea98cec76`  
		Last Modified: Tue, 04 Aug 2026 04:15:26 GMT  
		Size: 22.7 MB (22737077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b110f797ab34a64ef4ea18f746511d41b786f6a97814b96ef35e97679ead36a`  
		Last Modified: Tue, 04 Aug 2026 04:15:34 GMT  
		Size: 289.5 MB (289482094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6b52b53066bab266d24beaca4549ea36938147af44050f69a7afb690c5df19`  
		Last Modified: Tue, 04 Aug 2026 04:15:35 GMT  
		Size: 328.5 MB (328481117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:597247673610fd3c3fd3c1c733734d4e94c074ec5920775574b6b54e07136fd7`  
		Last Modified: Tue, 04 Aug 2026 04:15:25 GMT  
		Size: 728.9 KB (728935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e11297997a48fafbded04a4550483019469bfa52a5f6f6bd888880439029c0c`  
		Last Modified: Tue, 04 Aug 2026 04:15:26 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b916b5f743dc9b31d32c8ae33b43f14bc112305ffb5472da8b48fb6c227219fd`  
		Last Modified: Tue, 04 Aug 2026 04:15:27 GMT  
		Size: 2.3 KB (2309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fbbcf843e886d5b51eb642e21ed428384d42e42dc5e61ed219f4adf615acffa`  
		Last Modified: Tue, 04 Aug 2026 04:15:27 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d537d48524a988f1cf421f95401c8fbc2d92df7bd6a535bb0d20775f2d3ff9c5`  
		Last Modified: Tue, 04 Aug 2026 04:15:29 GMT  
		Size: 2.4 KB (2436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:828719aacd3647f3f8744581b19b4f5611bd5bd4c176d0f762b1d6bee0959edc`  
		Last Modified: Tue, 04 Aug 2026 04:15:29 GMT  
		Size: 10.8 KB (10770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa9eb4b2bb67b1443003899c3cbb2c0fa1489021ca6dfdf6ffae6970610e608e`  
		Last Modified: Tue, 04 Aug 2026 04:15:30 GMT  
		Size: 4.1 KB (4063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:lts-mariadb` - unknown; unknown

```console
$ docker pull xwiki@sha256:11849cf19250661cc9aee1562b0899da14f7531a1890c1f3f78fea7b01bce610
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14481713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61c1fe8f036fab986ebaa48e47ada08daff9998f8c8de384708835a096bd4be3`

```dockerfile
```

-	Layers:
	-	`sha256:6fcedb2e9709c570e5f42e9b7c75339a15f483fe73e6dd46b61a5464644ceb3f`  
		Last Modified: Tue, 04 Aug 2026 04:15:25 GMT  
		Size: 14.4 MB (14416182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f72599dc4233fe27e56b8beec217f0886e8f5dc44e36b5fb0032f71fb42051a`  
		Last Modified: Tue, 04 Aug 2026 04:15:24 GMT  
		Size: 65.5 KB (65531 bytes)  
		MIME: application/vnd.in-toto+json
