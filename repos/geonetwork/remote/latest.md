## `geonetwork:latest`

```console
$ docker pull geonetwork@sha256:b8d8e89340a50603dcbd37c85c969eb80eab14e8d53efddea9c7c984c3abac06
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
$ docker pull geonetwork@sha256:8b330fc5d5bf85bcbfcf4d5cacdd393455f261faf7b85809905bb6f14fb0c2a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.9 MB (420942002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c14b572b0d47c5f749532a8ad8510f4d963331503dd8206821c70ba2ccd3444`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:16:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:16:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:16:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:16:48 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:16:48 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 02 Oct 2026 01:18:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:18:07 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:18:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:18:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:27:12 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:27:12 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:27:12 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:27:12 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:27:12 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:27:12 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:27:12 GMT
ENV TOMCAT_MAJOR=9
# Fri, 02 Oct 2026 03:27:12 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 02 Oct 2026 03:27:12 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 02 Oct 2026 03:27:12 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:27:18 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:27:19 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:27:19 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:27:19 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:27:19 GMT
CMD ["catalina.sh" "run"]
# Fri, 02 Oct 2026 04:15:27 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 02 Oct 2026 04:15:27 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Fri, 02 Oct 2026 04:15:27 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Fri, 02 Oct 2026 04:15:27 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Fri, 02 Oct 2026 04:15:27 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Fri, 02 Oct 2026 04:15:27 GMT
ENV GN_FILE=geonetwork.war
# Fri, 02 Oct 2026 04:15:27 GMT
ENV GN_VERSION=4.4.12
# Fri, 02 Oct 2026 04:15:27 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Fri, 02 Oct 2026 04:15:36 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 02 Oct 2026 04:15:36 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Fri, 02 Oct 2026 04:15:36 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 02 Oct 2026 04:15:36 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 04:15:36 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 02 Oct 2026 04:15:36 GMT
CMD ["catalina.sh" "run"]
# Fri, 02 Oct 2026 04:15:36 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7cd1dbf8a5842bdc2ec8501846e481be1791777b37ee2797f064a34f84e0c8`  
		Last Modified: Fri, 02 Oct 2026 01:17:04 GMT  
		Size: 19.4 MB (19375560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9af4c7a1caa124134af25949c9a8dedd749e5f7c21907ea947304d2f186ba4`  
		Last Modified: Fri, 02 Oct 2026 01:18:20 GMT  
		Size: 47.3 MB (47336813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:258f3d869c8e0e9201afc8df07240dfbc3a85105c197bd561b36ac0276bbdf6a`  
		Last Modified: Fri, 02 Oct 2026 01:18:18 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6c72d9ca90e9a0f22f48e2c52a77be8170827e43217897b44bed16ff01b52e`  
		Last Modified: Fri, 02 Oct 2026 01:18:18 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb89a70d755c144c1916045a9f9f8d719e446dde486d9954ca802405fb7ef74`  
		Last Modified: Fri, 02 Oct 2026 03:27:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc69fc5e63d8529d9604999c3030ade5b850c904fbd8827e640bb175d77fcb4`  
		Last Modified: Fri, 02 Oct 2026 03:27:27 GMT  
		Size: 13.9 MB (13875478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a79f2d9e59df795ef6e2168e8546511657b8082c26612213690077596522df`  
		Last Modified: Fri, 02 Oct 2026 03:27:27 GMT  
		Size: 225.6 KB (225594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b22939d60eca239bfcce2b848cd0510dbcf08348a6456c5e0db1b56ca5fbd3eb`  
		Last Modified: Fri, 02 Oct 2026 04:16:00 GMT  
		Size: 240.0 KB (239972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83e5952fb1ea8017614299438cdbb8fb2c5d12887e0a0b4411da6784e9515e81`  
		Last Modified: Fri, 02 Oct 2026 04:16:05 GMT  
		Size: 310.1 MB (310117308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85bfad06f9305d2374688c8b5b6f8664fe1739b67d0e21390ef7f8b156d93bc8`  
		Last Modified: Fri, 02 Oct 2026 04:16:00 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:992c5efe2e03584177abc0868d77550fce9c0fc9c392502953b8bcc87f29d70e`  
		Last Modified: Fri, 02 Oct 2026 04:16:00 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b7d0958b9d629f8ad6de180819deb5dad68d12b3bcef08ffbd58abf1751e4ec`  
		Last Modified: Fri, 02 Oct 2026 04:16:01 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:26c8f011c033ec1008910418936b119ec007073c923f087d4357867a3e613ef7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4204285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f15d76366428f5c570e0ff7a08694cece2a31d393cff2a6efd8d57ba7bbc1817`

```dockerfile
```

-	Layers:
	-	`sha256:7e00d4b5266b6424215556577736d2882e804fc86460d53af88f7732177af6a6`  
		Last Modified: Fri, 02 Oct 2026 04:16:00 GMT  
		Size: 4.2 MB (4178727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbd5705e46cc375856610ddfa7da6b9ec555080ef0ad8f15ce796a0e0a0fa774`  
		Last Modified: Fri, 02 Oct 2026 04:16:00 GMT  
		Size: 25.6 KB (25558 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:latest` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:5d03727f722eb06752b1b251d0c5edd06d7e1504e9f11b4ec27966f11aa9444a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.8 MB (414780292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa9d7538250a4a7189a5dc569d30c4790d759f7a29c3541a827017e1493f87e`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:04 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:04 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:07 GMT
ADD file:6a6fc23d8622292f593d77713efad1a8007c6c40500c31d016c65acd4c58e812 in / 
# Fri, 18 Sep 2026 21:23:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:12:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:12:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:12:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:18 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:12:18 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 02 Oct 2026 01:12:21 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:12:21 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:12:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:17:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:17:47 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:17:47 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:17:47 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:17:47 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:17:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:17:47 GMT
ENV TOMCAT_MAJOR=9
# Fri, 02 Oct 2026 03:17:47 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 02 Oct 2026 03:17:47 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 02 Oct 2026 03:17:47 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:17:52 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:17:53 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:17:53 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:17:53 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:17:53 GMT
CMD ["catalina.sh" "run"]
# Fri, 02 Oct 2026 04:12:44 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 02 Oct 2026 04:12:44 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Fri, 02 Oct 2026 04:12:44 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Fri, 02 Oct 2026 04:12:44 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Fri, 02 Oct 2026 04:12:44 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Fri, 02 Oct 2026 04:12:44 GMT
ENV GN_FILE=geonetwork.war
# Fri, 02 Oct 2026 04:12:44 GMT
ENV GN_VERSION=4.4.12
# Fri, 02 Oct 2026 04:12:44 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Fri, 02 Oct 2026 04:12:55 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 02 Oct 2026 04:12:55 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Fri, 02 Oct 2026 04:12:55 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 02 Oct 2026 04:12:55 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 04:12:55 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 02 Oct 2026 04:12:55 GMT
CMD ["catalina.sh" "run"]
# Fri, 02 Oct 2026 04:12:55 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:07637771fb245c4f2be7dab6c9c8a012b4b667b827aa566885f001a405a147d5`  
		Last Modified: Fri, 18 Sep 2026 22:30:04 GMT  
		Size: 26.9 MB (26895617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d0163e87e816d87f7afc1005824b64655519623008a457792d787e64f4bcff`  
		Last Modified: Fri, 02 Oct 2026 01:12:33 GMT  
		Size: 18.1 MB (18079560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a5204e0fb7bbe1303207157ee750869ae1786d80733535ee42f830ae1b2aec`  
		Last Modified: Fri, 02 Oct 2026 01:12:34 GMT  
		Size: 45.4 MB (45444170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83017567a4130c6a9764316ed67171157a6e40693865703d6780e013871d8b24`  
		Last Modified: Fri, 02 Oct 2026 01:12:32 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb86edb918e4bdc64098b15325abfdadef6ef78cdabfacd58b5f007cd81d5402`  
		Last Modified: Fri, 02 Oct 2026 01:12:33 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca9c9199802454efb61e35fc41b5cf6540af317558d25bb76d717d46c511db9a`  
		Last Modified: Fri, 02 Oct 2026 03:18:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3727c8ea7385d6bfef07b5fec6422ca807ce34247288af253b8bf221b60640d`  
		Last Modified: Fri, 02 Oct 2026 03:18:02 GMT  
		Size: 13.8 MB (13812720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ca2dd7961e22af8fe3ae13d2387d214660c90f1943a900cfbe05dc1516f2b98`  
		Last Modified: Fri, 02 Oct 2026 03:18:02 GMT  
		Size: 197.0 KB (197036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfede7ab289fa65b18a317073864cb42ea2c71975309845dde0dc22a3847f723`  
		Last Modified: Fri, 02 Oct 2026 04:13:20 GMT  
		Size: 227.0 KB (226997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a71f3f868175e6a21b94c77410268a0124841fcf4d24b8af8138d60c4d2018`  
		Last Modified: Fri, 02 Oct 2026 04:13:26 GMT  
		Size: 310.1 MB (310117336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eca2af4913a9897af51fa202a392dd6e1e432ce1097e25b288d736fb81b8872`  
		Last Modified: Fri, 02 Oct 2026 04:13:20 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f95b82fadabc538d8965a6b3e2c0b6e08098cecee7df2b3959552681f5a13f`  
		Last Modified: Fri, 02 Oct 2026 04:13:20 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a192412a82949c6bbfe64142cb734ead88b4bd3a256af18471704b356e714cd`  
		Last Modified: Fri, 02 Oct 2026 04:13:21 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:9b3ea00201db977f33a2bdc97a420197c5c0fa72d29bb8c9b8709fa7ed1a1c0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4207981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b64d89a09e368d3ee03001337c5e7275332506c1eb5fe364df9830d7f74dfc48`

```dockerfile
```

-	Layers:
	-	`sha256:6352d53e0b84c0a3a658010c8cb2618ae3511080ff724649036b19d5b97db7bd`  
		Last Modified: Fri, 02 Oct 2026 04:13:20 GMT  
		Size: 4.2 MB (4182330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faaf35a88669dfa497726dc087799227a621c862f0a3bf550c9e05fe683526c8`  
		Last Modified: Fri, 02 Oct 2026 04:13:19 GMT  
		Size: 25.7 KB (25651 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:latest` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:d58968e74bca208b0d78af72e32c9bac9d29fdfa667f122dad73db7471c0f91b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.3 MB (418297024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fcb2534f029ed4a0f7637d426628f1c7aef1391e23838cb593ebe2d74cec6b7`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:18:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:18:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:18:06 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:18:06 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:18:06 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 02 Oct 2026 01:18:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:18:09 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:18:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:18:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:26:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:26:26 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:26:26 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:26:26 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:26:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:26:26 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:26:26 GMT
ENV TOMCAT_MAJOR=9
# Fri, 02 Oct 2026 03:26:26 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 02 Oct 2026 03:26:26 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 02 Oct 2026 03:26:26 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:26:32 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:26:33 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:26:33 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:26:33 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:26:33 GMT
CMD ["catalina.sh" "run"]
# Fri, 02 Oct 2026 04:15:49 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 02 Oct 2026 04:15:49 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Fri, 02 Oct 2026 04:15:49 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Fri, 02 Oct 2026 04:15:49 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Fri, 02 Oct 2026 04:15:49 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Fri, 02 Oct 2026 04:15:49 GMT
ENV GN_FILE=geonetwork.war
# Fri, 02 Oct 2026 04:15:49 GMT
ENV GN_VERSION=4.4.12
# Fri, 02 Oct 2026 04:15:49 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Fri, 02 Oct 2026 04:15:58 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 02 Oct 2026 04:15:59 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Fri, 02 Oct 2026 04:15:59 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 02 Oct 2026 04:15:59 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 04:15:59 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 02 Oct 2026 04:15:59 GMT
CMD ["catalina.sh" "run"]
# Fri, 02 Oct 2026 04:15:59 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328d3467b43628053d27fe9f4abbcf94c90866a802e1491b3c8e22d3c2f5d8ba`  
		Last Modified: Fri, 02 Oct 2026 01:18:21 GMT  
		Size: 19.2 MB (19241372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23b753e324ccba59396a1def5bfb4d12d31a03c00b0294ea671adf681ca06e9c`  
		Last Modified: Fri, 02 Oct 2026 01:18:22 GMT  
		Size: 45.6 MB (45638582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:838b5a5e641323c88f75b00e25cd63c2a25cc8b4212a9c66ae529ab36cfb0693`  
		Last Modified: Fri, 02 Oct 2026 01:18:21 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004cda3cbee740aa3eb36ea81c20fa4b64f316bdf683dcafe537cff8d3f4bd7b`  
		Last Modified: Fri, 02 Oct 2026 01:18:06 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551d8627a061e7dae98d597703278710d46bfeef84d4fc8be5a8a719342897c0`  
		Last Modified: Fri, 02 Oct 2026 03:26:41 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff1ff5f2779224c152b095495f959a4c8feca7ac3e55c8b16f49f80bf3ea2ffe`  
		Last Modified: Fri, 02 Oct 2026 03:26:41 GMT  
		Size: 13.9 MB (13888100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a3c08699deb5a37bc597067be27654e89c19aecfb695a673a4c32ac0edcb5ae`  
		Last Modified: Fri, 02 Oct 2026 03:26:41 GMT  
		Size: 225.8 KB (225822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7803ead3b5b973b6ace6cd2539df74dcfd05209585967e9bd9d18bf70c28797c`  
		Last Modified: Fri, 02 Oct 2026 04:16:24 GMT  
		Size: 238.9 KB (238946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9280330cab2e4a2a13fc74119500d0de6867608ab31ed60ec261467de35b4c`  
		Last Modified: Fri, 02 Oct 2026 04:16:29 GMT  
		Size: 310.1 MB (310117261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef5196bede4bd6f8c7bf5b36ec8567584a867aa2cc4ddb5c2be94a2b32161800`  
		Last Modified: Fri, 02 Oct 2026 04:16:24 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a118c10935e8ed6625a5324a308a841a025906de958839b04b815638e8a78823`  
		Last Modified: Fri, 02 Oct 2026 04:16:24 GMT  
		Size: 3.0 KB (3010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00594e02d1e54fdce40b59e3b47c3af9070d1f674ff309e66bf5dfdbf7c4c61`  
		Last Modified: Fri, 02 Oct 2026 04:16:24 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:1e2ed35ed6b582a6221200c0b2c1336455c0b750ed11965f790b344aaf3a2cab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4205494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0871018ba74bbb5a262887835c78a395cce4252eec345ca00aa81055a151ed7`

```dockerfile
```

-	Layers:
	-	`sha256:13290421fed16257a5f469af1e14112fbfb285f192332171c4b39246d47d7fc2`  
		Last Modified: Fri, 02 Oct 2026 04:16:24 GMT  
		Size: 4.2 MB (4179817 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1dcff17a1422e392d0db83ccb8b5b1e2a56df6b47ca03905d3abe56e684b0427`  
		Last Modified: Fri, 02 Oct 2026 04:16:24 GMT  
		Size: 25.7 KB (25677 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:latest` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:194831d6679bd3fb28f6d3de937dc153b0049ae3df9a94fc854040ed6d4e3971
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.5 MB (420526250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f93ea41c5742165b4b91a99e67d3206ab6aef0c0213b7ac013c636cdeb1903`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:34:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:34:03 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:43:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:43:12 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:43:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:43:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 26 Sep 2026 06:06:13 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 26 Sep 2026 06:06:13 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 06:06:13 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 26 Sep 2026 06:06:14 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 06:06:14 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 06:06:14 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 06:06:14 GMT
ENV TOMCAT_MAJOR=9
# Sat, 26 Sep 2026 06:06:14 GMT
ENV TOMCAT_VERSION=9.0.122
# Sat, 26 Sep 2026 06:06:14 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Sat, 26 Sep 2026 06:10:37 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 26 Sep 2026 06:10:45 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 06:10:47 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 26 Sep 2026 06:10:47 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 26 Sep 2026 06:10:47 GMT
ENTRYPOINT []
# Sat, 26 Sep 2026 06:10:47 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 07:09:52 GMT
ENV DATA_DIR=/catalogue-data
# Sat, 26 Sep 2026 07:09:52 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Sat, 26 Sep 2026 07:09:52 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Sat, 26 Sep 2026 07:09:52 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 07:09:52 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Sat, 26 Sep 2026 07:09:52 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 07:09:52 GMT
ENV GN_VERSION=4.4.12
# Sat, 26 Sep 2026 07:09:52 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Sat, 26 Sep 2026 07:10:05 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Sat, 26 Sep 2026 07:10:05 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Sat, 26 Sep 2026 07:10:06 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Sat, 26 Sep 2026 07:10:07 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 07:10:07 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Sat, 26 Sep 2026 07:10:07 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 07:10:07 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0dc4ca29f5ca7e294a6a894d89e44c4f2de248709545d2a44d42686c9eb9365`  
		Last Modified: Fri, 25 Sep 2026 22:35:05 GMT  
		Size: 18.8 MB (18783708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9adb0a8ff652f4fe47b0a602483bbc2c80610463f9c8b49c4decfe9fbb96f087`  
		Last Modified: Fri, 25 Sep 2026 22:43:41 GMT  
		Size: 42.8 MB (42799333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5313aaf3437f9172fe5323e9fd63cc91319df0f0bb88d193296ef2df26ae6f9c`  
		Last Modified: Fri, 25 Sep 2026 22:43:39 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f7c8bdc463488aae70e472fdf11e7f723e53bef8bbec7331409486017f18589`  
		Last Modified: Fri, 25 Sep 2026 22:43:39 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a53d0139759f058cfecdcd3c3437411cf8bf226fff0c64912129991c24cfc21`  
		Last Modified: Sat, 26 Sep 2026 06:07:00 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec53c6ce209a66a9524d355d4564d9dc61be565829ca957ab97f6375fdc60c41`  
		Last Modified: Sat, 26 Sep 2026 06:11:13 GMT  
		Size: 13.9 MB (13915227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1039d8ba4c887d45aae5ad8f5631d11cb146e0fb032388ce7abbbe25554f7c7c`  
		Last Modified: Sat, 26 Sep 2026 06:11:12 GMT  
		Size: 256.9 KB (256930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:796ec71fbbda8df5e29928e548bb2add16cb8307e66292d83b3ff00a905fe4bc`  
		Last Modified: Sat, 26 Sep 2026 07:11:01 GMT  
		Size: 269.9 KB (269904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ec7da13613d64f7c96f81b71dbc2aaf69eaf6518c163af71fbe628326f57250`  
		Last Modified: Sat, 26 Sep 2026 07:11:07 GMT  
		Size: 310.1 MB (310117336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e04e5fb4ce261c6d1fbb6587f8268e93bdafa828f0a40f77cbc162b760c32f78`  
		Last Modified: Sat, 26 Sep 2026 07:11:01 GMT  
		Size: 318.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe9516d945eb328bbd2e91dc34cc24f2f7f74ddd6f37122c20bec9743a4aea8c`  
		Last Modified: Sat, 26 Sep 2026 07:11:01 GMT  
		Size: 3.0 KB (3011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b95f84517a83cfaaaa2c30824a9af7b38859924747e2c50bcdabc2db6ecc8811`  
		Last Modified: Sat, 26 Sep 2026 07:11:02 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:8a41a86fd762abf5fa0a0dc34b2b06de8493a84d1bcef0b69bb775e1084e605a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4208414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caeeb402f5af2a201c6eb6c67eb7681bf17768b800747a0f4f568e01515567fd`

```dockerfile
```

-	Layers:
	-	`sha256:e7e54dea8476be157691ad7f479e6c6503d37cd7a121a8d5bc812e27b3fff806`  
		Last Modified: Sat, 26 Sep 2026 07:11:01 GMT  
		Size: 4.2 MB (4182810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46c938bd76fc476967e8fac288f29dce0f03180eb78539187c026b026349d218`  
		Last Modified: Sat, 26 Sep 2026 07:11:01 GMT  
		Size: 25.6 KB (25604 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:latest` - linux; s390x

```console
$ docker pull geonetwork@sha256:c9be049b8cfe964d89d0ba751f84f9465bb8ad9a77a6ed281a09cb58c937f019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.4 MB (415445846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6079c2a942a01ec0b735c9823aa4f7fc43a81bb811ea1e3bb8771f87875a0745`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 18 Sep 2026 21:22:48 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:22:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:22:48 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:22:50 GMT
ADD file:dbe84e9fbddf57955eb8069675a3842837c04eb1416213c2d50049efd3dad787 in / 
# Fri, 18 Sep 2026 21:22:50 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:15:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:15:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:15:46 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:15:46 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:15:46 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 02 Oct 2026 01:15:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:16:00 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:16:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:16:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:41:56 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:41:56 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:41:56 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:41:56 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:41:56 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:41:56 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:41:56 GMT
ENV TOMCAT_MAJOR=9
# Fri, 02 Oct 2026 03:41:56 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 02 Oct 2026 03:41:56 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 02 Oct 2026 03:43:53 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:43:55 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:43:56 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:43:56 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:43:56 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:43:56 GMT
CMD ["catalina.sh" "run"]
# Fri, 02 Oct 2026 04:15:43 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 02 Oct 2026 04:15:43 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Fri, 02 Oct 2026 04:15:43 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Fri, 02 Oct 2026 04:15:43 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Fri, 02 Oct 2026 04:15:43 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Fri, 02 Oct 2026 04:15:43 GMT
ENV GN_FILE=geonetwork.war
# Fri, 02 Oct 2026 04:15:43 GMT
ENV GN_VERSION=4.4.12
# Fri, 02 Oct 2026 04:15:43 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Fri, 02 Oct 2026 04:15:53 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 02 Oct 2026 04:15:53 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Fri, 02 Oct 2026 04:15:54 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 02 Oct 2026 04:15:54 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 04:15:54 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 02 Oct 2026 04:15:54 GMT
CMD ["catalina.sh" "run"]
# Fri, 02 Oct 2026 04:15:54 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:108aebd72dd457ee7da6e519c157e975c9f75fedf3563478a69f28606232305c`  
		Last Modified: Fri, 18 Sep 2026 22:30:25 GMT  
		Size: 29.9 MB (29945320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eba05513fa6a1c45a894153cbcc879c438e400f18c11daf5ab3cfdb310d81856`  
		Last Modified: Fri, 02 Oct 2026 01:17:00 GMT  
		Size: 19.7 MB (19655653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a730c3b04ad72c527d81910a3b4559a4200224d23222fa353297f4dbb4da636`  
		Last Modified: Fri, 02 Oct 2026 01:17:01 GMT  
		Size: 41.3 MB (41347906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36faecc29408d80511c14d45c20a7c1acbfc22e512ee3465785dd5a6f826c673`  
		Last Modified: Fri, 02 Oct 2026 01:16:57 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9977f8153df651de7df3b80bb1c79d7fc90aa43d1cf53f2c465ccdaeb4243c`  
		Last Modified: Fri, 02 Oct 2026 01:16:57 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87d9b80c52119bc5d5eacfff7bec426a7e47db42c38d92657436c2a96603da80`  
		Last Modified: Fri, 02 Oct 2026 03:42:12 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d563536e3665da2c2e6b8b6e5c5433eb3c3ef9a09c170e583650e0abb1ee5582`  
		Last Modified: Fri, 02 Oct 2026 03:44:12 GMT  
		Size: 13.9 MB (13887685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65b8b7fe2c8a9702599c95d673249d9ece310e800fdbc6273c774f7cdc5fd73c`  
		Last Modified: Fri, 02 Oct 2026 03:44:10 GMT  
		Size: 233.8 KB (233836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:997b26f5a4d4d20b4e90924beb15b77b4009e16a0d057ee2ed5e6ae5c0cd017f`  
		Last Modified: Fri, 02 Oct 2026 04:16:23 GMT  
		Size: 251.2 KB (251242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:894c18d895ddc7a10aef2af72a7ea32eb7651906e4bc01c04702bbcaa7f001de`  
		Last Modified: Fri, 02 Oct 2026 04:16:28 GMT  
		Size: 310.1 MB (310117353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f00a61f472cb351fa09b1d832322ee490d718f4d6707fef9733fe7b2e9cf0b`  
		Last Modified: Fri, 02 Oct 2026 04:16:23 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cfadda4621ede79a895c7925d8e86847fea023c5597d9f7b31e0e7b3a34128`  
		Last Modified: Fri, 02 Oct 2026 04:16:23 GMT  
		Size: 3.0 KB (3008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00594e02d1e54fdce40b59e3b47c3af9070d1f674ff309e66bf5dfdbf7c4c61`  
		Last Modified: Fri, 02 Oct 2026 04:16:24 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:81363d7cb5d9a1731e0161ee41f0e46038cf79c7f92408cf3ca14e26c784c89c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4206490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce63f250f574343e6b02745d4567efb154ebb4753a69bdb05980740433da2b5`

```dockerfile
```

-	Layers:
	-	`sha256:36ee95f676c7de4c52d048250ce5fba75ce7afc667a65e3e90ae1b0ef2505c0d`  
		Last Modified: Fri, 02 Oct 2026 04:16:23 GMT  
		Size: 4.2 MB (4180932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d31adc41c4ecf8333304785d645a37cb2c99baf0af77a391d90cd5118ddf17de`  
		Last Modified: Fri, 02 Oct 2026 04:16:23 GMT  
		Size: 25.6 KB (25558 bytes)  
		MIME: application/vnd.in-toto+json
