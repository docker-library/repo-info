## `xwiki:18-postgres-tomcat`

```console
$ docker pull xwiki@sha256:9de19f3590501f57d5e93dea6f31e8d0450b4c697b043231c99830c387642805
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:18-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:e9211fe093434626a1abf63d19a2d2f982f179c127996626cf30cb9769be6c85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **792.9 MB (792920592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4db54523187589131351ada3d8050071da0b4d49cfd0492a8bca1c868e2cde6`
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
# Tue, 03 Nov 2026 19:11:49 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Tue, 03 Nov 2026 19:11:49 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Tue, 03 Nov 2026 19:11:49 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Tue, 03 Nov 2026 19:11:49 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Tue, 03 Nov 2026 19:11:49 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Tue, 03 Nov 2026 19:11:49 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Tue, 03 Nov 2026 19:11:49 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2-dev     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 19:11:49 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Tue, 03 Nov 2026 19:11:49 GMT
ENV LIBREOFFICE_VERSION=26.2.7
# Tue, 03 Nov 2026 19:11:49 GMT
ENV LIBREOFFICE_SHA256_AMD64=8cd04a88396a9230264ff784ec89cc090cbfd0960c192483ba2b80fa53939416
# Tue, 03 Nov 2026 19:11:49 GMT
ENV LIBREOFFICE_SHA256_ARM64=d871da75fe387f9dab5acb7569d46d1098835c25b53695c89152f5194ad34411
# Tue, 03 Nov 2026 19:11:49 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.7/deb
# Tue, 03 Nov 2026 19:12:08 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Tue, 03 Nov 2026 19:12:08 GMT
ENV XWIKI_VERSION=18.9.0
# Tue, 03 Nov 2026 19:12:08 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.9.0
# Tue, 03 Nov 2026 19:12:08 GMT
ENV XWIKI_DOWNLOAD_SHA256=e15f79ad379cca52cdeb22035c2fd4d04aad8b18acefbe429e770943bde2c823
# Tue, 03 Nov 2026 19:12:36 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Tue, 03 Nov 2026 19:12:36 GMT
ENV POSTGRES_JDBC_VERSION=42.7.14
# Tue, 03 Nov 2026 19:12:36 GMT
ENV POSTGRES_JDBC_SHA256=73914527305a40cce504b0d3d90b23caf565136912d607ae8ae7c5895512332c
# Tue, 03 Nov 2026 19:12:36 GMT
ENV POSTGRES_JDBC_PREFIX=https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.14
# Tue, 03 Nov 2026 19:12:36 GMT
ENV POSTGRES_JDBC_ARTIFACT=postgresql-42.7.14.jar
# Tue, 03 Nov 2026 19:12:36 GMT
ENV POSTGRES_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.14.jar
# Tue, 03 Nov 2026 19:12:36 GMT
RUN set -eux;   curl $CURL_OPTIONS "${POSTGRES_JDBC_PREFIX}/${POSTGRES_JDBC_ARTIFACT}" -o $POSTGRES_JDBC_TARGET;   echo "$POSTGRES_JDBC_SHA256 *$POSTGRES_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Tue, 03 Nov 2026 19:12:36 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Tue, 03 Nov 2026 19:12:36 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Tue, 03 Nov 2026 19:12:36 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Tue, 03 Nov 2026 19:12:36 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Tue, 03 Nov 2026 19:12:36 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Tue, 03 Nov 2026 19:12:36 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 19:12:36 GMT
VOLUME [/usr/local/xwiki]
# Tue, 03 Nov 2026 19:12:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 19:12:36 GMT
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
	-	`sha256:3eff24b6e10dbfa3c54c35a89a53b167b0f4b6b65d23353bc5c12d4a6f58fb15`  
		Last Modified: Tue, 03 Nov 2026 19:13:27 GMT  
		Size: 14.7 MB (14693530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a3022fc6b8f3c74e3e21b949344af019f1a8cf9f86264aee1df549a092b2b30`  
		Last Modified: Tue, 03 Nov 2026 19:13:38 GMT  
		Size: 305.1 MB (305110043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd4bcadec655b0002527de17fd2511f853ee35a6e556ac735f63225944b2efd3`  
		Last Modified: Tue, 03 Nov 2026 19:13:38 GMT  
		Size: 341.8 MB (341814237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc98aff2404a3940c261352e0ad35d67fecb102cf32f72ba2c04e4b1b51ac8b`  
		Last Modified: Tue, 03 Nov 2026 19:13:26 GMT  
		Size: 1.1 MB (1142606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3567ad04103d1aa9c13d85eb06f97b55f958b853e04e6ffcd33e85611fe0c09`  
		Last Modified: Tue, 03 Nov 2026 19:13:28 GMT  
		Size: 1.8 KB (1841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72ba589d25ec88a546cd4f7d9181bbad6c009166d29576120bd9b94bdd9ffbaf`  
		Last Modified: Tue, 03 Nov 2026 19:13:29 GMT  
		Size: 2.6 KB (2557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1069b223ae15ca71bbae8eabff79ee1259ae0ad23348c6e63ae9ecf8ccaf7859`  
		Last Modified: Tue, 03 Nov 2026 19:13:30 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28f45d2862f6aad7d28055df26f0314cfae190b5701b00e4a4e68d693caeb8c0`  
		Last Modified: Tue, 03 Nov 2026 19:13:30 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd76e68ce28a591107dbadf81f6be2fc9da5b911e9aebfa8f26968f8fe4655bc`  
		Last Modified: Tue, 03 Nov 2026 19:13:31 GMT  
		Size: 11.4 KB (11411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0df3be4c7f63cb1d89782fc7b9518baa7050f4815ff4f9b21ea1bc2213e33c30`  
		Last Modified: Tue, 03 Nov 2026 19:13:32 GMT  
		Size: 4.3 KB (4255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:18-postgres-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:591d623ad45a95ec181c0c23a20b4e506e11620bd49c44afc983f780515677d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17605952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830b117d6deaf68a98c947948947f90b6ff0f3e90774214d730555daa30069b2`

```dockerfile
```

-	Layers:
	-	`sha256:650541bcf4be1fbf661b4995bb84a47cc1b85458386a8d9aa6dc48077330bffc`  
		Last Modified: Tue, 03 Nov 2026 19:13:27 GMT  
		Size: 17.5 MB (17537490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15fc1c5e1b1d305125d8a6ed8df5c8da4ea3b468a71a8c712a5b1cfcf7e009f3`  
		Last Modified: Tue, 03 Nov 2026 19:13:26 GMT  
		Size: 68.5 KB (68462 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:18-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:158aef4d1abd277327a70e3ae5142c49b27bbeecd7fa0d2ec0fdb5d89c209e37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **784.2 MB (784157942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1396bc495483a3e6947e8a8540452ffd8ce783628a2d6a74019d18a6bbd8604`
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
# Tue, 03 Nov 2026 19:11:59 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Tue, 03 Nov 2026 19:11:59 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Tue, 03 Nov 2026 19:11:59 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Tue, 03 Nov 2026 19:11:59 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Tue, 03 Nov 2026 19:11:59 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Tue, 03 Nov 2026 19:11:59 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Tue, 03 Nov 2026 19:11:59 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2-dev     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 19:11:59 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Tue, 03 Nov 2026 19:11:59 GMT
ENV LIBREOFFICE_VERSION=26.2.7
# Tue, 03 Nov 2026 19:11:59 GMT
ENV LIBREOFFICE_SHA256_AMD64=8cd04a88396a9230264ff784ec89cc090cbfd0960c192483ba2b80fa53939416
# Tue, 03 Nov 2026 19:11:59 GMT
ENV LIBREOFFICE_SHA256_ARM64=d871da75fe387f9dab5acb7569d46d1098835c25b53695c89152f5194ad34411
# Tue, 03 Nov 2026 19:11:59 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.7/deb
# Tue, 03 Nov 2026 19:12:18 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Tue, 03 Nov 2026 19:12:18 GMT
ENV XWIKI_VERSION=18.9.0
# Tue, 03 Nov 2026 19:12:18 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.9.0
# Tue, 03 Nov 2026 19:12:18 GMT
ENV XWIKI_DOWNLOAD_SHA256=e15f79ad379cca52cdeb22035c2fd4d04aad8b18acefbe429e770943bde2c823
# Tue, 03 Nov 2026 19:12:40 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Tue, 03 Nov 2026 19:12:40 GMT
ENV POSTGRES_JDBC_VERSION=42.7.14
# Tue, 03 Nov 2026 19:12:40 GMT
ENV POSTGRES_JDBC_SHA256=73914527305a40cce504b0d3d90b23caf565136912d607ae8ae7c5895512332c
# Tue, 03 Nov 2026 19:12:40 GMT
ENV POSTGRES_JDBC_PREFIX=https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.14
# Tue, 03 Nov 2026 19:12:40 GMT
ENV POSTGRES_JDBC_ARTIFACT=postgresql-42.7.14.jar
# Tue, 03 Nov 2026 19:12:40 GMT
ENV POSTGRES_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.14.jar
# Tue, 03 Nov 2026 19:12:40 GMT
RUN set -eux;   curl $CURL_OPTIONS "${POSTGRES_JDBC_PREFIX}/${POSTGRES_JDBC_ARTIFACT}" -o $POSTGRES_JDBC_TARGET;   echo "$POSTGRES_JDBC_SHA256 *$POSTGRES_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Tue, 03 Nov 2026 19:12:40 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Tue, 03 Nov 2026 19:12:40 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Tue, 03 Nov 2026 19:12:40 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Tue, 03 Nov 2026 19:12:40 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Tue, 03 Nov 2026 19:12:40 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Tue, 03 Nov 2026 19:12:40 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 19:12:40 GMT
VOLUME [/usr/local/xwiki]
# Tue, 03 Nov 2026 19:12:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 19:12:40 GMT
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
	-	`sha256:2eeef1cee4370170f091305953881d14e08691bdbf058cd80ed016820e79c99d`  
		Last Modified: Tue, 03 Nov 2026 19:13:33 GMT  
		Size: 13.6 MB (13567929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c9282c235e4f7d041c862dbe0af91bd7cb5f7fc19e383e6e3a7394d0946d5c`  
		Last Modified: Tue, 03 Nov 2026 19:13:43 GMT  
		Size: 299.5 MB (299501388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c073bb23ce8e70b7a11b2987b88ff23114572a487453b95475df53988c5c39cf`  
		Last Modified: Tue, 03 Nov 2026 19:13:44 GMT  
		Size: 341.8 MB (341814206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f7757b092734a66a185a0ad6fb4620d9b5608a6e18fe4ace99bd745691e2a2`  
		Last Modified: Tue, 03 Nov 2026 19:13:33 GMT  
		Size: 1.1 MB (1142598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d507570489f3222a4f970dfcdee0ff474b9a57e8b75d4373bf787fcb6e5c30f`  
		Last Modified: Tue, 03 Nov 2026 19:13:34 GMT  
		Size: 1.8 KB (1840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116050658b0c193ccc756a3f387c46bee377f38edd4dabfff2aaba932c63ed1c`  
		Last Modified: Tue, 03 Nov 2026 19:13:35 GMT  
		Size: 2.6 KB (2555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79395755013148b6146410c843ab4be2d34655d365aae5ad6ff7b6cbf44cb1b6`  
		Last Modified: Tue, 03 Nov 2026 19:13:36 GMT  
		Size: 874.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea68db9bddf163cb48164a9262c3453000ad9b0e789a4d14fea097f1f73fab36`  
		Last Modified: Tue, 03 Nov 2026 19:13:36 GMT  
		Size: 2.4 KB (2437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d1e895b7ec7bb0779ef361cc365a5d72cb636631bbc54990c8ae90c22b47d3f`  
		Last Modified: Tue, 03 Nov 2026 19:13:37 GMT  
		Size: 11.4 KB (11408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eef06827b48446a1b67204e15a7c29528d77ab5c7afc77e63ed2b74bb4de128a`  
		Last Modified: Tue, 03 Nov 2026 19:13:38 GMT  
		Size: 4.3 KB (4253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:18-postgres-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:e54397643c4ec104b8e8fa9b2c7688e8161a9985e2b8e3a1c150836e607dae14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17577705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8027dc322d5993a4db5068cb12035e3c69de9c51f72ecc42e292dcbe966f8d1`

```dockerfile
```

-	Layers:
	-	`sha256:37181225462d03bd330b2cb499889dde6f6bf3f5d8d7d9d0700cea77560f274a`  
		Last Modified: Tue, 03 Nov 2026 19:13:34 GMT  
		Size: 17.5 MB (17509040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f640c08272a7a7b7fb8e1cc61b8848c3313de6621ea1fbf783f550480552fe4`  
		Last Modified: Tue, 03 Nov 2026 19:13:32 GMT  
		Size: 68.7 KB (68665 bytes)  
		MIME: application/vnd.in-toto+json
