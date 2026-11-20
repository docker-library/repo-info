## `geonetwork:latest`

```console
$ docker pull geonetwork@sha256:a33bdc1a2819532ab52a81d2f4571cc6e824f40b8b1c1b9a740e1c08e3c71882
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `geonetwork:latest` - linux; amd64

```console
$ docker pull geonetwork@sha256:bf280951656bc55e456ef9ac71ce6a542a221529b1242e613562a3e3fde3f465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.1 MB (386090223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6d4039b437302bf7de455a8939787c9002df8137d23d489ef8a9cc498406598`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:16:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:08 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:08 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 20 Nov 2026 03:16:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:16:12 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:16:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:16:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 05:23:30 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 20 Nov 2026 05:23:30 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 05:23:30 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 20 Nov 2026 05:23:30 GMT
WORKDIR /usr/local/tomcat
# Fri, 20 Nov 2026 05:23:30 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 05:23:30 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 05:23:30 GMT
ENV TOMCAT_MAJOR=9
# Fri, 20 Nov 2026 05:23:30 GMT
ENV TOMCAT_VERSION=9.0.124
# Fri, 20 Nov 2026 05:23:30 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Fri, 20 Nov 2026 05:23:30 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 20 Nov 2026 05:23:34 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:23:34 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 20 Nov 2026 05:23:34 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 20 Nov 2026 05:23:34 GMT
ENTRYPOINT []
# Fri, 20 Nov 2026 05:23:34 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 06:09:31 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 20 Nov 2026 06:09:31 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Fri, 20 Nov 2026 06:09:31 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Fri, 20 Nov 2026 06:09:31 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Fri, 20 Nov 2026 06:09:31 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Fri, 20 Nov 2026 06:09:31 GMT
ENV GN_FILE=geonetwork.war
# Fri, 20 Nov 2026 06:09:31 GMT
ENV GN_VERSION=4.4.13
# Fri, 20 Nov 2026 06:09:31 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Fri, 20 Nov 2026 06:13:46 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 20 Nov 2026 06:13:46 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Fri, 20 Nov 2026 06:13:46 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 20 Nov 2026 06:13:46 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:13:46 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 20 Nov 2026 06:13:46 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 06:13:46 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22204a446d61a5c508d77bb65a30d1c8f3de5676e5ca1cf7e3d1b021041534a2`  
		Last Modified: Fri, 20 Nov 2026 03:16:24 GMT  
		Size: 23.1 MB (23065140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce736331c5c06eba329c68b1af5f6d0421d426dc6b9b4962d49b54b0823b33b`  
		Last Modified: Fri, 20 Nov 2026 03:16:25 GMT  
		Size: 47.4 MB (47351851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce285f790569815acdbe567279d1f20d877c14d7e771df89f179d4b5614f957`  
		Last Modified: Fri, 20 Nov 2026 03:16:23 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65e4f371433908ab06dbf9d35d38e1c0af12e8403f40e1ef5c2d8c3cee584a2d`  
		Last Modified: Fri, 20 Nov 2026 03:16:24 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8e0c31bf99d52fc3b38471c06673810e0192906eebbb814e8ab6f95b042283d`  
		Last Modified: Fri, 20 Nov 2026 05:23:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c63332f53b8a31226650324dd3976db93442449aa110467dbe82da7ff590dd`  
		Last Modified: Fri, 20 Nov 2026 05:23:44 GMT  
		Size: 14.2 MB (14157775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7bcf9db72c969fe105c62ab77ff3f61506e093138110dadb8e6185cf36eb3c`  
		Last Modified: Fri, 20 Nov 2026 05:23:44 GMT  
		Size: 225.4 KB (225415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2a3a79437ceb7843b58502da32bb4e9ca014200355fd5c91e98eb16e3d8dc94`  
		Last Modified: Fri, 20 Nov 2026 06:14:07 GMT  
		Size: 239.8 KB (239802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7c9d9c68dc2c6bd7f34ce12c0ba1a0073809a4810fc11b24b1265d428ab351b`  
		Last Modified: Fri, 20 Nov 2026 06:14:12 GMT  
		Size: 271.3 MB (271250088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04a84f1df711013dabfff6a4c22f3e2c0671f98c56c2ecb3d745f09d0fb47a76`  
		Last Modified: Fri, 20 Nov 2026 06:14:07 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b1720e17525d47642566b93d586387929fa34fe201204a67ff0fc347dec755b`  
		Last Modified: Fri, 20 Nov 2026 06:14:07 GMT  
		Size: 3.0 KB (3010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7508de44e82d37c34e9a70cecba3b2e806e63dd7e1ca2a7df545d4ca6b152bd`  
		Last Modified: Fri, 20 Nov 2026 06:14:08 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:d940356fac63b21c3bed87ac75460d8fada7ee64d6039e934b299499e303153b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4111183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97ecf64a8f2b326226bf9181e02c1e825365c0a6acb389ce79b11ea9ff2b261d`

```dockerfile
```

-	Layers:
	-	`sha256:e94ece4206fb6ea199f367d161e6b1aaa1136f2cf4eeba326ddb210dfca781cf`  
		Last Modified: Fri, 20 Nov 2026 06:14:07 GMT  
		Size: 4.1 MB (4085627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7dcf7932d77e93a88cfc4321b211f21a19002751176ce4f34b493cd9361a498a`  
		Last Modified: Fri, 20 Nov 2026 06:14:07 GMT  
		Size: 25.6 KB (25556 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:latest` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:3c606769f88f30435375aeced45149f506596efb2e62c8c2fb0d0bf5c8fab195
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.3 MB (379286891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0627745d3277862b91797ec465401087644754016c832eba1eac667e477c906`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:05 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:05 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:08 GMT
ADD file:eddbc4b43f6fadc774a0b15ea483785d3cb23b1b831791ed71908357858f40a9 in / 
# Tue, 10 Nov 2026 18:31:08 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:10:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:10:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:10:50 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:50 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:10:50 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 20 Nov 2026 03:10:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:10:54 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:10:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 05:15:07 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 20 Nov 2026 05:15:07 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 05:15:07 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 20 Nov 2026 05:15:07 GMT
WORKDIR /usr/local/tomcat
# Fri, 20 Nov 2026 05:15:07 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 05:15:07 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 05:15:07 GMT
ENV TOMCAT_MAJOR=9
# Fri, 20 Nov 2026 05:15:07 GMT
ENV TOMCAT_VERSION=9.0.124
# Fri, 20 Nov 2026 05:15:07 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Fri, 20 Nov 2026 05:15:07 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 20 Nov 2026 05:15:11 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:15:12 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 20 Nov 2026 05:15:12 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 20 Nov 2026 05:15:12 GMT
ENTRYPOINT []
# Fri, 20 Nov 2026 05:15:12 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 06:11:47 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 20 Nov 2026 06:11:47 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Fri, 20 Nov 2026 06:11:47 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Fri, 20 Nov 2026 06:11:47 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Fri, 20 Nov 2026 06:11:47 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Fri, 20 Nov 2026 06:11:47 GMT
ENV GN_FILE=geonetwork.war
# Fri, 20 Nov 2026 06:11:47 GMT
ENV GN_VERSION=4.4.13
# Fri, 20 Nov 2026 06:11:47 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Fri, 20 Nov 2026 06:17:37 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 20 Nov 2026 06:17:37 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Fri, 20 Nov 2026 06:17:37 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 20 Nov 2026 06:17:37 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:17:37 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 20 Nov 2026 06:17:37 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 06:17:37 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:791147b088b7508116b0b388cfcf00e16fa77f527003abee70726bcdb34b8248`  
		Last Modified: Tue, 10 Nov 2026 20:09:32 GMT  
		Size: 26.9 MB (26921983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43063749a7e6d146f47074c67b1548358b37a0bce5457db1140e00d6580ba10f`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 21.1 MB (21124420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73e525a9154023d997e225f0dfcc2dc6ce03644fbcee285bc8dd0365a8ebe212`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 45.5 MB (45466491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2d85abbea3ee99bca735defa37e6aae96725cf755ae10ed660ded73646a958`  
		Last Modified: Fri, 20 Nov 2026 03:11:05 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8df08756ae8a9dea719c2773ee93c828a2b1573ed7cb82d083bd3200bc63fac`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:954c8df0114f35f4211caf8d0a0d14039ff83b059a81c4301d34d30efc0bdd53`  
		Last Modified: Fri, 20 Nov 2026 05:15:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1a2c23c2e58e6d6b925e234ca967348f8a330814aa44d192c96247a2b2adc14`  
		Last Modified: Fri, 20 Nov 2026 05:15:21 GMT  
		Size: 14.1 MB (14092925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e06e39f585cb94f198ae01dd6447b2527e5aa8c343f3f74075b2e557417ab7`  
		Last Modified: Fri, 20 Nov 2026 05:15:21 GMT  
		Size: 197.1 KB (197062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:992f1a6a5de38980d6369ef31308a0c53b944f2abcfe9e7a18950aa4874370a2`  
		Last Modified: Fri, 20 Nov 2026 06:17:59 GMT  
		Size: 227.0 KB (227023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:779fd6cc06765df4f595312d9425e14529572c0d84c2b4a43d79e46c83269d80`  
		Last Modified: Fri, 20 Nov 2026 06:18:05 GMT  
		Size: 271.3 MB (271250128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4214eaf1f2fd89e1577019753f6290e3c8df302fd2c331bc94977db9eeb8d05`  
		Last Modified: Fri, 20 Nov 2026 06:17:59 GMT  
		Size: 323.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6696543e89ea029c00696e2f9d3aaf993e964160f6dbd207d08400d86355174e`  
		Last Modified: Fri, 20 Nov 2026 06:17:59 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f578192ca0a6be71f499cbdfbff10f3abe6abde1ea862bba722774bc80ed4981`  
		Last Modified: Fri, 20 Nov 2026 06:18:01 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:1c05f87d7dd6a906cd488d9f6ba596e6d065f9545e86fa5861af8b3fd96fa224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4114874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b6c3b98a7876cc09f6b6c9af7e06af2fcacd7be685d8fcbb9eea53745f35c9`

```dockerfile
```

-	Layers:
	-	`sha256:d1d36014f2baabb65f6043b6f0f9a24824bea6e31953a22dacc9dca538ad608f`  
		Last Modified: Fri, 20 Nov 2026 06:17:59 GMT  
		Size: 4.1 MB (4089226 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b132873c0789ac726ec5ede864a3d4ec724bf96b23272b1f20ceb5c1f5709ae4`  
		Last Modified: Fri, 20 Nov 2026 06:17:59 GMT  
		Size: 25.6 KB (25648 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:latest` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:818d9784eac0005f65cde5379ca0d5cc4f7f412789a9fc7d5e7ccfbd4f9386e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.4 MB (383366753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b1c3922db8815b1df830a25523445ab67db68b8d3f0b819dd7fa7a96f7a0407`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:16:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:43 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:43 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 20 Nov 2026 03:16:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:16:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:16:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:16:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 05:27:15 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 20 Nov 2026 05:27:15 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 05:27:15 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 20 Nov 2026 05:27:15 GMT
WORKDIR /usr/local/tomcat
# Fri, 20 Nov 2026 05:27:15 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 05:27:15 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 05:27:15 GMT
ENV TOMCAT_MAJOR=9
# Fri, 20 Nov 2026 05:27:15 GMT
ENV TOMCAT_VERSION=9.0.124
# Fri, 20 Nov 2026 05:27:15 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Fri, 20 Nov 2026 05:27:15 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 20 Nov 2026 05:27:19 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:27:19 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 20 Nov 2026 05:27:19 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 20 Nov 2026 05:27:19 GMT
ENTRYPOINT []
# Fri, 20 Nov 2026 05:27:19 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 06:11:23 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 20 Nov 2026 06:11:23 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Fri, 20 Nov 2026 06:11:23 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Fri, 20 Nov 2026 06:11:23 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Fri, 20 Nov 2026 06:11:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Fri, 20 Nov 2026 06:11:23 GMT
ENV GN_FILE=geonetwork.war
# Fri, 20 Nov 2026 06:11:23 GMT
ENV GN_VERSION=4.4.13
# Fri, 20 Nov 2026 06:11:23 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Fri, 20 Nov 2026 06:15:59 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 20 Nov 2026 06:15:59 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Fri, 20 Nov 2026 06:15:59 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 20 Nov 2026 06:15:59 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:15:59 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 20 Nov 2026 06:15:59 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 06:15:59 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea5d5df4030233bd31e6a620d428c4290fc63dfe72c8054a74856a8e27ae751f`  
		Last Modified: Fri, 20 Nov 2026 03:17:00 GMT  
		Size: 22.8 MB (22849587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:207b120005bc82f0a9a91cc2268def6658d668a68f8e9f9d06307061f15e5d0f`  
		Last Modified: Fri, 20 Nov 2026 03:17:00 GMT  
		Size: 45.7 MB (45662240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba2707d88da04917d7b80436f7f205a5722cbfca20f8e380d29825bc0327e32`  
		Last Modified: Fri, 20 Nov 2026 03:16:59 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99437a2bf9c718aa4669f1cebb12df348be7845a3c0ee70fc2df8a7678fea34`  
		Last Modified: Fri, 20 Nov 2026 03:16:59 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3aab5015d8392fda0188cbba20fbaafecdfd1f874365f473769cae476935f1`  
		Last Modified: Fri, 20 Nov 2026 05:27:28 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b46ed9f305fa7ab62880850b9fd1d1e68f9c41a7b56ddc4736d88f648d3400fc`  
		Last Modified: Fri, 20 Nov 2026 05:27:28 GMT  
		Size: 14.2 MB (14167511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c55e3257bbe17f9fb3bff0028f94155fb5c721915c7852171033b8888fadb5`  
		Last Modified: Fri, 20 Nov 2026 05:27:28 GMT  
		Size: 226.0 KB (226024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90d1a3c9ea2bb8f5e01e463ea3a8243c4add55373f621fe982dc66c41f631c7`  
		Last Modified: Fri, 20 Nov 2026 06:16:22 GMT  
		Size: 239.1 KB (239090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03fc548edffeac2593f46349b88233178a0b9c3d51f3dcbeeb2586a44558d6c`  
		Last Modified: Fri, 20 Nov 2026 06:16:28 GMT  
		Size: 271.3 MB (271250127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c860d398f4ff0f607ddce2b30db6b5554861ad0544f681a61d65b4cfdf2e506`  
		Last Modified: Fri, 20 Nov 2026 06:16:22 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5108bb72d78603a3354dc3e4b1b2f596a0979ddcef6bc0ee080dbfcaf67d4a7d`  
		Last Modified: Fri, 20 Nov 2026 06:16:21 GMT  
		Size: 3.0 KB (3010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b765203c3928cc46575ee487d8c9249fdb4f523d79dee9c25cf919b7cff45b`  
		Last Modified: Fri, 20 Nov 2026 06:16:23 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:0d9a4c99540e5b862938933c573a349cb20b6aecf3c64fe761febb0933b8d8c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4112392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b37e2eaa957b7d34ca86a091d27ae04916519858aba7d3a1082b33b479ee9cc`

```dockerfile
```

-	Layers:
	-	`sha256:191fed1af16824d45fd9152ed4902274367fb4f05b2541bf1edcad8ef90dad75`  
		Last Modified: Fri, 20 Nov 2026 06:16:22 GMT  
		Size: 4.1 MB (4086717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4fb14bf97f2d80aa88f81d4a1c4d975a21881adff895a246c86f8d46696e287b`  
		Last Modified: Fri, 20 Nov 2026 06:16:21 GMT  
		Size: 25.7 KB (25675 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:latest` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:3c7454dd31cf73826c484eb67c99ac52ee1528e8916adebd7d37af42bb0fba71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.8 MB (433804195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72449b21282df729d97d63f32634ba4a2eb6d206e95dc5a6a65232aed3fb1357`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 01:42:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:42:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:42:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 12 Nov 2026 01:42:18 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:42:18 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Thu, 12 Nov 2026 01:48:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 12 Nov 2026 01:48:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 12 Nov 2026 01:48:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 12 Nov 2026 01:48:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 09:20:17 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 12 Nov 2026 09:20:17 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 09:20:17 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 12 Nov 2026 09:20:17 GMT
WORKDIR /usr/local/tomcat
# Thu, 12 Nov 2026 09:20:17 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 09:20:17 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 09:20:17 GMT
ENV TOMCAT_MAJOR=9
# Thu, 12 Nov 2026 09:20:17 GMT
ENV TOMCAT_VERSION=9.0.124
# Thu, 12 Nov 2026 09:20:17 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 01:39:11 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 01:39:40 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 01:39:42 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 01:39:42 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 01:39:42 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 01:39:42 GMT
CMD ["catalina.sh" "run"]
# Sat, 14 Nov 2026 02:08:57 GMT
ENV DATA_DIR=/catalogue-data
# Sat, 14 Nov 2026 02:08:57 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Sat, 14 Nov 2026 02:08:57 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Sat, 14 Nov 2026 02:08:57 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Sat, 14 Nov 2026 02:08:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Sat, 14 Nov 2026 02:08:57 GMT
ENV GN_FILE=geonetwork.war
# Sat, 14 Nov 2026 02:08:57 GMT
ENV GN_VERSION=4.4.12
# Sat, 14 Nov 2026 02:08:57 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Sat, 14 Nov 2026 02:09:10 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Sat, 14 Nov 2026 02:09:11 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Sat, 14 Nov 2026 02:09:11 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Sat, 14 Nov 2026 02:09:12 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Sat, 14 Nov 2026 02:09:12 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Sat, 14 Nov 2026 02:09:12 GMT
CMD ["catalina.sh" "run"]
# Sat, 14 Nov 2026 02:09:12 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1a2eaa2f10ad948abed3101e624aa8a0b930bc8d06d4be10fffc1fc5e7ccbb`  
		Last Modified: Thu, 12 Nov 2026 01:43:03 GMT  
		Size: 18.8 MB (18782511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e398b30142adf23c4b88a678293a1679be5e6f7948eb0318c345d391397dd6d`  
		Last Modified: Thu, 12 Nov 2026 01:48:56 GMT  
		Size: 42.4 MB (42373156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7fde7ca8bb3a43907d18e2485f7100cb950434616fce7ba7b9562bc2607e10a`  
		Last Modified: Thu, 12 Nov 2026 01:48:55 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c833b76039fbecd9f6fa40d449cfccfcb8f5dbb99adcf044ebece9a286c206`  
		Last Modified: Thu, 12 Nov 2026 01:48:55 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d6f226fbc6da69f8482ecc421295d8ceb88334e5d3d43646daea030c4855bf4`  
		Last Modified: Thu, 12 Nov 2026 09:22:24 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b190be2f59bb8c9d0505e5124fdb68d557688f7e8ea0a7eb43d83af11deadf33`  
		Last Modified: Sat, 14 Nov 2026 01:40:04 GMT  
		Size: 14.2 MB (14194589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d740c863b6fc2b1485522d4cf5d4d86ca1c7ea9bfbf3b9a3b683b7da51ade12c`  
		Last Modified: Sat, 14 Nov 2026 01:40:04 GMT  
		Size: 13.7 MB (13652269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb20d58e9eefa18bb0e3ddeb5806db777c82b1523a87edbf49da7fac40986e5a`  
		Last Modified: Sat, 14 Nov 2026 02:10:06 GMT  
		Size: 271.0 KB (271011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31de9c1850df7658cb81e065df185360084edd0447730f78e45d4d19ae0184aa`  
		Last Modified: Sat, 14 Nov 2026 02:10:12 GMT  
		Size: 310.1 MB (310117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:740784d351680b1697407c481721c2bcfd25179b04f541c3187ffc9d3c61e229`  
		Last Modified: Sat, 14 Nov 2026 02:10:05 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18a90473fdd511ec01ae3a2f2e6cc52560525d92118ac579c1f8e806957c9d8`  
		Last Modified: Sat, 14 Nov 2026 02:10:06 GMT  
		Size: 3.0 KB (3013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd16efdfb02d63a3e8bda04ca1895d0afed919773cd0776724766319470c15f9`  
		Last Modified: Sat, 14 Nov 2026 02:10:07 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:c8845e4396371377f5217aa7dee6d13d3e947c42e1309510a31a8e2c2df479ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4207154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64dce4a6bb247e1da15bcbe1eedaece172ce28818faf0834ab2276b9c6f1ace3`

```dockerfile
```

-	Layers:
	-	`sha256:8af2dbb0b6505d2c1db371b507bf601330a0ca25757865f7c0d5e2652846a48d`  
		Last Modified: Sat, 14 Nov 2026 02:10:05 GMT  
		Size: 4.2 MB (4181540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03a45b123bb8877942b5c104081bfa2c131eba3e4083242fb30ace4419f3d0c4`  
		Last Modified: Sat, 14 Nov 2026 02:10:05 GMT  
		Size: 25.6 KB (25614 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:latest` - linux; s390x

```console
$ docker pull geonetwork@sha256:92076d7dbe4387d2826de795a42437372e29a75c26969665ae709acdd66eac2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.7 MB (379694106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad23b4766e4abb451b78c20eeeb61987cc1f03b6cc648e658b8ae1cd354993ab`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 18:30:54 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:30:54 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:30:54 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:30:56 GMT
ADD file:f57d73889514e35770bca8a6b376ae28a49d35f7eca0530120c0e5edda118257 in / 
# Tue, 10 Nov 2026 18:30:56 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:09:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:09:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:09:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:09:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:09:03 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 20 Nov 2026 03:09:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:09:22 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:09:22 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:09:22 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 05:20:45 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 20 Nov 2026 05:20:45 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 05:20:45 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 20 Nov 2026 05:20:45 GMT
WORKDIR /usr/local/tomcat
# Fri, 20 Nov 2026 05:20:45 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 05:20:45 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 05:20:45 GMT
ENV TOMCAT_MAJOR=9
# Fri, 20 Nov 2026 05:20:45 GMT
ENV TOMCAT_VERSION=9.0.124
# Fri, 20 Nov 2026 05:20:45 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Fri, 20 Nov 2026 05:22:02 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 20 Nov 2026 05:22:04 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:22:05 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 20 Nov 2026 05:22:05 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 20 Nov 2026 05:22:05 GMT
ENTRYPOINT []
# Fri, 20 Nov 2026 05:22:05 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 06:24:30 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 20 Nov 2026 06:24:30 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Fri, 20 Nov 2026 06:24:30 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Fri, 20 Nov 2026 06:24:30 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Fri, 20 Nov 2026 06:24:30 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Fri, 20 Nov 2026 06:24:30 GMT
ENV GN_FILE=geonetwork.war
# Fri, 20 Nov 2026 06:24:30 GMT
ENV GN_VERSION=4.4.13
# Fri, 20 Nov 2026 06:24:30 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Fri, 20 Nov 2026 06:29:42 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 20 Nov 2026 06:29:42 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Fri, 20 Nov 2026 06:29:42 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 20 Nov 2026 06:29:42 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:29:42 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 20 Nov 2026 06:29:42 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 06:29:42 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:d6a4828736418640f88890fd03d6d03e5c40e83e24d598ed323f41ba7e349b4f`  
		Last Modified: Tue, 10 Nov 2026 20:09:53 GMT  
		Size: 30.0 MB (29967433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c7cd21b4d8d9492112542b905ec30c3fb4ad466d6610ff1b23bfe8c91d966e`  
		Last Modified: Fri, 20 Nov 2026 03:09:32 GMT  
		Size: 22.8 MB (22787357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66364cee1d0dac41958736130dbdd9d084c7f0680a2ae143df2df72fef53dace`  
		Last Modified: Fri, 20 Nov 2026 03:09:39 GMT  
		Size: 41.0 MB (41031182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29c41293fd619d82904ccc46104b012633dd80e6c8c9e3a330adfef2979613e3`  
		Last Modified: Fri, 20 Nov 2026 03:09:39 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dda2356416ab32c6201d6bce9bdf08b1165bcf84fbdc1af2f12b0aa8bffa4dd`  
		Last Modified: Fri, 20 Nov 2026 03:09:39 GMT  
		Size: 2.5 KB (2466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d5318dff463716fb101fe00428187a878d474e42160148ab04c1cba37b010f9`  
		Last Modified: Fri, 20 Nov 2026 05:21:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:429c97eaba60c8f88ad8f25f93d187ad60ba91ca8b0b6c9dfa96956630295323`  
		Last Modified: Fri, 20 Nov 2026 05:22:18 GMT  
		Size: 14.2 MB (14166758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91d529cadfdac40b1bca50c5b4507b6753ab096cf6158bbd8198546b3d94ae87`  
		Last Modified: Fri, 20 Nov 2026 05:22:18 GMT  
		Size: 233.5 KB (233489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40e90f8d389803d7fc50f47ffbba15a7917355434a3d17fbb495b5d4d3f489d7`  
		Last Modified: Fri, 20 Nov 2026 06:30:12 GMT  
		Size: 250.9 KB (250900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf9abe4edb03668d52e16d5aec3892e847c72b64b09bda421bc14a69c53eea2`  
		Last Modified: Fri, 20 Nov 2026 06:30:16 GMT  
		Size: 271.3 MB (271250129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55b5e60d14c8fdc41c8e7f9c7a3b8f771cec127544942ed86024d72a646d3375`  
		Last Modified: Fri, 20 Nov 2026 06:30:12 GMT  
		Size: 323.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:747528830395ef20625cf79ed01842e88175577987a899b91c188514b89a6eaf`  
		Last Modified: Fri, 20 Nov 2026 06:30:12 GMT  
		Size: 3.0 KB (3008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2fbd85516d00836f04b17c1db258bf71597a404d97b2d80aa2e9de8b5cfbd2`  
		Last Modified: Fri, 20 Nov 2026 06:30:13 GMT  
		Size: 700.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:bba7d979676b7379dfacf3961d59c2db4859fd22cfa740865fc8028d291eb152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4112142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbadb207ee61546d7f0553263eda60679de69991b58199aca1e2514ced012ac6`

```dockerfile
```

-	Layers:
	-	`sha256:e70a8ed9c79a33e5f1fba794a2f5a0710156ad84f0d50fff4204234cc48d511f`  
		Last Modified: Fri, 20 Nov 2026 06:30:12 GMT  
		Size: 4.1 MB (4086586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9da9e496c03417054b2da5c325d078c1965de26c1ada30af8321d6eac746f79`  
		Last Modified: Fri, 20 Nov 2026 06:30:12 GMT  
		Size: 25.6 KB (25556 bytes)  
		MIME: application/vnd.in-toto+json
