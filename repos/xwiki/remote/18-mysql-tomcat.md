## `xwiki:18-mysql-tomcat`

```console
$ docker pull xwiki@sha256:870958f59225980516992590ee21d4669c5be96bc6e4121b862536de6ca67f33
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:18-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:96b55b2d7224286d1b85277eb09397c6aecb184530e1fe60d3e2f29682e882b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **794.2 MB (794229773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6e88ec6812567bdcd5b8d8a0341f0ea1960ea55fc506a7b5d2395c7d755b5a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9587.tar --tag 26.04
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9587.tar
# Thu, 29 Oct 2026 19:13:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:13:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:13:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:13:40 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 19:13:40 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:13:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 29 Oct 2026 19:13:43 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:13:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:13:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 20:11:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Oct 2026 20:11:24 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:11:24 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 29 Oct 2026 20:11:24 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Oct 2026 20:11:24 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Oct 2026 20:11:24 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Oct 2026 20:11:24 GMT
ENV TOMCAT_MAJOR=10
# Thu, 29 Oct 2026 20:11:24 GMT
ENV TOMCAT_VERSION=10.1.61
# Thu, 29 Oct 2026 20:11:24 GMT
ENV TOMCAT_SHA512=35120a2b1182bac3d55438fbec0dc581d03b0f1c16ce692a930f3bb6a1097cf896b94b389152257071a87cb2928ac8c15f1bad08387c14acc7c17dbc1bb598fb
# Thu, 29 Oct 2026 20:11:24 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Thu, 29 Oct 2026 20:11:30 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 20:11:31 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Thu, 29 Oct 2026 20:11:31 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 29 Oct 2026 20:11:31 GMT
ENTRYPOINT []
# Thu, 29 Oct 2026 20:11:31 GMT
CMD ["catalina.sh" "run"]
# Tue, 03 Nov 2026 19:12:29 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Tue, 03 Nov 2026 19:12:29 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Tue, 03 Nov 2026 19:12:29 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Tue, 03 Nov 2026 19:12:29 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Tue, 03 Nov 2026 19:12:29 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Tue, 03 Nov 2026 19:12:29 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Tue, 03 Nov 2026 19:12:29 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2-dev     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 19:12:29 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Tue, 03 Nov 2026 19:12:29 GMT
ENV LIBREOFFICE_VERSION=26.2.7
# Tue, 03 Nov 2026 19:12:29 GMT
ENV LIBREOFFICE_SHA256_AMD64=8cd04a88396a9230264ff784ec89cc090cbfd0960c192483ba2b80fa53939416
# Tue, 03 Nov 2026 19:12:29 GMT
ENV LIBREOFFICE_SHA256_ARM64=d871da75fe387f9dab5acb7569d46d1098835c25b53695c89152f5194ad34411
# Tue, 03 Nov 2026 19:12:29 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.7/deb
# Tue, 03 Nov 2026 19:17:16 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Tue, 03 Nov 2026 19:17:16 GMT
ENV XWIKI_VERSION=18.9.0
# Tue, 03 Nov 2026 19:17:16 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.9.0
# Tue, 03 Nov 2026 19:17:16 GMT
ENV XWIKI_DOWNLOAD_SHA256=e15f79ad379cca52cdeb22035c2fd4d04aad8b18acefbe429e770943bde2c823
# Tue, 03 Nov 2026 19:17:36 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Tue, 03 Nov 2026 19:17:36 GMT
ENV MYSQL_JDBC_VERSION=26.7.0
# Tue, 03 Nov 2026 19:17:36 GMT
ENV MYSQL_JDBC_SHA256=69084713593a4aa8d07c383619b9639276f08bccf8faf1c562178147d389b1e1
# Tue, 03 Nov 2026 19:17:36 GMT
ENV MYSQL_JDBC_PREFIX=https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/26.7.0
# Tue, 03 Nov 2026 19:17:36 GMT
ENV MYSQL_JDBC_ARTIFACT=mysql-connector-j-26.7.0.jar
# Tue, 03 Nov 2026 19:17:36 GMT
ENV MYSQL_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mysql-connector-j-26.7.0.jar
# Tue, 03 Nov 2026 19:17:36 GMT
RUN set -eux;   curl $CURL_OPTIONS "${MYSQL_JDBC_PREFIX}/${MYSQL_JDBC_ARTIFACT}" -o $MYSQL_JDBC_TARGET;   echo "$MYSQL_JDBC_SHA256 *$MYSQL_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Tue, 03 Nov 2026 19:17:36 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Tue, 03 Nov 2026 19:17:36 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Tue, 03 Nov 2026 19:17:36 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Tue, 03 Nov 2026 19:17:37 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Tue, 03 Nov 2026 19:17:37 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Tue, 03 Nov 2026 19:17:37 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 19:17:37 GMT
VOLUME [/usr/local/xwiki]
# Tue, 03 Nov 2026 19:17:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 19:17:37 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:edafa32f5d9e4d9629f0dbc6c01e63c79ff08133c01cfb7d3363aa8bd8a614cf`  
		Last Modified: Sun, 25 Oct 2026 13:21:15 GMT  
		Size: 42.1 MB (42139920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f25b84a7d74315d94ee4108231f8f5e0cd2a44725a7204d5dd6ce91c151697`  
		Last Modified: Sun, 25 Oct 2026 13:21:18 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c2cb069076049f26b59aaca7c1d09fd75a23b64cc4b2b4f63d04465e334ea7`  
		Last Modified: Thu, 29 Oct 2026 19:13:59 GMT  
		Size: 20.1 MB (20136069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27fb70cc2e5debd2278dbbd2d7cc0665e63785bd8c751ea1682be3dabe79915`  
		Last Modified: Thu, 29 Oct 2026 19:14:00 GMT  
		Size: 53.2 MB (53212106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cec81137da720199b8f279bc24b0054cc7d2e8685fef3d93ea8a9bfa414c909`  
		Last Modified: Thu, 29 Oct 2026 19:13:58 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bf4c6adbed59b289c82f355d0712c87d1f1cbfed41437f19557ad4f6f7ce057`  
		Last Modified: Thu, 29 Oct 2026 19:13:58 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd227a3e23cb054532aeb437859269e3558a3eae819fb3040339d44434af1b3b`  
		Last Modified: Thu, 29 Oct 2026 20:11:42 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5933639e0b21a2692d017b35552b5d851da272a04e25252e018648c444b5ba09`  
		Last Modified: Thu, 29 Oct 2026 20:11:43 GMT  
		Size: 14.4 MB (14419683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e3cbb087929e3ed8d57d18769cf5a364bac2a5dce09361228981f787434aa5`  
		Last Modified: Thu, 29 Oct 2026 20:11:43 GMT  
		Size: 225.8 KB (225800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6656b8c9c2b78ddbc36ac66154617933c7590cd307418a2eb66985147ab299c1`  
		Last Modified: Tue, 03 Nov 2026 19:18:34 GMT  
		Size: 14.7 MB (14693585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a421cecebedee519552af68109490108eb6903724075a0027ce42194bab27be`  
		Last Modified: Tue, 03 Nov 2026 19:18:43 GMT  
		Size: 305.1 MB (305110307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb8314d4d738464f6d0724d51e61f0c4b25148ae6e66898115b33b62d29cf2a7`  
		Last Modified: Tue, 03 Nov 2026 19:18:45 GMT  
		Size: 341.8 MB (341814137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d7c313675bf3268af01cef11852a56a06c79dd4762f9a1b44a30b47f1de4fd`  
		Last Modified: Tue, 03 Nov 2026 19:18:33 GMT  
		Size: 2.5 MB (2451654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d4672afbc79403bd8484e75a8d39893b77a95bd7af09a6f37c2673265796d33`  
		Last Modified: Tue, 03 Nov 2026 19:18:34 GMT  
		Size: 1.8 KB (1841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f161e2dda3c238166677bf59056b9e8e322e3f9196a25ea155f981bcc2d57ecd`  
		Last Modified: Tue, 03 Nov 2026 19:18:36 GMT  
		Size: 2.4 KB (2377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6653fef6ed367cee5c33760ba6c218028deb1d1f81815fa36669ab4b10e949`  
		Last Modified: Tue, 03 Nov 2026 19:18:36 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c793b59f1f93bb9bee524880dde0eb232cf360b62608903c1f67ac8b15a09086`  
		Last Modified: Tue, 03 Nov 2026 19:18:37 GMT  
		Size: 2.4 KB (2445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6313e7254d1bc2c3f8a4f08d5ab9d401eee377980c61ac87b69fb5d9edf46e9a`  
		Last Modified: Tue, 03 Nov 2026 19:18:37 GMT  
		Size: 11.4 KB (11410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4e424b140940ca217a9c786b72eda9a81dd04126aff411fba68a778cd432ea`  
		Last Modified: Tue, 03 Nov 2026 19:18:38 GMT  
		Size: 4.3 KB (4344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:18-mysql-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:e8fd448e0084f6634b3d4bb70e7e675a151886af7c92df881bfc04f6d3302a91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17608808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebcc3509e543324083c2a2f268017efc6d73e7ef4c397a0f3afc96cd327d9fbd`

```dockerfile
```

-	Layers:
	-	`sha256:02ad8f15010b5b2e43f7b0709f4dba5a12d20136bf6cc8332fe4d2cbd85b5b35`  
		Last Modified: Tue, 03 Nov 2026 19:18:34 GMT  
		Size: 17.5 MB (17538988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf2741702248cdd613c2cd7f7913547f335e8e5ca158e277536132333b893699`  
		Last Modified: Tue, 03 Nov 2026 19:18:33 GMT  
		Size: 69.8 KB (69820 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:18-mysql-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:dc64ba9954a562ccf08847b7175ac82911d4a236dcea4babd4f2f1235554d7ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **785.5 MB (785466944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e5c093bb861efcc659368ffdf844e49b50b343b532acc05a89760f532f3395b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sun, 25 Oct 2026 10:30:31 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9649.tar --tag 26.04
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9649.tar
# Thu, 29 Oct 2026 19:08:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:08:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:08:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:08:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 19:08:12 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:08:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 29 Oct 2026 19:08:15 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:08:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:08:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 20:12:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Oct 2026 20:12:05 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:12:05 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 29 Oct 2026 20:12:05 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Oct 2026 20:12:05 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Oct 2026 20:12:05 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Oct 2026 20:12:05 GMT
ENV TOMCAT_MAJOR=10
# Thu, 29 Oct 2026 20:12:05 GMT
ENV TOMCAT_VERSION=10.1.61
# Thu, 29 Oct 2026 20:12:05 GMT
ENV TOMCAT_SHA512=35120a2b1182bac3d55438fbec0dc581d03b0f1c16ce692a930f3bb6a1097cf896b94b389152257071a87cb2928ac8c15f1bad08387c14acc7c17dbc1bb598fb
# Thu, 29 Oct 2026 20:12:05 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Thu, 29 Oct 2026 20:12:13 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 20:12:13 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Thu, 29 Oct 2026 20:12:13 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 29 Oct 2026 20:12:13 GMT
ENTRYPOINT []
# Thu, 29 Oct 2026 20:12:13 GMT
CMD ["catalina.sh" "run"]
# Tue, 03 Nov 2026 19:10:53 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Tue, 03 Nov 2026 19:10:53 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Tue, 03 Nov 2026 19:10:53 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Tue, 03 Nov 2026 19:10:53 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Tue, 03 Nov 2026 19:10:53 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Tue, 03 Nov 2026 19:10:53 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Tue, 03 Nov 2026 19:10:53 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2-dev     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 19:10:53 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Tue, 03 Nov 2026 19:10:53 GMT
ENV LIBREOFFICE_VERSION=26.2.7
# Tue, 03 Nov 2026 19:10:53 GMT
ENV LIBREOFFICE_SHA256_AMD64=8cd04a88396a9230264ff784ec89cc090cbfd0960c192483ba2b80fa53939416
# Tue, 03 Nov 2026 19:10:53 GMT
ENV LIBREOFFICE_SHA256_ARM64=d871da75fe387f9dab5acb7569d46d1098835c25b53695c89152f5194ad34411
# Tue, 03 Nov 2026 19:10:53 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.7/deb
# Tue, 03 Nov 2026 19:11:14 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Tue, 03 Nov 2026 19:11:14 GMT
ENV XWIKI_VERSION=18.9.0
# Tue, 03 Nov 2026 19:11:14 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.9.0
# Tue, 03 Nov 2026 19:11:14 GMT
ENV XWIKI_DOWNLOAD_SHA256=e15f79ad379cca52cdeb22035c2fd4d04aad8b18acefbe429e770943bde2c823
# Tue, 03 Nov 2026 19:11:36 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Tue, 03 Nov 2026 19:11:36 GMT
ENV MYSQL_JDBC_VERSION=26.7.0
# Tue, 03 Nov 2026 19:11:36 GMT
ENV MYSQL_JDBC_SHA256=69084713593a4aa8d07c383619b9639276f08bccf8faf1c562178147d389b1e1
# Tue, 03 Nov 2026 19:11:36 GMT
ENV MYSQL_JDBC_PREFIX=https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/26.7.0
# Tue, 03 Nov 2026 19:11:36 GMT
ENV MYSQL_JDBC_ARTIFACT=mysql-connector-j-26.7.0.jar
# Tue, 03 Nov 2026 19:11:36 GMT
ENV MYSQL_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mysql-connector-j-26.7.0.jar
# Tue, 03 Nov 2026 19:11:36 GMT
RUN set -eux;   curl $CURL_OPTIONS "${MYSQL_JDBC_PREFIX}/${MYSQL_JDBC_ARTIFACT}" -o $MYSQL_JDBC_TARGET;   echo "$MYSQL_JDBC_SHA256 *$MYSQL_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Tue, 03 Nov 2026 19:11:36 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Tue, 03 Nov 2026 19:11:36 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Tue, 03 Nov 2026 19:11:37 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Tue, 03 Nov 2026 19:11:37 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Tue, 03 Nov 2026 19:11:37 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Tue, 03 Nov 2026 19:11:37 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 19:11:37 GMT
VOLUME [/usr/local/xwiki]
# Tue, 03 Nov 2026 19:11:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 19:11:37 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:afa7f7d582de8ee3433df193ede10fc2c50d3398de31c14d329b643e7a69b852`  
		Last Modified: Sun, 25 Oct 2026 13:21:25 GMT  
		Size: 41.1 MB (41122308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01cc7d6fb3d703f324d1ccddfddeaa2e8c97cf4b5d6936a66396eaf4089d99`  
		Last Modified: Sun, 25 Oct 2026 13:21:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68f7f4a6be28b9e6a7ee7ffb00eda69dc4772655fa8b13c2973af2128dffff3`  
		Last Modified: Thu, 29 Oct 2026 19:08:31 GMT  
		Size: 19.9 MB (19946823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a2ce41b411e7f36a6537f25636ec079a5e6647180fd0c988d9e82e724dc8f6`  
		Last Modified: Thu, 29 Oct 2026 19:08:32 GMT  
		Size: 52.4 MB (52390829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ca69fd286fac953431c4f49fb9ef88db0a9cefa2639320bb13ac15b3ffd61b`  
		Last Modified: Thu, 29 Oct 2026 19:08:30 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e339e820d3c78cac804ced84ef6a991118bc362fb05d593a16ef82d33c2c9562`  
		Last Modified: Thu, 29 Oct 2026 19:08:30 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:544ad2a10d79717ba0eb4c24d712ee17a8bdf8d987a07057702b98670872002f`  
		Last Modified: Thu, 29 Oct 2026 20:12:25 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c83b940296604cff2de603b0c05fa53c41198d93b6b8fed9b10b6fddaa5509e1`  
		Last Modified: Thu, 29 Oct 2026 20:12:25 GMT  
		Size: 14.4 MB (14420722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a78ca68884df793d9c3bd54b71075220f5279821946706badac48b7e6ed437`  
		Last Modified: Thu, 29 Oct 2026 20:12:25 GMT  
		Size: 224.6 KB (224558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9ef07d3eb2d366a885eadaeabe259683745a91d5449d214daabe844a664372`  
		Last Modified: Tue, 03 Nov 2026 19:12:30 GMT  
		Size: 13.6 MB (13567971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a71b5f436a22c23548ce74ee2acb5b6e375fb95d117e2c482f8bb5f822bcb678`  
		Last Modified: Tue, 03 Nov 2026 19:12:39 GMT  
		Size: 299.5 MB (299501428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b93cf4b2d62a5e4c38c46f5481a6f599e7b580954d4c2771dfaee76d6328f6`  
		Last Modified: Tue, 03 Nov 2026 19:12:39 GMT  
		Size: 341.8 MB (341814155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f27b64f21e0b51a351aaded9ec49f763b0bd7d8db44da67ba9f53c8cbc0acd65`  
		Last Modified: Tue, 03 Nov 2026 19:12:30 GMT  
		Size: 2.5 MB (2451654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd07825af8388f890b617281345343b5f0d89485d4da3ffe4575233a1e65bda`  
		Last Modified: Tue, 03 Nov 2026 19:12:31 GMT  
		Size: 1.8 KB (1841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d23206cea51b3dea1fc326469318dcc9d4abfd1e4459036273badfbd9c4095`  
		Last Modified: Tue, 03 Nov 2026 19:12:32 GMT  
		Size: 2.4 KB (2375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:307969d3c72404f4900ef8a87013d10078f0293979f67083d05a37b641685784`  
		Last Modified: Tue, 03 Nov 2026 19:12:32 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0890650e9228b822420b29f523776ad45fe04c9782610a192576baf9618e465e`  
		Last Modified: Tue, 03 Nov 2026 19:12:33 GMT  
		Size: 2.4 KB (2443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb2461ed5dde45f65c049150a8b934a69d26dc990b90fd8477f16ef4238790c`  
		Last Modified: Tue, 03 Nov 2026 19:12:34 GMT  
		Size: 11.4 KB (11407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb13f30ec886e2253623081d071cfbf80de6e0bdc0c70b2522d3c4fe71ef7fc1`  
		Last Modified: Tue, 03 Nov 2026 19:12:35 GMT  
		Size: 4.3 KB (4341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:18-mysql-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:eae4f4cbb38f9bf072533a7a19490d3ae53ce83511edd049345a3625bc41f4f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17580682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43d78ed9041c5817076d9006488c62dc44ab64fe1e3366e51f2c2075a238ea77`

```dockerfile
```

-	Layers:
	-	`sha256:dd15320e4dccb701bac73a741c19f9cf2e45b2a7a6bc9e8bd9f033000d7857af`  
		Last Modified: Tue, 03 Nov 2026 19:12:30 GMT  
		Size: 17.5 MB (17510598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cfe7399ec34979a952d5dfe0ca120061ab2023504a241b20fe4dce3b5727c85`  
		Last Modified: Tue, 03 Nov 2026 19:12:29 GMT  
		Size: 70.1 KB (70084 bytes)  
		MIME: application/vnd.in-toto+json
