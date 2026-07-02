## `xwiki:stable-mariadb-tomcat`

```console
$ docker pull xwiki@sha256:b7d7ee5cbcd0808107d681da92f1108d6bc8fbe214021bd5d5a2505e445ff3d5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:stable-mariadb-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:2da85a0bde51da6731d8490172fc07324e9de1ba425ab3bb2a3cf060ce2166d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **651.3 MB (651265712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43b65d70174924d22de3247d8745bfcaa3ad3c5320e46aaa498fd1de875a2622`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:21:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:21:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:21:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:21:37 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:21:37 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 02 Jul 2026 02:21:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='f3d8843c5a1b77ded3353e0df85d803d84b9faa5ece20673564e7c47fc4591d9';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:21:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:21:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:21:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 06:27:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 02 Jul 2026 06:27:49 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:27:49 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 02 Jul 2026 06:27:49 GMT
WORKDIR /usr/local/tomcat
# Thu, 02 Jul 2026 06:27:49 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 02 Jul 2026 06:27:49 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 02 Jul 2026 06:27:49 GMT
ENV TOMCAT_MAJOR=10
# Thu, 02 Jul 2026 06:27:49 GMT
ENV TOMCAT_VERSION=10.1.56
# Thu, 02 Jul 2026 06:27:49 GMT
ENV TOMCAT_SHA512=8fae99273615eb9d7fbe7ed80abda0ca27647a80f6fcfda98459c5b412d5ef555740b4c4d4af5afae2eb150f1f5bede21ab007ab8cc1f407f508d8908a81b7cc
# Thu, 02 Jul 2026 06:27:49 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Thu, 02 Jul 2026 06:27:53 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:27:53 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Thu, 02 Jul 2026 06:27:53 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 02 Jul 2026 06:27:53 GMT
ENTRYPOINT []
# Thu, 02 Jul 2026 06:27:53 GMT
CMD ["catalina.sh" "run"]
# Thu, 02 Jul 2026 07:12:42 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Thu, 02 Jul 2026 07:12:42 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Thu, 02 Jul 2026 07:12:42 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Thu, 02 Jul 2026 07:12:42 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Thu, 02 Jul 2026 07:12:42 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Thu, 02 Jul 2026 07:12:42 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Thu, 02 Jul 2026 07:12:42 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps &&   rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 07:12:42 GMT
ENV XWIKI_VERSION=18.5.0
# Thu, 02 Jul 2026 07:12:42 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.5.0
# Thu, 02 Jul 2026 07:12:42 GMT
ENV XWIKI_DOWNLOAD_SHA256=649a5c53bc7ca02d80b3a3dcd1c03a7534ff868b6fe4f6eafa198602bc31c6df
# Thu, 02 Jul 2026 07:13:05 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Thu, 02 Jul 2026 07:13:05 GMT
ENV MARIADB_JDBC_VERSION=3.5.9
# Thu, 02 Jul 2026 07:13:05 GMT
ENV MARIADB_JDBC_SHA256=11e3bb5bbf8ef0e806ae4d6c5d5033fedf7262cc777f0190bde8a2f3c8e6bd8d
# Thu, 02 Jul 2026 07:13:05 GMT
ENV MARIADB_JDBC_PREFIX=https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/3.5.9
# Thu, 02 Jul 2026 07:13:05 GMT
ENV MARIADB_JDBC_ARTIFACT=mariadb-java-client-3.5.9.jar
# Thu, 02 Jul 2026 07:13:05 GMT
ENV MARIADB_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mariadb-java-client-3.5.9.jar
# Thu, 02 Jul 2026 07:13:05 GMT
RUN curl -fSL "${MARIADB_JDBC_PREFIX}/${MARIADB_JDBC_ARTIFACT}" -o $MARIADB_JDBC_TARGET &&   echo "$MARIADB_JDBC_SHA256 $MARIADB_JDBC_TARGET" | sha256sum -c - # buildkit
# Thu, 02 Jul 2026 07:13:05 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Thu, 02 Jul 2026 07:13:05 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Thu, 02 Jul 2026 07:13:05 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Thu, 02 Jul 2026 07:13:05 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 07:13:05 GMT
VOLUME [/usr/local/xwiki]
# Thu, 02 Jul 2026 07:13:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 07:13:05 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4659a3f0a10cbdc0c83229ad68d274d301233e350f6ac37acd8b32d57494d2b`  
		Last Modified: Thu, 02 Jul 2026 02:21:53 GMT  
		Size: 16.9 MB (16944548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731837b1a3884014378c504ce2435a1a4b03c6b5447f28ad0ef87ffa59a3b579`  
		Last Modified: Thu, 02 Jul 2026 02:21:55 GMT  
		Size: 53.1 MB (53123202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55a03f4df9eb3b2b6dde23a3ba7c33f29f915d9813d28f742e9e703b3491754e`  
		Last Modified: Thu, 02 Jul 2026 02:21:52 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622a4f311026ef54c349d9581ea611b6840dde68b9b03b8dacfa0ba946cacef5`  
		Last Modified: Thu, 02 Jul 2026 02:21:53 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fcb3621e7688ece4d7fa78b2bc96325333b2998b23de14abb66d40203ef6ecb`  
		Last Modified: Thu, 02 Jul 2026 06:28:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fdad9889c34f25be7cb9c44f61903df43c4eaf8489514d5e6ee1a10ec9cc781`  
		Last Modified: Thu, 02 Jul 2026 06:28:03 GMT  
		Size: 14.3 MB (14349339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeee98c16e8b12dcfffa65764b36ac2f23d856e18af9e1527f9c651aebaf1602`  
		Last Modified: Thu, 02 Jul 2026 06:28:02 GMT  
		Size: 224.9 KB (224893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c046bbb5c4e51e7725b9a429179cf0fad1405f02e371cc6e05e926af0d2ec8`  
		Last Modified: Thu, 02 Jul 2026 07:13:46 GMT  
		Size: 191.2 MB (191222909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e766ffb25a18273565f8bb1328d1468fa84b3230d99280058322be407bbdab9`  
		Last Modified: Thu, 02 Jul 2026 07:13:49 GMT  
		Size: 344.9 MB (344916534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3f7500e5ec8158159bf587a3f6f5fc2848b659d4a39008f3fb5931b9a2aa77`  
		Last Modified: Thu, 02 Jul 2026 07:13:38 GMT  
		Size: 728.9 KB (728936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6fd95fba5f931778e6e0fabdea8f7610ea4a71efb623e72ddc8d4ee80e77ec`  
		Last Modified: Thu, 02 Jul 2026 07:13:38 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d78c8b457bd7956c931ba27a357b46c348b7a67c5bcefe4ee82607928a409d`  
		Last Modified: Thu, 02 Jul 2026 07:13:40 GMT  
		Size: 2.3 KB (2304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac58718ded4294345bc078178b1e2ba9670d20bcfe239a5e6043c859e88fb7f`  
		Last Modified: Thu, 02 Jul 2026 07:13:40 GMT  
		Size: 11.0 KB (10974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859644f58c54fb2ac964673130c743c363ed3bec4929fe7846e8d05a0af122ed`  
		Last Modified: Thu, 02 Jul 2026 07:13:41 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:stable-mariadb-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:521c891013f81e0df7aeddf84fc02d9beafbd360281117c3d13704387699a271
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9224828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2cd6b4c3f53debc3aa42868e51a70aed14e631e10d924d73419fa55af76ac68`

```dockerfile
```

-	Layers:
	-	`sha256:fb2e5e67ba4c71afcac16ea4ba98070b8ebd89e5baca7ab94b235192532d522a`  
		Last Modified: Thu, 02 Jul 2026 07:13:38 GMT  
		Size: 9.2 MB (9184060 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb0bded6d1ad7dd1eb0d1d0762d74ac56e7ea97066c54f2357584124804651b3`  
		Last Modified: Thu, 02 Jul 2026 07:13:38 GMT  
		Size: 40.8 KB (40768 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:stable-mariadb-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:9052235b6f2acf67254b7dbe5cd77e30b509707cfc2708268e0427fbd84f16fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.3 MB (647271099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17131060f8af112c43088a361aab22d0def858d23f5f41230b9e4d1af0cef4e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:20:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:20:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:20:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:20:35 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:20:35 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 02 Jul 2026 02:20:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='f3d8843c5a1b77ded3353e0df85d803d84b9faa5ece20673564e7c47fc4591d9';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:20:40 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:20:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:20:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 06:25:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 02 Jul 2026 06:25:36 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:25:36 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 02 Jul 2026 06:25:36 GMT
WORKDIR /usr/local/tomcat
# Thu, 02 Jul 2026 06:25:36 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 02 Jul 2026 06:25:36 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 02 Jul 2026 06:25:36 GMT
ENV TOMCAT_MAJOR=10
# Thu, 02 Jul 2026 06:25:36 GMT
ENV TOMCAT_VERSION=10.1.56
# Thu, 02 Jul 2026 06:25:36 GMT
ENV TOMCAT_SHA512=8fae99273615eb9d7fbe7ed80abda0ca27647a80f6fcfda98459c5b412d5ef555740b4c4d4af5afae2eb150f1f5bede21ab007ab8cc1f407f508d8908a81b7cc
# Thu, 02 Jul 2026 06:25:36 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Thu, 02 Jul 2026 06:25:41 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:25:41 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Thu, 02 Jul 2026 06:25:41 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 02 Jul 2026 06:25:41 GMT
ENTRYPOINT []
# Thu, 02 Jul 2026 06:25:41 GMT
CMD ["catalina.sh" "run"]
# Thu, 02 Jul 2026 07:12:51 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Thu, 02 Jul 2026 07:12:51 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Thu, 02 Jul 2026 07:12:51 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Thu, 02 Jul 2026 07:12:51 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Thu, 02 Jul 2026 07:12:51 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Thu, 02 Jul 2026 07:12:51 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Thu, 02 Jul 2026 07:12:51 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps &&   rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 07:12:51 GMT
ENV XWIKI_VERSION=18.5.0
# Thu, 02 Jul 2026 07:12:51 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.5.0
# Thu, 02 Jul 2026 07:12:51 GMT
ENV XWIKI_DOWNLOAD_SHA256=649a5c53bc7ca02d80b3a3dcd1c03a7534ff868b6fe4f6eafa198602bc31c6df
# Thu, 02 Jul 2026 07:13:14 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Thu, 02 Jul 2026 07:13:14 GMT
ENV MARIADB_JDBC_VERSION=3.5.9
# Thu, 02 Jul 2026 07:13:14 GMT
ENV MARIADB_JDBC_SHA256=11e3bb5bbf8ef0e806ae4d6c5d5033fedf7262cc777f0190bde8a2f3c8e6bd8d
# Thu, 02 Jul 2026 07:13:14 GMT
ENV MARIADB_JDBC_PREFIX=https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/3.5.9
# Thu, 02 Jul 2026 07:13:14 GMT
ENV MARIADB_JDBC_ARTIFACT=mariadb-java-client-3.5.9.jar
# Thu, 02 Jul 2026 07:13:14 GMT
ENV MARIADB_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mariadb-java-client-3.5.9.jar
# Thu, 02 Jul 2026 07:13:14 GMT
RUN curl -fSL "${MARIADB_JDBC_PREFIX}/${MARIADB_JDBC_ARTIFACT}" -o $MARIADB_JDBC_TARGET &&   echo "$MARIADB_JDBC_SHA256 $MARIADB_JDBC_TARGET" | sha256sum -c - # buildkit
# Thu, 02 Jul 2026 07:13:14 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Thu, 02 Jul 2026 07:13:14 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Thu, 02 Jul 2026 07:13:14 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Thu, 02 Jul 2026 07:13:14 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 07:13:14 GMT
VOLUME [/usr/local/xwiki]
# Thu, 02 Jul 2026 07:13:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 07:13:14 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4475bb8ddba9ec9625d934465a03fa921efbea1fd8aff40b3605d9d85b5028e`  
		Last Modified: Thu, 02 Jul 2026 02:20:54 GMT  
		Size: 17.0 MB (16951457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bfa8304becf1bb05f54254c011a194caa5e83fb46ca04101ddf15c00d4142a1`  
		Last Modified: Thu, 02 Jul 2026 02:20:55 GMT  
		Size: 52.3 MB (52314891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1747af856ddb4f793dc019f23a0e80e87ad78ed3829e6e3a4f490dd2938f1643`  
		Last Modified: Thu, 02 Jul 2026 02:20:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed507c913156f1d9395acbd5915eb0a2bb85af7b85502500780e7184e0ded549`  
		Last Modified: Thu, 02 Jul 2026 02:20:53 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b55382d02cb2043ec94ca1d521f4858dd31de6b28b921853a10c28fa39b319f6`  
		Last Modified: Thu, 02 Jul 2026 06:25:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e13ccf7cb66a2f1ec3bfc90b96c672aa19cc640e81c287dc6e226fb3739aa26b`  
		Last Modified: Thu, 02 Jul 2026 06:25:50 GMT  
		Size: 14.4 MB (14352063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dedead43297b3cdf1d1a7dd9f73e813bc75c8aa8db306961bc333e1db48e5187`  
		Last Modified: Thu, 02 Jul 2026 06:25:50 GMT  
		Size: 225.3 KB (225332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f6d24caaf1864fb584ba5745233c2c333ec50df65aa1da8a462b01ca9b2922`  
		Last Modified: Thu, 02 Jul 2026 07:13:56 GMT  
		Size: 188.9 MB (188878029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d85d8bb427c30ee72a9343b011b09eb01640e94f0a73e95dfd2b7424eaa1c98`  
		Last Modified: Thu, 02 Jul 2026 07:14:00 GMT  
		Size: 344.9 MB (344916432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07877cc77ce87347156e07e2dee4d82b863a35dfa565b052f3cc5d6882c3d365`  
		Last Modified: Thu, 02 Jul 2026 07:13:48 GMT  
		Size: 728.9 KB (728941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb2f4d82f530148f3ef01bc64b405213db38c9ff98f2b475ffb79e28f5bd0800`  
		Last Modified: Thu, 02 Jul 2026 07:13:48 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c25b784544dff0f9e12df7e05bc473df84b532af2847d4cf3cf707d17fe5573`  
		Last Modified: Thu, 02 Jul 2026 07:13:49 GMT  
		Size: 2.3 KB (2309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f47ea018629b1d97081b3a7ce22f8e5bb06b17b07045009c7b12235d5c2b5b8d`  
		Last Modified: Thu, 02 Jul 2026 07:13:50 GMT  
		Size: 11.0 KB (10979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73392b17282ea75092652b7c05cfc4f1fb06939bc79661492e122a19595644bb`  
		Last Modified: Thu, 02 Jul 2026 07:13:51 GMT  
		Size: 2.5 KB (2499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:stable-mariadb-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:e9bfe1065091f7d1a2379c3af81b1b32bcc68bee6551e0e90334f04605a38efe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9225754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2287bbcb4ffdf67573f6b19b3de37bbcdb88e712102bbec7727fa683f3e56329`

```dockerfile
```

-	Layers:
	-	`sha256:7eaf97cc954884d7965abfb312b29afd58b2dc80e82747a7609c8f0373f1b0d5`  
		Last Modified: Thu, 02 Jul 2026 07:13:48 GMT  
		Size: 9.2 MB (9184813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89efa3adcb0da5dc69167dd26809135a2a4ca2b914d9593b772e3135c3061781`  
		Last Modified: Thu, 02 Jul 2026 07:13:48 GMT  
		Size: 40.9 KB (40941 bytes)  
		MIME: application/vnd.in-toto+json
