## `tomcat:jre17-temurin-noble`

```console
$ docker pull tomcat@sha256:bd417604c94853c6c6757ac420d9586b501b348846fbef784188961af21122b9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `tomcat:jre17-temurin-noble` - linux; amd64

```console
$ docker pull tomcat@sha256:341d8edcdb59646af455d83793848e9520a5855d3fc683f97c0997ab7efbfb94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111293021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6c2dcffd5ca5d4598c58b2401eb9ef6aeecf130e079fd973b5205b6cb1424a4`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:26:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:26:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:26:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:26:45 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:26:45 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 04 Aug 2026 01:27:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        arm64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        armhf)          ESUM='018d1f5c11b2f1a2175c282a0fe8a17d9166da84b70ec1c60c1fa628a261d1eb';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_arm_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64el)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        riscv64)          ESUM='08c8c193fc2e8e6eb4450d3ddcefa78889eef338b2bbc0b30e5a6d586fc6d646';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:27:18 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:27:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:27:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 03:25:40 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 04 Aug 2026 03:25:40 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:25:40 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 04 Aug 2026 03:25:40 GMT
WORKDIR /usr/local/tomcat
# Tue, 04 Aug 2026 03:25:40 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 03:25:40 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 03:25:40 GMT
ENV TOMCAT_MAJOR=11
# Tue, 04 Aug 2026 03:25:40 GMT
ENV TOMCAT_VERSION=11.0.24
# Tue, 04 Aug 2026 03:25:40 GMT
ENV TOMCAT_SHA512=a2fb1bd511735bd3d135b87f628d2b1f71a43aed7c4d7511e770092e571bad6d5ad9e97a580852119770477fd86d7ed156d83d3cee2854bce260725ce48934d0
# Tue, 04 Aug 2026 03:25:40 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 04 Aug 2026 03:25:45 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:25:45 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 04 Aug 2026 03:25:45 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 04 Aug 2026 03:25:45 GMT
ENTRYPOINT []
# Tue, 04 Aug 2026 03:25:45 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db592ef1d9e25cd49273181f710af89675103d8ed2c7d59c40eb37bccf6d37af`  
		Last Modified: Tue, 04 Aug 2026 01:27:07 GMT  
		Size: 19.3 MB (19345655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e990813cccb53760a8c5b7d9c9477b53c789904cecd3849f5521a87e60f741d5`  
		Last Modified: Tue, 04 Aug 2026 01:27:30 GMT  
		Size: 47.6 MB (47564983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe854c7d5172e90a505a127fdf2f88679cd89fcb72ab532f64a17ee702b418fd`  
		Last Modified: Tue, 04 Aug 2026 01:27:29 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40aa29c81f4b6e42893d918d7fe5c5066d20aed0e7733a331ae67541b2d48030`  
		Last Modified: Tue, 04 Aug 2026 01:27:29 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e263fc229825f488c56d57497cd8de1a9b8337989a1af47225df42872563a5`  
		Last Modified: Tue, 04 Aug 2026 03:25:53 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba7d4b85290f03288ddfa2753b1f5b1a49d9f69b93ae9dd0cc4055149b0f699`  
		Last Modified: Tue, 04 Aug 2026 03:25:54 GMT  
		Size: 14.4 MB (14403330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94787ed871eb1c5b786d8800db9764a2e527b774ccaa9b1bed7175c17909df70`  
		Last Modified: Tue, 04 Aug 2026 03:25:54 GMT  
		Size: 225.3 KB (225302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:46aa95010c0829af6b22a0ba9ef950af81505d8af36166e8348dec7f5f5b1ed5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3357860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b1242d92a384a0ea083402e3b29175419f0fd71b2305d25fa11a6f6cf79ebe`

```dockerfile
```

-	Layers:
	-	`sha256:37d9419368fd90d4d85a839a2692620d791b4a8ef086333b52a37b190e2194ae`  
		Last Modified: Tue, 04 Aug 2026 03:25:54 GMT  
		Size: 3.3 MB (3333817 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5608d41f356a99efda42f4d1ea9e3d20936b55d2d89c22521c6e539d13242f99`  
		Last Modified: Tue, 04 Aug 2026 03:25:54 GMT  
		Size: 24.0 KB (24043 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre17-temurin-noble` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:2fcba4117021c76a44adb014fef464a68715fea5011735c6876f86bc65b9413f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.8 MB (102847553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22a7692d9772c9c1e224303955b28e025cdbf243bc502b6e77d7d97a1014c15e`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:36 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:36 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:36 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:39 GMT
ADD file:a14f36e5118167aeb083ee3ba0aabf6fcdf633fe1c3297963fe456c1a0cb252a in / 
# Fri, 31 Jul 2026 20:45:40 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:16:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:16:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:16:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:16:47 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:16:47 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 04 Aug 2026 01:16:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        arm64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        armhf)          ESUM='018d1f5c11b2f1a2175c282a0fe8a17d9166da84b70ec1c60c1fa628a261d1eb';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_arm_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64el)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        riscv64)          ESUM='08c8c193fc2e8e6eb4450d3ddcefa78889eef338b2bbc0b30e5a6d586fc6d646';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:16:51 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:16:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:16:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 03:18:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 04 Aug 2026 03:18:24 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:18:24 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 04 Aug 2026 03:18:24 GMT
WORKDIR /usr/local/tomcat
# Tue, 04 Aug 2026 03:18:24 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 03:18:24 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 03:18:24 GMT
ENV TOMCAT_MAJOR=11
# Tue, 04 Aug 2026 03:18:24 GMT
ENV TOMCAT_VERSION=11.0.24
# Tue, 04 Aug 2026 03:18:24 GMT
ENV TOMCAT_SHA512=a2fb1bd511735bd3d135b87f628d2b1f71a43aed7c4d7511e770092e571bad6d5ad9e97a580852119770477fd86d7ed156d83d3cee2854bce260725ce48934d0
# Tue, 04 Aug 2026 03:18:24 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 04 Aug 2026 03:18:32 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:18:33 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 04 Aug 2026 03:18:33 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 04 Aug 2026 03:18:33 GMT
ENTRYPOINT []
# Tue, 04 Aug 2026 03:18:33 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:c55214abec85c375f31bae91edc8d5ede87ebb1a3979fe7ba996b347fc559989`  
		Last Modified: Fri, 31 Jul 2026 22:22:35 GMT  
		Size: 26.9 MB (26872495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec23930c183bb4ad8aea4d0641d9a05c9be62c8559d8fece4c97b474e8a955f8`  
		Last Modified: Tue, 04 Aug 2026 01:17:03 GMT  
		Size: 16.3 MB (16267982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a518059dff87e1fcad599e39259e334b6d1c8807670c4d930ae0480e61261dc4`  
		Last Modified: Tue, 04 Aug 2026 01:17:04 GMT  
		Size: 45.1 MB (45131939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00036357875983ef700f76f7be6c423ba14b550e28c81ff259eb964bdaeefc2`  
		Last Modified: Tue, 04 Aug 2026 01:17:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7e025954e7654ab9941e0426ba466e4ed6aaa80098497123bbebaa84a4183d`  
		Last Modified: Tue, 04 Aug 2026 01:16:47 GMT  
		Size: 2.3 KB (2281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91cef5a6da6259e2244944f6573a6514be336cce88c61b30ee684ca7ccb20be2`  
		Last Modified: Tue, 04 Aug 2026 03:18:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93dc5ebec7a8d1e003e81611fad742d79ae4d546578372130956ca27de2d937`  
		Last Modified: Tue, 04 Aug 2026 03:18:42 GMT  
		Size: 14.4 MB (14375756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67273e5d6801782aaebb947c162383f3f092c418caf8ad06c01fe0a4fc566f2b`  
		Last Modified: Tue, 04 Aug 2026 03:18:42 GMT  
		Size: 196.7 KB (196737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:5492236a1a7bd4e61b7d51c9bb42dc44e64790b7dfd04dc9cecaddf4abb9b26e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3360456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfdf9f8a332c2b1bb8e5f32d245bea8fda2ca26d6988de9c7fb202c620348fdf`

```dockerfile
```

-	Layers:
	-	`sha256:d7c526777211c89576ad72a6145359c194c8d2ec1a77b54a21c8300e213f455e`  
		Last Modified: Tue, 04 Aug 2026 03:18:42 GMT  
		Size: 3.3 MB (3336221 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eefdb641175eece8eaa3af3104d778630b7b1befdcaf638ee466d02d7a3002dc`  
		Last Modified: Tue, 04 Aug 2026 03:18:42 GMT  
		Size: 24.2 KB (24235 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre17-temurin-noble` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:d98733a5dce72a48d3f2c1dabd26b955c7efeab4afbe12c8473783890c4e4bd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.5 MB (107522588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c48d02974d7c21c546f10f2cca49f29341bd58ff10768ad17209755529603cd`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:27:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:27:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:27:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:27:41 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:27:41 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 04 Aug 2026 01:27:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        arm64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        armhf)          ESUM='018d1f5c11b2f1a2175c282a0fe8a17d9166da84b70ec1c60c1fa628a261d1eb';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_arm_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64el)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        riscv64)          ESUM='08c8c193fc2e8e6eb4450d3ddcefa78889eef338b2bbc0b30e5a6d586fc6d646';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:27:45 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:27:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:27:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 03:25:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 04 Aug 2026 03:25:25 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:25:25 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 04 Aug 2026 03:25:25 GMT
WORKDIR /usr/local/tomcat
# Tue, 04 Aug 2026 03:25:25 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 03:25:25 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 03:25:25 GMT
ENV TOMCAT_MAJOR=11
# Tue, 04 Aug 2026 03:25:25 GMT
ENV TOMCAT_VERSION=11.0.24
# Tue, 04 Aug 2026 03:25:25 GMT
ENV TOMCAT_SHA512=a2fb1bd511735bd3d135b87f628d2b1f71a43aed7c4d7511e770092e571bad6d5ad9e97a580852119770477fd86d7ed156d83d3cee2854bce260725ce48934d0
# Tue, 04 Aug 2026 03:25:25 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 04 Aug 2026 03:25:33 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:25:33 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 04 Aug 2026 03:25:33 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 04 Aug 2026 03:25:33 GMT
ENTRYPOINT []
# Tue, 04 Aug 2026 03:25:33 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d83a26e7e0b5dd1cb4b6312e2126bc2b2dbeb8ebca505c715e68133bb560de`  
		Last Modified: Tue, 04 Aug 2026 01:27:57 GMT  
		Size: 17.0 MB (16951181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae5c664c317d5e412f2f9ef37e0c99aa5ca9ae85a97431f2d0e8e9ebf33d5182`  
		Last Modified: Tue, 04 Aug 2026 01:27:58 GMT  
		Size: 47.1 MB (47050249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f7c439f96777e5ceeafc3ef26467ebb5b9b4aa603ad837819165f4f7b8e9e8`  
		Last Modified: Tue, 04 Aug 2026 01:27:56 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1780e20edc50d5b8de5616e5c5de67c38e2ef92ac7abdb00344ef7b00a06e8d`  
		Last Modified: Tue, 04 Aug 2026 01:27:56 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fb4ff433189ce01cafd42f5ae3d17e80c2882f04de9880b8b790d5486082df`  
		Last Modified: Tue, 04 Aug 2026 03:25:42 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f856a22f636462c4b553715ead4e1555f91987c590836d6ba5de3e3e00e79b5e`  
		Last Modified: Tue, 04 Aug 2026 03:25:42 GMT  
		Size: 14.4 MB (14406087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f866d6a64283338d95b1229858ff98df78c1ee6edb22815bd8ef69c8876c609`  
		Last Modified: Tue, 04 Aug 2026 03:25:42 GMT  
		Size: 225.6 KB (225609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:e76bea54f33b7854050384137664f5809831459596aa070e63918cd90b829345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3358685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3005bbde6faad4dc84050b4390381225d935c79c00475662880dcf9ab59753a`

```dockerfile
```

-	Layers:
	-	`sha256:fb2729952de354abf79e2fcc4286409ae1c0400679a84c1c11e963265efbb598`  
		Last Modified: Tue, 04 Aug 2026 03:25:42 GMT  
		Size: 3.3 MB (3334385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95dfe9b9863f22795b6fe1a4bd4c55e457cb76f228bcc635d2ce6c75ba05be6e`  
		Last Modified: Tue, 04 Aug 2026 03:25:41 GMT  
		Size: 24.3 KB (24300 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre17-temurin-noble` - linux; ppc64le

```console
$ docker pull tomcat@sha256:c8b9e46b276e8aae760e6451cb847a8ffffe189f3df110b6b9ca36b6993713f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117865760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d305529367c78bfc0d8bd98b023d7795269682886949fa21fa553b5af5c6dd6`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:14:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:14:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:14:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:14:23 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 04 Aug 2026 01:22:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        arm64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        armhf)          ESUM='018d1f5c11b2f1a2175c282a0fe8a17d9166da84b70ec1c60c1fa628a261d1eb';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_arm_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64el)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        riscv64)          ESUM='08c8c193fc2e8e6eb4450d3ddcefa78889eef338b2bbc0b30e5a6d586fc6d646';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:22:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:22:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:22:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 06:28:21 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 04 Aug 2026 06:28:21 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 06:28:21 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 04 Aug 2026 06:28:21 GMT
WORKDIR /usr/local/tomcat
# Tue, 04 Aug 2026 06:28:21 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 06:28:21 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 06:28:21 GMT
ENV TOMCAT_MAJOR=11
# Tue, 04 Aug 2026 06:28:21 GMT
ENV TOMCAT_VERSION=11.0.24
# Tue, 04 Aug 2026 06:28:21 GMT
ENV TOMCAT_SHA512=a2fb1bd511735bd3d135b87f628d2b1f71a43aed7c4d7511e770092e571bad6d5ad9e97a580852119770477fd86d7ed156d83d3cee2854bce260725ce48934d0
# Tue, 04 Aug 2026 06:28:22 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 04 Aug 2026 06:28:30 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 06:28:32 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 04 Aug 2026 06:28:32 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 04 Aug 2026 06:28:32 GMT
ENTRYPOINT []
# Tue, 04 Aug 2026 06:28:32 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:511319b2e0803887cfd0c90af4cb35091e190f8fd52c0cfc09ab24dc5a25e75d`  
		Last Modified: Tue, 04 Aug 2026 01:14:52 GMT  
		Size: 21.4 MB (21390214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857a943c02c09015a17d52824b8a95dba43b2a37ac7e06492eba4cd105e3cd63`  
		Last Modified: Tue, 04 Aug 2026 01:23:10 GMT  
		Size: 47.5 MB (47487509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61265220448081ff5c40673757e4a2073bd2a674f838e7041e27f242f9bce84`  
		Last Modified: Tue, 04 Aug 2026 01:23:08 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c506477db13a1637bf2d6b932e0f08f93c4df00ce6b602eba1d846e5d5e39dad`  
		Last Modified: Tue, 04 Aug 2026 01:23:09 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dd471ded058a34105d9a263907debd5de8c4bf8df16062e85e79bbfd4c9fd0f`  
		Last Modified: Tue, 04 Aug 2026 06:28:47 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbc0154348998c2e3f449c5f2d232f3548d3814db0be210439e8e1aea46426b`  
		Last Modified: Tue, 04 Aug 2026 06:28:48 GMT  
		Size: 14.4 MB (14417791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acfda1105544ecc421908e98b39478b56b542458ad302c50fc49968f9c74f53a`  
		Last Modified: Tue, 04 Aug 2026 06:28:48 GMT  
		Size: 256.9 KB (256929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:1cedaef02f3394e81b3b440080f5d0fa5b05c2d81e5a845ee7887ae923867979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3362092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7072e82197bc1f20c337334475245e8ee3260f5256a87ff099a09415002cf60`

```dockerfile
```

-	Layers:
	-	`sha256:83a92185808b7b66513f1546b464c9ca4ac477bd7b728d700cd9867fdaec3dc4`  
		Last Modified: Tue, 04 Aug 2026 06:28:48 GMT  
		Size: 3.3 MB (3337942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be7abb87984dc5c8637600bb0d0cc0389209f0944deca9e30faf12186fa19ee1`  
		Last Modified: Tue, 04 Aug 2026 06:28:47 GMT  
		Size: 24.1 KB (24150 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre17-temurin-noble` - linux; riscv64

```console
$ docker pull tomcat@sha256:c90ae2ea38e80e09220753355647103ada420f4d95fddccef572f066149982fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.7 MB (109734556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4046f2d7aad88501ecdd0378a8f04d5a21c0a2dc7b1d9350172bdd301d13664e`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 23 Jun 2026 01:25:37 GMT
ARG RELEASE
# Tue, 23 Jun 2026 01:25:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 23 Jun 2026 01:25:38 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 23 Jun 2026 01:26:18 GMT
ADD file:7170cf1f50457fa19167130bbb168bf8fb601a52574716867b67758ab43d5dbb in / 
# Tue, 23 Jun 2026 01:26:22 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:25:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:25:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:25:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:25:42 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:25:42 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Thu, 02 Jul 2026 02:26:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        arm64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        armhf)          ESUM='018d1f5c11b2f1a2175c282a0fe8a17d9166da84b70ec1c60c1fa628a261d1eb';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_arm_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64el)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        riscv64)          ESUM='08c8c193fc2e8e6eb4450d3ddcefa78889eef338b2bbc0b30e5a6d586fc6d646';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:26:21 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:26:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:26:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 09 Jul 2026 13:54:18 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 09 Jul 2026 13:54:18 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 13:54:18 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 09 Jul 2026 13:54:18 GMT
WORKDIR /usr/local/tomcat
# Thu, 09 Jul 2026 13:54:18 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 09 Jul 2026 13:54:18 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 09 Jul 2026 13:54:18 GMT
ENV TOMCAT_MAJOR=11
# Thu, 09 Jul 2026 13:54:18 GMT
ENV TOMCAT_VERSION=11.0.24
# Thu, 09 Jul 2026 13:54:18 GMT
ENV TOMCAT_SHA512=a2fb1bd511735bd3d135b87f628d2b1f71a43aed7c4d7511e770092e571bad6d5ad9e97a580852119770477fd86d7ed156d83d3cee2854bce260725ce48934d0
# Thu, 09 Jul 2026 15:01:29 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Thu, 09 Jul 2026 15:02:12 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 15:02:19 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Thu, 09 Jul 2026 15:02:19 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 09 Jul 2026 15:02:19 GMT
ENTRYPOINT []
# Thu, 09 Jul 2026 15:02:19 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d36d9a4ee5b21337a0038d06f00582b458b412ffa7aa3be4086c8692dfab4687`  
		Last Modified: Tue, 23 Jun 2026 01:35:00 GMT  
		Size: 31.0 MB (30971606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ac67dd6c068291ec7a10af8483682c929d96d783d13897b916862b7778a69fc`  
		Last Modified: Thu, 02 Jul 2026 02:28:42 GMT  
		Size: 17.8 MB (17831597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36b9788f4dd438da6f696804eb9ca80e829dd792e1730e2ae1f3a05b64ad1b00`  
		Last Modified: Thu, 02 Jul 2026 02:28:46 GMT  
		Size: 46.1 MB (46111450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2f53f829f4ca0634f0da41146ba03194d39d423e7e43ddc7186237dd714b71`  
		Last Modified: Thu, 02 Jul 2026 02:28:36 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9724c8d1e27c1505de8efd91626ebc9d6550b9daf36ed0fe6f35b7d1b8229e25`  
		Last Modified: Thu, 02 Jul 2026 02:28:37 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cac8bc3a7d5f39246facbd9bc8bd4f00df95c6d94f6a6cf6bc792ff662c51e0`  
		Last Modified: Thu, 09 Jul 2026 13:56:50 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df1a75be555a9918f0974572cafeecb2497b6f3a717bbbc75c8a85956fc7fc79`  
		Last Modified: Thu, 09 Jul 2026 15:03:58 GMT  
		Size: 14.6 MB (14588688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b1804c097c0ea85bb745ba0824419e1e8f5c72e3dde59d047570c96365a110`  
		Last Modified: Thu, 09 Jul 2026 15:03:55 GMT  
		Size: 228.6 KB (228569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:8d37863b86e5f16ed740956db540aaae6ac02f842e669251a513e2cc798c07fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3350068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:158e8b143674dfa7ad6be67e64408c8b9a89720c4dcac17f27723db268bfdaba`

```dockerfile
```

-	Layers:
	-	`sha256:0710a555c901300b021420607a79e8a99c6ca0c5ef22f306f4ad8aaf3755ce25`  
		Last Modified: Thu, 09 Jul 2026 15:03:55 GMT  
		Size: 3.3 MB (3325918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e52ab6bbd17744b443a8e6368239cd281eaaa4470db477731422d5087dfae7d`  
		Last Modified: Thu, 09 Jul 2026 15:03:55 GMT  
		Size: 24.1 KB (24150 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre17-temurin-noble` - linux; s390x

```console
$ docker pull tomcat@sha256:0fa4b92cb8cbcd37b7e1411d4020670d345b61467ff180b62907d14ad9f4736d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106656787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c94371254d87dbf4d523c7c084ad26f44b39cd7c7bdd16409637a804e5fc71c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 31 Jul 2026 20:38:37 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:38:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:38:37 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:38:39 GMT
ADD file:6086e70240c95f713e06ab2c1f53baed9645134bf0319a771ee83e6caa6fe818 in / 
# Fri, 31 Jul 2026 20:38:39 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:12:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:12:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:12:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:12:05 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:12:05 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 04 Aug 2026 01:14:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        arm64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        armhf)          ESUM='018d1f5c11b2f1a2175c282a0fe8a17d9166da84b70ec1c60c1fa628a261d1eb';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_arm_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64el)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        riscv64)          ESUM='08c8c193fc2e8e6eb4450d3ddcefa78889eef338b2bbc0b30e5a6d586fc6d646';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:14:08 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:14:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:14:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 03:23:38 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 04 Aug 2026 03:23:38 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:23:38 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 04 Aug 2026 03:23:38 GMT
WORKDIR /usr/local/tomcat
# Tue, 04 Aug 2026 03:23:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 03:23:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 03:23:38 GMT
ENV TOMCAT_MAJOR=11
# Tue, 04 Aug 2026 03:23:38 GMT
ENV TOMCAT_VERSION=11.0.24
# Tue, 04 Aug 2026 03:23:38 GMT
ENV TOMCAT_SHA512=a2fb1bd511735bd3d135b87f628d2b1f71a43aed7c4d7511e770092e571bad6d5ad9e97a580852119770477fd86d7ed156d83d3cee2854bce260725ce48934d0
# Tue, 04 Aug 2026 03:23:38 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 04 Aug 2026 03:23:41 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:23:42 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 04 Aug 2026 03:23:42 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 04 Aug 2026 03:23:42 GMT
ENTRYPOINT []
# Tue, 04 Aug 2026 03:23:42 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:6bb1e92e6c04f8404c596df473b847d14a4cc2ca1d4734e5353b4b54d37b3338`  
		Last Modified: Fri, 31 Jul 2026 22:22:57 GMT  
		Size: 29.9 MB (29935711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244bcf803db4aa1c3a74edc930afc51d254e49e3935fe005a3ec5a3befb1a351`  
		Last Modified: Tue, 04 Aug 2026 01:12:32 GMT  
		Size: 17.5 MB (17533740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:140c69c9707c8d5aecaa5ccb0e49789856014ed0a0d0dcd696cae9105aad9be5`  
		Last Modified: Tue, 04 Aug 2026 01:14:26 GMT  
		Size: 44.5 MB (44541829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c73ab492e19e2d362ac6cacf3a27e433a47035c5f8046b49f961789b21d0f6`  
		Last Modified: Tue, 04 Aug 2026 01:14:25 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44fa2dbc6c9ff9f0350edce6302a5ded36b28c8ef55d888c84ca1dde32729a99`  
		Last Modified: Tue, 04 Aug 2026 01:14:25 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86b1301159160e2242d4b3f57701041406b3023c81f91e7ae816374f8a430c36`  
		Last Modified: Tue, 04 Aug 2026 03:23:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100c0a3dcc8316e630df0eba795a0cff18828f935332a2351a4f7e2a788ff62c`  
		Last Modified: Tue, 04 Aug 2026 03:23:55 GMT  
		Size: 14.4 MB (14409565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c34f950042c0b22978803d412cf95c70649aa7541efad72a2f3482717830fcbf`  
		Last Modified: Tue, 04 Aug 2026 03:23:55 GMT  
		Size: 233.3 KB (233296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:82907712bc4fa1f461be9b3517b22887f069f1f486bd1898d687f92dc6e122d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3360060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e05fcae015a8f39f60d356b4872ffb6013e4ff0b59e9296af6c79c37719c8005`

```dockerfile
```

-	Layers:
	-	`sha256:23d1a75ebe9e72e80b3420b6a32743998690020230ff52fb85252a032fe6c890`  
		Last Modified: Tue, 04 Aug 2026 03:23:55 GMT  
		Size: 3.3 MB (3336016 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d38ce76b0c905eec032952ede12d01aa69bc894bcff32b9f222680cadabdd7b`  
		Last Modified: Tue, 04 Aug 2026 03:23:55 GMT  
		Size: 24.0 KB (24044 bytes)  
		MIME: application/vnd.in-toto+json
