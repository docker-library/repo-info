## `xwiki:16-postgres-tomcat`

```console
$ docker pull xwiki@sha256:4db76768b3ad5f8ab932cc139020a45cce42373245864e3ab6261327a8cd3ba7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:16-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:ce2099eee85c573cb16358ae38063e8281af468015619c1bff3aaba2ed04855d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **625.3 MB (625323988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:855acab0c182f2b5bd5a19968a3fb0a72cc08ab901db744d04228c85bc3fcbb8`
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
# Thu, 02 Jul 2026 07:13:28 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Thu, 02 Jul 2026 07:13:28 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Thu, 02 Jul 2026 07:13:28 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Thu, 02 Jul 2026 07:13:28 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Thu, 02 Jul 2026 07:13:28 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Thu, 02 Jul 2026 07:13:28 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Thu, 02 Jul 2026 07:13:28 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps &&   rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 07:13:28 GMT
ENV XWIKI_VERSION=16.10.18
# Thu, 02 Jul 2026 07:13:28 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/16.10.18
# Thu, 02 Jul 2026 07:13:28 GMT
ENV XWIKI_DOWNLOAD_SHA256=53de2ca1583d8d4b17d858b2b81b615dd29b08dbac73eecd2d61deae7afee5bf
# Thu, 02 Jul 2026 07:13:48 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Thu, 02 Jul 2026 07:13:48 GMT
ENV POSTGRES_JDBC_VERSION=42.7.11
# Thu, 02 Jul 2026 07:13:48 GMT
ENV POSTGRES_JDBC_SHA256=1981b31d3993c58702783c1cddf10a34e48c1f413d70ff1cb6def0a143484647
# Thu, 02 Jul 2026 07:13:48 GMT
ENV POSTGRES_JDBC_PREFIX=https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.11
# Thu, 02 Jul 2026 07:13:48 GMT
ENV POSTGRES_JDBC_ARTIFACT=postgresql-42.7.11.jar
# Thu, 02 Jul 2026 07:13:48 GMT
ENV POSTGRES_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.11.jar
# Thu, 02 Jul 2026 07:13:48 GMT
RUN curl -fSL "${POSTGRES_JDBC_PREFIX}/${POSTGRES_JDBC_ARTIFACT}" -o $POSTGRES_JDBC_TARGET &&   echo "$POSTGRES_JDBC_SHA256 $POSTGRES_JDBC_TARGET" | sha256sum -c - # buildkit
# Thu, 02 Jul 2026 07:13:48 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Thu, 02 Jul 2026 07:13:48 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Thu, 02 Jul 2026 07:13:48 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Thu, 02 Jul 2026 07:13:48 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 07:13:48 GMT
VOLUME [/usr/local/xwiki]
# Thu, 02 Jul 2026 07:13:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 07:13:48 GMT
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
	-	`sha256:d665ba17907b00e90e864582a0501f69b5804e6e68558d746d086196788c79e2`  
		Last Modified: Thu, 02 Jul 2026 07:14:29 GMT  
		Size: 191.2 MB (191223246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81957c7c4acba7b38737ee7f7d51e8bc05bdd6ba06848a29e1e614c41ba205f0`  
		Last Modified: Thu, 02 Jul 2026 07:14:32 GMT  
		Size: 319.2 MB (319151638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4aa5f117292fffacdfcc8481648b247f7f6aabe88fcdbc38b00668532a07eb`  
		Last Modified: Thu, 02 Jul 2026 07:14:22 GMT  
		Size: 1.1 MB (1067143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2bd47d78ccf9e47c1c7b9acadddb703b7739a405cdfe425a1b89f9ed2aa890`  
		Last Modified: Thu, 02 Jul 2026 07:14:22 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d196e9f93203e1a77d44e24bc7bfe97a498b950033d214842eaa1d93f577e27`  
		Last Modified: Thu, 02 Jul 2026 07:14:23 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5d1a8c0fb915e7c1925fa5dd77657412c255775b80bcdcdf5a192175cccdd85`  
		Last Modified: Thu, 02 Jul 2026 07:14:23 GMT  
		Size: 6.8 KB (6768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24dd884d4423330f7eea8ec5b64bbb70437bc1c492d5bf11ca25879710a9657b`  
		Last Modified: Thu, 02 Jul 2026 07:14:25 GMT  
		Size: 2.4 KB (2443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:16-postgres-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:d25956b30fb4d78d392235170aa56567dde113fd3287ce3d00999024930cd7e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9136070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6474715cfc10d49c6977c104e154f00b65e8d3db8d9c615f72d6a934a9a5ba8f`

```dockerfile
```

-	Layers:
	-	`sha256:f38280a8cb239f469e5728d5f508df887f2f524bff8e1b1fa70d66a4d9b1f496`  
		Last Modified: Thu, 02 Jul 2026 07:14:22 GMT  
		Size: 9.1 MB (9096258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a771838417fe90d0151a22b6482670a9ce5bb72a38b30bc95bfc8828ab24bcc`  
		Last Modified: Thu, 02 Jul 2026 07:14:21 GMT  
		Size: 39.8 KB (39812 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:16-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:f9ac0eb02f2caa589c5aaf306fd5936eec0eec187679ccb1a19192dd05ffae67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **621.3 MB (621336136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:502f8a42736de1e6a1c5c0e59be3754b2224a2a62af374716b638aef48853189`
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
ENV POSTGRES_JDBC_VERSION=42.7.11
# Thu, 02 Jul 2026 07:14:23 GMT
ENV POSTGRES_JDBC_SHA256=1981b31d3993c58702783c1cddf10a34e48c1f413d70ff1cb6def0a143484647
# Thu, 02 Jul 2026 07:14:23 GMT
ENV POSTGRES_JDBC_PREFIX=https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.11
# Thu, 02 Jul 2026 07:14:23 GMT
ENV POSTGRES_JDBC_ARTIFACT=postgresql-42.7.11.jar
# Thu, 02 Jul 2026 07:14:23 GMT
ENV POSTGRES_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.11.jar
# Thu, 02 Jul 2026 07:14:23 GMT
RUN curl -fSL "${POSTGRES_JDBC_PREFIX}/${POSTGRES_JDBC_ARTIFACT}" -o $POSTGRES_JDBC_TARGET &&   echo "$POSTGRES_JDBC_SHA256 $POSTGRES_JDBC_TARGET" | sha256sum -c - # buildkit
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
	-	`sha256:b7f098c34e86a796a808e0b913206f3ee8e44a63c9c689360cc04811c63f6c96`  
		Last Modified: Thu, 02 Jul 2026 07:15:03 GMT  
		Size: 188.9 MB (188878134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3b6865cc42e3cdca096369b02c5c8dbb291f59a80fa0915fdb9de2ded3c05e`  
		Last Modified: Thu, 02 Jul 2026 07:15:06 GMT  
		Size: 319.2 MB (319151671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:352559ffe6691fc9239121e00939987608861bbd98bbc587b79d8527fa4ea1f8`  
		Last Modified: Thu, 02 Jul 2026 07:14:56 GMT  
		Size: 1.1 MB (1067144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:203c411e4b65be454ac2dab2320718c60098a027b2c780b4a689b4c9a98b9a2c`  
		Last Modified: Thu, 02 Jul 2026 07:14:56 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75994ffab0140611a468573e6f437fc6b1c5bd60cfe50a3009fee719960a5aef`  
		Last Modified: Thu, 02 Jul 2026 07:14:57 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448cb2e4f46f31551f25a505ba035d4e7c9d16e218979bb5d16ef915336cc802`  
		Last Modified: Thu, 02 Jul 2026 07:14:57 GMT  
		Size: 6.8 KB (6771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d684b14d4832216c5b7a01c3b94bb6820bd941b26ccc121502d819d6ccac2780`  
		Last Modified: Thu, 02 Jul 2026 07:14:58 GMT  
		Size: 2.4 KB (2443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:16-postgres-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:b0d87bb91f778909dcd1de3cab80dd37e164831a95473965aa7136321d075911
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9136924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbec13d9b895be832403fa2a51e0d304265db389070da04817ba7b01eb0c5f61`

```dockerfile
```

-	Layers:
	-	`sha256:9d62bf2b74dc8c55b5300c9f88af5815d9be98b289134e082566983d5f13fd9f`  
		Last Modified: Thu, 02 Jul 2026 07:14:56 GMT  
		Size: 9.1 MB (9096975 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db2e45750ba118c7f2bcd505e183d78dd3fb598f8e8d443d6184dd28d30aac14`  
		Last Modified: Thu, 02 Jul 2026 07:14:55 GMT  
		Size: 39.9 KB (39949 bytes)  
		MIME: application/vnd.in-toto+json
