## `xwiki:mariadb-tomcat`

```console
$ docker pull xwiki@sha256:65c990ae76c1e5865c9befb78d70d1e26173dd49f7a5e1ecd6d84c0058fa7807
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:mariadb-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:0922f644ab54a0f2c053e80488d005100844198d908591227105a0b18d92e2d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **651.3 MB (651253557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e306bf88d4f852b8c24e1f7c9d575b37d2c8b198d2647b851f1fe1477858e489`
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
# Wed, 08 Jul 2026 17:02:44 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 08 Jul 2026 17:02:44 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 08 Jul 2026 17:02:44 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 08 Jul 2026 17:02:44 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 08 Jul 2026 17:02:44 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 08 Jul 2026 17:02:44 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 08 Jul 2026 17:02:44 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps &&   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 08 Jul 2026 17:02:44 GMT
ENV XWIKI_VERSION=18.5.0
# Wed, 08 Jul 2026 17:02:44 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.5.0
# Wed, 08 Jul 2026 17:02:44 GMT
ENV XWIKI_DOWNLOAD_SHA256=649a5c53bc7ca02d80b3a3dcd1c03a7534ff868b6fe4f6eafa198602bc31c6df
# Wed, 08 Jul 2026 17:03:06 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Wed, 08 Jul 2026 17:03:06 GMT
ENV MARIADB_JDBC_VERSION=3.5.9
# Wed, 08 Jul 2026 17:03:06 GMT
ENV MARIADB_JDBC_SHA256=11e3bb5bbf8ef0e806ae4d6c5d5033fedf7262cc777f0190bde8a2f3c8e6bd8d
# Wed, 08 Jul 2026 17:03:06 GMT
ENV MARIADB_JDBC_PREFIX=https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/3.5.9
# Wed, 08 Jul 2026 17:03:06 GMT
ENV MARIADB_JDBC_ARTIFACT=mariadb-java-client-3.5.9.jar
# Wed, 08 Jul 2026 17:03:06 GMT
ENV MARIADB_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mariadb-java-client-3.5.9.jar
# Wed, 08 Jul 2026 17:03:06 GMT
RUN curl -fSL "${MARIADB_JDBC_PREFIX}/${MARIADB_JDBC_ARTIFACT}" -o $MARIADB_JDBC_TARGET &&   echo "$MARIADB_JDBC_SHA256 $MARIADB_JDBC_TARGET" | sha256sum -c - # buildkit
# Wed, 08 Jul 2026 17:03:06 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 08 Jul 2026 17:03:06 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 08 Jul 2026 17:03:07 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 08 Jul 2026 17:03:07 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 08 Jul 2026 17:03:07 GMT
VOLUME [/usr/local/xwiki]
# Wed, 08 Jul 2026 17:03:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 17:03:07 GMT
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
	-	`sha256:1450458c4ed79ca055e5ab55b54aa69cf86c9e9d50c3bfcf02abe05867aecd0b`  
		Last Modified: Wed, 08 Jul 2026 17:03:51 GMT  
		Size: 191.2 MB (191200406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:049ff89b51cd9b4820a86a1397f80a1de007f76dc9738c8e1041f1c79c75125c`  
		Last Modified: Wed, 08 Jul 2026 17:03:54 GMT  
		Size: 344.9 MB (344916433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5a48bd49a8ef952f3f0caf6481526409c2a4ab2bc729db17a6d2e8d2c95f1b`  
		Last Modified: Wed, 08 Jul 2026 17:03:43 GMT  
		Size: 728.9 KB (728942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d893c036d93d7aaff53bd842055ef6ae38b94284cb89cbaf4c5908aebe4639`  
		Last Modified: Wed, 08 Jul 2026 17:03:43 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600186a7dfe8b05538af1354d81ba74e49ba8e780be4541f3a0c587eb29c0542`  
		Last Modified: Wed, 08 Jul 2026 17:03:44 GMT  
		Size: 2.3 KB (2312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b2a542d84b896b6e0a45dcccdcadda44fae91fc897cc28eacee627a6fc18e4`  
		Last Modified: Wed, 08 Jul 2026 17:03:44 GMT  
		Size: 11.0 KB (10982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3cae6075e51827420b1652602320dff62f5ec2df6aad273f2a16f2a72e01df0`  
		Last Modified: Wed, 08 Jul 2026 17:03:46 GMT  
		Size: 2.5 KB (2496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:mariadb-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:bfe34ab3ab71f8c41e2f202e8336c3364e7703149ea6708d15930d2776df9710
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9223392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:793df4004e1f8b862a276501840633e69b1f7190f3df7b8091fe983245961889`

```dockerfile
```

-	Layers:
	-	`sha256:16e6be98f082b902494db7625867f19320f8ad3fcad5aab245d8b4f5fd0169ab`  
		Last Modified: Wed, 08 Jul 2026 17:03:43 GMT  
		Size: 9.2 MB (9182624 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95330adea4a2bf884ac560a5685841b52bc7792eb3b35c15ec1f5190aec4b2de`  
		Last Modified: Wed, 08 Jul 2026 17:03:43 GMT  
		Size: 40.8 KB (40768 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:mariadb-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:48a969eaa0d2353e19be952d385b50a304c98ca83d529d6b576ce700ceba2a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.3 MB (647280617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f868cbdebdb419532360039429cfc1125c4120710610bc3a94e276cdca05ef4`
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
# Wed, 08 Jul 2026 18:12:05 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 08 Jul 2026 18:12:05 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 08 Jul 2026 18:12:05 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 08 Jul 2026 18:12:05 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 08 Jul 2026 18:12:05 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 08 Jul 2026 18:12:05 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 08 Jul 2026 18:12:05 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps &&   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 08 Jul 2026 18:12:05 GMT
ENV XWIKI_VERSION=18.5.0
# Wed, 08 Jul 2026 18:12:05 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.5.0
# Wed, 08 Jul 2026 18:12:05 GMT
ENV XWIKI_DOWNLOAD_SHA256=649a5c53bc7ca02d80b3a3dcd1c03a7534ff868b6fe4f6eafa198602bc31c6df
# Wed, 08 Jul 2026 18:12:27 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Wed, 08 Jul 2026 18:12:27 GMT
ENV MARIADB_JDBC_VERSION=3.5.9
# Wed, 08 Jul 2026 18:12:27 GMT
ENV MARIADB_JDBC_SHA256=11e3bb5bbf8ef0e806ae4d6c5d5033fedf7262cc777f0190bde8a2f3c8e6bd8d
# Wed, 08 Jul 2026 18:12:27 GMT
ENV MARIADB_JDBC_PREFIX=https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/3.5.9
# Wed, 08 Jul 2026 18:12:27 GMT
ENV MARIADB_JDBC_ARTIFACT=mariadb-java-client-3.5.9.jar
# Wed, 08 Jul 2026 18:12:27 GMT
ENV MARIADB_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mariadb-java-client-3.5.9.jar
# Wed, 08 Jul 2026 18:12:27 GMT
RUN curl -fSL "${MARIADB_JDBC_PREFIX}/${MARIADB_JDBC_ARTIFACT}" -o $MARIADB_JDBC_TARGET &&   echo "$MARIADB_JDBC_SHA256 $MARIADB_JDBC_TARGET" | sha256sum -c - # buildkit
# Wed, 08 Jul 2026 18:12:27 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 08 Jul 2026 18:12:27 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 08 Jul 2026 18:12:27 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 08 Jul 2026 18:12:27 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 08 Jul 2026 18:12:27 GMT
VOLUME [/usr/local/xwiki]
# Wed, 08 Jul 2026 18:12:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 18:12:27 GMT
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
	-	`sha256:2477262c0200742f0cc37ee9e926cf2c2e6e0050ff7b5d3ffe437095c64d3ac2`  
		Last Modified: Wed, 08 Jul 2026 18:13:08 GMT  
		Size: 188.9 MB (188877194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8000baa668980adb9aecc37b9781dace591221225a01559a81551566a444c8f3`  
		Last Modified: Wed, 08 Jul 2026 18:13:13 GMT  
		Size: 344.9 MB (344916420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a9d6ffa49d9b613e914a5647b6d0f1d8f433ac42f8e8dd9e1631ddc7149635`  
		Last Modified: Wed, 08 Jul 2026 18:13:01 GMT  
		Size: 728.9 KB (728939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:736434f3cee34a67da672a0ff96c66f38eaeb13d8a81ef9aa4c2260a0d352296`  
		Last Modified: Wed, 08 Jul 2026 18:13:00 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af77af049fc3885abe7cd38750b6ba56c1b87312e14530c47bf1e3d31e945ab2`  
		Last Modified: Wed, 08 Jul 2026 18:13:02 GMT  
		Size: 2.3 KB (2308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d87c52e11f41d7f458cc19ae7437c250ed67d5e7c64f3786b4012e5dbd81a8c4`  
		Last Modified: Wed, 08 Jul 2026 18:13:02 GMT  
		Size: 11.0 KB (10978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f055d5cee10acc8f51de03af0bb434f363c4700b22cea2df156d29b83ca43f1f`  
		Last Modified: Wed, 08 Jul 2026 18:13:04 GMT  
		Size: 2.5 KB (2495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:mariadb-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:a0df46399f31aca8fd46766b2c7cb6b4b530ab8106f54df4071ebd97f69b0aaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9224318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:500317dd3a958a657b8be62b900701776829fb238dc0f27537ce9f2941bf14d8`

```dockerfile
```

-	Layers:
	-	`sha256:19436c63d495ef8e01081cdfa2f59964ad6930a3f9814ea6a88f5b6cd8e8e102`  
		Last Modified: Wed, 08 Jul 2026 18:13:02 GMT  
		Size: 9.2 MB (9183377 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29670fe88422cc8b5c148adcfde2392606672297e8e52815077960ed3f521907`  
		Last Modified: Wed, 08 Jul 2026 18:13:00 GMT  
		Size: 40.9 KB (40941 bytes)  
		MIME: application/vnd.in-toto+json
