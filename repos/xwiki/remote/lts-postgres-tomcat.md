## `xwiki:lts-postgres-tomcat`

```console
$ docker pull xwiki@sha256:53be8a296a1b131d8aaccbbee5e255d7243acadb1b79666935d9deb4a801161a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:lts-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:3f7c141e4cf67b8780ec044cfd6d0d38f6b231f4e98a8c31822ded1f6b9d287e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.5 MB (638528427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be79c6bccaa3393258800edb7fdcf9387dcee96256dd2e16108087650d7b2b6a`
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
# Wed, 08 Jul 2026 17:03:29 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 08 Jul 2026 17:03:29 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 08 Jul 2026 17:03:29 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 08 Jul 2026 17:03:29 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 08 Jul 2026 17:03:29 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 08 Jul 2026 17:03:29 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 08 Jul 2026 17:03:29 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps &&   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 08 Jul 2026 17:03:29 GMT
ENV XWIKI_VERSION=17.10.9
# Wed, 08 Jul 2026 17:03:29 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.9
# Wed, 08 Jul 2026 17:03:29 GMT
ENV XWIKI_DOWNLOAD_SHA256=b786a85a043cc673e26d887fd0ef34d2fda2f4a9ef4a362360814868ccf41e1f
# Wed, 08 Jul 2026 17:03:50 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Wed, 08 Jul 2026 17:03:50 GMT
ENV POSTGRES_JDBC_VERSION=42.7.11
# Wed, 08 Jul 2026 17:03:50 GMT
ENV POSTGRES_JDBC_SHA256=1981b31d3993c58702783c1cddf10a34e48c1f413d70ff1cb6def0a143484647
# Wed, 08 Jul 2026 17:03:50 GMT
ENV POSTGRES_JDBC_PREFIX=https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.11
# Wed, 08 Jul 2026 17:03:50 GMT
ENV POSTGRES_JDBC_ARTIFACT=postgresql-42.7.11.jar
# Wed, 08 Jul 2026 17:03:50 GMT
ENV POSTGRES_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.11.jar
# Wed, 08 Jul 2026 17:03:50 GMT
RUN curl -fSL "${POSTGRES_JDBC_PREFIX}/${POSTGRES_JDBC_ARTIFACT}" -o $POSTGRES_JDBC_TARGET &&   echo "$POSTGRES_JDBC_SHA256 $POSTGRES_JDBC_TARGET" | sha256sum -c - # buildkit
# Wed, 08 Jul 2026 17:03:50 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 08 Jul 2026 17:03:50 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 08 Jul 2026 17:03:50 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 08 Jul 2026 17:03:50 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 08 Jul 2026 17:03:50 GMT
VOLUME [/usr/local/xwiki]
# Wed, 08 Jul 2026 17:03:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 17:03:50 GMT
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
	-	`sha256:213d3effb86ca5f59b6f9e5acdcbbf5009c547a23943a63cf65eb0046ae76a96`  
		Last Modified: Wed, 08 Jul 2026 17:04:34 GMT  
		Size: 191.2 MB (191200186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:044ad7cd2c3559eb1721fc0ccdeda13471980d082b57f4dc373f8986ab4a0e86`  
		Last Modified: Wed, 08 Jul 2026 17:04:38 GMT  
		Size: 331.9 MB (331853456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c777c0dddb5679028822ff1d50e17f5961a3bb94d8f8b3ff62a65d3ad81ea5aa`  
		Last Modified: Wed, 08 Jul 2026 17:04:26 GMT  
		Size: 1.1 MB (1067143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac2d66c715b816585211148fa99508eb19a10d462ca4193dc5c223b496fe2c65`  
		Last Modified: Wed, 08 Jul 2026 17:04:26 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0729f1a08d4283a3cae09b05fa6067aa1f563dedf5be9dcb9c22a1edf4d5806d`  
		Last Modified: Wed, 08 Jul 2026 17:04:28 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8ec75b629de476650df9363f11da00b923cb4a0e3383477127ffa1fc38b010`  
		Last Modified: Wed, 08 Jul 2026 17:04:28 GMT  
		Size: 10.8 KB (10755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc49dac265c02adfb894afe618efa9d0803db48053224f329bbabe4505d0e77f`  
		Last Modified: Wed, 08 Jul 2026 17:04:29 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:lts-postgres-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:a81feb8389001a23d7dc1bbe9df14f7e0355f1b2040ba0510e8bff5569a59254
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9205918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed12159f283adbdaff02890bab0378d586ede06693597830344d3528ecff60f`

```dockerfile
```

-	Layers:
	-	`sha256:3d5bea985f332b895a48bd73828ce2a4c8183d2ff37dab3bacde2389bbaee954`  
		Last Modified: Wed, 08 Jul 2026 17:04:26 GMT  
		Size: 9.2 MB (9165480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03b17b10cf0d69c3b88cbf40f9ad45cd54d776823a67acb5dc47149d1513f7eb`  
		Last Modified: Wed, 08 Jul 2026 17:04:26 GMT  
		Size: 40.4 KB (40438 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:lts-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:25ee512a37c34c6b3543ebd0c4e9178debd64ce4a3ccdfbf03c540eae61ec348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **634.6 MB (634555950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2976a154f6816b63020b48063c63e6de2b2de88852794710c74a906959e8ae2f`
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
# Wed, 08 Jul 2026 18:11:45 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 08 Jul 2026 18:11:45 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 08 Jul 2026 18:11:45 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 08 Jul 2026 18:11:45 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 08 Jul 2026 18:11:45 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 08 Jul 2026 18:11:45 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 08 Jul 2026 18:11:45 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps &&   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 08 Jul 2026 18:11:45 GMT
ENV XWIKI_VERSION=17.10.9
# Wed, 08 Jul 2026 18:11:45 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/17.10.9
# Wed, 08 Jul 2026 18:11:45 GMT
ENV XWIKI_DOWNLOAD_SHA256=b786a85a043cc673e26d887fd0ef34d2fda2f4a9ef4a362360814868ccf41e1f
# Wed, 08 Jul 2026 18:13:17 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Wed, 08 Jul 2026 18:13:17 GMT
ENV POSTGRES_JDBC_VERSION=42.7.11
# Wed, 08 Jul 2026 18:13:17 GMT
ENV POSTGRES_JDBC_SHA256=1981b31d3993c58702783c1cddf10a34e48c1f413d70ff1cb6def0a143484647
# Wed, 08 Jul 2026 18:13:17 GMT
ENV POSTGRES_JDBC_PREFIX=https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.11
# Wed, 08 Jul 2026 18:13:17 GMT
ENV POSTGRES_JDBC_ARTIFACT=postgresql-42.7.11.jar
# Wed, 08 Jul 2026 18:13:17 GMT
ENV POSTGRES_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.11.jar
# Wed, 08 Jul 2026 18:13:17 GMT
RUN curl -fSL "${POSTGRES_JDBC_PREFIX}/${POSTGRES_JDBC_ARTIFACT}" -o $POSTGRES_JDBC_TARGET &&   echo "$POSTGRES_JDBC_SHA256 $POSTGRES_JDBC_TARGET" | sha256sum -c - # buildkit
# Wed, 08 Jul 2026 18:13:17 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 08 Jul 2026 18:13:17 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 08 Jul 2026 18:13:17 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 08 Jul 2026 18:13:17 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 08 Jul 2026 18:13:17 GMT
VOLUME [/usr/local/xwiki]
# Wed, 08 Jul 2026 18:13:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 18:13:17 GMT
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
	-	`sha256:33fa9c897b277aa06090c5efc37850f9f6affd3752edafcb69af4d71b6937848`  
		Last Modified: Wed, 08 Jul 2026 18:12:47 GMT  
		Size: 188.9 MB (188877403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f309b95f17e9edb1e2cf80a72cb003fbd52c9bdab24e73a6807c41ce3efbf3a5`  
		Last Modified: Wed, 08 Jul 2026 18:13:51 GMT  
		Size: 331.9 MB (331853454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ac63629789f932fd8f8a6f7dfc9912fbad5b561334977f2dbb9689efa3b4de1`  
		Last Modified: Wed, 08 Jul 2026 18:13:44 GMT  
		Size: 1.1 MB (1067145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689397aad7dc21dd298c2f8a79a4d9792a8e9b8f0316318f7c42ddcb846d710d`  
		Last Modified: Wed, 08 Jul 2026 18:13:44 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27d5ab8d83268017dcbe97910e3c6b5f1eb0a9c2de48cc2098d3c23b6981c6d`  
		Last Modified: Wed, 08 Jul 2026 18:13:44 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b85643f68fd85fb6614af5781599111af5d588b1500a2991e70475a03e0809cb`  
		Last Modified: Wed, 08 Jul 2026 18:13:46 GMT  
		Size: 10.8 KB (10759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:284b4ba01cc66006e658e245ebdfb7e8bf469bb915b1cab7aeffc8f236404b3a`  
		Last Modified: Wed, 08 Jul 2026 18:13:46 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:lts-postgres-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:a0f0e5d9f3a4dee2d244516cc2cd7770aaf2aa1444ceb46c00813e2e4dc1efa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9206823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d19aabb6c197c7309cfadc760b41c7877fc4b3a9d877fb25507aa75deb36117c`

```dockerfile
```

-	Layers:
	-	`sha256:6394bd0821309cf490be38f2fa33c5b3240c24af6c96272cf6bb6abff3918c10`  
		Last Modified: Wed, 08 Jul 2026 18:13:44 GMT  
		Size: 9.2 MB (9166221 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d29add0c3c434ac688431cecc195033332390cf5a9c56f0236d4265f9861842f`  
		Last Modified: Wed, 08 Jul 2026 18:13:44 GMT  
		Size: 40.6 KB (40602 bytes)  
		MIME: application/vnd.in-toto+json
