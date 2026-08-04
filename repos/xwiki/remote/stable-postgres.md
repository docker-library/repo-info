## `xwiki:stable-postgres`

```console
$ docker pull xwiki@sha256:8bee86ac119de66ad7024973d1b7edeb2055df58a82eb6f7ea33b96aa264802c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:stable-postgres` - linux; amd64

```console
$ docker pull xwiki@sha256:9a723ca84079c7967d4c7c7d8db672d40402d8adecc6e1cff13857f2d5ebcc24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **784.5 MB (784513102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb00524292e0b96eeb2560e97a80da2d2248d8b1183f5907d71d4c24456b42b9`
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
# Tue, 04 Aug 2026 04:13:03 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Tue, 04 Aug 2026 04:13:03 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Tue, 04 Aug 2026 04:13:03 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Tue, 04 Aug 2026 04:13:03 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Tue, 04 Aug 2026 04:13:03 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Tue, 04 Aug 2026 04:13:03 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Tue, 04 Aug 2026 04:13:03 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1 &&   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 04:13:03 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Tue, 04 Aug 2026 04:13:03 GMT
ENV LIBREOFFICE_VERSION=25.8.7
# Tue, 04 Aug 2026 04:13:03 GMT
ENV LIBREOFFICE_SHA256_AMD64=7f4d7b2e36921eec5122c655249a24cc88935ee357e8261fd3bccd15aa1f7b9f
# Tue, 04 Aug 2026 04:13:03 GMT
ENV LIBREOFFICE_SHA256_ARM64=67e9b7dcdeae72c7aa1357345307e67376fc2b729a7f9ebfafb372b010e22ffa
# Tue, 04 Aug 2026 04:13:03 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/25.8.7/deb
# Tue, 04 Aug 2026 04:13:27 GMT
RUN LO_ARCH="$(dpkg --print-architecture)" &&   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac &&   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz" &&   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz &&   echo "$LO_SHA256 /tmp/libreoffice.tar.gz" | sha256sum -c - &&   mkdir -p /tmp/libreoffice &&   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz &&   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb &&   ln -fs $(ls -d /opt/libreoffice*) /opt/libreoffice &&   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Tue, 04 Aug 2026 04:13:27 GMT
ENV XWIKI_VERSION=18.6.0
# Tue, 04 Aug 2026 04:13:27 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.6.0
# Tue, 04 Aug 2026 04:13:27 GMT
ENV XWIKI_DOWNLOAD_SHA256=3f4d0210f57efd98be916379e18f4714c600312c22b288f20bbc0ff39a8a4fff
# Tue, 04 Aug 2026 04:13:48 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Tue, 04 Aug 2026 04:13:48 GMT
ENV POSTGRES_JDBC_VERSION=42.7.13
# Tue, 04 Aug 2026 04:13:48 GMT
ENV POSTGRES_JDBC_SHA256=6e0e4cc2d8cae902084f8a2b18728b073a6fd9d1f87c9d8bff8f298c18185b93
# Tue, 04 Aug 2026 04:13:48 GMT
ENV POSTGRES_JDBC_PREFIX=https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.13
# Tue, 04 Aug 2026 04:13:48 GMT
ENV POSTGRES_JDBC_ARTIFACT=postgresql-42.7.13.jar
# Tue, 04 Aug 2026 04:13:48 GMT
ENV POSTGRES_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.13.jar
# Tue, 04 Aug 2026 04:13:49 GMT
RUN curl $CURL_OPTIONS "${POSTGRES_JDBC_PREFIX}/${POSTGRES_JDBC_ARTIFACT}" -o $POSTGRES_JDBC_TARGET &&   echo "$POSTGRES_JDBC_SHA256 $POSTGRES_JDBC_TARGET" | sha256sum -c - # buildkit
# Tue, 04 Aug 2026 04:13:49 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Tue, 04 Aug 2026 04:13:49 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Tue, 04 Aug 2026 04:13:49 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Tue, 04 Aug 2026 04:13:49 GMT
RUN LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml &&   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new" &&   mv "$LOGBACK.new" "$LOGBACK" &&   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Tue, 04 Aug 2026 04:13:49 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Tue, 04 Aug 2026 04:13:49 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 04:13:49 GMT
VOLUME [/usr/local/xwiki]
# Tue, 04 Aug 2026 04:13:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:13:49 GMT
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
	-	`sha256:43f09557995099160f14773ca120987f4dc2e446d6cce5b794441fe46ca7710f`  
		Last Modified: Tue, 04 Aug 2026 04:14:39 GMT  
		Size: 22.8 MB (22829677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78c405aa042fb6b95cb7accac8cd448fee2c6e91efb9d7d44ebd0a09d7c9ac2`  
		Last Modified: Tue, 04 Aug 2026 04:14:48 GMT  
		Size: 297.5 MB (297472406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6744ed289d9315e36df61218f829fd2fc017b5d4546430c1d8e217903d5905e2`  
		Last Modified: Tue, 04 Aug 2026 04:14:48 GMT  
		Size: 346.2 MB (346238237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9911a6381e378a6bf8c09c36621d22ecd4a920118c79ae4962ace4f3524e4e42`  
		Last Modified: Tue, 04 Aug 2026 04:14:37 GMT  
		Size: 1.1 MB (1142539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34c51919d039289c3e68439905ae9d61b07a7b3c186fefff149c6c9e5052d6bb`  
		Last Modified: Tue, 04 Aug 2026 04:14:39 GMT  
		Size: 1.8 KB (1839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4399c1f05439b86be22d54cb97ca01161bf2a8c44a48d3d595ba4e2ee895880a`  
		Last Modified: Tue, 04 Aug 2026 04:14:40 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25b605354408214fb7ca50784edc80334d5f040639155482511161c3e10f24da`  
		Last Modified: Tue, 04 Aug 2026 04:14:40 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76a7abb102cbcc47158b845749dfbb55caefb6a36e9d01108fefd37be41c3573`  
		Last Modified: Tue, 04 Aug 2026 04:14:41 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecfb054af827f2474584bc918295d896480a3fff3dbb0171f1e766f581278e2c`  
		Last Modified: Tue, 04 Aug 2026 04:14:42 GMT  
		Size: 11.0 KB (10998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ca87344b9db71af6bdce74ab31bbc89370c3f7ad73ef6cf0467571deba1b3e6`  
		Last Modified: Tue, 04 Aug 2026 04:14:42 GMT  
		Size: 4.0 KB (4009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:stable-postgres` - unknown; unknown

```console
$ docker pull xwiki@sha256:68323188de6e198f9e7418696d8b346b6e4910ac419a5e10ec91d5ee505ff6db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14499793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bdcce1945822d351db93329bbef6237686d37624e8c982f01902aa77ddee365`

```dockerfile
```

-	Layers:
	-	`sha256:8b1c59b26135e1deb1ba01741f645fdea578d58bf00926472cbffd9476a33863`  
		Last Modified: Tue, 04 Aug 2026 04:14:38 GMT  
		Size: 14.4 MB (14434180 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4be6d8dd13bbf2d31e53508d54afd13598dd3f5617d36a130bc8a51a577d8466`  
		Last Modified: Tue, 04 Aug 2026 04:14:37 GMT  
		Size: 65.6 KB (65613 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:stable-postgres` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:aa3929dbd2b4742ec2e5a1558e8f4ead9ea866fcfd085ae6bd2cb0b69778cc44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **772.4 MB (772366047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80529c59140fc1225859e556b8f6429aab4403489b614e7f11fd98ba3e4d4418`
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
# Tue, 04 Aug 2026 04:12:50 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Tue, 04 Aug 2026 04:12:50 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Tue, 04 Aug 2026 04:12:50 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Tue, 04 Aug 2026 04:12:50 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Tue, 04 Aug 2026 04:12:50 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Tue, 04 Aug 2026 04:12:50 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Tue, 04 Aug 2026 04:12:50 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2     libxslt1.1 &&   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 04:12:50 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Tue, 04 Aug 2026 04:12:50 GMT
ENV LIBREOFFICE_VERSION=25.8.7
# Tue, 04 Aug 2026 04:12:50 GMT
ENV LIBREOFFICE_SHA256_AMD64=7f4d7b2e36921eec5122c655249a24cc88935ee357e8261fd3bccd15aa1f7b9f
# Tue, 04 Aug 2026 04:12:50 GMT
ENV LIBREOFFICE_SHA256_ARM64=67e9b7dcdeae72c7aa1357345307e67376fc2b729a7f9ebfafb372b010e22ffa
# Tue, 04 Aug 2026 04:12:50 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/25.8.7/deb
# Tue, 04 Aug 2026 04:16:09 GMT
RUN LO_ARCH="$(dpkg --print-architecture)" &&   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac &&   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz" &&   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz &&   echo "$LO_SHA256 /tmp/libreoffice.tar.gz" | sha256sum -c - &&   mkdir -p /tmp/libreoffice &&   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz &&   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb &&   ln -fs $(ls -d /opt/libreoffice*) /opt/libreoffice &&   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Tue, 04 Aug 2026 04:16:09 GMT
ENV XWIKI_VERSION=18.6.0
# Tue, 04 Aug 2026 04:16:09 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.6.0
# Tue, 04 Aug 2026 04:16:09 GMT
ENV XWIKI_DOWNLOAD_SHA256=3f4d0210f57efd98be916379e18f4714c600312c22b288f20bbc0ff39a8a4fff
# Tue, 04 Aug 2026 04:16:31 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Tue, 04 Aug 2026 04:16:31 GMT
ENV POSTGRES_JDBC_VERSION=42.7.13
# Tue, 04 Aug 2026 04:16:31 GMT
ENV POSTGRES_JDBC_SHA256=6e0e4cc2d8cae902084f8a2b18728b073a6fd9d1f87c9d8bff8f298c18185b93
# Tue, 04 Aug 2026 04:16:31 GMT
ENV POSTGRES_JDBC_PREFIX=https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.13
# Tue, 04 Aug 2026 04:16:31 GMT
ENV POSTGRES_JDBC_ARTIFACT=postgresql-42.7.13.jar
# Tue, 04 Aug 2026 04:16:31 GMT
ENV POSTGRES_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.13.jar
# Tue, 04 Aug 2026 04:16:31 GMT
RUN curl $CURL_OPTIONS "${POSTGRES_JDBC_PREFIX}/${POSTGRES_JDBC_ARTIFACT}" -o $POSTGRES_JDBC_TARGET &&   echo "$POSTGRES_JDBC_SHA256 $POSTGRES_JDBC_TARGET" | sha256sum -c - # buildkit
# Tue, 04 Aug 2026 04:16:31 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Tue, 04 Aug 2026 04:16:31 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Tue, 04 Aug 2026 04:16:31 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Tue, 04 Aug 2026 04:16:31 GMT
RUN LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml &&   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new" &&   mv "$LOGBACK.new" "$LOGBACK" &&   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Tue, 04 Aug 2026 04:16:31 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Tue, 04 Aug 2026 04:16:32 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 04:16:32 GMT
VOLUME [/usr/local/xwiki]
# Tue, 04 Aug 2026 04:16:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:16:32 GMT
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
	-	`sha256:984ed0f336728fa9fa8566f07f3dffbfd3fea53bedab5722a9c41f0af2ca099e`  
		Last Modified: Tue, 04 Aug 2026 04:17:18 GMT  
		Size: 22.7 MB (22737097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5fa5fb871349a060fe61de22a3894a0d3de7c67ff5cbd75421008a69de554f7`  
		Last Modified: Tue, 04 Aug 2026 04:17:26 GMT  
		Size: 289.5 MB (289481958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96641c2e5e2b0faa9b1546f7b6e95e52a6fc605fabe66b759491caa74688d25a`  
		Last Modified: Tue, 04 Aug 2026 04:17:27 GMT  
		Size: 346.2 MB (346238309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a7cd699c5f809a5c5a1595cea4e19bd4eadecd34157889f936b06c6689169e0`  
		Last Modified: Tue, 04 Aug 2026 04:17:17 GMT  
		Size: 1.1 MB (1142534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e950a51408dbc26a349781cdb1874629f1d77cce4981552dcb7bd8c2b3557c`  
		Last Modified: Tue, 04 Aug 2026 04:17:18 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:625aac1105553afabb75f554348fcc7cc77bb1dc134ff76379019f7afdf92a56`  
		Last Modified: Tue, 04 Aug 2026 04:17:19 GMT  
		Size: 2.5 KB (2549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb9b3868a3bf5f03af8790cc878729146f9e20895647a8e9a2130ce4c883e54`  
		Last Modified: Tue, 04 Aug 2026 04:17:20 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f91a4206954fb5781c79997e8a909d98337fe9174488446abbf53e169da3d3`  
		Last Modified: Tue, 04 Aug 2026 04:17:21 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e610c5f733ac394c8b7c730e493f26b0f2b0a8a405acca56c889f1c5c1e7b458`  
		Last Modified: Tue, 04 Aug 2026 04:17:21 GMT  
		Size: 11.0 KB (10997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce68c690afe5e953de397eef92f5b93567e53e6b4b461366e6fdac90e7a15e42`  
		Last Modified: Tue, 04 Aug 2026 04:17:22 GMT  
		Size: 4.0 KB (4009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:stable-postgres` - unknown; unknown

```console
$ docker pull xwiki@sha256:36ced60a6aaf001adfe682676728bd04d99a85ab996d4a734e10373aa8ce17b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14500611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45558e16e3f236929d562f60e12713471b842a61c31444d114153d878a5e59d6`

```dockerfile
```

-	Layers:
	-	`sha256:d7218b4ff4e47c154f30622730dd493a9db6eae540678a80dceb94a012e0dd66`  
		Last Modified: Tue, 04 Aug 2026 04:17:17 GMT  
		Size: 14.4 MB (14434794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd4660a9709e130901d765bf2c8ecc92f561f31db98c8374d47930374282697a`  
		Last Modified: Tue, 04 Aug 2026 04:17:16 GMT  
		Size: 65.8 KB (65817 bytes)  
		MIME: application/vnd.in-toto+json
