## `xwiki:16-mysql-tomcat`

```console
$ docker pull xwiki@sha256:517180a08d4cc32458536bc1b3e5ecad01a431ad9bb1ffddad6b18801e4952a2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:16-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:77e8017f064f3cc67c80b1a0cfa6a4cecae5e007579e841128ba31c60ced9261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.7 MB (626702331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d764b275d6f085ec4bf1cb75d81b891c1acb972f6a6b1854207257da6bd4ce2f`
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
ENV TOMCAT_MAJOR=9
# Thu, 02 Jul 2026 06:27:49 GMT
ENV TOMCAT_VERSION=9.0.119
# Thu, 02 Jul 2026 06:27:49 GMT
ENV TOMCAT_SHA512=5215f1c672a9869f8405e440afcc84cc8a2f1e2dce795f5afbaa534d1bc9f2ca20f083661b1d893b9ef26b9b57aa048215c58b861d808130362ba1422a23649a
# Thu, 02 Jul 2026 06:28:11 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Thu, 02 Jul 2026 06:28:14 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:28:15 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Thu, 02 Jul 2026 06:28:15 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 02 Jul 2026 06:28:15 GMT
ENTRYPOINT []
# Thu, 02 Jul 2026 06:28:15 GMT
CMD ["catalina.sh" "run"]
# Thu, 02 Jul 2026 07:14:09 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Thu, 02 Jul 2026 07:14:09 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Thu, 02 Jul 2026 07:14:09 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Thu, 02 Jul 2026 07:14:09 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Thu, 02 Jul 2026 07:14:09 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Thu, 02 Jul 2026 07:14:09 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Thu, 02 Jul 2026 07:14:09 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps &&   rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 07:14:09 GMT
ENV XWIKI_VERSION=16.10.18
# Thu, 02 Jul 2026 07:14:09 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/16.10.18
# Thu, 02 Jul 2026 07:14:09 GMT
ENV XWIKI_DOWNLOAD_SHA256=53de2ca1583d8d4b17d858b2b81b615dd29b08dbac73eecd2d61deae7afee5bf
# Thu, 02 Jul 2026 07:14:28 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Thu, 02 Jul 2026 07:14:28 GMT
ENV MYSQL_JDBC_VERSION=9.7.0
# Thu, 02 Jul 2026 07:14:28 GMT
ENV MYSQL_JDBC_SHA256=0353648eaa1c91e0f4020c959abf756bc866ffd583df22ae6b6f6e0cbd43eb44
# Thu, 02 Jul 2026 07:14:28 GMT
ENV MYSQL_JDBC_PREFIX=https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/9.7.0
# Thu, 02 Jul 2026 07:14:28 GMT
ENV MYSQL_JDBC_ARTIFACT=mysql-connector-j-9.7.0.jar
# Thu, 02 Jul 2026 07:14:28 GMT
ENV MYSQL_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mysql-connector-j-9.7.0.jar
# Thu, 02 Jul 2026 07:14:28 GMT
RUN curl -fSL "${MYSQL_JDBC_PREFIX}/${MYSQL_JDBC_ARTIFACT}" -o $MYSQL_JDBC_TARGET &&   echo "$MYSQL_JDBC_SHA256 $MYSQL_JDBC_TARGET" | sha256sum -c - # buildkit
# Thu, 02 Jul 2026 07:14:28 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Thu, 02 Jul 2026 07:14:28 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Thu, 02 Jul 2026 07:14:28 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Thu, 02 Jul 2026 07:14:28 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 07:14:28 GMT
VOLUME [/usr/local/xwiki]
# Thu, 02 Jul 2026 07:14:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 07:14:28 GMT
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
	-	`sha256:461ebf4011458ba39b8e0b39a42e0b78215b1371f879cc75871ca06e2ba922c0`  
		Last Modified: Thu, 02 Jul 2026 06:28:23 GMT  
		Size: 13.8 MB (13838063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9709a4d7cf9aea0860ec40d7a4899359954e782a404b93ae2dedfeed8fbbfafa`  
		Last Modified: Thu, 02 Jul 2026 06:28:22 GMT  
		Size: 224.9 KB (224887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e58d262d3d75425784ac39cb6cb75c2168c9bab28d1c569d46ff070bcc3da9`  
		Last Modified: Thu, 02 Jul 2026 07:15:12 GMT  
		Size: 191.2 MB (191222691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fce7874edf2762aeb2c80cf9cb6e8371ac76680a6be5741ec9ca2c26ae512758`  
		Last Modified: Thu, 02 Jul 2026 07:15:15 GMT  
		Size: 319.2 MB (319151646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc594329050179a3644d7dc1b6cdb81b2bbf94c2db1e7b17c0b4fc9a0796968f`  
		Last Modified: Thu, 02 Jul 2026 07:15:05 GMT  
		Size: 2.4 MB (2446029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a5f5c0da2fc6749d0a52a7ec88cf0434562d77521275a512132fcf881ac76a`  
		Last Modified: Thu, 02 Jul 2026 07:15:05 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b44ecd763a386fd0a11ebb05f896a1be8072f769e5481f9aba1b74ab65268cd`  
		Last Modified: Thu, 02 Jul 2026 07:15:06 GMT  
		Size: 2.4 KB (2374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289b2fa4d17e4fd42da8d322d8d22680d9e870c0141e6630d2077d59c0993cf3`  
		Last Modified: Thu, 02 Jul 2026 07:15:07 GMT  
		Size: 6.8 KB (6768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e3fb087c81512cb2a1982cf12b6e8f4d22be4cecffa9056f75d8f71763a916`  
		Last Modified: Thu, 02 Jul 2026 07:15:08 GMT  
		Size: 2.5 KB (2536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:16-mysql-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:d6e5a89f1f9191d063da1ba3f6f0a1e8efcbfbcf97e903196cf02e30e1b389f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9137779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8178b1f65a641176ac30ad80c50e4db7fefd7907197f48ecad2b92eeabdbfaad`

```dockerfile
```

-	Layers:
	-	`sha256:d7f2b5511d10e5c2c7a6ea372108c707ab5e859df805460a4635ceca896cb1d2`  
		Last Modified: Thu, 02 Jul 2026 07:15:05 GMT  
		Size: 9.1 MB (9097185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0e34a8c7975d58dbcf60a1be855e8882f0489dd781b920977bb8223318b198a`  
		Last Modified: Thu, 02 Jul 2026 07:15:05 GMT  
		Size: 40.6 KB (40594 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:16-mysql-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:059b51c0f4bd64afa3c1bb6b8ef7585be1a5bf8f022c1afe815abcd3dbc9826b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **622.7 MB (622715006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fddfb1fe1ae0a1ddb7478754f44255900d02fbb8eb48c64375be8130be41554`
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
# Thu, 02 Jul 2026 06:26:21 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 02 Jul 2026 06:26:21 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:26:21 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 02 Jul 2026 06:26:21 GMT
WORKDIR /usr/local/tomcat
# Thu, 02 Jul 2026 06:26:21 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 02 Jul 2026 06:26:21 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 02 Jul 2026 06:26:21 GMT
ENV TOMCAT_MAJOR=9
# Thu, 02 Jul 2026 06:26:21 GMT
ENV TOMCAT_VERSION=9.0.119
# Thu, 02 Jul 2026 06:26:21 GMT
ENV TOMCAT_SHA512=5215f1c672a9869f8405e440afcc84cc8a2f1e2dce795f5afbaa534d1bc9f2ca20f083661b1d893b9ef26b9b57aa048215c58b861d808130362ba1422a23649a
# Thu, 02 Jul 2026 06:26:21 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Thu, 02 Jul 2026 06:26:26 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:26:27 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Thu, 02 Jul 2026 06:26:27 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 02 Jul 2026 06:26:27 GMT
ENTRYPOINT []
# Thu, 02 Jul 2026 06:26:27 GMT
CMD ["catalina.sh" "run"]
# Thu, 02 Jul 2026 07:14:03 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Thu, 02 Jul 2026 07:14:03 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Thu, 02 Jul 2026 07:14:03 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Thu, 02 Jul 2026 07:14:03 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Thu, 02 Jul 2026 07:14:03 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Thu, 02 Jul 2026 07:14:03 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Thu, 02 Jul 2026 07:14:03 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps &&   rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 07:14:03 GMT
ENV XWIKI_VERSION=16.10.18
# Thu, 02 Jul 2026 07:14:03 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/16.10.18
# Thu, 02 Jul 2026 07:14:03 GMT
ENV XWIKI_DOWNLOAD_SHA256=53de2ca1583d8d4b17d858b2b81b615dd29b08dbac73eecd2d61deae7afee5bf
# Thu, 02 Jul 2026 07:14:23 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Thu, 02 Jul 2026 07:14:23 GMT
ENV MYSQL_JDBC_VERSION=9.7.0
# Thu, 02 Jul 2026 07:14:23 GMT
ENV MYSQL_JDBC_SHA256=0353648eaa1c91e0f4020c959abf756bc866ffd583df22ae6b6f6e0cbd43eb44
# Thu, 02 Jul 2026 07:14:23 GMT
ENV MYSQL_JDBC_PREFIX=https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/9.7.0
# Thu, 02 Jul 2026 07:14:23 GMT
ENV MYSQL_JDBC_ARTIFACT=mysql-connector-j-9.7.0.jar
# Thu, 02 Jul 2026 07:14:23 GMT
ENV MYSQL_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mysql-connector-j-9.7.0.jar
# Thu, 02 Jul 2026 07:14:23 GMT
RUN curl -fSL "${MYSQL_JDBC_PREFIX}/${MYSQL_JDBC_ARTIFACT}" -o $MYSQL_JDBC_TARGET &&   echo "$MYSQL_JDBC_SHA256 $MYSQL_JDBC_TARGET" | sha256sum -c - # buildkit
# Thu, 02 Jul 2026 07:14:23 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Thu, 02 Jul 2026 07:14:23 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Thu, 02 Jul 2026 07:14:23 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Thu, 02 Jul 2026 07:14:23 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 07:14:23 GMT
VOLUME [/usr/local/xwiki]
# Thu, 02 Jul 2026 07:14:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 07:14:23 GMT
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
	-	`sha256:0d17218945570c6dad43c6f83eb1b407bd43e0b825fcf3ab554b3ae942619ad3`  
		Last Modified: Thu, 02 Jul 2026 06:26:35 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:559d338dd299f9b1094d37fb366fa230331d554f01d3ece0c1e76d3158ad02be`  
		Last Modified: Thu, 02 Jul 2026 06:26:36 GMT  
		Size: 13.8 MB (13847676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30914b34c0a8577014fa51c540183707b361b3ea88d8b104e5b6a49ac8feab46`  
		Last Modified: Thu, 02 Jul 2026 06:26:35 GMT  
		Size: 225.3 KB (225317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e65fe85e23ecde72c51edf57ffc28912f4eea6fa7a467c1d2bbaff52afcc8ab2`  
		Last Modified: Thu, 02 Jul 2026 07:15:04 GMT  
		Size: 188.9 MB (188878103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d66c697035904295eff47566069322e7165b4bf51eea5e53727aa0c28fe71e1`  
		Last Modified: Thu, 02 Jul 2026 07:15:07 GMT  
		Size: 319.2 MB (319151685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef2f2bfe9d620c753993b480de5d57b87fec31bf0e9a2620798dde8e5667c0e5`  
		Last Modified: Thu, 02 Jul 2026 07:14:56 GMT  
		Size: 2.4 MB (2446032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a02b5a179fca93481d7363259de5e78879d1cc986f5b64876aa3daf34e880a73`  
		Last Modified: Thu, 02 Jul 2026 07:14:56 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf247430b2a979e08596bd0592ec087c06d17050c7dccf6f655826499c5d63be`  
		Last Modified: Thu, 02 Jul 2026 07:14:57 GMT  
		Size: 2.4 KB (2373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ad1065e8422970487a3e3fe68ebd5c924e0740355209128af8964e056f7c18`  
		Last Modified: Thu, 02 Jul 2026 07:14:57 GMT  
		Size: 6.8 KB (6770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd0eb387b570a4c00590bedf29db13ac684ea6879e85b8bde02fad34825817b`  
		Last Modified: Thu, 02 Jul 2026 07:14:59 GMT  
		Size: 2.5 KB (2532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:16-mysql-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:58c17eea9e5cd24e66b406aa98a6ee95e1b45a6907a7fb52d070b10b19bbc72b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9138705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56dc3ce7cc429e0c730abfc29666cc3d54c9bbd1df1d034985cf21d937449b4e`

```dockerfile
```

-	Layers:
	-	`sha256:f7caa4045ea19d6d00be101138bb74b647019fb78f8d19806a099a4e6225a3a6`  
		Last Modified: Thu, 02 Jul 2026 07:14:57 GMT  
		Size: 9.1 MB (9097938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab3ed08896bb29f9488595117a327c43f03bdbee87bf34ce6b2b6abaa832aad3`  
		Last Modified: Thu, 02 Jul 2026 07:14:56 GMT  
		Size: 40.8 KB (40767 bytes)  
		MIME: application/vnd.in-toto+json
