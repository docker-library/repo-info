## `xwiki:17-mariadb-tomcat`

```console
$ docker pull xwiki@sha256:9cb21ff0a9c893d6bff19bfaa4011c2c9e40bc3644cf3661cabefe4914b15003
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:17-mariadb-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:54296ef2be32647aa1397391a998a249ce63ca8c8426f26da1643cf80974f36d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.2 MB (638173693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91abfd85667755befdb650aa47dbff3fec734cffb0fcb66d492192fd18bf71da`
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
# Wed, 08 Jul 2026 17:00:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 Jul 2026 17:00:24 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Jul 2026 17:00:24 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 08 Jul 2026 17:00:27 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 Jul 2026 17:00:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 Jul 2026 17:00:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 Jul 2026 17:00:27 GMT
ENV TOMCAT_MAJOR=10
# Wed, 08 Jul 2026 17:00:27 GMT
ENV TOMCAT_VERSION=10.1.57
# Wed, 08 Jul 2026 17:00:27 GMT
ENV TOMCAT_SHA512=2fa1866ec647d4222b07ea937a4cc266adee219a1a8870107e72fc2349248dd1e32b157fa18108451f4c6e3b162f0fdfbdd11dd7855d4e49a2f0f609004a77f3
# Wed, 08 Jul 2026 17:00:27 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 08 Jul 2026 17:00:33 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 08 Jul 2026 17:00:34 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 08 Jul 2026 17:00:34 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 08 Jul 2026 17:00:34 GMT
ENTRYPOINT []
# Wed, 08 Jul 2026 17:00:34 GMT
CMD ["catalina.sh" "run"]
# Wed, 08 Jul 2026 17:03:17 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 08 Jul 2026 17:03:17 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 08 Jul 2026 17:03:17 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 08 Jul 2026 17:03:17 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 08 Jul 2026 17:03:17 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 08 Jul 2026 17:03:17 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 08 Jul 2026 17:03:17 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps &&   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 08 Jul 2026 17:03:17 GMT
ENV XWIKI_VERSION=17.10.9
# Wed, 08 Jul 2026 17:03:17 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.9
# Wed, 08 Jul 2026 17:03:17 GMT
ENV XWIKI_DOWNLOAD_SHA256=b786a85a043cc673e26d887fd0ef34d2fda2f4a9ef4a362360814868ccf41e1f
# Wed, 08 Jul 2026 17:03:37 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Wed, 08 Jul 2026 17:03:37 GMT
ENV MARIADB_JDBC_VERSION=3.5.8
# Wed, 08 Jul 2026 17:03:37 GMT
ENV MARIADB_JDBC_SHA256=6127dc7858047b3d4482899139640b0e2ab2b8abdeb708cfb8c011117771cddf
# Wed, 08 Jul 2026 17:03:37 GMT
ENV MARIADB_JDBC_PREFIX=https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/3.5.8
# Wed, 08 Jul 2026 17:03:37 GMT
ENV MARIADB_JDBC_ARTIFACT=mariadb-java-client-3.5.8.jar
# Wed, 08 Jul 2026 17:03:37 GMT
ENV MARIADB_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mariadb-java-client-3.5.8.jar
# Wed, 08 Jul 2026 17:03:37 GMT
RUN curl -fSL "${MARIADB_JDBC_PREFIX}/${MARIADB_JDBC_ARTIFACT}" -o $MARIADB_JDBC_TARGET &&   echo "$MARIADB_JDBC_SHA256 $MARIADB_JDBC_TARGET" | sha256sum -c - # buildkit
# Wed, 08 Jul 2026 17:03:37 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 08 Jul 2026 17:03:37 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 08 Jul 2026 17:03:38 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 08 Jul 2026 17:03:38 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 08 Jul 2026 17:03:38 GMT
VOLUME [/usr/local/xwiki]
# Wed, 08 Jul 2026 17:03:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 17:03:38 GMT
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
	-	`sha256:e40f61753caaa2c108c202b18bd4dcf4c99613857ca87544414f0d1df5104af9`  
		Last Modified: Wed, 08 Jul 2026 17:00:42 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21f3ad1c663d7f626047f5e77adf0f59a655bf8d8081672007f787ead585626e`  
		Last Modified: Wed, 08 Jul 2026 17:00:43 GMT  
		Size: 14.4 MB (14359697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f26b28f32ce7c9cb2248170d39dec19ac47dee72df4b84032c20ffb684153215`  
		Last Modified: Wed, 08 Jul 2026 17:00:42 GMT  
		Size: 225.0 KB (224951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bfcbc88255a87e71b15462e184b4187f59882b9d2d60211090afd60fb847267`  
		Last Modified: Wed, 08 Jul 2026 17:04:17 GMT  
		Size: 191.2 MB (191200136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3249fc9ba9cfbe34ed1428c1434b5f11f869874bb4e2d14b560a83c17447b3`  
		Last Modified: Wed, 08 Jul 2026 17:04:20 GMT  
		Size: 331.9 MB (331853565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a65610e05dd51d6eeaf2489caf3d1b5d1188df0b52396392bb2ac17cd95768f`  
		Last Modified: Wed, 08 Jul 2026 17:04:08 GMT  
		Size: 712.4 KB (712446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da960469aa4244044b145a8286b8d7bb313790d396eb015433d7539b9263a9d0`  
		Last Modified: Wed, 08 Jul 2026 17:04:08 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c0b754af040754e272e9bcb37770a8b4c571e84be36baa918edb7794d2fcf8`  
		Last Modified: Wed, 08 Jul 2026 17:04:10 GMT  
		Size: 2.3 KB (2308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcc163bb77ef72b3f309ae005ea7ff723520aca4a2e4fc14a0a198575f1304af`  
		Last Modified: Wed, 08 Jul 2026 17:04:09 GMT  
		Size: 10.8 KB (10758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f28914d512226aa77472a5a2fe1ec2a2a1d6a661de7d3a01930e201bcb8f3b45`  
		Last Modified: Wed, 08 Jul 2026 17:04:11 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:17-mariadb-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:08ab7b5e2d9b62b193c76e2f0ec8725ce252311abedc7f918fb286373e7676aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9205915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0de76f307f29fd242411eb60a71de7ec64b357696e0c2769835efeb4dcdb79f0`

```dockerfile
```

-	Layers:
	-	`sha256:912f6b26ccf64ef6da90627b9a9003ebe1fcf4fe7aa4b28634c3d4e74d951131`  
		Last Modified: Wed, 08 Jul 2026 17:04:08 GMT  
		Size: 9.2 MB (9165462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a1adc224d5989c49a8e4a4c8cdfe9a8b39c0747d3d9725420bedad8affa8276`  
		Last Modified: Wed, 08 Jul 2026 17:04:08 GMT  
		Size: 40.5 KB (40453 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:17-mariadb-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:fd11d9e12efffc0b587a87efc8a7242dadb914d3e47c2fea329993c347030186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **634.2 MB (634200968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af14c542fb97e6790850d9fb77295bbb9225bcf10204c50a656b6d00e992e736`
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
# Wed, 08 Jul 2026 17:50:19 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 Jul 2026 17:50:19 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Jul 2026 17:50:19 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 08 Jul 2026 17:50:19 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 Jul 2026 17:50:19 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 Jul 2026 17:50:19 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 Jul 2026 17:50:19 GMT
ENV TOMCAT_MAJOR=10
# Wed, 08 Jul 2026 17:50:19 GMT
ENV TOMCAT_VERSION=10.1.57
# Wed, 08 Jul 2026 17:50:19 GMT
ENV TOMCAT_SHA512=2fa1866ec647d4222b07ea937a4cc266adee219a1a8870107e72fc2349248dd1e32b157fa18108451f4c6e3b162f0fdfbdd11dd7855d4e49a2f0f609004a77f3
# Wed, 08 Jul 2026 17:50:19 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 08 Jul 2026 17:50:27 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 08 Jul 2026 17:50:28 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 08 Jul 2026 17:50:28 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 08 Jul 2026 17:50:28 GMT
ENTRYPOINT []
# Wed, 08 Jul 2026 17:50:28 GMT
CMD ["catalina.sh" "run"]
# Wed, 08 Jul 2026 18:11:44 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 08 Jul 2026 18:11:44 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 08 Jul 2026 18:11:44 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 08 Jul 2026 18:11:44 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 08 Jul 2026 18:11:44 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 08 Jul 2026 18:11:44 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 08 Jul 2026 18:11:44 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps &&   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 08 Jul 2026 18:11:44 GMT
ENV XWIKI_VERSION=17.10.9
# Wed, 08 Jul 2026 18:11:44 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.9
# Wed, 08 Jul 2026 18:11:44 GMT
ENV XWIKI_DOWNLOAD_SHA256=b786a85a043cc673e26d887fd0ef34d2fda2f4a9ef4a362360814868ccf41e1f
# Wed, 08 Jul 2026 18:13:19 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Wed, 08 Jul 2026 18:13:19 GMT
ENV MARIADB_JDBC_VERSION=3.5.8
# Wed, 08 Jul 2026 18:13:19 GMT
ENV MARIADB_JDBC_SHA256=6127dc7858047b3d4482899139640b0e2ab2b8abdeb708cfb8c011117771cddf
# Wed, 08 Jul 2026 18:13:19 GMT
ENV MARIADB_JDBC_PREFIX=https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/3.5.8
# Wed, 08 Jul 2026 18:13:19 GMT
ENV MARIADB_JDBC_ARTIFACT=mariadb-java-client-3.5.8.jar
# Wed, 08 Jul 2026 18:13:19 GMT
ENV MARIADB_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mariadb-java-client-3.5.8.jar
# Wed, 08 Jul 2026 18:13:19 GMT
RUN curl -fSL "${MARIADB_JDBC_PREFIX}/${MARIADB_JDBC_ARTIFACT}" -o $MARIADB_JDBC_TARGET &&   echo "$MARIADB_JDBC_SHA256 $MARIADB_JDBC_TARGET" | sha256sum -c - # buildkit
# Wed, 08 Jul 2026 18:13:19 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 08 Jul 2026 18:13:19 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 08 Jul 2026 18:13:19 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 08 Jul 2026 18:13:19 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 08 Jul 2026 18:13:19 GMT
VOLUME [/usr/local/xwiki]
# Wed, 08 Jul 2026 18:13:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 18:13:19 GMT
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
	-	`sha256:3d20e0c998719873f4ac3ea25d4db5da762ec30c90dd47b23a8f2b12429f8cad`  
		Last Modified: Wed, 08 Jul 2026 17:50:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9304357abc0a967a92713e7d60d0fafd20de1f4ec1ba8e3fab770240d0109429`  
		Last Modified: Wed, 08 Jul 2026 17:50:37 GMT  
		Size: 14.4 MB (14362489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ad8aa9ab528bcc89d211f0233a98588fadce93892347906a8cac3c3a155c0ba`  
		Last Modified: Wed, 08 Jul 2026 17:50:36 GMT  
		Size: 225.3 KB (225280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e277a8e0c41bae050ff0bb23e5c120f2f9849db7ab9181a6750b07a1c1f7f2`  
		Last Modified: Wed, 08 Jul 2026 18:12:46 GMT  
		Size: 188.9 MB (188877219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d995e3b301b056258cfd09e348dd89e39594eeeb52e1c8b71273ef19c2b62e42`  
		Last Modified: Wed, 08 Jul 2026 18:13:56 GMT  
		Size: 331.9 MB (331853461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d39e89f73d45640ebf5646e698b1a686b18388d3f99fe0bf3da843897c683c28`  
		Last Modified: Wed, 08 Jul 2026 18:13:47 GMT  
		Size: 712.4 KB (712444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8def7fad4c6517997f8017a548180ac297ad365ce1b543909f60b4e55ec3c1`  
		Last Modified: Wed, 08 Jul 2026 18:13:47 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51dd417f996066168f11ae271f93774cddc041b9f076476a65236e732fcea001`  
		Last Modified: Wed, 08 Jul 2026 18:13:47 GMT  
		Size: 2.3 KB (2309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e65d3bfd5a2201c7fabadf368cd42f198b7c3d2c8c9f544c20b21815242c4c3`  
		Last Modified: Wed, 08 Jul 2026 18:13:49 GMT  
		Size: 10.8 KB (10757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b33902fd88faf0b8591c1b97c141d7e011e8877125895cc585b4963735f318`  
		Last Modified: Wed, 08 Jul 2026 18:13:49 GMT  
		Size: 2.5 KB (2493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:17-mariadb-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:bc75da4a250e4148ee0a38000009360092dcc07ae1aa89fc8cbe6c2c545e37de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9206818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc6c72692eab898ffed0426ff94656d6940196350c01683a9a7fca1683ab411`

```dockerfile
```

-	Layers:
	-	`sha256:41e8c37524bc90cb10a0f65eeac787793e2ba9f6c63038323c98b6f5d73fed15`  
		Last Modified: Wed, 08 Jul 2026 18:13:47 GMT  
		Size: 9.2 MB (9166203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab85073b11c4fc456262c6d5f94f4f587555d0f16f6a50b75c565b7540bd8714`  
		Last Modified: Wed, 08 Jul 2026 18:13:47 GMT  
		Size: 40.6 KB (40615 bytes)  
		MIME: application/vnd.in-toto+json
