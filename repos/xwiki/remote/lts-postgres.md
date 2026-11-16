## `xwiki:lts-postgres`

```console
$ docker pull xwiki@sha256:0136a2b69773edea1c24876103a568432a7f9c142efc8fb55a187f1b002d3dd7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:lts-postgres` - linux; amd64

```console
$ docker pull xwiki@sha256:87745d805b2722cecd204bb0b4f43ab528b808780322986908aa4b63ceaea988
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **795.9 MB (795852239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4accbe8b2a8ca2236eee0be6d87f5faf2af5bac1d223002c2c499bb6953d08`
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
# Mon, 16 Nov 2026 21:45:57 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Mon, 16 Nov 2026 21:45:57 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Mon, 16 Nov 2026 21:45:57 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Mon, 16 Nov 2026 21:45:57 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Mon, 16 Nov 2026 21:45:57 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Mon, 16 Nov 2026 21:45:57 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Mon, 16 Nov 2026 21:45:57 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2-dev     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 21:45:57 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Mon, 16 Nov 2026 21:45:57 GMT
ENV LIBREOFFICE_VERSION=26.2.7
# Mon, 16 Nov 2026 21:45:57 GMT
ENV LIBREOFFICE_SHA256_AMD64=8cd04a88396a9230264ff784ec89cc090cbfd0960c192483ba2b80fa53939416
# Mon, 16 Nov 2026 21:45:57 GMT
ENV LIBREOFFICE_SHA256_ARM64=d871da75fe387f9dab5acb7569d46d1098835c25b53695c89152f5194ad34411
# Mon, 16 Nov 2026 21:45:57 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.7/deb
# Mon, 16 Nov 2026 21:46:16 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Mon, 16 Nov 2026 21:46:16 GMT
ENV XWIKI_VERSION=17.10.15
# Mon, 16 Nov 2026 21:46:16 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.15
# Mon, 16 Nov 2026 21:46:16 GMT
ENV XWIKI_DOWNLOAD_SHA256=d9d761d6ac4a86c8bb2733ea9a872ef54162ab1c528fb58ed5da0ccd304525b4
# Mon, 16 Nov 2026 21:46:36 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Mon, 16 Nov 2026 21:46:36 GMT
ENV POSTGRES_JDBC_VERSION=42.7.14
# Mon, 16 Nov 2026 21:46:36 GMT
ENV POSTGRES_JDBC_SHA256=73914527305a40cce504b0d3d90b23caf565136912d607ae8ae7c5895512332c
# Mon, 16 Nov 2026 21:46:36 GMT
ENV POSTGRES_JDBC_PREFIX=https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.14
# Mon, 16 Nov 2026 21:46:36 GMT
ENV POSTGRES_JDBC_ARTIFACT=postgresql-42.7.14.jar
# Mon, 16 Nov 2026 21:46:36 GMT
ENV POSTGRES_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.14.jar
# Mon, 16 Nov 2026 21:46:36 GMT
RUN set -eux;   curl $CURL_OPTIONS "${POSTGRES_JDBC_PREFIX}/${POSTGRES_JDBC_ARTIFACT}" -o $POSTGRES_JDBC_TARGET;   echo "$POSTGRES_JDBC_SHA256 *$POSTGRES_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Mon, 16 Nov 2026 21:46:37 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Mon, 16 Nov 2026 21:46:37 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Mon, 16 Nov 2026 21:46:37 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Mon, 16 Nov 2026 21:46:37 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Mon, 16 Nov 2026 21:46:37 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Mon, 16 Nov 2026 21:46:37 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:46:37 GMT
VOLUME [/usr/local/xwiki]
# Mon, 16 Nov 2026 21:46:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Nov 2026 21:46:37 GMT
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
	-	`sha256:0677b95e845698d824d26a572621aecfcef62ed90e79f3ee042df7930800d0bc`  
		Last Modified: Mon, 16 Nov 2026 21:47:26 GMT  
		Size: 14.7 MB (14712760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091e8ad3a39169a54e498af2eab6c10632cb79aaae438f49c4bc900046808c57`  
		Last Modified: Mon, 16 Nov 2026 21:47:36 GMT  
		Size: 305.1 MB (305110852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:299e15b0fb6cd54d3f9ae7306107da7d7ee6212a810fec0f893401297e230f2c`  
		Last Modified: Mon, 16 Nov 2026 21:47:37 GMT  
		Size: 331.6 MB (331606561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59f0b3d13510febf0d69e12b998eb95760af701db63c292318ec7e7bd409590`  
		Last Modified: Mon, 16 Nov 2026 21:47:26 GMT  
		Size: 1.1 MB (1142603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe022b3802caeefb6db8f6a60797500093d317a1b3596701c93c2ccb095cf2d2`  
		Last Modified: Mon, 16 Nov 2026 21:47:27 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbee0618823515623be297647980b899042ab3082aa3f973108951d23f65593`  
		Last Modified: Mon, 16 Nov 2026 21:47:28 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3c36328b373062964536648a54cfaaf3970503f457e72560d5687fb7203bfc5`  
		Last Modified: Mon, 16 Nov 2026 21:47:28 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6884ad67546dce10e7e189abfba506499cc308e7cdb1b4602d99edeb8a989ea2`  
		Last Modified: Mon, 16 Nov 2026 21:47:29 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76c4da7bdf5d91831f328e6a3a44ce6ea80adecb7c46f6fc6fdb28787f2966c8`  
		Last Modified: Mon, 16 Nov 2026 21:47:30 GMT  
		Size: 11.0 KB (11006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3704493dfc92cbb1239acc13afca7650d95aec433c87b89cb97535bf4d07a6a`  
		Last Modified: Mon, 16 Nov 2026 21:47:30 GMT  
		Size: 4.2 KB (4245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:lts-postgres` - unknown; unknown

```console
$ docker pull xwiki@sha256:d2898cdda8d002694a19040ccaa9963d37cd6f9baad47fbb34e42ef15bbdb038
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17576580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b0d253e3105e21f10aa6f4e0eec5ae675105d0331ea41786e080f319524cb05`

```dockerfile
```

-	Layers:
	-	`sha256:57619af1ef78f3df05157b2589ba467464d3e9c896d91de70b65d74fba184b4d`  
		Last Modified: Mon, 16 Nov 2026 21:47:26 GMT  
		Size: 17.5 MB (17508396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3fb576940d83997a63833ecb8d4273c05bacff044ec487abbb22005c87408e1`  
		Last Modified: Mon, 16 Nov 2026 21:47:25 GMT  
		Size: 68.2 KB (68184 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:lts-postgres` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:952f5ab700f34c2bbe90322967a232aee080166bef4d4cf7e02a15dc08b9d3a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **786.9 MB (786908911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed0afeb4c7d6a7841ce5d43190e43f7c0bbd4617f377975345a46ad27ae661e6`
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
# Mon, 16 Nov 2026 21:12:31 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Mon, 16 Nov 2026 21:12:31 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Mon, 16 Nov 2026 21:12:31 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Mon, 16 Nov 2026 21:12:31 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Mon, 16 Nov 2026 21:12:31 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Mon, 16 Nov 2026 21:12:31 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Mon, 16 Nov 2026 21:12:31 GMT
RUN set -eux;   apt-get update;   apt-get --no-install-recommends -y install     curl     unzip     procps     libxtst6     libxi6     libxinerama1     libdbus-glib-1-2     libcairo2     libcups2     libsm6     libx11-xcb1     libnss3     libxml2-dev     libxslt1.1;   rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 21:12:31 GMT
ENV CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30
# Mon, 16 Nov 2026 21:12:31 GMT
ENV LIBREOFFICE_VERSION=26.2.7
# Mon, 16 Nov 2026 21:12:31 GMT
ENV LIBREOFFICE_SHA256_AMD64=8cd04a88396a9230264ff784ec89cc090cbfd0960c192483ba2b80fa53939416
# Mon, 16 Nov 2026 21:12:31 GMT
ENV LIBREOFFICE_SHA256_ARM64=d871da75fe387f9dab5acb7569d46d1098835c25b53695c89152f5194ad34411
# Mon, 16 Nov 2026 21:12:31 GMT
ENV LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.7/deb
# Mon, 16 Nov 2026 21:12:57 GMT
RUN set -eux;   LO_ARCH="$(dpkg --print-architecture)";   case "$LO_ARCH" in     amd64) LO_ARCH_DIR=x86_64; LO_ARCH_FILE=x86-64; LO_SHA256=$LIBREOFFICE_SHA256_AMD64 ;;     arm64) LO_ARCH_DIR=aarch64; LO_ARCH_FILE=aarch64; LO_SHA256=$LIBREOFFICE_SHA256_ARM64 ;;     *) echo "Unsupported architecture [$LO_ARCH] for the LibreOffice installation" >&2; exit 1 ;;   esac;   LO_ARCHIVE="LibreOffice_${LIBREOFFICE_VERSION}_Linux_${LO_ARCH_FILE}_deb.tar.gz";   curl $CURL_OPTIONS "${LIBREOFFICE_URL_PREFIX}/${LO_ARCH_DIR}/${LO_ARCHIVE}" -o /tmp/libreoffice.tar.gz;   echo "$LO_SHA256 */tmp/libreoffice.tar.gz" | sha256sum --strict -c -;   mkdir -p /tmp/libreoffice;   tar -C /tmp/libreoffice -xf /tmp/libreoffice.tar.gz;   dpkg -i /tmp/libreoffice/LibreOffice_${LIBREOFFICE_VERSION}*_Linux_*_deb/DEBS/*.deb;   ln -fns "/opt/libreoffice${LIBREOFFICE_VERSION%.*}" /opt/libreoffice;   test -x /opt/libreoffice/program/soffice;   rm -rf /tmp/libreoffice /tmp/libreoffice.tar.gz # buildkit
# Mon, 16 Nov 2026 21:12:57 GMT
ENV XWIKI_VERSION=17.10.15
# Mon, 16 Nov 2026 21:12:57 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.15
# Mon, 16 Nov 2026 21:12:57 GMT
ENV XWIKI_DOWNLOAD_SHA256=d9d761d6ac4a86c8bb2733ea9a872ef54162ab1c528fb58ed5da0ccd304525b4
# Mon, 16 Nov 2026 21:13:17 GMT
RUN set -eux;   rm -rf /usr/local/tomcat/webapps/*;   mkdir -p /usr/local/tomcat/temp;   mkdir -p /usr/local/xwiki/data;   curl $CURL_OPTIONS "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war;   echo "$XWIKI_DOWNLOAD_SHA256 *xwiki.war" | sha256sum --strict -c -;   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war;   rm -f xwiki.war # buildkit
# Mon, 16 Nov 2026 21:13:17 GMT
ENV POSTGRES_JDBC_VERSION=42.7.14
# Mon, 16 Nov 2026 21:13:17 GMT
ENV POSTGRES_JDBC_SHA256=73914527305a40cce504b0d3d90b23caf565136912d607ae8ae7c5895512332c
# Mon, 16 Nov 2026 21:13:17 GMT
ENV POSTGRES_JDBC_PREFIX=https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.14
# Mon, 16 Nov 2026 21:13:17 GMT
ENV POSTGRES_JDBC_ARTIFACT=postgresql-42.7.14.jar
# Mon, 16 Nov 2026 21:13:17 GMT
ENV POSTGRES_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.14.jar
# Mon, 16 Nov 2026 21:13:17 GMT
RUN set -eux;   curl $CURL_OPTIONS "${POSTGRES_JDBC_PREFIX}/${POSTGRES_JDBC_ARTIFACT}" -o $POSTGRES_JDBC_TARGET;   echo "$POSTGRES_JDBC_SHA256 *$POSTGRES_JDBC_TARGET" | sha256sum --strict -c - # buildkit
# Mon, 16 Nov 2026 21:13:17 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Mon, 16 Nov 2026 21:13:17 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Mon, 16 Nov 2026 21:13:17 GMT
COPY xwiki/logback-filelog-appender.xml xwiki/logback-filelog-ref.xml /tmp/ # buildkit
# Mon, 16 Nov 2026 21:13:17 GMT
RUN set -eux;   LOGBACK=/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/logback.xml;   sed -e '/<configuration/r /tmp/logback-filelog-appender.xml'       -e '/ref="stdout"/r /tmp/logback-filelog-ref.xml'       "$LOGBACK" > "$LOGBACK.new";   mv "$LOGBACK.new" "$LOGBACK";   rm -f /tmp/logback-filelog-appender.xml /tmp/logback-filelog-ref.xml # buildkit
# Mon, 16 Nov 2026 21:13:17 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war</<id>org.xwiki.platform:xwiki-platform-distribution-docker</'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Mon, 16 Nov 2026 21:13:17 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:13:17 GMT
VOLUME [/usr/local/xwiki]
# Mon, 16 Nov 2026 21:13:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Nov 2026 21:13:17 GMT
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
	-	`sha256:4d6d0d4d2f9002677a403698e7cfa1a33993db03f4f9b291066d9a4914a54d2c`  
		Last Modified: Mon, 16 Nov 2026 21:14:12 GMT  
		Size: 13.6 MB (13586955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5207af3612ddda3c8892294aba6f07b1c41a1c3bd74242238d69e9966d8c785`  
		Last Modified: Mon, 16 Nov 2026 21:14:26 GMT  
		Size: 299.5 MB (299502078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9404ec873b2b4a2945d7028805a908fb86b0686433e19de6808290bcd422e2de`  
		Last Modified: Mon, 16 Nov 2026 21:14:27 GMT  
		Size: 331.6 MB (331606616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc876954083c88fe2751efcfe6f5b8e91cde4c25a1eac657f29c36ac41128cde`  
		Last Modified: Mon, 16 Nov 2026 21:14:11 GMT  
		Size: 1.1 MB (1142612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac15c183ff4321b06e9c9988d7c3730587d7a5f5dfe0893c3de8710eefc24c4`  
		Last Modified: Mon, 16 Nov 2026 21:14:13 GMT  
		Size: 1.8 KB (1838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a283b91b4d49c0d388249cbf5b8f82bce202570188b7fef2a3d29dd8a73db9`  
		Last Modified: Mon, 16 Nov 2026 21:14:14 GMT  
		Size: 2.6 KB (2555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89291b34e3ceaa9d8715deafb958a04b51590ddfb53849d24081d27d20118c32`  
		Last Modified: Mon, 16 Nov 2026 21:14:14 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d2103316176f9b96432a7953ef25fcf27df5782850ecfa47fd7dd480ead5011`  
		Last Modified: Mon, 16 Nov 2026 21:14:15 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7ae5203d1ce58d5b50b43d107ed232edaadbb5cb67dd6a05f08f6324d7b30fe`  
		Last Modified: Mon, 16 Nov 2026 21:14:16 GMT  
		Size: 11.0 KB (11010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dca3849d66d7b819243797b82a2df4596c94d2d34322c634fd2a49b242187ae`  
		Last Modified: Mon, 16 Nov 2026 21:14:17 GMT  
		Size: 4.3 KB (4253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:lts-postgres` - unknown; unknown

```console
$ docker pull xwiki@sha256:8d98a2a186a5fe09b3b7745502adb59cb81a8364e2d4809dadc41459350c37da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17548309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6767de73b5fe6b9ff19c2b41972b99275ac6d71a41746657aef61a547c153a0`

```dockerfile
```

-	Layers:
	-	`sha256:32fff0b89a75cd12617720786f338bd5c4d143e9dd5e07a111b741c10d3003f8`  
		Last Modified: Mon, 16 Nov 2026 21:14:12 GMT  
		Size: 17.5 MB (17479934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75fb1b6859627e9bd39d15fadfc727a3cb084000dcef3ed45a17a6b8c8659fa8`  
		Last Modified: Mon, 16 Nov 2026 21:14:11 GMT  
		Size: 68.4 KB (68375 bytes)  
		MIME: application/vnd.in-toto+json
