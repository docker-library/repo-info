## `xwiki:stable-postgres-tomcat`

```console
$ docker pull xwiki@sha256:11442d454cf499f303e16f4c7d81692574893a1e031733dad70b0395a09d128f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `xwiki:stable-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:ae99f06f69cf610f6ad90d309ee1354d05234e5a87e8d48a77866bd695fa7bd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **651.6 MB (651591657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a5733ff114dbd836df3535523328ce0ef82a8da91cff3a01d2d853b904d9742`
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
# Wed, 08 Jul 2026 17:03:04 GMT
LABEL org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>
# Wed, 08 Jul 2026 17:03:04 GMT
LABEL org.opencontainers.image.url=https://hub.docker.com/_/xwiki
# Wed, 08 Jul 2026 17:03:04 GMT
LABEL org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki
# Wed, 08 Jul 2026 17:03:04 GMT
LABEL org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git
# Wed, 08 Jul 2026 17:03:04 GMT
LABEL org.opencontainers.image.vendor=xwiki.org
# Wed, 08 Jul 2026 17:03:04 GMT
LABEL org.opencontainers.image.licenses=LGPL-2.1
# Wed, 08 Jul 2026 17:03:04 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps &&   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 08 Jul 2026 17:03:04 GMT
ENV XWIKI_VERSION=18.5.0
# Wed, 08 Jul 2026 17:03:04 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.5.0
# Wed, 08 Jul 2026 17:03:04 GMT
ENV XWIKI_DOWNLOAD_SHA256=649a5c53bc7ca02d80b3a3dcd1c03a7534ff868b6fe4f6eafa198602bc31c6df
# Wed, 08 Jul 2026 17:03:26 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Wed, 08 Jul 2026 17:03:26 GMT
ENV POSTGRES_JDBC_VERSION=42.7.11
# Wed, 08 Jul 2026 17:03:26 GMT
ENV POSTGRES_JDBC_SHA256=1981b31d3993c58702783c1cddf10a34e48c1f413d70ff1cb6def0a143484647
# Wed, 08 Jul 2026 17:03:26 GMT
ENV POSTGRES_JDBC_PREFIX=https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.11
# Wed, 08 Jul 2026 17:03:26 GMT
ENV POSTGRES_JDBC_ARTIFACT=postgresql-42.7.11.jar
# Wed, 08 Jul 2026 17:03:26 GMT
ENV POSTGRES_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.11.jar
# Wed, 08 Jul 2026 17:03:26 GMT
RUN curl -fSL "${POSTGRES_JDBC_PREFIX}/${POSTGRES_JDBC_ARTIFACT}" -o $POSTGRES_JDBC_TARGET &&   echo "$POSTGRES_JDBC_SHA256 $POSTGRES_JDBC_TARGET" | sha256sum -c - # buildkit
# Wed, 08 Jul 2026 17:03:26 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 08 Jul 2026 17:03:26 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 08 Jul 2026 17:03:26 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 08 Jul 2026 17:03:26 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 08 Jul 2026 17:03:26 GMT
VOLUME [/usr/local/xwiki]
# Wed, 08 Jul 2026 17:03:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 17:03:26 GMT
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
	-	`sha256:ee18a32c8a7bdfc40d42bfc05f3d5d6ec7d5e0d5229f9025a27f645f46e4582c`  
		Last Modified: Wed, 08 Jul 2026 17:04:10 GMT  
		Size: 191.2 MB (191200254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a881ea5a03eda8e11ea22d935890fa4e3258a569467e62517ab926bd7caab93`  
		Last Modified: Wed, 08 Jul 2026 17:04:13 GMT  
		Size: 344.9 MB (344916406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71623a3d70e17d06ea9e83518990e9d432bada29f3d07bc12660abd72d2145fd`  
		Last Modified: Wed, 08 Jul 2026 17:04:02 GMT  
		Size: 1.1 MB (1067139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:399377c4ad0daa85cc559aebeb59fb59c79c79c42e315ea40e378033be42aaf8`  
		Last Modified: Wed, 08 Jul 2026 17:04:02 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac8490405976c935bbec8f06518ce09985c7a284a64037431200e27071d201e7`  
		Last Modified: Wed, 08 Jul 2026 17:04:04 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51769a4c124f314bbde06e7393ac35968278881145a6177ba3b087b94ca3cda0`  
		Last Modified: Wed, 08 Jul 2026 17:04:04 GMT  
		Size: 11.0 KB (10976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3c4cec8a86814a5908d25c00f3cf9f3a100f0e2acb2b9dafb6168eb8fd6f621`  
		Last Modified: Wed, 08 Jul 2026 17:04:05 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:stable-postgres-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:f0a0076894722690c975d9ee2d1db8b0d7736274fa71b697bcd77eebdff9372f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9223396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c3b56ada1bf7942eccf62bb686eb014e1b4de94409043d361045313743dad4b`

```dockerfile
```

-	Layers:
	-	`sha256:c854bcbafe0e24a3465cb12a0fe910694fe0989cf040861755958a3e230480bf`  
		Last Modified: Wed, 08 Jul 2026 17:04:02 GMT  
		Size: 9.2 MB (9182644 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f3e64ea4e8783400bee8bf6a8f1547b286c06f44b9383e0901eefee8f0a3898`  
		Last Modified: Wed, 08 Jul 2026 17:04:02 GMT  
		Size: 40.8 KB (40752 bytes)  
		MIME: application/vnd.in-toto+json

### `xwiki:stable-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:03eed989a25cac20c5d3f8e04fee634c6a77fe0db371a1efa3f5e0ac843c00f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.6 MB (647619108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c04984e43b0d81ff4e6bf34813f8028b497f96a17f8e12e35d5b215f8f1209c1`
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
ENV XWIKI_VERSION=18.5.0
# Wed, 08 Jul 2026 18:11:45 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.5.0
# Wed, 08 Jul 2026 18:11:45 GMT
ENV XWIKI_DOWNLOAD_SHA256=649a5c53bc7ca02d80b3a3dcd1c03a7534ff868b6fe4f6eafa198602bc31c6df
# Wed, 08 Jul 2026 18:12:07 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war # buildkit
# Wed, 08 Jul 2026 18:12:07 GMT
ENV POSTGRES_JDBC_VERSION=42.7.11
# Wed, 08 Jul 2026 18:12:07 GMT
ENV POSTGRES_JDBC_SHA256=1981b31d3993c58702783c1cddf10a34e48c1f413d70ff1cb6def0a143484647
# Wed, 08 Jul 2026 18:12:07 GMT
ENV POSTGRES_JDBC_PREFIX=https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.11
# Wed, 08 Jul 2026 18:12:07 GMT
ENV POSTGRES_JDBC_ARTIFACT=postgresql-42.7.11.jar
# Wed, 08 Jul 2026 18:12:07 GMT
ENV POSTGRES_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.11.jar
# Wed, 08 Jul 2026 18:12:07 GMT
RUN curl -fSL "${POSTGRES_JDBC_PREFIX}/${POSTGRES_JDBC_ARTIFACT}" -o $POSTGRES_JDBC_TARGET &&   echo "$POSTGRES_JDBC_SHA256 $POSTGRES_JDBC_TARGET" | sha256sum -c - # buildkit
# Wed, 08 Jul 2026 18:12:07 GMT
COPY tomcat/setenv.sh /usr/local/tomcat/bin/ # buildkit
# Wed, 08 Jul 2026 18:12:07 GMT
COPY xwiki/hibernate.cfg.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml # buildkit
# Wed, 08 Jul 2026 18:12:07 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed # buildkit
# Wed, 08 Jul 2026 18:12:07 GMT
COPY xwiki/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 08 Jul 2026 18:12:07 GMT
VOLUME [/usr/local/xwiki]
# Wed, 08 Jul 2026 18:12:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 18:12:07 GMT
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
	-	`sha256:9c6107691464543a39798b30192c461439d3b2c447e4401c6e62cbbccaf467c0`  
		Last Modified: Wed, 08 Jul 2026 18:12:49 GMT  
		Size: 344.9 MB (344916395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e7683c5953cfaa89e27da956710a08c48d82d8f73d90a1499771980f4905b4`  
		Last Modified: Wed, 08 Jul 2026 18:12:40 GMT  
		Size: 1.1 MB (1067143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5508ff67f0f8f2313bbc6ad2e64ab377d96c21ca7f91484e5a612f1cf2cab07a`  
		Last Modified: Wed, 08 Jul 2026 18:12:40 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a052c41ed649784f4894ede1f31efbca20d08765fdbe0ec90156bf7c14fd02fc`  
		Last Modified: Wed, 08 Jul 2026 18:12:42 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c82bca283610012022058abdb69a6f118e323067d68a87a58854bb0c750e5aea`  
		Last Modified: Wed, 08 Jul 2026 18:12:42 GMT  
		Size: 11.0 KB (10978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21cf0c63aa08265b1f18d8e6a6c4bf31d6bbc3e2a04846659de067a2f86a427e`  
		Last Modified: Wed, 08 Jul 2026 18:12:43 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `xwiki:stable-postgres-tomcat` - unknown; unknown

```console
$ docker pull xwiki@sha256:8c7601cc08ae1490cffd1f9d517f6f2cf3ce8680295867906b37838952289f09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9224323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e44614df79803bfb4110067b6eb7fbc207646e51da7cb743f04d3be353c850d7`

```dockerfile
```

-	Layers:
	-	`sha256:f1559e2d4ed0f0faf8d494a6beef27d3f26dd35bc809bd95add3e2d69d97f0eb`  
		Last Modified: Wed, 08 Jul 2026 18:12:40 GMT  
		Size: 9.2 MB (9183397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fe8ea780fa454cbc837fd452125ba2668e7af4b003f8a2756883fe751e9b9c1`  
		Last Modified: Wed, 08 Jul 2026 18:12:40 GMT  
		Size: 40.9 KB (40926 bytes)  
		MIME: application/vnd.in-toto+json
