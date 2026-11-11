## `xwiki:lts-postgres`

```console
$ docker pull xwiki@sha256:85b0f4a48df13246648a72dbc5263fe6b11675f1eef39950d24fa17af12bd8fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:lts-postgres` - linux; amd64

```console
$ docker pull xwiki@sha256:f5703b968bf95a13e0bfe26426d86d7c94b55fc155d19769193f982690d9f549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **782.7 MB (782731272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d1dbf6a8463e8714990676bc568ad5ff9abfe1b13d3449f44e6718f31b9496c`
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
# Wed, 11 Nov 2026 19:14:47 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Wed, 11 Nov 2026 19:14:47 GMT
ENV XWIKI_VERSION=17.10.15
# Wed, 11 Nov 2026 19:14:47 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.15
# Wed, 11 Nov 2026 19:14:47 GMT
ENV XWIKI_DOWNLOAD_SHA256=d9d761d6ac4a86c8bb2733ea9a872ef54162ab1c528fb58ed5da0ccd304525b4
# Wed, 11 Nov 2026 19:15:06 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Wed, 11 Nov 2026 19:15:06 GMT
ENV POSTGRES_JDBC_VERSION=42.7.14
# Wed, 11 Nov 2026 19:15:06 GMT
ENV POSTGRES_JDBC_SHA256=73914527305a40cce504b0d3d90b23caf565136912d607ae8ae7c5895512332c
# Wed, 11 Nov 2026 19:15:06 GMT
ENV POSTGRES_JDBC_PREFIX=https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.14
# Wed, 11 Nov 2026 19:15:06 GMT
ENV POSTGRES_JDBC_ARTIFACT=postgresql-42.7.14.jar
# Wed, 11 Nov 2026 19:15:06 GMT
ENV POSTGRES_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.14.jar
# Wed, 11 Nov 2026 19:15:07 GMT
RUN set -eux;   curl $CURL_OPTIONS "${POSTGRES_JDBC_PREFIX}/${POSTGRES_JDBC_ARTIFACT}" -o $POSTGRES_JDBC_TARGET;   echo "$POSTGRES_JDBC_SHA256 *$POSTGRES_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Wed, 11 Nov 2026 19:15:07 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 11 Nov 2026 19:15:07 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 11 Nov 2026 19:15:07 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Wed, 11 Nov 2026 19:15:07 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Wed, 11 Nov 2026 19:15:07 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 11 Nov 2026 19:15:07 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 19:15:07 GMT
VOLUME [/usr/local/xwiki]
# Wed, 11 Nov 2026 19:15:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:15:07 GMT
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
	-	`sha256:457eb0d0d7817a365a08b82515622ba8f2d93706ce68ce49a3d0bfb2ab53711c`  
		Last Modified: Wed, 11 Nov 2026 19:15:57 GMT  
		Size: 14.7 MB (14712038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e186cd39a14da81204eb9aa5d9bb6a68833cfe072c0c64160d80107f38cd57a`  
		Last Modified: Wed, 11 Nov 2026 19:16:06 GMT  
		Size: 305.1 MB (305110285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d88bc0d557215f1c64906230653c319fb1f642d8015270e4cb5c4d8de703581`  
		Last Modified: Wed, 11 Nov 2026 19:16:06 GMT  
		Size: 331.6 MB (331606581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a27c3ed949ab654e4fe41bc42e844d73900135792887607a5ff56112f1d7bee8`  
		Last Modified: Wed, 11 Nov 2026 19:15:56 GMT  
		Size: 1.1 MB (1142609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fb99df6702c7c4267a546367ccebc85cbe24e93126fa84e54f674532c791a6a`  
		Last Modified: Wed, 11 Nov 2026 19:15:57 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108bdbcb6320329ecdce02eb1c873d8b1beb57d5a8e30627742e62d5cf9341a9`  
		Last Modified: Wed, 11 Nov 2026 19:15:58 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c0c1d80523edd8e0d94b4e853602e4d3976beae1b8214df6cd5d3021e9349af`  
		Last Modified: Wed, 11 Nov 2026 19:15:58 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5d507d1174ac1bc8cac1dba206e81c5fb3a303b06365f19b5a990b237364cde`  
		Last Modified: Wed, 11 Nov 2026 19:16:00 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:391a589222cc8ea5966f5abe8b96b8dc855a8dc30f9de34a622d042d44c81bcb`  
		Last Modified: Wed, 11 Nov 2026 19:16:00 GMT  
		Size: 11.0 KB (11008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7df77d8e6ad303ee2603e13a53ea06e67ee008c147c76e5fb484481a1121a9d`  
		Last Modified: Wed, 11 Nov 2026 19:16:01 GMT  
		Size: 4.3 KB (4252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:lts-postgres` - unknown; unknown

```console
$ docker pull xwiki@sha256:f0d75179a8d27f214ab1427f6b2b796e0d6aaf620766d5932ba4d1ca399e6dd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17575941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb9965023d8bc5674496890daf906ae65368ec7afffa273a8679be6e642d1c07`

```dockerfile
```

-	Layers:
	-	`sha256:6054afb6c38057f9a636cf91875739d93e93bacd03f465b17427c5c521922185`  
		Last Modified: Wed, 11 Nov 2026 19:15:57 GMT  
		Size: 17.5 MB (17507780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:896260503e3fa094b696483434b4357b552f362f73ffa8cdb71c43324ff52449`  
		Last Modified: Wed, 11 Nov 2026 19:15:56 GMT  
		Size: 68.2 KB (68161 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:lts-postgres` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:328fb9d74a6c96d36b581cdf52954c62af2150ce897139174e63191d57957dd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **774.0 MB (773968144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53f4fafccc590e376255086c2bb7b270dd0962deab66667438d771e535705307`
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
# Wed, 11 Nov 2026 19:57:00 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 11 Nov 2026 19:57:00 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 11 Nov 2026 19:57:00 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 11 Nov 2026 19:57:00 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 11 Nov 2026 19:57:00 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 11 Nov 2026 19:57:00 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 11 Nov 2026 19:57:00 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2-dev     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 19:57:00 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Wed, 11 Nov 2026 19:57:00 GMT
ENV LIBREOFFICE_VERSION=26.2.7
# Wed, 11 Nov 2026 19:57:00 GMT
ENV LIBREOFFICE_SHA256_AMD64=8cd04a88396a9230264ff784ec89cc090cbfd0960c192483ba2b80fa53939416
# Wed, 11 Nov 2026 19:57:00 GMT
ENV LIBREOFFICE_SHA256_ARM64=d871da75fe387f9dab5acb7569d46d1098835c25b53695c89152f5194ad34411
# Wed, 11 Nov 2026 19:57:00 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.7/deb
# Wed, 11 Nov 2026 19:57:19 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Wed, 11 Nov 2026 19:57:19 GMT
ENV XWIKI_VERSION=17.10.15
# Wed, 11 Nov 2026 19:57:19 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.15
# Wed, 11 Nov 2026 19:57:19 GMT
ENV XWIKI_DOWNLOAD_SHA256=d9d761d6ac4a86c8bb2733ea9a872ef54162ab1c528fb58ed5da0ccd304525b4
# Wed, 11 Nov 2026 19:57:39 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Wed, 11 Nov 2026 19:57:39 GMT
ENV POSTGRES_JDBC_VERSION=42.7.14
# Wed, 11 Nov 2026 19:57:39 GMT
ENV POSTGRES_JDBC_SHA256=73914527305a40cce504b0d3d90b23caf565136912d607ae8ae7c5895512332c
# Wed, 11 Nov 2026 19:57:39 GMT
ENV POSTGRES_JDBC_PREFIX=https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.14
# Wed, 11 Nov 2026 19:57:39 GMT
ENV POSTGRES_JDBC_ARTIFACT=postgresql-42.7.14.jar
# Wed, 11 Nov 2026 19:57:39 GMT
ENV POSTGRES_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.14.jar
# Wed, 11 Nov 2026 19:57:40 GMT
RUN set -eux;   curl $CURL_OPTIONS "${POSTGRES_JDBC_PREFIX}/${POSTGRES_JDBC_ARTIFACT}" -o $POSTGRES_JDBC_TARGET;   echo "$POSTGRES_JDBC_SHA256 *$POSTGRES_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Wed, 11 Nov 2026 19:57:40 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 11 Nov 2026 19:57:40 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 11 Nov 2026 19:57:40 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Wed, 11 Nov 2026 19:57:40 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Wed, 11 Nov 2026 19:57:40 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 11 Nov 2026 19:57:40 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 19:57:40 GMT
VOLUME [/usr/local/xwiki]
# Wed, 11 Nov 2026 19:57:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:57:40 GMT
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
	-	`sha256:88c63fad45f44832621305ebcfaf35922935655487adce3191ec586c69047769`  
		Last Modified: Wed, 11 Nov 2026 19:58:32 GMT  
		Size: 13.6 MB (13585884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b347f1006d8df1fc680993e85474e0b63aa8d1eaf57d4599c747d7076228076`  
		Last Modified: Wed, 11 Nov 2026 19:58:46 GMT  
		Size: 299.5 MB (299501647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c18de6e5699befeeba5ccf3e0c0801e8f84ad9f5def1c2a2ece6f92855cadb`  
		Last Modified: Wed, 11 Nov 2026 19:58:47 GMT  
		Size: 331.6 MB (331606578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3681cce7d1a056e054d1da53132cd8e45ccf97a2e0df942c700360df1ce8bbc`  
		Last Modified: Wed, 11 Nov 2026 19:58:31 GMT  
		Size: 1.1 MB (1142608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:687817c8a227020475d1fad326fc9659e96aec92c37fdd5aa41fbb5008a54571`  
		Last Modified: Wed, 11 Nov 2026 19:58:33 GMT  
		Size: 1.8 KB (1840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:259320a42c029dbaf1c0d8fca38f54327d47795ca0f4608ad5ee8af2da3b6d7a`  
		Last Modified: Wed, 11 Nov 2026 19:58:33 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a95972a5ed5f0cae36e688377e08bf3440b8bcfa7f9c0ebdbcf103f1d87ef0`  
		Last Modified: Wed, 11 Nov 2026 19:58:34 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c0a61315df43b5e4bd1444ec46e1bd8890a15d56f26cc568ba732fd5e56632`  
		Last Modified: Wed, 11 Nov 2026 19:58:35 GMT  
		Size: 2.4 KB (2444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:befb9f52121749bb96dc6563665a3ada43cfff872b6b0b3aff65fa791cf8bc0b`  
		Last Modified: Wed, 11 Nov 2026 19:58:35 GMT  
		Size: 11.0 KB (11008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b80157094f7df0ec3dcaa3d03e38cf1137ae5631cc15956f56a6ab51c86db9b4`  
		Last Modified: Wed, 11 Nov 2026 19:58:36 GMT  
		Size: 4.3 KB (4253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:lts-postgres` - unknown; unknown

```console
$ docker pull xwiki@sha256:d25d0489d79c1a731d1d14f9a083ccea4ad678cadf20162a3672bf496036ed4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17547671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e4ae72eaf3e03a4f5915375002cb08dd6535cc062f159e1cda36abd848118c`

```dockerfile
```

-	Layers:
	-	`sha256:e319236ac0462e307395f1d7a18a55be42bbfb67a00d837167d551d46c503b5e`  
		Last Modified: Wed, 11 Nov 2026 19:58:32 GMT  
		Size: 17.5 MB (17479318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d2cf08a5a45f70de077b6e865264ee4eceff839bebda8f646a06ee9f04eb801`  
		Last Modified: Wed, 11 Nov 2026 19:58:31 GMT  
		Size: 68.4 KB (68353 bytes)  
		MIME: application/vnd.in-toto+json
