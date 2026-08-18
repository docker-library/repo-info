## `tomcat:9-jre25-temurin-jammy`

```console
$ docker pull tomcat@sha256:485a57d1934147544be3f07586d3c72f59059702b442c6782e773792eda92962
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `tomcat:9-jre25-temurin-jammy` - linux; amd64

```console
$ docker pull tomcat@sha256:c4f411576e4ee6cff5e5be95d42557d08dc75dd774fcd51398a599cc1916728b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.2 MB (118243139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c46c331a74314a2ad0a887238fbfc96213d8dd119c2650e893053d5cb293bd18`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:15:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 01:15:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 01:15:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 01:15:29 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:15:29 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Tue, 18 Aug 2026 01:15:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 01:15:51 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 01:15:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:15:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 18:10:00 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 18:10:00 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 18:10:00 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 18:10:00 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 18:10:00 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 18:10:00 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 18:10:00 GMT
ENV TOMCAT_MAJOR=9
# Tue, 18 Aug 2026 18:10:00 GMT
ENV TOMCAT_VERSION=9.0.121
# Tue, 18 Aug 2026 18:10:00 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Tue, 18 Aug 2026 18:10:00 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 18:10:04 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 18:10:05 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 18:10:05 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 18:10:05 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 18:10:05 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95465834d22a60c932aa5da06809fd1474bf0a9ba8185851f4e401852707335e`  
		Last Modified: Tue, 18 Aug 2026 01:16:05 GMT  
		Size: 11.4 MB (11366732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eab5e9c4ac05f4f950dc7f96dd924daccd445a8450332e879164f3f22f93ac6`  
		Last Modified: Tue, 18 Aug 2026 01:16:07 GMT  
		Size: 63.0 MB (63010812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c988ed7c9a3e2b179410d896b7e61fffc6429d3d09bd5aca06aa9571b7f90fce`  
		Last Modified: Tue, 18 Aug 2026 01:16:05 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a09552bf6230674da17c8e4696a823f96ce4171ccba8ffc7c3aba97d0a45a831`  
		Last Modified: Tue, 18 Aug 2026 18:10:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a343162db358074320c31a6cc47dbf6079297a6cb83c8799b507b433e146620`  
		Last Modified: Tue, 18 Aug 2026 18:10:14 GMT  
		Size: 13.9 MB (13912423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1672f3ca2eaf9af3827cd87f0a0093404a37705c508f5bca65dc5be9887943c0`  
		Last Modified: Tue, 18 Aug 2026 18:10:13 GMT  
		Size: 213.7 KB (213711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:c4a3ebb98e43915bd7578ed607afc45981d4fe8e9d76941a522776d257e7cb3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3710562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64930a46a0ec9e60da867788c8363d612ca31d9c975f26ea6f8a9ae2e7f58fbc`

```dockerfile
```

-	Layers:
	-	`sha256:c2cc41198903dd10bac67d431c56b4d0db6f5dccf1e61d1268a73a2231f25e3d`  
		Last Modified: Tue, 18 Aug 2026 18:10:13 GMT  
		Size: 3.7 MB (3689360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:859fe0d83a57bc15add6dfb4f4ea157fda67f71cfce362bc705f584f86a551ea`  
		Last Modified: Tue, 18 Aug 2026 18:10:13 GMT  
		Size: 21.2 KB (21202 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre25-temurin-jammy` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:e03becb81df10442fb13db7d74c650f29da8a2b40cb2bb96ffc921d0d0062ae8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114979325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:029cfac93ebe607f276fe16ce40718a5ee60d3632c48ff9e4151a073c5d9b347`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:15:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 01:15:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 01:15:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 01:15:25 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:15:25 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Tue, 18 Aug 2026 01:15:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 01:15:45 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 01:15:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:15:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 18:09:58 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 18:09:58 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 18:09:58 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 18:09:58 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 18:09:58 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 18:09:58 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 18:09:58 GMT
ENV TOMCAT_MAJOR=9
# Tue, 18 Aug 2026 18:09:58 GMT
ENV TOMCAT_VERSION=9.0.121
# Tue, 18 Aug 2026 18:09:58 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Tue, 18 Aug 2026 18:09:58 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 18:10:04 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 18:10:05 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 18:10:05 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 18:10:05 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 18:10:05 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04cfbf21e6f5e08777009cff3866a328eb960cc7e8893b7a5fe39ada8a40d262`  
		Last Modified: Tue, 18 Aug 2026 01:15:59 GMT  
		Size: 11.3 MB (11310481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:614f6744d1f71af20dc9013725dbcd971248a879f6fb9bc3cb83b4a3c20b3396`  
		Last Modified: Tue, 18 Aug 2026 01:16:01 GMT  
		Size: 61.9 MB (61912903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2f4a3dcefad0a0368ac153bb8177732a3e6e9e829e7301e135dbba947020df9`  
		Last Modified: Tue, 18 Aug 2026 01:15:59 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6609fb8d14bf5714e69270debd83d5800b8a5884367d1f55c3b5c26e28a60ba6`  
		Last Modified: Tue, 18 Aug 2026 18:10:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b8c1cb4bef5a6f50dff7a4785075d7e616f54983709b8b26f4c8a769f6dff9`  
		Last Modified: Tue, 18 Aug 2026 18:10:14 GMT  
		Size: 13.9 MB (13920222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44db26eedf0b921aea4d25f6a5df38bd2520d1ef41d8088094374453f6f75bd9`  
		Last Modified: Tue, 18 Aug 2026 18:10:14 GMT  
		Size: 212.7 KB (212749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:fa2c9f125b633d702d7329b994c81e3076e31c575ddac7011a9b2fbe08d9ea87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3710360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87c3aa4d42775e54b6eb60f0649ff007ef473c36c8dcf15bf975ef777a5640c3`

```dockerfile
```

-	Layers:
	-	`sha256:f114bd16ef7aa66084b2a51e91ef0ac0d0b990c9a516688253b7576262f7b953`  
		Last Modified: Tue, 18 Aug 2026 18:10:14 GMT  
		Size: 3.7 MB (3689011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:788d82ae9095978f813fe591c4dd325c2b312943505a161bda82ec4d8125a208`  
		Last Modified: Tue, 18 Aug 2026 18:10:14 GMT  
		Size: 21.3 KB (21349 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre25-temurin-jammy` - linux; ppc64le

```console
$ docker pull tomcat@sha256:8fcf157915d0b6940996a03f963ab0d752a0c033dd0adbee3c82c1a330ac3c56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.1 MB (123061852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a91936e96ba2cfa17ea9c958d699fde6ef3c44b2d708d027c5bb1b0a09000e4e`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 31 Jul 2026 21:52:30 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:52:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:52:30 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:52:33 GMT
ADD file:f48db2a791f6b574e2518d202e6b75268dc7b57826c0aa7a238e41ef3f2dbaeb in / 
# Fri, 31 Jul 2026 21:52:34 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:31:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:31:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:31:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:31:44 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:31:44 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Tue, 04 Aug 2026 01:32:19 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:32:21 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:32:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:32:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 06:25:55 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 04 Aug 2026 06:25:55 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 06:25:55 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 04 Aug 2026 06:25:55 GMT
WORKDIR /usr/local/tomcat
# Tue, 04 Aug 2026 06:25:55 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 06:25:55 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 06:25:55 GMT
ENV TOMCAT_MAJOR=9
# Tue, 04 Aug 2026 06:25:55 GMT
ENV TOMCAT_VERSION=9.0.120
# Tue, 04 Aug 2026 06:25:55 GMT
ENV TOMCAT_SHA512=07eb6d9639c3e69af81171a16ccff1c19b7fd5b2e87e3646851f0a3f42a4ce3c1bf128fbe40fc978a08935ba4f0400ef3b43ded3e470b9aaf23b97a9e1fa0858
# Tue, 04 Aug 2026 06:33:42 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 04 Aug 2026 06:33:49 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 06:33:51 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 04 Aug 2026 06:33:51 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 04 Aug 2026 06:33:51 GMT
ENTRYPOINT []
# Tue, 04 Aug 2026 06:33:51 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:f47d82beca9eaeb15de580e2a4f77f430e6d50327a147c5b9295c3c9879cbaeb`  
		Last Modified: Fri, 31 Jul 2026 22:54:10 GMT  
		Size: 34.6 MB (34637666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e042c89697299764802fe1aec7965ae666fb2efeb96aebdecdea02f9257539f`  
		Last Modified: Tue, 04 Aug 2026 01:32:51 GMT  
		Size: 11.8 MB (11848614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea5291c200b1366b45787d02c53627c8d21d0c822bc1073fbd71ad9140ad321`  
		Last Modified: Tue, 04 Aug 2026 01:32:52 GMT  
		Size: 62.4 MB (62410989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a13c2103cb4f4b35db104fe8c7d1ccd85a881fac7d6bdf1df5303183926dcf0`  
		Last Modified: Tue, 04 Aug 2026 01:32:50 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b42f72733cacab76ce56e00e3161a5a735eaf8ac4e7cb4520d796a16c1f2c61`  
		Last Modified: Tue, 04 Aug 2026 06:26:26 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27834a12dc8e9d6ed5bc491ddbc6a3e4564d118a73b1142740245ae7b31cc1f6`  
		Last Modified: Tue, 04 Aug 2026 06:34:11 GMT  
		Size: 13.9 MB (13918954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e490b0dab5c44751cc0bcb16120e65bf1c6200b2e38715d114799cabf252169a`  
		Last Modified: Tue, 04 Aug 2026 06:34:11 GMT  
		Size: 243.1 KB (243112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:c865454366990451b0e4132fdf70eefe5b15ae477d3650f2702c06a5a6ba99cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3713953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b696419bd2120e5b16dba156c1c93ed0e8714406730d3c4b20ef9f52cabaa4b6`

```dockerfile
```

-	Layers:
	-	`sha256:36d3e1cb39e0379f48428f6a0fdbf6abd0f961d80ff1eb3c4bcf53403762641a`  
		Last Modified: Tue, 04 Aug 2026 06:34:11 GMT  
		Size: 3.7 MB (3692700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20ab530d39e4ccb32f9830d7e64eb6733c00aac21001d3a92a21b6c9a87be078`  
		Last Modified: Tue, 04 Aug 2026 06:34:11 GMT  
		Size: 21.3 KB (21253 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre25-temurin-jammy` - linux; s390x

```console
$ docker pull tomcat@sha256:b5b29513759bf31bc6d5eef217ed5340a2530a43ff930804be077d78f4073748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114290281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c5a210d13396c65232136534c8d44a76b3f2b1298251e94df90c2a00ac695fb`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:22 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:22 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:24 GMT
ADD file:ebe1295278656f2efe95b21ab9586cdaa8c816836b56de7bf7a802fc92465272 in / 
# Mon, 10 Aug 2026 17:41:24 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 00:09:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 00:09:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 00:09:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 00:09:35 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 00:09:35 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Tue, 18 Aug 2026 00:10:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 00:10:10 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 00:10:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 00:10:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 02:13:34 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 02:13:34 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 02:13:34 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 02:13:34 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 02:13:34 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 02:13:34 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 02:13:34 GMT
ENV TOMCAT_MAJOR=9
# Tue, 18 Aug 2026 02:13:34 GMT
ENV TOMCAT_VERSION=9.0.121
# Tue, 18 Aug 2026 02:13:34 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Tue, 18 Aug 2026 18:08:48 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 18:08:51 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 18:08:52 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 18:08:52 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 18:08:52 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 18:08:52 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:3c9503cfff1c82d12820c3c752940964f6a091cb183b44e45fc5a003b8d47e87`  
		Last Modified: Mon, 10 Aug 2026 20:09:16 GMT  
		Size: 28.2 MB (28210903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b85d8d31eef6d2cee59b9e10a9c227f505feccedc237982d8d79c5417941c8a2`  
		Last Modified: Tue, 18 Aug 2026 00:10:44 GMT  
		Size: 11.5 MB (11453317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:309298a2194b6659c5c8104df02bb058e0d0545da1244929edccb79c54223986`  
		Last Modified: Tue, 18 Aug 2026 00:10:46 GMT  
		Size: 60.5 MB (60500865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e091adbf7db95b2d46707ccbb5761e81ffc9441a6f037d00e0d326599d05128`  
		Last Modified: Tue, 18 Aug 2026 00:10:43 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd5622e856e31da764e83b5f417ac5386bb1ac9a41ea19465323b554288051ba`  
		Last Modified: Tue, 18 Aug 2026 02:13:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:761435c36f8aefb1917395d256c14b4baee0255bfca7830eb8200b0db1dd1089`  
		Last Modified: Tue, 18 Aug 2026 18:09:07 GMT  
		Size: 13.9 MB (13907661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29a08dfaba1aa8548c739cc13dbff0c2c0faa9186b8a95e473ba9fba6302807`  
		Last Modified: Tue, 18 Aug 2026 18:09:07 GMT  
		Size: 215.0 KB (215017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:04db3c015c27dd39ea8990513d4a0da2d9144c068eb2831faa76258203e2c944
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3711547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a93445f6add8047a5bd3f33caac40e6f86a19ef4147c717f9582a2242cc0c11`

```dockerfile
```

-	Layers:
	-	`sha256:876bcc446cf54b9d8d6d43b4d6ec69a42ee716129f9ae35b9e6dd4f95f024ce6`  
		Last Modified: Tue, 18 Aug 2026 18:09:07 GMT  
		Size: 3.7 MB (3690345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02559048a2931ee8487580ca5bf42c40bffaef26626a607ef08b4555e39dce3a`  
		Last Modified: Tue, 18 Aug 2026 18:09:07 GMT  
		Size: 21.2 KB (21202 bytes)  
		MIME: application/vnd.in-toto+json
