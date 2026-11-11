## `xwiki:17-mysql-tomcat`

```console
$ docker pull xwiki@sha256:d08a3947f7e3f5cf5fb97cf6d8941ebe09bc276f5430bfe63574da45d452e3ec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:17-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:f83c7e3f5f9a5eabdafeb0780058a54e605902ff61910b697b1e1b6461892384
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **784.0 MB (784046507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e001e795a9a4986c9cd99915729817e0b19b7dde01ef86f4d8913214eb43faef`
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
# Wed, 11 Nov 2026 19:14:28 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 11 Nov 2026 19:14:28 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 11 Nov 2026 19:14:28 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 11 Nov 2026 19:14:28 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 11 Nov 2026 19:14:28 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 11 Nov 2026 19:14:28 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 11 Nov 2026 19:14:28 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2-dev     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:14:28 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Wed, 11 Nov 2026 19:14:28 GMT
ENV LIBREOFFICE_VERSION=26.2.7
# Wed, 11 Nov 2026 19:14:28 GMT
ENV LIBREOFFICE_SHA256_AMD64=8cd04a88396a9230264ff784ec89cc090cbfd0960c192483ba2b80fa53939416
# Wed, 11 Nov 2026 19:14:28 GMT
ENV LIBREOFFICE_SHA256_ARM64=d871da75fe387f9dab5acb7569d46d1098835c25b53695c89152f5194ad34411
# Wed, 11 Nov 2026 19:14:28 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.7/deb
# Wed, 11 Nov 2026 19:25:34 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Wed, 11 Nov 2026 19:25:34 GMT
ENV XWIKI_VERSION=17.10.15
# Wed, 11 Nov 2026 19:25:34 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.15
# Wed, 11 Nov 2026 19:25:34 GMT
ENV XWIKI_DOWNLOAD_SHA256=d9d761d6ac4a86c8bb2733ea9a872ef54162ab1c528fb58ed5da0ccd304525b4
# Wed, 11 Nov 2026 19:25:53 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Wed, 11 Nov 2026 19:25:53 GMT
ENV MYSQL_JDBC_VERSION=26.10.0
# Wed, 11 Nov 2026 19:25:53 GMT
ENV MYSQL_JDBC_SHA256=cef70caf532833c9ab8f41f74773ce22c08bf503fad215c9c2ee1e9db87e759e
# Wed, 11 Nov 2026 19:25:53 GMT
ENV MYSQL_JDBC_PREFIX=https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/26.10.0
# Wed, 11 Nov 2026 19:25:53 GMT
ENV MYSQL_JDBC_ARTIFACT=mysql-connector-j-26.10.0.jar
# Wed, 11 Nov 2026 19:25:53 GMT
ENV MYSQL_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mysql-connector-j-26.10.0.jar
# Wed, 11 Nov 2026 19:25:53 GMT
RUN set -eux;   curl $CURL_OPTIONS "${MYSQL_JDBC_PREFIX}/${MYSQL_JDBC_ARTIFACT}" -o $MYSQL_JDBC_TARGET;   echo "$MYSQL_JDBC_SHA256 *$MYSQL_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Wed, 11 Nov 2026 19:25:53 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 11 Nov 2026 19:25:53 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 11 Nov 2026 19:25:53 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Wed, 11 Nov 2026 19:25:53 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Wed, 11 Nov 2026 19:25:53 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 11 Nov 2026 19:25:53 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 19:25:53 GMT
VOLUME [/usr/local/xwiki]
# Wed, 11 Nov 2026 19:25:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:25:53 GMT
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
	-	`sha256:fae360f2228c0726e14cad2f992387b35cbab3e348051d9c0668edc72838b9e5`  
		Last Modified: Wed, 11 Nov 2026 19:26:43 GMT  
		Size: 14.7 MB (14712211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3dcc58b958a668bc9c6d10d53e28f5402855da2b31bf3c5ba860666446f58a7`  
		Last Modified: Wed, 11 Nov 2026 19:26:53 GMT  
		Size: 305.1 MB (305110963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a25a3fd6d5e94eb90d92aa77bb1ff558aff0d23b7c6edaa0a223dd0b766ec2`  
		Last Modified: Wed, 11 Nov 2026 19:26:53 GMT  
		Size: 331.6 MB (331606578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c00adaf576accfa441d30731127cbb0899bb6373e873a0660e43322c244b082`  
		Last Modified: Wed, 11 Nov 2026 19:26:42 GMT  
		Size: 2.5 MB (2457063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd45a15076bf2c8488126c6d72830a2ee50ce9ad3eacdf9523c421e1eb0e8490`  
		Last Modified: Wed, 11 Nov 2026 19:26:44 GMT  
		Size: 1.8 KB (1842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07652280dfcf61ca8b44973464724ca01c0e323d357d0d89e2abf4d99557faf7`  
		Last Modified: Wed, 11 Nov 2026 19:26:45 GMT  
		Size: 2.4 KB (2378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b042ea90bdb32a147660b5e7e66368354ed2a7ec090e70277d010d25c7fb749`  
		Last Modified: Wed, 11 Nov 2026 19:26:45 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00723b07b3d0d6890c385e6683e0f443519c2b0b82567125facf8f0582fadbe3`  
		Last Modified: Wed, 11 Nov 2026 19:26:46 GMT  
		Size: 2.4 KB (2443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d6f11e16a41c5f8034a9a21dd368b489316cc9fdb46785dce073cf77dea80c7`  
		Last Modified: Wed, 11 Nov 2026 19:26:46 GMT  
		Size: 11.0 KB (11010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a427059e23de94f1b00b13fcd227384ab7c6ad418aafd7448a4f76b72a19712`  
		Last Modified: Wed, 11 Nov 2026 19:26:47 GMT  
		Size: 4.3 KB (4345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:17-mysql-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:2d9d2e963f33069ad5d61a40a71e46ab89204c4be68e8fac58f247f537e3811e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17578234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7322c4834d48a359bd7e0605e0e9de5db443d4ec3c4670b6d2896f694ab74e`

```dockerfile
```

-	Layers:
	-	`sha256:c12764cfc0d16602053d51172bedff0c2b1d4477d3870ffe84bf924c8ccd4e87`  
		Last Modified: Wed, 11 Nov 2026 19:26:43 GMT  
		Size: 17.5 MB (17508991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:785410e78abdcde0ec6a0c9563ddbedbca6ac7f59fe74e4152af63ff6ff18016`  
		Last Modified: Wed, 11 Nov 2026 19:26:42 GMT  
		Size: 69.2 KB (69243 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:17-mysql-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:c9b3abe715f6030e9fc9ccb3e8a2089bcd715cb2238d91d1e2f1edb43d3105cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **775.0 MB (775001382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2257cd325ea349f1623cb61c1d5d8400757712204576da8a1987bff1223be47e`
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
# Tue, 03 Nov 2026 19:11:58 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Tue, 03 Nov 2026 19:11:58 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Tue, 03 Nov 2026 19:11:58 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Tue, 03 Nov 2026 19:11:58 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Tue, 03 Nov 2026 19:11:58 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Tue, 03 Nov 2026 19:11:58 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Tue, 03 Nov 2026 19:11:58 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2-dev     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 19:11:58 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Tue, 03 Nov 2026 19:11:58 GMT
ENV LIBREOFFICE_VERSION=26.2.7
# Tue, 03 Nov 2026 19:11:58 GMT
ENV LIBREOFFICE_SHA256_AMD64=8cd04a88396a9230264ff784ec89cc090cbfd0960c192483ba2b80fa53939416
# Tue, 03 Nov 2026 19:11:58 GMT
ENV LIBREOFFICE_SHA256_ARM64=d871da75fe387f9dab5acb7569d46d1098835c25b53695c89152f5194ad34411
# Tue, 03 Nov 2026 19:11:58 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.7/deb
# Tue, 03 Nov 2026 19:12:25 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Tue, 03 Nov 2026 19:12:25 GMT
ENV XWIKI_VERSION=17.10.14
# Tue, 03 Nov 2026 19:12:25 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.14
# Tue, 03 Nov 2026 19:12:25 GMT
ENV XWIKI_DOWNLOAD_SHA256=dced6dae8c9f0e02866bdf6550e3d29cef52e626c63f68ea3de297eb3c284abc
# Tue, 03 Nov 2026 19:12:45 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Tue, 03 Nov 2026 19:12:45 GMT
ENV MYSQL_JDBC_VERSION=26.7.0
# Tue, 03 Nov 2026 19:12:45 GMT
ENV MYSQL_JDBC_SHA256=69084713593a4aa8d07c383619b9639276f08bccf8faf1c562178147d389b1e1
# Tue, 03 Nov 2026 19:12:45 GMT
ENV MYSQL_JDBC_PREFIX=https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/26.7.0
# Tue, 03 Nov 2026 19:12:45 GMT
ENV MYSQL_JDBC_ARTIFACT=mysql-connector-j-26.7.0.jar
# Tue, 03 Nov 2026 19:12:45 GMT
ENV MYSQL_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mysql-connector-j-26.7.0.jar
# Tue, 03 Nov 2026 19:12:45 GMT
RUN set -eux;   curl $CURL_OPTIONS "${MYSQL_JDBC_PREFIX}/${MYSQL_JDBC_ARTIFACT}" -o $MYSQL_JDBC_TARGET;   echo "$MYSQL_JDBC_SHA256 *$MYSQL_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Tue, 03 Nov 2026 19:12:45 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Tue, 03 Nov 2026 19:12:45 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Tue, 03 Nov 2026 19:12:45 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Tue, 03 Nov 2026 19:12:45 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Tue, 03 Nov 2026 19:12:45 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Tue, 03 Nov 2026 19:12:45 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 19:12:45 GMT
VOLUME [/usr/local/xwiki]
# Tue, 03 Nov 2026 19:12:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 19:12:45 GMT
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
	-	`sha256:03ec06e22c8a34f6955f8b3e3fcfe055233a7f7ffdf3ce0604d27c078e52abda`  
		Last Modified: Tue, 03 Nov 2026 19:13:39 GMT  
		Size: 13.6 MB (13568013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc2d5a265f4aeec59ee2f546da4fd7406f06bbb865d186aba35446a8a47a458`  
		Last Modified: Tue, 03 Nov 2026 19:13:48 GMT  
		Size: 299.5 MB (299500895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e074f7ffc3f17af54b417dfcd2a435324d71e7f5746bb8091f7c3254bdbc9b5f`  
		Last Modified: Tue, 03 Nov 2026 19:13:48 GMT  
		Size: 331.3 MB (331349479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f983767af2b0428a7d3a152a769a009ba2711e7e7e01cf7cc0bcd655a155e23`  
		Last Modified: Tue, 03 Nov 2026 19:13:39 GMT  
		Size: 2.5 MB (2451651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7401ed8835450e9746d0391ef21c8e51cca7665558d567b79c739f4edb36d7ec`  
		Last Modified: Tue, 03 Nov 2026 19:13:40 GMT  
		Size: 1.8 KB (1840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6b9f783e9af1efd5d2a1de51be8ed1aeae6ccda7f029de80b75b3ea6fe5ba0`  
		Last Modified: Tue, 03 Nov 2026 19:13:41 GMT  
		Size: 2.4 KB (2375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab3edf0fcc4b57e26858bd44d9c7a8130f90e16154a10729112892b3d09cc4d3`  
		Last Modified: Tue, 03 Nov 2026 19:13:41 GMT  
		Size: 874.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b278f61b5108900346d9789265715841b3fabf3f9c77cbd8b5582a3032f528e3`  
		Last Modified: Tue, 03 Nov 2026 19:13:42 GMT  
		Size: 2.4 KB (2438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc9c5d1769636ae015cb573f28542b5779b766d2dfcc9c877a5868beb7b52ba`  
		Last Modified: Tue, 03 Nov 2026 19:13:42 GMT  
		Size: 11.0 KB (11020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af30d63fca7001f05dce9ccb5bdb7193254b06d510a9bc26e8b0a43fdf6d2c36`  
		Last Modified: Tue, 03 Nov 2026 19:13:43 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:17-mysql-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:fd488ea27f8002e1102bc7a9dc3383620085885a3e19cbdfa0df992912bd587d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17548694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e99034aa94b47715c8a78b6173fb1c99eaed4aa7a93235dca53da04df79b45b`

```dockerfile
```

-	Layers:
	-	`sha256:477410309dd0538c9d929fabeefed29ee7320d5bcdb57eeb96238870780d2e0d`  
		Last Modified: Tue, 03 Nov 2026 19:13:39 GMT  
		Size: 17.5 MB (17479224 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c63409fa40914185ad7c97dc5f6c8c37a3e1d6c3ba3d454c87f785f8c653f61c`  
		Last Modified: Tue, 03 Nov 2026 19:13:38 GMT  
		Size: 69.5 KB (69470 bytes)  
		MIME: application/vnd.in-toto+json
