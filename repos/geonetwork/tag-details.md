<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `geonetwork`

-	[`geonetwork:3`](#geonetwork3)
-	[`geonetwork:3-postgres`](#geonetwork3-postgres)
-	[`geonetwork:3.12`](#geonetwork312)
-	[`geonetwork:3.12-postgres`](#geonetwork312-postgres)
-	[`geonetwork:3.12.12`](#geonetwork31212)
-	[`geonetwork:3.12.12-postgres`](#geonetwork31212-postgres)
-	[`geonetwork:4`](#geonetwork4)
-	[`geonetwork:4.2`](#geonetwork42)
-	[`geonetwork:4.2.17`](#geonetwork4217)
-	[`geonetwork:4.4`](#geonetwork44)
-	[`geonetwork:4.4.12`](#geonetwork4412)
-	[`geonetwork:latest`](#geonetworklatest)

## `geonetwork:3`

```console
$ docker pull geonetwork@sha256:d1e8134756f981018b23094d7cd50c4b8727f4f3b3ec13cd5e3a13c8c63beaec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `geonetwork:3` - linux; amd64

```console
$ docker pull geonetwork@sha256:c0015762530e1ba36aeb7a06fa765092ff082127b4e337f029a8ed7f67e8f1b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350551043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d126ee5ae1bbad7d066e098dd93fe71fd8e1718b3f4bbae36ad9a22ee69dffa0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:16:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:14 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 03:16:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 03:16:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:16:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:16:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 04:29:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 04:29:29 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:29:29 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 04:29:29 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:29 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 04:29:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Wed, 16 Sep 2026 04:29:58 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 04:29:58 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 04:29:58 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 04:29:58 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 05:16:53 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 05:16:53 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 16 Sep 2026 05:16:53 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 05:16:53 GMT
ENV GN_VERSION=3.12.12
# Wed, 16 Sep 2026 05:16:53 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Wed, 16 Sep 2026 05:16:53 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 16 Sep 2026 05:19:13 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Wed, 16 Sep 2026 05:19:13 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:19:13 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:19:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 05:19:13 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d10bcdd9a8ad2f2737d6760230c9cafe0fdb255ac82917ff8d7fbe174dec97`  
		Last Modified: Wed, 16 Sep 2026 03:16:29 GMT  
		Size: 16.9 MB (16947638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3b108208610184f862120fe33d918051037c4915e6dfde5ca2c0dcf491aaf1`  
		Last Modified: Wed, 16 Sep 2026 03:16:30 GMT  
		Size: 55.2 MB (55168839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14e261a1e8709a74502ca82b6a315c408542b86d7a6d0a0e699cf735a4e85d7a`  
		Last Modified: Wed, 16 Sep 2026 03:16:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9340437cbddbf020163ee2c2d88abf409288f6ae926828b164e8b6ccb971a85`  
		Last Modified: Wed, 16 Sep 2026 03:16:28 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32754ee369f13ea45cab1ff004fae56475c2c231bf0ed7f60040cac20737eed5`  
		Last Modified: Wed, 16 Sep 2026 04:30:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2360d3949e9b9971f685f5bcce8e839afe27cb15c206f9ad0dd9c19fe50a3c01`  
		Last Modified: Wed, 16 Sep 2026 04:30:08 GMT  
		Size: 14.1 MB (14116356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee9c02f66982b83b89c6b2920d3f64a4edfb409fd02c2a6804970a7102f497f`  
		Last Modified: Wed, 16 Sep 2026 05:19:39 GMT  
		Size: 234.6 MB (234550968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1cd7c0c60ed202b13cf24b683178979906508d3d4b430b75c30c1c5106dad2a`  
		Last Modified: Wed, 16 Sep 2026 05:19:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3` - unknown; unknown

```console
$ docker pull geonetwork@sha256:496a72feb023fe979d873d570aec6916b103dc0f74d6b4d19343c865602fa51c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4363315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42c579b7fe21f72ddf862440c3b2a58bce51f11bb46633e1d6084e2bff69b4d3`

```dockerfile
```

-	Layers:
	-	`sha256:baa4a25d4c03f055091cb15582afe8b357dfe233ab526227e87eebae838aee5d`  
		Last Modified: Wed, 16 Sep 2026 05:19:34 GMT  
		Size: 4.3 MB (4344222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8a3b666d6e4790ca18362b1b62999842e05cc50dd9766804f7548e8137c14fd`  
		Last Modified: Wed, 16 Sep 2026 05:19:34 GMT  
		Size: 19.1 KB (19093 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:3a624a97f00f48eb4c2974f43915cdabeb94d44fb082cdbe8980067f0000dacc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.2 MB (342237492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc94973fdef95c7691aa96ae661c987985fa3d4b4db22345cd49a957992f35e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 17 Aug 2026 13:17:18 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:17:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:17:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:17:21 GMT
ADD file:2164aa16295913265eec9e47409ded367df44d23b10145b85e6b3cb27d1e239c in / 
# Mon, 17 Aug 2026 13:17:21 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:11:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 19:11:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:11:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:11:55 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:11:55 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 18 Aug 2026 19:12:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='ac93b4b75d6c0592c83030dbbeeaed46f5fbfccb276cf26c86aab3e49bba090e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Tue, 18 Aug 2026 19:12:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 19:12:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:12:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 20:24:08 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 20:24:08 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:24:08 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 20:24:08 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 20:24:08 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_MAJOR=9
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_VERSION=9.0.121
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Tue, 18 Aug 2026 20:24:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Tue, 18 Aug 2026 20:24:34 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 20:24:34 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 20:24:34 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 20:24:34 GMT
CMD ["catalina.sh" "run"]
# Tue, 18 Aug 2026 21:15:51 GMT
ENV GN_FILE=geonetwork.war
# Tue, 18 Aug 2026 21:15:51 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 18 Aug 2026 21:15:51 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 18 Aug 2026 21:15:51 GMT
ENV GN_VERSION=3.12.12
# Tue, 18 Aug 2026 21:15:51 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Tue, 18 Aug 2026 21:15:51 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 18 Aug 2026 21:18:47 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Tue, 18 Aug 2026 21:18:47 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:18:48 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 21:18:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 21:18:48 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:66f3e1c55273a462a0982068d442942c00c78585376028748a23901efa512546`  
		Last Modified: Mon, 17 Aug 2026 14:27:34 GMT  
		Size: 26.9 MB (26872780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd5ff123d65f06a06e05df4fbc985dfb1e712c4893a99a91f3560b32af611e1`  
		Last Modified: Tue, 18 Aug 2026 19:12:18 GMT  
		Size: 16.3 MB (16268689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe9346f73c68c242c1dcff803b4d9347e4ef0451eb5b3ca0a5f3d4fa5627af61`  
		Last Modified: Tue, 18 Aug 2026 19:12:19 GMT  
		Size: 50.5 MB (50541462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75a6c25ae29b38f2ea91bd3e7898a091d31454ea291002ebf4a55c836448726`  
		Last Modified: Tue, 18 Aug 2026 19:12:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ce6110d55149d8f0859d0cf20788727ad956518790a69b08adc6cf61611640`  
		Last Modified: Tue, 18 Aug 2026 19:12:17 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17c889623b2b2083a1d46e6ca33cf8d2df7bd93653d691ee250f37738ac14dc8`  
		Last Modified: Tue, 18 Aug 2026 20:24:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b632d5d97b7dc2b29500b76fe7ef6a4b27260856046bf2a3d6444a7bac09b699`  
		Last Modified: Tue, 18 Aug 2026 20:24:43 GMT  
		Size: 14.0 MB (14012471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f69de9e3b88d95b01f49a513f9f64e80e8965ea02b1faf65da06d61f6f607a`  
		Last Modified: Tue, 18 Aug 2026 21:19:14 GMT  
		Size: 234.5 MB (234538961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b346ddd5ec029e1723e3151873793ba707371f2d1a4e28b5dc4cedf416b924b`  
		Last Modified: Tue, 18 Aug 2026 21:19:09 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3` - unknown; unknown

```console
$ docker pull geonetwork@sha256:9d53437aee2555372a36019011572dfd843a74263a6dcb2357b5c4d4d14634c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4367345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc413d70ebb3ca1b611849eedc68b0c60ded1904d105a81a7aa13800e9a34641`

```dockerfile
```

-	Layers:
	-	`sha256:14e58ef70a3047a23489979dd9bff6eec0086c809a9faccf5dfbc81b423e41ed`  
		Last Modified: Tue, 18 Aug 2026 21:19:09 GMT  
		Size: 4.3 MB (4348181 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dff10b8feb17e56189e3919d82a0bdd732e80d214a19d93cbd2fe02f05461f5`  
		Last Modified: Tue, 18 Aug 2026 21:19:09 GMT  
		Size: 19.2 KB (19164 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:015d90447089a8a4aea18aeeda51b0b3e15e719358920e4d1739aeb591f4691e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.9 MB (348850135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ffd9ec8b4d3a82418db995509134f0e21e42b1cc04c6d9d00d713764f1f6669`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:16:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:07 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 03:16:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 03:16:10 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:16:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:16:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 04:29:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 04:29:39 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:29:39 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 04:29:39 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:39 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 04:30:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Wed, 16 Sep 2026 04:30:06 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 04:30:06 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 04:30:06 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 04:30:06 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 05:16:35 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 05:16:35 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 16 Sep 2026 05:16:35 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 05:16:35 GMT
ENV GN_VERSION=3.12.12
# Wed, 16 Sep 2026 05:16:35 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Wed, 16 Sep 2026 05:16:35 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 16 Sep 2026 05:19:24 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Wed, 16 Sep 2026 05:19:24 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:19:24 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:19:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 05:19:24 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2684ed3f62207b159c5a962f8bbc7d53a8996b59c146bb4a1813b9df89b70e52`  
		Last Modified: Wed, 16 Sep 2026 03:16:23 GMT  
		Size: 17.0 MB (16957485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815b036223534df703dbd0802b67640746900ea6099809e8b361a3768ac98ef2`  
		Last Modified: Wed, 16 Sep 2026 03:16:24 GMT  
		Size: 54.3 MB (54269518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295504c62538fcf6fc9d570cf8465c9c263db6fd5c59851cb9aefbe1170fef06`  
		Last Modified: Wed, 16 Sep 2026 03:16:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09401222144c72cdfe989082973974c49fc468c8ea74298c3141e8fa7703daf8`  
		Last Modified: Wed, 16 Sep 2026 03:16:22 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87fe787514197f70d44cd17d246464e974ab5993b62f877ade8c0b8366e256b0`  
		Last Modified: Wed, 16 Sep 2026 04:30:15 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2e28a49bdae00899e9f5692b9e1a822189fb4979896ee4f02919e4409a82f2`  
		Last Modified: Wed, 16 Sep 2026 04:30:15 GMT  
		Size: 14.1 MB (14123646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98592bfd7dfc6e589054fab6053d14a3995ed6e902c107d48df66c7ce17195bc`  
		Last Modified: Wed, 16 Sep 2026 05:19:50 GMT  
		Size: 234.6 MB (234554779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c968689cf38b8d4ed3e3b2c36abb2e7b0c8027b6f6352b6597ae1ef3c8db5956`  
		Last Modified: Wed, 16 Sep 2026 05:19:45 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3` - unknown; unknown

```console
$ docker pull geonetwork@sha256:b4d87106683dfb1489188bf2848ff32ba01c1409283a75d19e5845c1bd4490cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4364566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1438868ea20e25f18af52d622473d0de4a95df68125ab1d6459bee0d68497286`

```dockerfile
```

-	Layers:
	-	`sha256:db66c37ed5c4c5b251e69e0407c883bcd9a1555532ad29be79fe76f08395b1b1`  
		Last Modified: Wed, 16 Sep 2026 05:19:45 GMT  
		Size: 4.3 MB (4345382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1084f0ebd1bd3ab33f1f59edc406062d8aba529f07242c2ece2cb8ab077105de`  
		Last Modified: Wed, 16 Sep 2026 05:19:45 GMT  
		Size: 19.2 KB (19184 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:91ec7a985c72091a2331edc673c6ffcd056d78ab517ef9325c08f0c667f3e6af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.6 MB (354580686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:840b9c8d54f17019493061ae8c0cfc230b5ba3a209da8a6550c77d237a30d0ad`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 06:47:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 06:47:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 06:47:17 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 06:47:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 06:47:22 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 06:47:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:47:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 10:09:33 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 10:09:33 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:09:33 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 10:09:33 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 10:09:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 10:10:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Wed, 16 Sep 2026 10:10:54 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 10:10:54 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 10:10:54 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 10:10:54 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 11:45:35 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 11:45:35 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 16 Sep 2026 11:45:35 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 11:45:35 GMT
ENV GN_VERSION=3.12.12
# Wed, 16 Sep 2026 11:45:35 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Wed, 16 Sep 2026 11:45:35 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 16 Sep 2026 11:47:18 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Wed, 16 Sep 2026 11:47:18 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 11:47:18 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 11:47:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 11:47:18 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4203fb8b2c14c1adc11a851d1fc29ab6315d968370915b4c1821d3df6e6db4`  
		Last Modified: Wed, 16 Sep 2026 06:47:54 GMT  
		Size: 18.8 MB (18765991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:836e72b63661a53ba1e6ef02949b8338426e4ab877fbacd506989f083346ec12`  
		Last Modified: Wed, 16 Sep 2026 06:47:55 GMT  
		Size: 52.7 MB (52675430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23af5db4aea8f623e639ba4c3e71f0d101730117203170c9de556abf148d0875`  
		Last Modified: Wed, 16 Sep 2026 06:47:53 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fab9d834d49692e658fc2000cb16a9bc520512d642176fe655f40b5803fd2f16`  
		Last Modified: Wed, 16 Sep 2026 06:47:54 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4073bcc81ba5a8f84a2a5f974757548bd490d4eccf2b3b31e4e6e6e0daf49750`  
		Last Modified: Wed, 16 Sep 2026 10:11:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba727cb01a0149a033b3a450dfa14453ceac9dd7e38cecddce81961efd3d520`  
		Last Modified: Wed, 16 Sep 2026 10:11:15 GMT  
		Size: 14.2 MB (14184031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:855180a0240c4a1620e25540743f57ab47d0f805c682cc6c08cb3d620ccbf352`  
		Last Modified: Wed, 16 Sep 2026 11:48:06 GMT  
		Size: 234.6 MB (234575149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e8a18109ad3a0e34faf8af12450d585f674cfda233a6fcbe32cddfefa01aac`  
		Last Modified: Wed, 16 Sep 2026 11:48:01 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3` - unknown; unknown

```console
$ docker pull geonetwork@sha256:fd69998bc8f5cbe11c9a5804f822198aca5f1be95c7ee93b70c66df2265139e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4366100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cc3feac2f6344e876e960d1f3375f6dd17cc6272e323bd045a9cb7882923d4f`

```dockerfile
```

-	Layers:
	-	`sha256:f68aa9708cae8688aebfbfeb921ea4dbdbedcb2d78fdc60a4fe2d292cbb48db2`  
		Last Modified: Wed, 16 Sep 2026 11:48:01 GMT  
		Size: 4.3 MB (4346969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:482beca13d8a14e4d8fa5073d506c02be112ff3e60da6e6e1054a8f524331a80`  
		Last Modified: Wed, 16 Sep 2026 11:48:01 GMT  
		Size: 19.1 KB (19131 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:3-postgres`

```console
$ docker pull geonetwork@sha256:5815c19638ee18191ba6cdf6507eefa85a7ff706382e3daf4db50adfcda3355c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `geonetwork:3-postgres` - linux; amd64

```console
$ docker pull geonetwork@sha256:49273618f884bdd806d33ef10f83d215f30e7d25380c0153774ff5d0fa78f4f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.5 MB (364505749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801af578045074211373b5b4b0aefcc753ad3377847a5a95d53e9f9c1bde14e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:16:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:14 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 03:16:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 03:16:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:16:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:16:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 04:29:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 04:29:29 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:29:29 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 04:29:29 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:29 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 04:29:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Wed, 16 Sep 2026 04:29:58 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 04:29:58 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 04:29:58 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 04:29:58 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 05:16:53 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 05:16:53 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 16 Sep 2026 05:16:53 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 05:16:53 GMT
ENV GN_VERSION=3.12.12
# Wed, 16 Sep 2026 05:16:53 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Wed, 16 Sep 2026 05:16:53 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 16 Sep 2026 05:19:13 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Wed, 16 Sep 2026 05:19:13 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:19:13 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:19:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 05:19:13 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:15:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 06:15:15 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Wed, 16 Sep 2026 06:15:15 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Wed, 16 Sep 2026 06:15:15 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:15:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 06:15:15 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d10bcdd9a8ad2f2737d6760230c9cafe0fdb255ac82917ff8d7fbe174dec97`  
		Last Modified: Wed, 16 Sep 2026 03:16:29 GMT  
		Size: 16.9 MB (16947638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3b108208610184f862120fe33d918051037c4915e6dfde5ca2c0dcf491aaf1`  
		Last Modified: Wed, 16 Sep 2026 03:16:30 GMT  
		Size: 55.2 MB (55168839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14e261a1e8709a74502ca82b6a315c408542b86d7a6d0a0e699cf735a4e85d7a`  
		Last Modified: Wed, 16 Sep 2026 03:16:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9340437cbddbf020163ee2c2d88abf409288f6ae926828b164e8b6ccb971a85`  
		Last Modified: Wed, 16 Sep 2026 03:16:28 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32754ee369f13ea45cab1ff004fae56475c2c231bf0ed7f60040cac20737eed5`  
		Last Modified: Wed, 16 Sep 2026 04:30:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2360d3949e9b9971f685f5bcce8e839afe27cb15c206f9ad0dd9c19fe50a3c01`  
		Last Modified: Wed, 16 Sep 2026 04:30:08 GMT  
		Size: 14.1 MB (14116356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee9c02f66982b83b89c6b2920d3f64a4edfb409fd02c2a6804970a7102f497f`  
		Last Modified: Wed, 16 Sep 2026 05:19:39 GMT  
		Size: 234.6 MB (234550968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1cd7c0c60ed202b13cf24b683178979906508d3d4b430b75c30c1c5106dad2a`  
		Last Modified: Wed, 16 Sep 2026 05:19:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2275ef2b67c7c32806e285daba4dad49f1c643b039d0b6f4ede6004f55744b2`  
		Last Modified: Wed, 16 Sep 2026 06:15:30 GMT  
		Size: 14.0 MB (13951285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9878853ac49065a0a86989e9efbf80ab9e669c764adcd993a670ce6d55997a6`  
		Last Modified: Wed, 16 Sep 2026 06:15:29 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f781b463c205601ac8478a38d7f9d5d03e859de57501cdf22323159cb46ac0d`  
		Last Modified: Wed, 16 Sep 2026 06:15:29 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f64c926a466c3685f8fe05dc501cd3ce05adf17da839d5d23572fecfcf0137`  
		Last Modified: Wed, 16 Sep 2026 06:15:29 GMT  
		Size: 974.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:55ae6e312d357b9ec094a2dc2792bb0911921518021045714531e7291dfb5043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5921691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cb40555b454037eb2858ddffc7fcacb20b6711ea25c3fcad22ed7aa9b0c9a35`

```dockerfile
```

-	Layers:
	-	`sha256:735ad34647fb1e4d7e70750c0ee795457a44cc79ba7a4968d3ac18269b602e06`  
		Last Modified: Wed, 16 Sep 2026 06:15:29 GMT  
		Size: 5.9 MB (5898873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f959d643729f9ec5ade3b9fd44ff1483e0804d454b77ad4a4862b313618c9f02`  
		Last Modified: Wed, 16 Sep 2026 06:15:29 GMT  
		Size: 22.8 KB (22818 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3-postgres` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:8b145245ebef57b2f25b0d24e9ad42709d9c439c4198acca40cc2dbe80b567c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.3 MB (355252803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:340ee009e11428f351917e2163b9657263521bddddc1c9f36b4fe7f06978939e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 17 Aug 2026 13:17:18 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:17:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:17:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:17:21 GMT
ADD file:2164aa16295913265eec9e47409ded367df44d23b10145b85e6b3cb27d1e239c in / 
# Mon, 17 Aug 2026 13:17:21 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:11:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 19:11:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:11:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:11:55 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:11:55 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 18 Aug 2026 19:12:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='ac93b4b75d6c0592c83030dbbeeaed46f5fbfccb276cf26c86aab3e49bba090e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Tue, 18 Aug 2026 19:12:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 19:12:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:12:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 20:24:08 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 20:24:08 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:24:08 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 20:24:08 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 20:24:08 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_MAJOR=9
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_VERSION=9.0.121
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Tue, 18 Aug 2026 20:24:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Tue, 18 Aug 2026 20:24:34 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 20:24:34 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 20:24:34 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 20:24:34 GMT
CMD ["catalina.sh" "run"]
# Tue, 18 Aug 2026 21:15:51 GMT
ENV GN_FILE=geonetwork.war
# Tue, 18 Aug 2026 21:15:51 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 18 Aug 2026 21:15:51 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 18 Aug 2026 21:15:51 GMT
ENV GN_VERSION=3.12.12
# Tue, 18 Aug 2026 21:15:51 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Tue, 18 Aug 2026 21:15:51 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 18 Aug 2026 21:18:47 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Tue, 18 Aug 2026 21:18:47 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:18:48 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 21:18:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 21:18:48 GMT
CMD ["catalina.sh" "run"]
# Tue, 18 Aug 2026 22:10:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 22:10:55 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Tue, 18 Aug 2026 22:10:55 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Tue, 18 Aug 2026 22:10:55 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 22:10:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 22:10:55 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:66f3e1c55273a462a0982068d442942c00c78585376028748a23901efa512546`  
		Last Modified: Mon, 17 Aug 2026 14:27:34 GMT  
		Size: 26.9 MB (26872780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd5ff123d65f06a06e05df4fbc985dfb1e712c4893a99a91f3560b32af611e1`  
		Last Modified: Tue, 18 Aug 2026 19:12:18 GMT  
		Size: 16.3 MB (16268689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe9346f73c68c242c1dcff803b4d9347e4ef0451eb5b3ca0a5f3d4fa5627af61`  
		Last Modified: Tue, 18 Aug 2026 19:12:19 GMT  
		Size: 50.5 MB (50541462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75a6c25ae29b38f2ea91bd3e7898a091d31454ea291002ebf4a55c836448726`  
		Last Modified: Tue, 18 Aug 2026 19:12:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ce6110d55149d8f0859d0cf20788727ad956518790a69b08adc6cf61611640`  
		Last Modified: Tue, 18 Aug 2026 19:12:17 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17c889623b2b2083a1d46e6ca33cf8d2df7bd93653d691ee250f37738ac14dc8`  
		Last Modified: Tue, 18 Aug 2026 20:24:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b632d5d97b7dc2b29500b76fe7ef6a4b27260856046bf2a3d6444a7bac09b699`  
		Last Modified: Tue, 18 Aug 2026 20:24:43 GMT  
		Size: 14.0 MB (14012471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f69de9e3b88d95b01f49a513f9f64e80e8965ea02b1faf65da06d61f6f607a`  
		Last Modified: Tue, 18 Aug 2026 21:19:14 GMT  
		Size: 234.5 MB (234538961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b346ddd5ec029e1723e3151873793ba707371f2d1a4e28b5dc4cedf416b924b`  
		Last Modified: Tue, 18 Aug 2026 21:19:09 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e1390b6f919ba3907ab0be81608978c9f07f3f6bd18d8ec1f2a704253a7c53`  
		Last Modified: Tue, 18 Aug 2026 22:11:10 GMT  
		Size: 13.0 MB (13011896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a4a7942ed63fa1b7dfa4fd9b2f433d595dc7d775d1c98d72b958726cadbfa7`  
		Last Modified: Tue, 18 Aug 2026 22:11:10 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3625e3a8233785a66029eb91302761de9b948a83c3741ddd9d551d050eba517b`  
		Last Modified: Tue, 18 Aug 2026 22:11:10 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84426a66d983a326304172c4908e9be35406c24c6b1f7b5d515f47cc716df7f0`  
		Last Modified: Tue, 18 Aug 2026 22:11:10 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:1f0500317c16ef581759d6da0aab8b2b7e6726b70d48ffa9e5821521d0a3b8d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5924468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a47843d6d7dac5ddd62af87008b70a05e8e0935933a00ae2d366b2a1f7aa1db0`

```dockerfile
```

-	Layers:
	-	`sha256:80192b3242a415958bd067c3610e3e9727ed245c0e7d874a5e35ad3fc3350840`  
		Last Modified: Tue, 18 Aug 2026 22:11:10 GMT  
		Size: 5.9 MB (5901564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbdffe3bcae430a8d3cb7379c794a1cd3abfea1e7d962785fcdb55c8a5322213`  
		Last Modified: Tue, 18 Aug 2026 22:11:10 GMT  
		Size: 22.9 KB (22904 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3-postgres` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:1461cc4d743b235a69cf8f2910aaaaeabcd348bcd2f7273c1e8f11e8fdb7dcec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.8 MB (362788665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24929f5ba3e526a0c28f3fc491769c67b34280cb9f661a6ed7a0ba9514101de9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:16:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:07 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 03:16:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 03:16:10 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:16:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:16:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 04:29:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 04:29:39 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:29:39 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 04:29:39 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:39 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 04:30:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Wed, 16 Sep 2026 04:30:06 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 04:30:06 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 04:30:06 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 04:30:06 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 05:16:35 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 05:16:35 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 16 Sep 2026 05:16:35 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 05:16:35 GMT
ENV GN_VERSION=3.12.12
# Wed, 16 Sep 2026 05:16:35 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Wed, 16 Sep 2026 05:16:35 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 16 Sep 2026 05:19:24 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Wed, 16 Sep 2026 05:19:24 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:19:24 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:19:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 05:19:24 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 06:15:06 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Wed, 16 Sep 2026 06:15:06 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Wed, 16 Sep 2026 06:15:06 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:15:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 06:15:06 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2684ed3f62207b159c5a962f8bbc7d53a8996b59c146bb4a1813b9df89b70e52`  
		Last Modified: Wed, 16 Sep 2026 03:16:23 GMT  
		Size: 17.0 MB (16957485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815b036223534df703dbd0802b67640746900ea6099809e8b361a3768ac98ef2`  
		Last Modified: Wed, 16 Sep 2026 03:16:24 GMT  
		Size: 54.3 MB (54269518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295504c62538fcf6fc9d570cf8465c9c263db6fd5c59851cb9aefbe1170fef06`  
		Last Modified: Wed, 16 Sep 2026 03:16:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09401222144c72cdfe989082973974c49fc468c8ea74298c3141e8fa7703daf8`  
		Last Modified: Wed, 16 Sep 2026 03:16:22 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87fe787514197f70d44cd17d246464e974ab5993b62f877ade8c0b8366e256b0`  
		Last Modified: Wed, 16 Sep 2026 04:30:15 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2e28a49bdae00899e9f5692b9e1a822189fb4979896ee4f02919e4409a82f2`  
		Last Modified: Wed, 16 Sep 2026 04:30:15 GMT  
		Size: 14.1 MB (14123646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98592bfd7dfc6e589054fab6053d14a3995ed6e902c107d48df66c7ce17195bc`  
		Last Modified: Wed, 16 Sep 2026 05:19:50 GMT  
		Size: 234.6 MB (234554779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c968689cf38b8d4ed3e3b2c36abb2e7b0c8027b6f6352b6597ae1ef3c8db5956`  
		Last Modified: Wed, 16 Sep 2026 05:19:45 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f64ff1a71f28a06c0f5e9edd72c2b733155b9c80c2f49de34ca4d0d4660a04`  
		Last Modified: Wed, 16 Sep 2026 06:15:21 GMT  
		Size: 13.9 MB (13935112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1db6b092a10afcb64c6ea30e5f1fbca9647cec7f0592e6d1bf1539e1624d2069`  
		Last Modified: Wed, 16 Sep 2026 06:15:21 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac41a1b0f89fe6d1017341e131caf5fabfafd7adaa97731839a0524a5b44290`  
		Last Modified: Wed, 16 Sep 2026 06:15:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:079729fb4d6c8ff5bcaa74463e39a743ad1ffe5a2baf0f36d7eb276235557324`  
		Last Modified: Wed, 16 Sep 2026 06:15:21 GMT  
		Size: 974.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:0068d483d1576948c38d3e889988ff30939a185616c912c79b6da49bce4cd6eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5929007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d0c71efb5d59e48c25b08cfd4e648753b693156a561642dad72dde3db3c106`

```dockerfile
```

-	Layers:
	-	`sha256:c8d6657cfb19a85bddcff6e0fe7743f264f5aacf8e10c5ebf75b893a8842cd45`  
		Last Modified: Wed, 16 Sep 2026 06:15:21 GMT  
		Size: 5.9 MB (5906081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c423ec6b0a2dce787ccc747629d20c96ad7e695e6b21319307f3299e5561d820`  
		Last Modified: Wed, 16 Sep 2026 06:15:21 GMT  
		Size: 22.9 KB (22926 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3-postgres` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:9c9aa71730a1d3aaaa7a6fc7e38bd66b56dd001f9bc6a25d039c82ac16700718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.0 MB (369035505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40588005f9a4fb269274085a8af0cf3056969afe038ba378f8460181af310572`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 06:47:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 06:47:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 06:47:17 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 06:47:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 06:47:22 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 06:47:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:47:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 10:09:33 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 10:09:33 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:09:33 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 10:09:33 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 10:09:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 10:10:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Wed, 16 Sep 2026 10:10:54 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 10:10:54 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 10:10:54 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 10:10:54 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 11:45:35 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 11:45:35 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 16 Sep 2026 11:45:35 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 11:45:35 GMT
ENV GN_VERSION=3.12.12
# Wed, 16 Sep 2026 11:45:35 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Wed, 16 Sep 2026 11:45:35 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 16 Sep 2026 11:47:18 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Wed, 16 Sep 2026 11:47:18 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 11:47:18 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 11:47:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 11:47:18 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 12:18:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 12:18:30 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Wed, 16 Sep 2026 12:18:30 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Wed, 16 Sep 2026 12:18:31 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 12:18:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 12:18:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4203fb8b2c14c1adc11a851d1fc29ab6315d968370915b4c1821d3df6e6db4`  
		Last Modified: Wed, 16 Sep 2026 06:47:54 GMT  
		Size: 18.8 MB (18765991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:836e72b63661a53ba1e6ef02949b8338426e4ab877fbacd506989f083346ec12`  
		Last Modified: Wed, 16 Sep 2026 06:47:55 GMT  
		Size: 52.7 MB (52675430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23af5db4aea8f623e639ba4c3e71f0d101730117203170c9de556abf148d0875`  
		Last Modified: Wed, 16 Sep 2026 06:47:53 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fab9d834d49692e658fc2000cb16a9bc520512d642176fe655f40b5803fd2f16`  
		Last Modified: Wed, 16 Sep 2026 06:47:54 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4073bcc81ba5a8f84a2a5f974757548bd490d4eccf2b3b31e4e6e6e0daf49750`  
		Last Modified: Wed, 16 Sep 2026 10:11:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba727cb01a0149a033b3a450dfa14453ceac9dd7e38cecddce81961efd3d520`  
		Last Modified: Wed, 16 Sep 2026 10:11:15 GMT  
		Size: 14.2 MB (14184031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:855180a0240c4a1620e25540743f57ab47d0f805c682cc6c08cb3d620ccbf352`  
		Last Modified: Wed, 16 Sep 2026 11:48:06 GMT  
		Size: 234.6 MB (234575149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e8a18109ad3a0e34faf8af12450d585f674cfda233a6fcbe32cddfefa01aac`  
		Last Modified: Wed, 16 Sep 2026 11:48:01 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a808cc058c8ad7643336fd69476ada69d58e91b01fa1b84e873649f4b76d9bf6`  
		Last Modified: Wed, 16 Sep 2026 12:19:15 GMT  
		Size: 14.5 MB (14451406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b285cea9ab1b03163525b6cc7b9251218b0417d12c03cdc4c539944c13ba8e`  
		Last Modified: Wed, 16 Sep 2026 12:19:14 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c3d95389a432e3bd46a36720e8121e8156c04650305c4ad63d1764a6c2a3d6`  
		Last Modified: Wed, 16 Sep 2026 12:19:14 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bcb36b731806eff006e8ed7d90f65a03cdc040c2af8d288a33bbd4993a60e4a`  
		Last Modified: Wed, 16 Sep 2026 12:19:14 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:f357ad2603b5891d0a8204be6630a759e7f0b7c84e6b9baf00c9a58cd1a1e36e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5927228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75df7dd5dc1a8a56a11d47c3a0ceb934e887f375578c9c991ae741df9b715d1`

```dockerfile
```

-	Layers:
	-	`sha256:a2674e8f3809eaf268fed6fc2a633ab386466111a36a777c72ee9b896e8816eb`  
		Last Modified: Wed, 16 Sep 2026 12:19:14 GMT  
		Size: 5.9 MB (5904369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:706163f47d90c8714b3afa5b6847639b8c7692f65aec2718de2319edc8549e8e`  
		Last Modified: Wed, 16 Sep 2026 12:19:14 GMT  
		Size: 22.9 KB (22859 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:3.12`

```console
$ docker pull geonetwork@sha256:d1e8134756f981018b23094d7cd50c4b8727f4f3b3ec13cd5e3a13c8c63beaec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `geonetwork:3.12` - linux; amd64

```console
$ docker pull geonetwork@sha256:c0015762530e1ba36aeb7a06fa765092ff082127b4e337f029a8ed7f67e8f1b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350551043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d126ee5ae1bbad7d066e098dd93fe71fd8e1718b3f4bbae36ad9a22ee69dffa0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:16:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:14 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 03:16:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 03:16:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:16:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:16:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 04:29:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 04:29:29 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:29:29 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 04:29:29 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:29 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 04:29:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Wed, 16 Sep 2026 04:29:58 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 04:29:58 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 04:29:58 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 04:29:58 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 05:16:53 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 05:16:53 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 16 Sep 2026 05:16:53 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 05:16:53 GMT
ENV GN_VERSION=3.12.12
# Wed, 16 Sep 2026 05:16:53 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Wed, 16 Sep 2026 05:16:53 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 16 Sep 2026 05:19:13 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Wed, 16 Sep 2026 05:19:13 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:19:13 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:19:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 05:19:13 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d10bcdd9a8ad2f2737d6760230c9cafe0fdb255ac82917ff8d7fbe174dec97`  
		Last Modified: Wed, 16 Sep 2026 03:16:29 GMT  
		Size: 16.9 MB (16947638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3b108208610184f862120fe33d918051037c4915e6dfde5ca2c0dcf491aaf1`  
		Last Modified: Wed, 16 Sep 2026 03:16:30 GMT  
		Size: 55.2 MB (55168839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14e261a1e8709a74502ca82b6a315c408542b86d7a6d0a0e699cf735a4e85d7a`  
		Last Modified: Wed, 16 Sep 2026 03:16:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9340437cbddbf020163ee2c2d88abf409288f6ae926828b164e8b6ccb971a85`  
		Last Modified: Wed, 16 Sep 2026 03:16:28 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32754ee369f13ea45cab1ff004fae56475c2c231bf0ed7f60040cac20737eed5`  
		Last Modified: Wed, 16 Sep 2026 04:30:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2360d3949e9b9971f685f5bcce8e839afe27cb15c206f9ad0dd9c19fe50a3c01`  
		Last Modified: Wed, 16 Sep 2026 04:30:08 GMT  
		Size: 14.1 MB (14116356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee9c02f66982b83b89c6b2920d3f64a4edfb409fd02c2a6804970a7102f497f`  
		Last Modified: Wed, 16 Sep 2026 05:19:39 GMT  
		Size: 234.6 MB (234550968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1cd7c0c60ed202b13cf24b683178979906508d3d4b430b75c30c1c5106dad2a`  
		Last Modified: Wed, 16 Sep 2026 05:19:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:496a72feb023fe979d873d570aec6916b103dc0f74d6b4d19343c865602fa51c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4363315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42c579b7fe21f72ddf862440c3b2a58bce51f11bb46633e1d6084e2bff69b4d3`

```dockerfile
```

-	Layers:
	-	`sha256:baa4a25d4c03f055091cb15582afe8b357dfe233ab526227e87eebae838aee5d`  
		Last Modified: Wed, 16 Sep 2026 05:19:34 GMT  
		Size: 4.3 MB (4344222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8a3b666d6e4790ca18362b1b62999842e05cc50dd9766804f7548e8137c14fd`  
		Last Modified: Wed, 16 Sep 2026 05:19:34 GMT  
		Size: 19.1 KB (19093 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:3a624a97f00f48eb4c2974f43915cdabeb94d44fb082cdbe8980067f0000dacc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.2 MB (342237492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc94973fdef95c7691aa96ae661c987985fa3d4b4db22345cd49a957992f35e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 17 Aug 2026 13:17:18 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:17:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:17:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:17:21 GMT
ADD file:2164aa16295913265eec9e47409ded367df44d23b10145b85e6b3cb27d1e239c in / 
# Mon, 17 Aug 2026 13:17:21 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:11:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 19:11:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:11:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:11:55 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:11:55 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 18 Aug 2026 19:12:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='ac93b4b75d6c0592c83030dbbeeaed46f5fbfccb276cf26c86aab3e49bba090e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Tue, 18 Aug 2026 19:12:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 19:12:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:12:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 20:24:08 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 20:24:08 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:24:08 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 20:24:08 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 20:24:08 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_MAJOR=9
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_VERSION=9.0.121
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Tue, 18 Aug 2026 20:24:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Tue, 18 Aug 2026 20:24:34 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 20:24:34 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 20:24:34 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 20:24:34 GMT
CMD ["catalina.sh" "run"]
# Tue, 18 Aug 2026 21:15:51 GMT
ENV GN_FILE=geonetwork.war
# Tue, 18 Aug 2026 21:15:51 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 18 Aug 2026 21:15:51 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 18 Aug 2026 21:15:51 GMT
ENV GN_VERSION=3.12.12
# Tue, 18 Aug 2026 21:15:51 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Tue, 18 Aug 2026 21:15:51 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 18 Aug 2026 21:18:47 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Tue, 18 Aug 2026 21:18:47 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:18:48 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 21:18:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 21:18:48 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:66f3e1c55273a462a0982068d442942c00c78585376028748a23901efa512546`  
		Last Modified: Mon, 17 Aug 2026 14:27:34 GMT  
		Size: 26.9 MB (26872780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd5ff123d65f06a06e05df4fbc985dfb1e712c4893a99a91f3560b32af611e1`  
		Last Modified: Tue, 18 Aug 2026 19:12:18 GMT  
		Size: 16.3 MB (16268689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe9346f73c68c242c1dcff803b4d9347e4ef0451eb5b3ca0a5f3d4fa5627af61`  
		Last Modified: Tue, 18 Aug 2026 19:12:19 GMT  
		Size: 50.5 MB (50541462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75a6c25ae29b38f2ea91bd3e7898a091d31454ea291002ebf4a55c836448726`  
		Last Modified: Tue, 18 Aug 2026 19:12:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ce6110d55149d8f0859d0cf20788727ad956518790a69b08adc6cf61611640`  
		Last Modified: Tue, 18 Aug 2026 19:12:17 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17c889623b2b2083a1d46e6ca33cf8d2df7bd93653d691ee250f37738ac14dc8`  
		Last Modified: Tue, 18 Aug 2026 20:24:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b632d5d97b7dc2b29500b76fe7ef6a4b27260856046bf2a3d6444a7bac09b699`  
		Last Modified: Tue, 18 Aug 2026 20:24:43 GMT  
		Size: 14.0 MB (14012471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f69de9e3b88d95b01f49a513f9f64e80e8965ea02b1faf65da06d61f6f607a`  
		Last Modified: Tue, 18 Aug 2026 21:19:14 GMT  
		Size: 234.5 MB (234538961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b346ddd5ec029e1723e3151873793ba707371f2d1a4e28b5dc4cedf416b924b`  
		Last Modified: Tue, 18 Aug 2026 21:19:09 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:9d53437aee2555372a36019011572dfd843a74263a6dcb2357b5c4d4d14634c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4367345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc413d70ebb3ca1b611849eedc68b0c60ded1904d105a81a7aa13800e9a34641`

```dockerfile
```

-	Layers:
	-	`sha256:14e58ef70a3047a23489979dd9bff6eec0086c809a9faccf5dfbc81b423e41ed`  
		Last Modified: Tue, 18 Aug 2026 21:19:09 GMT  
		Size: 4.3 MB (4348181 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dff10b8feb17e56189e3919d82a0bdd732e80d214a19d93cbd2fe02f05461f5`  
		Last Modified: Tue, 18 Aug 2026 21:19:09 GMT  
		Size: 19.2 KB (19164 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:015d90447089a8a4aea18aeeda51b0b3e15e719358920e4d1739aeb591f4691e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.9 MB (348850135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ffd9ec8b4d3a82418db995509134f0e21e42b1cc04c6d9d00d713764f1f6669`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:16:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:07 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 03:16:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 03:16:10 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:16:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:16:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 04:29:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 04:29:39 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:29:39 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 04:29:39 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:39 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 04:30:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Wed, 16 Sep 2026 04:30:06 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 04:30:06 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 04:30:06 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 04:30:06 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 05:16:35 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 05:16:35 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 16 Sep 2026 05:16:35 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 05:16:35 GMT
ENV GN_VERSION=3.12.12
# Wed, 16 Sep 2026 05:16:35 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Wed, 16 Sep 2026 05:16:35 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 16 Sep 2026 05:19:24 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Wed, 16 Sep 2026 05:19:24 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:19:24 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:19:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 05:19:24 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2684ed3f62207b159c5a962f8bbc7d53a8996b59c146bb4a1813b9df89b70e52`  
		Last Modified: Wed, 16 Sep 2026 03:16:23 GMT  
		Size: 17.0 MB (16957485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815b036223534df703dbd0802b67640746900ea6099809e8b361a3768ac98ef2`  
		Last Modified: Wed, 16 Sep 2026 03:16:24 GMT  
		Size: 54.3 MB (54269518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295504c62538fcf6fc9d570cf8465c9c263db6fd5c59851cb9aefbe1170fef06`  
		Last Modified: Wed, 16 Sep 2026 03:16:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09401222144c72cdfe989082973974c49fc468c8ea74298c3141e8fa7703daf8`  
		Last Modified: Wed, 16 Sep 2026 03:16:22 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87fe787514197f70d44cd17d246464e974ab5993b62f877ade8c0b8366e256b0`  
		Last Modified: Wed, 16 Sep 2026 04:30:15 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2e28a49bdae00899e9f5692b9e1a822189fb4979896ee4f02919e4409a82f2`  
		Last Modified: Wed, 16 Sep 2026 04:30:15 GMT  
		Size: 14.1 MB (14123646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98592bfd7dfc6e589054fab6053d14a3995ed6e902c107d48df66c7ce17195bc`  
		Last Modified: Wed, 16 Sep 2026 05:19:50 GMT  
		Size: 234.6 MB (234554779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c968689cf38b8d4ed3e3b2c36abb2e7b0c8027b6f6352b6597ae1ef3c8db5956`  
		Last Modified: Wed, 16 Sep 2026 05:19:45 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:b4d87106683dfb1489188bf2848ff32ba01c1409283a75d19e5845c1bd4490cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4364566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1438868ea20e25f18af52d622473d0de4a95df68125ab1d6459bee0d68497286`

```dockerfile
```

-	Layers:
	-	`sha256:db66c37ed5c4c5b251e69e0407c883bcd9a1555532ad29be79fe76f08395b1b1`  
		Last Modified: Wed, 16 Sep 2026 05:19:45 GMT  
		Size: 4.3 MB (4345382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1084f0ebd1bd3ab33f1f59edc406062d8aba529f07242c2ece2cb8ab077105de`  
		Last Modified: Wed, 16 Sep 2026 05:19:45 GMT  
		Size: 19.2 KB (19184 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:91ec7a985c72091a2331edc673c6ffcd056d78ab517ef9325c08f0c667f3e6af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.6 MB (354580686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:840b9c8d54f17019493061ae8c0cfc230b5ba3a209da8a6550c77d237a30d0ad`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 06:47:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 06:47:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 06:47:17 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 06:47:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 06:47:22 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 06:47:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:47:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 10:09:33 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 10:09:33 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:09:33 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 10:09:33 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 10:09:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 10:10:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Wed, 16 Sep 2026 10:10:54 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 10:10:54 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 10:10:54 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 10:10:54 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 11:45:35 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 11:45:35 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 16 Sep 2026 11:45:35 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 11:45:35 GMT
ENV GN_VERSION=3.12.12
# Wed, 16 Sep 2026 11:45:35 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Wed, 16 Sep 2026 11:45:35 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 16 Sep 2026 11:47:18 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Wed, 16 Sep 2026 11:47:18 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 11:47:18 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 11:47:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 11:47:18 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4203fb8b2c14c1adc11a851d1fc29ab6315d968370915b4c1821d3df6e6db4`  
		Last Modified: Wed, 16 Sep 2026 06:47:54 GMT  
		Size: 18.8 MB (18765991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:836e72b63661a53ba1e6ef02949b8338426e4ab877fbacd506989f083346ec12`  
		Last Modified: Wed, 16 Sep 2026 06:47:55 GMT  
		Size: 52.7 MB (52675430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23af5db4aea8f623e639ba4c3e71f0d101730117203170c9de556abf148d0875`  
		Last Modified: Wed, 16 Sep 2026 06:47:53 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fab9d834d49692e658fc2000cb16a9bc520512d642176fe655f40b5803fd2f16`  
		Last Modified: Wed, 16 Sep 2026 06:47:54 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4073bcc81ba5a8f84a2a5f974757548bd490d4eccf2b3b31e4e6e6e0daf49750`  
		Last Modified: Wed, 16 Sep 2026 10:11:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba727cb01a0149a033b3a450dfa14453ceac9dd7e38cecddce81961efd3d520`  
		Last Modified: Wed, 16 Sep 2026 10:11:15 GMT  
		Size: 14.2 MB (14184031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:855180a0240c4a1620e25540743f57ab47d0f805c682cc6c08cb3d620ccbf352`  
		Last Modified: Wed, 16 Sep 2026 11:48:06 GMT  
		Size: 234.6 MB (234575149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e8a18109ad3a0e34faf8af12450d585f674cfda233a6fcbe32cddfefa01aac`  
		Last Modified: Wed, 16 Sep 2026 11:48:01 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:fd69998bc8f5cbe11c9a5804f822198aca5f1be95c7ee93b70c66df2265139e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4366100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cc3feac2f6344e876e960d1f3375f6dd17cc6272e323bd045a9cb7882923d4f`

```dockerfile
```

-	Layers:
	-	`sha256:f68aa9708cae8688aebfbfeb921ea4dbdbedcb2d78fdc60a4fe2d292cbb48db2`  
		Last Modified: Wed, 16 Sep 2026 11:48:01 GMT  
		Size: 4.3 MB (4346969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:482beca13d8a14e4d8fa5073d506c02be112ff3e60da6e6e1054a8f524331a80`  
		Last Modified: Wed, 16 Sep 2026 11:48:01 GMT  
		Size: 19.1 KB (19131 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:3.12-postgres`

```console
$ docker pull geonetwork@sha256:5815c19638ee18191ba6cdf6507eefa85a7ff706382e3daf4db50adfcda3355c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `geonetwork:3.12-postgres` - linux; amd64

```console
$ docker pull geonetwork@sha256:49273618f884bdd806d33ef10f83d215f30e7d25380c0153774ff5d0fa78f4f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.5 MB (364505749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801af578045074211373b5b4b0aefcc753ad3377847a5a95d53e9f9c1bde14e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:16:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:14 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 03:16:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 03:16:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:16:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:16:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 04:29:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 04:29:29 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:29:29 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 04:29:29 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:29 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 04:29:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Wed, 16 Sep 2026 04:29:58 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 04:29:58 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 04:29:58 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 04:29:58 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 05:16:53 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 05:16:53 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 16 Sep 2026 05:16:53 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 05:16:53 GMT
ENV GN_VERSION=3.12.12
# Wed, 16 Sep 2026 05:16:53 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Wed, 16 Sep 2026 05:16:53 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 16 Sep 2026 05:19:13 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Wed, 16 Sep 2026 05:19:13 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:19:13 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:19:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 05:19:13 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:15:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 06:15:15 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Wed, 16 Sep 2026 06:15:15 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Wed, 16 Sep 2026 06:15:15 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:15:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 06:15:15 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d10bcdd9a8ad2f2737d6760230c9cafe0fdb255ac82917ff8d7fbe174dec97`  
		Last Modified: Wed, 16 Sep 2026 03:16:29 GMT  
		Size: 16.9 MB (16947638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3b108208610184f862120fe33d918051037c4915e6dfde5ca2c0dcf491aaf1`  
		Last Modified: Wed, 16 Sep 2026 03:16:30 GMT  
		Size: 55.2 MB (55168839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14e261a1e8709a74502ca82b6a315c408542b86d7a6d0a0e699cf735a4e85d7a`  
		Last Modified: Wed, 16 Sep 2026 03:16:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9340437cbddbf020163ee2c2d88abf409288f6ae926828b164e8b6ccb971a85`  
		Last Modified: Wed, 16 Sep 2026 03:16:28 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32754ee369f13ea45cab1ff004fae56475c2c231bf0ed7f60040cac20737eed5`  
		Last Modified: Wed, 16 Sep 2026 04:30:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2360d3949e9b9971f685f5bcce8e839afe27cb15c206f9ad0dd9c19fe50a3c01`  
		Last Modified: Wed, 16 Sep 2026 04:30:08 GMT  
		Size: 14.1 MB (14116356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee9c02f66982b83b89c6b2920d3f64a4edfb409fd02c2a6804970a7102f497f`  
		Last Modified: Wed, 16 Sep 2026 05:19:39 GMT  
		Size: 234.6 MB (234550968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1cd7c0c60ed202b13cf24b683178979906508d3d4b430b75c30c1c5106dad2a`  
		Last Modified: Wed, 16 Sep 2026 05:19:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2275ef2b67c7c32806e285daba4dad49f1c643b039d0b6f4ede6004f55744b2`  
		Last Modified: Wed, 16 Sep 2026 06:15:30 GMT  
		Size: 14.0 MB (13951285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9878853ac49065a0a86989e9efbf80ab9e669c764adcd993a670ce6d55997a6`  
		Last Modified: Wed, 16 Sep 2026 06:15:29 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f781b463c205601ac8478a38d7f9d5d03e859de57501cdf22323159cb46ac0d`  
		Last Modified: Wed, 16 Sep 2026 06:15:29 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f64c926a466c3685f8fe05dc501cd3ce05adf17da839d5d23572fecfcf0137`  
		Last Modified: Wed, 16 Sep 2026 06:15:29 GMT  
		Size: 974.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:55ae6e312d357b9ec094a2dc2792bb0911921518021045714531e7291dfb5043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5921691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cb40555b454037eb2858ddffc7fcacb20b6711ea25c3fcad22ed7aa9b0c9a35`

```dockerfile
```

-	Layers:
	-	`sha256:735ad34647fb1e4d7e70750c0ee795457a44cc79ba7a4968d3ac18269b602e06`  
		Last Modified: Wed, 16 Sep 2026 06:15:29 GMT  
		Size: 5.9 MB (5898873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f959d643729f9ec5ade3b9fd44ff1483e0804d454b77ad4a4862b313618c9f02`  
		Last Modified: Wed, 16 Sep 2026 06:15:29 GMT  
		Size: 22.8 KB (22818 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12-postgres` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:8b145245ebef57b2f25b0d24e9ad42709d9c439c4198acca40cc2dbe80b567c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.3 MB (355252803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:340ee009e11428f351917e2163b9657263521bddddc1c9f36b4fe7f06978939e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 17 Aug 2026 13:17:18 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:17:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:17:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:17:21 GMT
ADD file:2164aa16295913265eec9e47409ded367df44d23b10145b85e6b3cb27d1e239c in / 
# Mon, 17 Aug 2026 13:17:21 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:11:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 19:11:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:11:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:11:55 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:11:55 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 18 Aug 2026 19:12:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='ac93b4b75d6c0592c83030dbbeeaed46f5fbfccb276cf26c86aab3e49bba090e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Tue, 18 Aug 2026 19:12:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 19:12:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:12:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 20:24:08 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 20:24:08 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:24:08 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 20:24:08 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 20:24:08 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_MAJOR=9
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_VERSION=9.0.121
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Tue, 18 Aug 2026 20:24:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Tue, 18 Aug 2026 20:24:34 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 20:24:34 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 20:24:34 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 20:24:34 GMT
CMD ["catalina.sh" "run"]
# Tue, 18 Aug 2026 21:15:51 GMT
ENV GN_FILE=geonetwork.war
# Tue, 18 Aug 2026 21:15:51 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 18 Aug 2026 21:15:51 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 18 Aug 2026 21:15:51 GMT
ENV GN_VERSION=3.12.12
# Tue, 18 Aug 2026 21:15:51 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Tue, 18 Aug 2026 21:15:51 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 18 Aug 2026 21:18:47 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Tue, 18 Aug 2026 21:18:47 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:18:48 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 21:18:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 21:18:48 GMT
CMD ["catalina.sh" "run"]
# Tue, 18 Aug 2026 22:10:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 22:10:55 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Tue, 18 Aug 2026 22:10:55 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Tue, 18 Aug 2026 22:10:55 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 22:10:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 22:10:55 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:66f3e1c55273a462a0982068d442942c00c78585376028748a23901efa512546`  
		Last Modified: Mon, 17 Aug 2026 14:27:34 GMT  
		Size: 26.9 MB (26872780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd5ff123d65f06a06e05df4fbc985dfb1e712c4893a99a91f3560b32af611e1`  
		Last Modified: Tue, 18 Aug 2026 19:12:18 GMT  
		Size: 16.3 MB (16268689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe9346f73c68c242c1dcff803b4d9347e4ef0451eb5b3ca0a5f3d4fa5627af61`  
		Last Modified: Tue, 18 Aug 2026 19:12:19 GMT  
		Size: 50.5 MB (50541462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75a6c25ae29b38f2ea91bd3e7898a091d31454ea291002ebf4a55c836448726`  
		Last Modified: Tue, 18 Aug 2026 19:12:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ce6110d55149d8f0859d0cf20788727ad956518790a69b08adc6cf61611640`  
		Last Modified: Tue, 18 Aug 2026 19:12:17 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17c889623b2b2083a1d46e6ca33cf8d2df7bd93653d691ee250f37738ac14dc8`  
		Last Modified: Tue, 18 Aug 2026 20:24:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b632d5d97b7dc2b29500b76fe7ef6a4b27260856046bf2a3d6444a7bac09b699`  
		Last Modified: Tue, 18 Aug 2026 20:24:43 GMT  
		Size: 14.0 MB (14012471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f69de9e3b88d95b01f49a513f9f64e80e8965ea02b1faf65da06d61f6f607a`  
		Last Modified: Tue, 18 Aug 2026 21:19:14 GMT  
		Size: 234.5 MB (234538961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b346ddd5ec029e1723e3151873793ba707371f2d1a4e28b5dc4cedf416b924b`  
		Last Modified: Tue, 18 Aug 2026 21:19:09 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e1390b6f919ba3907ab0be81608978c9f07f3f6bd18d8ec1f2a704253a7c53`  
		Last Modified: Tue, 18 Aug 2026 22:11:10 GMT  
		Size: 13.0 MB (13011896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a4a7942ed63fa1b7dfa4fd9b2f433d595dc7d775d1c98d72b958726cadbfa7`  
		Last Modified: Tue, 18 Aug 2026 22:11:10 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3625e3a8233785a66029eb91302761de9b948a83c3741ddd9d551d050eba517b`  
		Last Modified: Tue, 18 Aug 2026 22:11:10 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84426a66d983a326304172c4908e9be35406c24c6b1f7b5d515f47cc716df7f0`  
		Last Modified: Tue, 18 Aug 2026 22:11:10 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:1f0500317c16ef581759d6da0aab8b2b7e6726b70d48ffa9e5821521d0a3b8d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5924468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a47843d6d7dac5ddd62af87008b70a05e8e0935933a00ae2d366b2a1f7aa1db0`

```dockerfile
```

-	Layers:
	-	`sha256:80192b3242a415958bd067c3610e3e9727ed245c0e7d874a5e35ad3fc3350840`  
		Last Modified: Tue, 18 Aug 2026 22:11:10 GMT  
		Size: 5.9 MB (5901564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbdffe3bcae430a8d3cb7379c794a1cd3abfea1e7d962785fcdb55c8a5322213`  
		Last Modified: Tue, 18 Aug 2026 22:11:10 GMT  
		Size: 22.9 KB (22904 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12-postgres` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:1461cc4d743b235a69cf8f2910aaaaeabcd348bcd2f7273c1e8f11e8fdb7dcec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.8 MB (362788665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24929f5ba3e526a0c28f3fc491769c67b34280cb9f661a6ed7a0ba9514101de9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:16:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:07 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 03:16:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 03:16:10 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:16:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:16:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 04:29:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 04:29:39 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:29:39 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 04:29:39 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:39 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 04:30:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Wed, 16 Sep 2026 04:30:06 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 04:30:06 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 04:30:06 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 04:30:06 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 05:16:35 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 05:16:35 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 16 Sep 2026 05:16:35 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 05:16:35 GMT
ENV GN_VERSION=3.12.12
# Wed, 16 Sep 2026 05:16:35 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Wed, 16 Sep 2026 05:16:35 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 16 Sep 2026 05:19:24 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Wed, 16 Sep 2026 05:19:24 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:19:24 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:19:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 05:19:24 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 06:15:06 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Wed, 16 Sep 2026 06:15:06 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Wed, 16 Sep 2026 06:15:06 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:15:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 06:15:06 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2684ed3f62207b159c5a962f8bbc7d53a8996b59c146bb4a1813b9df89b70e52`  
		Last Modified: Wed, 16 Sep 2026 03:16:23 GMT  
		Size: 17.0 MB (16957485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815b036223534df703dbd0802b67640746900ea6099809e8b361a3768ac98ef2`  
		Last Modified: Wed, 16 Sep 2026 03:16:24 GMT  
		Size: 54.3 MB (54269518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295504c62538fcf6fc9d570cf8465c9c263db6fd5c59851cb9aefbe1170fef06`  
		Last Modified: Wed, 16 Sep 2026 03:16:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09401222144c72cdfe989082973974c49fc468c8ea74298c3141e8fa7703daf8`  
		Last Modified: Wed, 16 Sep 2026 03:16:22 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87fe787514197f70d44cd17d246464e974ab5993b62f877ade8c0b8366e256b0`  
		Last Modified: Wed, 16 Sep 2026 04:30:15 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2e28a49bdae00899e9f5692b9e1a822189fb4979896ee4f02919e4409a82f2`  
		Last Modified: Wed, 16 Sep 2026 04:30:15 GMT  
		Size: 14.1 MB (14123646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98592bfd7dfc6e589054fab6053d14a3995ed6e902c107d48df66c7ce17195bc`  
		Last Modified: Wed, 16 Sep 2026 05:19:50 GMT  
		Size: 234.6 MB (234554779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c968689cf38b8d4ed3e3b2c36abb2e7b0c8027b6f6352b6597ae1ef3c8db5956`  
		Last Modified: Wed, 16 Sep 2026 05:19:45 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f64ff1a71f28a06c0f5e9edd72c2b733155b9c80c2f49de34ca4d0d4660a04`  
		Last Modified: Wed, 16 Sep 2026 06:15:21 GMT  
		Size: 13.9 MB (13935112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1db6b092a10afcb64c6ea30e5f1fbca9647cec7f0592e6d1bf1539e1624d2069`  
		Last Modified: Wed, 16 Sep 2026 06:15:21 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac41a1b0f89fe6d1017341e131caf5fabfafd7adaa97731839a0524a5b44290`  
		Last Modified: Wed, 16 Sep 2026 06:15:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:079729fb4d6c8ff5bcaa74463e39a743ad1ffe5a2baf0f36d7eb276235557324`  
		Last Modified: Wed, 16 Sep 2026 06:15:21 GMT  
		Size: 974.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:0068d483d1576948c38d3e889988ff30939a185616c912c79b6da49bce4cd6eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5929007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d0c71efb5d59e48c25b08cfd4e648753b693156a561642dad72dde3db3c106`

```dockerfile
```

-	Layers:
	-	`sha256:c8d6657cfb19a85bddcff6e0fe7743f264f5aacf8e10c5ebf75b893a8842cd45`  
		Last Modified: Wed, 16 Sep 2026 06:15:21 GMT  
		Size: 5.9 MB (5906081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c423ec6b0a2dce787ccc747629d20c96ad7e695e6b21319307f3299e5561d820`  
		Last Modified: Wed, 16 Sep 2026 06:15:21 GMT  
		Size: 22.9 KB (22926 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12-postgres` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:9c9aa71730a1d3aaaa7a6fc7e38bd66b56dd001f9bc6a25d039c82ac16700718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.0 MB (369035505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40588005f9a4fb269274085a8af0cf3056969afe038ba378f8460181af310572`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 06:47:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 06:47:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 06:47:17 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 06:47:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 06:47:22 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 06:47:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:47:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 10:09:33 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 10:09:33 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:09:33 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 10:09:33 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 10:09:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 10:10:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Wed, 16 Sep 2026 10:10:54 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 10:10:54 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 10:10:54 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 10:10:54 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 11:45:35 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 11:45:35 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 16 Sep 2026 11:45:35 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 11:45:35 GMT
ENV GN_VERSION=3.12.12
# Wed, 16 Sep 2026 11:45:35 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Wed, 16 Sep 2026 11:45:35 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 16 Sep 2026 11:47:18 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Wed, 16 Sep 2026 11:47:18 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 11:47:18 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 11:47:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 11:47:18 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 12:18:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 12:18:30 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Wed, 16 Sep 2026 12:18:30 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Wed, 16 Sep 2026 12:18:31 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 12:18:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 12:18:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4203fb8b2c14c1adc11a851d1fc29ab6315d968370915b4c1821d3df6e6db4`  
		Last Modified: Wed, 16 Sep 2026 06:47:54 GMT  
		Size: 18.8 MB (18765991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:836e72b63661a53ba1e6ef02949b8338426e4ab877fbacd506989f083346ec12`  
		Last Modified: Wed, 16 Sep 2026 06:47:55 GMT  
		Size: 52.7 MB (52675430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23af5db4aea8f623e639ba4c3e71f0d101730117203170c9de556abf148d0875`  
		Last Modified: Wed, 16 Sep 2026 06:47:53 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fab9d834d49692e658fc2000cb16a9bc520512d642176fe655f40b5803fd2f16`  
		Last Modified: Wed, 16 Sep 2026 06:47:54 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4073bcc81ba5a8f84a2a5f974757548bd490d4eccf2b3b31e4e6e6e0daf49750`  
		Last Modified: Wed, 16 Sep 2026 10:11:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba727cb01a0149a033b3a450dfa14453ceac9dd7e38cecddce81961efd3d520`  
		Last Modified: Wed, 16 Sep 2026 10:11:15 GMT  
		Size: 14.2 MB (14184031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:855180a0240c4a1620e25540743f57ab47d0f805c682cc6c08cb3d620ccbf352`  
		Last Modified: Wed, 16 Sep 2026 11:48:06 GMT  
		Size: 234.6 MB (234575149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e8a18109ad3a0e34faf8af12450d585f674cfda233a6fcbe32cddfefa01aac`  
		Last Modified: Wed, 16 Sep 2026 11:48:01 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a808cc058c8ad7643336fd69476ada69d58e91b01fa1b84e873649f4b76d9bf6`  
		Last Modified: Wed, 16 Sep 2026 12:19:15 GMT  
		Size: 14.5 MB (14451406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b285cea9ab1b03163525b6cc7b9251218b0417d12c03cdc4c539944c13ba8e`  
		Last Modified: Wed, 16 Sep 2026 12:19:14 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c3d95389a432e3bd46a36720e8121e8156c04650305c4ad63d1764a6c2a3d6`  
		Last Modified: Wed, 16 Sep 2026 12:19:14 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bcb36b731806eff006e8ed7d90f65a03cdc040c2af8d288a33bbd4993a60e4a`  
		Last Modified: Wed, 16 Sep 2026 12:19:14 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:f357ad2603b5891d0a8204be6630a759e7f0b7c84e6b9baf00c9a58cd1a1e36e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5927228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75df7dd5dc1a8a56a11d47c3a0ceb934e887f375578c9c991ae741df9b715d1`

```dockerfile
```

-	Layers:
	-	`sha256:a2674e8f3809eaf268fed6fc2a633ab386466111a36a777c72ee9b896e8816eb`  
		Last Modified: Wed, 16 Sep 2026 12:19:14 GMT  
		Size: 5.9 MB (5904369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:706163f47d90c8714b3afa5b6847639b8c7692f65aec2718de2319edc8549e8e`  
		Last Modified: Wed, 16 Sep 2026 12:19:14 GMT  
		Size: 22.9 KB (22859 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:3.12.12`

```console
$ docker pull geonetwork@sha256:d1e8134756f981018b23094d7cd50c4b8727f4f3b3ec13cd5e3a13c8c63beaec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `geonetwork:3.12.12` - linux; amd64

```console
$ docker pull geonetwork@sha256:c0015762530e1ba36aeb7a06fa765092ff082127b4e337f029a8ed7f67e8f1b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350551043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d126ee5ae1bbad7d066e098dd93fe71fd8e1718b3f4bbae36ad9a22ee69dffa0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:16:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:14 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 03:16:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 03:16:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:16:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:16:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 04:29:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 04:29:29 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:29:29 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 04:29:29 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:29 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 04:29:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Wed, 16 Sep 2026 04:29:58 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 04:29:58 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 04:29:58 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 04:29:58 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 05:16:53 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 05:16:53 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 16 Sep 2026 05:16:53 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 05:16:53 GMT
ENV GN_VERSION=3.12.12
# Wed, 16 Sep 2026 05:16:53 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Wed, 16 Sep 2026 05:16:53 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 16 Sep 2026 05:19:13 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Wed, 16 Sep 2026 05:19:13 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:19:13 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:19:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 05:19:13 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d10bcdd9a8ad2f2737d6760230c9cafe0fdb255ac82917ff8d7fbe174dec97`  
		Last Modified: Wed, 16 Sep 2026 03:16:29 GMT  
		Size: 16.9 MB (16947638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3b108208610184f862120fe33d918051037c4915e6dfde5ca2c0dcf491aaf1`  
		Last Modified: Wed, 16 Sep 2026 03:16:30 GMT  
		Size: 55.2 MB (55168839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14e261a1e8709a74502ca82b6a315c408542b86d7a6d0a0e699cf735a4e85d7a`  
		Last Modified: Wed, 16 Sep 2026 03:16:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9340437cbddbf020163ee2c2d88abf409288f6ae926828b164e8b6ccb971a85`  
		Last Modified: Wed, 16 Sep 2026 03:16:28 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32754ee369f13ea45cab1ff004fae56475c2c231bf0ed7f60040cac20737eed5`  
		Last Modified: Wed, 16 Sep 2026 04:30:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2360d3949e9b9971f685f5bcce8e839afe27cb15c206f9ad0dd9c19fe50a3c01`  
		Last Modified: Wed, 16 Sep 2026 04:30:08 GMT  
		Size: 14.1 MB (14116356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee9c02f66982b83b89c6b2920d3f64a4edfb409fd02c2a6804970a7102f497f`  
		Last Modified: Wed, 16 Sep 2026 05:19:39 GMT  
		Size: 234.6 MB (234550968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1cd7c0c60ed202b13cf24b683178979906508d3d4b430b75c30c1c5106dad2a`  
		Last Modified: Wed, 16 Sep 2026 05:19:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:496a72feb023fe979d873d570aec6916b103dc0f74d6b4d19343c865602fa51c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4363315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42c579b7fe21f72ddf862440c3b2a58bce51f11bb46633e1d6084e2bff69b4d3`

```dockerfile
```

-	Layers:
	-	`sha256:baa4a25d4c03f055091cb15582afe8b357dfe233ab526227e87eebae838aee5d`  
		Last Modified: Wed, 16 Sep 2026 05:19:34 GMT  
		Size: 4.3 MB (4344222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8a3b666d6e4790ca18362b1b62999842e05cc50dd9766804f7548e8137c14fd`  
		Last Modified: Wed, 16 Sep 2026 05:19:34 GMT  
		Size: 19.1 KB (19093 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12.12` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:3a624a97f00f48eb4c2974f43915cdabeb94d44fb082cdbe8980067f0000dacc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.2 MB (342237492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc94973fdef95c7691aa96ae661c987985fa3d4b4db22345cd49a957992f35e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 17 Aug 2026 13:17:18 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:17:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:17:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:17:21 GMT
ADD file:2164aa16295913265eec9e47409ded367df44d23b10145b85e6b3cb27d1e239c in / 
# Mon, 17 Aug 2026 13:17:21 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:11:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 19:11:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:11:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:11:55 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:11:55 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 18 Aug 2026 19:12:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='ac93b4b75d6c0592c83030dbbeeaed46f5fbfccb276cf26c86aab3e49bba090e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Tue, 18 Aug 2026 19:12:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 19:12:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:12:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 20:24:08 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 20:24:08 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:24:08 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 20:24:08 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 20:24:08 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_MAJOR=9
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_VERSION=9.0.121
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Tue, 18 Aug 2026 20:24:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Tue, 18 Aug 2026 20:24:34 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 20:24:34 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 20:24:34 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 20:24:34 GMT
CMD ["catalina.sh" "run"]
# Tue, 18 Aug 2026 21:15:51 GMT
ENV GN_FILE=geonetwork.war
# Tue, 18 Aug 2026 21:15:51 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 18 Aug 2026 21:15:51 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 18 Aug 2026 21:15:51 GMT
ENV GN_VERSION=3.12.12
# Tue, 18 Aug 2026 21:15:51 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Tue, 18 Aug 2026 21:15:51 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 18 Aug 2026 21:18:47 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Tue, 18 Aug 2026 21:18:47 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:18:48 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 21:18:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 21:18:48 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:66f3e1c55273a462a0982068d442942c00c78585376028748a23901efa512546`  
		Last Modified: Mon, 17 Aug 2026 14:27:34 GMT  
		Size: 26.9 MB (26872780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd5ff123d65f06a06e05df4fbc985dfb1e712c4893a99a91f3560b32af611e1`  
		Last Modified: Tue, 18 Aug 2026 19:12:18 GMT  
		Size: 16.3 MB (16268689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe9346f73c68c242c1dcff803b4d9347e4ef0451eb5b3ca0a5f3d4fa5627af61`  
		Last Modified: Tue, 18 Aug 2026 19:12:19 GMT  
		Size: 50.5 MB (50541462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75a6c25ae29b38f2ea91bd3e7898a091d31454ea291002ebf4a55c836448726`  
		Last Modified: Tue, 18 Aug 2026 19:12:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ce6110d55149d8f0859d0cf20788727ad956518790a69b08adc6cf61611640`  
		Last Modified: Tue, 18 Aug 2026 19:12:17 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17c889623b2b2083a1d46e6ca33cf8d2df7bd93653d691ee250f37738ac14dc8`  
		Last Modified: Tue, 18 Aug 2026 20:24:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b632d5d97b7dc2b29500b76fe7ef6a4b27260856046bf2a3d6444a7bac09b699`  
		Last Modified: Tue, 18 Aug 2026 20:24:43 GMT  
		Size: 14.0 MB (14012471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f69de9e3b88d95b01f49a513f9f64e80e8965ea02b1faf65da06d61f6f607a`  
		Last Modified: Tue, 18 Aug 2026 21:19:14 GMT  
		Size: 234.5 MB (234538961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b346ddd5ec029e1723e3151873793ba707371f2d1a4e28b5dc4cedf416b924b`  
		Last Modified: Tue, 18 Aug 2026 21:19:09 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:9d53437aee2555372a36019011572dfd843a74263a6dcb2357b5c4d4d14634c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4367345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc413d70ebb3ca1b611849eedc68b0c60ded1904d105a81a7aa13800e9a34641`

```dockerfile
```

-	Layers:
	-	`sha256:14e58ef70a3047a23489979dd9bff6eec0086c809a9faccf5dfbc81b423e41ed`  
		Last Modified: Tue, 18 Aug 2026 21:19:09 GMT  
		Size: 4.3 MB (4348181 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dff10b8feb17e56189e3919d82a0bdd732e80d214a19d93cbd2fe02f05461f5`  
		Last Modified: Tue, 18 Aug 2026 21:19:09 GMT  
		Size: 19.2 KB (19164 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12.12` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:015d90447089a8a4aea18aeeda51b0b3e15e719358920e4d1739aeb591f4691e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.9 MB (348850135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ffd9ec8b4d3a82418db995509134f0e21e42b1cc04c6d9d00d713764f1f6669`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:16:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:07 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 03:16:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 03:16:10 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:16:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:16:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 04:29:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 04:29:39 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:29:39 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 04:29:39 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:39 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 04:30:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Wed, 16 Sep 2026 04:30:06 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 04:30:06 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 04:30:06 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 04:30:06 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 05:16:35 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 05:16:35 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 16 Sep 2026 05:16:35 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 05:16:35 GMT
ENV GN_VERSION=3.12.12
# Wed, 16 Sep 2026 05:16:35 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Wed, 16 Sep 2026 05:16:35 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 16 Sep 2026 05:19:24 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Wed, 16 Sep 2026 05:19:24 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:19:24 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:19:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 05:19:24 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2684ed3f62207b159c5a962f8bbc7d53a8996b59c146bb4a1813b9df89b70e52`  
		Last Modified: Wed, 16 Sep 2026 03:16:23 GMT  
		Size: 17.0 MB (16957485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815b036223534df703dbd0802b67640746900ea6099809e8b361a3768ac98ef2`  
		Last Modified: Wed, 16 Sep 2026 03:16:24 GMT  
		Size: 54.3 MB (54269518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295504c62538fcf6fc9d570cf8465c9c263db6fd5c59851cb9aefbe1170fef06`  
		Last Modified: Wed, 16 Sep 2026 03:16:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09401222144c72cdfe989082973974c49fc468c8ea74298c3141e8fa7703daf8`  
		Last Modified: Wed, 16 Sep 2026 03:16:22 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87fe787514197f70d44cd17d246464e974ab5993b62f877ade8c0b8366e256b0`  
		Last Modified: Wed, 16 Sep 2026 04:30:15 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2e28a49bdae00899e9f5692b9e1a822189fb4979896ee4f02919e4409a82f2`  
		Last Modified: Wed, 16 Sep 2026 04:30:15 GMT  
		Size: 14.1 MB (14123646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98592bfd7dfc6e589054fab6053d14a3995ed6e902c107d48df66c7ce17195bc`  
		Last Modified: Wed, 16 Sep 2026 05:19:50 GMT  
		Size: 234.6 MB (234554779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c968689cf38b8d4ed3e3b2c36abb2e7b0c8027b6f6352b6597ae1ef3c8db5956`  
		Last Modified: Wed, 16 Sep 2026 05:19:45 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:b4d87106683dfb1489188bf2848ff32ba01c1409283a75d19e5845c1bd4490cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4364566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1438868ea20e25f18af52d622473d0de4a95df68125ab1d6459bee0d68497286`

```dockerfile
```

-	Layers:
	-	`sha256:db66c37ed5c4c5b251e69e0407c883bcd9a1555532ad29be79fe76f08395b1b1`  
		Last Modified: Wed, 16 Sep 2026 05:19:45 GMT  
		Size: 4.3 MB (4345382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1084f0ebd1bd3ab33f1f59edc406062d8aba529f07242c2ece2cb8ab077105de`  
		Last Modified: Wed, 16 Sep 2026 05:19:45 GMT  
		Size: 19.2 KB (19184 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12.12` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:91ec7a985c72091a2331edc673c6ffcd056d78ab517ef9325c08f0c667f3e6af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.6 MB (354580686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:840b9c8d54f17019493061ae8c0cfc230b5ba3a209da8a6550c77d237a30d0ad`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 06:47:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 06:47:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 06:47:17 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 06:47:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 06:47:22 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 06:47:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:47:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 10:09:33 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 10:09:33 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:09:33 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 10:09:33 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 10:09:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 10:10:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Wed, 16 Sep 2026 10:10:54 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 10:10:54 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 10:10:54 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 10:10:54 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 11:45:35 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 11:45:35 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 16 Sep 2026 11:45:35 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 11:45:35 GMT
ENV GN_VERSION=3.12.12
# Wed, 16 Sep 2026 11:45:35 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Wed, 16 Sep 2026 11:45:35 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 16 Sep 2026 11:47:18 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Wed, 16 Sep 2026 11:47:18 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 11:47:18 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 11:47:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 11:47:18 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4203fb8b2c14c1adc11a851d1fc29ab6315d968370915b4c1821d3df6e6db4`  
		Last Modified: Wed, 16 Sep 2026 06:47:54 GMT  
		Size: 18.8 MB (18765991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:836e72b63661a53ba1e6ef02949b8338426e4ab877fbacd506989f083346ec12`  
		Last Modified: Wed, 16 Sep 2026 06:47:55 GMT  
		Size: 52.7 MB (52675430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23af5db4aea8f623e639ba4c3e71f0d101730117203170c9de556abf148d0875`  
		Last Modified: Wed, 16 Sep 2026 06:47:53 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fab9d834d49692e658fc2000cb16a9bc520512d642176fe655f40b5803fd2f16`  
		Last Modified: Wed, 16 Sep 2026 06:47:54 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4073bcc81ba5a8f84a2a5f974757548bd490d4eccf2b3b31e4e6e6e0daf49750`  
		Last Modified: Wed, 16 Sep 2026 10:11:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba727cb01a0149a033b3a450dfa14453ceac9dd7e38cecddce81961efd3d520`  
		Last Modified: Wed, 16 Sep 2026 10:11:15 GMT  
		Size: 14.2 MB (14184031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:855180a0240c4a1620e25540743f57ab47d0f805c682cc6c08cb3d620ccbf352`  
		Last Modified: Wed, 16 Sep 2026 11:48:06 GMT  
		Size: 234.6 MB (234575149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e8a18109ad3a0e34faf8af12450d585f674cfda233a6fcbe32cddfefa01aac`  
		Last Modified: Wed, 16 Sep 2026 11:48:01 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:fd69998bc8f5cbe11c9a5804f822198aca5f1be95c7ee93b70c66df2265139e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4366100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cc3feac2f6344e876e960d1f3375f6dd17cc6272e323bd045a9cb7882923d4f`

```dockerfile
```

-	Layers:
	-	`sha256:f68aa9708cae8688aebfbfeb921ea4dbdbedcb2d78fdc60a4fe2d292cbb48db2`  
		Last Modified: Wed, 16 Sep 2026 11:48:01 GMT  
		Size: 4.3 MB (4346969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:482beca13d8a14e4d8fa5073d506c02be112ff3e60da6e6e1054a8f524331a80`  
		Last Modified: Wed, 16 Sep 2026 11:48:01 GMT  
		Size: 19.1 KB (19131 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:3.12.12-postgres`

```console
$ docker pull geonetwork@sha256:5815c19638ee18191ba6cdf6507eefa85a7ff706382e3daf4db50adfcda3355c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `geonetwork:3.12.12-postgres` - linux; amd64

```console
$ docker pull geonetwork@sha256:49273618f884bdd806d33ef10f83d215f30e7d25380c0153774ff5d0fa78f4f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.5 MB (364505749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801af578045074211373b5b4b0aefcc753ad3377847a5a95d53e9f9c1bde14e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:16:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:14 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 03:16:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 03:16:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:16:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:16:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 04:29:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 04:29:29 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:29:29 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 04:29:29 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:29 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 04:29:29 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 04:29:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Wed, 16 Sep 2026 04:29:58 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 04:29:58 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 04:29:58 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 04:29:58 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 05:16:53 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 05:16:53 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 16 Sep 2026 05:16:53 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 05:16:53 GMT
ENV GN_VERSION=3.12.12
# Wed, 16 Sep 2026 05:16:53 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Wed, 16 Sep 2026 05:16:53 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 16 Sep 2026 05:19:13 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Wed, 16 Sep 2026 05:19:13 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:19:13 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:19:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 05:19:13 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:15:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 06:15:15 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Wed, 16 Sep 2026 06:15:15 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Wed, 16 Sep 2026 06:15:15 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:15:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 06:15:15 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d10bcdd9a8ad2f2737d6760230c9cafe0fdb255ac82917ff8d7fbe174dec97`  
		Last Modified: Wed, 16 Sep 2026 03:16:29 GMT  
		Size: 16.9 MB (16947638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3b108208610184f862120fe33d918051037c4915e6dfde5ca2c0dcf491aaf1`  
		Last Modified: Wed, 16 Sep 2026 03:16:30 GMT  
		Size: 55.2 MB (55168839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14e261a1e8709a74502ca82b6a315c408542b86d7a6d0a0e699cf735a4e85d7a`  
		Last Modified: Wed, 16 Sep 2026 03:16:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9340437cbddbf020163ee2c2d88abf409288f6ae926828b164e8b6ccb971a85`  
		Last Modified: Wed, 16 Sep 2026 03:16:28 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32754ee369f13ea45cab1ff004fae56475c2c231bf0ed7f60040cac20737eed5`  
		Last Modified: Wed, 16 Sep 2026 04:30:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2360d3949e9b9971f685f5bcce8e839afe27cb15c206f9ad0dd9c19fe50a3c01`  
		Last Modified: Wed, 16 Sep 2026 04:30:08 GMT  
		Size: 14.1 MB (14116356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee9c02f66982b83b89c6b2920d3f64a4edfb409fd02c2a6804970a7102f497f`  
		Last Modified: Wed, 16 Sep 2026 05:19:39 GMT  
		Size: 234.6 MB (234550968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1cd7c0c60ed202b13cf24b683178979906508d3d4b430b75c30c1c5106dad2a`  
		Last Modified: Wed, 16 Sep 2026 05:19:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2275ef2b67c7c32806e285daba4dad49f1c643b039d0b6f4ede6004f55744b2`  
		Last Modified: Wed, 16 Sep 2026 06:15:30 GMT  
		Size: 14.0 MB (13951285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9878853ac49065a0a86989e9efbf80ab9e669c764adcd993a670ce6d55997a6`  
		Last Modified: Wed, 16 Sep 2026 06:15:29 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f781b463c205601ac8478a38d7f9d5d03e859de57501cdf22323159cb46ac0d`  
		Last Modified: Wed, 16 Sep 2026 06:15:29 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f64c926a466c3685f8fe05dc501cd3ce05adf17da839d5d23572fecfcf0137`  
		Last Modified: Wed, 16 Sep 2026 06:15:29 GMT  
		Size: 974.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12.12-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:55ae6e312d357b9ec094a2dc2792bb0911921518021045714531e7291dfb5043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5921691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cb40555b454037eb2858ddffc7fcacb20b6711ea25c3fcad22ed7aa9b0c9a35`

```dockerfile
```

-	Layers:
	-	`sha256:735ad34647fb1e4d7e70750c0ee795457a44cc79ba7a4968d3ac18269b602e06`  
		Last Modified: Wed, 16 Sep 2026 06:15:29 GMT  
		Size: 5.9 MB (5898873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f959d643729f9ec5ade3b9fd44ff1483e0804d454b77ad4a4862b313618c9f02`  
		Last Modified: Wed, 16 Sep 2026 06:15:29 GMT  
		Size: 22.8 KB (22818 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12.12-postgres` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:8b145245ebef57b2f25b0d24e9ad42709d9c439c4198acca40cc2dbe80b567c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.3 MB (355252803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:340ee009e11428f351917e2163b9657263521bddddc1c9f36b4fe7f06978939e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 17 Aug 2026 13:17:18 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:17:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:17:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:17:21 GMT
ADD file:2164aa16295913265eec9e47409ded367df44d23b10145b85e6b3cb27d1e239c in / 
# Mon, 17 Aug 2026 13:17:21 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:11:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 19:11:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:11:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:11:55 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:11:55 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 18 Aug 2026 19:12:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='ac93b4b75d6c0592c83030dbbeeaed46f5fbfccb276cf26c86aab3e49bba090e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Tue, 18 Aug 2026 19:12:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 19:12:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:12:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 20:24:08 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 20:24:08 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:24:08 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 20:24:08 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 20:24:08 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_MAJOR=9
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_VERSION=9.0.121
# Tue, 18 Aug 2026 20:24:08 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Tue, 18 Aug 2026 20:24:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Tue, 18 Aug 2026 20:24:34 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 20:24:34 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 20:24:34 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 20:24:34 GMT
CMD ["catalina.sh" "run"]
# Tue, 18 Aug 2026 21:15:51 GMT
ENV GN_FILE=geonetwork.war
# Tue, 18 Aug 2026 21:15:51 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 18 Aug 2026 21:15:51 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 18 Aug 2026 21:15:51 GMT
ENV GN_VERSION=3.12.12
# Tue, 18 Aug 2026 21:15:51 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Tue, 18 Aug 2026 21:15:51 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 18 Aug 2026 21:18:47 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Tue, 18 Aug 2026 21:18:47 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:18:48 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 21:18:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 21:18:48 GMT
CMD ["catalina.sh" "run"]
# Tue, 18 Aug 2026 22:10:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 22:10:55 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Tue, 18 Aug 2026 22:10:55 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Tue, 18 Aug 2026 22:10:55 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 22:10:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 22:10:55 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:66f3e1c55273a462a0982068d442942c00c78585376028748a23901efa512546`  
		Last Modified: Mon, 17 Aug 2026 14:27:34 GMT  
		Size: 26.9 MB (26872780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd5ff123d65f06a06e05df4fbc985dfb1e712c4893a99a91f3560b32af611e1`  
		Last Modified: Tue, 18 Aug 2026 19:12:18 GMT  
		Size: 16.3 MB (16268689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe9346f73c68c242c1dcff803b4d9347e4ef0451eb5b3ca0a5f3d4fa5627af61`  
		Last Modified: Tue, 18 Aug 2026 19:12:19 GMT  
		Size: 50.5 MB (50541462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75a6c25ae29b38f2ea91bd3e7898a091d31454ea291002ebf4a55c836448726`  
		Last Modified: Tue, 18 Aug 2026 19:12:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ce6110d55149d8f0859d0cf20788727ad956518790a69b08adc6cf61611640`  
		Last Modified: Tue, 18 Aug 2026 19:12:17 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17c889623b2b2083a1d46e6ca33cf8d2df7bd93653d691ee250f37738ac14dc8`  
		Last Modified: Tue, 18 Aug 2026 20:24:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b632d5d97b7dc2b29500b76fe7ef6a4b27260856046bf2a3d6444a7bac09b699`  
		Last Modified: Tue, 18 Aug 2026 20:24:43 GMT  
		Size: 14.0 MB (14012471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f69de9e3b88d95b01f49a513f9f64e80e8965ea02b1faf65da06d61f6f607a`  
		Last Modified: Tue, 18 Aug 2026 21:19:14 GMT  
		Size: 234.5 MB (234538961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b346ddd5ec029e1723e3151873793ba707371f2d1a4e28b5dc4cedf416b924b`  
		Last Modified: Tue, 18 Aug 2026 21:19:09 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e1390b6f919ba3907ab0be81608978c9f07f3f6bd18d8ec1f2a704253a7c53`  
		Last Modified: Tue, 18 Aug 2026 22:11:10 GMT  
		Size: 13.0 MB (13011896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a4a7942ed63fa1b7dfa4fd9b2f433d595dc7d775d1c98d72b958726cadbfa7`  
		Last Modified: Tue, 18 Aug 2026 22:11:10 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3625e3a8233785a66029eb91302761de9b948a83c3741ddd9d551d050eba517b`  
		Last Modified: Tue, 18 Aug 2026 22:11:10 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84426a66d983a326304172c4908e9be35406c24c6b1f7b5d515f47cc716df7f0`  
		Last Modified: Tue, 18 Aug 2026 22:11:10 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12.12-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:1f0500317c16ef581759d6da0aab8b2b7e6726b70d48ffa9e5821521d0a3b8d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5924468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a47843d6d7dac5ddd62af87008b70a05e8e0935933a00ae2d366b2a1f7aa1db0`

```dockerfile
```

-	Layers:
	-	`sha256:80192b3242a415958bd067c3610e3e9727ed245c0e7d874a5e35ad3fc3350840`  
		Last Modified: Tue, 18 Aug 2026 22:11:10 GMT  
		Size: 5.9 MB (5901564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbdffe3bcae430a8d3cb7379c794a1cd3abfea1e7d962785fcdb55c8a5322213`  
		Last Modified: Tue, 18 Aug 2026 22:11:10 GMT  
		Size: 22.9 KB (22904 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12.12-postgres` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:1461cc4d743b235a69cf8f2910aaaaeabcd348bcd2f7273c1e8f11e8fdb7dcec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.8 MB (362788665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24929f5ba3e526a0c28f3fc491769c67b34280cb9f661a6ed7a0ba9514101de9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:16:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:07 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 03:16:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 03:16:10 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:16:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:16:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 04:29:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 04:29:39 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:29:39 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 04:29:39 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:39 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 04:29:39 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 04:30:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Wed, 16 Sep 2026 04:30:06 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 04:30:06 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 04:30:06 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 04:30:06 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 05:16:35 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 05:16:35 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 16 Sep 2026 05:16:35 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 05:16:35 GMT
ENV GN_VERSION=3.12.12
# Wed, 16 Sep 2026 05:16:35 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Wed, 16 Sep 2026 05:16:35 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 16 Sep 2026 05:19:24 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Wed, 16 Sep 2026 05:19:24 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:19:24 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:19:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 05:19:24 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 06:15:06 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Wed, 16 Sep 2026 06:15:06 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Wed, 16 Sep 2026 06:15:06 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:15:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 06:15:06 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2684ed3f62207b159c5a962f8bbc7d53a8996b59c146bb4a1813b9df89b70e52`  
		Last Modified: Wed, 16 Sep 2026 03:16:23 GMT  
		Size: 17.0 MB (16957485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815b036223534df703dbd0802b67640746900ea6099809e8b361a3768ac98ef2`  
		Last Modified: Wed, 16 Sep 2026 03:16:24 GMT  
		Size: 54.3 MB (54269518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295504c62538fcf6fc9d570cf8465c9c263db6fd5c59851cb9aefbe1170fef06`  
		Last Modified: Wed, 16 Sep 2026 03:16:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09401222144c72cdfe989082973974c49fc468c8ea74298c3141e8fa7703daf8`  
		Last Modified: Wed, 16 Sep 2026 03:16:22 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87fe787514197f70d44cd17d246464e974ab5993b62f877ade8c0b8366e256b0`  
		Last Modified: Wed, 16 Sep 2026 04:30:15 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2e28a49bdae00899e9f5692b9e1a822189fb4979896ee4f02919e4409a82f2`  
		Last Modified: Wed, 16 Sep 2026 04:30:15 GMT  
		Size: 14.1 MB (14123646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98592bfd7dfc6e589054fab6053d14a3995ed6e902c107d48df66c7ce17195bc`  
		Last Modified: Wed, 16 Sep 2026 05:19:50 GMT  
		Size: 234.6 MB (234554779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c968689cf38b8d4ed3e3b2c36abb2e7b0c8027b6f6352b6597ae1ef3c8db5956`  
		Last Modified: Wed, 16 Sep 2026 05:19:45 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f64ff1a71f28a06c0f5e9edd72c2b733155b9c80c2f49de34ca4d0d4660a04`  
		Last Modified: Wed, 16 Sep 2026 06:15:21 GMT  
		Size: 13.9 MB (13935112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1db6b092a10afcb64c6ea30e5f1fbca9647cec7f0592e6d1bf1539e1624d2069`  
		Last Modified: Wed, 16 Sep 2026 06:15:21 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac41a1b0f89fe6d1017341e131caf5fabfafd7adaa97731839a0524a5b44290`  
		Last Modified: Wed, 16 Sep 2026 06:15:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:079729fb4d6c8ff5bcaa74463e39a743ad1ffe5a2baf0f36d7eb276235557324`  
		Last Modified: Wed, 16 Sep 2026 06:15:21 GMT  
		Size: 974.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12.12-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:0068d483d1576948c38d3e889988ff30939a185616c912c79b6da49bce4cd6eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5929007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d0c71efb5d59e48c25b08cfd4e648753b693156a561642dad72dde3db3c106`

```dockerfile
```

-	Layers:
	-	`sha256:c8d6657cfb19a85bddcff6e0fe7743f264f5aacf8e10c5ebf75b893a8842cd45`  
		Last Modified: Wed, 16 Sep 2026 06:15:21 GMT  
		Size: 5.9 MB (5906081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c423ec6b0a2dce787ccc747629d20c96ad7e695e6b21319307f3299e5561d820`  
		Last Modified: Wed, 16 Sep 2026 06:15:21 GMT  
		Size: 22.9 KB (22926 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12.12-postgres` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:9c9aa71730a1d3aaaa7a6fc7e38bd66b56dd001f9bc6a25d039c82ac16700718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.0 MB (369035505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40588005f9a4fb269274085a8af0cf3056969afe038ba378f8460181af310572`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 06:47:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 06:47:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 06:47:17 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 06:47:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 06:47:22 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 06:47:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:47:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 10:09:33 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 10:09:33 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:09:33 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 10:09:33 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 10:09:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 10:09:33 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 10:10:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Wed, 16 Sep 2026 10:10:54 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 10:10:54 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 10:10:54 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 10:10:54 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 11:45:35 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 11:45:35 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 16 Sep 2026 11:45:35 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 11:45:35 GMT
ENV GN_VERSION=3.12.12
# Wed, 16 Sep 2026 11:45:35 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Wed, 16 Sep 2026 11:45:35 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 16 Sep 2026 11:47:18 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Wed, 16 Sep 2026 11:47:18 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 11:47:18 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 11:47:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 11:47:18 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 12:18:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 12:18:30 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Wed, 16 Sep 2026 12:18:30 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Wed, 16 Sep 2026 12:18:31 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 12:18:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 12:18:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4203fb8b2c14c1adc11a851d1fc29ab6315d968370915b4c1821d3df6e6db4`  
		Last Modified: Wed, 16 Sep 2026 06:47:54 GMT  
		Size: 18.8 MB (18765991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:836e72b63661a53ba1e6ef02949b8338426e4ab877fbacd506989f083346ec12`  
		Last Modified: Wed, 16 Sep 2026 06:47:55 GMT  
		Size: 52.7 MB (52675430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23af5db4aea8f623e639ba4c3e71f0d101730117203170c9de556abf148d0875`  
		Last Modified: Wed, 16 Sep 2026 06:47:53 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fab9d834d49692e658fc2000cb16a9bc520512d642176fe655f40b5803fd2f16`  
		Last Modified: Wed, 16 Sep 2026 06:47:54 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4073bcc81ba5a8f84a2a5f974757548bd490d4eccf2b3b31e4e6e6e0daf49750`  
		Last Modified: Wed, 16 Sep 2026 10:11:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba727cb01a0149a033b3a450dfa14453ceac9dd7e38cecddce81961efd3d520`  
		Last Modified: Wed, 16 Sep 2026 10:11:15 GMT  
		Size: 14.2 MB (14184031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:855180a0240c4a1620e25540743f57ab47d0f805c682cc6c08cb3d620ccbf352`  
		Last Modified: Wed, 16 Sep 2026 11:48:06 GMT  
		Size: 234.6 MB (234575149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e8a18109ad3a0e34faf8af12450d585f674cfda233a6fcbe32cddfefa01aac`  
		Last Modified: Wed, 16 Sep 2026 11:48:01 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a808cc058c8ad7643336fd69476ada69d58e91b01fa1b84e873649f4b76d9bf6`  
		Last Modified: Wed, 16 Sep 2026 12:19:15 GMT  
		Size: 14.5 MB (14451406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b285cea9ab1b03163525b6cc7b9251218b0417d12c03cdc4c539944c13ba8e`  
		Last Modified: Wed, 16 Sep 2026 12:19:14 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c3d95389a432e3bd46a36720e8121e8156c04650305c4ad63d1764a6c2a3d6`  
		Last Modified: Wed, 16 Sep 2026 12:19:14 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bcb36b731806eff006e8ed7d90f65a03cdc040c2af8d288a33bbd4993a60e4a`  
		Last Modified: Wed, 16 Sep 2026 12:19:14 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12.12-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:f357ad2603b5891d0a8204be6630a759e7f0b7c84e6b9baf00c9a58cd1a1e36e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5927228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75df7dd5dc1a8a56a11d47c3a0ceb934e887f375578c9c991ae741df9b715d1`

```dockerfile
```

-	Layers:
	-	`sha256:a2674e8f3809eaf268fed6fc2a633ab386466111a36a777c72ee9b896e8816eb`  
		Last Modified: Wed, 16 Sep 2026 12:19:14 GMT  
		Size: 5.9 MB (5904369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:706163f47d90c8714b3afa5b6847639b8c7692f65aec2718de2319edc8549e8e`  
		Last Modified: Wed, 16 Sep 2026 12:19:14 GMT  
		Size: 22.9 KB (22859 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:4`

```console
$ docker pull geonetwork@sha256:0d24b95f7798935ec590cbe13f0c8ebee635cadfc7dfb92b16b7b50dfad4b7a0
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

### `geonetwork:4` - linux; amd64

```console
$ docker pull geonetwork@sha256:8aa00b3d04ae3ce97247393e3bcd833e4db81d92296975212451694dc93a15ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.5 MB (418512936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2cc15d5016cb04b818865fd6d4c49a082d4e6b811906938dcc5ecff532ea765`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:17:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:17:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:17:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:17:10 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:17:10 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 16 Sep 2026 03:17:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 03:17:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:17:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:17:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 05:16:27 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 05:16:27 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 05:16:27 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 05:16:27 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:16:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:27 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 05:16:27 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 05:16:27 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 05:16:28 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 16 Sep 2026 05:16:35 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:16:36 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 05:16:36 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 05:16:36 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 05:16:36 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:47:43 GMT
ENV DATA_DIR=/catalogue-data
# Wed, 16 Sep 2026 06:47:43 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Wed, 16 Sep 2026 06:47:43 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Wed, 16 Sep 2026 06:47:43 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 06:47:43 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Wed, 16 Sep 2026 06:47:43 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 06:47:43 GMT
ENV GN_VERSION=4.4.12
# Wed, 16 Sep 2026 06:47:43 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Wed, 16 Sep 2026 06:48:09 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Wed, 16 Sep 2026 06:48:09 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Wed, 16 Sep 2026 06:48:09 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Wed, 16 Sep 2026 06:48:09 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:48:09 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Wed, 16 Sep 2026 06:48:09 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:48:09 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d570e6c5bd62d1a95ada3cc414c707770a7616ef84271dee51f48618027493f`  
		Last Modified: Wed, 16 Sep 2026 03:17:25 GMT  
		Size: 16.9 MB (16947534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d3f07620448124f813941812270e17df68ba476bb7097e450dbb31f145aa0e6`  
		Last Modified: Wed, 16 Sep 2026 03:17:26 GMT  
		Size: 47.3 MB (47336595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091ea69664cdd3cd78f14b808b78492aed4917d6411257e368388281264e8172`  
		Last Modified: Wed, 16 Sep 2026 03:17:25 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999d6a6121d5528901bc4e0b4c49ad7bd1bcbad74fb55fc7272f552e7874c090`  
		Last Modified: Wed, 16 Sep 2026 03:17:25 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6dfc28e91276e4dd9ccffbe876ccbb47e01bd9db89b1f4d12d995c6e6190b58`  
		Last Modified: Wed, 16 Sep 2026 05:16:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5a86756f0d5bdc75ce50ded5bb63a2c775921c73b9b03f725152456a87a85a6`  
		Last Modified: Wed, 16 Sep 2026 05:16:44 GMT  
		Size: 13.9 MB (13875514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc0b37f2f0140384644b46bcc9721b58679d8937439714e5fd4ad9e1941718f`  
		Last Modified: Wed, 16 Sep 2026 05:16:44 GMT  
		Size: 225.3 KB (225284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5138c0bc0b5f9a0a0a62258721a5f4fe97a681c36c245ec9b219fce69abba1be`  
		Last Modified: Wed, 16 Sep 2026 06:48:33 GMT  
		Size: 239.7 KB (239696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac133cdff061147e0fc8c501baa5043f76ccc1b235ddefe095cb206b511d97f8`  
		Last Modified: Wed, 16 Sep 2026 06:48:39 GMT  
		Size: 310.1 MB (310117337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9955355575e27cc34317065c38015b1baf4238d5532a34edb814151e210ad884`  
		Last Modified: Wed, 16 Sep 2026 06:48:33 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d51b9951859c41dff67cf1ad2e2bb5fb5e41e4bfb14348ff8d8ca82c5ac747f1`  
		Last Modified: Wed, 16 Sep 2026 06:48:34 GMT  
		Size: 3.0 KB (3013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb5030a23e7d419134029ea164f201d0e3bae9d023ae5d131c5df4aeb0b9fdc`  
		Last Modified: Wed, 16 Sep 2026 06:48:35 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:f28a0eecbf7576dfd07f4627f7dec52abb9cba57946b3c9d27e8b1f15822dc83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4204273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79139125fe4100038a93ff49808e3b354ecba99e7a5696d7a5fe6811942ad27`

```dockerfile
```

-	Layers:
	-	`sha256:60b699c6739775bc69c400ef509dfa76955ad5130a7cbe65b1d0415e54da2840`  
		Last Modified: Wed, 16 Sep 2026 06:48:33 GMT  
		Size: 4.2 MB (4178719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a257b6591a27c53782fb2b7950a54bfa2de09075c19befbc34290001150d7daa`  
		Last Modified: Wed, 16 Sep 2026 06:48:33 GMT  
		Size: 25.6 KB (25554 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:0216707ad06df831b21361546b689c98415ab0b035791e263971fc8618c22261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.0 MB (412975252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d4742dea7626d462d10daf0e240d8159c55a7859671e7e6e0bdf3b8f4f17740`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:45:45 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:45:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:45:45 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:45:48 GMT
ADD file:683b4c146da2addbd0ae70d2240b8e3a57dd2f7582c952d416231fdd6496720f in / 
# Fri, 11 Sep 2026 11:45:48 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:12:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:12:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:12:09 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:12:09 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 16 Sep 2026 03:12:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 03:12:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:12:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:12:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 05:16:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 05:16:05 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 05:16:05 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 05:16:05 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:16:05 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:05 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:05 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 05:16:05 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 05:16:05 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 05:16:05 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 16 Sep 2026 05:16:11 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:16:11 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 05:16:11 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 05:16:11 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 05:16:11 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:11:39 GMT
ENV DATA_DIR=/catalogue-data
# Wed, 16 Sep 2026 06:11:39 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Wed, 16 Sep 2026 06:11:39 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Wed, 16 Sep 2026 06:11:39 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 06:11:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Wed, 16 Sep 2026 06:11:39 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 06:11:39 GMT
ENV GN_VERSION=4.4.12
# Wed, 16 Sep 2026 06:11:39 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Wed, 16 Sep 2026 06:13:07 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Wed, 16 Sep 2026 06:13:07 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Wed, 16 Sep 2026 06:13:07 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Wed, 16 Sep 2026 06:13:07 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:13:07 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Wed, 16 Sep 2026 06:13:07 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:13:07 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:f98fce276933dc8d40e338c8a5447d14e10d972c731f074e9fcd9f9bb629aa50`  
		Last Modified: Fri, 11 Sep 2026 13:38:53 GMT  
		Size: 26.9 MB (26894925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655a150349094c5ab6d5d0d764d257cf6b1ebfaaebae8397a725ce6dec1c7533`  
		Last Modified: Wed, 16 Sep 2026 03:12:25 GMT  
		Size: 16.3 MB (16275603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c466ae923221d04be266029bfeb0ecf0cd8c2d7a56550a77b8adc2111216a1`  
		Last Modified: Wed, 16 Sep 2026 03:12:26 GMT  
		Size: 45.4 MB (45443993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d273c5ebd927c5f95504bc830f73ce9913245a862b918e5acbc6dad0311ec2cb`  
		Last Modified: Wed, 16 Sep 2026 03:12:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9152abd9cefbf5b6a0c52cd9d4a380c0750f74dbf81da9bd9454d5864152f6d2`  
		Last Modified: Wed, 16 Sep 2026 03:12:25 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49082958d2a658fd11313509b66587929523258e4dbd7e4a4e9d23467427127`  
		Last Modified: Wed, 16 Sep 2026 05:16:20 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0af8865971f6a6ce85b3b8dfd4666f91225b5ff5930ef838b2e8a76b48a5309`  
		Last Modified: Wed, 16 Sep 2026 05:16:21 GMT  
		Size: 13.8 MB (13812714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d67905668c658f65c8341c99ba6fb30761e7c55c961c5865c637206ff63aee2d`  
		Last Modified: Wed, 16 Sep 2026 05:16:20 GMT  
		Size: 196.9 KB (196926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:157d244e58e3673d056462e66effb9a7d6b3f67ac9e5d1b9b0b2510045c7bd26`  
		Last Modified: Wed, 16 Sep 2026 06:13:32 GMT  
		Size: 226.9 KB (226875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8685754f4318ca712257ab82c07e93a6d944e354bb5e9354088270e8cd146b2c`  
		Last Modified: Wed, 16 Sep 2026 06:13:38 GMT  
		Size: 310.1 MB (310117362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e586c959979d2dcf5cb4ccac894b3a609b09fa21f0a1aeb17b59a97601fa98`  
		Last Modified: Wed, 16 Sep 2026 06:13:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44af8b64a4de8abe6babe4c6fb415c297b86f2982b9f9f798982830654676d46`  
		Last Modified: Wed, 16 Sep 2026 06:13:32 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aee0d364c6a1ec889933c58413e5f40c051586dc89be81eef75a4ffdfe24731`  
		Last Modified: Wed, 16 Sep 2026 06:13:33 GMT  
		Size: 698.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:15f18301fdb7b2008dc6ffe0133ffd7109c21986f9f78cd6885031b92836e670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4207968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ff9ab912003bdab781da0dd0bb1546e8371674f7d36bbdb01fbc011df7850db`

```dockerfile
```

-	Layers:
	-	`sha256:d7a1262292b3fd657a68c54f898f416127aea2174ec0876e3bc8f4c5f4424d55`  
		Last Modified: Wed, 16 Sep 2026 06:13:32 GMT  
		Size: 4.2 MB (4182322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd87d6200afe64c89dcfffbcc154b1e945219beca1031a962230a8ff7da32765`  
		Last Modified: Wed, 16 Sep 2026 06:13:32 GMT  
		Size: 25.6 KB (25646 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:c83964939098785461fbacb3c2630f2c8612ea6a13bd998ff355666b0eec7be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **416.0 MB (416014714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d329a2b112a01b9288ec6512cb18530e93fcb6b43a8c003ac40adbfea27bad`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:16:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:48 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:48 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 16 Sep 2026 03:16:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 03:16:52 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:16:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:16:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 05:16:09 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 05:16:09 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 05:16:09 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 05:16:09 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:16:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:09 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:09 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 05:16:09 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 05:16:09 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 05:16:10 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 16 Sep 2026 05:16:18 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:16:18 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 05:16:18 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 05:16:18 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 05:16:18 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:15:07 GMT
ENV DATA_DIR=/catalogue-data
# Wed, 16 Sep 2026 06:15:07 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Wed, 16 Sep 2026 06:15:07 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Wed, 16 Sep 2026 06:15:07 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 06:15:07 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Wed, 16 Sep 2026 06:15:07 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 06:15:07 GMT
ENV GN_VERSION=4.4.12
# Wed, 16 Sep 2026 06:15:07 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Wed, 16 Sep 2026 06:15:33 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Wed, 16 Sep 2026 06:15:33 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Wed, 16 Sep 2026 06:15:33 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Wed, 16 Sep 2026 06:15:33 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:15:33 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Wed, 16 Sep 2026 06:15:33 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:15:33 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7cde1edee6e54f132e57d6c18fc40e37a3a93f2934e9872f6460883c7c4505`  
		Last Modified: Wed, 16 Sep 2026 03:17:04 GMT  
		Size: 17.0 MB (16957421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5284141e3131dc5ba418157327a4a273cc78e5afb48f00e0551a4930e91d8dd1`  
		Last Modified: Wed, 16 Sep 2026 03:17:05 GMT  
		Size: 45.6 MB (45638921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70cc2531798d0759d9ae8f6148d9909f125c9ffd7023b58401dd9364d65a07df`  
		Last Modified: Wed, 16 Sep 2026 03:17:03 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9041f384a6fe8ddfed5f193845a975cbf8acce9684e03cab144e7d5af371337c`  
		Last Modified: Wed, 16 Sep 2026 03:17:03 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975a51c36e657bff19f0c70a78813ed53ca00a42f98c02d5829c3df0703ae7c0`  
		Last Modified: Wed, 16 Sep 2026 05:16:26 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e634b3a88d8c4cb9395c9c007c88a5505271099deac58824b3bf4f92de9a08`  
		Last Modified: Wed, 16 Sep 2026 05:16:27 GMT  
		Size: 13.9 MB (13888096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabe9e669cefc9ff097800941c333879349dd9018f13bd6ce71bd4f42c915165`  
		Last Modified: Wed, 16 Sep 2026 05:16:26 GMT  
		Size: 225.7 KB (225739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8aebedcbd5d0bf0899eea1b5bc53ad8f7c8ed67eb9e8d19d524753b8f085fda`  
		Last Modified: Wed, 16 Sep 2026 06:15:57 GMT  
		Size: 238.8 KB (238768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a457e99354a1642e1ad558074df3fc88c54048bf42f276fb15065992e0c8ebbb`  
		Last Modified: Wed, 16 Sep 2026 06:16:04 GMT  
		Size: 310.1 MB (310117333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eea2bcd03069992a718437ecfc457b3d5dc58eec7105a696ff4ccc6e67a4973`  
		Last Modified: Wed, 16 Sep 2026 06:15:57 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e03b047d41d868696f13abf9bae90943053d09a057fb7ef9f6df82b2013ca6`  
		Last Modified: Wed, 16 Sep 2026 06:15:57 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26184d78aed2cf3e3f421873a31cf711277918669d6bccca872c46bec212af3a`  
		Last Modified: Wed, 16 Sep 2026 06:15:58 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:b1b00984c66132c4aad747ecc3bb68998065e7310413a8a31f071413f1234189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4205482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a152a0191a830799e0f8da2b58014268087ceafde6d7b021fa3c4a010ef4137a`

```dockerfile
```

-	Layers:
	-	`sha256:8a7cc9e11a95cda5322f5b5c4bae05cabc98f82febaaabbcf802f1d927806dff`  
		Last Modified: Wed, 16 Sep 2026 06:15:58 GMT  
		Size: 4.2 MB (4179809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90968ab683f4e442b0e474b74e3fb7cd491d1ccf8f47ebc4c047f3b389e5a089`  
		Last Modified: Wed, 16 Sep 2026 06:15:57 GMT  
		Size: 25.7 KB (25673 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:5b13b818fd7959f48c8804b35b323020e8b9cc96e023172fc1ffd6213e283c78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.5 MB (420508120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb08dec6482f64af0bc5f224641123a79389b77963019572e73b1cfe73b4f10e`
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
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 06:47:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 06:47:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 06:47:17 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 16 Sep 2026 06:49:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 06:49:28 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 06:49:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:49:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 11:29:00 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 11:29:00 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 11:29:00 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 11:29:01 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 11:29:01 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 11:29:01 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 11:29:01 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 11:29:01 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 11:29:01 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 11:30:12 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 16 Sep 2026 11:30:19 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 11:30:21 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 11:30:21 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 11:30:21 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 11:30:21 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 12:19:36 GMT
ENV DATA_DIR=/catalogue-data
# Wed, 16 Sep 2026 12:19:36 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Wed, 16 Sep 2026 12:19:36 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Wed, 16 Sep 2026 12:19:36 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 12:19:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Wed, 16 Sep 2026 12:19:36 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 12:19:36 GMT
ENV GN_VERSION=4.4.12
# Wed, 16 Sep 2026 12:19:36 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Wed, 16 Sep 2026 12:20:11 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Wed, 16 Sep 2026 12:20:12 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Wed, 16 Sep 2026 12:20:12 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Wed, 16 Sep 2026 12:20:12 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 12:20:12 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Wed, 16 Sep 2026 12:20:12 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 12:20:12 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4203fb8b2c14c1adc11a851d1fc29ab6315d968370915b4c1821d3df6e6db4`  
		Last Modified: Wed, 16 Sep 2026 06:47:54 GMT  
		Size: 18.8 MB (18765991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88609147b4c6303e7952e639f44158314f276922bdd55df33f7e4ab8834cbae1`  
		Last Modified: Wed, 16 Sep 2026 06:49:54 GMT  
		Size: 42.8 MB (42798847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:751d064a31f1a6b1a061566abe40fc1165a05a1cee3529371973e5616d3de3fa`  
		Last Modified: Wed, 16 Sep 2026 06:49:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbee2a9ede02a6d5b7318fc1f46c28723f25189176472c62051ac4a1447597df`  
		Last Modified: Wed, 16 Sep 2026 06:49:52 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95970deaa78f78838067acc067496b29e84fbb6fac9458fc26d0b8cb9e33cc43`  
		Last Modified: Wed, 16 Sep 2026 11:29:26 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bcbda25b125c98525049d7ca6b21a83658698387e420e26b99450fe7a08258f`  
		Last Modified: Wed, 16 Sep 2026 11:30:38 GMT  
		Size: 13.9 MB (13915319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c5fcc50188c8eb81799c50e89dbb95a6f78a7aa4b199e48058ea5d1553e0bf7`  
		Last Modified: Wed, 16 Sep 2026 11:30:37 GMT  
		Size: 257.0 KB (256956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:539ccb0ec213d5bcf119a7682d8e81aa90b6c80ba3d722941a7f206e4268c4fe`  
		Last Modified: Wed, 16 Sep 2026 12:20:56 GMT  
		Size: 269.9 KB (269931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b0662bff3c648af76dff7a7b745e0a29461736498e23fa128d984327a3dfdb`  
		Last Modified: Wed, 16 Sep 2026 12:21:03 GMT  
		Size: 310.1 MB (310117266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d755ab1d5c869f342e9a17339925e33fe70f7d0d4da39a8b1c46bc23165e9f61`  
		Last Modified: Wed, 16 Sep 2026 12:20:56 GMT  
		Size: 317.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5191ce63beeb7423a96ca76295cca882888f6b07154402588e2afb84e8bf323`  
		Last Modified: Wed, 16 Sep 2026 12:20:56 GMT  
		Size: 3.0 KB (3010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6575f9735f6d940d8e2ebc9c3f48bc2448d0d96e67806202d1cbc8fc179df219`  
		Last Modified: Wed, 16 Sep 2026 12:20:58 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:fb680b95c513f9be5946d44d3daecf25c15f83b6e3865f0fcb5606ccd804eddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4208402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecdb5f7c940d84e01d37ff3dcb4ccb9f873b7a5967199d2ca4afe62b74e773c5`

```dockerfile
```

-	Layers:
	-	`sha256:8aee17620ec300f469622a06a4aa1d391b3fdf39feb5cb1629a995805ba093b9`  
		Last Modified: Wed, 16 Sep 2026 12:20:56 GMT  
		Size: 4.2 MB (4182802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7309d8c7135e9af2aa51555e72dc32856fd8448e8e9719da67ce87e5c25d5ef`  
		Last Modified: Wed, 16 Sep 2026 12:20:56 GMT  
		Size: 25.6 KB (25600 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4` - linux; s390x

```console
$ docker pull geonetwork@sha256:16cf0d47f54b7a818590c25c4ed9441afa6aed3457fbe9e3ac0a046ccc58d0e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.3 MB (413325764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4acf600cb26f2bbc77cab8782e8d8f59e1e21d6b2c78039f48e1d35e3246b64e`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:08 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:08 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:08 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:09 GMT
ADD file:62feb922e0e5d063c128e1d59ecbc5c2274c804b45055ac83d490a0a0c953700 in / 
# Fri, 11 Sep 2026 11:53:09 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 23:30:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 23:30:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 23:30:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 23:30:52 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 17 Sep 2026 23:30:52 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Thu, 17 Sep 2026 23:30:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 17 Sep 2026 23:30:54 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 23:30:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 23:30:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 18 Sep 2026 03:14:27 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 18 Sep 2026 03:14:27 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 03:14:27 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 18 Sep 2026 03:14:27 GMT
WORKDIR /usr/local/tomcat
# Fri, 18 Sep 2026 03:14:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 18 Sep 2026 03:14:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 18 Sep 2026 03:14:27 GMT
ENV TOMCAT_MAJOR=9
# Fri, 18 Sep 2026 03:14:27 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 18 Sep 2026 03:14:27 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 18 Sep 2026 03:15:37 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 18 Sep 2026 03:15:40 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 18 Sep 2026 03:15:40 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 18 Sep 2026 03:15:40 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 18 Sep 2026 03:15:40 GMT
ENTRYPOINT []
# Fri, 18 Sep 2026 03:15:40 GMT
CMD ["catalina.sh" "run"]
# Fri, 18 Sep 2026 04:14:42 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 18 Sep 2026 04:14:42 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Fri, 18 Sep 2026 04:14:42 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Fri, 18 Sep 2026 04:14:42 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Fri, 18 Sep 2026 04:14:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Fri, 18 Sep 2026 04:14:42 GMT
ENV GN_FILE=geonetwork.war
# Fri, 18 Sep 2026 04:14:42 GMT
ENV GN_VERSION=4.4.12
# Fri, 18 Sep 2026 04:14:42 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Fri, 18 Sep 2026 04:15:05 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 18 Sep 2026 04:15:05 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Fri, 18 Sep 2026 04:15:05 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 18 Sep 2026 04:15:05 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 18 Sep 2026 04:15:05 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 18 Sep 2026 04:15:05 GMT
CMD ["catalina.sh" "run"]
# Fri, 18 Sep 2026 04:15:05 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:2d1aac92a29a4eacd140d431dc526f6da099043772d537d221717429ee877b2a`  
		Last Modified: Fri, 11 Sep 2026 13:39:18 GMT  
		Size: 29.9 MB (29945392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57eb44040be758c355a5941831542dd2b2bf89b15aa9bdab656f539a0c5ba7cf`  
		Last Modified: Thu, 17 Sep 2026 23:31:09 GMT  
		Size: 17.5 MB (17537482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d0a65614947504290c520ab922a6a1e0fae7eca97f9cda2f332bfe8388bba11`  
		Last Modified: Thu, 17 Sep 2026 23:31:10 GMT  
		Size: 41.3 MB (41346810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a7b7bdedf77992c4e68e43c4ce325e2fc5520ef94e06c56b2dcc9c5ca376d6`  
		Last Modified: Thu, 17 Sep 2026 23:31:08 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e9ddcdc9d08ccde1caea6e807d7b83cb667f1affa28f6b03331c398970979e`  
		Last Modified: Thu, 17 Sep 2026 23:31:08 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c8c8f5e5d79aa8ac8ccdbd3e1c8f82f133ff1011653c9a4e0442e634477743d`  
		Last Modified: Fri, 18 Sep 2026 03:14:41 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da7e1f3c723a89b491d461ef867dab5a87bca66409d1c348c9203f73f85def95`  
		Last Modified: Fri, 18 Sep 2026 03:15:51 GMT  
		Size: 13.9 MB (13887719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47bd803b251f43c3377bb25c54a147869d466562db2a91d37919aa599458f32`  
		Last Modified: Fri, 18 Sep 2026 03:15:51 GMT  
		Size: 233.3 KB (233346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f55781ba4bd53de3ede76fb54127e7403ec2435f8a78a34ea0a07988b7dda0e`  
		Last Modified: Fri, 18 Sep 2026 04:15:36 GMT  
		Size: 250.8 KB (250774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4485778c1f7df9e61aec7d443d1a19e64e010c7aef91a62ee775ea0b2e3ff7`  
		Last Modified: Fri, 18 Sep 2026 04:15:41 GMT  
		Size: 310.1 MB (310117390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd84bb1b1178237de73e22586759ef236f8be4431e2b6d723a19b42b1eed009c`  
		Last Modified: Fri, 18 Sep 2026 04:15:36 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9e63f385ffe2032a934a3f6e560f8ceaedd8f6f996a2252f69bcd01ec7bd9a`  
		Last Modified: Fri, 18 Sep 2026 04:15:36 GMT  
		Size: 3.0 KB (3010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980c5b490ff0ea1612337ed0f241996948688da2bde15b3b1a92ca04695c9944`  
		Last Modified: Fri, 18 Sep 2026 04:15:37 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:d59017e37f438fac72a744303552f9e2e6927598992639d43a439277a7ac4c74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4206477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3752d189b5415403ae842577d5e260408ae8738e433d63c5fa1f27676f3cad`

```dockerfile
```

-	Layers:
	-	`sha256:0939ce2f6736d79aa1442c7163f4ef09468da37f230657c2cc0b69718867a450`  
		Last Modified: Fri, 18 Sep 2026 04:15:36 GMT  
		Size: 4.2 MB (4180924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a309bdc5ee46c2f4541ec850bc84d4ceb4ce0c8037eae3303d791ba07112da9b`  
		Last Modified: Fri, 18 Sep 2026 04:15:36 GMT  
		Size: 25.6 KB (25553 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:4.2`

```console
$ docker pull geonetwork@sha256:4b5a8903496c46f469aa28238046b2abb77772f0a1d972e0ab183d7f66d66b4f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `geonetwork:4.2` - linux; amd64

```console
$ docker pull geonetwork@sha256:cc60c117c3aebbed6df49655c6671d65b2e656ece12aa43fd810589cb3cf1880
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.6 MB (365568118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a8e4099c4f2296716796b3c36803aa8975eceda297630fe1dd0ab787c19b6c`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:16:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:36 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:36 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 03:16:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 03:16:39 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:16:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:16:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 05:16:27 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 05:16:27 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 05:16:27 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 05:16:28 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:16:28 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:28 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:28 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 05:16:28 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 05:16:28 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 05:16:28 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 16 Sep 2026 05:16:34 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:16:35 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 05:16:35 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 05:16:35 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 05:16:35 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:15:14 GMT
ENV DATA_DIR=/catalogue-data
# Wed, 16 Sep 2026 06:15:14 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Wed, 16 Sep 2026 06:15:14 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Wed, 16 Sep 2026 06:15:14 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 06:15:14 GMT
ENV GN_VERSION=4.2.17
# Wed, 16 Sep 2026 06:15:14 GMT
ENV GN_DOWNLOAD_SHA256=0b065e07ef9b1ff6116c8b10e54f02b9705ea72a154cdcc5a13768667439705b
# Wed, 16 Sep 2026 06:18:15 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Wed, 16 Sep 2026 06:18:15 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Wed, 16 Sep 2026 06:18:15 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:18:15 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Wed, 16 Sep 2026 06:18:15 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:18:15 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24537c54a5c64e11100b07214dbf97bd00c8b1597a6eb42d4dd1efa2188aac13`  
		Last Modified: Wed, 16 Sep 2026 03:16:49 GMT  
		Size: 16.9 MB (16947564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8756af5ed478cf12bc5fffd29d861e9b04133b8b7b471cc3debbfeb00df2cab9`  
		Last Modified: Wed, 16 Sep 2026 03:16:50 GMT  
		Size: 42.3 MB (42332567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cdbb9d09c280cfe662dcf05a84984aeeb62f0a49e9939b04075c01a41dca5c2`  
		Last Modified: Wed, 16 Sep 2026 03:16:49 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70cdb9bbe5ef03e6595c5bc52969b5707d97006b5dbe2d9c12fa85010ca7d48b`  
		Last Modified: Wed, 16 Sep 2026 03:16:49 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f9f13a63b1e54431aa12d48d673a001bba28048b740b49a97e642176d31084`  
		Last Modified: Wed, 16 Sep 2026 05:16:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ee3cde6f746c44969fa8d0b2951e0828689b3edbad2a4e19daadd347d758099`  
		Last Modified: Wed, 16 Sep 2026 05:16:44 GMT  
		Size: 13.9 MB (13874798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d652dc221893a13c05d83530bc4b043cc2dd8d085db18ddda78a1637f2c9a1b7`  
		Last Modified: Wed, 16 Sep 2026 05:16:44 GMT  
		Size: 225.4 KB (225371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1db5c04f8998428b135665905bd66f47bd934f8c663dce98a5f33c217044c998`  
		Last Modified: Wed, 16 Sep 2026 06:18:36 GMT  
		Size: 239.6 KB (239639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5f688d8307ccb29636c9826e89ad019419b12c631a1cda88dc43c38bee223b`  
		Last Modified: Wed, 16 Sep 2026 06:18:41 GMT  
		Size: 262.2 MB (262178765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a593791d3829c4321574b0f85a31bf41fcd9632053be440c91459b0e8cd25408`  
		Last Modified: Wed, 16 Sep 2026 06:18:36 GMT  
		Size: 1.5 KB (1506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7061702d268c5debd94aa099ed7ca2d3a337e1e342e102649d2c00d2522d2aa9`  
		Last Modified: Wed, 16 Sep 2026 06:18:36 GMT  
		Size: 999.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2` - unknown; unknown

```console
$ docker pull geonetwork@sha256:f455c27edf06e33dfd1e0f8fbfa9bc4978c30f5446faf5f93ad2a51189fd9d49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4187763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58726b1f0ed6d9715c5bfe00fd82fc719341abd6e7348f80d2c6cdf55b215c5f`

```dockerfile
```

-	Layers:
	-	`sha256:c6d2fd5ed2ff2990a2ad59e57cf474812aa4b58a88279fc578d77b6659e45c22`  
		Last Modified: Wed, 16 Sep 2026 06:18:36 GMT  
		Size: 4.2 MB (4165958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a0ce68f284939d9fc788a1730a10698d7787605c7f82ac0ad405ff80686de95`  
		Last Modified: Wed, 16 Sep 2026 06:18:36 GMT  
		Size: 21.8 KB (21805 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.2` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:ed17845e135b6a6643f329db1a0feb675631a81024bcb0bf172f25446ee9d08e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.3 MB (359326216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30d189199c5cb42ae3ed3f862dd8bc0a8bc81d85a2c5c5efaeb109a430de8b76`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 17 Aug 2026 13:17:18 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:17:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:17:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:17:21 GMT
ADD file:2164aa16295913265eec9e47409ded367df44d23b10145b85e6b3cb27d1e239c in / 
# Mon, 17 Aug 2026 13:17:21 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:11:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 19:11:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:11:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:11:57 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:11:57 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 18 Aug 2026 19:12:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='5f0693c6c8ca0eb8df969bb1053b1926b1e7c57a3f90c6f9e8d493395e76a329';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Tue, 18 Aug 2026 19:12:06 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 19:12:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:12:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 21:15:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 21:15:25 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 21:15:25 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 21:15:25 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 21:15:25 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:15:25 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:15:25 GMT
ENV TOMCAT_MAJOR=9
# Tue, 18 Aug 2026 21:15:25 GMT
ENV TOMCAT_VERSION=9.0.121
# Tue, 18 Aug 2026 21:15:25 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Tue, 18 Aug 2026 21:15:25 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 21:15:30 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:15:31 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 21:15:31 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 21:15:31 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 21:15:31 GMT
CMD ["catalina.sh" "run"]
# Tue, 18 Aug 2026 22:11:24 GMT
ENV DATA_DIR=/catalogue-data
# Tue, 18 Aug 2026 22:11:24 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Tue, 18 Aug 2026 22:11:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Tue, 18 Aug 2026 22:11:24 GMT
ENV GN_FILE=geonetwork.war
# Tue, 18 Aug 2026 22:11:24 GMT
ENV GN_VERSION=4.2.17
# Tue, 18 Aug 2026 22:11:24 GMT
ENV GN_DOWNLOAD_SHA256=0b065e07ef9b1ff6116c8b10e54f02b9705ea72a154cdcc5a13768667439705b
# Tue, 18 Aug 2026 22:12:50 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Tue, 18 Aug 2026 22:12:50 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Tue, 18 Aug 2026 22:12:50 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 22:12:50 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Tue, 18 Aug 2026 22:12:50 GMT
CMD ["catalina.sh" "run"]
# Tue, 18 Aug 2026 22:12:50 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:66f3e1c55273a462a0982068d442942c00c78585376028748a23901efa512546`  
		Last Modified: Mon, 17 Aug 2026 14:27:34 GMT  
		Size: 26.9 MB (26872780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49bb478b81ddf36a210c14d12ae2a4257080adcff549e4092e29481fb3f98b11`  
		Last Modified: Tue, 18 Aug 2026 19:12:17 GMT  
		Size: 16.3 MB (16268610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab4a809dd35c850b6b20795268343190a37a5edac8481991cb84802e5539d44`  
		Last Modified: Tue, 18 Aug 2026 19:12:18 GMT  
		Size: 39.8 MB (39772470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f42d0392d612ccacb02b37573c72b335de1de2373363a1b21aae1d7fa260e36a`  
		Last Modified: Tue, 18 Aug 2026 19:12:16 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7507461ab2d44a2fc2ae644298c8b569c9b3fb585bfe3975be1ca6490bbc5456`  
		Last Modified: Tue, 18 Aug 2026 19:12:16 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad00d359d4744b9e0cefdd1fc63c971a053a31f746978dd3d09ddef1ee4d17c0`  
		Last Modified: Tue, 18 Aug 2026 21:15:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce78041d92d82f5d163e9e4866c89ae9c6390ca6a0aba659fd39b6c112c3bc4`  
		Last Modified: Tue, 18 Aug 2026 21:15:40 GMT  
		Size: 13.8 MB (13804232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df189663ce7ff8a28e802fa8ff0b635072201595a20f64067323d3cd49412533`  
		Last Modified: Tue, 18 Aug 2026 21:15:39 GMT  
		Size: 197.0 KB (197000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef716d8dced3094ae8c45e28ef3a97abbb2b69b078ed7621a13a78fa479a0bd1`  
		Last Modified: Tue, 18 Aug 2026 22:13:13 GMT  
		Size: 227.0 KB (226978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c341cf42c7fed26f0778626a760c2d7a6f0572ec0ec8e45d8a5a197b91f270d9`  
		Last Modified: Tue, 18 Aug 2026 22:13:18 GMT  
		Size: 262.2 MB (262178850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3937a234a9fac649bc349c33ae7c19918933ca8998533db3840ca43aea6ba9e`  
		Last Modified: Tue, 18 Aug 2026 22:13:13 GMT  
		Size: 1.5 KB (1503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c67b625072bb9e37fbaeeaee282ea30581a54cf05d2eb4dfba3fc3d921ab8fbf`  
		Last Modified: Tue, 18 Aug 2026 22:13:13 GMT  
		Size: 998.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2` - unknown; unknown

```console
$ docker pull geonetwork@sha256:ae4b9b4ac77eb97d31e4eacc42a0596e2fc24882b3b2c24eeaef17691fc4072a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4193802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe2bbdd582263bf157b8bf1f662a6c4f929c9629f0d15e99489c3fb632b9d8a7`

```dockerfile
```

-	Layers:
	-	`sha256:46c63d21944e23c9fea46d8411b2c91d47c5f3d68ae796a30544aece77d57c36`  
		Last Modified: Tue, 18 Aug 2026 22:13:13 GMT  
		Size: 4.2 MB (4171921 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de87772c23136eb5c961d7ad73664ee6e087d56606f938b3ee677a164f9e4a36`  
		Last Modified: Tue, 18 Aug 2026 22:13:13 GMT  
		Size: 21.9 KB (21881 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.2` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:2fd64dee29ed1d6d4b55a400bf94805fe0977cbadd0b69ecc1cf3978a28fe523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.7 MB (363733787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3245658c477d8283547d1cd6a13a087c1709bf15c0646dd7e5475252065a0ca8`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:16:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:14 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 03:16:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 03:16:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:16:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:16:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 05:16:12 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 05:16:12 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 05:16:12 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 05:16:12 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:16:12 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:12 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:12 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 05:16:12 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 05:16:12 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 05:16:12 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 16 Sep 2026 05:16:20 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:16:21 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 05:16:21 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 05:16:21 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 05:16:21 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:14:56 GMT
ENV DATA_DIR=/catalogue-data
# Wed, 16 Sep 2026 06:14:56 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Wed, 16 Sep 2026 06:14:56 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Wed, 16 Sep 2026 06:14:56 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 06:14:56 GMT
ENV GN_VERSION=4.2.17
# Wed, 16 Sep 2026 06:14:56 GMT
ENV GN_DOWNLOAD_SHA256=0b065e07ef9b1ff6116c8b10e54f02b9705ea72a154cdcc5a13768667439705b
# Wed, 16 Sep 2026 06:18:05 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Wed, 16 Sep 2026 06:18:05 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Wed, 16 Sep 2026 06:18:05 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:18:05 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Wed, 16 Sep 2026 06:18:05 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:18:05 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24def95f79f23be8bf3a4282868aef2c25b9c50f1acc6364b80e61e907ab8111`  
		Last Modified: Wed, 16 Sep 2026 03:16:28 GMT  
		Size: 17.0 MB (16957431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4779f97f5daac1fa47446ce5cb6c7a8181ae8238f97eda2b2106079a720d4af`  
		Last Modified: Wed, 16 Sep 2026 03:16:28 GMT  
		Size: 41.3 MB (41299409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b58f9ff619200e34a86a6eb3e23fc35ea8de0aa4ceb7c314d4d83ebd2f3f75`  
		Last Modified: Wed, 16 Sep 2026 03:16:27 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3bd95fea9de5f5ff2a207fa62d7fa5f73b8a2c6c28e267e2ef29a4a6997c8c`  
		Last Modified: Wed, 16 Sep 2026 03:16:27 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf4abd27cfbed4f382301a387943794500676f18a1e3e931b1169bb4053db2e`  
		Last Modified: Wed, 16 Sep 2026 05:16:29 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0210399a1b2c787da10b88d9a9ee08eedef68273093ac022b4f5ff61ebe97112`  
		Last Modified: Wed, 16 Sep 2026 05:16:30 GMT  
		Size: 13.9 MB (13886749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a891670385a780aeefc3fc13ba4c548d4e01808418370081cdbda50f6fdb0fc1`  
		Last Modified: Wed, 16 Sep 2026 05:16:29 GMT  
		Size: 225.8 KB (225768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc671cdfd62f038c1312f56b9f7f48178583b60b2678c6fcccfcb1e2c0d6ea7e`  
		Last Modified: Wed, 16 Sep 2026 06:18:27 GMT  
		Size: 238.7 KB (238739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48c67ed4d1319cb39f9de676824d0f0592bec65154d1321acbf3e30f4f2bc1d`  
		Last Modified: Wed, 16 Sep 2026 06:18:32 GMT  
		Size: 262.2 MB (262178821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3b4584ec7a9cace6b6f9afa8e24498bf7678b6b299cbba39d7d56e722ce681`  
		Last Modified: Wed, 16 Sep 2026 06:18:27 GMT  
		Size: 1.5 KB (1501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a2d2fefc0b6aa8ff32aff32119eb65697daee0ea411c0c6796f0863c86aafe`  
		Last Modified: Wed, 16 Sep 2026 06:18:27 GMT  
		Size: 998.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2` - unknown; unknown

```console
$ docker pull geonetwork@sha256:b36cfa8019e8188b3c6f00222ab957de0f24c3164de25ccca3bdfbeca2c525ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4188997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17c67265447c39d0d85e5ca5b374e61f4ae4a72658b6ff1c2b16dfa2fa061357`

```dockerfile
```

-	Layers:
	-	`sha256:2487f380543ee469ebb361923ac435fab75536fbe02d4af7b5ca3932b2a0ebce`  
		Last Modified: Wed, 16 Sep 2026 06:18:27 GMT  
		Size: 4.2 MB (4167098 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9d00e185adfd3f92b823a5efc3eb3032b4ec55177d62c18394e6c3186441096`  
		Last Modified: Wed, 16 Sep 2026 06:18:27 GMT  
		Size: 21.9 KB (21899 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.2` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:8399b4b9864be46830924dc81c3f2e7601c84784b416d220944a1f0776ab9e24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.5 MB (371515176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c11977e0856d8136180c3f4ed6617a04c02e4b129d3f2cf20c38cc89996c1f72`
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
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 06:47:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 06:47:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 06:47:17 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 06:47:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 06:47:57 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 06:47:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:47:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 11:30:43 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 11:30:43 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 11:30:43 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 11:30:43 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 11:30:43 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 11:30:43 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 11:30:43 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 11:30:43 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 11:30:43 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 11:30:45 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 16 Sep 2026 11:30:55 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 11:30:59 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 11:30:59 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 11:30:59 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 11:30:59 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 12:18:24 GMT
ENV DATA_DIR=/catalogue-data
# Wed, 16 Sep 2026 12:18:24 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Wed, 16 Sep 2026 12:18:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Wed, 16 Sep 2026 12:18:24 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 12:18:24 GMT
ENV GN_VERSION=4.2.17
# Wed, 16 Sep 2026 12:18:24 GMT
ENV GN_DOWNLOAD_SHA256=0b065e07ef9b1ff6116c8b10e54f02b9705ea72a154cdcc5a13768667439705b
# Wed, 16 Sep 2026 12:22:00 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Wed, 16 Sep 2026 12:22:00 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Wed, 16 Sep 2026 12:22:01 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 12:22:01 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Wed, 16 Sep 2026 12:22:01 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 12:22:01 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4203fb8b2c14c1adc11a851d1fc29ab6315d968370915b4c1821d3df6e6db4`  
		Last Modified: Wed, 16 Sep 2026 06:47:54 GMT  
		Size: 18.8 MB (18765991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5432c8bd001dd491a6324e54fd5522e916943efc54ef4ac24974833d1e7bf1c2`  
		Last Modified: Wed, 16 Sep 2026 06:48:18 GMT  
		Size: 41.7 MB (41746860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7e2709812148dfec72a38cfccf78d3d6c50e2cdd7a5776c8876bc0e88bb347`  
		Last Modified: Wed, 16 Sep 2026 06:48:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aadb5401810f1ef959ec250596096fa89a90b80ed938ef7f020e906ada870368`  
		Last Modified: Wed, 16 Sep 2026 06:48:17 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f1f0d7ed6f6c1cae694025fa0e9c47caa37a042fd971390a63f56ce7930bd4`  
		Last Modified: Wed, 16 Sep 2026 11:31:16 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6e68f5e7f0d216f146da36f7c266c8e09a2cc9da214762016ef4cc7b70e251`  
		Last Modified: Wed, 16 Sep 2026 11:31:17 GMT  
		Size: 13.9 MB (13914403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f5266be7338559234542ace9612567f34f97e996315c4cb92cf32e4c0804b4`  
		Last Modified: Wed, 16 Sep 2026 11:31:16 GMT  
		Size: 256.9 KB (256939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a33a0540d08e6327f0055f46ef3e74c6786d47b621a7e985f62d37c7baf3f9`  
		Last Modified: Wed, 16 Sep 2026 12:22:45 GMT  
		Size: 269.9 KB (269880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f965283dd4de91e9d5f38af218f0041db7e3e746555102ff1a990fc998543b2c`  
		Last Modified: Wed, 16 Sep 2026 12:22:51 GMT  
		Size: 262.2 MB (262178850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271b7af751feba3d03b3a503a7133c03577862d108175457b7bb30a3b6738119`  
		Last Modified: Wed, 16 Sep 2026 12:22:45 GMT  
		Size: 1.5 KB (1503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb54adda5028e07ffd866eba92d06d4dfc2066d8011d532abe3f91bbc1177fab`  
		Last Modified: Wed, 16 Sep 2026 12:22:45 GMT  
		Size: 997.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2` - unknown; unknown

```console
$ docker pull geonetwork@sha256:76f962cc03352c0e324d7516a06997cc2bce326414066b4876194ebae93b854c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4192554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fee77bf5f8e4b3e9f432afe3530874fb31f6b8bcbe9bdd10f736ae6362ac20e7`

```dockerfile
```

-	Layers:
	-	`sha256:fc81ca3a8938c6ddfadc5ee93abf34ad29a002910787f04d8ba6dac9b3f616ae`  
		Last Modified: Wed, 16 Sep 2026 12:22:45 GMT  
		Size: 4.2 MB (4170715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca8ee039bdd7bcf94767adea7876af7b35590ae30eda69b1fccd943643c5f232`  
		Last Modified: Wed, 16 Sep 2026 12:22:45 GMT  
		Size: 21.8 KB (21839 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:4.2.17`

```console
$ docker pull geonetwork@sha256:4b5a8903496c46f469aa28238046b2abb77772f0a1d972e0ab183d7f66d66b4f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `geonetwork:4.2.17` - linux; amd64

```console
$ docker pull geonetwork@sha256:cc60c117c3aebbed6df49655c6671d65b2e656ece12aa43fd810589cb3cf1880
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.6 MB (365568118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a8e4099c4f2296716796b3c36803aa8975eceda297630fe1dd0ab787c19b6c`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:16:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:36 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:36 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 03:16:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 03:16:39 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:16:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:16:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 05:16:27 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 05:16:27 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 05:16:27 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 05:16:28 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:16:28 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:28 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:28 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 05:16:28 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 05:16:28 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 05:16:28 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 16 Sep 2026 05:16:34 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:16:35 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 05:16:35 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 05:16:35 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 05:16:35 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:15:14 GMT
ENV DATA_DIR=/catalogue-data
# Wed, 16 Sep 2026 06:15:14 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Wed, 16 Sep 2026 06:15:14 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Wed, 16 Sep 2026 06:15:14 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 06:15:14 GMT
ENV GN_VERSION=4.2.17
# Wed, 16 Sep 2026 06:15:14 GMT
ENV GN_DOWNLOAD_SHA256=0b065e07ef9b1ff6116c8b10e54f02b9705ea72a154cdcc5a13768667439705b
# Wed, 16 Sep 2026 06:18:15 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Wed, 16 Sep 2026 06:18:15 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Wed, 16 Sep 2026 06:18:15 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:18:15 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Wed, 16 Sep 2026 06:18:15 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:18:15 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24537c54a5c64e11100b07214dbf97bd00c8b1597a6eb42d4dd1efa2188aac13`  
		Last Modified: Wed, 16 Sep 2026 03:16:49 GMT  
		Size: 16.9 MB (16947564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8756af5ed478cf12bc5fffd29d861e9b04133b8b7b471cc3debbfeb00df2cab9`  
		Last Modified: Wed, 16 Sep 2026 03:16:50 GMT  
		Size: 42.3 MB (42332567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cdbb9d09c280cfe662dcf05a84984aeeb62f0a49e9939b04075c01a41dca5c2`  
		Last Modified: Wed, 16 Sep 2026 03:16:49 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70cdb9bbe5ef03e6595c5bc52969b5707d97006b5dbe2d9c12fa85010ca7d48b`  
		Last Modified: Wed, 16 Sep 2026 03:16:49 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f9f13a63b1e54431aa12d48d673a001bba28048b740b49a97e642176d31084`  
		Last Modified: Wed, 16 Sep 2026 05:16:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ee3cde6f746c44969fa8d0b2951e0828689b3edbad2a4e19daadd347d758099`  
		Last Modified: Wed, 16 Sep 2026 05:16:44 GMT  
		Size: 13.9 MB (13874798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d652dc221893a13c05d83530bc4b043cc2dd8d085db18ddda78a1637f2c9a1b7`  
		Last Modified: Wed, 16 Sep 2026 05:16:44 GMT  
		Size: 225.4 KB (225371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1db5c04f8998428b135665905bd66f47bd934f8c663dce98a5f33c217044c998`  
		Last Modified: Wed, 16 Sep 2026 06:18:36 GMT  
		Size: 239.6 KB (239639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5f688d8307ccb29636c9826e89ad019419b12c631a1cda88dc43c38bee223b`  
		Last Modified: Wed, 16 Sep 2026 06:18:41 GMT  
		Size: 262.2 MB (262178765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a593791d3829c4321574b0f85a31bf41fcd9632053be440c91459b0e8cd25408`  
		Last Modified: Wed, 16 Sep 2026 06:18:36 GMT  
		Size: 1.5 KB (1506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7061702d268c5debd94aa099ed7ca2d3a337e1e342e102649d2c00d2522d2aa9`  
		Last Modified: Wed, 16 Sep 2026 06:18:36 GMT  
		Size: 999.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2.17` - unknown; unknown

```console
$ docker pull geonetwork@sha256:f455c27edf06e33dfd1e0f8fbfa9bc4978c30f5446faf5f93ad2a51189fd9d49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4187763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58726b1f0ed6d9715c5bfe00fd82fc719341abd6e7348f80d2c6cdf55b215c5f`

```dockerfile
```

-	Layers:
	-	`sha256:c6d2fd5ed2ff2990a2ad59e57cf474812aa4b58a88279fc578d77b6659e45c22`  
		Last Modified: Wed, 16 Sep 2026 06:18:36 GMT  
		Size: 4.2 MB (4165958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a0ce68f284939d9fc788a1730a10698d7787605c7f82ac0ad405ff80686de95`  
		Last Modified: Wed, 16 Sep 2026 06:18:36 GMT  
		Size: 21.8 KB (21805 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.2.17` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:ed17845e135b6a6643f329db1a0feb675631a81024bcb0bf172f25446ee9d08e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.3 MB (359326216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30d189199c5cb42ae3ed3f862dd8bc0a8bc81d85a2c5c5efaeb109a430de8b76`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 17 Aug 2026 13:17:18 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:17:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:17:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:17:21 GMT
ADD file:2164aa16295913265eec9e47409ded367df44d23b10145b85e6b3cb27d1e239c in / 
# Mon, 17 Aug 2026 13:17:21 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:11:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 19:11:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:11:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:11:57 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:11:57 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 18 Aug 2026 19:12:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='5f0693c6c8ca0eb8df969bb1053b1926b1e7c57a3f90c6f9e8d493395e76a329';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Tue, 18 Aug 2026 19:12:06 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 19:12:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:12:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 21:15:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 21:15:25 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 21:15:25 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 21:15:25 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 21:15:25 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:15:25 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:15:25 GMT
ENV TOMCAT_MAJOR=9
# Tue, 18 Aug 2026 21:15:25 GMT
ENV TOMCAT_VERSION=9.0.121
# Tue, 18 Aug 2026 21:15:25 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Tue, 18 Aug 2026 21:15:25 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 21:15:30 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:15:31 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 21:15:31 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 21:15:31 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 21:15:31 GMT
CMD ["catalina.sh" "run"]
# Tue, 18 Aug 2026 22:11:24 GMT
ENV DATA_DIR=/catalogue-data
# Tue, 18 Aug 2026 22:11:24 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Tue, 18 Aug 2026 22:11:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Tue, 18 Aug 2026 22:11:24 GMT
ENV GN_FILE=geonetwork.war
# Tue, 18 Aug 2026 22:11:24 GMT
ENV GN_VERSION=4.2.17
# Tue, 18 Aug 2026 22:11:24 GMT
ENV GN_DOWNLOAD_SHA256=0b065e07ef9b1ff6116c8b10e54f02b9705ea72a154cdcc5a13768667439705b
# Tue, 18 Aug 2026 22:12:50 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Tue, 18 Aug 2026 22:12:50 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Tue, 18 Aug 2026 22:12:50 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 22:12:50 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Tue, 18 Aug 2026 22:12:50 GMT
CMD ["catalina.sh" "run"]
# Tue, 18 Aug 2026 22:12:50 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:66f3e1c55273a462a0982068d442942c00c78585376028748a23901efa512546`  
		Last Modified: Mon, 17 Aug 2026 14:27:34 GMT  
		Size: 26.9 MB (26872780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49bb478b81ddf36a210c14d12ae2a4257080adcff549e4092e29481fb3f98b11`  
		Last Modified: Tue, 18 Aug 2026 19:12:17 GMT  
		Size: 16.3 MB (16268610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab4a809dd35c850b6b20795268343190a37a5edac8481991cb84802e5539d44`  
		Last Modified: Tue, 18 Aug 2026 19:12:18 GMT  
		Size: 39.8 MB (39772470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f42d0392d612ccacb02b37573c72b335de1de2373363a1b21aae1d7fa260e36a`  
		Last Modified: Tue, 18 Aug 2026 19:12:16 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7507461ab2d44a2fc2ae644298c8b569c9b3fb585bfe3975be1ca6490bbc5456`  
		Last Modified: Tue, 18 Aug 2026 19:12:16 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad00d359d4744b9e0cefdd1fc63c971a053a31f746978dd3d09ddef1ee4d17c0`  
		Last Modified: Tue, 18 Aug 2026 21:15:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce78041d92d82f5d163e9e4866c89ae9c6390ca6a0aba659fd39b6c112c3bc4`  
		Last Modified: Tue, 18 Aug 2026 21:15:40 GMT  
		Size: 13.8 MB (13804232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df189663ce7ff8a28e802fa8ff0b635072201595a20f64067323d3cd49412533`  
		Last Modified: Tue, 18 Aug 2026 21:15:39 GMT  
		Size: 197.0 KB (197000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef716d8dced3094ae8c45e28ef3a97abbb2b69b078ed7621a13a78fa479a0bd1`  
		Last Modified: Tue, 18 Aug 2026 22:13:13 GMT  
		Size: 227.0 KB (226978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c341cf42c7fed26f0778626a760c2d7a6f0572ec0ec8e45d8a5a197b91f270d9`  
		Last Modified: Tue, 18 Aug 2026 22:13:18 GMT  
		Size: 262.2 MB (262178850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3937a234a9fac649bc349c33ae7c19918933ca8998533db3840ca43aea6ba9e`  
		Last Modified: Tue, 18 Aug 2026 22:13:13 GMT  
		Size: 1.5 KB (1503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c67b625072bb9e37fbaeeaee282ea30581a54cf05d2eb4dfba3fc3d921ab8fbf`  
		Last Modified: Tue, 18 Aug 2026 22:13:13 GMT  
		Size: 998.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2.17` - unknown; unknown

```console
$ docker pull geonetwork@sha256:ae4b9b4ac77eb97d31e4eacc42a0596e2fc24882b3b2c24eeaef17691fc4072a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4193802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe2bbdd582263bf157b8bf1f662a6c4f929c9629f0d15e99489c3fb632b9d8a7`

```dockerfile
```

-	Layers:
	-	`sha256:46c63d21944e23c9fea46d8411b2c91d47c5f3d68ae796a30544aece77d57c36`  
		Last Modified: Tue, 18 Aug 2026 22:13:13 GMT  
		Size: 4.2 MB (4171921 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de87772c23136eb5c961d7ad73664ee6e087d56606f938b3ee677a164f9e4a36`  
		Last Modified: Tue, 18 Aug 2026 22:13:13 GMT  
		Size: 21.9 KB (21881 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.2.17` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:2fd64dee29ed1d6d4b55a400bf94805fe0977cbadd0b69ecc1cf3978a28fe523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.7 MB (363733787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3245658c477d8283547d1cd6a13a087c1709bf15c0646dd7e5475252065a0ca8`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:16:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:14 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 03:16:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 03:16:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:16:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:16:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 05:16:12 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 05:16:12 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 05:16:12 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 05:16:12 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:16:12 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:12 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:12 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 05:16:12 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 05:16:12 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 05:16:12 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 16 Sep 2026 05:16:20 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:16:21 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 05:16:21 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 05:16:21 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 05:16:21 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:14:56 GMT
ENV DATA_DIR=/catalogue-data
# Wed, 16 Sep 2026 06:14:56 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Wed, 16 Sep 2026 06:14:56 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Wed, 16 Sep 2026 06:14:56 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 06:14:56 GMT
ENV GN_VERSION=4.2.17
# Wed, 16 Sep 2026 06:14:56 GMT
ENV GN_DOWNLOAD_SHA256=0b065e07ef9b1ff6116c8b10e54f02b9705ea72a154cdcc5a13768667439705b
# Wed, 16 Sep 2026 06:18:05 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Wed, 16 Sep 2026 06:18:05 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Wed, 16 Sep 2026 06:18:05 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:18:05 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Wed, 16 Sep 2026 06:18:05 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:18:05 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24def95f79f23be8bf3a4282868aef2c25b9c50f1acc6364b80e61e907ab8111`  
		Last Modified: Wed, 16 Sep 2026 03:16:28 GMT  
		Size: 17.0 MB (16957431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4779f97f5daac1fa47446ce5cb6c7a8181ae8238f97eda2b2106079a720d4af`  
		Last Modified: Wed, 16 Sep 2026 03:16:28 GMT  
		Size: 41.3 MB (41299409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b58f9ff619200e34a86a6eb3e23fc35ea8de0aa4ceb7c314d4d83ebd2f3f75`  
		Last Modified: Wed, 16 Sep 2026 03:16:27 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3bd95fea9de5f5ff2a207fa62d7fa5f73b8a2c6c28e267e2ef29a4a6997c8c`  
		Last Modified: Wed, 16 Sep 2026 03:16:27 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf4abd27cfbed4f382301a387943794500676f18a1e3e931b1169bb4053db2e`  
		Last Modified: Wed, 16 Sep 2026 05:16:29 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0210399a1b2c787da10b88d9a9ee08eedef68273093ac022b4f5ff61ebe97112`  
		Last Modified: Wed, 16 Sep 2026 05:16:30 GMT  
		Size: 13.9 MB (13886749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a891670385a780aeefc3fc13ba4c548d4e01808418370081cdbda50f6fdb0fc1`  
		Last Modified: Wed, 16 Sep 2026 05:16:29 GMT  
		Size: 225.8 KB (225768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc671cdfd62f038c1312f56b9f7f48178583b60b2678c6fcccfcb1e2c0d6ea7e`  
		Last Modified: Wed, 16 Sep 2026 06:18:27 GMT  
		Size: 238.7 KB (238739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48c67ed4d1319cb39f9de676824d0f0592bec65154d1321acbf3e30f4f2bc1d`  
		Last Modified: Wed, 16 Sep 2026 06:18:32 GMT  
		Size: 262.2 MB (262178821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3b4584ec7a9cace6b6f9afa8e24498bf7678b6b299cbba39d7d56e722ce681`  
		Last Modified: Wed, 16 Sep 2026 06:18:27 GMT  
		Size: 1.5 KB (1501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a2d2fefc0b6aa8ff32aff32119eb65697daee0ea411c0c6796f0863c86aafe`  
		Last Modified: Wed, 16 Sep 2026 06:18:27 GMT  
		Size: 998.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2.17` - unknown; unknown

```console
$ docker pull geonetwork@sha256:b36cfa8019e8188b3c6f00222ab957de0f24c3164de25ccca3bdfbeca2c525ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4188997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17c67265447c39d0d85e5ca5b374e61f4ae4a72658b6ff1c2b16dfa2fa061357`

```dockerfile
```

-	Layers:
	-	`sha256:2487f380543ee469ebb361923ac435fab75536fbe02d4af7b5ca3932b2a0ebce`  
		Last Modified: Wed, 16 Sep 2026 06:18:27 GMT  
		Size: 4.2 MB (4167098 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9d00e185adfd3f92b823a5efc3eb3032b4ec55177d62c18394e6c3186441096`  
		Last Modified: Wed, 16 Sep 2026 06:18:27 GMT  
		Size: 21.9 KB (21899 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.2.17` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:8399b4b9864be46830924dc81c3f2e7601c84784b416d220944a1f0776ab9e24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.5 MB (371515176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c11977e0856d8136180c3f4ed6617a04c02e4b129d3f2cf20c38cc89996c1f72`
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
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 06:47:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 06:47:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 06:47:17 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 06:47:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 16 Sep 2026 06:47:57 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 06:47:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:47:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 11:30:43 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 11:30:43 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 11:30:43 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 11:30:43 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 11:30:43 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 11:30:43 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 11:30:43 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 11:30:43 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 11:30:43 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 11:30:45 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 16 Sep 2026 11:30:55 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 11:30:59 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 11:30:59 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 11:30:59 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 11:30:59 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 12:18:24 GMT
ENV DATA_DIR=/catalogue-data
# Wed, 16 Sep 2026 12:18:24 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Wed, 16 Sep 2026 12:18:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Wed, 16 Sep 2026 12:18:24 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 12:18:24 GMT
ENV GN_VERSION=4.2.17
# Wed, 16 Sep 2026 12:18:24 GMT
ENV GN_DOWNLOAD_SHA256=0b065e07ef9b1ff6116c8b10e54f02b9705ea72a154cdcc5a13768667439705b
# Wed, 16 Sep 2026 12:22:00 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Wed, 16 Sep 2026 12:22:00 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Wed, 16 Sep 2026 12:22:01 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 12:22:01 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Wed, 16 Sep 2026 12:22:01 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 12:22:01 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4203fb8b2c14c1adc11a851d1fc29ab6315d968370915b4c1821d3df6e6db4`  
		Last Modified: Wed, 16 Sep 2026 06:47:54 GMT  
		Size: 18.8 MB (18765991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5432c8bd001dd491a6324e54fd5522e916943efc54ef4ac24974833d1e7bf1c2`  
		Last Modified: Wed, 16 Sep 2026 06:48:18 GMT  
		Size: 41.7 MB (41746860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7e2709812148dfec72a38cfccf78d3d6c50e2cdd7a5776c8876bc0e88bb347`  
		Last Modified: Wed, 16 Sep 2026 06:48:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aadb5401810f1ef959ec250596096fa89a90b80ed938ef7f020e906ada870368`  
		Last Modified: Wed, 16 Sep 2026 06:48:17 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f1f0d7ed6f6c1cae694025fa0e9c47caa37a042fd971390a63f56ce7930bd4`  
		Last Modified: Wed, 16 Sep 2026 11:31:16 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6e68f5e7f0d216f146da36f7c266c8e09a2cc9da214762016ef4cc7b70e251`  
		Last Modified: Wed, 16 Sep 2026 11:31:17 GMT  
		Size: 13.9 MB (13914403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f5266be7338559234542ace9612567f34f97e996315c4cb92cf32e4c0804b4`  
		Last Modified: Wed, 16 Sep 2026 11:31:16 GMT  
		Size: 256.9 KB (256939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a33a0540d08e6327f0055f46ef3e74c6786d47b621a7e985f62d37c7baf3f9`  
		Last Modified: Wed, 16 Sep 2026 12:22:45 GMT  
		Size: 269.9 KB (269880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f965283dd4de91e9d5f38af218f0041db7e3e746555102ff1a990fc998543b2c`  
		Last Modified: Wed, 16 Sep 2026 12:22:51 GMT  
		Size: 262.2 MB (262178850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271b7af751feba3d03b3a503a7133c03577862d108175457b7bb30a3b6738119`  
		Last Modified: Wed, 16 Sep 2026 12:22:45 GMT  
		Size: 1.5 KB (1503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb54adda5028e07ffd866eba92d06d4dfc2066d8011d532abe3f91bbc1177fab`  
		Last Modified: Wed, 16 Sep 2026 12:22:45 GMT  
		Size: 997.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2.17` - unknown; unknown

```console
$ docker pull geonetwork@sha256:76f962cc03352c0e324d7516a06997cc2bce326414066b4876194ebae93b854c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4192554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fee77bf5f8e4b3e9f432afe3530874fb31f6b8bcbe9bdd10f736ae6362ac20e7`

```dockerfile
```

-	Layers:
	-	`sha256:fc81ca3a8938c6ddfadc5ee93abf34ad29a002910787f04d8ba6dac9b3f616ae`  
		Last Modified: Wed, 16 Sep 2026 12:22:45 GMT  
		Size: 4.2 MB (4170715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca8ee039bdd7bcf94767adea7876af7b35590ae30eda69b1fccd943643c5f232`  
		Last Modified: Wed, 16 Sep 2026 12:22:45 GMT  
		Size: 21.8 KB (21839 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:4.4`

```console
$ docker pull geonetwork@sha256:0d24b95f7798935ec590cbe13f0c8ebee635cadfc7dfb92b16b7b50dfad4b7a0
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

### `geonetwork:4.4` - linux; amd64

```console
$ docker pull geonetwork@sha256:8aa00b3d04ae3ce97247393e3bcd833e4db81d92296975212451694dc93a15ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.5 MB (418512936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2cc15d5016cb04b818865fd6d4c49a082d4e6b811906938dcc5ecff532ea765`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:17:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:17:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:17:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:17:10 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:17:10 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 16 Sep 2026 03:17:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 03:17:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:17:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:17:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 05:16:27 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 05:16:27 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 05:16:27 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 05:16:27 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:16:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:27 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 05:16:27 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 05:16:27 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 05:16:28 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 16 Sep 2026 05:16:35 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:16:36 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 05:16:36 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 05:16:36 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 05:16:36 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:47:43 GMT
ENV DATA_DIR=/catalogue-data
# Wed, 16 Sep 2026 06:47:43 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Wed, 16 Sep 2026 06:47:43 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Wed, 16 Sep 2026 06:47:43 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 06:47:43 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Wed, 16 Sep 2026 06:47:43 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 06:47:43 GMT
ENV GN_VERSION=4.4.12
# Wed, 16 Sep 2026 06:47:43 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Wed, 16 Sep 2026 06:48:09 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Wed, 16 Sep 2026 06:48:09 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Wed, 16 Sep 2026 06:48:09 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Wed, 16 Sep 2026 06:48:09 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:48:09 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Wed, 16 Sep 2026 06:48:09 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:48:09 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d570e6c5bd62d1a95ada3cc414c707770a7616ef84271dee51f48618027493f`  
		Last Modified: Wed, 16 Sep 2026 03:17:25 GMT  
		Size: 16.9 MB (16947534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d3f07620448124f813941812270e17df68ba476bb7097e450dbb31f145aa0e6`  
		Last Modified: Wed, 16 Sep 2026 03:17:26 GMT  
		Size: 47.3 MB (47336595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091ea69664cdd3cd78f14b808b78492aed4917d6411257e368388281264e8172`  
		Last Modified: Wed, 16 Sep 2026 03:17:25 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999d6a6121d5528901bc4e0b4c49ad7bd1bcbad74fb55fc7272f552e7874c090`  
		Last Modified: Wed, 16 Sep 2026 03:17:25 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6dfc28e91276e4dd9ccffbe876ccbb47e01bd9db89b1f4d12d995c6e6190b58`  
		Last Modified: Wed, 16 Sep 2026 05:16:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5a86756f0d5bdc75ce50ded5bb63a2c775921c73b9b03f725152456a87a85a6`  
		Last Modified: Wed, 16 Sep 2026 05:16:44 GMT  
		Size: 13.9 MB (13875514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc0b37f2f0140384644b46bcc9721b58679d8937439714e5fd4ad9e1941718f`  
		Last Modified: Wed, 16 Sep 2026 05:16:44 GMT  
		Size: 225.3 KB (225284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5138c0bc0b5f9a0a0a62258721a5f4fe97a681c36c245ec9b219fce69abba1be`  
		Last Modified: Wed, 16 Sep 2026 06:48:33 GMT  
		Size: 239.7 KB (239696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac133cdff061147e0fc8c501baa5043f76ccc1b235ddefe095cb206b511d97f8`  
		Last Modified: Wed, 16 Sep 2026 06:48:39 GMT  
		Size: 310.1 MB (310117337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9955355575e27cc34317065c38015b1baf4238d5532a34edb814151e210ad884`  
		Last Modified: Wed, 16 Sep 2026 06:48:33 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d51b9951859c41dff67cf1ad2e2bb5fb5e41e4bfb14348ff8d8ca82c5ac747f1`  
		Last Modified: Wed, 16 Sep 2026 06:48:34 GMT  
		Size: 3.0 KB (3013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb5030a23e7d419134029ea164f201d0e3bae9d023ae5d131c5df4aeb0b9fdc`  
		Last Modified: Wed, 16 Sep 2026 06:48:35 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:f28a0eecbf7576dfd07f4627f7dec52abb9cba57946b3c9d27e8b1f15822dc83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4204273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79139125fe4100038a93ff49808e3b354ecba99e7a5696d7a5fe6811942ad27`

```dockerfile
```

-	Layers:
	-	`sha256:60b699c6739775bc69c400ef509dfa76955ad5130a7cbe65b1d0415e54da2840`  
		Last Modified: Wed, 16 Sep 2026 06:48:33 GMT  
		Size: 4.2 MB (4178719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a257b6591a27c53782fb2b7950a54bfa2de09075c19befbc34290001150d7daa`  
		Last Modified: Wed, 16 Sep 2026 06:48:33 GMT  
		Size: 25.6 KB (25554 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.4` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:0216707ad06df831b21361546b689c98415ab0b035791e263971fc8618c22261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.0 MB (412975252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d4742dea7626d462d10daf0e240d8159c55a7859671e7e6e0bdf3b8f4f17740`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:45:45 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:45:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:45:45 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:45:48 GMT
ADD file:683b4c146da2addbd0ae70d2240b8e3a57dd2f7582c952d416231fdd6496720f in / 
# Fri, 11 Sep 2026 11:45:48 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:12:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:12:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:12:09 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:12:09 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 16 Sep 2026 03:12:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 03:12:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:12:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:12:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 05:16:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 05:16:05 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 05:16:05 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 05:16:05 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:16:05 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:05 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:05 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 05:16:05 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 05:16:05 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 05:16:05 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 16 Sep 2026 05:16:11 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:16:11 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 05:16:11 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 05:16:11 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 05:16:11 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:11:39 GMT
ENV DATA_DIR=/catalogue-data
# Wed, 16 Sep 2026 06:11:39 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Wed, 16 Sep 2026 06:11:39 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Wed, 16 Sep 2026 06:11:39 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 06:11:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Wed, 16 Sep 2026 06:11:39 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 06:11:39 GMT
ENV GN_VERSION=4.4.12
# Wed, 16 Sep 2026 06:11:39 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Wed, 16 Sep 2026 06:13:07 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Wed, 16 Sep 2026 06:13:07 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Wed, 16 Sep 2026 06:13:07 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Wed, 16 Sep 2026 06:13:07 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:13:07 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Wed, 16 Sep 2026 06:13:07 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:13:07 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:f98fce276933dc8d40e338c8a5447d14e10d972c731f074e9fcd9f9bb629aa50`  
		Last Modified: Fri, 11 Sep 2026 13:38:53 GMT  
		Size: 26.9 MB (26894925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655a150349094c5ab6d5d0d764d257cf6b1ebfaaebae8397a725ce6dec1c7533`  
		Last Modified: Wed, 16 Sep 2026 03:12:25 GMT  
		Size: 16.3 MB (16275603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c466ae923221d04be266029bfeb0ecf0cd8c2d7a56550a77b8adc2111216a1`  
		Last Modified: Wed, 16 Sep 2026 03:12:26 GMT  
		Size: 45.4 MB (45443993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d273c5ebd927c5f95504bc830f73ce9913245a862b918e5acbc6dad0311ec2cb`  
		Last Modified: Wed, 16 Sep 2026 03:12:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9152abd9cefbf5b6a0c52cd9d4a380c0750f74dbf81da9bd9454d5864152f6d2`  
		Last Modified: Wed, 16 Sep 2026 03:12:25 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49082958d2a658fd11313509b66587929523258e4dbd7e4a4e9d23467427127`  
		Last Modified: Wed, 16 Sep 2026 05:16:20 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0af8865971f6a6ce85b3b8dfd4666f91225b5ff5930ef838b2e8a76b48a5309`  
		Last Modified: Wed, 16 Sep 2026 05:16:21 GMT  
		Size: 13.8 MB (13812714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d67905668c658f65c8341c99ba6fb30761e7c55c961c5865c637206ff63aee2d`  
		Last Modified: Wed, 16 Sep 2026 05:16:20 GMT  
		Size: 196.9 KB (196926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:157d244e58e3673d056462e66effb9a7d6b3f67ac9e5d1b9b0b2510045c7bd26`  
		Last Modified: Wed, 16 Sep 2026 06:13:32 GMT  
		Size: 226.9 KB (226875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8685754f4318ca712257ab82c07e93a6d944e354bb5e9354088270e8cd146b2c`  
		Last Modified: Wed, 16 Sep 2026 06:13:38 GMT  
		Size: 310.1 MB (310117362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e586c959979d2dcf5cb4ccac894b3a609b09fa21f0a1aeb17b59a97601fa98`  
		Last Modified: Wed, 16 Sep 2026 06:13:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44af8b64a4de8abe6babe4c6fb415c297b86f2982b9f9f798982830654676d46`  
		Last Modified: Wed, 16 Sep 2026 06:13:32 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aee0d364c6a1ec889933c58413e5f40c051586dc89be81eef75a4ffdfe24731`  
		Last Modified: Wed, 16 Sep 2026 06:13:33 GMT  
		Size: 698.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:15f18301fdb7b2008dc6ffe0133ffd7109c21986f9f78cd6885031b92836e670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4207968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ff9ab912003bdab781da0dd0bb1546e8371674f7d36bbdb01fbc011df7850db`

```dockerfile
```

-	Layers:
	-	`sha256:d7a1262292b3fd657a68c54f898f416127aea2174ec0876e3bc8f4c5f4424d55`  
		Last Modified: Wed, 16 Sep 2026 06:13:32 GMT  
		Size: 4.2 MB (4182322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd87d6200afe64c89dcfffbcc154b1e945219beca1031a962230a8ff7da32765`  
		Last Modified: Wed, 16 Sep 2026 06:13:32 GMT  
		Size: 25.6 KB (25646 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.4` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:c83964939098785461fbacb3c2630f2c8612ea6a13bd998ff355666b0eec7be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **416.0 MB (416014714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d329a2b112a01b9288ec6512cb18530e93fcb6b43a8c003ac40adbfea27bad`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:16:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:48 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:48 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 16 Sep 2026 03:16:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 03:16:52 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:16:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:16:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 05:16:09 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 05:16:09 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 05:16:09 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 05:16:09 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:16:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:09 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:09 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 05:16:09 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 05:16:09 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 05:16:10 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 16 Sep 2026 05:16:18 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:16:18 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 05:16:18 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 05:16:18 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 05:16:18 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:15:07 GMT
ENV DATA_DIR=/catalogue-data
# Wed, 16 Sep 2026 06:15:07 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Wed, 16 Sep 2026 06:15:07 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Wed, 16 Sep 2026 06:15:07 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 06:15:07 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Wed, 16 Sep 2026 06:15:07 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 06:15:07 GMT
ENV GN_VERSION=4.4.12
# Wed, 16 Sep 2026 06:15:07 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Wed, 16 Sep 2026 06:15:33 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Wed, 16 Sep 2026 06:15:33 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Wed, 16 Sep 2026 06:15:33 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Wed, 16 Sep 2026 06:15:33 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:15:33 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Wed, 16 Sep 2026 06:15:33 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:15:33 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7cde1edee6e54f132e57d6c18fc40e37a3a93f2934e9872f6460883c7c4505`  
		Last Modified: Wed, 16 Sep 2026 03:17:04 GMT  
		Size: 17.0 MB (16957421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5284141e3131dc5ba418157327a4a273cc78e5afb48f00e0551a4930e91d8dd1`  
		Last Modified: Wed, 16 Sep 2026 03:17:05 GMT  
		Size: 45.6 MB (45638921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70cc2531798d0759d9ae8f6148d9909f125c9ffd7023b58401dd9364d65a07df`  
		Last Modified: Wed, 16 Sep 2026 03:17:03 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9041f384a6fe8ddfed5f193845a975cbf8acce9684e03cab144e7d5af371337c`  
		Last Modified: Wed, 16 Sep 2026 03:17:03 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975a51c36e657bff19f0c70a78813ed53ca00a42f98c02d5829c3df0703ae7c0`  
		Last Modified: Wed, 16 Sep 2026 05:16:26 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e634b3a88d8c4cb9395c9c007c88a5505271099deac58824b3bf4f92de9a08`  
		Last Modified: Wed, 16 Sep 2026 05:16:27 GMT  
		Size: 13.9 MB (13888096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabe9e669cefc9ff097800941c333879349dd9018f13bd6ce71bd4f42c915165`  
		Last Modified: Wed, 16 Sep 2026 05:16:26 GMT  
		Size: 225.7 KB (225739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8aebedcbd5d0bf0899eea1b5bc53ad8f7c8ed67eb9e8d19d524753b8f085fda`  
		Last Modified: Wed, 16 Sep 2026 06:15:57 GMT  
		Size: 238.8 KB (238768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a457e99354a1642e1ad558074df3fc88c54048bf42f276fb15065992e0c8ebbb`  
		Last Modified: Wed, 16 Sep 2026 06:16:04 GMT  
		Size: 310.1 MB (310117333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eea2bcd03069992a718437ecfc457b3d5dc58eec7105a696ff4ccc6e67a4973`  
		Last Modified: Wed, 16 Sep 2026 06:15:57 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e03b047d41d868696f13abf9bae90943053d09a057fb7ef9f6df82b2013ca6`  
		Last Modified: Wed, 16 Sep 2026 06:15:57 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26184d78aed2cf3e3f421873a31cf711277918669d6bccca872c46bec212af3a`  
		Last Modified: Wed, 16 Sep 2026 06:15:58 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:b1b00984c66132c4aad747ecc3bb68998065e7310413a8a31f071413f1234189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4205482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a152a0191a830799e0f8da2b58014268087ceafde6d7b021fa3c4a010ef4137a`

```dockerfile
```

-	Layers:
	-	`sha256:8a7cc9e11a95cda5322f5b5c4bae05cabc98f82febaaabbcf802f1d927806dff`  
		Last Modified: Wed, 16 Sep 2026 06:15:58 GMT  
		Size: 4.2 MB (4179809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90968ab683f4e442b0e474b74e3fb7cd491d1ccf8f47ebc4c047f3b389e5a089`  
		Last Modified: Wed, 16 Sep 2026 06:15:57 GMT  
		Size: 25.7 KB (25673 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.4` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:5b13b818fd7959f48c8804b35b323020e8b9cc96e023172fc1ffd6213e283c78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.5 MB (420508120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb08dec6482f64af0bc5f224641123a79389b77963019572e73b1cfe73b4f10e`
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
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 06:47:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 06:47:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 06:47:17 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 16 Sep 2026 06:49:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 06:49:28 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 06:49:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:49:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 11:29:00 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 11:29:00 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 11:29:00 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 11:29:01 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 11:29:01 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 11:29:01 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 11:29:01 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 11:29:01 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 11:29:01 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 11:30:12 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 16 Sep 2026 11:30:19 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 11:30:21 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 11:30:21 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 11:30:21 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 11:30:21 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 12:19:36 GMT
ENV DATA_DIR=/catalogue-data
# Wed, 16 Sep 2026 12:19:36 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Wed, 16 Sep 2026 12:19:36 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Wed, 16 Sep 2026 12:19:36 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 12:19:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Wed, 16 Sep 2026 12:19:36 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 12:19:36 GMT
ENV GN_VERSION=4.4.12
# Wed, 16 Sep 2026 12:19:36 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Wed, 16 Sep 2026 12:20:11 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Wed, 16 Sep 2026 12:20:12 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Wed, 16 Sep 2026 12:20:12 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Wed, 16 Sep 2026 12:20:12 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 12:20:12 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Wed, 16 Sep 2026 12:20:12 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 12:20:12 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4203fb8b2c14c1adc11a851d1fc29ab6315d968370915b4c1821d3df6e6db4`  
		Last Modified: Wed, 16 Sep 2026 06:47:54 GMT  
		Size: 18.8 MB (18765991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88609147b4c6303e7952e639f44158314f276922bdd55df33f7e4ab8834cbae1`  
		Last Modified: Wed, 16 Sep 2026 06:49:54 GMT  
		Size: 42.8 MB (42798847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:751d064a31f1a6b1a061566abe40fc1165a05a1cee3529371973e5616d3de3fa`  
		Last Modified: Wed, 16 Sep 2026 06:49:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbee2a9ede02a6d5b7318fc1f46c28723f25189176472c62051ac4a1447597df`  
		Last Modified: Wed, 16 Sep 2026 06:49:52 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95970deaa78f78838067acc067496b29e84fbb6fac9458fc26d0b8cb9e33cc43`  
		Last Modified: Wed, 16 Sep 2026 11:29:26 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bcbda25b125c98525049d7ca6b21a83658698387e420e26b99450fe7a08258f`  
		Last Modified: Wed, 16 Sep 2026 11:30:38 GMT  
		Size: 13.9 MB (13915319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c5fcc50188c8eb81799c50e89dbb95a6f78a7aa4b199e48058ea5d1553e0bf7`  
		Last Modified: Wed, 16 Sep 2026 11:30:37 GMT  
		Size: 257.0 KB (256956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:539ccb0ec213d5bcf119a7682d8e81aa90b6c80ba3d722941a7f206e4268c4fe`  
		Last Modified: Wed, 16 Sep 2026 12:20:56 GMT  
		Size: 269.9 KB (269931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b0662bff3c648af76dff7a7b745e0a29461736498e23fa128d984327a3dfdb`  
		Last Modified: Wed, 16 Sep 2026 12:21:03 GMT  
		Size: 310.1 MB (310117266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d755ab1d5c869f342e9a17339925e33fe70f7d0d4da39a8b1c46bc23165e9f61`  
		Last Modified: Wed, 16 Sep 2026 12:20:56 GMT  
		Size: 317.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5191ce63beeb7423a96ca76295cca882888f6b07154402588e2afb84e8bf323`  
		Last Modified: Wed, 16 Sep 2026 12:20:56 GMT  
		Size: 3.0 KB (3010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6575f9735f6d940d8e2ebc9c3f48bc2448d0d96e67806202d1cbc8fc179df219`  
		Last Modified: Wed, 16 Sep 2026 12:20:58 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:fb680b95c513f9be5946d44d3daecf25c15f83b6e3865f0fcb5606ccd804eddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4208402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecdb5f7c940d84e01d37ff3dcb4ccb9f873b7a5967199d2ca4afe62b74e773c5`

```dockerfile
```

-	Layers:
	-	`sha256:8aee17620ec300f469622a06a4aa1d391b3fdf39feb5cb1629a995805ba093b9`  
		Last Modified: Wed, 16 Sep 2026 12:20:56 GMT  
		Size: 4.2 MB (4182802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7309d8c7135e9af2aa51555e72dc32856fd8448e8e9719da67ce87e5c25d5ef`  
		Last Modified: Wed, 16 Sep 2026 12:20:56 GMT  
		Size: 25.6 KB (25600 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.4` - linux; s390x

```console
$ docker pull geonetwork@sha256:16cf0d47f54b7a818590c25c4ed9441afa6aed3457fbe9e3ac0a046ccc58d0e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.3 MB (413325764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4acf600cb26f2bbc77cab8782e8d8f59e1e21d6b2c78039f48e1d35e3246b64e`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:08 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:08 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:08 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:09 GMT
ADD file:62feb922e0e5d063c128e1d59ecbc5c2274c804b45055ac83d490a0a0c953700 in / 
# Fri, 11 Sep 2026 11:53:09 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 23:30:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 23:30:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 23:30:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 23:30:52 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 17 Sep 2026 23:30:52 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Thu, 17 Sep 2026 23:30:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 17 Sep 2026 23:30:54 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 23:30:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 23:30:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 18 Sep 2026 03:14:27 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 18 Sep 2026 03:14:27 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 03:14:27 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 18 Sep 2026 03:14:27 GMT
WORKDIR /usr/local/tomcat
# Fri, 18 Sep 2026 03:14:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 18 Sep 2026 03:14:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 18 Sep 2026 03:14:27 GMT
ENV TOMCAT_MAJOR=9
# Fri, 18 Sep 2026 03:14:27 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 18 Sep 2026 03:14:27 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 18 Sep 2026 03:15:37 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 18 Sep 2026 03:15:40 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 18 Sep 2026 03:15:40 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 18 Sep 2026 03:15:40 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 18 Sep 2026 03:15:40 GMT
ENTRYPOINT []
# Fri, 18 Sep 2026 03:15:40 GMT
CMD ["catalina.sh" "run"]
# Fri, 18 Sep 2026 04:14:42 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 18 Sep 2026 04:14:42 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Fri, 18 Sep 2026 04:14:42 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Fri, 18 Sep 2026 04:14:42 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Fri, 18 Sep 2026 04:14:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Fri, 18 Sep 2026 04:14:42 GMT
ENV GN_FILE=geonetwork.war
# Fri, 18 Sep 2026 04:14:42 GMT
ENV GN_VERSION=4.4.12
# Fri, 18 Sep 2026 04:14:42 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Fri, 18 Sep 2026 04:15:05 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 18 Sep 2026 04:15:05 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Fri, 18 Sep 2026 04:15:05 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 18 Sep 2026 04:15:05 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 18 Sep 2026 04:15:05 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 18 Sep 2026 04:15:05 GMT
CMD ["catalina.sh" "run"]
# Fri, 18 Sep 2026 04:15:05 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:2d1aac92a29a4eacd140d431dc526f6da099043772d537d221717429ee877b2a`  
		Last Modified: Fri, 11 Sep 2026 13:39:18 GMT  
		Size: 29.9 MB (29945392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57eb44040be758c355a5941831542dd2b2bf89b15aa9bdab656f539a0c5ba7cf`  
		Last Modified: Thu, 17 Sep 2026 23:31:09 GMT  
		Size: 17.5 MB (17537482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d0a65614947504290c520ab922a6a1e0fae7eca97f9cda2f332bfe8388bba11`  
		Last Modified: Thu, 17 Sep 2026 23:31:10 GMT  
		Size: 41.3 MB (41346810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a7b7bdedf77992c4e68e43c4ce325e2fc5520ef94e06c56b2dcc9c5ca376d6`  
		Last Modified: Thu, 17 Sep 2026 23:31:08 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e9ddcdc9d08ccde1caea6e807d7b83cb667f1affa28f6b03331c398970979e`  
		Last Modified: Thu, 17 Sep 2026 23:31:08 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c8c8f5e5d79aa8ac8ccdbd3e1c8f82f133ff1011653c9a4e0442e634477743d`  
		Last Modified: Fri, 18 Sep 2026 03:14:41 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da7e1f3c723a89b491d461ef867dab5a87bca66409d1c348c9203f73f85def95`  
		Last Modified: Fri, 18 Sep 2026 03:15:51 GMT  
		Size: 13.9 MB (13887719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47bd803b251f43c3377bb25c54a147869d466562db2a91d37919aa599458f32`  
		Last Modified: Fri, 18 Sep 2026 03:15:51 GMT  
		Size: 233.3 KB (233346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f55781ba4bd53de3ede76fb54127e7403ec2435f8a78a34ea0a07988b7dda0e`  
		Last Modified: Fri, 18 Sep 2026 04:15:36 GMT  
		Size: 250.8 KB (250774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4485778c1f7df9e61aec7d443d1a19e64e010c7aef91a62ee775ea0b2e3ff7`  
		Last Modified: Fri, 18 Sep 2026 04:15:41 GMT  
		Size: 310.1 MB (310117390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd84bb1b1178237de73e22586759ef236f8be4431e2b6d723a19b42b1eed009c`  
		Last Modified: Fri, 18 Sep 2026 04:15:36 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9e63f385ffe2032a934a3f6e560f8ceaedd8f6f996a2252f69bcd01ec7bd9a`  
		Last Modified: Fri, 18 Sep 2026 04:15:36 GMT  
		Size: 3.0 KB (3010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980c5b490ff0ea1612337ed0f241996948688da2bde15b3b1a92ca04695c9944`  
		Last Modified: Fri, 18 Sep 2026 04:15:37 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:d59017e37f438fac72a744303552f9e2e6927598992639d43a439277a7ac4c74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4206477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3752d189b5415403ae842577d5e260408ae8738e433d63c5fa1f27676f3cad`

```dockerfile
```

-	Layers:
	-	`sha256:0939ce2f6736d79aa1442c7163f4ef09468da37f230657c2cc0b69718867a450`  
		Last Modified: Fri, 18 Sep 2026 04:15:36 GMT  
		Size: 4.2 MB (4180924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a309bdc5ee46c2f4541ec850bc84d4ceb4ce0c8037eae3303d791ba07112da9b`  
		Last Modified: Fri, 18 Sep 2026 04:15:36 GMT  
		Size: 25.6 KB (25553 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:4.4.12`

```console
$ docker pull geonetwork@sha256:0d24b95f7798935ec590cbe13f0c8ebee635cadfc7dfb92b16b7b50dfad4b7a0
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

### `geonetwork:4.4.12` - linux; amd64

```console
$ docker pull geonetwork@sha256:8aa00b3d04ae3ce97247393e3bcd833e4db81d92296975212451694dc93a15ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.5 MB (418512936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2cc15d5016cb04b818865fd6d4c49a082d4e6b811906938dcc5ecff532ea765`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:17:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:17:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:17:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:17:10 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:17:10 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 16 Sep 2026 03:17:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 03:17:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:17:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:17:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 05:16:27 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 05:16:27 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 05:16:27 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 05:16:27 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:16:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:27 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 05:16:27 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 05:16:27 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 05:16:28 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 16 Sep 2026 05:16:35 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:16:36 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 05:16:36 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 05:16:36 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 05:16:36 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:47:43 GMT
ENV DATA_DIR=/catalogue-data
# Wed, 16 Sep 2026 06:47:43 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Wed, 16 Sep 2026 06:47:43 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Wed, 16 Sep 2026 06:47:43 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 06:47:43 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Wed, 16 Sep 2026 06:47:43 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 06:47:43 GMT
ENV GN_VERSION=4.4.12
# Wed, 16 Sep 2026 06:47:43 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Wed, 16 Sep 2026 06:48:09 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Wed, 16 Sep 2026 06:48:09 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Wed, 16 Sep 2026 06:48:09 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Wed, 16 Sep 2026 06:48:09 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:48:09 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Wed, 16 Sep 2026 06:48:09 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:48:09 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d570e6c5bd62d1a95ada3cc414c707770a7616ef84271dee51f48618027493f`  
		Last Modified: Wed, 16 Sep 2026 03:17:25 GMT  
		Size: 16.9 MB (16947534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d3f07620448124f813941812270e17df68ba476bb7097e450dbb31f145aa0e6`  
		Last Modified: Wed, 16 Sep 2026 03:17:26 GMT  
		Size: 47.3 MB (47336595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091ea69664cdd3cd78f14b808b78492aed4917d6411257e368388281264e8172`  
		Last Modified: Wed, 16 Sep 2026 03:17:25 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999d6a6121d5528901bc4e0b4c49ad7bd1bcbad74fb55fc7272f552e7874c090`  
		Last Modified: Wed, 16 Sep 2026 03:17:25 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6dfc28e91276e4dd9ccffbe876ccbb47e01bd9db89b1f4d12d995c6e6190b58`  
		Last Modified: Wed, 16 Sep 2026 05:16:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5a86756f0d5bdc75ce50ded5bb63a2c775921c73b9b03f725152456a87a85a6`  
		Last Modified: Wed, 16 Sep 2026 05:16:44 GMT  
		Size: 13.9 MB (13875514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc0b37f2f0140384644b46bcc9721b58679d8937439714e5fd4ad9e1941718f`  
		Last Modified: Wed, 16 Sep 2026 05:16:44 GMT  
		Size: 225.3 KB (225284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5138c0bc0b5f9a0a0a62258721a5f4fe97a681c36c245ec9b219fce69abba1be`  
		Last Modified: Wed, 16 Sep 2026 06:48:33 GMT  
		Size: 239.7 KB (239696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac133cdff061147e0fc8c501baa5043f76ccc1b235ddefe095cb206b511d97f8`  
		Last Modified: Wed, 16 Sep 2026 06:48:39 GMT  
		Size: 310.1 MB (310117337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9955355575e27cc34317065c38015b1baf4238d5532a34edb814151e210ad884`  
		Last Modified: Wed, 16 Sep 2026 06:48:33 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d51b9951859c41dff67cf1ad2e2bb5fb5e41e4bfb14348ff8d8ca82c5ac747f1`  
		Last Modified: Wed, 16 Sep 2026 06:48:34 GMT  
		Size: 3.0 KB (3013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb5030a23e7d419134029ea164f201d0e3bae9d023ae5d131c5df4aeb0b9fdc`  
		Last Modified: Wed, 16 Sep 2026 06:48:35 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:f28a0eecbf7576dfd07f4627f7dec52abb9cba57946b3c9d27e8b1f15822dc83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4204273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79139125fe4100038a93ff49808e3b354ecba99e7a5696d7a5fe6811942ad27`

```dockerfile
```

-	Layers:
	-	`sha256:60b699c6739775bc69c400ef509dfa76955ad5130a7cbe65b1d0415e54da2840`  
		Last Modified: Wed, 16 Sep 2026 06:48:33 GMT  
		Size: 4.2 MB (4178719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a257b6591a27c53782fb2b7950a54bfa2de09075c19befbc34290001150d7daa`  
		Last Modified: Wed, 16 Sep 2026 06:48:33 GMT  
		Size: 25.6 KB (25554 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.4.12` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:0216707ad06df831b21361546b689c98415ab0b035791e263971fc8618c22261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.0 MB (412975252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d4742dea7626d462d10daf0e240d8159c55a7859671e7e6e0bdf3b8f4f17740`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:45:45 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:45:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:45:45 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:45:48 GMT
ADD file:683b4c146da2addbd0ae70d2240b8e3a57dd2f7582c952d416231fdd6496720f in / 
# Fri, 11 Sep 2026 11:45:48 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:12:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:12:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:12:09 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:12:09 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 16 Sep 2026 03:12:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 03:12:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:12:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:12:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 05:16:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 05:16:05 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 05:16:05 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 05:16:05 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:16:05 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:05 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:05 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 05:16:05 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 05:16:05 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 05:16:05 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 16 Sep 2026 05:16:11 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:16:11 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 05:16:11 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 05:16:11 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 05:16:11 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:11:39 GMT
ENV DATA_DIR=/catalogue-data
# Wed, 16 Sep 2026 06:11:39 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Wed, 16 Sep 2026 06:11:39 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Wed, 16 Sep 2026 06:11:39 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 06:11:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Wed, 16 Sep 2026 06:11:39 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 06:11:39 GMT
ENV GN_VERSION=4.4.12
# Wed, 16 Sep 2026 06:11:39 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Wed, 16 Sep 2026 06:13:07 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Wed, 16 Sep 2026 06:13:07 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Wed, 16 Sep 2026 06:13:07 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Wed, 16 Sep 2026 06:13:07 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:13:07 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Wed, 16 Sep 2026 06:13:07 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:13:07 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:f98fce276933dc8d40e338c8a5447d14e10d972c731f074e9fcd9f9bb629aa50`  
		Last Modified: Fri, 11 Sep 2026 13:38:53 GMT  
		Size: 26.9 MB (26894925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655a150349094c5ab6d5d0d764d257cf6b1ebfaaebae8397a725ce6dec1c7533`  
		Last Modified: Wed, 16 Sep 2026 03:12:25 GMT  
		Size: 16.3 MB (16275603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c466ae923221d04be266029bfeb0ecf0cd8c2d7a56550a77b8adc2111216a1`  
		Last Modified: Wed, 16 Sep 2026 03:12:26 GMT  
		Size: 45.4 MB (45443993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d273c5ebd927c5f95504bc830f73ce9913245a862b918e5acbc6dad0311ec2cb`  
		Last Modified: Wed, 16 Sep 2026 03:12:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9152abd9cefbf5b6a0c52cd9d4a380c0750f74dbf81da9bd9454d5864152f6d2`  
		Last Modified: Wed, 16 Sep 2026 03:12:25 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49082958d2a658fd11313509b66587929523258e4dbd7e4a4e9d23467427127`  
		Last Modified: Wed, 16 Sep 2026 05:16:20 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0af8865971f6a6ce85b3b8dfd4666f91225b5ff5930ef838b2e8a76b48a5309`  
		Last Modified: Wed, 16 Sep 2026 05:16:21 GMT  
		Size: 13.8 MB (13812714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d67905668c658f65c8341c99ba6fb30761e7c55c961c5865c637206ff63aee2d`  
		Last Modified: Wed, 16 Sep 2026 05:16:20 GMT  
		Size: 196.9 KB (196926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:157d244e58e3673d056462e66effb9a7d6b3f67ac9e5d1b9b0b2510045c7bd26`  
		Last Modified: Wed, 16 Sep 2026 06:13:32 GMT  
		Size: 226.9 KB (226875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8685754f4318ca712257ab82c07e93a6d944e354bb5e9354088270e8cd146b2c`  
		Last Modified: Wed, 16 Sep 2026 06:13:38 GMT  
		Size: 310.1 MB (310117362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e586c959979d2dcf5cb4ccac894b3a609b09fa21f0a1aeb17b59a97601fa98`  
		Last Modified: Wed, 16 Sep 2026 06:13:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44af8b64a4de8abe6babe4c6fb415c297b86f2982b9f9f798982830654676d46`  
		Last Modified: Wed, 16 Sep 2026 06:13:32 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aee0d364c6a1ec889933c58413e5f40c051586dc89be81eef75a4ffdfe24731`  
		Last Modified: Wed, 16 Sep 2026 06:13:33 GMT  
		Size: 698.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:15f18301fdb7b2008dc6ffe0133ffd7109c21986f9f78cd6885031b92836e670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4207968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ff9ab912003bdab781da0dd0bb1546e8371674f7d36bbdb01fbc011df7850db`

```dockerfile
```

-	Layers:
	-	`sha256:d7a1262292b3fd657a68c54f898f416127aea2174ec0876e3bc8f4c5f4424d55`  
		Last Modified: Wed, 16 Sep 2026 06:13:32 GMT  
		Size: 4.2 MB (4182322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd87d6200afe64c89dcfffbcc154b1e945219beca1031a962230a8ff7da32765`  
		Last Modified: Wed, 16 Sep 2026 06:13:32 GMT  
		Size: 25.6 KB (25646 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.4.12` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:c83964939098785461fbacb3c2630f2c8612ea6a13bd998ff355666b0eec7be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **416.0 MB (416014714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d329a2b112a01b9288ec6512cb18530e93fcb6b43a8c003ac40adbfea27bad`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:16:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:48 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:48 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 16 Sep 2026 03:16:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 03:16:52 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:16:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:16:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 05:16:09 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 05:16:09 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 05:16:09 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 05:16:09 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:16:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:09 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:09 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 05:16:09 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 05:16:09 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 05:16:10 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 16 Sep 2026 05:16:18 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:16:18 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 05:16:18 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 05:16:18 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 05:16:18 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:15:07 GMT
ENV DATA_DIR=/catalogue-data
# Wed, 16 Sep 2026 06:15:07 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Wed, 16 Sep 2026 06:15:07 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Wed, 16 Sep 2026 06:15:07 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 06:15:07 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Wed, 16 Sep 2026 06:15:07 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 06:15:07 GMT
ENV GN_VERSION=4.4.12
# Wed, 16 Sep 2026 06:15:07 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Wed, 16 Sep 2026 06:15:33 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Wed, 16 Sep 2026 06:15:33 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Wed, 16 Sep 2026 06:15:33 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Wed, 16 Sep 2026 06:15:33 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:15:33 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Wed, 16 Sep 2026 06:15:33 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:15:33 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7cde1edee6e54f132e57d6c18fc40e37a3a93f2934e9872f6460883c7c4505`  
		Last Modified: Wed, 16 Sep 2026 03:17:04 GMT  
		Size: 17.0 MB (16957421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5284141e3131dc5ba418157327a4a273cc78e5afb48f00e0551a4930e91d8dd1`  
		Last Modified: Wed, 16 Sep 2026 03:17:05 GMT  
		Size: 45.6 MB (45638921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70cc2531798d0759d9ae8f6148d9909f125c9ffd7023b58401dd9364d65a07df`  
		Last Modified: Wed, 16 Sep 2026 03:17:03 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9041f384a6fe8ddfed5f193845a975cbf8acce9684e03cab144e7d5af371337c`  
		Last Modified: Wed, 16 Sep 2026 03:17:03 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975a51c36e657bff19f0c70a78813ed53ca00a42f98c02d5829c3df0703ae7c0`  
		Last Modified: Wed, 16 Sep 2026 05:16:26 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e634b3a88d8c4cb9395c9c007c88a5505271099deac58824b3bf4f92de9a08`  
		Last Modified: Wed, 16 Sep 2026 05:16:27 GMT  
		Size: 13.9 MB (13888096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabe9e669cefc9ff097800941c333879349dd9018f13bd6ce71bd4f42c915165`  
		Last Modified: Wed, 16 Sep 2026 05:16:26 GMT  
		Size: 225.7 KB (225739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8aebedcbd5d0bf0899eea1b5bc53ad8f7c8ed67eb9e8d19d524753b8f085fda`  
		Last Modified: Wed, 16 Sep 2026 06:15:57 GMT  
		Size: 238.8 KB (238768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a457e99354a1642e1ad558074df3fc88c54048bf42f276fb15065992e0c8ebbb`  
		Last Modified: Wed, 16 Sep 2026 06:16:04 GMT  
		Size: 310.1 MB (310117333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eea2bcd03069992a718437ecfc457b3d5dc58eec7105a696ff4ccc6e67a4973`  
		Last Modified: Wed, 16 Sep 2026 06:15:57 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e03b047d41d868696f13abf9bae90943053d09a057fb7ef9f6df82b2013ca6`  
		Last Modified: Wed, 16 Sep 2026 06:15:57 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26184d78aed2cf3e3f421873a31cf711277918669d6bccca872c46bec212af3a`  
		Last Modified: Wed, 16 Sep 2026 06:15:58 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:b1b00984c66132c4aad747ecc3bb68998065e7310413a8a31f071413f1234189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4205482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a152a0191a830799e0f8da2b58014268087ceafde6d7b021fa3c4a010ef4137a`

```dockerfile
```

-	Layers:
	-	`sha256:8a7cc9e11a95cda5322f5b5c4bae05cabc98f82febaaabbcf802f1d927806dff`  
		Last Modified: Wed, 16 Sep 2026 06:15:58 GMT  
		Size: 4.2 MB (4179809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90968ab683f4e442b0e474b74e3fb7cd491d1ccf8f47ebc4c047f3b389e5a089`  
		Last Modified: Wed, 16 Sep 2026 06:15:57 GMT  
		Size: 25.7 KB (25673 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.4.12` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:5b13b818fd7959f48c8804b35b323020e8b9cc96e023172fc1ffd6213e283c78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.5 MB (420508120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb08dec6482f64af0bc5f224641123a79389b77963019572e73b1cfe73b4f10e`
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
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 06:47:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 06:47:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 06:47:17 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 16 Sep 2026 06:49:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 06:49:28 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 06:49:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:49:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 11:29:00 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 11:29:00 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 11:29:00 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 11:29:01 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 11:29:01 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 11:29:01 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 11:29:01 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 11:29:01 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 11:29:01 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 11:30:12 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 16 Sep 2026 11:30:19 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 11:30:21 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 11:30:21 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 11:30:21 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 11:30:21 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 12:19:36 GMT
ENV DATA_DIR=/catalogue-data
# Wed, 16 Sep 2026 12:19:36 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Wed, 16 Sep 2026 12:19:36 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Wed, 16 Sep 2026 12:19:36 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 12:19:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Wed, 16 Sep 2026 12:19:36 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 12:19:36 GMT
ENV GN_VERSION=4.4.12
# Wed, 16 Sep 2026 12:19:36 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Wed, 16 Sep 2026 12:20:11 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Wed, 16 Sep 2026 12:20:12 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Wed, 16 Sep 2026 12:20:12 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Wed, 16 Sep 2026 12:20:12 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 12:20:12 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Wed, 16 Sep 2026 12:20:12 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 12:20:12 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4203fb8b2c14c1adc11a851d1fc29ab6315d968370915b4c1821d3df6e6db4`  
		Last Modified: Wed, 16 Sep 2026 06:47:54 GMT  
		Size: 18.8 MB (18765991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88609147b4c6303e7952e639f44158314f276922bdd55df33f7e4ab8834cbae1`  
		Last Modified: Wed, 16 Sep 2026 06:49:54 GMT  
		Size: 42.8 MB (42798847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:751d064a31f1a6b1a061566abe40fc1165a05a1cee3529371973e5616d3de3fa`  
		Last Modified: Wed, 16 Sep 2026 06:49:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbee2a9ede02a6d5b7318fc1f46c28723f25189176472c62051ac4a1447597df`  
		Last Modified: Wed, 16 Sep 2026 06:49:52 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95970deaa78f78838067acc067496b29e84fbb6fac9458fc26d0b8cb9e33cc43`  
		Last Modified: Wed, 16 Sep 2026 11:29:26 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bcbda25b125c98525049d7ca6b21a83658698387e420e26b99450fe7a08258f`  
		Last Modified: Wed, 16 Sep 2026 11:30:38 GMT  
		Size: 13.9 MB (13915319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c5fcc50188c8eb81799c50e89dbb95a6f78a7aa4b199e48058ea5d1553e0bf7`  
		Last Modified: Wed, 16 Sep 2026 11:30:37 GMT  
		Size: 257.0 KB (256956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:539ccb0ec213d5bcf119a7682d8e81aa90b6c80ba3d722941a7f206e4268c4fe`  
		Last Modified: Wed, 16 Sep 2026 12:20:56 GMT  
		Size: 269.9 KB (269931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b0662bff3c648af76dff7a7b745e0a29461736498e23fa128d984327a3dfdb`  
		Last Modified: Wed, 16 Sep 2026 12:21:03 GMT  
		Size: 310.1 MB (310117266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d755ab1d5c869f342e9a17339925e33fe70f7d0d4da39a8b1c46bc23165e9f61`  
		Last Modified: Wed, 16 Sep 2026 12:20:56 GMT  
		Size: 317.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5191ce63beeb7423a96ca76295cca882888f6b07154402588e2afb84e8bf323`  
		Last Modified: Wed, 16 Sep 2026 12:20:56 GMT  
		Size: 3.0 KB (3010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6575f9735f6d940d8e2ebc9c3f48bc2448d0d96e67806202d1cbc8fc179df219`  
		Last Modified: Wed, 16 Sep 2026 12:20:58 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:fb680b95c513f9be5946d44d3daecf25c15f83b6e3865f0fcb5606ccd804eddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4208402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecdb5f7c940d84e01d37ff3dcb4ccb9f873b7a5967199d2ca4afe62b74e773c5`

```dockerfile
```

-	Layers:
	-	`sha256:8aee17620ec300f469622a06a4aa1d391b3fdf39feb5cb1629a995805ba093b9`  
		Last Modified: Wed, 16 Sep 2026 12:20:56 GMT  
		Size: 4.2 MB (4182802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7309d8c7135e9af2aa51555e72dc32856fd8448e8e9719da67ce87e5c25d5ef`  
		Last Modified: Wed, 16 Sep 2026 12:20:56 GMT  
		Size: 25.6 KB (25600 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.4.12` - linux; s390x

```console
$ docker pull geonetwork@sha256:16cf0d47f54b7a818590c25c4ed9441afa6aed3457fbe9e3ac0a046ccc58d0e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.3 MB (413325764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4acf600cb26f2bbc77cab8782e8d8f59e1e21d6b2c78039f48e1d35e3246b64e`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:08 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:08 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:08 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:09 GMT
ADD file:62feb922e0e5d063c128e1d59ecbc5c2274c804b45055ac83d490a0a0c953700 in / 
# Fri, 11 Sep 2026 11:53:09 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 23:30:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 23:30:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 23:30:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 23:30:52 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 17 Sep 2026 23:30:52 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Thu, 17 Sep 2026 23:30:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 17 Sep 2026 23:30:54 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 23:30:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 23:30:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 18 Sep 2026 03:14:27 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 18 Sep 2026 03:14:27 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 03:14:27 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 18 Sep 2026 03:14:27 GMT
WORKDIR /usr/local/tomcat
# Fri, 18 Sep 2026 03:14:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 18 Sep 2026 03:14:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 18 Sep 2026 03:14:27 GMT
ENV TOMCAT_MAJOR=9
# Fri, 18 Sep 2026 03:14:27 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 18 Sep 2026 03:14:27 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 18 Sep 2026 03:15:37 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 18 Sep 2026 03:15:40 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 18 Sep 2026 03:15:40 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 18 Sep 2026 03:15:40 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 18 Sep 2026 03:15:40 GMT
ENTRYPOINT []
# Fri, 18 Sep 2026 03:15:40 GMT
CMD ["catalina.sh" "run"]
# Fri, 18 Sep 2026 04:14:42 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 18 Sep 2026 04:14:42 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Fri, 18 Sep 2026 04:14:42 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Fri, 18 Sep 2026 04:14:42 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Fri, 18 Sep 2026 04:14:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Fri, 18 Sep 2026 04:14:42 GMT
ENV GN_FILE=geonetwork.war
# Fri, 18 Sep 2026 04:14:42 GMT
ENV GN_VERSION=4.4.12
# Fri, 18 Sep 2026 04:14:42 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Fri, 18 Sep 2026 04:15:05 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 18 Sep 2026 04:15:05 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Fri, 18 Sep 2026 04:15:05 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 18 Sep 2026 04:15:05 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 18 Sep 2026 04:15:05 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 18 Sep 2026 04:15:05 GMT
CMD ["catalina.sh" "run"]
# Fri, 18 Sep 2026 04:15:05 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:2d1aac92a29a4eacd140d431dc526f6da099043772d537d221717429ee877b2a`  
		Last Modified: Fri, 11 Sep 2026 13:39:18 GMT  
		Size: 29.9 MB (29945392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57eb44040be758c355a5941831542dd2b2bf89b15aa9bdab656f539a0c5ba7cf`  
		Last Modified: Thu, 17 Sep 2026 23:31:09 GMT  
		Size: 17.5 MB (17537482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d0a65614947504290c520ab922a6a1e0fae7eca97f9cda2f332bfe8388bba11`  
		Last Modified: Thu, 17 Sep 2026 23:31:10 GMT  
		Size: 41.3 MB (41346810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a7b7bdedf77992c4e68e43c4ce325e2fc5520ef94e06c56b2dcc9c5ca376d6`  
		Last Modified: Thu, 17 Sep 2026 23:31:08 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e9ddcdc9d08ccde1caea6e807d7b83cb667f1affa28f6b03331c398970979e`  
		Last Modified: Thu, 17 Sep 2026 23:31:08 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c8c8f5e5d79aa8ac8ccdbd3e1c8f82f133ff1011653c9a4e0442e634477743d`  
		Last Modified: Fri, 18 Sep 2026 03:14:41 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da7e1f3c723a89b491d461ef867dab5a87bca66409d1c348c9203f73f85def95`  
		Last Modified: Fri, 18 Sep 2026 03:15:51 GMT  
		Size: 13.9 MB (13887719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47bd803b251f43c3377bb25c54a147869d466562db2a91d37919aa599458f32`  
		Last Modified: Fri, 18 Sep 2026 03:15:51 GMT  
		Size: 233.3 KB (233346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f55781ba4bd53de3ede76fb54127e7403ec2435f8a78a34ea0a07988b7dda0e`  
		Last Modified: Fri, 18 Sep 2026 04:15:36 GMT  
		Size: 250.8 KB (250774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4485778c1f7df9e61aec7d443d1a19e64e010c7aef91a62ee775ea0b2e3ff7`  
		Last Modified: Fri, 18 Sep 2026 04:15:41 GMT  
		Size: 310.1 MB (310117390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd84bb1b1178237de73e22586759ef236f8be4431e2b6d723a19b42b1eed009c`  
		Last Modified: Fri, 18 Sep 2026 04:15:36 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9e63f385ffe2032a934a3f6e560f8ceaedd8f6f996a2252f69bcd01ec7bd9a`  
		Last Modified: Fri, 18 Sep 2026 04:15:36 GMT  
		Size: 3.0 KB (3010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980c5b490ff0ea1612337ed0f241996948688da2bde15b3b1a92ca04695c9944`  
		Last Modified: Fri, 18 Sep 2026 04:15:37 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:d59017e37f438fac72a744303552f9e2e6927598992639d43a439277a7ac4c74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4206477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3752d189b5415403ae842577d5e260408ae8738e433d63c5fa1f27676f3cad`

```dockerfile
```

-	Layers:
	-	`sha256:0939ce2f6736d79aa1442c7163f4ef09468da37f230657c2cc0b69718867a450`  
		Last Modified: Fri, 18 Sep 2026 04:15:36 GMT  
		Size: 4.2 MB (4180924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a309bdc5ee46c2f4541ec850bc84d4ceb4ce0c8037eae3303d791ba07112da9b`  
		Last Modified: Fri, 18 Sep 2026 04:15:36 GMT  
		Size: 25.6 KB (25553 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:latest`

```console
$ docker pull geonetwork@sha256:0d24b95f7798935ec590cbe13f0c8ebee635cadfc7dfb92b16b7b50dfad4b7a0
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
$ docker pull geonetwork@sha256:8aa00b3d04ae3ce97247393e3bcd833e4db81d92296975212451694dc93a15ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.5 MB (418512936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2cc15d5016cb04b818865fd6d4c49a082d4e6b811906938dcc5ecff532ea765`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:17:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:17:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:17:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:17:10 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:17:10 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 16 Sep 2026 03:17:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 03:17:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:17:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:17:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 05:16:27 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 05:16:27 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 05:16:27 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 05:16:27 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:16:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:27 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 05:16:27 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 05:16:27 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 05:16:28 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 16 Sep 2026 05:16:35 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:16:36 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 05:16:36 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 05:16:36 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 05:16:36 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:47:43 GMT
ENV DATA_DIR=/catalogue-data
# Wed, 16 Sep 2026 06:47:43 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Wed, 16 Sep 2026 06:47:43 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Wed, 16 Sep 2026 06:47:43 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 06:47:43 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Wed, 16 Sep 2026 06:47:43 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 06:47:43 GMT
ENV GN_VERSION=4.4.12
# Wed, 16 Sep 2026 06:47:43 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Wed, 16 Sep 2026 06:48:09 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Wed, 16 Sep 2026 06:48:09 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Wed, 16 Sep 2026 06:48:09 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Wed, 16 Sep 2026 06:48:09 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:48:09 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Wed, 16 Sep 2026 06:48:09 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:48:09 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d570e6c5bd62d1a95ada3cc414c707770a7616ef84271dee51f48618027493f`  
		Last Modified: Wed, 16 Sep 2026 03:17:25 GMT  
		Size: 16.9 MB (16947534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d3f07620448124f813941812270e17df68ba476bb7097e450dbb31f145aa0e6`  
		Last Modified: Wed, 16 Sep 2026 03:17:26 GMT  
		Size: 47.3 MB (47336595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091ea69664cdd3cd78f14b808b78492aed4917d6411257e368388281264e8172`  
		Last Modified: Wed, 16 Sep 2026 03:17:25 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999d6a6121d5528901bc4e0b4c49ad7bd1bcbad74fb55fc7272f552e7874c090`  
		Last Modified: Wed, 16 Sep 2026 03:17:25 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6dfc28e91276e4dd9ccffbe876ccbb47e01bd9db89b1f4d12d995c6e6190b58`  
		Last Modified: Wed, 16 Sep 2026 05:16:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5a86756f0d5bdc75ce50ded5bb63a2c775921c73b9b03f725152456a87a85a6`  
		Last Modified: Wed, 16 Sep 2026 05:16:44 GMT  
		Size: 13.9 MB (13875514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc0b37f2f0140384644b46bcc9721b58679d8937439714e5fd4ad9e1941718f`  
		Last Modified: Wed, 16 Sep 2026 05:16:44 GMT  
		Size: 225.3 KB (225284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5138c0bc0b5f9a0a0a62258721a5f4fe97a681c36c245ec9b219fce69abba1be`  
		Last Modified: Wed, 16 Sep 2026 06:48:33 GMT  
		Size: 239.7 KB (239696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac133cdff061147e0fc8c501baa5043f76ccc1b235ddefe095cb206b511d97f8`  
		Last Modified: Wed, 16 Sep 2026 06:48:39 GMT  
		Size: 310.1 MB (310117337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9955355575e27cc34317065c38015b1baf4238d5532a34edb814151e210ad884`  
		Last Modified: Wed, 16 Sep 2026 06:48:33 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d51b9951859c41dff67cf1ad2e2bb5fb5e41e4bfb14348ff8d8ca82c5ac747f1`  
		Last Modified: Wed, 16 Sep 2026 06:48:34 GMT  
		Size: 3.0 KB (3013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb5030a23e7d419134029ea164f201d0e3bae9d023ae5d131c5df4aeb0b9fdc`  
		Last Modified: Wed, 16 Sep 2026 06:48:35 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:f28a0eecbf7576dfd07f4627f7dec52abb9cba57946b3c9d27e8b1f15822dc83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4204273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79139125fe4100038a93ff49808e3b354ecba99e7a5696d7a5fe6811942ad27`

```dockerfile
```

-	Layers:
	-	`sha256:60b699c6739775bc69c400ef509dfa76955ad5130a7cbe65b1d0415e54da2840`  
		Last Modified: Wed, 16 Sep 2026 06:48:33 GMT  
		Size: 4.2 MB (4178719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a257b6591a27c53782fb2b7950a54bfa2de09075c19befbc34290001150d7daa`  
		Last Modified: Wed, 16 Sep 2026 06:48:33 GMT  
		Size: 25.6 KB (25554 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:latest` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:0216707ad06df831b21361546b689c98415ab0b035791e263971fc8618c22261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.0 MB (412975252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d4742dea7626d462d10daf0e240d8159c55a7859671e7e6e0bdf3b8f4f17740`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:45:45 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:45:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:45:45 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:45:48 GMT
ADD file:683b4c146da2addbd0ae70d2240b8e3a57dd2f7582c952d416231fdd6496720f in / 
# Fri, 11 Sep 2026 11:45:48 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:12:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:12:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:12:09 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:12:09 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 16 Sep 2026 03:12:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 03:12:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:12:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:12:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 05:16:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 05:16:05 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 05:16:05 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 05:16:05 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:16:05 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:05 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:05 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 05:16:05 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 05:16:05 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 05:16:05 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 16 Sep 2026 05:16:11 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:16:11 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 05:16:11 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 05:16:11 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 05:16:11 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:11:39 GMT
ENV DATA_DIR=/catalogue-data
# Wed, 16 Sep 2026 06:11:39 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Wed, 16 Sep 2026 06:11:39 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Wed, 16 Sep 2026 06:11:39 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 06:11:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Wed, 16 Sep 2026 06:11:39 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 06:11:39 GMT
ENV GN_VERSION=4.4.12
# Wed, 16 Sep 2026 06:11:39 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Wed, 16 Sep 2026 06:13:07 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Wed, 16 Sep 2026 06:13:07 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Wed, 16 Sep 2026 06:13:07 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Wed, 16 Sep 2026 06:13:07 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:13:07 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Wed, 16 Sep 2026 06:13:07 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:13:07 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:f98fce276933dc8d40e338c8a5447d14e10d972c731f074e9fcd9f9bb629aa50`  
		Last Modified: Fri, 11 Sep 2026 13:38:53 GMT  
		Size: 26.9 MB (26894925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655a150349094c5ab6d5d0d764d257cf6b1ebfaaebae8397a725ce6dec1c7533`  
		Last Modified: Wed, 16 Sep 2026 03:12:25 GMT  
		Size: 16.3 MB (16275603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c466ae923221d04be266029bfeb0ecf0cd8c2d7a56550a77b8adc2111216a1`  
		Last Modified: Wed, 16 Sep 2026 03:12:26 GMT  
		Size: 45.4 MB (45443993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d273c5ebd927c5f95504bc830f73ce9913245a862b918e5acbc6dad0311ec2cb`  
		Last Modified: Wed, 16 Sep 2026 03:12:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9152abd9cefbf5b6a0c52cd9d4a380c0750f74dbf81da9bd9454d5864152f6d2`  
		Last Modified: Wed, 16 Sep 2026 03:12:25 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49082958d2a658fd11313509b66587929523258e4dbd7e4a4e9d23467427127`  
		Last Modified: Wed, 16 Sep 2026 05:16:20 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0af8865971f6a6ce85b3b8dfd4666f91225b5ff5930ef838b2e8a76b48a5309`  
		Last Modified: Wed, 16 Sep 2026 05:16:21 GMT  
		Size: 13.8 MB (13812714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d67905668c658f65c8341c99ba6fb30761e7c55c961c5865c637206ff63aee2d`  
		Last Modified: Wed, 16 Sep 2026 05:16:20 GMT  
		Size: 196.9 KB (196926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:157d244e58e3673d056462e66effb9a7d6b3f67ac9e5d1b9b0b2510045c7bd26`  
		Last Modified: Wed, 16 Sep 2026 06:13:32 GMT  
		Size: 226.9 KB (226875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8685754f4318ca712257ab82c07e93a6d944e354bb5e9354088270e8cd146b2c`  
		Last Modified: Wed, 16 Sep 2026 06:13:38 GMT  
		Size: 310.1 MB (310117362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e586c959979d2dcf5cb4ccac894b3a609b09fa21f0a1aeb17b59a97601fa98`  
		Last Modified: Wed, 16 Sep 2026 06:13:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44af8b64a4de8abe6babe4c6fb415c297b86f2982b9f9f798982830654676d46`  
		Last Modified: Wed, 16 Sep 2026 06:13:32 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aee0d364c6a1ec889933c58413e5f40c051586dc89be81eef75a4ffdfe24731`  
		Last Modified: Wed, 16 Sep 2026 06:13:33 GMT  
		Size: 698.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:15f18301fdb7b2008dc6ffe0133ffd7109c21986f9f78cd6885031b92836e670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4207968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ff9ab912003bdab781da0dd0bb1546e8371674f7d36bbdb01fbc011df7850db`

```dockerfile
```

-	Layers:
	-	`sha256:d7a1262292b3fd657a68c54f898f416127aea2174ec0876e3bc8f4c5f4424d55`  
		Last Modified: Wed, 16 Sep 2026 06:13:32 GMT  
		Size: 4.2 MB (4182322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd87d6200afe64c89dcfffbcc154b1e945219beca1031a962230a8ff7da32765`  
		Last Modified: Wed, 16 Sep 2026 06:13:32 GMT  
		Size: 25.6 KB (25646 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:latest` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:c83964939098785461fbacb3c2630f2c8612ea6a13bd998ff355666b0eec7be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **416.0 MB (416014714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d329a2b112a01b9288ec6512cb18530e93fcb6b43a8c003ac40adbfea27bad`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:16:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:48 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:48 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 16 Sep 2026 03:16:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 03:16:52 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:16:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:16:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 05:16:09 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 05:16:09 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 05:16:09 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 05:16:09 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 05:16:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:09 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 05:16:09 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 05:16:09 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 05:16:09 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 05:16:10 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 16 Sep 2026 05:16:18 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:16:18 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 05:16:18 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 05:16:18 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 05:16:18 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:15:07 GMT
ENV DATA_DIR=/catalogue-data
# Wed, 16 Sep 2026 06:15:07 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Wed, 16 Sep 2026 06:15:07 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Wed, 16 Sep 2026 06:15:07 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 06:15:07 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Wed, 16 Sep 2026 06:15:07 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 06:15:07 GMT
ENV GN_VERSION=4.4.12
# Wed, 16 Sep 2026 06:15:07 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Wed, 16 Sep 2026 06:15:33 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Wed, 16 Sep 2026 06:15:33 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Wed, 16 Sep 2026 06:15:33 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Wed, 16 Sep 2026 06:15:33 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:15:33 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Wed, 16 Sep 2026 06:15:33 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 06:15:33 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7cde1edee6e54f132e57d6c18fc40e37a3a93f2934e9872f6460883c7c4505`  
		Last Modified: Wed, 16 Sep 2026 03:17:04 GMT  
		Size: 17.0 MB (16957421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5284141e3131dc5ba418157327a4a273cc78e5afb48f00e0551a4930e91d8dd1`  
		Last Modified: Wed, 16 Sep 2026 03:17:05 GMT  
		Size: 45.6 MB (45638921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70cc2531798d0759d9ae8f6148d9909f125c9ffd7023b58401dd9364d65a07df`  
		Last Modified: Wed, 16 Sep 2026 03:17:03 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9041f384a6fe8ddfed5f193845a975cbf8acce9684e03cab144e7d5af371337c`  
		Last Modified: Wed, 16 Sep 2026 03:17:03 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975a51c36e657bff19f0c70a78813ed53ca00a42f98c02d5829c3df0703ae7c0`  
		Last Modified: Wed, 16 Sep 2026 05:16:26 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e634b3a88d8c4cb9395c9c007c88a5505271099deac58824b3bf4f92de9a08`  
		Last Modified: Wed, 16 Sep 2026 05:16:27 GMT  
		Size: 13.9 MB (13888096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabe9e669cefc9ff097800941c333879349dd9018f13bd6ce71bd4f42c915165`  
		Last Modified: Wed, 16 Sep 2026 05:16:26 GMT  
		Size: 225.7 KB (225739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8aebedcbd5d0bf0899eea1b5bc53ad8f7c8ed67eb9e8d19d524753b8f085fda`  
		Last Modified: Wed, 16 Sep 2026 06:15:57 GMT  
		Size: 238.8 KB (238768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a457e99354a1642e1ad558074df3fc88c54048bf42f276fb15065992e0c8ebbb`  
		Last Modified: Wed, 16 Sep 2026 06:16:04 GMT  
		Size: 310.1 MB (310117333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eea2bcd03069992a718437ecfc457b3d5dc58eec7105a696ff4ccc6e67a4973`  
		Last Modified: Wed, 16 Sep 2026 06:15:57 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e03b047d41d868696f13abf9bae90943053d09a057fb7ef9f6df82b2013ca6`  
		Last Modified: Wed, 16 Sep 2026 06:15:57 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26184d78aed2cf3e3f421873a31cf711277918669d6bccca872c46bec212af3a`  
		Last Modified: Wed, 16 Sep 2026 06:15:58 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:b1b00984c66132c4aad747ecc3bb68998065e7310413a8a31f071413f1234189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4205482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a152a0191a830799e0f8da2b58014268087ceafde6d7b021fa3c4a010ef4137a`

```dockerfile
```

-	Layers:
	-	`sha256:8a7cc9e11a95cda5322f5b5c4bae05cabc98f82febaaabbcf802f1d927806dff`  
		Last Modified: Wed, 16 Sep 2026 06:15:58 GMT  
		Size: 4.2 MB (4179809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90968ab683f4e442b0e474b74e3fb7cd491d1ccf8f47ebc4c047f3b389e5a089`  
		Last Modified: Wed, 16 Sep 2026 06:15:57 GMT  
		Size: 25.7 KB (25673 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:latest` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:5b13b818fd7959f48c8804b35b323020e8b9cc96e023172fc1ffd6213e283c78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.5 MB (420508120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb08dec6482f64af0bc5f224641123a79389b77963019572e73b1cfe73b4f10e`
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
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 06:47:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 06:47:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 06:47:17 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 06:47:17 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 16 Sep 2026 06:49:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 06:49:28 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 06:49:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 06:49:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 11:29:00 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 16 Sep 2026 11:29:00 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 11:29:00 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 16 Sep 2026 11:29:01 GMT
WORKDIR /usr/local/tomcat
# Wed, 16 Sep 2026 11:29:01 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 11:29:01 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 16 Sep 2026 11:29:01 GMT
ENV TOMCAT_MAJOR=9
# Wed, 16 Sep 2026 11:29:01 GMT
ENV TOMCAT_VERSION=9.0.122
# Wed, 16 Sep 2026 11:29:01 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Wed, 16 Sep 2026 11:30:12 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 16 Sep 2026 11:30:19 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 11:30:21 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 16 Sep 2026 11:30:21 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 11:30:21 GMT
ENTRYPOINT []
# Wed, 16 Sep 2026 11:30:21 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 12:19:36 GMT
ENV DATA_DIR=/catalogue-data
# Wed, 16 Sep 2026 12:19:36 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Wed, 16 Sep 2026 12:19:36 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Wed, 16 Sep 2026 12:19:36 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Wed, 16 Sep 2026 12:19:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Wed, 16 Sep 2026 12:19:36 GMT
ENV GN_FILE=geonetwork.war
# Wed, 16 Sep 2026 12:19:36 GMT
ENV GN_VERSION=4.4.12
# Wed, 16 Sep 2026 12:19:36 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Wed, 16 Sep 2026 12:20:11 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Wed, 16 Sep 2026 12:20:12 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Wed, 16 Sep 2026 12:20:12 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Wed, 16 Sep 2026 12:20:12 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 12:20:12 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Wed, 16 Sep 2026 12:20:12 GMT
CMD ["catalina.sh" "run"]
# Wed, 16 Sep 2026 12:20:12 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4203fb8b2c14c1adc11a851d1fc29ab6315d968370915b4c1821d3df6e6db4`  
		Last Modified: Wed, 16 Sep 2026 06:47:54 GMT  
		Size: 18.8 MB (18765991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88609147b4c6303e7952e639f44158314f276922bdd55df33f7e4ab8834cbae1`  
		Last Modified: Wed, 16 Sep 2026 06:49:54 GMT  
		Size: 42.8 MB (42798847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:751d064a31f1a6b1a061566abe40fc1165a05a1cee3529371973e5616d3de3fa`  
		Last Modified: Wed, 16 Sep 2026 06:49:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbee2a9ede02a6d5b7318fc1f46c28723f25189176472c62051ac4a1447597df`  
		Last Modified: Wed, 16 Sep 2026 06:49:52 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95970deaa78f78838067acc067496b29e84fbb6fac9458fc26d0b8cb9e33cc43`  
		Last Modified: Wed, 16 Sep 2026 11:29:26 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bcbda25b125c98525049d7ca6b21a83658698387e420e26b99450fe7a08258f`  
		Last Modified: Wed, 16 Sep 2026 11:30:38 GMT  
		Size: 13.9 MB (13915319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c5fcc50188c8eb81799c50e89dbb95a6f78a7aa4b199e48058ea5d1553e0bf7`  
		Last Modified: Wed, 16 Sep 2026 11:30:37 GMT  
		Size: 257.0 KB (256956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:539ccb0ec213d5bcf119a7682d8e81aa90b6c80ba3d722941a7f206e4268c4fe`  
		Last Modified: Wed, 16 Sep 2026 12:20:56 GMT  
		Size: 269.9 KB (269931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b0662bff3c648af76dff7a7b745e0a29461736498e23fa128d984327a3dfdb`  
		Last Modified: Wed, 16 Sep 2026 12:21:03 GMT  
		Size: 310.1 MB (310117266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d755ab1d5c869f342e9a17339925e33fe70f7d0d4da39a8b1c46bc23165e9f61`  
		Last Modified: Wed, 16 Sep 2026 12:20:56 GMT  
		Size: 317.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5191ce63beeb7423a96ca76295cca882888f6b07154402588e2afb84e8bf323`  
		Last Modified: Wed, 16 Sep 2026 12:20:56 GMT  
		Size: 3.0 KB (3010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6575f9735f6d940d8e2ebc9c3f48bc2448d0d96e67806202d1cbc8fc179df219`  
		Last Modified: Wed, 16 Sep 2026 12:20:58 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:fb680b95c513f9be5946d44d3daecf25c15f83b6e3865f0fcb5606ccd804eddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4208402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecdb5f7c940d84e01d37ff3dcb4ccb9f873b7a5967199d2ca4afe62b74e773c5`

```dockerfile
```

-	Layers:
	-	`sha256:8aee17620ec300f469622a06a4aa1d391b3fdf39feb5cb1629a995805ba093b9`  
		Last Modified: Wed, 16 Sep 2026 12:20:56 GMT  
		Size: 4.2 MB (4182802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7309d8c7135e9af2aa51555e72dc32856fd8448e8e9719da67ce87e5c25d5ef`  
		Last Modified: Wed, 16 Sep 2026 12:20:56 GMT  
		Size: 25.6 KB (25600 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:latest` - linux; s390x

```console
$ docker pull geonetwork@sha256:16cf0d47f54b7a818590c25c4ed9441afa6aed3457fbe9e3ac0a046ccc58d0e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.3 MB (413325764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4acf600cb26f2bbc77cab8782e8d8f59e1e21d6b2c78039f48e1d35e3246b64e`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:08 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:08 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:08 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:09 GMT
ADD file:62feb922e0e5d063c128e1d59ecbc5c2274c804b45055ac83d490a0a0c953700 in / 
# Fri, 11 Sep 2026 11:53:09 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 23:30:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 23:30:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 23:30:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 23:30:52 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 17 Sep 2026 23:30:52 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Thu, 17 Sep 2026 23:30:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 17 Sep 2026 23:30:54 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 23:30:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 23:30:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 18 Sep 2026 03:14:27 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 18 Sep 2026 03:14:27 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 03:14:27 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 18 Sep 2026 03:14:27 GMT
WORKDIR /usr/local/tomcat
# Fri, 18 Sep 2026 03:14:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 18 Sep 2026 03:14:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 18 Sep 2026 03:14:27 GMT
ENV TOMCAT_MAJOR=9
# Fri, 18 Sep 2026 03:14:27 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 18 Sep 2026 03:14:27 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 18 Sep 2026 03:15:37 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 18 Sep 2026 03:15:40 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 18 Sep 2026 03:15:40 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 18 Sep 2026 03:15:40 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 18 Sep 2026 03:15:40 GMT
ENTRYPOINT []
# Fri, 18 Sep 2026 03:15:40 GMT
CMD ["catalina.sh" "run"]
# Fri, 18 Sep 2026 04:14:42 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 18 Sep 2026 04:14:42 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Fri, 18 Sep 2026 04:14:42 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Fri, 18 Sep 2026 04:14:42 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Fri, 18 Sep 2026 04:14:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Fri, 18 Sep 2026 04:14:42 GMT
ENV GN_FILE=geonetwork.war
# Fri, 18 Sep 2026 04:14:42 GMT
ENV GN_VERSION=4.4.12
# Fri, 18 Sep 2026 04:14:42 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Fri, 18 Sep 2026 04:15:05 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 18 Sep 2026 04:15:05 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Fri, 18 Sep 2026 04:15:05 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 18 Sep 2026 04:15:05 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 18 Sep 2026 04:15:05 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 18 Sep 2026 04:15:05 GMT
CMD ["catalina.sh" "run"]
# Fri, 18 Sep 2026 04:15:05 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:2d1aac92a29a4eacd140d431dc526f6da099043772d537d221717429ee877b2a`  
		Last Modified: Fri, 11 Sep 2026 13:39:18 GMT  
		Size: 29.9 MB (29945392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57eb44040be758c355a5941831542dd2b2bf89b15aa9bdab656f539a0c5ba7cf`  
		Last Modified: Thu, 17 Sep 2026 23:31:09 GMT  
		Size: 17.5 MB (17537482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d0a65614947504290c520ab922a6a1e0fae7eca97f9cda2f332bfe8388bba11`  
		Last Modified: Thu, 17 Sep 2026 23:31:10 GMT  
		Size: 41.3 MB (41346810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a7b7bdedf77992c4e68e43c4ce325e2fc5520ef94e06c56b2dcc9c5ca376d6`  
		Last Modified: Thu, 17 Sep 2026 23:31:08 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e9ddcdc9d08ccde1caea6e807d7b83cb667f1affa28f6b03331c398970979e`  
		Last Modified: Thu, 17 Sep 2026 23:31:08 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c8c8f5e5d79aa8ac8ccdbd3e1c8f82f133ff1011653c9a4e0442e634477743d`  
		Last Modified: Fri, 18 Sep 2026 03:14:41 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da7e1f3c723a89b491d461ef867dab5a87bca66409d1c348c9203f73f85def95`  
		Last Modified: Fri, 18 Sep 2026 03:15:51 GMT  
		Size: 13.9 MB (13887719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47bd803b251f43c3377bb25c54a147869d466562db2a91d37919aa599458f32`  
		Last Modified: Fri, 18 Sep 2026 03:15:51 GMT  
		Size: 233.3 KB (233346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f55781ba4bd53de3ede76fb54127e7403ec2435f8a78a34ea0a07988b7dda0e`  
		Last Modified: Fri, 18 Sep 2026 04:15:36 GMT  
		Size: 250.8 KB (250774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4485778c1f7df9e61aec7d443d1a19e64e010c7aef91a62ee775ea0b2e3ff7`  
		Last Modified: Fri, 18 Sep 2026 04:15:41 GMT  
		Size: 310.1 MB (310117390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd84bb1b1178237de73e22586759ef236f8be4431e2b6d723a19b42b1eed009c`  
		Last Modified: Fri, 18 Sep 2026 04:15:36 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9e63f385ffe2032a934a3f6e560f8ceaedd8f6f996a2252f69bcd01ec7bd9a`  
		Last Modified: Fri, 18 Sep 2026 04:15:36 GMT  
		Size: 3.0 KB (3010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980c5b490ff0ea1612337ed0f241996948688da2bde15b3b1a92ca04695c9944`  
		Last Modified: Fri, 18 Sep 2026 04:15:37 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:d59017e37f438fac72a744303552f9e2e6927598992639d43a439277a7ac4c74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4206477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3752d189b5415403ae842577d5e260408ae8738e433d63c5fa1f27676f3cad`

```dockerfile
```

-	Layers:
	-	`sha256:0939ce2f6736d79aa1442c7163f4ef09468da37f230657c2cc0b69718867a450`  
		Last Modified: Fri, 18 Sep 2026 04:15:36 GMT  
		Size: 4.2 MB (4180924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a309bdc5ee46c2f4541ec850bc84d4ceb4ce0c8037eae3303d791ba07112da9b`  
		Last Modified: Fri, 18 Sep 2026 04:15:36 GMT  
		Size: 25.6 KB (25553 bytes)  
		MIME: application/vnd.in-toto+json
