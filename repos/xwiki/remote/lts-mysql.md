## `xwiki:lts-mysql`

```console
$ docker pull xwiki@sha256:ed546550550f14ffd1f5437d362f65f3536c46d396954fdc0a8195842d0c152a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:lts-mysql` - linux; amd64

```console
$ docker pull xwiki@sha256:87acf7e48bf13730dbf6b7d702c96be73daffa6fe531abad29cc4ba8eec5cb09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **797.2 MB (797166825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:139ede3f3c233b70306bbc9213e668a03275c783cf009bec9f7c79c9ee22ed27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Wed, 11 Nov 2026 23:16:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:16:15 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:16:15 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 23:17:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:17:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:17:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:17:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 21:10:13 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 21:10:13 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 21:10:13 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 21:10:13 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 21:10:13 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 21:10:13 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 21:10:13 GMT
ENV TOMCAT_MAJOR=10
# Mon, 16 Nov 2026 21:10:13 GMT
ENV TOMCAT_VERSION=10.1.62
# Mon, 16 Nov 2026 21:10:13 GMT
ENV TOMCAT_SHA512=ca776bf4045d3eadc2ede1b9bb2c33fc52ce1d102b63ca635ec6c0e515140027c6be7a15b2c1e1d8d8692aeaf25a72de99ca0f14135c3e1d163eedaf3dac5a54
# Mon, 16 Nov 2026 21:10:13 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 16 Nov 2026 21:10:54 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 21:10:54 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 21:10:54 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 21:10:54 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 21:10:54 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:45:55 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Mon, 16 Nov 2026 21:45:55 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Mon, 16 Nov 2026 21:45:55 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Mon, 16 Nov 2026 21:45:55 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Mon, 16 Nov 2026 21:45:55 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Mon, 16 Nov 2026 21:45:55 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Mon, 16 Nov 2026 21:45:55 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2-dev     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 21:45:55 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Mon, 16 Nov 2026 21:45:55 GMT
ENV LIBREOFFICE_VERSION=26.2.7
# Mon, 16 Nov 2026 21:45:55 GMT
ENV LIBREOFFICE_SHA256_AMD64=8cd04a88396a9230264ff784ec89cc090cbfd0960c192483ba2b80fa53939416
# Mon, 16 Nov 2026 21:45:55 GMT
ENV LIBREOFFICE_SHA256_ARM64=d871da75fe387f9dab5acb7569d46d1098835c25b53695c89152f5194ad34411
# Mon, 16 Nov 2026 21:45:55 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.7/deb
# Mon, 16 Nov 2026 21:46:17 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Mon, 16 Nov 2026 21:46:17 GMT
ENV XWIKI_VERSION=17.10.15
# Mon, 16 Nov 2026 21:46:17 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.15
# Mon, 16 Nov 2026 21:46:17 GMT
ENV XWIKI_DOWNLOAD_SHA256=d9d761d6ac4a86c8bb2733ea9a872ef54162ab1c528fb58ed5da0ccd304525b4
# Mon, 16 Nov 2026 21:46:39 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Mon, 16 Nov 2026 21:46:39 GMT
ENV MYSQL_JDBC_VERSION=26.10.0
# Mon, 16 Nov 2026 21:46:39 GMT
ENV MYSQL_JDBC_SHA256=cef70caf532833c9ab8f41f74773ce22c08bf503fad215c9c2ee1e9db87e759e
# Mon, 16 Nov 2026 21:46:39 GMT
ENV MYSQL_JDBC_PREFIX=https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/26.10.0
# Mon, 16 Nov 2026 21:46:39 GMT
ENV MYSQL_JDBC_ARTIFACT=mysql-connector-j-26.10.0.jar
# Mon, 16 Nov 2026 21:46:39 GMT
ENV MYSQL_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mysql-connector-j-26.10.0.jar
# Mon, 16 Nov 2026 21:46:39 GMT
RUN set -eux;   curl $CURL_OPTIONS "${MYSQL_JDBC_PREFIX}/${MYSQL_JDBC_ARTIFACT}" -o $MYSQL_JDBC_TARGET;   echo "$MYSQL_JDBC_SHA256 *$MYSQL_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Mon, 16 Nov 2026 21:46:39 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Mon, 16 Nov 2026 21:46:39 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Mon, 16 Nov 2026 21:46:39 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Mon, 16 Nov 2026 21:46:40 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Mon, 16 Nov 2026 21:46:40 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Mon, 16 Nov 2026 21:46:40 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:46:40 GMT
VOLUME [/usr/local/xwiki]
# Mon, 16 Nov 2026 21:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Nov 2026 21:46:40 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a034bdfd5bbaedeb2f8f48879a055a81386cfd75d0e2077192c4b5a0862e6d93`  
		Last Modified: Wed, 11 Nov 2026 23:16:44 GMT  
		Size: 20.1 MB (20137042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ca781aad8b5775e64957756922d0d68e9094506cddcde567f3ae87678d1e2d`  
		Last Modified: Wed, 11 Nov 2026 23:18:04 GMT  
		Size: 53.2 MB (53212141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed58412d3b9488d9ca90d94b3ea4e1578384baf43a800eac5978e45e917faa4`  
		Last Modified: Wed, 11 Nov 2026 23:18:02 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2157724d42882270b3514a887e2185d2915372a60718d14a6d1ff5b4e7f1b5d`  
		Last Modified: Wed, 11 Nov 2026 23:18:02 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48101b1b620172aa1fa038e7f8ab54ed3f0e76dd59f6601c3adc6db830e9b63`  
		Last Modified: Mon, 16 Nov 2026 21:11:06 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e01a161a41337e343eb7ce15369a1e1e4278d51471b49cd84be4b4ec7b60717`  
		Last Modified: Mon, 16 Nov 2026 21:11:07 GMT  
		Size: 14.7 MB (14683744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1638eda8477762325b77225fb567b3332046ab8b2ad2d6bb12f34b916c3d92c`  
		Last Modified: Mon, 16 Nov 2026 21:11:06 GMT  
		Size: 13.1 MB (13053787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4ee32d546da7126d3363b6363767661f72d4b45732793910e9f1b48451b51c`  
		Last Modified: Mon, 16 Nov 2026 21:47:38 GMT  
		Size: 14.7 MB (14712845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0bd36d5d4a52f928da660c055756858b5f093588fb5a5cf3116f6c68843902`  
		Last Modified: Mon, 16 Nov 2026 21:47:48 GMT  
		Size: 305.1 MB (305110948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd61bea81a8318bf86b7189b58f7f7c517f7ab5fb8d34b50fd9bdd890f69e11`  
		Last Modified: Mon, 16 Nov 2026 21:47:48 GMT  
		Size: 331.6 MB (331606579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f7f9952654fc63354a33dba4d84d3c88b203cb4797ec1f9e5c70f1fa32dfeb`  
		Last Modified: Mon, 16 Nov 2026 21:47:37 GMT  
		Size: 2.5 MB (2457075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a4986924b63b4e2008afe4e84574186bfc1888dbaf2d6f466a10ad3cfaea02`  
		Last Modified: Mon, 16 Nov 2026 21:47:38 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2b94d92cdcc1f94d0b55032f36ea9f27f23af28ab7f07887ba58a2138e46815`  
		Last Modified: Mon, 16 Nov 2026 21:47:39 GMT  
		Size: 2.4 KB (2374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236493af1b2ebc233c846600ec338bdaf6ebb69219edc3c9de8a84e9e18381d3`  
		Last Modified: Mon, 16 Nov 2026 21:47:40 GMT  
		Size: 872.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6710f27da35592eed473c1a6987185627872199cbf9862bdec36dbd6e2351908`  
		Last Modified: Mon, 16 Nov 2026 21:47:40 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48017bd3f9d52fa2c3e4abdf40c6cf02df87c87502c57fe5da2a7ca0fc05d3bf`  
		Last Modified: Mon, 16 Nov 2026 21:47:41 GMT  
		Size: 11.0 KB (11008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfcb98526d09ed1804bb1382be4a4598e11078b83c362eaf6be31b520aadb0b5`  
		Last Modified: Mon, 16 Nov 2026 21:47:42 GMT  
		Size: 4.3 KB (4339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:lts-mysql` - unknown; unknown

```console
$ docker pull xwiki@sha256:d3915f4fd6466b69f801f8c212ea0c026d1888a31103f5a0c59f73b84a34780c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17578872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17eda3cc0b5b2623aa18b80a645389cdff8e5953c18ae9f48a6b81d1ebbb0d51`

```dockerfile
```

-	Layers:
	-	`sha256:9edf012658a20ead9f79d3b1a329a635d00e6644584619c30fd7044579cc5eda`  
		Last Modified: Mon, 16 Nov 2026 21:47:37 GMT  
		Size: 17.5 MB (17509607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bed7a1b75793e00620407a6acccf3f24423627a710cba23a13fcca87da2a9fb`  
		Last Modified: Mon, 16 Nov 2026 21:47:37 GMT  
		Size: 69.3 KB (69265 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:lts-mysql` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:719fc266fb958779b28d22dd9537e916175cdcda5eddac0dc72afe7e8121b776
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **788.2 MB (788223638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dacb5182c98f3f75a4a396bb9bf17ff7eccb829c3a6a69496fd47b283d046d02`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Wed, 11 Nov 2026 23:21:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:21:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:21:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:21:18 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:21:18 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 23:22:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:22:10 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:22:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:22:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 20:11:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 20:11:39 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:11:39 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 20:11:39 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:11:39 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:11:39 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:11:39 GMT
ENV TOMCAT_MAJOR=10
# Mon, 16 Nov 2026 20:11:39 GMT
ENV TOMCAT_VERSION=10.1.62
# Mon, 16 Nov 2026 20:11:39 GMT
ENV TOMCAT_SHA512=ca776bf4045d3eadc2ede1b9bb2c33fc52ce1d102b63ca635ec6c0e515140027c6be7a15b2c1e1d8d8692aeaf25a72de99ca0f14135c3e1d163eedaf3dac5a54
# Mon, 16 Nov 2026 20:11:40 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 16 Nov 2026 20:11:48 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:11:49 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 20:11:49 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 20:11:49 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 20:11:49 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:12:30 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Mon, 16 Nov 2026 21:12:30 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Mon, 16 Nov 2026 21:12:30 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Mon, 16 Nov 2026 21:12:30 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Mon, 16 Nov 2026 21:12:30 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Mon, 16 Nov 2026 21:12:30 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Mon, 16 Nov 2026 21:12:30 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2-dev     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 21:12:30 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Mon, 16 Nov 2026 21:12:30 GMT
ENV LIBREOFFICE_VERSION=26.2.7
# Mon, 16 Nov 2026 21:12:30 GMT
ENV LIBREOFFICE_SHA256_AMD64=8cd04a88396a9230264ff784ec89cc090cbfd0960c192483ba2b80fa53939416
# Mon, 16 Nov 2026 21:12:30 GMT
ENV LIBREOFFICE_SHA256_ARM64=d871da75fe387f9dab5acb7569d46d1098835c25b53695c89152f5194ad34411
# Mon, 16 Nov 2026 21:12:30 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.7/deb
# Mon, 16 Nov 2026 21:12:53 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Mon, 16 Nov 2026 21:12:53 GMT
ENV XWIKI_VERSION=17.10.15
# Mon, 16 Nov 2026 21:12:53 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.15
# Mon, 16 Nov 2026 21:12:53 GMT
ENV XWIKI_DOWNLOAD_SHA256=d9d761d6ac4a86c8bb2733ea9a872ef54162ab1c528fb58ed5da0ccd304525b4
# Mon, 16 Nov 2026 21:13:15 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Mon, 16 Nov 2026 21:13:15 GMT
ENV MYSQL_JDBC_VERSION=26.10.0
# Mon, 16 Nov 2026 21:13:15 GMT
ENV MYSQL_JDBC_SHA256=cef70caf532833c9ab8f41f74773ce22c08bf503fad215c9c2ee1e9db87e759e
# Mon, 16 Nov 2026 21:13:15 GMT
ENV MYSQL_JDBC_PREFIX=https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/26.10.0
# Mon, 16 Nov 2026 21:13:15 GMT
ENV MYSQL_JDBC_ARTIFACT=mysql-connector-j-26.10.0.jar
# Mon, 16 Nov 2026 21:13:15 GMT
ENV MYSQL_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mysql-connector-j-26.10.0.jar
# Mon, 16 Nov 2026 21:13:15 GMT
RUN set -eux;   curl $CURL_OPTIONS "${MYSQL_JDBC_PREFIX}/${MYSQL_JDBC_ARTIFACT}" -o $MYSQL_JDBC_TARGET;   echo "$MYSQL_JDBC_SHA256 *$MYSQL_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Mon, 16 Nov 2026 21:13:15 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Mon, 16 Nov 2026 21:13:15 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Mon, 16 Nov 2026 21:13:15 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Mon, 16 Nov 2026 21:13:15 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Mon, 16 Nov 2026 21:13:15 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Mon, 16 Nov 2026 21:13:15 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:13:15 GMT
VOLUME [/usr/local/xwiki]
# Mon, 16 Nov 2026 21:13:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Nov 2026 21:13:15 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:620882d435ac9cf6e52f25f90d718fcd5f16cf646910f84dc90281320baddc38`  
		Last Modified: Wed, 11 Nov 2026 23:21:36 GMT  
		Size: 19.9 MB (19947789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:626050637c596950412d8be37c4cd941c7f338585b723861114057857664cbca`  
		Last Modified: Wed, 11 Nov 2026 23:22:27 GMT  
		Size: 52.4 MB (52390816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ab484bff077aab5377166f418354e991752806cd2aca44c3c0fc7bea33f4b3`  
		Last Modified: Wed, 11 Nov 2026 23:22:25 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731e0020a2fd6fdc710baf40611fe7144d87c8aa3c1b2eebc6d2e56f1bdcfbe5`  
		Last Modified: Wed, 11 Nov 2026 23:22:25 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad2bb30748c16be360af64e641f14c70d485e5d5b399ffef24e146cf544816e`  
		Last Modified: Mon, 16 Nov 2026 20:12:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5acbfa17f7bcae46ab34120e85e77fb02d850e4b4b7b00252c010f5908ef03d0`  
		Last Modified: Mon, 16 Nov 2026 20:12:01 GMT  
		Size: 14.7 MB (14683887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c66fe13cbeccf510fd4baa2e920e682f5c3b8231e722f7e14084169c9a7b11`  
		Last Modified: Mon, 16 Nov 2026 20:12:01 GMT  
		Size: 12.9 MB (12876158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06446e97f305e5ee64868756d5e29640c5927d811540c9332d044f76a65756cb`  
		Last Modified: Mon, 16 Nov 2026 21:14:08 GMT  
		Size: 13.6 MB (13586935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7c9c43d5e1dae11dd71399e799d0898411aae4e2dbe53fc0359f3b5042c40a0`  
		Last Modified: Mon, 16 Nov 2026 21:14:17 GMT  
		Size: 299.5 MB (299502504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acee474fbe1727c07dd2796814e9b38d389782842fe96d539a196adb91ef4993`  
		Last Modified: Mon, 16 Nov 2026 21:14:18 GMT  
		Size: 331.6 MB (331606587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4303d9894288309e8426710f8d3cca894b9eb9bd40734482821b76e72518664d`  
		Last Modified: Mon, 16 Nov 2026 21:14:08 GMT  
		Size: 2.5 MB (2457061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce4a477f3edf582de39cec0a09b79ef0fe4b0a126119f2aa6adcdd10e646aad`  
		Last Modified: Mon, 16 Nov 2026 21:14:09 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41536a414d20018ad722ec2de7a0d18aae46dfe417558011933c634a8aa78d9d`  
		Last Modified: Mon, 16 Nov 2026 21:14:09 GMT  
		Size: 2.4 KB (2375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0cc8e43411ae1e749e2a9b0bf7f05935b8b48c13a1c72cf4f48bf1c5acb425f`  
		Last Modified: Mon, 16 Nov 2026 21:14:10 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d404a1b14d17ff24f1d0ec5cf960582bbf2f6714a2a77b3aa39e2ba9fd2e4372`  
		Last Modified: Mon, 16 Nov 2026 21:14:11 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1809b27feaefba7bb8907bdbd9982841547b0d7bcb005da5fd18193bd9328dc9`  
		Last Modified: Mon, 16 Nov 2026 21:14:11 GMT  
		Size: 11.0 KB (11008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661ad5b1d5a7f7d32b515ae3c6271ba4de953fd6c8cca67f0fa326b770ae5305`  
		Last Modified: Mon, 16 Nov 2026 21:14:12 GMT  
		Size: 4.3 KB (4338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:lts-mysql` - unknown; unknown

```console
$ docker pull xwiki@sha256:5bbe9603b980e151aff3dd3585c7009a187ad171ca0088bd36927d0e9b707fd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17550697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:610252aa35f621f0d4e47bc82001029f1c578aa36e1ad6b59b9e4cd9d44105ce`

```dockerfile
```

-	Layers:
	-	`sha256:765c25e91a20f7d514c7577b08d565ccfc37499710d88dea3d2667b8aa1e38f9`  
		Last Modified: Mon, 16 Nov 2026 21:14:08 GMT  
		Size: 17.5 MB (17481193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce932c4d22915baf4dbbdbb3b1157d2d014aa40fe01c8cf80862f21752adbfd4`  
		Last Modified: Mon, 16 Nov 2026 21:14:07 GMT  
		Size: 69.5 KB (69504 bytes)  
		MIME: application/vnd.in-toto+json
