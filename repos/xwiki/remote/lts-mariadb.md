## `xwiki:lts-mariadb`

```console
$ docker pull xwiki@sha256:4cb9fb08a2743e32307269d89e6b7f95d7e9023dd191fe5270c37553a3229dc5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:lts-mariadb` - linux; amd64

```console
$ docker pull xwiki@sha256:17c0acbf5b736fc26d07471ef63142a1534fcf0d0064b208a1c3042243f9d4a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.2 MB (638185713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f3d0dcf89421d135c8ddea94ce8f416c880cda6776c422bbcff29f3bc026a94`
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
# Thu, 02 Jul 2026 07:13:57 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Thu, 02 Jul 2026 07:13:57 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Thu, 02 Jul 2026 07:13:57 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Thu, 02 Jul 2026 07:13:57 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Thu, 02 Jul 2026 07:13:57 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Thu, 02 Jul 2026 07:13:57 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Thu, 02 Jul 2026 07:13:57 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps &&   rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 07:13:57 GMT
ENV XWIKI_VERSION=17.10.9
# Thu, 02 Jul 2026 07:13:57 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.9
# Thu, 02 Jul 2026 07:13:57 GMT
ENV XWIKI_DOWNLOAD_SHA256=b786a85a043cc673e26d887fd0ef34d2fda2f4a9ef4a362360814868ccf41e1f
# Thu, 02 Jul 2026 07:14:19 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Thu, 02 Jul 2026 07:14:19 GMT
ENV MARIADB_JDBC_VERSION=3.5.8
# Thu, 02 Jul 2026 07:14:19 GMT
ENV MARIADB_JDBC_SHA256=6127dc7858047b3d4482899139640b0e2ab2b8abdeb708cfb8c011117771cddf
# Thu, 02 Jul 2026 07:14:19 GMT
ENV MARIADB_JDBC_PREFIX=https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/3.5.8
# Thu, 02 Jul 2026 07:14:19 GMT
ENV MARIADB_JDBC_ARTIFACT=mariadb-java-client-3.5.8.jar
# Thu, 02 Jul 2026 07:14:19 GMT
ENV MARIADB_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mariadb-java-client-3.5.8.jar
# Thu, 02 Jul 2026 07:14:19 GMT
RUN curl -fSL "${MARIADB_JDBC_PREFIX}/${MARIADB_JDBC_ARTIFACT}" -o $MARIADB_JDBC_TARGET &&   echo "$MARIADB_JDBC_SHA256 $MARIADB_JDBC_TARGET" | sha256sum -c - # buildkit
# Thu, 02 Jul 2026 07:14:19 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Thu, 02 Jul 2026 07:14:19 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Thu, 02 Jul 2026 07:14:19 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Thu, 02 Jul 2026 07:14:19 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 07:14:19 GMT
VOLUME [/usr/local/xwiki]
# Thu, 02 Jul 2026 07:14:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 07:14:19 GMT
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
	-	`sha256:c1463ae7caad70a659d1c29fa0de769e7d17efd160be03e936ad8ca7d97758a1`  
		Last Modified: Thu, 02 Jul 2026 07:15:02 GMT  
		Size: 191.2 MB (191222674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2bd168df2fa97c6ad439b1d15145b1ba87c39540985c4258835a11698d87b8a`  
		Last Modified: Thu, 02 Jul 2026 07:15:05 GMT  
		Size: 331.9 MB (331853463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1eed93eb219e4e5b99ad443ffadce932ff57817e3e31315bd864ddf9f1f2cee`  
		Last Modified: Thu, 02 Jul 2026 07:14:55 GMT  
		Size: 712.4 KB (712444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60b911a95bb3d3b059f34d23a1f9428a957f8b7dd5475017963b4b99ec977e0b`  
		Last Modified: Thu, 02 Jul 2026 07:14:55 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:451ee6a2cf9aad33f9774482813e374f17a6aa51d04f8ead7e5226d32268f57d`  
		Last Modified: Thu, 02 Jul 2026 07:14:57 GMT  
		Size: 2.3 KB (2309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58c6e9a6321b3dc5b561acf04e62000767b73f5a7c25a6ede49012740fb94354`  
		Last Modified: Thu, 02 Jul 2026 07:14:57 GMT  
		Size: 10.8 KB (10759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80dbe6580dd6178a53fdf9a238afeaf07dae01ecaf08ed0b1b1509a928e7b5da`  
		Last Modified: Thu, 02 Jul 2026 07:14:58 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:lts-mariadb` - unknown; unknown

```console
$ docker pull xwiki@sha256:4f2023ab68f2dafda8c1c9e6ce4eaebc9ec89280c000e4229e1205c22ce8cc37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9207352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a36b19e11ec577dea3e4c215d5541c6ea35bd7481de90a2b890e66323612f84`

```dockerfile
```

-	Layers:
	-	`sha256:532cd5dd55db235b200ad11aeb0da3410ac540ad32f4c37dd232d98b2464ae41`  
		Last Modified: Thu, 02 Jul 2026 07:14:55 GMT  
		Size: 9.2 MB (9166898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a11222347f215355dc55fa4fe1e93cd968eb39d296c23afccfbeff36abff6fa1`  
		Last Modified: Thu, 02 Jul 2026 07:14:55 GMT  
		Size: 40.5 KB (40454 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:lts-mariadb` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:f099c877d023d5ee4ef5661acfb69a248ac33d3abdbf1dc07bdc2a98031c62b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **634.2 MB (634191446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceba16b529898d0b92d9d8cbad5471631b12db2efdd85e1f2851ec8d6fa9abcf`
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
# Thu, 02 Jul 2026 07:13:49 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Thu, 02 Jul 2026 07:13:49 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Thu, 02 Jul 2026 07:13:49 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Thu, 02 Jul 2026 07:13:49 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Thu, 02 Jul 2026 07:13:49 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Thu, 02 Jul 2026 07:13:49 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Thu, 02 Jul 2026 07:13:49 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps &&   rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 07:13:49 GMT
ENV XWIKI_VERSION=17.10.9
# Thu, 02 Jul 2026 07:13:49 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.9
# Thu, 02 Jul 2026 07:13:49 GMT
ENV XWIKI_DOWNLOAD_SHA256=b786a85a043cc673e26d887fd0ef34d2fda2f4a9ef4a362360814868ccf41e1f
# Thu, 02 Jul 2026 07:14:10 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Thu, 02 Jul 2026 07:14:10 GMT
ENV MARIADB_JDBC_VERSION=3.5.8
# Thu, 02 Jul 2026 07:14:10 GMT
ENV MARIADB_JDBC_SHA256=6127dc7858047b3d4482899139640b0e2ab2b8abdeb708cfb8c011117771cddf
# Thu, 02 Jul 2026 07:14:10 GMT
ENV MARIADB_JDBC_PREFIX=https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/3.5.8
# Thu, 02 Jul 2026 07:14:10 GMT
ENV MARIADB_JDBC_ARTIFACT=mariadb-java-client-3.5.8.jar
# Thu, 02 Jul 2026 07:14:10 GMT
ENV MARIADB_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mariadb-java-client-3.5.8.jar
# Thu, 02 Jul 2026 07:14:10 GMT
RUN curl -fSL "${MARIADB_JDBC_PREFIX}/${MARIADB_JDBC_ARTIFACT}" -o $MARIADB_JDBC_TARGET &&   echo "$MARIADB_JDBC_SHA256 $MARIADB_JDBC_TARGET" | sha256sum -c - # buildkit
# Thu, 02 Jul 2026 07:14:10 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Thu, 02 Jul 2026 07:14:10 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Thu, 02 Jul 2026 07:14:10 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Thu, 02 Jul 2026 07:14:10 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 07:14:10 GMT
VOLUME [/usr/local/xwiki]
# Thu, 02 Jul 2026 07:14:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 07:14:10 GMT
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
	-	`sha256:5c185909739e616b6eb0cf4737087a89459ff3d7c7ab6b1e2148f8642515a052`  
		Last Modified: Thu, 02 Jul 2026 07:14:50 GMT  
		Size: 188.9 MB (188878069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf9466b1cdab45822ac208ed15cbe7aefd32e8bec4cb846ba23f6f174071405`  
		Last Modified: Thu, 02 Jul 2026 07:14:53 GMT  
		Size: 331.9 MB (331853460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7c4680b434f3315fe288d406e5c1f9be439459932699cca477d4a859659824`  
		Last Modified: Thu, 02 Jul 2026 07:14:43 GMT  
		Size: 712.4 KB (712444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:888cd5539454c1e6de75ef142b3874f4f639ceecc99fd839524fed18a82a1a78`  
		Last Modified: Thu, 02 Jul 2026 07:14:43 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7579682f737981b6b3524eb74097b5ccf9c6100390fb187cf81f12a6911aa88`  
		Last Modified: Thu, 02 Jul 2026 07:14:44 GMT  
		Size: 2.3 KB (2310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7dc0ccba1e4d0da4fde006942c1d6bbb55ffd11ba5425cc580848cb1bc6c8ff`  
		Last Modified: Thu, 02 Jul 2026 07:14:45 GMT  
		Size: 10.8 KB (10760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762cb2e470123fac0a375d5f3b86a5c8c2764b694620dc6709f03a9cadd7aad7`  
		Last Modified: Thu, 02 Jul 2026 07:14:46 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:lts-mariadb` - unknown; unknown

```console
$ docker pull xwiki@sha256:1d958f59b68e1e9bdc62a9b273bf7195247dafdd93f1e0aa875631faf9e0e184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9208253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6c8a165d244f08d518fae8b03c5245d49875087c8ea41795eb208be727e160b`

```dockerfile
```

-	Layers:
	-	`sha256:f5b1d9a61b50081dad358aaf7e2fe8c1ca1d4e46b0f9a07a3fe20a2945b21508`  
		Last Modified: Thu, 02 Jul 2026 07:14:43 GMT  
		Size: 9.2 MB (9167639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c91a34a33e4208198b6aa73e5cd6728081492d1ff5b6532c700fdb0a0bd335b`  
		Last Modified: Thu, 02 Jul 2026 07:14:43 GMT  
		Size: 40.6 KB (40614 bytes)  
		MIME: application/vnd.in-toto+json
