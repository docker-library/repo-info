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
$ docker pull geonetwork@sha256:15430cb53f51753263da89373b81b4b268160934db99ad2e26e838d0e9c8774a
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
$ docker pull geonetwork@sha256:01fdfa180502431cafb8ab4667793a74d75342e5748f135fb19e35c36941e08c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.0 MB (353005018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65502d2369ef8f0b30d655a4596d2782338233440f35cf37fda3b51b3ce4a0a8`
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
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:04 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:35:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:35:08 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:15:07 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 25 Sep 2026 23:15:07 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:15:07 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 25 Sep 2026 23:15:07 GMT
WORKDIR /usr/local/tomcat
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:07 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_MAJOR=9
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 25 Sep 2026 23:15:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Fri, 25 Sep 2026 23:15:40 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 25 Sep 2026 23:15:40 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 25 Sep 2026 23:15:40 GMT
ENTRYPOINT []
# Fri, 25 Sep 2026 23:15:40 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:20:57 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 00:20:57 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Sat, 26 Sep 2026 00:20:57 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 00:20:57 GMT
ENV GN_VERSION=3.12.12
# Sat, 26 Sep 2026 00:20:57 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Sat, 26 Sep 2026 00:20:57 GMT
WORKDIR /usr/local/tomcat/webapps
# Sat, 26 Sep 2026 00:23:14 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Sat, 26 Sep 2026 00:23:14 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:23:14 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:23:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Sep 2026 00:23:14 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa11cca00d94f9edf8aff00f761f71847bd1624524cbb17b8e7a06542698164`  
		Last Modified: Fri, 25 Sep 2026 22:35:21 GMT  
		Size: 17.0 MB (16967005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47072100c61c1d73b02a50f8e94a68c5bb2923a2505bfdc7d51d73a8809ed876`  
		Last Modified: Fri, 25 Sep 2026 22:35:22 GMT  
		Size: 55.2 MB (55194077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87d92c87e647a8037c3aa7a013b50bcc95919ce81bea2124c9f6d28402c24f7`  
		Last Modified: Fri, 25 Sep 2026 22:35:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e266086e3d4d553e1371b71fb1fffce28273a34c716c9cd64c0aa970b218950`  
		Last Modified: Fri, 25 Sep 2026 22:35:20 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:493884707e64bea23ff99d183f82b8cdfcf3fa998994585ab3a508237929f6d5`  
		Last Modified: Fri, 25 Sep 2026 23:15:50 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84dbab5b50b502ab591ca5a222e3236d90f7e64755c2c20ba53d7e7d2ed00f2d`  
		Last Modified: Fri, 25 Sep 2026 23:15:50 GMT  
		Size: 16.5 MB (16525808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f3d877e1cf9c3213c1b98c91fd0ad8140bc942db8084a1c5a309276b8599bb`  
		Last Modified: Sat, 26 Sep 2026 00:23:38 GMT  
		Size: 234.6 MB (234550883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f173e71b1191e21b4d7acb29c575157486e05e0640ca135ce02e97b28a9375`  
		Last Modified: Sat, 26 Sep 2026 00:23:33 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3` - unknown; unknown

```console
$ docker pull geonetwork@sha256:78172da2aed0e26eb3ac8fd82503becaae77c2f1c7c42f2fe99f181b905058da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4363315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8918c84bc859b27e5d618b3981fca10031be3c01ce6f1310dbffe9e6eb2c4e86`

```dockerfile
```

-	Layers:
	-	`sha256:a18e0e303288abab1631ab5cc1fd802e74c1ac43a1323ec40c3921aed6dff588`  
		Last Modified: Sat, 26 Sep 2026 00:23:33 GMT  
		Size: 4.3 MB (4344222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33ab6b0a93a3319fbc31dcbbd313007b3c26e07aecc9695d40aa3d40e0add99d`  
		Last Modified: Sat, 26 Sep 2026 00:23:33 GMT  
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
$ docker pull geonetwork@sha256:416449898d4924e7cc4dfd7547da776cc6e44d28dccb2b27a6134456a44331cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.2 MB (351234830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:936a2b4d5978b340d9b5d42d0ec7219aa406d8c415ba620f439ee43233227d3a`
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
# Fri, 25 Sep 2026 22:34:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:40 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:34:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:13:06 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 25 Sep 2026 23:13:06 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:13:06 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 25 Sep 2026 23:13:06 GMT
WORKDIR /usr/local/tomcat
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:13:06 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_MAJOR=9
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 25 Sep 2026 23:13:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Fri, 25 Sep 2026 23:13:37 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 25 Sep 2026 23:13:37 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 25 Sep 2026 23:13:37 GMT
ENTRYPOINT []
# Fri, 25 Sep 2026 23:13:37 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:16:45 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 00:16:45 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Sat, 26 Sep 2026 00:16:45 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 00:16:45 GMT
ENV GN_VERSION=3.12.12
# Sat, 26 Sep 2026 00:16:45 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Sat, 26 Sep 2026 00:16:45 GMT
WORKDIR /usr/local/tomcat/webapps
# Sat, 26 Sep 2026 00:19:42 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Sat, 26 Sep 2026 00:19:42 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:19:42 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:19:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Sep 2026 00:19:42 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e339abc629cb61080e38b911ca39e9e7c6b0beb1d74e4bc923e86a3ae5e792c2`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 17.0 MB (16977372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bde7587076f7cbcf9c2eca1827dd2bcb0f810ce1999ad13be8210faf7834ab77`  
		Last Modified: Fri, 25 Sep 2026 22:34:57 GMT  
		Size: 54.3 MB (54259515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4759cf5ad51f90c066e0284615a247cab926e7e376c95c0ee306bcc83eb9e6`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c974c49e0692a41554cee963b1a3eec548ba3d5ad233b88158627f53caa9957`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec413b6bc583a8580b6ad11374eadc50cdf618b4ec345f540b08027eb94c35c`  
		Last Modified: Fri, 25 Sep 2026 23:13:47 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ef7b6c13b857cb46b077bf59708aae58e24335ecb7864eede750f94bb8156b`  
		Last Modified: Fri, 25 Sep 2026 23:13:47 GMT  
		Size: 16.5 MB (16498405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d82a2e312fa5032bb637a55db628381053a5b504024a87f5ebea55c1dab48d0`  
		Last Modified: Sat, 26 Sep 2026 00:20:08 GMT  
		Size: 234.6 MB (234554829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b434e645b78ccd1c1a25a781649aa5e58b2f856d53fed9b5eddfb7674e45d4d`  
		Last Modified: Sat, 26 Sep 2026 00:20:04 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3` - unknown; unknown

```console
$ docker pull geonetwork@sha256:d68daec1469dfde6acc8958363766a0285e7cac397f42ddb20035d6b89cee39c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4364567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25160b1d6890d16282b47c3f7e92e44e7d13b1cc32e7236c61ae107e3c11f494`

```dockerfile
```

-	Layers:
	-	`sha256:e62d25bc00d918b5f87aa4ba9ab967a9404d352b6c31248e37d88303865c9b77`  
		Last Modified: Sat, 26 Sep 2026 00:20:04 GMT  
		Size: 4.3 MB (4345382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:876d32e32a5322c617bf8ddab9b2cc9013b994dbdce83aa07aedea92d1960343`  
		Last Modified: Sat, 26 Sep 2026 00:20:03 GMT  
		Size: 19.2 KB (19185 bytes)  
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
$ docker pull geonetwork@sha256:6f7d1486445af95f4f00020cb7fa7c57c72c0567ab1ebb25b56db2d3724dc556
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
$ docker pull geonetwork@sha256:4c90a61e94248ee73d5d1a28e847f1d216281d63c0676c503554a605f3abefd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.0 MB (366960271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5177a210b0444ca4efc5ff23d062c388ffe53d97ba304958551e6561408d4b77`
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
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:04 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:35:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:35:08 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:15:07 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 25 Sep 2026 23:15:07 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:15:07 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 25 Sep 2026 23:15:07 GMT
WORKDIR /usr/local/tomcat
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:07 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_MAJOR=9
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 25 Sep 2026 23:15:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Fri, 25 Sep 2026 23:15:40 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 25 Sep 2026 23:15:40 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 25 Sep 2026 23:15:40 GMT
ENTRYPOINT []
# Fri, 25 Sep 2026 23:15:40 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:20:57 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 00:20:57 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Sat, 26 Sep 2026 00:20:57 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 00:20:57 GMT
ENV GN_VERSION=3.12.12
# Sat, 26 Sep 2026 00:20:57 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Sat, 26 Sep 2026 00:20:57 GMT
WORKDIR /usr/local/tomcat/webapps
# Sat, 26 Sep 2026 00:23:14 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Sat, 26 Sep 2026 00:23:14 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:23:14 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:23:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Sep 2026 00:23:14 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 01:14:20 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Sat, 26 Sep 2026 01:14:20 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Sat, 26 Sep 2026 01:14:20 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 26 Sep 2026 01:14:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Sep 2026 01:14:20 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa11cca00d94f9edf8aff00f761f71847bd1624524cbb17b8e7a06542698164`  
		Last Modified: Fri, 25 Sep 2026 22:35:21 GMT  
		Size: 17.0 MB (16967005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47072100c61c1d73b02a50f8e94a68c5bb2923a2505bfdc7d51d73a8809ed876`  
		Last Modified: Fri, 25 Sep 2026 22:35:22 GMT  
		Size: 55.2 MB (55194077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87d92c87e647a8037c3aa7a013b50bcc95919ce81bea2124c9f6d28402c24f7`  
		Last Modified: Fri, 25 Sep 2026 22:35:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e266086e3d4d553e1371b71fb1fffce28273a34c716c9cd64c0aa970b218950`  
		Last Modified: Fri, 25 Sep 2026 22:35:20 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:493884707e64bea23ff99d183f82b8cdfcf3fa998994585ab3a508237929f6d5`  
		Last Modified: Fri, 25 Sep 2026 23:15:50 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84dbab5b50b502ab591ca5a222e3236d90f7e64755c2c20ba53d7e7d2ed00f2d`  
		Last Modified: Fri, 25 Sep 2026 23:15:50 GMT  
		Size: 16.5 MB (16525808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f3d877e1cf9c3213c1b98c91fd0ad8140bc942db8084a1c5a309276b8599bb`  
		Last Modified: Sat, 26 Sep 2026 00:23:38 GMT  
		Size: 234.6 MB (234550883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f173e71b1191e21b4d7acb29c575157486e05e0640ca135ce02e97b28a9375`  
		Last Modified: Sat, 26 Sep 2026 00:23:33 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13034d21c23d9441be34582fc68c66aeb3ef4f34f473295cd733a1e4b8bfce95`  
		Last Modified: Sat, 26 Sep 2026 01:14:36 GMT  
		Size: 14.0 MB (13951839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96b41ba1d58196ee79d896e3efd46d6df17eb1451a9bee85d7ebea86dcdd092`  
		Last Modified: Sat, 26 Sep 2026 01:14:35 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7a54c4c9279941fbc03ffa75a881a7921218c72e7a8d7a8847bd414db21f86`  
		Last Modified: Sat, 26 Sep 2026 01:14:35 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab008d0770459fc544416ef4bd4e0f18a3f7148fcb6b5a954f5042f13ebc789d`  
		Last Modified: Sat, 26 Sep 2026 01:14:35 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:49639cb46a650e3bb8ece3e5e56414aeaa296e4fb9ddcddfe0f2f564b0fa49f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5921687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7122bc4dd682f531a78034801b20ddae2335e0eb9171d686add260e97f05aa2`

```dockerfile
```

-	Layers:
	-	`sha256:8c54f59b616a9966ffc1c0f99a5a7563d3c6f001d5c598b5ab67d381c0e237da`  
		Last Modified: Sat, 26 Sep 2026 01:14:35 GMT  
		Size: 5.9 MB (5898869 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c545e60f29e2a63e870cdb33ed18ac273ca7283c1a15f1e83ce2d684bf23bd23`  
		Last Modified: Sat, 26 Sep 2026 01:14:35 GMT  
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
$ docker pull geonetwork@sha256:01d568a68fabf692d11521d9ee063e8f3949db72305a65be5abbf6921febfb57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.2 MB (365173377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:748486bd9dd328215a34e07463749bb38423c7378c756d9f2f83bb1222529e3b`
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
# Fri, 25 Sep 2026 22:34:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:40 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:34:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:13:06 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 25 Sep 2026 23:13:06 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:13:06 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 25 Sep 2026 23:13:06 GMT
WORKDIR /usr/local/tomcat
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:13:06 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_MAJOR=9
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 25 Sep 2026 23:13:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Fri, 25 Sep 2026 23:13:37 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 25 Sep 2026 23:13:37 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 25 Sep 2026 23:13:37 GMT
ENTRYPOINT []
# Fri, 25 Sep 2026 23:13:37 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:16:45 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 00:16:45 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Sat, 26 Sep 2026 00:16:45 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 00:16:45 GMT
ENV GN_VERSION=3.12.12
# Sat, 26 Sep 2026 00:16:45 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Sat, 26 Sep 2026 00:16:45 GMT
WORKDIR /usr/local/tomcat/webapps
# Sat, 26 Sep 2026 00:19:42 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Sat, 26 Sep 2026 00:19:42 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:19:42 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:19:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Sep 2026 00:19:42 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:13:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 01:13:59 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Sat, 26 Sep 2026 01:13:59 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Sat, 26 Sep 2026 01:13:59 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 26 Sep 2026 01:13:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Sep 2026 01:13:59 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e339abc629cb61080e38b911ca39e9e7c6b0beb1d74e4bc923e86a3ae5e792c2`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 17.0 MB (16977372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bde7587076f7cbcf9c2eca1827dd2bcb0f810ce1999ad13be8210faf7834ab77`  
		Last Modified: Fri, 25 Sep 2026 22:34:57 GMT  
		Size: 54.3 MB (54259515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4759cf5ad51f90c066e0284615a247cab926e7e376c95c0ee306bcc83eb9e6`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c974c49e0692a41554cee963b1a3eec548ba3d5ad233b88158627f53caa9957`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec413b6bc583a8580b6ad11374eadc50cdf618b4ec345f540b08027eb94c35c`  
		Last Modified: Fri, 25 Sep 2026 23:13:47 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ef7b6c13b857cb46b077bf59708aae58e24335ecb7864eede750f94bb8156b`  
		Last Modified: Fri, 25 Sep 2026 23:13:47 GMT  
		Size: 16.5 MB (16498405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d82a2e312fa5032bb637a55db628381053a5b504024a87f5ebea55c1dab48d0`  
		Last Modified: Sat, 26 Sep 2026 00:20:08 GMT  
		Size: 234.6 MB (234554829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b434e645b78ccd1c1a25a781649aa5e58b2f856d53fed9b5eddfb7674e45d4d`  
		Last Modified: Sat, 26 Sep 2026 00:20:04 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0c82657bd7d761e4c92e103a27b31241604187e54df6e946929c1f43c3889e`  
		Last Modified: Sat, 26 Sep 2026 01:14:15 GMT  
		Size: 13.9 MB (13935141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:407e27e35a59559df43fa244e1f01952af65e2afaeffe99196a3c5664e3676fc`  
		Last Modified: Sat, 26 Sep 2026 01:14:14 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b68a0a2acc4441b659d8c9f0bab7ea3ee06e261b944c37559ffa8e4435fe48`  
		Last Modified: Sat, 26 Sep 2026 01:14:14 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f481f2d2d634379c7134de83ff8fdc0766558dffb5eb723dd27dfe09b72741a4`  
		Last Modified: Sat, 26 Sep 2026 01:14:14 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:ddd83dffb2fb497a7c690ce8d4cdbc6f9f039dbfb9d432cc73cfba7d67ee2de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5929007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a6ee090a8040a8fbf9038e6b707fffeb2e39f58a673e614a689efd431a698a4`

```dockerfile
```

-	Layers:
	-	`sha256:b88d6acea6e5eadee32c1233a8b1235bdba3526dd383cfb08be58a44ca4f1f6e`  
		Last Modified: Sat, 26 Sep 2026 01:14:14 GMT  
		Size: 5.9 MB (5906081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d55a7cd9b7185a17a15279383570a490b59bf4895502ae780427c1f1ea20f482`  
		Last Modified: Sat, 26 Sep 2026 01:14:14 GMT  
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
$ docker pull geonetwork@sha256:15430cb53f51753263da89373b81b4b268160934db99ad2e26e838d0e9c8774a
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
$ docker pull geonetwork@sha256:01fdfa180502431cafb8ab4667793a74d75342e5748f135fb19e35c36941e08c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.0 MB (353005018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65502d2369ef8f0b30d655a4596d2782338233440f35cf37fda3b51b3ce4a0a8`
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
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:04 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:35:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:35:08 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:15:07 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 25 Sep 2026 23:15:07 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:15:07 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 25 Sep 2026 23:15:07 GMT
WORKDIR /usr/local/tomcat
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:07 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_MAJOR=9
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 25 Sep 2026 23:15:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Fri, 25 Sep 2026 23:15:40 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 25 Sep 2026 23:15:40 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 25 Sep 2026 23:15:40 GMT
ENTRYPOINT []
# Fri, 25 Sep 2026 23:15:40 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:20:57 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 00:20:57 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Sat, 26 Sep 2026 00:20:57 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 00:20:57 GMT
ENV GN_VERSION=3.12.12
# Sat, 26 Sep 2026 00:20:57 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Sat, 26 Sep 2026 00:20:57 GMT
WORKDIR /usr/local/tomcat/webapps
# Sat, 26 Sep 2026 00:23:14 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Sat, 26 Sep 2026 00:23:14 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:23:14 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:23:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Sep 2026 00:23:14 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa11cca00d94f9edf8aff00f761f71847bd1624524cbb17b8e7a06542698164`  
		Last Modified: Fri, 25 Sep 2026 22:35:21 GMT  
		Size: 17.0 MB (16967005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47072100c61c1d73b02a50f8e94a68c5bb2923a2505bfdc7d51d73a8809ed876`  
		Last Modified: Fri, 25 Sep 2026 22:35:22 GMT  
		Size: 55.2 MB (55194077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87d92c87e647a8037c3aa7a013b50bcc95919ce81bea2124c9f6d28402c24f7`  
		Last Modified: Fri, 25 Sep 2026 22:35:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e266086e3d4d553e1371b71fb1fffce28273a34c716c9cd64c0aa970b218950`  
		Last Modified: Fri, 25 Sep 2026 22:35:20 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:493884707e64bea23ff99d183f82b8cdfcf3fa998994585ab3a508237929f6d5`  
		Last Modified: Fri, 25 Sep 2026 23:15:50 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84dbab5b50b502ab591ca5a222e3236d90f7e64755c2c20ba53d7e7d2ed00f2d`  
		Last Modified: Fri, 25 Sep 2026 23:15:50 GMT  
		Size: 16.5 MB (16525808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f3d877e1cf9c3213c1b98c91fd0ad8140bc942db8084a1c5a309276b8599bb`  
		Last Modified: Sat, 26 Sep 2026 00:23:38 GMT  
		Size: 234.6 MB (234550883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f173e71b1191e21b4d7acb29c575157486e05e0640ca135ce02e97b28a9375`  
		Last Modified: Sat, 26 Sep 2026 00:23:33 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:78172da2aed0e26eb3ac8fd82503becaae77c2f1c7c42f2fe99f181b905058da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4363315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8918c84bc859b27e5d618b3981fca10031be3c01ce6f1310dbffe9e6eb2c4e86`

```dockerfile
```

-	Layers:
	-	`sha256:a18e0e303288abab1631ab5cc1fd802e74c1ac43a1323ec40c3921aed6dff588`  
		Last Modified: Sat, 26 Sep 2026 00:23:33 GMT  
		Size: 4.3 MB (4344222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33ab6b0a93a3319fbc31dcbbd313007b3c26e07aecc9695d40aa3d40e0add99d`  
		Last Modified: Sat, 26 Sep 2026 00:23:33 GMT  
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
$ docker pull geonetwork@sha256:416449898d4924e7cc4dfd7547da776cc6e44d28dccb2b27a6134456a44331cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.2 MB (351234830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:936a2b4d5978b340d9b5d42d0ec7219aa406d8c415ba620f439ee43233227d3a`
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
# Fri, 25 Sep 2026 22:34:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:40 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:34:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:13:06 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 25 Sep 2026 23:13:06 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:13:06 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 25 Sep 2026 23:13:06 GMT
WORKDIR /usr/local/tomcat
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:13:06 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_MAJOR=9
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 25 Sep 2026 23:13:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Fri, 25 Sep 2026 23:13:37 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 25 Sep 2026 23:13:37 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 25 Sep 2026 23:13:37 GMT
ENTRYPOINT []
# Fri, 25 Sep 2026 23:13:37 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:16:45 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 00:16:45 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Sat, 26 Sep 2026 00:16:45 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 00:16:45 GMT
ENV GN_VERSION=3.12.12
# Sat, 26 Sep 2026 00:16:45 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Sat, 26 Sep 2026 00:16:45 GMT
WORKDIR /usr/local/tomcat/webapps
# Sat, 26 Sep 2026 00:19:42 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Sat, 26 Sep 2026 00:19:42 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:19:42 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:19:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Sep 2026 00:19:42 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e339abc629cb61080e38b911ca39e9e7c6b0beb1d74e4bc923e86a3ae5e792c2`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 17.0 MB (16977372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bde7587076f7cbcf9c2eca1827dd2bcb0f810ce1999ad13be8210faf7834ab77`  
		Last Modified: Fri, 25 Sep 2026 22:34:57 GMT  
		Size: 54.3 MB (54259515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4759cf5ad51f90c066e0284615a247cab926e7e376c95c0ee306bcc83eb9e6`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c974c49e0692a41554cee963b1a3eec548ba3d5ad233b88158627f53caa9957`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec413b6bc583a8580b6ad11374eadc50cdf618b4ec345f540b08027eb94c35c`  
		Last Modified: Fri, 25 Sep 2026 23:13:47 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ef7b6c13b857cb46b077bf59708aae58e24335ecb7864eede750f94bb8156b`  
		Last Modified: Fri, 25 Sep 2026 23:13:47 GMT  
		Size: 16.5 MB (16498405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d82a2e312fa5032bb637a55db628381053a5b504024a87f5ebea55c1dab48d0`  
		Last Modified: Sat, 26 Sep 2026 00:20:08 GMT  
		Size: 234.6 MB (234554829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b434e645b78ccd1c1a25a781649aa5e58b2f856d53fed9b5eddfb7674e45d4d`  
		Last Modified: Sat, 26 Sep 2026 00:20:04 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:d68daec1469dfde6acc8958363766a0285e7cac397f42ddb20035d6b89cee39c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4364567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25160b1d6890d16282b47c3f7e92e44e7d13b1cc32e7236c61ae107e3c11f494`

```dockerfile
```

-	Layers:
	-	`sha256:e62d25bc00d918b5f87aa4ba9ab967a9404d352b6c31248e37d88303865c9b77`  
		Last Modified: Sat, 26 Sep 2026 00:20:04 GMT  
		Size: 4.3 MB (4345382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:876d32e32a5322c617bf8ddab9b2cc9013b994dbdce83aa07aedea92d1960343`  
		Last Modified: Sat, 26 Sep 2026 00:20:03 GMT  
		Size: 19.2 KB (19185 bytes)  
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
$ docker pull geonetwork@sha256:6f7d1486445af95f4f00020cb7fa7c57c72c0567ab1ebb25b56db2d3724dc556
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
$ docker pull geonetwork@sha256:4c90a61e94248ee73d5d1a28e847f1d216281d63c0676c503554a605f3abefd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.0 MB (366960271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5177a210b0444ca4efc5ff23d062c388ffe53d97ba304958551e6561408d4b77`
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
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:04 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:35:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:35:08 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:15:07 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 25 Sep 2026 23:15:07 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:15:07 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 25 Sep 2026 23:15:07 GMT
WORKDIR /usr/local/tomcat
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:07 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_MAJOR=9
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 25 Sep 2026 23:15:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Fri, 25 Sep 2026 23:15:40 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 25 Sep 2026 23:15:40 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 25 Sep 2026 23:15:40 GMT
ENTRYPOINT []
# Fri, 25 Sep 2026 23:15:40 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:20:57 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 00:20:57 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Sat, 26 Sep 2026 00:20:57 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 00:20:57 GMT
ENV GN_VERSION=3.12.12
# Sat, 26 Sep 2026 00:20:57 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Sat, 26 Sep 2026 00:20:57 GMT
WORKDIR /usr/local/tomcat/webapps
# Sat, 26 Sep 2026 00:23:14 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Sat, 26 Sep 2026 00:23:14 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:23:14 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:23:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Sep 2026 00:23:14 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 01:14:20 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Sat, 26 Sep 2026 01:14:20 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Sat, 26 Sep 2026 01:14:20 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 26 Sep 2026 01:14:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Sep 2026 01:14:20 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa11cca00d94f9edf8aff00f761f71847bd1624524cbb17b8e7a06542698164`  
		Last Modified: Fri, 25 Sep 2026 22:35:21 GMT  
		Size: 17.0 MB (16967005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47072100c61c1d73b02a50f8e94a68c5bb2923a2505bfdc7d51d73a8809ed876`  
		Last Modified: Fri, 25 Sep 2026 22:35:22 GMT  
		Size: 55.2 MB (55194077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87d92c87e647a8037c3aa7a013b50bcc95919ce81bea2124c9f6d28402c24f7`  
		Last Modified: Fri, 25 Sep 2026 22:35:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e266086e3d4d553e1371b71fb1fffce28273a34c716c9cd64c0aa970b218950`  
		Last Modified: Fri, 25 Sep 2026 22:35:20 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:493884707e64bea23ff99d183f82b8cdfcf3fa998994585ab3a508237929f6d5`  
		Last Modified: Fri, 25 Sep 2026 23:15:50 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84dbab5b50b502ab591ca5a222e3236d90f7e64755c2c20ba53d7e7d2ed00f2d`  
		Last Modified: Fri, 25 Sep 2026 23:15:50 GMT  
		Size: 16.5 MB (16525808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f3d877e1cf9c3213c1b98c91fd0ad8140bc942db8084a1c5a309276b8599bb`  
		Last Modified: Sat, 26 Sep 2026 00:23:38 GMT  
		Size: 234.6 MB (234550883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f173e71b1191e21b4d7acb29c575157486e05e0640ca135ce02e97b28a9375`  
		Last Modified: Sat, 26 Sep 2026 00:23:33 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13034d21c23d9441be34582fc68c66aeb3ef4f34f473295cd733a1e4b8bfce95`  
		Last Modified: Sat, 26 Sep 2026 01:14:36 GMT  
		Size: 14.0 MB (13951839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96b41ba1d58196ee79d896e3efd46d6df17eb1451a9bee85d7ebea86dcdd092`  
		Last Modified: Sat, 26 Sep 2026 01:14:35 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7a54c4c9279941fbc03ffa75a881a7921218c72e7a8d7a8847bd414db21f86`  
		Last Modified: Sat, 26 Sep 2026 01:14:35 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab008d0770459fc544416ef4bd4e0f18a3f7148fcb6b5a954f5042f13ebc789d`  
		Last Modified: Sat, 26 Sep 2026 01:14:35 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:49639cb46a650e3bb8ece3e5e56414aeaa296e4fb9ddcddfe0f2f564b0fa49f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5921687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7122bc4dd682f531a78034801b20ddae2335e0eb9171d686add260e97f05aa2`

```dockerfile
```

-	Layers:
	-	`sha256:8c54f59b616a9966ffc1c0f99a5a7563d3c6f001d5c598b5ab67d381c0e237da`  
		Last Modified: Sat, 26 Sep 2026 01:14:35 GMT  
		Size: 5.9 MB (5898869 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c545e60f29e2a63e870cdb33ed18ac273ca7283c1a15f1e83ce2d684bf23bd23`  
		Last Modified: Sat, 26 Sep 2026 01:14:35 GMT  
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
$ docker pull geonetwork@sha256:01d568a68fabf692d11521d9ee063e8f3949db72305a65be5abbf6921febfb57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.2 MB (365173377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:748486bd9dd328215a34e07463749bb38423c7378c756d9f2f83bb1222529e3b`
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
# Fri, 25 Sep 2026 22:34:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:40 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:34:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:13:06 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 25 Sep 2026 23:13:06 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:13:06 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 25 Sep 2026 23:13:06 GMT
WORKDIR /usr/local/tomcat
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:13:06 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_MAJOR=9
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 25 Sep 2026 23:13:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Fri, 25 Sep 2026 23:13:37 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 25 Sep 2026 23:13:37 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 25 Sep 2026 23:13:37 GMT
ENTRYPOINT []
# Fri, 25 Sep 2026 23:13:37 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:16:45 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 00:16:45 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Sat, 26 Sep 2026 00:16:45 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 00:16:45 GMT
ENV GN_VERSION=3.12.12
# Sat, 26 Sep 2026 00:16:45 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Sat, 26 Sep 2026 00:16:45 GMT
WORKDIR /usr/local/tomcat/webapps
# Sat, 26 Sep 2026 00:19:42 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Sat, 26 Sep 2026 00:19:42 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:19:42 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:19:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Sep 2026 00:19:42 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:13:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 01:13:59 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Sat, 26 Sep 2026 01:13:59 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Sat, 26 Sep 2026 01:13:59 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 26 Sep 2026 01:13:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Sep 2026 01:13:59 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e339abc629cb61080e38b911ca39e9e7c6b0beb1d74e4bc923e86a3ae5e792c2`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 17.0 MB (16977372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bde7587076f7cbcf9c2eca1827dd2bcb0f810ce1999ad13be8210faf7834ab77`  
		Last Modified: Fri, 25 Sep 2026 22:34:57 GMT  
		Size: 54.3 MB (54259515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4759cf5ad51f90c066e0284615a247cab926e7e376c95c0ee306bcc83eb9e6`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c974c49e0692a41554cee963b1a3eec548ba3d5ad233b88158627f53caa9957`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec413b6bc583a8580b6ad11374eadc50cdf618b4ec345f540b08027eb94c35c`  
		Last Modified: Fri, 25 Sep 2026 23:13:47 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ef7b6c13b857cb46b077bf59708aae58e24335ecb7864eede750f94bb8156b`  
		Last Modified: Fri, 25 Sep 2026 23:13:47 GMT  
		Size: 16.5 MB (16498405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d82a2e312fa5032bb637a55db628381053a5b504024a87f5ebea55c1dab48d0`  
		Last Modified: Sat, 26 Sep 2026 00:20:08 GMT  
		Size: 234.6 MB (234554829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b434e645b78ccd1c1a25a781649aa5e58b2f856d53fed9b5eddfb7674e45d4d`  
		Last Modified: Sat, 26 Sep 2026 00:20:04 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0c82657bd7d761e4c92e103a27b31241604187e54df6e946929c1f43c3889e`  
		Last Modified: Sat, 26 Sep 2026 01:14:15 GMT  
		Size: 13.9 MB (13935141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:407e27e35a59559df43fa244e1f01952af65e2afaeffe99196a3c5664e3676fc`  
		Last Modified: Sat, 26 Sep 2026 01:14:14 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b68a0a2acc4441b659d8c9f0bab7ea3ee06e261b944c37559ffa8e4435fe48`  
		Last Modified: Sat, 26 Sep 2026 01:14:14 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f481f2d2d634379c7134de83ff8fdc0766558dffb5eb723dd27dfe09b72741a4`  
		Last Modified: Sat, 26 Sep 2026 01:14:14 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:ddd83dffb2fb497a7c690ce8d4cdbc6f9f039dbfb9d432cc73cfba7d67ee2de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5929007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a6ee090a8040a8fbf9038e6b707fffeb2e39f58a673e614a689efd431a698a4`

```dockerfile
```

-	Layers:
	-	`sha256:b88d6acea6e5eadee32c1233a8b1235bdba3526dd383cfb08be58a44ca4f1f6e`  
		Last Modified: Sat, 26 Sep 2026 01:14:14 GMT  
		Size: 5.9 MB (5906081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d55a7cd9b7185a17a15279383570a490b59bf4895502ae780427c1f1ea20f482`  
		Last Modified: Sat, 26 Sep 2026 01:14:14 GMT  
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
$ docker pull geonetwork@sha256:15430cb53f51753263da89373b81b4b268160934db99ad2e26e838d0e9c8774a
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
$ docker pull geonetwork@sha256:01fdfa180502431cafb8ab4667793a74d75342e5748f135fb19e35c36941e08c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.0 MB (353005018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65502d2369ef8f0b30d655a4596d2782338233440f35cf37fda3b51b3ce4a0a8`
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
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:04 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:35:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:35:08 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:15:07 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 25 Sep 2026 23:15:07 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:15:07 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 25 Sep 2026 23:15:07 GMT
WORKDIR /usr/local/tomcat
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:07 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_MAJOR=9
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 25 Sep 2026 23:15:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Fri, 25 Sep 2026 23:15:40 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 25 Sep 2026 23:15:40 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 25 Sep 2026 23:15:40 GMT
ENTRYPOINT []
# Fri, 25 Sep 2026 23:15:40 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:20:57 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 00:20:57 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Sat, 26 Sep 2026 00:20:57 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 00:20:57 GMT
ENV GN_VERSION=3.12.12
# Sat, 26 Sep 2026 00:20:57 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Sat, 26 Sep 2026 00:20:57 GMT
WORKDIR /usr/local/tomcat/webapps
# Sat, 26 Sep 2026 00:23:14 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Sat, 26 Sep 2026 00:23:14 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:23:14 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:23:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Sep 2026 00:23:14 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa11cca00d94f9edf8aff00f761f71847bd1624524cbb17b8e7a06542698164`  
		Last Modified: Fri, 25 Sep 2026 22:35:21 GMT  
		Size: 17.0 MB (16967005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47072100c61c1d73b02a50f8e94a68c5bb2923a2505bfdc7d51d73a8809ed876`  
		Last Modified: Fri, 25 Sep 2026 22:35:22 GMT  
		Size: 55.2 MB (55194077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87d92c87e647a8037c3aa7a013b50bcc95919ce81bea2124c9f6d28402c24f7`  
		Last Modified: Fri, 25 Sep 2026 22:35:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e266086e3d4d553e1371b71fb1fffce28273a34c716c9cd64c0aa970b218950`  
		Last Modified: Fri, 25 Sep 2026 22:35:20 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:493884707e64bea23ff99d183f82b8cdfcf3fa998994585ab3a508237929f6d5`  
		Last Modified: Fri, 25 Sep 2026 23:15:50 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84dbab5b50b502ab591ca5a222e3236d90f7e64755c2c20ba53d7e7d2ed00f2d`  
		Last Modified: Fri, 25 Sep 2026 23:15:50 GMT  
		Size: 16.5 MB (16525808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f3d877e1cf9c3213c1b98c91fd0ad8140bc942db8084a1c5a309276b8599bb`  
		Last Modified: Sat, 26 Sep 2026 00:23:38 GMT  
		Size: 234.6 MB (234550883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f173e71b1191e21b4d7acb29c575157486e05e0640ca135ce02e97b28a9375`  
		Last Modified: Sat, 26 Sep 2026 00:23:33 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:78172da2aed0e26eb3ac8fd82503becaae77c2f1c7c42f2fe99f181b905058da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4363315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8918c84bc859b27e5d618b3981fca10031be3c01ce6f1310dbffe9e6eb2c4e86`

```dockerfile
```

-	Layers:
	-	`sha256:a18e0e303288abab1631ab5cc1fd802e74c1ac43a1323ec40c3921aed6dff588`  
		Last Modified: Sat, 26 Sep 2026 00:23:33 GMT  
		Size: 4.3 MB (4344222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33ab6b0a93a3319fbc31dcbbd313007b3c26e07aecc9695d40aa3d40e0add99d`  
		Last Modified: Sat, 26 Sep 2026 00:23:33 GMT  
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
$ docker pull geonetwork@sha256:416449898d4924e7cc4dfd7547da776cc6e44d28dccb2b27a6134456a44331cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.2 MB (351234830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:936a2b4d5978b340d9b5d42d0ec7219aa406d8c415ba620f439ee43233227d3a`
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
# Fri, 25 Sep 2026 22:34:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:40 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:34:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:13:06 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 25 Sep 2026 23:13:06 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:13:06 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 25 Sep 2026 23:13:06 GMT
WORKDIR /usr/local/tomcat
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:13:06 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_MAJOR=9
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 25 Sep 2026 23:13:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Fri, 25 Sep 2026 23:13:37 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 25 Sep 2026 23:13:37 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 25 Sep 2026 23:13:37 GMT
ENTRYPOINT []
# Fri, 25 Sep 2026 23:13:37 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:16:45 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 00:16:45 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Sat, 26 Sep 2026 00:16:45 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 00:16:45 GMT
ENV GN_VERSION=3.12.12
# Sat, 26 Sep 2026 00:16:45 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Sat, 26 Sep 2026 00:16:45 GMT
WORKDIR /usr/local/tomcat/webapps
# Sat, 26 Sep 2026 00:19:42 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Sat, 26 Sep 2026 00:19:42 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:19:42 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:19:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Sep 2026 00:19:42 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e339abc629cb61080e38b911ca39e9e7c6b0beb1d74e4bc923e86a3ae5e792c2`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 17.0 MB (16977372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bde7587076f7cbcf9c2eca1827dd2bcb0f810ce1999ad13be8210faf7834ab77`  
		Last Modified: Fri, 25 Sep 2026 22:34:57 GMT  
		Size: 54.3 MB (54259515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4759cf5ad51f90c066e0284615a247cab926e7e376c95c0ee306bcc83eb9e6`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c974c49e0692a41554cee963b1a3eec548ba3d5ad233b88158627f53caa9957`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec413b6bc583a8580b6ad11374eadc50cdf618b4ec345f540b08027eb94c35c`  
		Last Modified: Fri, 25 Sep 2026 23:13:47 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ef7b6c13b857cb46b077bf59708aae58e24335ecb7864eede750f94bb8156b`  
		Last Modified: Fri, 25 Sep 2026 23:13:47 GMT  
		Size: 16.5 MB (16498405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d82a2e312fa5032bb637a55db628381053a5b504024a87f5ebea55c1dab48d0`  
		Last Modified: Sat, 26 Sep 2026 00:20:08 GMT  
		Size: 234.6 MB (234554829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b434e645b78ccd1c1a25a781649aa5e58b2f856d53fed9b5eddfb7674e45d4d`  
		Last Modified: Sat, 26 Sep 2026 00:20:04 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:d68daec1469dfde6acc8958363766a0285e7cac397f42ddb20035d6b89cee39c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4364567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25160b1d6890d16282b47c3f7e92e44e7d13b1cc32e7236c61ae107e3c11f494`

```dockerfile
```

-	Layers:
	-	`sha256:e62d25bc00d918b5f87aa4ba9ab967a9404d352b6c31248e37d88303865c9b77`  
		Last Modified: Sat, 26 Sep 2026 00:20:04 GMT  
		Size: 4.3 MB (4345382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:876d32e32a5322c617bf8ddab9b2cc9013b994dbdce83aa07aedea92d1960343`  
		Last Modified: Sat, 26 Sep 2026 00:20:03 GMT  
		Size: 19.2 KB (19185 bytes)  
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
$ docker pull geonetwork@sha256:6f7d1486445af95f4f00020cb7fa7c57c72c0567ab1ebb25b56db2d3724dc556
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
$ docker pull geonetwork@sha256:4c90a61e94248ee73d5d1a28e847f1d216281d63c0676c503554a605f3abefd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.0 MB (366960271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5177a210b0444ca4efc5ff23d062c388ffe53d97ba304958551e6561408d4b77`
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
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:04 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:35:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:35:08 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:15:07 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 25 Sep 2026 23:15:07 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:15:07 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 25 Sep 2026 23:15:07 GMT
WORKDIR /usr/local/tomcat
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:07 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_MAJOR=9
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 25 Sep 2026 23:15:07 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 25 Sep 2026 23:15:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Fri, 25 Sep 2026 23:15:40 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 25 Sep 2026 23:15:40 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 25 Sep 2026 23:15:40 GMT
ENTRYPOINT []
# Fri, 25 Sep 2026 23:15:40 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:20:57 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 00:20:57 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Sat, 26 Sep 2026 00:20:57 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 00:20:57 GMT
ENV GN_VERSION=3.12.12
# Sat, 26 Sep 2026 00:20:57 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Sat, 26 Sep 2026 00:20:57 GMT
WORKDIR /usr/local/tomcat/webapps
# Sat, 26 Sep 2026 00:23:14 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Sat, 26 Sep 2026 00:23:14 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:23:14 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:23:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Sep 2026 00:23:14 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 01:14:20 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Sat, 26 Sep 2026 01:14:20 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Sat, 26 Sep 2026 01:14:20 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 26 Sep 2026 01:14:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Sep 2026 01:14:20 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa11cca00d94f9edf8aff00f761f71847bd1624524cbb17b8e7a06542698164`  
		Last Modified: Fri, 25 Sep 2026 22:35:21 GMT  
		Size: 17.0 MB (16967005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47072100c61c1d73b02a50f8e94a68c5bb2923a2505bfdc7d51d73a8809ed876`  
		Last Modified: Fri, 25 Sep 2026 22:35:22 GMT  
		Size: 55.2 MB (55194077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87d92c87e647a8037c3aa7a013b50bcc95919ce81bea2124c9f6d28402c24f7`  
		Last Modified: Fri, 25 Sep 2026 22:35:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e266086e3d4d553e1371b71fb1fffce28273a34c716c9cd64c0aa970b218950`  
		Last Modified: Fri, 25 Sep 2026 22:35:20 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:493884707e64bea23ff99d183f82b8cdfcf3fa998994585ab3a508237929f6d5`  
		Last Modified: Fri, 25 Sep 2026 23:15:50 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84dbab5b50b502ab591ca5a222e3236d90f7e64755c2c20ba53d7e7d2ed00f2d`  
		Last Modified: Fri, 25 Sep 2026 23:15:50 GMT  
		Size: 16.5 MB (16525808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f3d877e1cf9c3213c1b98c91fd0ad8140bc942db8084a1c5a309276b8599bb`  
		Last Modified: Sat, 26 Sep 2026 00:23:38 GMT  
		Size: 234.6 MB (234550883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f173e71b1191e21b4d7acb29c575157486e05e0640ca135ce02e97b28a9375`  
		Last Modified: Sat, 26 Sep 2026 00:23:33 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13034d21c23d9441be34582fc68c66aeb3ef4f34f473295cd733a1e4b8bfce95`  
		Last Modified: Sat, 26 Sep 2026 01:14:36 GMT  
		Size: 14.0 MB (13951839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96b41ba1d58196ee79d896e3efd46d6df17eb1451a9bee85d7ebea86dcdd092`  
		Last Modified: Sat, 26 Sep 2026 01:14:35 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7a54c4c9279941fbc03ffa75a881a7921218c72e7a8d7a8847bd414db21f86`  
		Last Modified: Sat, 26 Sep 2026 01:14:35 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab008d0770459fc544416ef4bd4e0f18a3f7148fcb6b5a954f5042f13ebc789d`  
		Last Modified: Sat, 26 Sep 2026 01:14:35 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12.12-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:49639cb46a650e3bb8ece3e5e56414aeaa296e4fb9ddcddfe0f2f564b0fa49f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5921687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7122bc4dd682f531a78034801b20ddae2335e0eb9171d686add260e97f05aa2`

```dockerfile
```

-	Layers:
	-	`sha256:8c54f59b616a9966ffc1c0f99a5a7563d3c6f001d5c598b5ab67d381c0e237da`  
		Last Modified: Sat, 26 Sep 2026 01:14:35 GMT  
		Size: 5.9 MB (5898869 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c545e60f29e2a63e870cdb33ed18ac273ca7283c1a15f1e83ce2d684bf23bd23`  
		Last Modified: Sat, 26 Sep 2026 01:14:35 GMT  
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
$ docker pull geonetwork@sha256:01d568a68fabf692d11521d9ee063e8f3949db72305a65be5abbf6921febfb57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.2 MB (365173377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:748486bd9dd328215a34e07463749bb38423c7378c756d9f2f83bb1222529e3b`
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
# Fri, 25 Sep 2026 22:34:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:40 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:34:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:13:06 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 25 Sep 2026 23:13:06 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:13:06 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 25 Sep 2026 23:13:06 GMT
WORKDIR /usr/local/tomcat
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:13:06 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_MAJOR=9
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 25 Sep 2026 23:13:06 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 25 Sep 2026 23:13:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Fri, 25 Sep 2026 23:13:37 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 25 Sep 2026 23:13:37 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 25 Sep 2026 23:13:37 GMT
ENTRYPOINT []
# Fri, 25 Sep 2026 23:13:37 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:16:45 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 00:16:45 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Sat, 26 Sep 2026 00:16:45 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 00:16:45 GMT
ENV GN_VERSION=3.12.12
# Sat, 26 Sep 2026 00:16:45 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Sat, 26 Sep 2026 00:16:45 GMT
WORKDIR /usr/local/tomcat/webapps
# Sat, 26 Sep 2026 00:19:42 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Sat, 26 Sep 2026 00:19:42 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:19:42 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:19:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Sep 2026 00:19:42 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:13:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 01:13:59 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Sat, 26 Sep 2026 01:13:59 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Sat, 26 Sep 2026 01:13:59 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 26 Sep 2026 01:13:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Sep 2026 01:13:59 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e339abc629cb61080e38b911ca39e9e7c6b0beb1d74e4bc923e86a3ae5e792c2`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 17.0 MB (16977372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bde7587076f7cbcf9c2eca1827dd2bcb0f810ce1999ad13be8210faf7834ab77`  
		Last Modified: Fri, 25 Sep 2026 22:34:57 GMT  
		Size: 54.3 MB (54259515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4759cf5ad51f90c066e0284615a247cab926e7e376c95c0ee306bcc83eb9e6`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c974c49e0692a41554cee963b1a3eec548ba3d5ad233b88158627f53caa9957`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec413b6bc583a8580b6ad11374eadc50cdf618b4ec345f540b08027eb94c35c`  
		Last Modified: Fri, 25 Sep 2026 23:13:47 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ef7b6c13b857cb46b077bf59708aae58e24335ecb7864eede750f94bb8156b`  
		Last Modified: Fri, 25 Sep 2026 23:13:47 GMT  
		Size: 16.5 MB (16498405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d82a2e312fa5032bb637a55db628381053a5b504024a87f5ebea55c1dab48d0`  
		Last Modified: Sat, 26 Sep 2026 00:20:08 GMT  
		Size: 234.6 MB (234554829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b434e645b78ccd1c1a25a781649aa5e58b2f856d53fed9b5eddfb7674e45d4d`  
		Last Modified: Sat, 26 Sep 2026 00:20:04 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0c82657bd7d761e4c92e103a27b31241604187e54df6e946929c1f43c3889e`  
		Last Modified: Sat, 26 Sep 2026 01:14:15 GMT  
		Size: 13.9 MB (13935141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:407e27e35a59559df43fa244e1f01952af65e2afaeffe99196a3c5664e3676fc`  
		Last Modified: Sat, 26 Sep 2026 01:14:14 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b68a0a2acc4441b659d8c9f0bab7ea3ee06e261b944c37559ffa8e4435fe48`  
		Last Modified: Sat, 26 Sep 2026 01:14:14 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f481f2d2d634379c7134de83ff8fdc0766558dffb5eb723dd27dfe09b72741a4`  
		Last Modified: Sat, 26 Sep 2026 01:14:14 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12.12-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:ddd83dffb2fb497a7c690ce8d4cdbc6f9f039dbfb9d432cc73cfba7d67ee2de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5929007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a6ee090a8040a8fbf9038e6b707fffeb2e39f58a673e614a689efd431a698a4`

```dockerfile
```

-	Layers:
	-	`sha256:b88d6acea6e5eadee32c1233a8b1235bdba3526dd383cfb08be58a44ca4f1f6e`  
		Last Modified: Sat, 26 Sep 2026 01:14:14 GMT  
		Size: 5.9 MB (5906081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d55a7cd9b7185a17a15279383570a490b59bf4895502ae780427c1f1ea20f482`  
		Last Modified: Sat, 26 Sep 2026 01:14:14 GMT  
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
$ docker pull geonetwork@sha256:d0805b94b1b250febf20542214d3b997d7bf9796311246113ea706083c4acdaf
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
$ docker pull geonetwork@sha256:951a60bcf0f54892975de93c8fddaf17b164b6ab6832dce7651cea3a9b69d57c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.5 MB (418531863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59465efca8f22521986a0fcc067d458a75754abfdedad41fdc45b02848c00a5a`
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
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:04 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:36:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:36:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 26 Sep 2026 00:20:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 26 Sep 2026 00:20:26 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 00:20:26 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 26 Sep 2026 00:20:26 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:20:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:20:26 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:20:26 GMT
ENV TOMCAT_MAJOR=9
# Sat, 26 Sep 2026 00:20:26 GMT
ENV TOMCAT_VERSION=9.0.122
# Sat, 26 Sep 2026 00:20:26 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Sat, 26 Sep 2026 00:20:48 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 26 Sep 2026 00:20:54 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 00:20:54 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 26 Sep 2026 00:20:54 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 26 Sep 2026 00:20:54 GMT
ENTRYPOINT []
# Sat, 26 Sep 2026 00:20:54 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:13 GMT
ENV DATA_DIR=/catalogue-data
# Sat, 26 Sep 2026 01:14:13 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Sat, 26 Sep 2026 01:14:13 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Sat, 26 Sep 2026 01:14:13 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 01:14:13 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Sat, 26 Sep 2026 01:14:13 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 01:14:13 GMT
ENV GN_VERSION=4.4.12
# Sat, 26 Sep 2026 01:14:13 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Sat, 26 Sep 2026 01:14:22 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Sat, 26 Sep 2026 01:14:22 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:22 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa11cca00d94f9edf8aff00f761f71847bd1624524cbb17b8e7a06542698164`  
		Last Modified: Fri, 25 Sep 2026 22:35:21 GMT  
		Size: 17.0 MB (16967005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d7577eb55fcb12329232b2d364b3f605d5ba932671ced36a30cca0cb308944`  
		Last Modified: Fri, 25 Sep 2026 22:36:17 GMT  
		Size: 47.3 MB (47336059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0577d506e23443d4beebe5bea9e99e0d7403b240d5fee559c130f9a754435ea9`  
		Last Modified: Fri, 25 Sep 2026 22:36:16 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ebc1cfea865cf2ac2b3e11d6b5957c52861b06cd043b714cfeb9320dd5522c4`  
		Last Modified: Fri, 25 Sep 2026 22:36:16 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ff74458debf7977983fbf21b72eed9a0fe399d9432878ab8982864712256f3`  
		Last Modified: Sat, 26 Sep 2026 00:20:40 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8a3bb370a8574cd0035c36aa91de24bca8a61bb00d37e55e52eb73bfe86a6f`  
		Last Modified: Sat, 26 Sep 2026 00:21:02 GMT  
		Size: 13.9 MB (13875485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0caf4ae3e2162caf750b006fd4d266da530aff73e82834357cb9e6f4efa32f`  
		Last Modified: Sat, 26 Sep 2026 00:21:02 GMT  
		Size: 225.3 KB (225311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f934f04195d6106a9d595851069454a3cb240c229b038967f083ba532a6015`  
		Last Modified: Sat, 26 Sep 2026 01:14:44 GMT  
		Size: 239.7 KB (239703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca1d31a2c036372110cf02da6625ab3e1492486be224f09fa24736ae2d08d4e`  
		Last Modified: Sat, 26 Sep 2026 01:14:50 GMT  
		Size: 310.1 MB (310117335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c77f5f4606cc2fb674ca0ff82635b67c38d0b6e21890020eb7e3a9f5cc259a`  
		Last Modified: Sat, 26 Sep 2026 01:14:44 GMT  
		Size: 317.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b81c047c2028edf1144df5e3be42614c15588846500d1e01c9d25edf95201a30`  
		Last Modified: Sat, 26 Sep 2026 01:14:44 GMT  
		Size: 3.0 KB (3010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f95f14e0c420aa9133eeb4c46f14014cf0cf2760c6e06121120a4dcb75a3b22`  
		Last Modified: Sat, 26 Sep 2026 01:14:45 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:d4430e022eb4ca4e790a9068d2c010f9aca9856d0cbfb96cfe34fcffc10c76a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4204285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c233cd9e9ddff301c55875ba73281691805bf407370d3c8d242355ec0c0eda1`

```dockerfile
```

-	Layers:
	-	`sha256:839989795153a3f82e715f0b6abf2c7d1f1dfe27c231c791dbb451715f93bed9`  
		Last Modified: Sat, 26 Sep 2026 01:14:44 GMT  
		Size: 4.2 MB (4178727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c97e0b02ac280d1979c381c3fe2dc9fcfbcc7511a506df48021c8c1aa13d885`  
		Last Modified: Sat, 26 Sep 2026 01:14:44 GMT  
		Size: 25.6 KB (25558 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:92cbaa6328a0183896f776656cae5873d06ac138fdd65e3e30eaf4e11aada714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.0 MB (412983485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9843e77afdad0cd096a004bcde754d65bbe92b81742a0ea8f1a0f0666d7b8e4f`
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
# Fri, 25 Sep 2026 22:35:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:29 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:29 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:35:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:35:32 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:15:55 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 25 Sep 2026 23:15:55 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:15:55 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 25 Sep 2026 23:15:55 GMT
WORKDIR /usr/local/tomcat
# Fri, 25 Sep 2026 23:15:55 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:55 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:55 GMT
ENV TOMCAT_MAJOR=9
# Fri, 25 Sep 2026 23:15:55 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 25 Sep 2026 23:15:55 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 25 Sep 2026 23:15:56 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 25 Sep 2026 23:16:01 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 23:16:02 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 25 Sep 2026 23:16:02 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 25 Sep 2026 23:16:02 GMT
ENTRYPOINT []
# Fri, 25 Sep 2026 23:16:02 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:13:25 GMT
ENV DATA_DIR=/catalogue-data
# Sat, 26 Sep 2026 00:13:25 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Sat, 26 Sep 2026 00:13:25 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Sat, 26 Sep 2026 00:13:25 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 00:13:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Sat, 26 Sep 2026 00:13:25 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 00:13:25 GMT
ENV GN_VERSION=4.4.12
# Sat, 26 Sep 2026 00:13:25 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Sat, 26 Sep 2026 00:13:34 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Sat, 26 Sep 2026 00:13:35 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Sat, 26 Sep 2026 00:13:35 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Sat, 26 Sep 2026 00:13:35 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:13:35 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Sat, 26 Sep 2026 00:13:35 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:13:35 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:f98fce276933dc8d40e338c8a5447d14e10d972c731f074e9fcd9f9bb629aa50`  
		Last Modified: Fri, 11 Sep 2026 13:38:53 GMT  
		Size: 26.9 MB (26894925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95f8968b01ba18649072fa4a64d227ab4038e1ada70e60676624f76d6761b9a0`  
		Last Modified: Fri, 25 Sep 2026 22:35:44 GMT  
		Size: 16.3 MB (16283738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1511597911fd4e0a3b5f26f717b4d89e2da1632f8d6412119f2928a81f8d102d`  
		Last Modified: Fri, 25 Sep 2026 22:35:45 GMT  
		Size: 45.4 MB (45444181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e64ec88cd231539d78d11753cedb1e37749613071437c4f08be35935417dde`  
		Last Modified: Fri, 25 Sep 2026 22:35:43 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:009e2287f1af12edf8cf61ad50f946773d13cef17207ba3009bb0d48d92cdd3b`  
		Last Modified: Fri, 25 Sep 2026 22:35:44 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10ce434b9c1ff246d37d5e9de41b5ae873b711ebe8fc82737de9ee232d6e35e`  
		Last Modified: Fri, 25 Sep 2026 23:16:11 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae5f8c168e4b893eb3dd915d1ab17830b23aaaa95312eeaa0c6d9d3ee000182`  
		Last Modified: Fri, 25 Sep 2026 23:16:11 GMT  
		Size: 13.8 MB (13812780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cddb455442347c5c1bf295f45b33d2bdb31ac1806fb73c66dc4cd1a7c99ccad`  
		Last Modified: Fri, 25 Sep 2026 23:16:11 GMT  
		Size: 196.9 KB (196883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc5c11f4f981b3136179a840352a9fe7650a1155c13518cabeedba2eaa796f11`  
		Last Modified: Sat, 26 Sep 2026 00:14:00 GMT  
		Size: 226.8 KB (226839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f5228e8d95bc43e2706e2f9dd1346a50e9b5b5f37e923de5bfa6e7ce3d01611`  
		Last Modified: Sat, 26 Sep 2026 00:14:06 GMT  
		Size: 310.1 MB (310117290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30d6ce9fd2e70562234d6f8a1bf4c41f08c405f1bcdaabc595994a2af61793f`  
		Last Modified: Sat, 26 Sep 2026 00:13:59 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1cec659de9fabc46d033989ea47d63bcbffad005c6db780d9fd5a298c52b6a`  
		Last Modified: Sat, 26 Sep 2026 00:14:00 GMT  
		Size: 3.0 KB (3011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c629d520fb57a17d045f11709263e30b385826dd2398d45b3759ee871df1425`  
		Last Modified: Sat, 26 Sep 2026 00:14:01 GMT  
		Size: 698.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:b9433c214ad57065bfe0b318e08af8bd9b5b1d1b5e396868238e4451da2831b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4207981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596f3451c1f3940f49f3152de45be8892ba7651fa690f9908c685ff2d0c08741`

```dockerfile
```

-	Layers:
	-	`sha256:d1267197ae792e833f6a4276c333e67c230d9f7d69a3ae9ea87f2f1a48e3e20a`  
		Last Modified: Sat, 26 Sep 2026 00:14:00 GMT  
		Size: 4.2 MB (4182330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:284a7890d839bd70e7536948cab613fb1d98e8cb12ff70ec9da03c3ca7083dd8`  
		Last Modified: Sat, 26 Sep 2026 00:13:59 GMT  
		Size: 25.7 KB (25651 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:7bd3da5545c891998f8e033db196295235f964d9d38e89aae34a5c73adbccc05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **416.0 MB (416035932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f94b685b5de0d1b804d95b16e502a7fb4636fbd0e153706505fb1757781e34ae`
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
# Fri, 25 Sep 2026 22:34:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:36 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:34:36 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:34:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 26 Sep 2026 00:16:06 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 26 Sep 2026 00:16:06 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 00:16:06 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 26 Sep 2026 00:16:09 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:16:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:16:09 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:16:09 GMT
ENV TOMCAT_MAJOR=9
# Sat, 26 Sep 2026 00:16:09 GMT
ENV TOMCAT_VERSION=9.0.122
# Sat, 26 Sep 2026 00:16:09 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Sat, 26 Sep 2026 00:16:32 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 26 Sep 2026 00:16:40 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 00:16:41 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 26 Sep 2026 00:16:41 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 26 Sep 2026 00:16:41 GMT
ENTRYPOINT []
# Sat, 26 Sep 2026 00:16:41 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:12 GMT
ENV DATA_DIR=/catalogue-data
# Sat, 26 Sep 2026 01:14:12 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Sat, 26 Sep 2026 01:14:12 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Sat, 26 Sep 2026 01:14:12 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 01:14:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Sat, 26 Sep 2026 01:14:12 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 01:14:12 GMT
ENV GN_VERSION=4.4.12
# Sat, 26 Sep 2026 01:14:12 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Sat, 26 Sep 2026 01:14:22 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Sat, 26 Sep 2026 01:14:22 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:22 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfbb616b2d1efdf3578f7daeede7ef8ff04418477ab2679ec203cc9dd2051661`  
		Last Modified: Fri, 25 Sep 2026 22:34:52 GMT  
		Size: 17.0 MB (16977396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0454d4ddb06252a60b0a228139a983578030ce9f1126ce9d5f7e103fc8b6af`  
		Last Modified: Fri, 25 Sep 2026 22:34:53 GMT  
		Size: 45.6 MB (45640229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35668e93a7a2dec90159bd7de1fea312d21e75871eecff8b8797cfdfb2941d4`  
		Last Modified: Fri, 25 Sep 2026 22:34:51 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983fdc5f52ea32fbbaea1aeda1874fb465182868e5c45af4e4b7ff4652756b5b`  
		Last Modified: Fri, 25 Sep 2026 22:34:52 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f49c6efb6ce2eb5345493ee6c9f90bde7655f90f9e474c9fb4c7f2b9366f96`  
		Last Modified: Sat, 26 Sep 2026 00:16:23 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:558301b5aefa09dee4a173ee7d4799db4ab671fac8fce08d5dcd76c3edbf6598`  
		Last Modified: Sat, 26 Sep 2026 00:16:49 GMT  
		Size: 13.9 MB (13888075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7665c92d67147e5ff1bdb4bb6620e9d0696ddabb0d5929893cfaf893531a1f56`  
		Last Modified: Sat, 26 Sep 2026 00:16:49 GMT  
		Size: 225.7 KB (225710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ccfb4f374f7a79c21f38be39c9d4dafb5edd76ea8ee69f872cd9a38e6b98c84`  
		Last Modified: Sat, 26 Sep 2026 01:14:46 GMT  
		Size: 238.8 KB (238777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43130c8fc98b4879d8a62bcd4970a5503853485888d078aafdf7f76ac487e21a`  
		Last Modified: Sat, 26 Sep 2026 01:14:52 GMT  
		Size: 310.1 MB (310117315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fffc6118358adde21e7ff458da6b2f7a23d9a645c1e8df61579fb1e03fd585d9`  
		Last Modified: Sat, 26 Sep 2026 01:14:46 GMT  
		Size: 317.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039e1564a6cffe59d09128cb5f8d625b36bc7159532b392890acc164608a7b2b`  
		Last Modified: Sat, 26 Sep 2026 01:14:46 GMT  
		Size: 3.0 KB (3009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d12f07e958df9939a798c1a2a0501d69bffcc11aee4a6d35daec98e27d74ff4`  
		Last Modified: Sat, 26 Sep 2026 01:14:47 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:99993d88f1925c19c9d225f8c97b77f97474803925fdc707ffd706e93e275be4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4205494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a34aba4b52098d8e4eeca82f4229d957e8669509b4e5a6f7e976db6371f5b8bc`

```dockerfile
```

-	Layers:
	-	`sha256:1ebc47957884289ddf783ec85dea8f27cdedd7f259f7f65610131a69867ba6f5`  
		Last Modified: Sat, 26 Sep 2026 01:14:46 GMT  
		Size: 4.2 MB (4179817 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be68a333cef471abb1a7e86a0ed61b6bdeb82c76cb48b0f185fa469903dfce1c`  
		Last Modified: Sat, 26 Sep 2026 01:14:46 GMT  
		Size: 25.7 KB (25677 bytes)  
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
$ docker pull geonetwork@sha256:d58fe59762132603a2a8cb5328f8ada191fffaa04b1f3e1850e746acaecd0c5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.3 MB (413345811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d58d71c9d219ff33174d78e859451e9c31d858bad53c247ccc7e85a5e48cf3c1`
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
# Fri, 25 Sep 2026 22:33:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:33:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:33:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:33:18 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:33:18 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:34:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:34:15 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:15:45 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 25 Sep 2026 23:15:45 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:15:45 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 25 Sep 2026 23:15:45 GMT
WORKDIR /usr/local/tomcat
# Fri, 25 Sep 2026 23:15:45 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:45 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:45 GMT
ENV TOMCAT_MAJOR=9
# Fri, 25 Sep 2026 23:15:45 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 25 Sep 2026 23:15:45 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 25 Sep 2026 23:16:50 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 25 Sep 2026 23:16:52 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 23:16:53 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 25 Sep 2026 23:16:53 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 25 Sep 2026 23:16:53 GMT
ENTRYPOINT []
# Fri, 25 Sep 2026 23:16:53 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:12:23 GMT
ENV DATA_DIR=/catalogue-data
# Sat, 26 Sep 2026 00:12:23 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Sat, 26 Sep 2026 00:12:23 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Sat, 26 Sep 2026 00:12:23 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 00:12:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Sat, 26 Sep 2026 00:12:23 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 00:12:23 GMT
ENV GN_VERSION=4.4.12
# Sat, 26 Sep 2026 00:12:23 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Sat, 26 Sep 2026 00:12:58 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Sat, 26 Sep 2026 00:12:58 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Sat, 26 Sep 2026 00:12:58 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Sat, 26 Sep 2026 00:12:58 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:12:58 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Sat, 26 Sep 2026 00:12:58 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:12:58 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:2d1aac92a29a4eacd140d431dc526f6da099043772d537d221717429ee877b2a`  
		Last Modified: Fri, 11 Sep 2026 13:39:18 GMT  
		Size: 29.9 MB (29945392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9940722e4aa6a0f59106fc47c1516a9e4898f63e8bc8012c418c802b18224b1c`  
		Last Modified: Fri, 25 Sep 2026 22:33:46 GMT  
		Size: 17.6 MB (17557112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11760ea4994341de0f76bc09d3c917143cb4b4f98d226b6468226716b61af819`  
		Last Modified: Fri, 25 Sep 2026 22:34:32 GMT  
		Size: 41.3 MB (41347362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:104d0060e1f7d8443ed5900208224705b4808b9596894166b98d41ac82e5f6fc`  
		Last Modified: Fri, 25 Sep 2026 22:34:31 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0202b7c2389d4d418e5a877589086dc02915da0dac5112280ec0d8c0d5ea6b1f`  
		Last Modified: Fri, 25 Sep 2026 22:34:31 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d54b148b5785e8c4e7cc0761057cfebeb12e8893b306beb539b07de78e19ef7`  
		Last Modified: Fri, 25 Sep 2026 23:16:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36fd12a4bff21f8e93ad12ff89ae5f8b986438879b3ff8ba5b28e5f5ac95032b`  
		Last Modified: Fri, 25 Sep 2026 23:17:06 GMT  
		Size: 13.9 MB (13887718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c51ce247cd34ce21e4c3021bae5eefd226db5a6c35ea002c0fd4a03d0f6fd38b`  
		Last Modified: Fri, 25 Sep 2026 23:17:05 GMT  
		Size: 233.3 KB (233294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c9fade6e59abe322444ad4b80fe22c113c78e648de07120364f3f1a68ba146`  
		Last Modified: Sat, 26 Sep 2026 00:13:28 GMT  
		Size: 250.7 KB (250728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a969d01576fa9355f536c6a73db60079abcefd45da5c60ade9548a857d77d9`  
		Last Modified: Sat, 26 Sep 2026 00:13:33 GMT  
		Size: 310.1 MB (310117347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f57713420646fdcf757e8f1ba70e4d14e4a0723b4f67c9f549c96692770d3bf`  
		Last Modified: Sat, 26 Sep 2026 00:13:28 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53fbfcb08fe43993d4ff02c7fc0635865761f36974967a71251b97f66d6ff8e1`  
		Last Modified: Sat, 26 Sep 2026 00:13:28 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0bce06616f68e38c40aacc61069dd96d53bfac71f1757c3f881018e2977abb0`  
		Last Modified: Sat, 26 Sep 2026 00:13:29 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:236986c60324d50a2c4e2b369648c9ad3cce738f042d1834376c74776a3d1973
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4206490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9176ed779f07d57f583a3e393dd39e1695f0431e442e840d33a1c849a5c096ea`

```dockerfile
```

-	Layers:
	-	`sha256:b6a511d405693b20ea0b4c84aa7ecea8aab980bf4214bd9a1046375f226f5444`  
		Last Modified: Sat, 26 Sep 2026 00:13:28 GMT  
		Size: 4.2 MB (4180932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b8e3848338b37f53e84fb47f3dd0e483095a5e934da2c62ea608afb8e5bca02`  
		Last Modified: Sat, 26 Sep 2026 00:13:27 GMT  
		Size: 25.6 KB (25558 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:4.2`

```console
$ docker pull geonetwork@sha256:791e7edecdc8c20d83a209ab66a9f8b82aacc9fe35a3b6985d78dc32636aab44
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
$ docker pull geonetwork@sha256:8bd396c27d8e3bfa99fa62f221368ac0a21408e3f3a8ad1b288fba7ccb9d33b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.6 MB (365590161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76171dfbe86cf6ac652320e848d1f80450be53f13fa5588753a205e0247436c8`
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
# Fri, 25 Sep 2026 22:35:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:21 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:35:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='8ca828acbe5f5b021e14a7ee67c6af36bd0ac50681f1ccdd62352afab947e9cb';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:35:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 26 Sep 2026 00:20:56 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 26 Sep 2026 00:20:56 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 00:20:56 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 26 Sep 2026 00:20:56 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:20:56 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:20:56 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:20:56 GMT
ENV TOMCAT_MAJOR=9
# Sat, 26 Sep 2026 00:20:56 GMT
ENV TOMCAT_VERSION=9.0.122
# Sat, 26 Sep 2026 00:20:56 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Sat, 26 Sep 2026 00:20:56 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 26 Sep 2026 00:21:03 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 00:21:04 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 26 Sep 2026 00:21:04 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 26 Sep 2026 00:21:04 GMT
ENTRYPOINT []
# Sat, 26 Sep 2026 00:21:04 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:13 GMT
ENV DATA_DIR=/catalogue-data
# Sat, 26 Sep 2026 01:14:13 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Sat, 26 Sep 2026 01:14:13 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Sat, 26 Sep 2026 01:14:13 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 01:14:13 GMT
ENV GN_VERSION=4.2.17
# Sat, 26 Sep 2026 01:14:13 GMT
ENV GN_DOWNLOAD_SHA256=0b065e07ef9b1ff6116c8b10e54f02b9705ea72a154cdcc5a13768667439705b
# Sat, 26 Sep 2026 01:17:21 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Sat, 26 Sep 2026 01:17:21 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Sat, 26 Sep 2026 01:17:21 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 01:17:21 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Sat, 26 Sep 2026 01:17:21 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:17:21 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bcd501e84c0668c8b9962e25c22e8ce0daec14f199370ac05ed605cdcda205`  
		Last Modified: Fri, 25 Sep 2026 22:35:35 GMT  
		Size: 17.0 MB (16967008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc5dfb04fca1910cefa19285f00a7d7eb914b57daedeaa3f712b25f67a2e5356`  
		Last Modified: Fri, 25 Sep 2026 22:35:35 GMT  
		Size: 42.3 MB (42335092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:471d8ab28f5c64c978dc4433e988131e374be425ed66560f19f9f969a0be5b22`  
		Last Modified: Fri, 25 Sep 2026 22:35:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05899d1f4073ccaf6b3c34d8620873b31f383667553e7516f548726d81ae7fab`  
		Last Modified: Fri, 25 Sep 2026 22:35:34 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853c1371f4b8ab94a8891245292dd985110b0bf83c6d9b5bf34fa496f24de2ab`  
		Last Modified: Sat, 26 Sep 2026 00:21:12 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad604f9e336e97a982ba685372810c59d570d02bd525b29895c0b646dbe46bf1`  
		Last Modified: Sat, 26 Sep 2026 00:21:13 GMT  
		Size: 13.9 MB (13874811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c14ccf3a0c096fb9513b2bcc61b8013737b3983a1cc6f730667a0e7ed755b5b`  
		Last Modified: Sat, 26 Sep 2026 00:21:12 GMT  
		Size: 225.4 KB (225415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb35efe47303b5d201886926d0bb80362f1cda749fb81993abaf0f0c2337a959`  
		Last Modified: Sat, 26 Sep 2026 01:17:42 GMT  
		Size: 239.6 KB (239640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282b88f5928b0b813de78e66991e2c3f8d0dc5f8729ad134a55f823a27f2a73a`  
		Last Modified: Sat, 26 Sep 2026 01:17:47 GMT  
		Size: 262.2 MB (262178784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0055c7308b88a22bb441d31d3b7460eb8063f4cb6de4a91819cc6c6a4046203c`  
		Last Modified: Sat, 26 Sep 2026 01:17:42 GMT  
		Size: 1.5 KB (1500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:646edf089408606b81b1871e3544cde5f48114d1695a2142ac9e21d20fe9836a`  
		Last Modified: Sat, 26 Sep 2026 01:17:42 GMT  
		Size: 999.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2` - unknown; unknown

```console
$ docker pull geonetwork@sha256:094f125126221512095d26cf6fce9166294e9aa60e81a75c3b2fd165c0b1eea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4187762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77a45f92d61d969e0c9f4053a8c3a8003a5606029aa5dd2343ebaf190ab7e954`

```dockerfile
```

-	Layers:
	-	`sha256:6b99577461ce5914b0e55c25c1025203b7d92c99400eb614345544d4b5a2c2cc`  
		Last Modified: Sat, 26 Sep 2026 01:17:42 GMT  
		Size: 4.2 MB (4165958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d36070c4c4f8020a8e69644dec579762cfbb40915fbb21f781e40b396e7baa1b`  
		Last Modified: Sat, 26 Sep 2026 01:17:42 GMT  
		Size: 21.8 KB (21804 bytes)  
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
$ docker pull geonetwork@sha256:3df0fd812a58333b710dc4387c781ab8d3ca36da05493423706439e6df10a60e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.8 MB (363750445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bdabf38cea25bb825ce93e3422c33f34afc15832dc43c34e8e4b4fbd17f0e8f`
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
# Fri, 25 Sep 2026 22:35:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:13 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:13 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:35:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='8ca828acbe5f5b021e14a7ee67c6af36bd0ac50681f1ccdd62352afab947e9cb';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:35:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 26 Sep 2026 00:16:42 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 26 Sep 2026 00:16:42 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 00:16:42 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 26 Sep 2026 00:16:42 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:16:42 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:16:42 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:16:42 GMT
ENV TOMCAT_MAJOR=9
# Sat, 26 Sep 2026 00:16:42 GMT
ENV TOMCAT_VERSION=9.0.122
# Sat, 26 Sep 2026 00:16:42 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Sat, 26 Sep 2026 00:16:43 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 26 Sep 2026 00:16:50 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 00:16:51 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 26 Sep 2026 00:16:51 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 26 Sep 2026 00:16:51 GMT
ENTRYPOINT []
# Sat, 26 Sep 2026 00:16:51 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:05 GMT
ENV DATA_DIR=/catalogue-data
# Sat, 26 Sep 2026 01:14:05 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Sat, 26 Sep 2026 01:14:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Sat, 26 Sep 2026 01:14:05 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 01:14:05 GMT
ENV GN_VERSION=4.2.17
# Sat, 26 Sep 2026 01:14:05 GMT
ENV GN_DOWNLOAD_SHA256=0b065e07ef9b1ff6116c8b10e54f02b9705ea72a154cdcc5a13768667439705b
# Sat, 26 Sep 2026 01:17:06 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Sat, 26 Sep 2026 01:17:06 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Sat, 26 Sep 2026 01:17:06 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 01:17:06 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Sat, 26 Sep 2026 01:17:06 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:17:06 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e0035b7e45a81e60690afb8f7160f988b3c03e3fb7dbbf238e383fe51828e40`  
		Last Modified: Fri, 25 Sep 2026 22:35:27 GMT  
		Size: 17.0 MB (16977369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e4768f35c7c4b63cb14c86a004beeb934527cd09e799b5b3c5a675d01effc5f`  
		Last Modified: Fri, 25 Sep 2026 22:35:28 GMT  
		Size: 41.3 MB (41296205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd3304a3c8a45651bf008b71ae0e1c3b551c2ab3432769964daa6600741d2c4`  
		Last Modified: Fri, 25 Sep 2026 22:35:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb6f7c78f9ea4361adb9496e3505dae38be00a2cb73f69c76888d2b3ff2496b`  
		Last Modified: Fri, 25 Sep 2026 22:35:26 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3778eecae8844ff57c3b1b242867972eb17284e58626cf4454de3c55312fbac5`  
		Last Modified: Sat, 26 Sep 2026 00:17:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3193817acfd0924833b9c0d8d532ea3f3353e9c8698013283ed9a850d8e766`  
		Last Modified: Sat, 26 Sep 2026 00:17:00 GMT  
		Size: 13.9 MB (13886742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199404ea6d3640239b6300d13e1b3c873724df75a9d9f9cf550a08742d7f568f`  
		Last Modified: Sat, 26 Sep 2026 00:17:00 GMT  
		Size: 225.7 KB (225727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c216b8770c4affec2f9b1f67512cf513e5287023ade2912f5f90f31dcc5298b0`  
		Last Modified: Sat, 26 Sep 2026 01:17:27 GMT  
		Size: 238.7 KB (238716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41a2351faae92cf0ebdb8c42b1f247b175a4aa6e3bfbe51a79a1e2b05c0ebb6`  
		Last Modified: Sat, 26 Sep 2026 01:17:33 GMT  
		Size: 262.2 MB (262178808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3402b7cb315edf50e0f846580c0bb64de6363456dd09c74442e3f97c10b8500c`  
		Last Modified: Sat, 26 Sep 2026 01:17:27 GMT  
		Size: 1.5 KB (1503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a778619d8cc659c18285e686ffe7fdfd8cdcfd0e7c8d67901140bf6b17b2982f`  
		Last Modified: Sat, 26 Sep 2026 01:17:27 GMT  
		Size: 998.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2` - unknown; unknown

```console
$ docker pull geonetwork@sha256:5a2b4750b3815287b911c555253fe2d87ef0d207f1231c1e0e0032894b9705f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4188998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c984cc6f9de50f0fe5ac54174903256efc4e83a3f92d7fc08f2251b6fdf41c63`

```dockerfile
```

-	Layers:
	-	`sha256:254dbe39e2bd8d8e1fd6a96cf8c833a17bcdb55c7bb261b2e0d098a69bb7dd07`  
		Last Modified: Sat, 26 Sep 2026 01:17:27 GMT  
		Size: 4.2 MB (4167098 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:527d30a5d05d6d83f923f39a274445c4b30648b4a5eea5d27933934a2ffa5e51`  
		Last Modified: Sat, 26 Sep 2026 01:17:27 GMT  
		Size: 21.9 KB (21900 bytes)  
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
$ docker pull geonetwork@sha256:791e7edecdc8c20d83a209ab66a9f8b82aacc9fe35a3b6985d78dc32636aab44
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
$ docker pull geonetwork@sha256:8bd396c27d8e3bfa99fa62f221368ac0a21408e3f3a8ad1b288fba7ccb9d33b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.6 MB (365590161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76171dfbe86cf6ac652320e848d1f80450be53f13fa5588753a205e0247436c8`
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
# Fri, 25 Sep 2026 22:35:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:21 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:35:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='8ca828acbe5f5b021e14a7ee67c6af36bd0ac50681f1ccdd62352afab947e9cb';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:35:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 26 Sep 2026 00:20:56 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 26 Sep 2026 00:20:56 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 00:20:56 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 26 Sep 2026 00:20:56 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:20:56 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:20:56 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:20:56 GMT
ENV TOMCAT_MAJOR=9
# Sat, 26 Sep 2026 00:20:56 GMT
ENV TOMCAT_VERSION=9.0.122
# Sat, 26 Sep 2026 00:20:56 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Sat, 26 Sep 2026 00:20:56 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 26 Sep 2026 00:21:03 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 00:21:04 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 26 Sep 2026 00:21:04 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 26 Sep 2026 00:21:04 GMT
ENTRYPOINT []
# Sat, 26 Sep 2026 00:21:04 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:13 GMT
ENV DATA_DIR=/catalogue-data
# Sat, 26 Sep 2026 01:14:13 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Sat, 26 Sep 2026 01:14:13 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Sat, 26 Sep 2026 01:14:13 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 01:14:13 GMT
ENV GN_VERSION=4.2.17
# Sat, 26 Sep 2026 01:14:13 GMT
ENV GN_DOWNLOAD_SHA256=0b065e07ef9b1ff6116c8b10e54f02b9705ea72a154cdcc5a13768667439705b
# Sat, 26 Sep 2026 01:17:21 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Sat, 26 Sep 2026 01:17:21 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Sat, 26 Sep 2026 01:17:21 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 01:17:21 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Sat, 26 Sep 2026 01:17:21 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:17:21 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bcd501e84c0668c8b9962e25c22e8ce0daec14f199370ac05ed605cdcda205`  
		Last Modified: Fri, 25 Sep 2026 22:35:35 GMT  
		Size: 17.0 MB (16967008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc5dfb04fca1910cefa19285f00a7d7eb914b57daedeaa3f712b25f67a2e5356`  
		Last Modified: Fri, 25 Sep 2026 22:35:35 GMT  
		Size: 42.3 MB (42335092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:471d8ab28f5c64c978dc4433e988131e374be425ed66560f19f9f969a0be5b22`  
		Last Modified: Fri, 25 Sep 2026 22:35:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05899d1f4073ccaf6b3c34d8620873b31f383667553e7516f548726d81ae7fab`  
		Last Modified: Fri, 25 Sep 2026 22:35:34 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853c1371f4b8ab94a8891245292dd985110b0bf83c6d9b5bf34fa496f24de2ab`  
		Last Modified: Sat, 26 Sep 2026 00:21:12 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad604f9e336e97a982ba685372810c59d570d02bd525b29895c0b646dbe46bf1`  
		Last Modified: Sat, 26 Sep 2026 00:21:13 GMT  
		Size: 13.9 MB (13874811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c14ccf3a0c096fb9513b2bcc61b8013737b3983a1cc6f730667a0e7ed755b5b`  
		Last Modified: Sat, 26 Sep 2026 00:21:12 GMT  
		Size: 225.4 KB (225415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb35efe47303b5d201886926d0bb80362f1cda749fb81993abaf0f0c2337a959`  
		Last Modified: Sat, 26 Sep 2026 01:17:42 GMT  
		Size: 239.6 KB (239640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282b88f5928b0b813de78e66991e2c3f8d0dc5f8729ad134a55f823a27f2a73a`  
		Last Modified: Sat, 26 Sep 2026 01:17:47 GMT  
		Size: 262.2 MB (262178784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0055c7308b88a22bb441d31d3b7460eb8063f4cb6de4a91819cc6c6a4046203c`  
		Last Modified: Sat, 26 Sep 2026 01:17:42 GMT  
		Size: 1.5 KB (1500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:646edf089408606b81b1871e3544cde5f48114d1695a2142ac9e21d20fe9836a`  
		Last Modified: Sat, 26 Sep 2026 01:17:42 GMT  
		Size: 999.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2.17` - unknown; unknown

```console
$ docker pull geonetwork@sha256:094f125126221512095d26cf6fce9166294e9aa60e81a75c3b2fd165c0b1eea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4187762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77a45f92d61d969e0c9f4053a8c3a8003a5606029aa5dd2343ebaf190ab7e954`

```dockerfile
```

-	Layers:
	-	`sha256:6b99577461ce5914b0e55c25c1025203b7d92c99400eb614345544d4b5a2c2cc`  
		Last Modified: Sat, 26 Sep 2026 01:17:42 GMT  
		Size: 4.2 MB (4165958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d36070c4c4f8020a8e69644dec579762cfbb40915fbb21f781e40b396e7baa1b`  
		Last Modified: Sat, 26 Sep 2026 01:17:42 GMT  
		Size: 21.8 KB (21804 bytes)  
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
$ docker pull geonetwork@sha256:3df0fd812a58333b710dc4387c781ab8d3ca36da05493423706439e6df10a60e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.8 MB (363750445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bdabf38cea25bb825ce93e3422c33f34afc15832dc43c34e8e4b4fbd17f0e8f`
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
# Fri, 25 Sep 2026 22:35:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:13 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:13 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:35:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='8ca828acbe5f5b021e14a7ee67c6af36bd0ac50681f1ccdd62352afab947e9cb';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:35:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 26 Sep 2026 00:16:42 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 26 Sep 2026 00:16:42 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 00:16:42 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 26 Sep 2026 00:16:42 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:16:42 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:16:42 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:16:42 GMT
ENV TOMCAT_MAJOR=9
# Sat, 26 Sep 2026 00:16:42 GMT
ENV TOMCAT_VERSION=9.0.122
# Sat, 26 Sep 2026 00:16:42 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Sat, 26 Sep 2026 00:16:43 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 26 Sep 2026 00:16:50 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 00:16:51 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 26 Sep 2026 00:16:51 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 26 Sep 2026 00:16:51 GMT
ENTRYPOINT []
# Sat, 26 Sep 2026 00:16:51 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:05 GMT
ENV DATA_DIR=/catalogue-data
# Sat, 26 Sep 2026 01:14:05 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Sat, 26 Sep 2026 01:14:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Sat, 26 Sep 2026 01:14:05 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 01:14:05 GMT
ENV GN_VERSION=4.2.17
# Sat, 26 Sep 2026 01:14:05 GMT
ENV GN_DOWNLOAD_SHA256=0b065e07ef9b1ff6116c8b10e54f02b9705ea72a154cdcc5a13768667439705b
# Sat, 26 Sep 2026 01:17:06 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Sat, 26 Sep 2026 01:17:06 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Sat, 26 Sep 2026 01:17:06 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 01:17:06 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Sat, 26 Sep 2026 01:17:06 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:17:06 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e0035b7e45a81e60690afb8f7160f988b3c03e3fb7dbbf238e383fe51828e40`  
		Last Modified: Fri, 25 Sep 2026 22:35:27 GMT  
		Size: 17.0 MB (16977369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e4768f35c7c4b63cb14c86a004beeb934527cd09e799b5b3c5a675d01effc5f`  
		Last Modified: Fri, 25 Sep 2026 22:35:28 GMT  
		Size: 41.3 MB (41296205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd3304a3c8a45651bf008b71ae0e1c3b551c2ab3432769964daa6600741d2c4`  
		Last Modified: Fri, 25 Sep 2026 22:35:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb6f7c78f9ea4361adb9496e3505dae38be00a2cb73f69c76888d2b3ff2496b`  
		Last Modified: Fri, 25 Sep 2026 22:35:26 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3778eecae8844ff57c3b1b242867972eb17284e58626cf4454de3c55312fbac5`  
		Last Modified: Sat, 26 Sep 2026 00:17:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3193817acfd0924833b9c0d8d532ea3f3353e9c8698013283ed9a850d8e766`  
		Last Modified: Sat, 26 Sep 2026 00:17:00 GMT  
		Size: 13.9 MB (13886742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199404ea6d3640239b6300d13e1b3c873724df75a9d9f9cf550a08742d7f568f`  
		Last Modified: Sat, 26 Sep 2026 00:17:00 GMT  
		Size: 225.7 KB (225727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c216b8770c4affec2f9b1f67512cf513e5287023ade2912f5f90f31dcc5298b0`  
		Last Modified: Sat, 26 Sep 2026 01:17:27 GMT  
		Size: 238.7 KB (238716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41a2351faae92cf0ebdb8c42b1f247b175a4aa6e3bfbe51a79a1e2b05c0ebb6`  
		Last Modified: Sat, 26 Sep 2026 01:17:33 GMT  
		Size: 262.2 MB (262178808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3402b7cb315edf50e0f846580c0bb64de6363456dd09c74442e3f97c10b8500c`  
		Last Modified: Sat, 26 Sep 2026 01:17:27 GMT  
		Size: 1.5 KB (1503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a778619d8cc659c18285e686ffe7fdfd8cdcfd0e7c8d67901140bf6b17b2982f`  
		Last Modified: Sat, 26 Sep 2026 01:17:27 GMT  
		Size: 998.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2.17` - unknown; unknown

```console
$ docker pull geonetwork@sha256:5a2b4750b3815287b911c555253fe2d87ef0d207f1231c1e0e0032894b9705f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4188998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c984cc6f9de50f0fe5ac54174903256efc4e83a3f92d7fc08f2251b6fdf41c63`

```dockerfile
```

-	Layers:
	-	`sha256:254dbe39e2bd8d8e1fd6a96cf8c833a17bcdb55c7bb261b2e0d098a69bb7dd07`  
		Last Modified: Sat, 26 Sep 2026 01:17:27 GMT  
		Size: 4.2 MB (4167098 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:527d30a5d05d6d83f923f39a274445c4b30648b4a5eea5d27933934a2ffa5e51`  
		Last Modified: Sat, 26 Sep 2026 01:17:27 GMT  
		Size: 21.9 KB (21900 bytes)  
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
$ docker pull geonetwork@sha256:d0805b94b1b250febf20542214d3b997d7bf9796311246113ea706083c4acdaf
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
$ docker pull geonetwork@sha256:951a60bcf0f54892975de93c8fddaf17b164b6ab6832dce7651cea3a9b69d57c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.5 MB (418531863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59465efca8f22521986a0fcc067d458a75754abfdedad41fdc45b02848c00a5a`
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
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:04 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:36:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:36:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 26 Sep 2026 00:20:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 26 Sep 2026 00:20:26 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 00:20:26 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 26 Sep 2026 00:20:26 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:20:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:20:26 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:20:26 GMT
ENV TOMCAT_MAJOR=9
# Sat, 26 Sep 2026 00:20:26 GMT
ENV TOMCAT_VERSION=9.0.122
# Sat, 26 Sep 2026 00:20:26 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Sat, 26 Sep 2026 00:20:48 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 26 Sep 2026 00:20:54 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 00:20:54 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 26 Sep 2026 00:20:54 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 26 Sep 2026 00:20:54 GMT
ENTRYPOINT []
# Sat, 26 Sep 2026 00:20:54 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:13 GMT
ENV DATA_DIR=/catalogue-data
# Sat, 26 Sep 2026 01:14:13 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Sat, 26 Sep 2026 01:14:13 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Sat, 26 Sep 2026 01:14:13 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 01:14:13 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Sat, 26 Sep 2026 01:14:13 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 01:14:13 GMT
ENV GN_VERSION=4.4.12
# Sat, 26 Sep 2026 01:14:13 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Sat, 26 Sep 2026 01:14:22 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Sat, 26 Sep 2026 01:14:22 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:22 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa11cca00d94f9edf8aff00f761f71847bd1624524cbb17b8e7a06542698164`  
		Last Modified: Fri, 25 Sep 2026 22:35:21 GMT  
		Size: 17.0 MB (16967005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d7577eb55fcb12329232b2d364b3f605d5ba932671ced36a30cca0cb308944`  
		Last Modified: Fri, 25 Sep 2026 22:36:17 GMT  
		Size: 47.3 MB (47336059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0577d506e23443d4beebe5bea9e99e0d7403b240d5fee559c130f9a754435ea9`  
		Last Modified: Fri, 25 Sep 2026 22:36:16 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ebc1cfea865cf2ac2b3e11d6b5957c52861b06cd043b714cfeb9320dd5522c4`  
		Last Modified: Fri, 25 Sep 2026 22:36:16 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ff74458debf7977983fbf21b72eed9a0fe399d9432878ab8982864712256f3`  
		Last Modified: Sat, 26 Sep 2026 00:20:40 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8a3bb370a8574cd0035c36aa91de24bca8a61bb00d37e55e52eb73bfe86a6f`  
		Last Modified: Sat, 26 Sep 2026 00:21:02 GMT  
		Size: 13.9 MB (13875485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0caf4ae3e2162caf750b006fd4d266da530aff73e82834357cb9e6f4efa32f`  
		Last Modified: Sat, 26 Sep 2026 00:21:02 GMT  
		Size: 225.3 KB (225311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f934f04195d6106a9d595851069454a3cb240c229b038967f083ba532a6015`  
		Last Modified: Sat, 26 Sep 2026 01:14:44 GMT  
		Size: 239.7 KB (239703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca1d31a2c036372110cf02da6625ab3e1492486be224f09fa24736ae2d08d4e`  
		Last Modified: Sat, 26 Sep 2026 01:14:50 GMT  
		Size: 310.1 MB (310117335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c77f5f4606cc2fb674ca0ff82635b67c38d0b6e21890020eb7e3a9f5cc259a`  
		Last Modified: Sat, 26 Sep 2026 01:14:44 GMT  
		Size: 317.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b81c047c2028edf1144df5e3be42614c15588846500d1e01c9d25edf95201a30`  
		Last Modified: Sat, 26 Sep 2026 01:14:44 GMT  
		Size: 3.0 KB (3010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f95f14e0c420aa9133eeb4c46f14014cf0cf2760c6e06121120a4dcb75a3b22`  
		Last Modified: Sat, 26 Sep 2026 01:14:45 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:d4430e022eb4ca4e790a9068d2c010f9aca9856d0cbfb96cfe34fcffc10c76a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4204285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c233cd9e9ddff301c55875ba73281691805bf407370d3c8d242355ec0c0eda1`

```dockerfile
```

-	Layers:
	-	`sha256:839989795153a3f82e715f0b6abf2c7d1f1dfe27c231c791dbb451715f93bed9`  
		Last Modified: Sat, 26 Sep 2026 01:14:44 GMT  
		Size: 4.2 MB (4178727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c97e0b02ac280d1979c381c3fe2dc9fcfbcc7511a506df48021c8c1aa13d885`  
		Last Modified: Sat, 26 Sep 2026 01:14:44 GMT  
		Size: 25.6 KB (25558 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.4` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:92cbaa6328a0183896f776656cae5873d06ac138fdd65e3e30eaf4e11aada714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.0 MB (412983485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9843e77afdad0cd096a004bcde754d65bbe92b81742a0ea8f1a0f0666d7b8e4f`
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
# Fri, 25 Sep 2026 22:35:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:29 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:29 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:35:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:35:32 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:15:55 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 25 Sep 2026 23:15:55 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:15:55 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 25 Sep 2026 23:15:55 GMT
WORKDIR /usr/local/tomcat
# Fri, 25 Sep 2026 23:15:55 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:55 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:55 GMT
ENV TOMCAT_MAJOR=9
# Fri, 25 Sep 2026 23:15:55 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 25 Sep 2026 23:15:55 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 25 Sep 2026 23:15:56 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 25 Sep 2026 23:16:01 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 23:16:02 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 25 Sep 2026 23:16:02 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 25 Sep 2026 23:16:02 GMT
ENTRYPOINT []
# Fri, 25 Sep 2026 23:16:02 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:13:25 GMT
ENV DATA_DIR=/catalogue-data
# Sat, 26 Sep 2026 00:13:25 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Sat, 26 Sep 2026 00:13:25 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Sat, 26 Sep 2026 00:13:25 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 00:13:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Sat, 26 Sep 2026 00:13:25 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 00:13:25 GMT
ENV GN_VERSION=4.4.12
# Sat, 26 Sep 2026 00:13:25 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Sat, 26 Sep 2026 00:13:34 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Sat, 26 Sep 2026 00:13:35 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Sat, 26 Sep 2026 00:13:35 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Sat, 26 Sep 2026 00:13:35 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:13:35 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Sat, 26 Sep 2026 00:13:35 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:13:35 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:f98fce276933dc8d40e338c8a5447d14e10d972c731f074e9fcd9f9bb629aa50`  
		Last Modified: Fri, 11 Sep 2026 13:38:53 GMT  
		Size: 26.9 MB (26894925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95f8968b01ba18649072fa4a64d227ab4038e1ada70e60676624f76d6761b9a0`  
		Last Modified: Fri, 25 Sep 2026 22:35:44 GMT  
		Size: 16.3 MB (16283738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1511597911fd4e0a3b5f26f717b4d89e2da1632f8d6412119f2928a81f8d102d`  
		Last Modified: Fri, 25 Sep 2026 22:35:45 GMT  
		Size: 45.4 MB (45444181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e64ec88cd231539d78d11753cedb1e37749613071437c4f08be35935417dde`  
		Last Modified: Fri, 25 Sep 2026 22:35:43 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:009e2287f1af12edf8cf61ad50f946773d13cef17207ba3009bb0d48d92cdd3b`  
		Last Modified: Fri, 25 Sep 2026 22:35:44 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10ce434b9c1ff246d37d5e9de41b5ae873b711ebe8fc82737de9ee232d6e35e`  
		Last Modified: Fri, 25 Sep 2026 23:16:11 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae5f8c168e4b893eb3dd915d1ab17830b23aaaa95312eeaa0c6d9d3ee000182`  
		Last Modified: Fri, 25 Sep 2026 23:16:11 GMT  
		Size: 13.8 MB (13812780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cddb455442347c5c1bf295f45b33d2bdb31ac1806fb73c66dc4cd1a7c99ccad`  
		Last Modified: Fri, 25 Sep 2026 23:16:11 GMT  
		Size: 196.9 KB (196883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc5c11f4f981b3136179a840352a9fe7650a1155c13518cabeedba2eaa796f11`  
		Last Modified: Sat, 26 Sep 2026 00:14:00 GMT  
		Size: 226.8 KB (226839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f5228e8d95bc43e2706e2f9dd1346a50e9b5b5f37e923de5bfa6e7ce3d01611`  
		Last Modified: Sat, 26 Sep 2026 00:14:06 GMT  
		Size: 310.1 MB (310117290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30d6ce9fd2e70562234d6f8a1bf4c41f08c405f1bcdaabc595994a2af61793f`  
		Last Modified: Sat, 26 Sep 2026 00:13:59 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1cec659de9fabc46d033989ea47d63bcbffad005c6db780d9fd5a298c52b6a`  
		Last Modified: Sat, 26 Sep 2026 00:14:00 GMT  
		Size: 3.0 KB (3011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c629d520fb57a17d045f11709263e30b385826dd2398d45b3759ee871df1425`  
		Last Modified: Sat, 26 Sep 2026 00:14:01 GMT  
		Size: 698.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:b9433c214ad57065bfe0b318e08af8bd9b5b1d1b5e396868238e4451da2831b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4207981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596f3451c1f3940f49f3152de45be8892ba7651fa690f9908c685ff2d0c08741`

```dockerfile
```

-	Layers:
	-	`sha256:d1267197ae792e833f6a4276c333e67c230d9f7d69a3ae9ea87f2f1a48e3e20a`  
		Last Modified: Sat, 26 Sep 2026 00:14:00 GMT  
		Size: 4.2 MB (4182330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:284a7890d839bd70e7536948cab613fb1d98e8cb12ff70ec9da03c3ca7083dd8`  
		Last Modified: Sat, 26 Sep 2026 00:13:59 GMT  
		Size: 25.7 KB (25651 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.4` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:7bd3da5545c891998f8e033db196295235f964d9d38e89aae34a5c73adbccc05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **416.0 MB (416035932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f94b685b5de0d1b804d95b16e502a7fb4636fbd0e153706505fb1757781e34ae`
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
# Fri, 25 Sep 2026 22:34:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:36 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:34:36 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:34:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 26 Sep 2026 00:16:06 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 26 Sep 2026 00:16:06 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 00:16:06 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 26 Sep 2026 00:16:09 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:16:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:16:09 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:16:09 GMT
ENV TOMCAT_MAJOR=9
# Sat, 26 Sep 2026 00:16:09 GMT
ENV TOMCAT_VERSION=9.0.122
# Sat, 26 Sep 2026 00:16:09 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Sat, 26 Sep 2026 00:16:32 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 26 Sep 2026 00:16:40 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 00:16:41 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 26 Sep 2026 00:16:41 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 26 Sep 2026 00:16:41 GMT
ENTRYPOINT []
# Sat, 26 Sep 2026 00:16:41 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:12 GMT
ENV DATA_DIR=/catalogue-data
# Sat, 26 Sep 2026 01:14:12 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Sat, 26 Sep 2026 01:14:12 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Sat, 26 Sep 2026 01:14:12 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 01:14:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Sat, 26 Sep 2026 01:14:12 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 01:14:12 GMT
ENV GN_VERSION=4.4.12
# Sat, 26 Sep 2026 01:14:12 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Sat, 26 Sep 2026 01:14:22 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Sat, 26 Sep 2026 01:14:22 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:22 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfbb616b2d1efdf3578f7daeede7ef8ff04418477ab2679ec203cc9dd2051661`  
		Last Modified: Fri, 25 Sep 2026 22:34:52 GMT  
		Size: 17.0 MB (16977396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0454d4ddb06252a60b0a228139a983578030ce9f1126ce9d5f7e103fc8b6af`  
		Last Modified: Fri, 25 Sep 2026 22:34:53 GMT  
		Size: 45.6 MB (45640229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35668e93a7a2dec90159bd7de1fea312d21e75871eecff8b8797cfdfb2941d4`  
		Last Modified: Fri, 25 Sep 2026 22:34:51 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983fdc5f52ea32fbbaea1aeda1874fb465182868e5c45af4e4b7ff4652756b5b`  
		Last Modified: Fri, 25 Sep 2026 22:34:52 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f49c6efb6ce2eb5345493ee6c9f90bde7655f90f9e474c9fb4c7f2b9366f96`  
		Last Modified: Sat, 26 Sep 2026 00:16:23 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:558301b5aefa09dee4a173ee7d4799db4ab671fac8fce08d5dcd76c3edbf6598`  
		Last Modified: Sat, 26 Sep 2026 00:16:49 GMT  
		Size: 13.9 MB (13888075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7665c92d67147e5ff1bdb4bb6620e9d0696ddabb0d5929893cfaf893531a1f56`  
		Last Modified: Sat, 26 Sep 2026 00:16:49 GMT  
		Size: 225.7 KB (225710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ccfb4f374f7a79c21f38be39c9d4dafb5edd76ea8ee69f872cd9a38e6b98c84`  
		Last Modified: Sat, 26 Sep 2026 01:14:46 GMT  
		Size: 238.8 KB (238777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43130c8fc98b4879d8a62bcd4970a5503853485888d078aafdf7f76ac487e21a`  
		Last Modified: Sat, 26 Sep 2026 01:14:52 GMT  
		Size: 310.1 MB (310117315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fffc6118358adde21e7ff458da6b2f7a23d9a645c1e8df61579fb1e03fd585d9`  
		Last Modified: Sat, 26 Sep 2026 01:14:46 GMT  
		Size: 317.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039e1564a6cffe59d09128cb5f8d625b36bc7159532b392890acc164608a7b2b`  
		Last Modified: Sat, 26 Sep 2026 01:14:46 GMT  
		Size: 3.0 KB (3009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d12f07e958df9939a798c1a2a0501d69bffcc11aee4a6d35daec98e27d74ff4`  
		Last Modified: Sat, 26 Sep 2026 01:14:47 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:99993d88f1925c19c9d225f8c97b77f97474803925fdc707ffd706e93e275be4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4205494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a34aba4b52098d8e4eeca82f4229d957e8669509b4e5a6f7e976db6371f5b8bc`

```dockerfile
```

-	Layers:
	-	`sha256:1ebc47957884289ddf783ec85dea8f27cdedd7f259f7f65610131a69867ba6f5`  
		Last Modified: Sat, 26 Sep 2026 01:14:46 GMT  
		Size: 4.2 MB (4179817 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be68a333cef471abb1a7e86a0ed61b6bdeb82c76cb48b0f185fa469903dfce1c`  
		Last Modified: Sat, 26 Sep 2026 01:14:46 GMT  
		Size: 25.7 KB (25677 bytes)  
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
$ docker pull geonetwork@sha256:d58fe59762132603a2a8cb5328f8ada191fffaa04b1f3e1850e746acaecd0c5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.3 MB (413345811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d58d71c9d219ff33174d78e859451e9c31d858bad53c247ccc7e85a5e48cf3c1`
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
# Fri, 25 Sep 2026 22:33:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:33:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:33:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:33:18 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:33:18 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:34:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:34:15 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:15:45 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 25 Sep 2026 23:15:45 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:15:45 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 25 Sep 2026 23:15:45 GMT
WORKDIR /usr/local/tomcat
# Fri, 25 Sep 2026 23:15:45 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:45 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:45 GMT
ENV TOMCAT_MAJOR=9
# Fri, 25 Sep 2026 23:15:45 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 25 Sep 2026 23:15:45 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 25 Sep 2026 23:16:50 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 25 Sep 2026 23:16:52 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 23:16:53 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 25 Sep 2026 23:16:53 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 25 Sep 2026 23:16:53 GMT
ENTRYPOINT []
# Fri, 25 Sep 2026 23:16:53 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:12:23 GMT
ENV DATA_DIR=/catalogue-data
# Sat, 26 Sep 2026 00:12:23 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Sat, 26 Sep 2026 00:12:23 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Sat, 26 Sep 2026 00:12:23 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 00:12:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Sat, 26 Sep 2026 00:12:23 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 00:12:23 GMT
ENV GN_VERSION=4.4.12
# Sat, 26 Sep 2026 00:12:23 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Sat, 26 Sep 2026 00:12:58 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Sat, 26 Sep 2026 00:12:58 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Sat, 26 Sep 2026 00:12:58 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Sat, 26 Sep 2026 00:12:58 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:12:58 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Sat, 26 Sep 2026 00:12:58 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:12:58 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:2d1aac92a29a4eacd140d431dc526f6da099043772d537d221717429ee877b2a`  
		Last Modified: Fri, 11 Sep 2026 13:39:18 GMT  
		Size: 29.9 MB (29945392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9940722e4aa6a0f59106fc47c1516a9e4898f63e8bc8012c418c802b18224b1c`  
		Last Modified: Fri, 25 Sep 2026 22:33:46 GMT  
		Size: 17.6 MB (17557112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11760ea4994341de0f76bc09d3c917143cb4b4f98d226b6468226716b61af819`  
		Last Modified: Fri, 25 Sep 2026 22:34:32 GMT  
		Size: 41.3 MB (41347362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:104d0060e1f7d8443ed5900208224705b4808b9596894166b98d41ac82e5f6fc`  
		Last Modified: Fri, 25 Sep 2026 22:34:31 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0202b7c2389d4d418e5a877589086dc02915da0dac5112280ec0d8c0d5ea6b1f`  
		Last Modified: Fri, 25 Sep 2026 22:34:31 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d54b148b5785e8c4e7cc0761057cfebeb12e8893b306beb539b07de78e19ef7`  
		Last Modified: Fri, 25 Sep 2026 23:16:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36fd12a4bff21f8e93ad12ff89ae5f8b986438879b3ff8ba5b28e5f5ac95032b`  
		Last Modified: Fri, 25 Sep 2026 23:17:06 GMT  
		Size: 13.9 MB (13887718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c51ce247cd34ce21e4c3021bae5eefd226db5a6c35ea002c0fd4a03d0f6fd38b`  
		Last Modified: Fri, 25 Sep 2026 23:17:05 GMT  
		Size: 233.3 KB (233294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c9fade6e59abe322444ad4b80fe22c113c78e648de07120364f3f1a68ba146`  
		Last Modified: Sat, 26 Sep 2026 00:13:28 GMT  
		Size: 250.7 KB (250728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a969d01576fa9355f536c6a73db60079abcefd45da5c60ade9548a857d77d9`  
		Last Modified: Sat, 26 Sep 2026 00:13:33 GMT  
		Size: 310.1 MB (310117347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f57713420646fdcf757e8f1ba70e4d14e4a0723b4f67c9f549c96692770d3bf`  
		Last Modified: Sat, 26 Sep 2026 00:13:28 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53fbfcb08fe43993d4ff02c7fc0635865761f36974967a71251b97f66d6ff8e1`  
		Last Modified: Sat, 26 Sep 2026 00:13:28 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0bce06616f68e38c40aacc61069dd96d53bfac71f1757c3f881018e2977abb0`  
		Last Modified: Sat, 26 Sep 2026 00:13:29 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:236986c60324d50a2c4e2b369648c9ad3cce738f042d1834376c74776a3d1973
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4206490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9176ed779f07d57f583a3e393dd39e1695f0431e442e840d33a1c849a5c096ea`

```dockerfile
```

-	Layers:
	-	`sha256:b6a511d405693b20ea0b4c84aa7ecea8aab980bf4214bd9a1046375f226f5444`  
		Last Modified: Sat, 26 Sep 2026 00:13:28 GMT  
		Size: 4.2 MB (4180932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b8e3848338b37f53e84fb47f3dd0e483095a5e934da2c62ea608afb8e5bca02`  
		Last Modified: Sat, 26 Sep 2026 00:13:27 GMT  
		Size: 25.6 KB (25558 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:4.4.12`

```console
$ docker pull geonetwork@sha256:d0805b94b1b250febf20542214d3b997d7bf9796311246113ea706083c4acdaf
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
$ docker pull geonetwork@sha256:951a60bcf0f54892975de93c8fddaf17b164b6ab6832dce7651cea3a9b69d57c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.5 MB (418531863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59465efca8f22521986a0fcc067d458a75754abfdedad41fdc45b02848c00a5a`
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
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:04 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:36:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:36:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 26 Sep 2026 00:20:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 26 Sep 2026 00:20:26 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 00:20:26 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 26 Sep 2026 00:20:26 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:20:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:20:26 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:20:26 GMT
ENV TOMCAT_MAJOR=9
# Sat, 26 Sep 2026 00:20:26 GMT
ENV TOMCAT_VERSION=9.0.122
# Sat, 26 Sep 2026 00:20:26 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Sat, 26 Sep 2026 00:20:48 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 26 Sep 2026 00:20:54 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 00:20:54 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 26 Sep 2026 00:20:54 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 26 Sep 2026 00:20:54 GMT
ENTRYPOINT []
# Sat, 26 Sep 2026 00:20:54 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:13 GMT
ENV DATA_DIR=/catalogue-data
# Sat, 26 Sep 2026 01:14:13 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Sat, 26 Sep 2026 01:14:13 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Sat, 26 Sep 2026 01:14:13 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 01:14:13 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Sat, 26 Sep 2026 01:14:13 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 01:14:13 GMT
ENV GN_VERSION=4.4.12
# Sat, 26 Sep 2026 01:14:13 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Sat, 26 Sep 2026 01:14:22 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Sat, 26 Sep 2026 01:14:22 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:22 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa11cca00d94f9edf8aff00f761f71847bd1624524cbb17b8e7a06542698164`  
		Last Modified: Fri, 25 Sep 2026 22:35:21 GMT  
		Size: 17.0 MB (16967005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d7577eb55fcb12329232b2d364b3f605d5ba932671ced36a30cca0cb308944`  
		Last Modified: Fri, 25 Sep 2026 22:36:17 GMT  
		Size: 47.3 MB (47336059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0577d506e23443d4beebe5bea9e99e0d7403b240d5fee559c130f9a754435ea9`  
		Last Modified: Fri, 25 Sep 2026 22:36:16 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ebc1cfea865cf2ac2b3e11d6b5957c52861b06cd043b714cfeb9320dd5522c4`  
		Last Modified: Fri, 25 Sep 2026 22:36:16 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ff74458debf7977983fbf21b72eed9a0fe399d9432878ab8982864712256f3`  
		Last Modified: Sat, 26 Sep 2026 00:20:40 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8a3bb370a8574cd0035c36aa91de24bca8a61bb00d37e55e52eb73bfe86a6f`  
		Last Modified: Sat, 26 Sep 2026 00:21:02 GMT  
		Size: 13.9 MB (13875485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0caf4ae3e2162caf750b006fd4d266da530aff73e82834357cb9e6f4efa32f`  
		Last Modified: Sat, 26 Sep 2026 00:21:02 GMT  
		Size: 225.3 KB (225311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f934f04195d6106a9d595851069454a3cb240c229b038967f083ba532a6015`  
		Last Modified: Sat, 26 Sep 2026 01:14:44 GMT  
		Size: 239.7 KB (239703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca1d31a2c036372110cf02da6625ab3e1492486be224f09fa24736ae2d08d4e`  
		Last Modified: Sat, 26 Sep 2026 01:14:50 GMT  
		Size: 310.1 MB (310117335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c77f5f4606cc2fb674ca0ff82635b67c38d0b6e21890020eb7e3a9f5cc259a`  
		Last Modified: Sat, 26 Sep 2026 01:14:44 GMT  
		Size: 317.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b81c047c2028edf1144df5e3be42614c15588846500d1e01c9d25edf95201a30`  
		Last Modified: Sat, 26 Sep 2026 01:14:44 GMT  
		Size: 3.0 KB (3010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f95f14e0c420aa9133eeb4c46f14014cf0cf2760c6e06121120a4dcb75a3b22`  
		Last Modified: Sat, 26 Sep 2026 01:14:45 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:d4430e022eb4ca4e790a9068d2c010f9aca9856d0cbfb96cfe34fcffc10c76a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4204285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c233cd9e9ddff301c55875ba73281691805bf407370d3c8d242355ec0c0eda1`

```dockerfile
```

-	Layers:
	-	`sha256:839989795153a3f82e715f0b6abf2c7d1f1dfe27c231c791dbb451715f93bed9`  
		Last Modified: Sat, 26 Sep 2026 01:14:44 GMT  
		Size: 4.2 MB (4178727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c97e0b02ac280d1979c381c3fe2dc9fcfbcc7511a506df48021c8c1aa13d885`  
		Last Modified: Sat, 26 Sep 2026 01:14:44 GMT  
		Size: 25.6 KB (25558 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.4.12` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:92cbaa6328a0183896f776656cae5873d06ac138fdd65e3e30eaf4e11aada714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.0 MB (412983485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9843e77afdad0cd096a004bcde754d65bbe92b81742a0ea8f1a0f0666d7b8e4f`
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
# Fri, 25 Sep 2026 22:35:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:29 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:29 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:35:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:35:32 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:15:55 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 25 Sep 2026 23:15:55 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:15:55 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 25 Sep 2026 23:15:55 GMT
WORKDIR /usr/local/tomcat
# Fri, 25 Sep 2026 23:15:55 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:55 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:55 GMT
ENV TOMCAT_MAJOR=9
# Fri, 25 Sep 2026 23:15:55 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 25 Sep 2026 23:15:55 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 25 Sep 2026 23:15:56 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 25 Sep 2026 23:16:01 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 23:16:02 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 25 Sep 2026 23:16:02 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 25 Sep 2026 23:16:02 GMT
ENTRYPOINT []
# Fri, 25 Sep 2026 23:16:02 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:13:25 GMT
ENV DATA_DIR=/catalogue-data
# Sat, 26 Sep 2026 00:13:25 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Sat, 26 Sep 2026 00:13:25 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Sat, 26 Sep 2026 00:13:25 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 00:13:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Sat, 26 Sep 2026 00:13:25 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 00:13:25 GMT
ENV GN_VERSION=4.4.12
# Sat, 26 Sep 2026 00:13:25 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Sat, 26 Sep 2026 00:13:34 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Sat, 26 Sep 2026 00:13:35 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Sat, 26 Sep 2026 00:13:35 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Sat, 26 Sep 2026 00:13:35 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:13:35 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Sat, 26 Sep 2026 00:13:35 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:13:35 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:f98fce276933dc8d40e338c8a5447d14e10d972c731f074e9fcd9f9bb629aa50`  
		Last Modified: Fri, 11 Sep 2026 13:38:53 GMT  
		Size: 26.9 MB (26894925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95f8968b01ba18649072fa4a64d227ab4038e1ada70e60676624f76d6761b9a0`  
		Last Modified: Fri, 25 Sep 2026 22:35:44 GMT  
		Size: 16.3 MB (16283738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1511597911fd4e0a3b5f26f717b4d89e2da1632f8d6412119f2928a81f8d102d`  
		Last Modified: Fri, 25 Sep 2026 22:35:45 GMT  
		Size: 45.4 MB (45444181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e64ec88cd231539d78d11753cedb1e37749613071437c4f08be35935417dde`  
		Last Modified: Fri, 25 Sep 2026 22:35:43 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:009e2287f1af12edf8cf61ad50f946773d13cef17207ba3009bb0d48d92cdd3b`  
		Last Modified: Fri, 25 Sep 2026 22:35:44 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10ce434b9c1ff246d37d5e9de41b5ae873b711ebe8fc82737de9ee232d6e35e`  
		Last Modified: Fri, 25 Sep 2026 23:16:11 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae5f8c168e4b893eb3dd915d1ab17830b23aaaa95312eeaa0c6d9d3ee000182`  
		Last Modified: Fri, 25 Sep 2026 23:16:11 GMT  
		Size: 13.8 MB (13812780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cddb455442347c5c1bf295f45b33d2bdb31ac1806fb73c66dc4cd1a7c99ccad`  
		Last Modified: Fri, 25 Sep 2026 23:16:11 GMT  
		Size: 196.9 KB (196883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc5c11f4f981b3136179a840352a9fe7650a1155c13518cabeedba2eaa796f11`  
		Last Modified: Sat, 26 Sep 2026 00:14:00 GMT  
		Size: 226.8 KB (226839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f5228e8d95bc43e2706e2f9dd1346a50e9b5b5f37e923de5bfa6e7ce3d01611`  
		Last Modified: Sat, 26 Sep 2026 00:14:06 GMT  
		Size: 310.1 MB (310117290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30d6ce9fd2e70562234d6f8a1bf4c41f08c405f1bcdaabc595994a2af61793f`  
		Last Modified: Sat, 26 Sep 2026 00:13:59 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1cec659de9fabc46d033989ea47d63bcbffad005c6db780d9fd5a298c52b6a`  
		Last Modified: Sat, 26 Sep 2026 00:14:00 GMT  
		Size: 3.0 KB (3011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c629d520fb57a17d045f11709263e30b385826dd2398d45b3759ee871df1425`  
		Last Modified: Sat, 26 Sep 2026 00:14:01 GMT  
		Size: 698.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:b9433c214ad57065bfe0b318e08af8bd9b5b1d1b5e396868238e4451da2831b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4207981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596f3451c1f3940f49f3152de45be8892ba7651fa690f9908c685ff2d0c08741`

```dockerfile
```

-	Layers:
	-	`sha256:d1267197ae792e833f6a4276c333e67c230d9f7d69a3ae9ea87f2f1a48e3e20a`  
		Last Modified: Sat, 26 Sep 2026 00:14:00 GMT  
		Size: 4.2 MB (4182330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:284a7890d839bd70e7536948cab613fb1d98e8cb12ff70ec9da03c3ca7083dd8`  
		Last Modified: Sat, 26 Sep 2026 00:13:59 GMT  
		Size: 25.7 KB (25651 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.4.12` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:7bd3da5545c891998f8e033db196295235f964d9d38e89aae34a5c73adbccc05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **416.0 MB (416035932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f94b685b5de0d1b804d95b16e502a7fb4636fbd0e153706505fb1757781e34ae`
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
# Fri, 25 Sep 2026 22:34:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:36 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:34:36 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:34:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 26 Sep 2026 00:16:06 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 26 Sep 2026 00:16:06 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 00:16:06 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 26 Sep 2026 00:16:09 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:16:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:16:09 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:16:09 GMT
ENV TOMCAT_MAJOR=9
# Sat, 26 Sep 2026 00:16:09 GMT
ENV TOMCAT_VERSION=9.0.122
# Sat, 26 Sep 2026 00:16:09 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Sat, 26 Sep 2026 00:16:32 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 26 Sep 2026 00:16:40 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 00:16:41 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 26 Sep 2026 00:16:41 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 26 Sep 2026 00:16:41 GMT
ENTRYPOINT []
# Sat, 26 Sep 2026 00:16:41 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:12 GMT
ENV DATA_DIR=/catalogue-data
# Sat, 26 Sep 2026 01:14:12 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Sat, 26 Sep 2026 01:14:12 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Sat, 26 Sep 2026 01:14:12 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 01:14:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Sat, 26 Sep 2026 01:14:12 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 01:14:12 GMT
ENV GN_VERSION=4.4.12
# Sat, 26 Sep 2026 01:14:12 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Sat, 26 Sep 2026 01:14:22 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Sat, 26 Sep 2026 01:14:22 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:22 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfbb616b2d1efdf3578f7daeede7ef8ff04418477ab2679ec203cc9dd2051661`  
		Last Modified: Fri, 25 Sep 2026 22:34:52 GMT  
		Size: 17.0 MB (16977396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0454d4ddb06252a60b0a228139a983578030ce9f1126ce9d5f7e103fc8b6af`  
		Last Modified: Fri, 25 Sep 2026 22:34:53 GMT  
		Size: 45.6 MB (45640229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35668e93a7a2dec90159bd7de1fea312d21e75871eecff8b8797cfdfb2941d4`  
		Last Modified: Fri, 25 Sep 2026 22:34:51 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983fdc5f52ea32fbbaea1aeda1874fb465182868e5c45af4e4b7ff4652756b5b`  
		Last Modified: Fri, 25 Sep 2026 22:34:52 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f49c6efb6ce2eb5345493ee6c9f90bde7655f90f9e474c9fb4c7f2b9366f96`  
		Last Modified: Sat, 26 Sep 2026 00:16:23 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:558301b5aefa09dee4a173ee7d4799db4ab671fac8fce08d5dcd76c3edbf6598`  
		Last Modified: Sat, 26 Sep 2026 00:16:49 GMT  
		Size: 13.9 MB (13888075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7665c92d67147e5ff1bdb4bb6620e9d0696ddabb0d5929893cfaf893531a1f56`  
		Last Modified: Sat, 26 Sep 2026 00:16:49 GMT  
		Size: 225.7 KB (225710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ccfb4f374f7a79c21f38be39c9d4dafb5edd76ea8ee69f872cd9a38e6b98c84`  
		Last Modified: Sat, 26 Sep 2026 01:14:46 GMT  
		Size: 238.8 KB (238777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43130c8fc98b4879d8a62bcd4970a5503853485888d078aafdf7f76ac487e21a`  
		Last Modified: Sat, 26 Sep 2026 01:14:52 GMT  
		Size: 310.1 MB (310117315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fffc6118358adde21e7ff458da6b2f7a23d9a645c1e8df61579fb1e03fd585d9`  
		Last Modified: Sat, 26 Sep 2026 01:14:46 GMT  
		Size: 317.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039e1564a6cffe59d09128cb5f8d625b36bc7159532b392890acc164608a7b2b`  
		Last Modified: Sat, 26 Sep 2026 01:14:46 GMT  
		Size: 3.0 KB (3009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d12f07e958df9939a798c1a2a0501d69bffcc11aee4a6d35daec98e27d74ff4`  
		Last Modified: Sat, 26 Sep 2026 01:14:47 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:99993d88f1925c19c9d225f8c97b77f97474803925fdc707ffd706e93e275be4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4205494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a34aba4b52098d8e4eeca82f4229d957e8669509b4e5a6f7e976db6371f5b8bc`

```dockerfile
```

-	Layers:
	-	`sha256:1ebc47957884289ddf783ec85dea8f27cdedd7f259f7f65610131a69867ba6f5`  
		Last Modified: Sat, 26 Sep 2026 01:14:46 GMT  
		Size: 4.2 MB (4179817 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be68a333cef471abb1a7e86a0ed61b6bdeb82c76cb48b0f185fa469903dfce1c`  
		Last Modified: Sat, 26 Sep 2026 01:14:46 GMT  
		Size: 25.7 KB (25677 bytes)  
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
$ docker pull geonetwork@sha256:d58fe59762132603a2a8cb5328f8ada191fffaa04b1f3e1850e746acaecd0c5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.3 MB (413345811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d58d71c9d219ff33174d78e859451e9c31d858bad53c247ccc7e85a5e48cf3c1`
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
# Fri, 25 Sep 2026 22:33:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:33:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:33:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:33:18 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:33:18 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:34:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:34:15 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:15:45 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 25 Sep 2026 23:15:45 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:15:45 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 25 Sep 2026 23:15:45 GMT
WORKDIR /usr/local/tomcat
# Fri, 25 Sep 2026 23:15:45 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:45 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:45 GMT
ENV TOMCAT_MAJOR=9
# Fri, 25 Sep 2026 23:15:45 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 25 Sep 2026 23:15:45 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 25 Sep 2026 23:16:50 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 25 Sep 2026 23:16:52 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 23:16:53 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 25 Sep 2026 23:16:53 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 25 Sep 2026 23:16:53 GMT
ENTRYPOINT []
# Fri, 25 Sep 2026 23:16:53 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:12:23 GMT
ENV DATA_DIR=/catalogue-data
# Sat, 26 Sep 2026 00:12:23 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Sat, 26 Sep 2026 00:12:23 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Sat, 26 Sep 2026 00:12:23 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 00:12:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Sat, 26 Sep 2026 00:12:23 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 00:12:23 GMT
ENV GN_VERSION=4.4.12
# Sat, 26 Sep 2026 00:12:23 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Sat, 26 Sep 2026 00:12:58 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Sat, 26 Sep 2026 00:12:58 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Sat, 26 Sep 2026 00:12:58 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Sat, 26 Sep 2026 00:12:58 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:12:58 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Sat, 26 Sep 2026 00:12:58 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:12:58 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:2d1aac92a29a4eacd140d431dc526f6da099043772d537d221717429ee877b2a`  
		Last Modified: Fri, 11 Sep 2026 13:39:18 GMT  
		Size: 29.9 MB (29945392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9940722e4aa6a0f59106fc47c1516a9e4898f63e8bc8012c418c802b18224b1c`  
		Last Modified: Fri, 25 Sep 2026 22:33:46 GMT  
		Size: 17.6 MB (17557112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11760ea4994341de0f76bc09d3c917143cb4b4f98d226b6468226716b61af819`  
		Last Modified: Fri, 25 Sep 2026 22:34:32 GMT  
		Size: 41.3 MB (41347362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:104d0060e1f7d8443ed5900208224705b4808b9596894166b98d41ac82e5f6fc`  
		Last Modified: Fri, 25 Sep 2026 22:34:31 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0202b7c2389d4d418e5a877589086dc02915da0dac5112280ec0d8c0d5ea6b1f`  
		Last Modified: Fri, 25 Sep 2026 22:34:31 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d54b148b5785e8c4e7cc0761057cfebeb12e8893b306beb539b07de78e19ef7`  
		Last Modified: Fri, 25 Sep 2026 23:16:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36fd12a4bff21f8e93ad12ff89ae5f8b986438879b3ff8ba5b28e5f5ac95032b`  
		Last Modified: Fri, 25 Sep 2026 23:17:06 GMT  
		Size: 13.9 MB (13887718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c51ce247cd34ce21e4c3021bae5eefd226db5a6c35ea002c0fd4a03d0f6fd38b`  
		Last Modified: Fri, 25 Sep 2026 23:17:05 GMT  
		Size: 233.3 KB (233294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c9fade6e59abe322444ad4b80fe22c113c78e648de07120364f3f1a68ba146`  
		Last Modified: Sat, 26 Sep 2026 00:13:28 GMT  
		Size: 250.7 KB (250728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a969d01576fa9355f536c6a73db60079abcefd45da5c60ade9548a857d77d9`  
		Last Modified: Sat, 26 Sep 2026 00:13:33 GMT  
		Size: 310.1 MB (310117347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f57713420646fdcf757e8f1ba70e4d14e4a0723b4f67c9f549c96692770d3bf`  
		Last Modified: Sat, 26 Sep 2026 00:13:28 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53fbfcb08fe43993d4ff02c7fc0635865761f36974967a71251b97f66d6ff8e1`  
		Last Modified: Sat, 26 Sep 2026 00:13:28 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0bce06616f68e38c40aacc61069dd96d53bfac71f1757c3f881018e2977abb0`  
		Last Modified: Sat, 26 Sep 2026 00:13:29 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:236986c60324d50a2c4e2b369648c9ad3cce738f042d1834376c74776a3d1973
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4206490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9176ed779f07d57f583a3e393dd39e1695f0431e442e840d33a1c849a5c096ea`

```dockerfile
```

-	Layers:
	-	`sha256:b6a511d405693b20ea0b4c84aa7ecea8aab980bf4214bd9a1046375f226f5444`  
		Last Modified: Sat, 26 Sep 2026 00:13:28 GMT  
		Size: 4.2 MB (4180932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b8e3848338b37f53e84fb47f3dd0e483095a5e934da2c62ea608afb8e5bca02`  
		Last Modified: Sat, 26 Sep 2026 00:13:27 GMT  
		Size: 25.6 KB (25558 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:latest`

```console
$ docker pull geonetwork@sha256:d0805b94b1b250febf20542214d3b997d7bf9796311246113ea706083c4acdaf
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
$ docker pull geonetwork@sha256:951a60bcf0f54892975de93c8fddaf17b164b6ab6832dce7651cea3a9b69d57c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.5 MB (418531863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59465efca8f22521986a0fcc067d458a75754abfdedad41fdc45b02848c00a5a`
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
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:04 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:36:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:36:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 26 Sep 2026 00:20:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 26 Sep 2026 00:20:26 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 00:20:26 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 26 Sep 2026 00:20:26 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:20:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:20:26 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:20:26 GMT
ENV TOMCAT_MAJOR=9
# Sat, 26 Sep 2026 00:20:26 GMT
ENV TOMCAT_VERSION=9.0.122
# Sat, 26 Sep 2026 00:20:26 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Sat, 26 Sep 2026 00:20:48 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 26 Sep 2026 00:20:54 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 00:20:54 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 26 Sep 2026 00:20:54 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 26 Sep 2026 00:20:54 GMT
ENTRYPOINT []
# Sat, 26 Sep 2026 00:20:54 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:13 GMT
ENV DATA_DIR=/catalogue-data
# Sat, 26 Sep 2026 01:14:13 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Sat, 26 Sep 2026 01:14:13 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Sat, 26 Sep 2026 01:14:13 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 01:14:13 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Sat, 26 Sep 2026 01:14:13 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 01:14:13 GMT
ENV GN_VERSION=4.4.12
# Sat, 26 Sep 2026 01:14:13 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Sat, 26 Sep 2026 01:14:22 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Sat, 26 Sep 2026 01:14:22 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:22 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa11cca00d94f9edf8aff00f761f71847bd1624524cbb17b8e7a06542698164`  
		Last Modified: Fri, 25 Sep 2026 22:35:21 GMT  
		Size: 17.0 MB (16967005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d7577eb55fcb12329232b2d364b3f605d5ba932671ced36a30cca0cb308944`  
		Last Modified: Fri, 25 Sep 2026 22:36:17 GMT  
		Size: 47.3 MB (47336059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0577d506e23443d4beebe5bea9e99e0d7403b240d5fee559c130f9a754435ea9`  
		Last Modified: Fri, 25 Sep 2026 22:36:16 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ebc1cfea865cf2ac2b3e11d6b5957c52861b06cd043b714cfeb9320dd5522c4`  
		Last Modified: Fri, 25 Sep 2026 22:36:16 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ff74458debf7977983fbf21b72eed9a0fe399d9432878ab8982864712256f3`  
		Last Modified: Sat, 26 Sep 2026 00:20:40 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8a3bb370a8574cd0035c36aa91de24bca8a61bb00d37e55e52eb73bfe86a6f`  
		Last Modified: Sat, 26 Sep 2026 00:21:02 GMT  
		Size: 13.9 MB (13875485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0caf4ae3e2162caf750b006fd4d266da530aff73e82834357cb9e6f4efa32f`  
		Last Modified: Sat, 26 Sep 2026 00:21:02 GMT  
		Size: 225.3 KB (225311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f934f04195d6106a9d595851069454a3cb240c229b038967f083ba532a6015`  
		Last Modified: Sat, 26 Sep 2026 01:14:44 GMT  
		Size: 239.7 KB (239703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca1d31a2c036372110cf02da6625ab3e1492486be224f09fa24736ae2d08d4e`  
		Last Modified: Sat, 26 Sep 2026 01:14:50 GMT  
		Size: 310.1 MB (310117335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c77f5f4606cc2fb674ca0ff82635b67c38d0b6e21890020eb7e3a9f5cc259a`  
		Last Modified: Sat, 26 Sep 2026 01:14:44 GMT  
		Size: 317.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b81c047c2028edf1144df5e3be42614c15588846500d1e01c9d25edf95201a30`  
		Last Modified: Sat, 26 Sep 2026 01:14:44 GMT  
		Size: 3.0 KB (3010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f95f14e0c420aa9133eeb4c46f14014cf0cf2760c6e06121120a4dcb75a3b22`  
		Last Modified: Sat, 26 Sep 2026 01:14:45 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:d4430e022eb4ca4e790a9068d2c010f9aca9856d0cbfb96cfe34fcffc10c76a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4204285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c233cd9e9ddff301c55875ba73281691805bf407370d3c8d242355ec0c0eda1`

```dockerfile
```

-	Layers:
	-	`sha256:839989795153a3f82e715f0b6abf2c7d1f1dfe27c231c791dbb451715f93bed9`  
		Last Modified: Sat, 26 Sep 2026 01:14:44 GMT  
		Size: 4.2 MB (4178727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c97e0b02ac280d1979c381c3fe2dc9fcfbcc7511a506df48021c8c1aa13d885`  
		Last Modified: Sat, 26 Sep 2026 01:14:44 GMT  
		Size: 25.6 KB (25558 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:latest` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:92cbaa6328a0183896f776656cae5873d06ac138fdd65e3e30eaf4e11aada714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.0 MB (412983485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9843e77afdad0cd096a004bcde754d65bbe92b81742a0ea8f1a0f0666d7b8e4f`
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
# Fri, 25 Sep 2026 22:35:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:29 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:29 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:35:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:35:32 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:15:55 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 25 Sep 2026 23:15:55 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:15:55 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 25 Sep 2026 23:15:55 GMT
WORKDIR /usr/local/tomcat
# Fri, 25 Sep 2026 23:15:55 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:55 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:55 GMT
ENV TOMCAT_MAJOR=9
# Fri, 25 Sep 2026 23:15:55 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 25 Sep 2026 23:15:55 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 25 Sep 2026 23:15:56 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 25 Sep 2026 23:16:01 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 23:16:02 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 25 Sep 2026 23:16:02 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 25 Sep 2026 23:16:02 GMT
ENTRYPOINT []
# Fri, 25 Sep 2026 23:16:02 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:13:25 GMT
ENV DATA_DIR=/catalogue-data
# Sat, 26 Sep 2026 00:13:25 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Sat, 26 Sep 2026 00:13:25 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Sat, 26 Sep 2026 00:13:25 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 00:13:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Sat, 26 Sep 2026 00:13:25 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 00:13:25 GMT
ENV GN_VERSION=4.4.12
# Sat, 26 Sep 2026 00:13:25 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Sat, 26 Sep 2026 00:13:34 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Sat, 26 Sep 2026 00:13:35 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Sat, 26 Sep 2026 00:13:35 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Sat, 26 Sep 2026 00:13:35 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:13:35 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Sat, 26 Sep 2026 00:13:35 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:13:35 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:f98fce276933dc8d40e338c8a5447d14e10d972c731f074e9fcd9f9bb629aa50`  
		Last Modified: Fri, 11 Sep 2026 13:38:53 GMT  
		Size: 26.9 MB (26894925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95f8968b01ba18649072fa4a64d227ab4038e1ada70e60676624f76d6761b9a0`  
		Last Modified: Fri, 25 Sep 2026 22:35:44 GMT  
		Size: 16.3 MB (16283738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1511597911fd4e0a3b5f26f717b4d89e2da1632f8d6412119f2928a81f8d102d`  
		Last Modified: Fri, 25 Sep 2026 22:35:45 GMT  
		Size: 45.4 MB (45444181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e64ec88cd231539d78d11753cedb1e37749613071437c4f08be35935417dde`  
		Last Modified: Fri, 25 Sep 2026 22:35:43 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:009e2287f1af12edf8cf61ad50f946773d13cef17207ba3009bb0d48d92cdd3b`  
		Last Modified: Fri, 25 Sep 2026 22:35:44 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10ce434b9c1ff246d37d5e9de41b5ae873b711ebe8fc82737de9ee232d6e35e`  
		Last Modified: Fri, 25 Sep 2026 23:16:11 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae5f8c168e4b893eb3dd915d1ab17830b23aaaa95312eeaa0c6d9d3ee000182`  
		Last Modified: Fri, 25 Sep 2026 23:16:11 GMT  
		Size: 13.8 MB (13812780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cddb455442347c5c1bf295f45b33d2bdb31ac1806fb73c66dc4cd1a7c99ccad`  
		Last Modified: Fri, 25 Sep 2026 23:16:11 GMT  
		Size: 196.9 KB (196883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc5c11f4f981b3136179a840352a9fe7650a1155c13518cabeedba2eaa796f11`  
		Last Modified: Sat, 26 Sep 2026 00:14:00 GMT  
		Size: 226.8 KB (226839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f5228e8d95bc43e2706e2f9dd1346a50e9b5b5f37e923de5bfa6e7ce3d01611`  
		Last Modified: Sat, 26 Sep 2026 00:14:06 GMT  
		Size: 310.1 MB (310117290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30d6ce9fd2e70562234d6f8a1bf4c41f08c405f1bcdaabc595994a2af61793f`  
		Last Modified: Sat, 26 Sep 2026 00:13:59 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1cec659de9fabc46d033989ea47d63bcbffad005c6db780d9fd5a298c52b6a`  
		Last Modified: Sat, 26 Sep 2026 00:14:00 GMT  
		Size: 3.0 KB (3011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c629d520fb57a17d045f11709263e30b385826dd2398d45b3759ee871df1425`  
		Last Modified: Sat, 26 Sep 2026 00:14:01 GMT  
		Size: 698.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:b9433c214ad57065bfe0b318e08af8bd9b5b1d1b5e396868238e4451da2831b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4207981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596f3451c1f3940f49f3152de45be8892ba7651fa690f9908c685ff2d0c08741`

```dockerfile
```

-	Layers:
	-	`sha256:d1267197ae792e833f6a4276c333e67c230d9f7d69a3ae9ea87f2f1a48e3e20a`  
		Last Modified: Sat, 26 Sep 2026 00:14:00 GMT  
		Size: 4.2 MB (4182330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:284a7890d839bd70e7536948cab613fb1d98e8cb12ff70ec9da03c3ca7083dd8`  
		Last Modified: Sat, 26 Sep 2026 00:13:59 GMT  
		Size: 25.7 KB (25651 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:latest` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:7bd3da5545c891998f8e033db196295235f964d9d38e89aae34a5c73adbccc05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **416.0 MB (416035932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f94b685b5de0d1b804d95b16e502a7fb4636fbd0e153706505fb1757781e34ae`
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
# Fri, 25 Sep 2026 22:34:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:36 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:34:36 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:34:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 26 Sep 2026 00:16:06 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 26 Sep 2026 00:16:06 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 00:16:06 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 26 Sep 2026 00:16:09 GMT
WORKDIR /usr/local/tomcat
# Sat, 26 Sep 2026 00:16:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:16:09 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 26 Sep 2026 00:16:09 GMT
ENV TOMCAT_MAJOR=9
# Sat, 26 Sep 2026 00:16:09 GMT
ENV TOMCAT_VERSION=9.0.122
# Sat, 26 Sep 2026 00:16:09 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Sat, 26 Sep 2026 00:16:32 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 26 Sep 2026 00:16:40 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 00:16:41 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 26 Sep 2026 00:16:41 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 26 Sep 2026 00:16:41 GMT
ENTRYPOINT []
# Sat, 26 Sep 2026 00:16:41 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:12 GMT
ENV DATA_DIR=/catalogue-data
# Sat, 26 Sep 2026 01:14:12 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Sat, 26 Sep 2026 01:14:12 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Sat, 26 Sep 2026 01:14:12 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 01:14:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Sat, 26 Sep 2026 01:14:12 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 01:14:12 GMT
ENV GN_VERSION=4.4.12
# Sat, 26 Sep 2026 01:14:12 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Sat, 26 Sep 2026 01:14:22 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 01:14:22 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Sat, 26 Sep 2026 01:14:22 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 01:14:22 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfbb616b2d1efdf3578f7daeede7ef8ff04418477ab2679ec203cc9dd2051661`  
		Last Modified: Fri, 25 Sep 2026 22:34:52 GMT  
		Size: 17.0 MB (16977396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0454d4ddb06252a60b0a228139a983578030ce9f1126ce9d5f7e103fc8b6af`  
		Last Modified: Fri, 25 Sep 2026 22:34:53 GMT  
		Size: 45.6 MB (45640229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35668e93a7a2dec90159bd7de1fea312d21e75871eecff8b8797cfdfb2941d4`  
		Last Modified: Fri, 25 Sep 2026 22:34:51 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983fdc5f52ea32fbbaea1aeda1874fb465182868e5c45af4e4b7ff4652756b5b`  
		Last Modified: Fri, 25 Sep 2026 22:34:52 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f49c6efb6ce2eb5345493ee6c9f90bde7655f90f9e474c9fb4c7f2b9366f96`  
		Last Modified: Sat, 26 Sep 2026 00:16:23 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:558301b5aefa09dee4a173ee7d4799db4ab671fac8fce08d5dcd76c3edbf6598`  
		Last Modified: Sat, 26 Sep 2026 00:16:49 GMT  
		Size: 13.9 MB (13888075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7665c92d67147e5ff1bdb4bb6620e9d0696ddabb0d5929893cfaf893531a1f56`  
		Last Modified: Sat, 26 Sep 2026 00:16:49 GMT  
		Size: 225.7 KB (225710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ccfb4f374f7a79c21f38be39c9d4dafb5edd76ea8ee69f872cd9a38e6b98c84`  
		Last Modified: Sat, 26 Sep 2026 01:14:46 GMT  
		Size: 238.8 KB (238777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43130c8fc98b4879d8a62bcd4970a5503853485888d078aafdf7f76ac487e21a`  
		Last Modified: Sat, 26 Sep 2026 01:14:52 GMT  
		Size: 310.1 MB (310117315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fffc6118358adde21e7ff458da6b2f7a23d9a645c1e8df61579fb1e03fd585d9`  
		Last Modified: Sat, 26 Sep 2026 01:14:46 GMT  
		Size: 317.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039e1564a6cffe59d09128cb5f8d625b36bc7159532b392890acc164608a7b2b`  
		Last Modified: Sat, 26 Sep 2026 01:14:46 GMT  
		Size: 3.0 KB (3009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d12f07e958df9939a798c1a2a0501d69bffcc11aee4a6d35daec98e27d74ff4`  
		Last Modified: Sat, 26 Sep 2026 01:14:47 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:99993d88f1925c19c9d225f8c97b77f97474803925fdc707ffd706e93e275be4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4205494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a34aba4b52098d8e4eeca82f4229d957e8669509b4e5a6f7e976db6371f5b8bc`

```dockerfile
```

-	Layers:
	-	`sha256:1ebc47957884289ddf783ec85dea8f27cdedd7f259f7f65610131a69867ba6f5`  
		Last Modified: Sat, 26 Sep 2026 01:14:46 GMT  
		Size: 4.2 MB (4179817 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be68a333cef471abb1a7e86a0ed61b6bdeb82c76cb48b0f185fa469903dfce1c`  
		Last Modified: Sat, 26 Sep 2026 01:14:46 GMT  
		Size: 25.7 KB (25677 bytes)  
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
$ docker pull geonetwork@sha256:d58fe59762132603a2a8cb5328f8ada191fffaa04b1f3e1850e746acaecd0c5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.3 MB (413345811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d58d71c9d219ff33174d78e859451e9c31d858bad53c247ccc7e85a5e48cf3c1`
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
# Fri, 25 Sep 2026 22:33:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:33:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:33:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:33:18 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:33:18 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:34:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:34:15 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:15:45 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 25 Sep 2026 23:15:45 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:15:45 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 25 Sep 2026 23:15:45 GMT
WORKDIR /usr/local/tomcat
# Fri, 25 Sep 2026 23:15:45 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:45 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 25 Sep 2026 23:15:45 GMT
ENV TOMCAT_MAJOR=9
# Fri, 25 Sep 2026 23:15:45 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 25 Sep 2026 23:15:45 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 25 Sep 2026 23:16:50 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 25 Sep 2026 23:16:52 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 23:16:53 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 25 Sep 2026 23:16:53 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 25 Sep 2026 23:16:53 GMT
ENTRYPOINT []
# Fri, 25 Sep 2026 23:16:53 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:12:23 GMT
ENV DATA_DIR=/catalogue-data
# Sat, 26 Sep 2026 00:12:23 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Sat, 26 Sep 2026 00:12:23 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Sat, 26 Sep 2026 00:12:23 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Sat, 26 Sep 2026 00:12:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Sat, 26 Sep 2026 00:12:23 GMT
ENV GN_FILE=geonetwork.war
# Sat, 26 Sep 2026 00:12:23 GMT
ENV GN_VERSION=4.4.12
# Sat, 26 Sep 2026 00:12:23 GMT
ENV GN_DOWNLOAD_SHA256=36cbfaef045fc5e1881fc91729b7ea10b4052580cbd275f62fd2f435820d3a17
# Sat, 26 Sep 2026 00:12:58 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Sat, 26 Sep 2026 00:12:58 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Sat, 26 Sep 2026 00:12:58 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Sat, 26 Sep 2026 00:12:58 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:12:58 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Sat, 26 Sep 2026 00:12:58 GMT
CMD ["catalina.sh" "run"]
# Sat, 26 Sep 2026 00:12:58 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:2d1aac92a29a4eacd140d431dc526f6da099043772d537d221717429ee877b2a`  
		Last Modified: Fri, 11 Sep 2026 13:39:18 GMT  
		Size: 29.9 MB (29945392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9940722e4aa6a0f59106fc47c1516a9e4898f63e8bc8012c418c802b18224b1c`  
		Last Modified: Fri, 25 Sep 2026 22:33:46 GMT  
		Size: 17.6 MB (17557112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11760ea4994341de0f76bc09d3c917143cb4b4f98d226b6468226716b61af819`  
		Last Modified: Fri, 25 Sep 2026 22:34:32 GMT  
		Size: 41.3 MB (41347362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:104d0060e1f7d8443ed5900208224705b4808b9596894166b98d41ac82e5f6fc`  
		Last Modified: Fri, 25 Sep 2026 22:34:31 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0202b7c2389d4d418e5a877589086dc02915da0dac5112280ec0d8c0d5ea6b1f`  
		Last Modified: Fri, 25 Sep 2026 22:34:31 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d54b148b5785e8c4e7cc0761057cfebeb12e8893b306beb539b07de78e19ef7`  
		Last Modified: Fri, 25 Sep 2026 23:16:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36fd12a4bff21f8e93ad12ff89ae5f8b986438879b3ff8ba5b28e5f5ac95032b`  
		Last Modified: Fri, 25 Sep 2026 23:17:06 GMT  
		Size: 13.9 MB (13887718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c51ce247cd34ce21e4c3021bae5eefd226db5a6c35ea002c0fd4a03d0f6fd38b`  
		Last Modified: Fri, 25 Sep 2026 23:17:05 GMT  
		Size: 233.3 KB (233294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c9fade6e59abe322444ad4b80fe22c113c78e648de07120364f3f1a68ba146`  
		Last Modified: Sat, 26 Sep 2026 00:13:28 GMT  
		Size: 250.7 KB (250728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a969d01576fa9355f536c6a73db60079abcefd45da5c60ade9548a857d77d9`  
		Last Modified: Sat, 26 Sep 2026 00:13:33 GMT  
		Size: 310.1 MB (310117347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f57713420646fdcf757e8f1ba70e4d14e4a0723b4f67c9f549c96692770d3bf`  
		Last Modified: Sat, 26 Sep 2026 00:13:28 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53fbfcb08fe43993d4ff02c7fc0635865761f36974967a71251b97f66d6ff8e1`  
		Last Modified: Sat, 26 Sep 2026 00:13:28 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0bce06616f68e38c40aacc61069dd96d53bfac71f1757c3f881018e2977abb0`  
		Last Modified: Sat, 26 Sep 2026 00:13:29 GMT  
		Size: 699.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:236986c60324d50a2c4e2b369648c9ad3cce738f042d1834376c74776a3d1973
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4206490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9176ed779f07d57f583a3e393dd39e1695f0431e442e840d33a1c849a5c096ea`

```dockerfile
```

-	Layers:
	-	`sha256:b6a511d405693b20ea0b4c84aa7ecea8aab980bf4214bd9a1046375f226f5444`  
		Last Modified: Sat, 26 Sep 2026 00:13:28 GMT  
		Size: 4.2 MB (4180932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b8e3848338b37f53e84fb47f3dd0e483095a5e934da2c62ea608afb8e5bca02`  
		Last Modified: Sat, 26 Sep 2026 00:13:27 GMT  
		Size: 25.6 KB (25558 bytes)  
		MIME: application/vnd.in-toto+json
