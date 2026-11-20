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
-	[`geonetwork:4.2.18`](#geonetwork4218)
-	[`geonetwork:4.4`](#geonetwork44)
-	[`geonetwork:4.4.13`](#geonetwork4413)
-	[`geonetwork:latest`](#geonetworklatest)

## `geonetwork:3`

```console
$ docker pull geonetwork@sha256:04746e67e7e23fdc1005b66d8dca426398dc31bbd33470b4149b2f01b6bc6e10
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
$ docker pull geonetwork@sha256:df1b8ed4cd0dae96809db6d5ed96654ca382f0c01c1a5bd6c23956ec3c19b1e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.2 MB (375239906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2637af7d012d5a79ae78cf154cf9b77e0048b7174e878947c428c26a3605282`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Mon, 16 Nov 2026 19:46:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:46:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:46:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:46:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:46:21 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:46:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:46:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:46:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:46:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 20:12:51 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 20:12:51 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:12:51 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 20:12:51 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:12:51 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 20:13:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 20:13:49 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 20:13:49 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 20:13:49 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 20:13:49 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:11:46 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 21:11:46 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 21:11:46 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 21:11:46 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 21:11:46 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 21:11:46 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 21:14:24 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 21:14:24 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:14:24 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 21:14:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 21:14:24 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89b08bde1cc34ea32ea324cec646c509578ec147b34d82b167874d0ebd348def`  
		Last Modified: Mon, 16 Nov 2026 19:46:40 GMT  
		Size: 26.4 MB (26442159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade8d13c1a43b60cc329609bc390ca6d7c4e39c1c1cf1b0582e141ec8fa7bc89`  
		Last Modified: Mon, 16 Nov 2026 19:46:40 GMT  
		Size: 55.2 MB (55210308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025fd8f0fc32b54c5c913f53db300636c6c674d11d65fb339616490eb1b2bd9a`  
		Last Modified: Mon, 16 Nov 2026 19:46:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be18d864e62f34e02269f454dd761d7ca0fa3d4220cb5a52df5141c85c787a0`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e49be755acd6e01c606884deaa954c86d9240adbceac70d783fffd40a957f2cb`  
		Last Modified: Mon, 16 Nov 2026 20:13:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8610251d0b6a3f4d409bd4072a14f78d2c3792a903fc65b8db0f41e307fc69c`  
		Last Modified: Mon, 16 Nov 2026 20:14:00 GMT  
		Size: 16.9 MB (16854535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adaf9245bed7fe86a69a12bca0ec548f56d1466d29ed99f80e724ffbc9993973`  
		Last Modified: Mon, 16 Nov 2026 21:14:53 GMT  
		Size: 234.6 MB (234562805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0adb18e1c4cb3c6639e599bc2edaa8c3f1e796cb4fcd4585529151eded4eb6da`  
		Last Modified: Mon, 16 Nov 2026 21:14:48 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3` - unknown; unknown

```console
$ docker pull geonetwork@sha256:1760d9e2c0561ff2a1e9c0d3a53179a8dfed31298a634108ebbfe1cc10aa81ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6230441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afcb6e4580924bc77e2b0459e803cbf3c7beb2ec6bf1ee3fa65d20ff2d476791`

```dockerfile
```

-	Layers:
	-	`sha256:8d4315a45d564a92c64aa4d01a67508c1c8dedfd8c3e5cd382c81612987d4bfa`  
		Last Modified: Mon, 16 Nov 2026 21:14:48 GMT  
		Size: 6.2 MB (6210578 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d40afb17e8e3de930f35d5128e16fda6106266304909aeb4d46ce5e2a3ef484`  
		Last Modified: Mon, 16 Nov 2026 21:14:48 GMT  
		Size: 19.9 KB (19863 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:bb8d233e8727744fa1987be15e52c455bd09eb0d7fc0e557c5e0c873aa8bac72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.0 MB (365982513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88c47751adc1320fecbbedb5bdb48ff9f7c2ea6f1ce9fadd3abd0140a25ed6c7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:31:57 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9015.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:58.337780+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:58.337780+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9015.tar
# Mon, 16 Nov 2026 19:41:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:41:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:41:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:41:34 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:41:34 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:41:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:41:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:41:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:41:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 19:45:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 19:45:26 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:45:26 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 19:45:26 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:45:26 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 19:45:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 19:45:58 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 19:45:58 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 19:45:58 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 19:45:58 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 19:52:10 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 19:52:10 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 19:52:10 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 19:52:10 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 19:52:10 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 19:52:10 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 20:04:49 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 20:04:49 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:04:49 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:04:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 20:04:49 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:e559f24d08dd72bc9d2a5e147da5879e37237192fcb4d790a7366125ed50a3fe`  
		Last Modified: Fri, 06 Nov 2026 12:45:01 GMT  
		Size: 39.4 MB (39369387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba25364baa451aafecaaa07dc2bf000816ef74517ab4b24424fc09b8da70affa`  
		Last Modified: Fri, 06 Nov 2026 12:45:04 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62cf4a8dcc74361404a998ba95f9c093f62b75fac53c80124e6fd079fec27531`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 25.0 MB (25029415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d88121b1983f9b8f80b984821221433c90481466ea1a73fc96b1a8b79c5c8bb`  
		Last Modified: Mon, 16 Nov 2026 19:42:02 GMT  
		Size: 50.6 MB (50557624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6166bcc6b7c544e3bf63f14cd996753ab91e99a5f46dcf7509e3651ae361230`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be18d864e62f34e02269f454dd761d7ca0fa3d4220cb5a52df5141c85c787a0`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c18f20b4ed5e00e614fe6ebda158a75acc7a22c1cb08671456d7b0fff0d100`  
		Last Modified: Mon, 16 Nov 2026 19:46:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5eed25a96139ecc18f19f508853295148e928ed788fd9592a45b7a59d65f5f`  
		Last Modified: Mon, 16 Nov 2026 19:46:10 GMT  
		Size: 16.5 MB (16479631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b34febb22ce36ff0e7ac33c119f9fb02d952863b9db0c50b38f9b20e84a7ac`  
		Last Modified: Mon, 16 Nov 2026 20:05:17 GMT  
		Size: 234.5 MB (234542919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f13e976589aed42cf0886a72876b48e62e5e06bd13ed27544713110d70bde870`  
		Last Modified: Mon, 16 Nov 2026 20:05:12 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3` - unknown; unknown

```console
$ docker pull geonetwork@sha256:c938bcd50895f3b0417d48ba5dc2b06c4ea84462b005549ea0e4efa39a9d69b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6233694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:809ddc52232832b1e617dfbddfd17725a630729e56651e603ce4c2bc039a12a8`

```dockerfile
```

-	Layers:
	-	`sha256:752b1bd7af5c047390f0e925bf88470a8a5781ac02cbc22d9bc80c44b5a750ea`  
		Last Modified: Mon, 16 Nov 2026 20:05:12 GMT  
		Size: 6.2 MB (6213760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b203a9e1a694dcdba537aec5547690d85c682f63e095774f4cdd8386974ed23`  
		Last Modified: Mon, 16 Nov 2026 20:05:12 GMT  
		Size: 19.9 KB (19934 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:70c55fd78d2f75d1910fb710408d8e1b0578784681e3128a0cc77006fc711ab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.9 MB (372864754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bea704e086628a3a02ec7714fd434df4c65aa3b7f72631b46e35882779472b2d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Mon, 16 Nov 2026 19:46:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:46:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:46:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:46:09 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:46:09 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:46:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:46:12 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:46:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:46:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 19:58:17 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 19:58:17 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:58:17 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 19:58:17 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:58:17 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 19:58:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 19:58:47 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 19:58:47 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 19:58:47 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 19:58:47 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 20:15:30 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 20:15:30 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 20:15:30 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 20:15:30 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 20:15:30 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 20:15:30 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 20:23:00 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 20:23:01 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:23:01 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:23:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 20:23:01 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a395ec95e824f4faaa6248c7d619d5dc0565a8a3ea740f3763c544080493162f`  
		Last Modified: Mon, 16 Nov 2026 19:46:28 GMT  
		Size: 26.1 MB (26082592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff6bd93855ba1c69f5001f5649b288a64d24b22d8605e798bd9001d76dcb9cf`  
		Last Modified: Mon, 16 Nov 2026 19:46:29 GMT  
		Size: 54.3 MB (54281247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d737a61402af9dc97994319aba62b8c1eed2b2f75616d11fed109c8be380e1fe`  
		Last Modified: Mon, 16 Nov 2026 19:46:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedb616ab059a0ea4f8a9643194da64fed18bbef2250fe6222928f1cadb0940a`  
		Last Modified: Mon, 16 Nov 2026 19:46:27 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b5c15f2eade923de708c2ed6afa1fada5f839d98647477bdf5c8e930c37b510`  
		Last Modified: Mon, 16 Nov 2026 19:58:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7813e37c5eb8c0b834010c8939b4426152e040e17d1b65f842453a930f3ce0c0`  
		Last Modified: Mon, 16 Nov 2026 19:58:58 GMT  
		Size: 16.8 MB (16800233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35631671bb010c3acc39801629445d7561e5e564057c8a3dcd88fc78b68c1567`  
		Last Modified: Mon, 16 Nov 2026 20:23:30 GMT  
		Size: 234.6 MB (234551353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28edc7eb60e2c26941aa287d9d028821285bfbfc5a88999402d66086f68dcbf5`  
		Last Modified: Mon, 16 Nov 2026 20:23:25 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3` - unknown; unknown

```console
$ docker pull geonetwork@sha256:1bf2543267e24ceaa2195756a11ad1ec2cca8515aea4202c17987b8397fbef05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6230885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8397e659427a606280bd52403f8e6cc7e17a616a74dbfdf31108d13e1fbf3e74`

```dockerfile
```

-	Layers:
	-	`sha256:f35b03da7ba74c6ef84a1f99d90e717427d718d081de40b91c31c091a6698470`  
		Last Modified: Mon, 16 Nov 2026 20:23:25 GMT  
		Size: 6.2 MB (6210932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c3be119c1dd58a5ce8408bab5336aceb4f3b00e6867401377150014e5aa9c36`  
		Last Modified: Mon, 16 Nov 2026 20:23:25 GMT  
		Size: 20.0 KB (19953 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:38101f2d4493b5cafba3f7c949bb1572b42984458043edc835f0852fe3f48f7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.6 MB (387573848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969e11c4be07d194aa9e4906399c6d1c085388e8f52335488bcab849e5500e5d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:31:02 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8890.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:02 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:02 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:03.049862+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:03.049862+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8890.tar
# Thu, 12 Nov 2026 01:42:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:42:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:42:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 12 Nov 2026 01:42:10 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:42:10 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:39:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:39:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:39:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:39:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 20:51:52 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 20:51:52 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:51:52 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 20:51:52 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:51:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 20:53:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 20:53:29 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 20:53:29 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 20:53:29 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 20:53:29 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:16:34 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 21:16:34 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 21:16:34 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 21:16:34 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 21:16:34 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 21:16:34 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 21:19:56 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 21:19:56 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:19:56 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 21:19:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 21:19:56 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:3c9701fbb9a70cf7a42c70b0ed1319dc1fda04dcd07e3702eaa3b62fb99eb313`  
		Last Modified: Fri, 06 Nov 2026 12:44:51 GMT  
		Size: 47.3 MB (47281220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122ff67c910d027fb3961e0d1c3631321593f40c9ed77173f3af88d3e12ebe04`  
		Last Modified: Fri, 06 Nov 2026 12:44:54 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84cedda96933e67a9dd3d8f3b80302e1b93041f3af2633a2b538d81b728e6d2f`  
		Last Modified: Thu, 12 Nov 2026 01:43:16 GMT  
		Size: 22.4 MB (22447449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075b4df27f270d04f5a45a06c0b76f3991134a31be2ab7134f1b0231b77a0ec1`  
		Last Modified: Mon, 16 Nov 2026 19:40:19 GMT  
		Size: 52.7 MB (52693315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5518b1fb0c61d3f39865a2be0ca73ab6032eac9b949553c2567c03f318ddd9e`  
		Last Modified: Mon, 16 Nov 2026 19:40:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03ad50d90604304915c19b5082e1aab0760b32ae750b760378d8e0489f6d563`  
		Last Modified: Mon, 16 Nov 2026 19:40:17 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5587897b708951de4f8a889625ff4cee8da17e2cb1131dd2294715e9e4bae03`  
		Last Modified: Mon, 16 Nov 2026 20:54:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:233ea60d64765a4f1fe46d7d34350626386eadf782937cdf19e5106849cf67df`  
		Last Modified: Mon, 16 Nov 2026 20:54:03 GMT  
		Size: 30.6 MB (30553064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059be7c5dcc900006a4772ee80b97f2511797cba9e7bdecb1c29b20bc01a47a9`  
		Last Modified: Mon, 16 Nov 2026 21:21:01 GMT  
		Size: 234.6 MB (234595278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209910c9447ae0d94c05c844b72bf9d7be14b64ecf0cecd6ac5691f33cefbb77`  
		Last Modified: Mon, 16 Nov 2026 21:20:56 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3` - unknown; unknown

```console
$ docker pull geonetwork@sha256:23e1637a56f3802c8e248abd5d64ee3ffb08e59a051ec6030ee1c35d8de44965
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6232415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b84737bdbc4aaa93de84e9c2206c9b1c9879f092555c67fbe36e39a451b22e0`

```dockerfile
```

-	Layers:
	-	`sha256:8b314de497289799c3bdb1420ff7163cb4e446e7821f6c78a4e2c73d41d9bce7`  
		Last Modified: Mon, 16 Nov 2026 21:20:56 GMT  
		Size: 6.2 MB (6212515 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a223bbdaa84d6b7509fa79128c0935de762ecd69bfefffb249d514fa8a2b9913`  
		Last Modified: Mon, 16 Nov 2026 21:20:55 GMT  
		Size: 19.9 KB (19900 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:3-postgres`

```console
$ docker pull geonetwork@sha256:07e565426f782d65e57b42e62e1dec84ee181c1c65d3cee03009c1ed8b328af5
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
$ docker pull geonetwork@sha256:822bdabd885100a5d01d3c80064346bc0120b6c8be7646846380a2583160999e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.6 MB (389646156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:701a3ddc450d771f254b33c5691ce3e4bace3c74dbe4a4384c379d4823697235`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Mon, 16 Nov 2026 19:46:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:46:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:46:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:46:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:46:21 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:46:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:46:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:46:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:46:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 20:12:51 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 20:12:51 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:12:51 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 20:12:51 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:12:51 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 20:13:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 20:13:49 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 20:13:49 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 20:13:49 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 20:13:49 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:11:46 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 21:11:46 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 21:11:46 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 21:11:46 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 21:11:46 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 21:11:46 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 21:14:24 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 21:14:24 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:14:24 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 21:14:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 21:14:24 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:46:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 21:46:36 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Mon, 16 Nov 2026 21:46:36 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Mon, 16 Nov 2026 21:46:36 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:46:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 21:46:36 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89b08bde1cc34ea32ea324cec646c509578ec147b34d82b167874d0ebd348def`  
		Last Modified: Mon, 16 Nov 2026 19:46:40 GMT  
		Size: 26.4 MB (26442159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade8d13c1a43b60cc329609bc390ca6d7c4e39c1c1cf1b0582e141ec8fa7bc89`  
		Last Modified: Mon, 16 Nov 2026 19:46:40 GMT  
		Size: 55.2 MB (55210308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025fd8f0fc32b54c5c913f53db300636c6c674d11d65fb339616490eb1b2bd9a`  
		Last Modified: Mon, 16 Nov 2026 19:46:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be18d864e62f34e02269f454dd761d7ca0fa3d4220cb5a52df5141c85c787a0`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e49be755acd6e01c606884deaa954c86d9240adbceac70d783fffd40a957f2cb`  
		Last Modified: Mon, 16 Nov 2026 20:13:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8610251d0b6a3f4d409bd4072a14f78d2c3792a903fc65b8db0f41e307fc69c`  
		Last Modified: Mon, 16 Nov 2026 20:14:00 GMT  
		Size: 16.9 MB (16854535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adaf9245bed7fe86a69a12bca0ec548f56d1466d29ed99f80e724ffbc9993973`  
		Last Modified: Mon, 16 Nov 2026 21:14:53 GMT  
		Size: 234.6 MB (234562805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0adb18e1c4cb3c6639e599bc2edaa8c3f1e796cb4fcd4585529151eded4eb6da`  
		Last Modified: Mon, 16 Nov 2026 21:14:48 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022b2d3273afdfc85672409b094e161d7fba869d4764dca063b856b61c984870`  
		Last Modified: Mon, 16 Nov 2026 21:46:55 GMT  
		Size: 14.4 MB (14402834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b1408e08bf5ebd12eb6ff2e4643763788553579cb71079f79c0bd160f5ac5c`  
		Last Modified: Mon, 16 Nov 2026 21:46:55 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1bf3710a70fce2272d6e07de6ad5ab224f9e0398f48656ed26268947ee7b0e8`  
		Last Modified: Mon, 16 Nov 2026 21:46:55 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa0a17297a388f7b906884e48db7418f8c20df5640e12144b7b2957cd2dda4ad`  
		Last Modified: Mon, 16 Nov 2026 21:46:55 GMT  
		Size: 974.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:e6fc691ef27d2387d57760910fb0d0931eea43844d7d7dfbafaecf2e6e4fc7ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7900368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:489f74e5ed0f99360f6f81935b83a874b3696f6581baa04e07855fd43c0e3ce6`

```dockerfile
```

-	Layers:
	-	`sha256:8688ffb74ee7f616264ce20796bf418c104b7b8b79e557f81c5038a9d088172e`  
		Last Modified: Mon, 16 Nov 2026 21:46:55 GMT  
		Size: 7.9 MB (7876779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:929f3f9c04f6d422489c8e2cab9be11be658197f95d41d0033d7e49f7b918258`  
		Last Modified: Mon, 16 Nov 2026 21:46:54 GMT  
		Size: 23.6 KB (23589 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3-postgres` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:4081107f28ad6b6174090df42d30f6cc420dff591b6fdf5c2ab1d5ee9a13814e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.6 MB (379553883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f243c2de5290b691d23ff8516e6530988704782824359494126dc72f08e91fac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:31:57 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9015.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:58.337780+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:58.337780+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9015.tar
# Mon, 16 Nov 2026 19:41:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:41:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:41:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:41:34 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:41:34 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:41:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:41:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:41:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:41:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 19:45:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 19:45:26 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:45:26 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 19:45:26 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:45:26 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 19:45:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 19:45:58 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 19:45:58 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 19:45:58 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 19:45:58 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 19:52:10 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 19:52:10 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 19:52:10 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 19:52:10 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 19:52:10 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 19:52:10 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 20:04:49 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 20:04:49 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:04:49 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:04:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 20:04:49 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 20:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:10:30 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Mon, 16 Nov 2026 20:10:30 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Mon, 16 Nov 2026 20:10:30 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:10:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 20:10:30 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:e559f24d08dd72bc9d2a5e147da5879e37237192fcb4d790a7366125ed50a3fe`  
		Last Modified: Fri, 06 Nov 2026 12:45:01 GMT  
		Size: 39.4 MB (39369387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba25364baa451aafecaaa07dc2bf000816ef74517ab4b24424fc09b8da70affa`  
		Last Modified: Fri, 06 Nov 2026 12:45:04 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62cf4a8dcc74361404a998ba95f9c093f62b75fac53c80124e6fd079fec27531`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 25.0 MB (25029415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d88121b1983f9b8f80b984821221433c90481466ea1a73fc96b1a8b79c5c8bb`  
		Last Modified: Mon, 16 Nov 2026 19:42:02 GMT  
		Size: 50.6 MB (50557624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6166bcc6b7c544e3bf63f14cd996753ab91e99a5f46dcf7509e3651ae361230`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be18d864e62f34e02269f454dd761d7ca0fa3d4220cb5a52df5141c85c787a0`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c18f20b4ed5e00e614fe6ebda158a75acc7a22c1cb08671456d7b0fff0d100`  
		Last Modified: Mon, 16 Nov 2026 19:46:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5eed25a96139ecc18f19f508853295148e928ed788fd9592a45b7a59d65f5f`  
		Last Modified: Mon, 16 Nov 2026 19:46:10 GMT  
		Size: 16.5 MB (16479631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b34febb22ce36ff0e7ac33c119f9fb02d952863b9db0c50b38f9b20e84a7ac`  
		Last Modified: Mon, 16 Nov 2026 20:05:17 GMT  
		Size: 234.5 MB (234542919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f13e976589aed42cf0886a72876b48e62e5e06bd13ed27544713110d70bde870`  
		Last Modified: Mon, 16 Nov 2026 20:05:12 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f32169d52f38899b9f33992cf4e4963f513ee8c5e1e23c2f33faf9e9b381e5f6`  
		Last Modified: Mon, 16 Nov 2026 20:10:48 GMT  
		Size: 13.6 MB (13567963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbd92400edd615e24ab2b8395502d5d2c61bc110c26e9729a6d0fd05053c69c`  
		Last Modified: Mon, 16 Nov 2026 20:10:48 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93100739ab3883bafdb539b7413a3adedb3eaaefd1f30449e7c6e6f51f100e4b`  
		Last Modified: Mon, 16 Nov 2026 20:10:48 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c91f4732839b103380f64358ce842a62abedda4a35c8b0173e90849cf022dcb`  
		Last Modified: Mon, 16 Nov 2026 20:10:48 GMT  
		Size: 974.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:f7a832be21a2262fa1462cce046465084a1ff4f6695ca30b7d84c6b8d71b5c11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7902368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:982164bad0606e0b29459f2a700ea86c84785a23c01f1839c6c6c5bbdd791a3c`

```dockerfile
```

-	Layers:
	-	`sha256:6047d6c8965839a8a7476b4764bfa612f817369a6067d662683cad81008c7286`  
		Last Modified: Mon, 16 Nov 2026 20:10:48 GMT  
		Size: 7.9 MB (7878694 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1709973b0e0c7ed86996dc732e0b8ec10e71c1d69e56b1546066f18717a159ee`  
		Last Modified: Mon, 16 Nov 2026 20:10:47 GMT  
		Size: 23.7 KB (23674 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3-postgres` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:71842146b4620ecec23f3a12936e637a76cebca191ba4f0e225f408ffe9b402a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.2 MB (387225577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c9f4afe6ce0b7e6800675225b829f1df7da1ec716d79b15930f6bbe95d945a8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Mon, 16 Nov 2026 19:46:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:46:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:46:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:46:09 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:46:09 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:46:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:46:12 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:46:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:46:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 19:58:17 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 19:58:17 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:58:17 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 19:58:17 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:58:17 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 19:58:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 19:58:47 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 19:58:47 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 19:58:47 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 19:58:47 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 20:15:30 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 20:15:30 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 20:15:30 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 20:15:30 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 20:15:30 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 20:15:30 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 20:23:00 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 20:23:01 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:23:01 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:23:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 20:23:01 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:14:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 21:14:22 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Mon, 16 Nov 2026 21:14:22 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Mon, 16 Nov 2026 21:14:22 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:14:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 21:14:22 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a395ec95e824f4faaa6248c7d619d5dc0565a8a3ea740f3763c544080493162f`  
		Last Modified: Mon, 16 Nov 2026 19:46:28 GMT  
		Size: 26.1 MB (26082592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff6bd93855ba1c69f5001f5649b288a64d24b22d8605e798bd9001d76dcb9cf`  
		Last Modified: Mon, 16 Nov 2026 19:46:29 GMT  
		Size: 54.3 MB (54281247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d737a61402af9dc97994319aba62b8c1eed2b2f75616d11fed109c8be380e1fe`  
		Last Modified: Mon, 16 Nov 2026 19:46:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedb616ab059a0ea4f8a9643194da64fed18bbef2250fe6222928f1cadb0940a`  
		Last Modified: Mon, 16 Nov 2026 19:46:27 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b5c15f2eade923de708c2ed6afa1fada5f839d98647477bdf5c8e930c37b510`  
		Last Modified: Mon, 16 Nov 2026 19:58:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7813e37c5eb8c0b834010c8939b4426152e040e17d1b65f842453a930f3ce0c0`  
		Last Modified: Mon, 16 Nov 2026 19:58:58 GMT  
		Size: 16.8 MB (16800233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35631671bb010c3acc39801629445d7561e5e564057c8a3dcd88fc78b68c1567`  
		Last Modified: Mon, 16 Nov 2026 20:23:30 GMT  
		Size: 234.6 MB (234551353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28edc7eb60e2c26941aa287d9d028821285bfbfc5a88999402d66086f68dcbf5`  
		Last Modified: Mon, 16 Nov 2026 20:23:25 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c6294711f16892fb35f1a304d1148848ced572012c464e6370ac39bc3f068f`  
		Last Modified: Mon, 16 Nov 2026 21:14:41 GMT  
		Size: 14.4 MB (14357406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a9e34b0ef2872bc5beac8e9faa4cb86d76d1a3c109f04d9547d4a87d4c628f3`  
		Last Modified: Mon, 16 Nov 2026 21:14:41 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799cc4e0492ff4199a0361918fa5c1afb8d15f958110f5a1f190cf70cfc7d8ed`  
		Last Modified: Mon, 16 Nov 2026 21:14:41 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8fd5bfac0a659eb464b79b61dc7fe77aa99d0681359f032d5ed4978916478e`  
		Last Modified: Mon, 16 Nov 2026 21:14:41 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:8d0d5721efbab23439475c6f382704b3016bdd2292d9f63fe267264d3085c178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7906870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0bfb1684b26fc8e01c4f0433639ba558a037b526cf9b968d5924c1f9c0d1f3`

```dockerfile
```

-	Layers:
	-	`sha256:c4c31abd4aa9c99439cefac0858dcefacb014bd51ae9210de97b62324a072baa`  
		Last Modified: Mon, 16 Nov 2026 21:14:41 GMT  
		Size: 7.9 MB (7883175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f92c367899d11e128a9e48bccb2d41490a6005b0223bce29b5157907919d670b`  
		Last Modified: Mon, 16 Nov 2026 21:14:41 GMT  
		Size: 23.7 KB (23695 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3-postgres` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:91892645a3169e811090580baf5a8546e3c668b4943ab8b0d9abb330d23eb77e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.6 MB (402631104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4c35c7b1c775e2787ddbaee6e59d1ce44771aa5cb01e53262b3ca476884021b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:31:02 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8890.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:02 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:02 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:03.049862+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:03.049862+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8890.tar
# Thu, 12 Nov 2026 01:42:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:42:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:42:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 12 Nov 2026 01:42:10 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:42:10 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:39:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:39:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:39:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:39:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 20:51:52 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 20:51:52 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:51:52 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 20:51:52 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:51:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 20:53:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 20:53:29 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 20:53:29 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 20:53:29 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 20:53:29 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:16:34 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 21:16:34 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 21:16:34 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 21:16:34 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 21:16:34 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 21:16:34 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 21:19:56 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 21:19:56 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:19:56 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 21:19:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 21:19:56 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:45:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 21:45:58 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Mon, 16 Nov 2026 21:45:58 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Mon, 16 Nov 2026 21:45:59 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:45:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 21:45:59 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:3c9701fbb9a70cf7a42c70b0ed1319dc1fda04dcd07e3702eaa3b62fb99eb313`  
		Last Modified: Fri, 06 Nov 2026 12:44:51 GMT  
		Size: 47.3 MB (47281220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122ff67c910d027fb3961e0d1c3631321593f40c9ed77173f3af88d3e12ebe04`  
		Last Modified: Fri, 06 Nov 2026 12:44:54 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84cedda96933e67a9dd3d8f3b80302e1b93041f3af2633a2b538d81b728e6d2f`  
		Last Modified: Thu, 12 Nov 2026 01:43:16 GMT  
		Size: 22.4 MB (22447449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075b4df27f270d04f5a45a06c0b76f3991134a31be2ab7134f1b0231b77a0ec1`  
		Last Modified: Mon, 16 Nov 2026 19:40:19 GMT  
		Size: 52.7 MB (52693315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5518b1fb0c61d3f39865a2be0ca73ab6032eac9b949553c2567c03f318ddd9e`  
		Last Modified: Mon, 16 Nov 2026 19:40:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03ad50d90604304915c19b5082e1aab0760b32ae750b760378d8e0489f6d563`  
		Last Modified: Mon, 16 Nov 2026 19:40:17 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5587897b708951de4f8a889625ff4cee8da17e2cb1131dd2294715e9e4bae03`  
		Last Modified: Mon, 16 Nov 2026 20:54:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:233ea60d64765a4f1fe46d7d34350626386eadf782937cdf19e5106849cf67df`  
		Last Modified: Mon, 16 Nov 2026 20:54:03 GMT  
		Size: 30.6 MB (30553064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059be7c5dcc900006a4772ee80b97f2511797cba9e7bdecb1c29b20bc01a47a9`  
		Last Modified: Mon, 16 Nov 2026 21:21:01 GMT  
		Size: 234.6 MB (234595278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209910c9447ae0d94c05c844b72bf9d7be14b64ecf0cecd6ac5691f33cefbb77`  
		Last Modified: Mon, 16 Nov 2026 21:20:56 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39819ec77c2f9e8c4303ccda6d35ecfc0ecabffe92cfda6314eb08e37f6a2f8e`  
		Last Modified: Mon, 16 Nov 2026 21:46:40 GMT  
		Size: 15.1 MB (15053850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c98f46f5c85a5589887667bc5bcf90788c14eda1d57ed7fc2dbf90e7792ee40f`  
		Last Modified: Mon, 16 Nov 2026 21:46:40 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:530c8585180261f7c9aa53d9eaab8a8d8486b74f5f840ebf0098d228cbf21cf9`  
		Last Modified: Mon, 16 Nov 2026 21:46:40 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e511fa22a5e61706576bc21ac7b4393481c48a3fba43d914d37a02883b010cb`  
		Last Modified: Mon, 16 Nov 2026 21:46:40 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:64f42c87e2ffd5ce1dddd0e95c0856bf7a33abf6b36c117152b4486c892dc95f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7905093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:385d2fe4bdca5ae347aede74e35c7ddb76488279f2387c76d3d392804438a697`

```dockerfile
```

-	Layers:
	-	`sha256:63b37c8dd3ee77e4368e284e02dc9d53fc4622f4190f4ad736f4f729ef194b3f`  
		Last Modified: Mon, 16 Nov 2026 21:46:40 GMT  
		Size: 7.9 MB (7881464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71f689e7c6ef9ff951a92dc9aa8855121bff139408cff9e2b78cfd8396a97f5e`  
		Last Modified: Mon, 16 Nov 2026 21:46:39 GMT  
		Size: 23.6 KB (23629 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:3.12`

```console
$ docker pull geonetwork@sha256:04746e67e7e23fdc1005b66d8dca426398dc31bbd33470b4149b2f01b6bc6e10
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
$ docker pull geonetwork@sha256:df1b8ed4cd0dae96809db6d5ed96654ca382f0c01c1a5bd6c23956ec3c19b1e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.2 MB (375239906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2637af7d012d5a79ae78cf154cf9b77e0048b7174e878947c428c26a3605282`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Mon, 16 Nov 2026 19:46:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:46:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:46:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:46:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:46:21 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:46:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:46:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:46:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:46:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 20:12:51 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 20:12:51 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:12:51 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 20:12:51 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:12:51 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 20:13:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 20:13:49 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 20:13:49 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 20:13:49 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 20:13:49 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:11:46 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 21:11:46 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 21:11:46 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 21:11:46 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 21:11:46 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 21:11:46 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 21:14:24 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 21:14:24 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:14:24 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 21:14:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 21:14:24 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89b08bde1cc34ea32ea324cec646c509578ec147b34d82b167874d0ebd348def`  
		Last Modified: Mon, 16 Nov 2026 19:46:40 GMT  
		Size: 26.4 MB (26442159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade8d13c1a43b60cc329609bc390ca6d7c4e39c1c1cf1b0582e141ec8fa7bc89`  
		Last Modified: Mon, 16 Nov 2026 19:46:40 GMT  
		Size: 55.2 MB (55210308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025fd8f0fc32b54c5c913f53db300636c6c674d11d65fb339616490eb1b2bd9a`  
		Last Modified: Mon, 16 Nov 2026 19:46:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be18d864e62f34e02269f454dd761d7ca0fa3d4220cb5a52df5141c85c787a0`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e49be755acd6e01c606884deaa954c86d9240adbceac70d783fffd40a957f2cb`  
		Last Modified: Mon, 16 Nov 2026 20:13:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8610251d0b6a3f4d409bd4072a14f78d2c3792a903fc65b8db0f41e307fc69c`  
		Last Modified: Mon, 16 Nov 2026 20:14:00 GMT  
		Size: 16.9 MB (16854535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adaf9245bed7fe86a69a12bca0ec548f56d1466d29ed99f80e724ffbc9993973`  
		Last Modified: Mon, 16 Nov 2026 21:14:53 GMT  
		Size: 234.6 MB (234562805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0adb18e1c4cb3c6639e599bc2edaa8c3f1e796cb4fcd4585529151eded4eb6da`  
		Last Modified: Mon, 16 Nov 2026 21:14:48 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:1760d9e2c0561ff2a1e9c0d3a53179a8dfed31298a634108ebbfe1cc10aa81ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6230441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afcb6e4580924bc77e2b0459e803cbf3c7beb2ec6bf1ee3fa65d20ff2d476791`

```dockerfile
```

-	Layers:
	-	`sha256:8d4315a45d564a92c64aa4d01a67508c1c8dedfd8c3e5cd382c81612987d4bfa`  
		Last Modified: Mon, 16 Nov 2026 21:14:48 GMT  
		Size: 6.2 MB (6210578 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d40afb17e8e3de930f35d5128e16fda6106266304909aeb4d46ce5e2a3ef484`  
		Last Modified: Mon, 16 Nov 2026 21:14:48 GMT  
		Size: 19.9 KB (19863 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:bb8d233e8727744fa1987be15e52c455bd09eb0d7fc0e557c5e0c873aa8bac72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.0 MB (365982513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88c47751adc1320fecbbedb5bdb48ff9f7c2ea6f1ce9fadd3abd0140a25ed6c7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:31:57 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9015.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:58.337780+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:58.337780+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9015.tar
# Mon, 16 Nov 2026 19:41:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:41:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:41:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:41:34 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:41:34 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:41:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:41:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:41:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:41:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 19:45:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 19:45:26 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:45:26 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 19:45:26 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:45:26 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 19:45:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 19:45:58 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 19:45:58 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 19:45:58 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 19:45:58 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 19:52:10 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 19:52:10 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 19:52:10 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 19:52:10 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 19:52:10 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 19:52:10 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 20:04:49 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 20:04:49 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:04:49 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:04:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 20:04:49 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:e559f24d08dd72bc9d2a5e147da5879e37237192fcb4d790a7366125ed50a3fe`  
		Last Modified: Fri, 06 Nov 2026 12:45:01 GMT  
		Size: 39.4 MB (39369387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba25364baa451aafecaaa07dc2bf000816ef74517ab4b24424fc09b8da70affa`  
		Last Modified: Fri, 06 Nov 2026 12:45:04 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62cf4a8dcc74361404a998ba95f9c093f62b75fac53c80124e6fd079fec27531`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 25.0 MB (25029415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d88121b1983f9b8f80b984821221433c90481466ea1a73fc96b1a8b79c5c8bb`  
		Last Modified: Mon, 16 Nov 2026 19:42:02 GMT  
		Size: 50.6 MB (50557624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6166bcc6b7c544e3bf63f14cd996753ab91e99a5f46dcf7509e3651ae361230`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be18d864e62f34e02269f454dd761d7ca0fa3d4220cb5a52df5141c85c787a0`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c18f20b4ed5e00e614fe6ebda158a75acc7a22c1cb08671456d7b0fff0d100`  
		Last Modified: Mon, 16 Nov 2026 19:46:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5eed25a96139ecc18f19f508853295148e928ed788fd9592a45b7a59d65f5f`  
		Last Modified: Mon, 16 Nov 2026 19:46:10 GMT  
		Size: 16.5 MB (16479631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b34febb22ce36ff0e7ac33c119f9fb02d952863b9db0c50b38f9b20e84a7ac`  
		Last Modified: Mon, 16 Nov 2026 20:05:17 GMT  
		Size: 234.5 MB (234542919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f13e976589aed42cf0886a72876b48e62e5e06bd13ed27544713110d70bde870`  
		Last Modified: Mon, 16 Nov 2026 20:05:12 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:c938bcd50895f3b0417d48ba5dc2b06c4ea84462b005549ea0e4efa39a9d69b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6233694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:809ddc52232832b1e617dfbddfd17725a630729e56651e603ce4c2bc039a12a8`

```dockerfile
```

-	Layers:
	-	`sha256:752b1bd7af5c047390f0e925bf88470a8a5781ac02cbc22d9bc80c44b5a750ea`  
		Last Modified: Mon, 16 Nov 2026 20:05:12 GMT  
		Size: 6.2 MB (6213760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b203a9e1a694dcdba537aec5547690d85c682f63e095774f4cdd8386974ed23`  
		Last Modified: Mon, 16 Nov 2026 20:05:12 GMT  
		Size: 19.9 KB (19934 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:70c55fd78d2f75d1910fb710408d8e1b0578784681e3128a0cc77006fc711ab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.9 MB (372864754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bea704e086628a3a02ec7714fd434df4c65aa3b7f72631b46e35882779472b2d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Mon, 16 Nov 2026 19:46:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:46:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:46:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:46:09 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:46:09 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:46:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:46:12 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:46:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:46:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 19:58:17 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 19:58:17 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:58:17 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 19:58:17 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:58:17 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 19:58:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 19:58:47 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 19:58:47 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 19:58:47 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 19:58:47 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 20:15:30 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 20:15:30 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 20:15:30 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 20:15:30 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 20:15:30 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 20:15:30 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 20:23:00 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 20:23:01 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:23:01 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:23:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 20:23:01 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a395ec95e824f4faaa6248c7d619d5dc0565a8a3ea740f3763c544080493162f`  
		Last Modified: Mon, 16 Nov 2026 19:46:28 GMT  
		Size: 26.1 MB (26082592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff6bd93855ba1c69f5001f5649b288a64d24b22d8605e798bd9001d76dcb9cf`  
		Last Modified: Mon, 16 Nov 2026 19:46:29 GMT  
		Size: 54.3 MB (54281247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d737a61402af9dc97994319aba62b8c1eed2b2f75616d11fed109c8be380e1fe`  
		Last Modified: Mon, 16 Nov 2026 19:46:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedb616ab059a0ea4f8a9643194da64fed18bbef2250fe6222928f1cadb0940a`  
		Last Modified: Mon, 16 Nov 2026 19:46:27 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b5c15f2eade923de708c2ed6afa1fada5f839d98647477bdf5c8e930c37b510`  
		Last Modified: Mon, 16 Nov 2026 19:58:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7813e37c5eb8c0b834010c8939b4426152e040e17d1b65f842453a930f3ce0c0`  
		Last Modified: Mon, 16 Nov 2026 19:58:58 GMT  
		Size: 16.8 MB (16800233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35631671bb010c3acc39801629445d7561e5e564057c8a3dcd88fc78b68c1567`  
		Last Modified: Mon, 16 Nov 2026 20:23:30 GMT  
		Size: 234.6 MB (234551353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28edc7eb60e2c26941aa287d9d028821285bfbfc5a88999402d66086f68dcbf5`  
		Last Modified: Mon, 16 Nov 2026 20:23:25 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:1bf2543267e24ceaa2195756a11ad1ec2cca8515aea4202c17987b8397fbef05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6230885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8397e659427a606280bd52403f8e6cc7e17a616a74dbfdf31108d13e1fbf3e74`

```dockerfile
```

-	Layers:
	-	`sha256:f35b03da7ba74c6ef84a1f99d90e717427d718d081de40b91c31c091a6698470`  
		Last Modified: Mon, 16 Nov 2026 20:23:25 GMT  
		Size: 6.2 MB (6210932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c3be119c1dd58a5ce8408bab5336aceb4f3b00e6867401377150014e5aa9c36`  
		Last Modified: Mon, 16 Nov 2026 20:23:25 GMT  
		Size: 20.0 KB (19953 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:38101f2d4493b5cafba3f7c949bb1572b42984458043edc835f0852fe3f48f7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.6 MB (387573848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969e11c4be07d194aa9e4906399c6d1c085388e8f52335488bcab849e5500e5d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:31:02 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8890.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:02 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:02 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:03.049862+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:03.049862+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8890.tar
# Thu, 12 Nov 2026 01:42:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:42:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:42:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 12 Nov 2026 01:42:10 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:42:10 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:39:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:39:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:39:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:39:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 20:51:52 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 20:51:52 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:51:52 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 20:51:52 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:51:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 20:53:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 20:53:29 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 20:53:29 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 20:53:29 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 20:53:29 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:16:34 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 21:16:34 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 21:16:34 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 21:16:34 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 21:16:34 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 21:16:34 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 21:19:56 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 21:19:56 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:19:56 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 21:19:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 21:19:56 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:3c9701fbb9a70cf7a42c70b0ed1319dc1fda04dcd07e3702eaa3b62fb99eb313`  
		Last Modified: Fri, 06 Nov 2026 12:44:51 GMT  
		Size: 47.3 MB (47281220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122ff67c910d027fb3961e0d1c3631321593f40c9ed77173f3af88d3e12ebe04`  
		Last Modified: Fri, 06 Nov 2026 12:44:54 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84cedda96933e67a9dd3d8f3b80302e1b93041f3af2633a2b538d81b728e6d2f`  
		Last Modified: Thu, 12 Nov 2026 01:43:16 GMT  
		Size: 22.4 MB (22447449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075b4df27f270d04f5a45a06c0b76f3991134a31be2ab7134f1b0231b77a0ec1`  
		Last Modified: Mon, 16 Nov 2026 19:40:19 GMT  
		Size: 52.7 MB (52693315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5518b1fb0c61d3f39865a2be0ca73ab6032eac9b949553c2567c03f318ddd9e`  
		Last Modified: Mon, 16 Nov 2026 19:40:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03ad50d90604304915c19b5082e1aab0760b32ae750b760378d8e0489f6d563`  
		Last Modified: Mon, 16 Nov 2026 19:40:17 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5587897b708951de4f8a889625ff4cee8da17e2cb1131dd2294715e9e4bae03`  
		Last Modified: Mon, 16 Nov 2026 20:54:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:233ea60d64765a4f1fe46d7d34350626386eadf782937cdf19e5106849cf67df`  
		Last Modified: Mon, 16 Nov 2026 20:54:03 GMT  
		Size: 30.6 MB (30553064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059be7c5dcc900006a4772ee80b97f2511797cba9e7bdecb1c29b20bc01a47a9`  
		Last Modified: Mon, 16 Nov 2026 21:21:01 GMT  
		Size: 234.6 MB (234595278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209910c9447ae0d94c05c844b72bf9d7be14b64ecf0cecd6ac5691f33cefbb77`  
		Last Modified: Mon, 16 Nov 2026 21:20:56 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:23e1637a56f3802c8e248abd5d64ee3ffb08e59a051ec6030ee1c35d8de44965
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6232415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b84737bdbc4aaa93de84e9c2206c9b1c9879f092555c67fbe36e39a451b22e0`

```dockerfile
```

-	Layers:
	-	`sha256:8b314de497289799c3bdb1420ff7163cb4e446e7821f6c78a4e2c73d41d9bce7`  
		Last Modified: Mon, 16 Nov 2026 21:20:56 GMT  
		Size: 6.2 MB (6212515 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a223bbdaa84d6b7509fa79128c0935de762ecd69bfefffb249d514fa8a2b9913`  
		Last Modified: Mon, 16 Nov 2026 21:20:55 GMT  
		Size: 19.9 KB (19900 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:3.12-postgres`

```console
$ docker pull geonetwork@sha256:07e565426f782d65e57b42e62e1dec84ee181c1c65d3cee03009c1ed8b328af5
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
$ docker pull geonetwork@sha256:822bdabd885100a5d01d3c80064346bc0120b6c8be7646846380a2583160999e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.6 MB (389646156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:701a3ddc450d771f254b33c5691ce3e4bace3c74dbe4a4384c379d4823697235`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Mon, 16 Nov 2026 19:46:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:46:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:46:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:46:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:46:21 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:46:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:46:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:46:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:46:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 20:12:51 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 20:12:51 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:12:51 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 20:12:51 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:12:51 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 20:13:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 20:13:49 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 20:13:49 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 20:13:49 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 20:13:49 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:11:46 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 21:11:46 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 21:11:46 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 21:11:46 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 21:11:46 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 21:11:46 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 21:14:24 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 21:14:24 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:14:24 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 21:14:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 21:14:24 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:46:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 21:46:36 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Mon, 16 Nov 2026 21:46:36 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Mon, 16 Nov 2026 21:46:36 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:46:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 21:46:36 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89b08bde1cc34ea32ea324cec646c509578ec147b34d82b167874d0ebd348def`  
		Last Modified: Mon, 16 Nov 2026 19:46:40 GMT  
		Size: 26.4 MB (26442159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade8d13c1a43b60cc329609bc390ca6d7c4e39c1c1cf1b0582e141ec8fa7bc89`  
		Last Modified: Mon, 16 Nov 2026 19:46:40 GMT  
		Size: 55.2 MB (55210308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025fd8f0fc32b54c5c913f53db300636c6c674d11d65fb339616490eb1b2bd9a`  
		Last Modified: Mon, 16 Nov 2026 19:46:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be18d864e62f34e02269f454dd761d7ca0fa3d4220cb5a52df5141c85c787a0`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e49be755acd6e01c606884deaa954c86d9240adbceac70d783fffd40a957f2cb`  
		Last Modified: Mon, 16 Nov 2026 20:13:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8610251d0b6a3f4d409bd4072a14f78d2c3792a903fc65b8db0f41e307fc69c`  
		Last Modified: Mon, 16 Nov 2026 20:14:00 GMT  
		Size: 16.9 MB (16854535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adaf9245bed7fe86a69a12bca0ec548f56d1466d29ed99f80e724ffbc9993973`  
		Last Modified: Mon, 16 Nov 2026 21:14:53 GMT  
		Size: 234.6 MB (234562805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0adb18e1c4cb3c6639e599bc2edaa8c3f1e796cb4fcd4585529151eded4eb6da`  
		Last Modified: Mon, 16 Nov 2026 21:14:48 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022b2d3273afdfc85672409b094e161d7fba869d4764dca063b856b61c984870`  
		Last Modified: Mon, 16 Nov 2026 21:46:55 GMT  
		Size: 14.4 MB (14402834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b1408e08bf5ebd12eb6ff2e4643763788553579cb71079f79c0bd160f5ac5c`  
		Last Modified: Mon, 16 Nov 2026 21:46:55 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1bf3710a70fce2272d6e07de6ad5ab224f9e0398f48656ed26268947ee7b0e8`  
		Last Modified: Mon, 16 Nov 2026 21:46:55 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa0a17297a388f7b906884e48db7418f8c20df5640e12144b7b2957cd2dda4ad`  
		Last Modified: Mon, 16 Nov 2026 21:46:55 GMT  
		Size: 974.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:e6fc691ef27d2387d57760910fb0d0931eea43844d7d7dfbafaecf2e6e4fc7ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7900368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:489f74e5ed0f99360f6f81935b83a874b3696f6581baa04e07855fd43c0e3ce6`

```dockerfile
```

-	Layers:
	-	`sha256:8688ffb74ee7f616264ce20796bf418c104b7b8b79e557f81c5038a9d088172e`  
		Last Modified: Mon, 16 Nov 2026 21:46:55 GMT  
		Size: 7.9 MB (7876779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:929f3f9c04f6d422489c8e2cab9be11be658197f95d41d0033d7e49f7b918258`  
		Last Modified: Mon, 16 Nov 2026 21:46:54 GMT  
		Size: 23.6 KB (23589 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12-postgres` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:4081107f28ad6b6174090df42d30f6cc420dff591b6fdf5c2ab1d5ee9a13814e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.6 MB (379553883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f243c2de5290b691d23ff8516e6530988704782824359494126dc72f08e91fac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:31:57 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9015.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:58.337780+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:58.337780+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9015.tar
# Mon, 16 Nov 2026 19:41:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:41:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:41:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:41:34 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:41:34 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:41:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:41:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:41:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:41:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 19:45:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 19:45:26 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:45:26 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 19:45:26 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:45:26 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 19:45:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 19:45:58 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 19:45:58 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 19:45:58 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 19:45:58 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 19:52:10 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 19:52:10 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 19:52:10 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 19:52:10 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 19:52:10 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 19:52:10 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 20:04:49 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 20:04:49 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:04:49 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:04:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 20:04:49 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 20:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:10:30 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Mon, 16 Nov 2026 20:10:30 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Mon, 16 Nov 2026 20:10:30 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:10:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 20:10:30 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:e559f24d08dd72bc9d2a5e147da5879e37237192fcb4d790a7366125ed50a3fe`  
		Last Modified: Fri, 06 Nov 2026 12:45:01 GMT  
		Size: 39.4 MB (39369387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba25364baa451aafecaaa07dc2bf000816ef74517ab4b24424fc09b8da70affa`  
		Last Modified: Fri, 06 Nov 2026 12:45:04 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62cf4a8dcc74361404a998ba95f9c093f62b75fac53c80124e6fd079fec27531`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 25.0 MB (25029415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d88121b1983f9b8f80b984821221433c90481466ea1a73fc96b1a8b79c5c8bb`  
		Last Modified: Mon, 16 Nov 2026 19:42:02 GMT  
		Size: 50.6 MB (50557624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6166bcc6b7c544e3bf63f14cd996753ab91e99a5f46dcf7509e3651ae361230`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be18d864e62f34e02269f454dd761d7ca0fa3d4220cb5a52df5141c85c787a0`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c18f20b4ed5e00e614fe6ebda158a75acc7a22c1cb08671456d7b0fff0d100`  
		Last Modified: Mon, 16 Nov 2026 19:46:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5eed25a96139ecc18f19f508853295148e928ed788fd9592a45b7a59d65f5f`  
		Last Modified: Mon, 16 Nov 2026 19:46:10 GMT  
		Size: 16.5 MB (16479631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b34febb22ce36ff0e7ac33c119f9fb02d952863b9db0c50b38f9b20e84a7ac`  
		Last Modified: Mon, 16 Nov 2026 20:05:17 GMT  
		Size: 234.5 MB (234542919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f13e976589aed42cf0886a72876b48e62e5e06bd13ed27544713110d70bde870`  
		Last Modified: Mon, 16 Nov 2026 20:05:12 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f32169d52f38899b9f33992cf4e4963f513ee8c5e1e23c2f33faf9e9b381e5f6`  
		Last Modified: Mon, 16 Nov 2026 20:10:48 GMT  
		Size: 13.6 MB (13567963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbd92400edd615e24ab2b8395502d5d2c61bc110c26e9729a6d0fd05053c69c`  
		Last Modified: Mon, 16 Nov 2026 20:10:48 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93100739ab3883bafdb539b7413a3adedb3eaaefd1f30449e7c6e6f51f100e4b`  
		Last Modified: Mon, 16 Nov 2026 20:10:48 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c91f4732839b103380f64358ce842a62abedda4a35c8b0173e90849cf022dcb`  
		Last Modified: Mon, 16 Nov 2026 20:10:48 GMT  
		Size: 974.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:f7a832be21a2262fa1462cce046465084a1ff4f6695ca30b7d84c6b8d71b5c11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7902368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:982164bad0606e0b29459f2a700ea86c84785a23c01f1839c6c6c5bbdd791a3c`

```dockerfile
```

-	Layers:
	-	`sha256:6047d6c8965839a8a7476b4764bfa612f817369a6067d662683cad81008c7286`  
		Last Modified: Mon, 16 Nov 2026 20:10:48 GMT  
		Size: 7.9 MB (7878694 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1709973b0e0c7ed86996dc732e0b8ec10e71c1d69e56b1546066f18717a159ee`  
		Last Modified: Mon, 16 Nov 2026 20:10:47 GMT  
		Size: 23.7 KB (23674 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12-postgres` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:71842146b4620ecec23f3a12936e637a76cebca191ba4f0e225f408ffe9b402a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.2 MB (387225577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c9f4afe6ce0b7e6800675225b829f1df7da1ec716d79b15930f6bbe95d945a8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Mon, 16 Nov 2026 19:46:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:46:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:46:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:46:09 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:46:09 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:46:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:46:12 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:46:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:46:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 19:58:17 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 19:58:17 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:58:17 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 19:58:17 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:58:17 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 19:58:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 19:58:47 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 19:58:47 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 19:58:47 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 19:58:47 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 20:15:30 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 20:15:30 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 20:15:30 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 20:15:30 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 20:15:30 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 20:15:30 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 20:23:00 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 20:23:01 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:23:01 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:23:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 20:23:01 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:14:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 21:14:22 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Mon, 16 Nov 2026 21:14:22 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Mon, 16 Nov 2026 21:14:22 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:14:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 21:14:22 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a395ec95e824f4faaa6248c7d619d5dc0565a8a3ea740f3763c544080493162f`  
		Last Modified: Mon, 16 Nov 2026 19:46:28 GMT  
		Size: 26.1 MB (26082592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff6bd93855ba1c69f5001f5649b288a64d24b22d8605e798bd9001d76dcb9cf`  
		Last Modified: Mon, 16 Nov 2026 19:46:29 GMT  
		Size: 54.3 MB (54281247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d737a61402af9dc97994319aba62b8c1eed2b2f75616d11fed109c8be380e1fe`  
		Last Modified: Mon, 16 Nov 2026 19:46:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedb616ab059a0ea4f8a9643194da64fed18bbef2250fe6222928f1cadb0940a`  
		Last Modified: Mon, 16 Nov 2026 19:46:27 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b5c15f2eade923de708c2ed6afa1fada5f839d98647477bdf5c8e930c37b510`  
		Last Modified: Mon, 16 Nov 2026 19:58:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7813e37c5eb8c0b834010c8939b4426152e040e17d1b65f842453a930f3ce0c0`  
		Last Modified: Mon, 16 Nov 2026 19:58:58 GMT  
		Size: 16.8 MB (16800233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35631671bb010c3acc39801629445d7561e5e564057c8a3dcd88fc78b68c1567`  
		Last Modified: Mon, 16 Nov 2026 20:23:30 GMT  
		Size: 234.6 MB (234551353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28edc7eb60e2c26941aa287d9d028821285bfbfc5a88999402d66086f68dcbf5`  
		Last Modified: Mon, 16 Nov 2026 20:23:25 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c6294711f16892fb35f1a304d1148848ced572012c464e6370ac39bc3f068f`  
		Last Modified: Mon, 16 Nov 2026 21:14:41 GMT  
		Size: 14.4 MB (14357406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a9e34b0ef2872bc5beac8e9faa4cb86d76d1a3c109f04d9547d4a87d4c628f3`  
		Last Modified: Mon, 16 Nov 2026 21:14:41 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799cc4e0492ff4199a0361918fa5c1afb8d15f958110f5a1f190cf70cfc7d8ed`  
		Last Modified: Mon, 16 Nov 2026 21:14:41 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8fd5bfac0a659eb464b79b61dc7fe77aa99d0681359f032d5ed4978916478e`  
		Last Modified: Mon, 16 Nov 2026 21:14:41 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:8d0d5721efbab23439475c6f382704b3016bdd2292d9f63fe267264d3085c178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7906870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0bfb1684b26fc8e01c4f0433639ba558a037b526cf9b968d5924c1f9c0d1f3`

```dockerfile
```

-	Layers:
	-	`sha256:c4c31abd4aa9c99439cefac0858dcefacb014bd51ae9210de97b62324a072baa`  
		Last Modified: Mon, 16 Nov 2026 21:14:41 GMT  
		Size: 7.9 MB (7883175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f92c367899d11e128a9e48bccb2d41490a6005b0223bce29b5157907919d670b`  
		Last Modified: Mon, 16 Nov 2026 21:14:41 GMT  
		Size: 23.7 KB (23695 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12-postgres` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:91892645a3169e811090580baf5a8546e3c668b4943ab8b0d9abb330d23eb77e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.6 MB (402631104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4c35c7b1c775e2787ddbaee6e59d1ce44771aa5cb01e53262b3ca476884021b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:31:02 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8890.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:02 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:02 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:03.049862+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:03.049862+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8890.tar
# Thu, 12 Nov 2026 01:42:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:42:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:42:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 12 Nov 2026 01:42:10 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:42:10 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:39:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:39:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:39:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:39:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 20:51:52 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 20:51:52 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:51:52 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 20:51:52 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:51:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 20:53:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 20:53:29 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 20:53:29 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 20:53:29 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 20:53:29 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:16:34 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 21:16:34 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 21:16:34 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 21:16:34 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 21:16:34 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 21:16:34 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 21:19:56 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 21:19:56 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:19:56 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 21:19:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 21:19:56 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:45:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 21:45:58 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Mon, 16 Nov 2026 21:45:58 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Mon, 16 Nov 2026 21:45:59 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:45:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 21:45:59 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:3c9701fbb9a70cf7a42c70b0ed1319dc1fda04dcd07e3702eaa3b62fb99eb313`  
		Last Modified: Fri, 06 Nov 2026 12:44:51 GMT  
		Size: 47.3 MB (47281220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122ff67c910d027fb3961e0d1c3631321593f40c9ed77173f3af88d3e12ebe04`  
		Last Modified: Fri, 06 Nov 2026 12:44:54 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84cedda96933e67a9dd3d8f3b80302e1b93041f3af2633a2b538d81b728e6d2f`  
		Last Modified: Thu, 12 Nov 2026 01:43:16 GMT  
		Size: 22.4 MB (22447449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075b4df27f270d04f5a45a06c0b76f3991134a31be2ab7134f1b0231b77a0ec1`  
		Last Modified: Mon, 16 Nov 2026 19:40:19 GMT  
		Size: 52.7 MB (52693315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5518b1fb0c61d3f39865a2be0ca73ab6032eac9b949553c2567c03f318ddd9e`  
		Last Modified: Mon, 16 Nov 2026 19:40:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03ad50d90604304915c19b5082e1aab0760b32ae750b760378d8e0489f6d563`  
		Last Modified: Mon, 16 Nov 2026 19:40:17 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5587897b708951de4f8a889625ff4cee8da17e2cb1131dd2294715e9e4bae03`  
		Last Modified: Mon, 16 Nov 2026 20:54:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:233ea60d64765a4f1fe46d7d34350626386eadf782937cdf19e5106849cf67df`  
		Last Modified: Mon, 16 Nov 2026 20:54:03 GMT  
		Size: 30.6 MB (30553064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059be7c5dcc900006a4772ee80b97f2511797cba9e7bdecb1c29b20bc01a47a9`  
		Last Modified: Mon, 16 Nov 2026 21:21:01 GMT  
		Size: 234.6 MB (234595278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209910c9447ae0d94c05c844b72bf9d7be14b64ecf0cecd6ac5691f33cefbb77`  
		Last Modified: Mon, 16 Nov 2026 21:20:56 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39819ec77c2f9e8c4303ccda6d35ecfc0ecabffe92cfda6314eb08e37f6a2f8e`  
		Last Modified: Mon, 16 Nov 2026 21:46:40 GMT  
		Size: 15.1 MB (15053850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c98f46f5c85a5589887667bc5bcf90788c14eda1d57ed7fc2dbf90e7792ee40f`  
		Last Modified: Mon, 16 Nov 2026 21:46:40 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:530c8585180261f7c9aa53d9eaab8a8d8486b74f5f840ebf0098d228cbf21cf9`  
		Last Modified: Mon, 16 Nov 2026 21:46:40 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e511fa22a5e61706576bc21ac7b4393481c48a3fba43d914d37a02883b010cb`  
		Last Modified: Mon, 16 Nov 2026 21:46:40 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:64f42c87e2ffd5ce1dddd0e95c0856bf7a33abf6b36c117152b4486c892dc95f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7905093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:385d2fe4bdca5ae347aede74e35c7ddb76488279f2387c76d3d392804438a697`

```dockerfile
```

-	Layers:
	-	`sha256:63b37c8dd3ee77e4368e284e02dc9d53fc4622f4190f4ad736f4f729ef194b3f`  
		Last Modified: Mon, 16 Nov 2026 21:46:40 GMT  
		Size: 7.9 MB (7881464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71f689e7c6ef9ff951a92dc9aa8855121bff139408cff9e2b78cfd8396a97f5e`  
		Last Modified: Mon, 16 Nov 2026 21:46:39 GMT  
		Size: 23.6 KB (23629 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:3.12.12`

```console
$ docker pull geonetwork@sha256:04746e67e7e23fdc1005b66d8dca426398dc31bbd33470b4149b2f01b6bc6e10
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
$ docker pull geonetwork@sha256:df1b8ed4cd0dae96809db6d5ed96654ca382f0c01c1a5bd6c23956ec3c19b1e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.2 MB (375239906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2637af7d012d5a79ae78cf154cf9b77e0048b7174e878947c428c26a3605282`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Mon, 16 Nov 2026 19:46:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:46:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:46:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:46:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:46:21 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:46:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:46:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:46:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:46:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 20:12:51 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 20:12:51 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:12:51 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 20:12:51 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:12:51 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 20:13:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 20:13:49 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 20:13:49 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 20:13:49 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 20:13:49 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:11:46 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 21:11:46 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 21:11:46 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 21:11:46 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 21:11:46 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 21:11:46 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 21:14:24 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 21:14:24 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:14:24 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 21:14:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 21:14:24 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89b08bde1cc34ea32ea324cec646c509578ec147b34d82b167874d0ebd348def`  
		Last Modified: Mon, 16 Nov 2026 19:46:40 GMT  
		Size: 26.4 MB (26442159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade8d13c1a43b60cc329609bc390ca6d7c4e39c1c1cf1b0582e141ec8fa7bc89`  
		Last Modified: Mon, 16 Nov 2026 19:46:40 GMT  
		Size: 55.2 MB (55210308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025fd8f0fc32b54c5c913f53db300636c6c674d11d65fb339616490eb1b2bd9a`  
		Last Modified: Mon, 16 Nov 2026 19:46:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be18d864e62f34e02269f454dd761d7ca0fa3d4220cb5a52df5141c85c787a0`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e49be755acd6e01c606884deaa954c86d9240adbceac70d783fffd40a957f2cb`  
		Last Modified: Mon, 16 Nov 2026 20:13:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8610251d0b6a3f4d409bd4072a14f78d2c3792a903fc65b8db0f41e307fc69c`  
		Last Modified: Mon, 16 Nov 2026 20:14:00 GMT  
		Size: 16.9 MB (16854535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adaf9245bed7fe86a69a12bca0ec548f56d1466d29ed99f80e724ffbc9993973`  
		Last Modified: Mon, 16 Nov 2026 21:14:53 GMT  
		Size: 234.6 MB (234562805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0adb18e1c4cb3c6639e599bc2edaa8c3f1e796cb4fcd4585529151eded4eb6da`  
		Last Modified: Mon, 16 Nov 2026 21:14:48 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:1760d9e2c0561ff2a1e9c0d3a53179a8dfed31298a634108ebbfe1cc10aa81ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6230441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afcb6e4580924bc77e2b0459e803cbf3c7beb2ec6bf1ee3fa65d20ff2d476791`

```dockerfile
```

-	Layers:
	-	`sha256:8d4315a45d564a92c64aa4d01a67508c1c8dedfd8c3e5cd382c81612987d4bfa`  
		Last Modified: Mon, 16 Nov 2026 21:14:48 GMT  
		Size: 6.2 MB (6210578 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d40afb17e8e3de930f35d5128e16fda6106266304909aeb4d46ce5e2a3ef484`  
		Last Modified: Mon, 16 Nov 2026 21:14:48 GMT  
		Size: 19.9 KB (19863 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12.12` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:bb8d233e8727744fa1987be15e52c455bd09eb0d7fc0e557c5e0c873aa8bac72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.0 MB (365982513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88c47751adc1320fecbbedb5bdb48ff9f7c2ea6f1ce9fadd3abd0140a25ed6c7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:31:57 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9015.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:58.337780+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:58.337780+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9015.tar
# Mon, 16 Nov 2026 19:41:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:41:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:41:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:41:34 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:41:34 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:41:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:41:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:41:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:41:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 19:45:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 19:45:26 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:45:26 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 19:45:26 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:45:26 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 19:45:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 19:45:58 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 19:45:58 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 19:45:58 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 19:45:58 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 19:52:10 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 19:52:10 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 19:52:10 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 19:52:10 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 19:52:10 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 19:52:10 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 20:04:49 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 20:04:49 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:04:49 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:04:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 20:04:49 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:e559f24d08dd72bc9d2a5e147da5879e37237192fcb4d790a7366125ed50a3fe`  
		Last Modified: Fri, 06 Nov 2026 12:45:01 GMT  
		Size: 39.4 MB (39369387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba25364baa451aafecaaa07dc2bf000816ef74517ab4b24424fc09b8da70affa`  
		Last Modified: Fri, 06 Nov 2026 12:45:04 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62cf4a8dcc74361404a998ba95f9c093f62b75fac53c80124e6fd079fec27531`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 25.0 MB (25029415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d88121b1983f9b8f80b984821221433c90481466ea1a73fc96b1a8b79c5c8bb`  
		Last Modified: Mon, 16 Nov 2026 19:42:02 GMT  
		Size: 50.6 MB (50557624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6166bcc6b7c544e3bf63f14cd996753ab91e99a5f46dcf7509e3651ae361230`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be18d864e62f34e02269f454dd761d7ca0fa3d4220cb5a52df5141c85c787a0`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c18f20b4ed5e00e614fe6ebda158a75acc7a22c1cb08671456d7b0fff0d100`  
		Last Modified: Mon, 16 Nov 2026 19:46:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5eed25a96139ecc18f19f508853295148e928ed788fd9592a45b7a59d65f5f`  
		Last Modified: Mon, 16 Nov 2026 19:46:10 GMT  
		Size: 16.5 MB (16479631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b34febb22ce36ff0e7ac33c119f9fb02d952863b9db0c50b38f9b20e84a7ac`  
		Last Modified: Mon, 16 Nov 2026 20:05:17 GMT  
		Size: 234.5 MB (234542919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f13e976589aed42cf0886a72876b48e62e5e06bd13ed27544713110d70bde870`  
		Last Modified: Mon, 16 Nov 2026 20:05:12 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:c938bcd50895f3b0417d48ba5dc2b06c4ea84462b005549ea0e4efa39a9d69b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6233694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:809ddc52232832b1e617dfbddfd17725a630729e56651e603ce4c2bc039a12a8`

```dockerfile
```

-	Layers:
	-	`sha256:752b1bd7af5c047390f0e925bf88470a8a5781ac02cbc22d9bc80c44b5a750ea`  
		Last Modified: Mon, 16 Nov 2026 20:05:12 GMT  
		Size: 6.2 MB (6213760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b203a9e1a694dcdba537aec5547690d85c682f63e095774f4cdd8386974ed23`  
		Last Modified: Mon, 16 Nov 2026 20:05:12 GMT  
		Size: 19.9 KB (19934 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12.12` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:70c55fd78d2f75d1910fb710408d8e1b0578784681e3128a0cc77006fc711ab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.9 MB (372864754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bea704e086628a3a02ec7714fd434df4c65aa3b7f72631b46e35882779472b2d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Mon, 16 Nov 2026 19:46:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:46:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:46:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:46:09 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:46:09 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:46:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:46:12 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:46:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:46:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 19:58:17 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 19:58:17 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:58:17 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 19:58:17 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:58:17 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 19:58:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 19:58:47 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 19:58:47 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 19:58:47 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 19:58:47 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 20:15:30 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 20:15:30 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 20:15:30 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 20:15:30 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 20:15:30 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 20:15:30 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 20:23:00 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 20:23:01 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:23:01 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:23:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 20:23:01 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a395ec95e824f4faaa6248c7d619d5dc0565a8a3ea740f3763c544080493162f`  
		Last Modified: Mon, 16 Nov 2026 19:46:28 GMT  
		Size: 26.1 MB (26082592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff6bd93855ba1c69f5001f5649b288a64d24b22d8605e798bd9001d76dcb9cf`  
		Last Modified: Mon, 16 Nov 2026 19:46:29 GMT  
		Size: 54.3 MB (54281247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d737a61402af9dc97994319aba62b8c1eed2b2f75616d11fed109c8be380e1fe`  
		Last Modified: Mon, 16 Nov 2026 19:46:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedb616ab059a0ea4f8a9643194da64fed18bbef2250fe6222928f1cadb0940a`  
		Last Modified: Mon, 16 Nov 2026 19:46:27 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b5c15f2eade923de708c2ed6afa1fada5f839d98647477bdf5c8e930c37b510`  
		Last Modified: Mon, 16 Nov 2026 19:58:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7813e37c5eb8c0b834010c8939b4426152e040e17d1b65f842453a930f3ce0c0`  
		Last Modified: Mon, 16 Nov 2026 19:58:58 GMT  
		Size: 16.8 MB (16800233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35631671bb010c3acc39801629445d7561e5e564057c8a3dcd88fc78b68c1567`  
		Last Modified: Mon, 16 Nov 2026 20:23:30 GMT  
		Size: 234.6 MB (234551353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28edc7eb60e2c26941aa287d9d028821285bfbfc5a88999402d66086f68dcbf5`  
		Last Modified: Mon, 16 Nov 2026 20:23:25 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:1bf2543267e24ceaa2195756a11ad1ec2cca8515aea4202c17987b8397fbef05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6230885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8397e659427a606280bd52403f8e6cc7e17a616a74dbfdf31108d13e1fbf3e74`

```dockerfile
```

-	Layers:
	-	`sha256:f35b03da7ba74c6ef84a1f99d90e717427d718d081de40b91c31c091a6698470`  
		Last Modified: Mon, 16 Nov 2026 20:23:25 GMT  
		Size: 6.2 MB (6210932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c3be119c1dd58a5ce8408bab5336aceb4f3b00e6867401377150014e5aa9c36`  
		Last Modified: Mon, 16 Nov 2026 20:23:25 GMT  
		Size: 20.0 KB (19953 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12.12` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:38101f2d4493b5cafba3f7c949bb1572b42984458043edc835f0852fe3f48f7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.6 MB (387573848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969e11c4be07d194aa9e4906399c6d1c085388e8f52335488bcab849e5500e5d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:31:02 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8890.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:02 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:02 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:03.049862+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:03.049862+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8890.tar
# Thu, 12 Nov 2026 01:42:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:42:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:42:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 12 Nov 2026 01:42:10 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:42:10 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:39:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:39:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:39:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:39:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 20:51:52 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 20:51:52 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:51:52 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 20:51:52 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:51:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 20:53:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 20:53:29 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 20:53:29 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 20:53:29 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 20:53:29 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:16:34 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 21:16:34 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 21:16:34 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 21:16:34 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 21:16:34 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 21:16:34 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 21:19:56 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 21:19:56 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:19:56 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 21:19:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 21:19:56 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:3c9701fbb9a70cf7a42c70b0ed1319dc1fda04dcd07e3702eaa3b62fb99eb313`  
		Last Modified: Fri, 06 Nov 2026 12:44:51 GMT  
		Size: 47.3 MB (47281220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122ff67c910d027fb3961e0d1c3631321593f40c9ed77173f3af88d3e12ebe04`  
		Last Modified: Fri, 06 Nov 2026 12:44:54 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84cedda96933e67a9dd3d8f3b80302e1b93041f3af2633a2b538d81b728e6d2f`  
		Last Modified: Thu, 12 Nov 2026 01:43:16 GMT  
		Size: 22.4 MB (22447449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075b4df27f270d04f5a45a06c0b76f3991134a31be2ab7134f1b0231b77a0ec1`  
		Last Modified: Mon, 16 Nov 2026 19:40:19 GMT  
		Size: 52.7 MB (52693315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5518b1fb0c61d3f39865a2be0ca73ab6032eac9b949553c2567c03f318ddd9e`  
		Last Modified: Mon, 16 Nov 2026 19:40:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03ad50d90604304915c19b5082e1aab0760b32ae750b760378d8e0489f6d563`  
		Last Modified: Mon, 16 Nov 2026 19:40:17 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5587897b708951de4f8a889625ff4cee8da17e2cb1131dd2294715e9e4bae03`  
		Last Modified: Mon, 16 Nov 2026 20:54:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:233ea60d64765a4f1fe46d7d34350626386eadf782937cdf19e5106849cf67df`  
		Last Modified: Mon, 16 Nov 2026 20:54:03 GMT  
		Size: 30.6 MB (30553064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059be7c5dcc900006a4772ee80b97f2511797cba9e7bdecb1c29b20bc01a47a9`  
		Last Modified: Mon, 16 Nov 2026 21:21:01 GMT  
		Size: 234.6 MB (234595278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209910c9447ae0d94c05c844b72bf9d7be14b64ecf0cecd6ac5691f33cefbb77`  
		Last Modified: Mon, 16 Nov 2026 21:20:56 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12.12` - unknown; unknown

```console
$ docker pull geonetwork@sha256:23e1637a56f3802c8e248abd5d64ee3ffb08e59a051ec6030ee1c35d8de44965
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6232415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b84737bdbc4aaa93de84e9c2206c9b1c9879f092555c67fbe36e39a451b22e0`

```dockerfile
```

-	Layers:
	-	`sha256:8b314de497289799c3bdb1420ff7163cb4e446e7821f6c78a4e2c73d41d9bce7`  
		Last Modified: Mon, 16 Nov 2026 21:20:56 GMT  
		Size: 6.2 MB (6212515 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a223bbdaa84d6b7509fa79128c0935de762ecd69bfefffb249d514fa8a2b9913`  
		Last Modified: Mon, 16 Nov 2026 21:20:55 GMT  
		Size: 19.9 KB (19900 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:3.12.12-postgres`

```console
$ docker pull geonetwork@sha256:07e565426f782d65e57b42e62e1dec84ee181c1c65d3cee03009c1ed8b328af5
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
$ docker pull geonetwork@sha256:822bdabd885100a5d01d3c80064346bc0120b6c8be7646846380a2583160999e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.6 MB (389646156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:701a3ddc450d771f254b33c5691ce3e4bace3c74dbe4a4384c379d4823697235`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Mon, 16 Nov 2026 19:46:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:46:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:46:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:46:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:46:21 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:46:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:46:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:46:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:46:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 20:12:51 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 20:12:51 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:12:51 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 20:12:51 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:12:51 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 20:12:51 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 20:13:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 20:13:49 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 20:13:49 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 20:13:49 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 20:13:49 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:11:46 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 21:11:46 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 21:11:46 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 21:11:46 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 21:11:46 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 21:11:46 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 21:14:24 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 21:14:24 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:14:24 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 21:14:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 21:14:24 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:46:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 21:46:36 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Mon, 16 Nov 2026 21:46:36 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Mon, 16 Nov 2026 21:46:36 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:46:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 21:46:36 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89b08bde1cc34ea32ea324cec646c509578ec147b34d82b167874d0ebd348def`  
		Last Modified: Mon, 16 Nov 2026 19:46:40 GMT  
		Size: 26.4 MB (26442159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade8d13c1a43b60cc329609bc390ca6d7c4e39c1c1cf1b0582e141ec8fa7bc89`  
		Last Modified: Mon, 16 Nov 2026 19:46:40 GMT  
		Size: 55.2 MB (55210308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025fd8f0fc32b54c5c913f53db300636c6c674d11d65fb339616490eb1b2bd9a`  
		Last Modified: Mon, 16 Nov 2026 19:46:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be18d864e62f34e02269f454dd761d7ca0fa3d4220cb5a52df5141c85c787a0`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e49be755acd6e01c606884deaa954c86d9240adbceac70d783fffd40a957f2cb`  
		Last Modified: Mon, 16 Nov 2026 20:13:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8610251d0b6a3f4d409bd4072a14f78d2c3792a903fc65b8db0f41e307fc69c`  
		Last Modified: Mon, 16 Nov 2026 20:14:00 GMT  
		Size: 16.9 MB (16854535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adaf9245bed7fe86a69a12bca0ec548f56d1466d29ed99f80e724ffbc9993973`  
		Last Modified: Mon, 16 Nov 2026 21:14:53 GMT  
		Size: 234.6 MB (234562805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0adb18e1c4cb3c6639e599bc2edaa8c3f1e796cb4fcd4585529151eded4eb6da`  
		Last Modified: Mon, 16 Nov 2026 21:14:48 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022b2d3273afdfc85672409b094e161d7fba869d4764dca063b856b61c984870`  
		Last Modified: Mon, 16 Nov 2026 21:46:55 GMT  
		Size: 14.4 MB (14402834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b1408e08bf5ebd12eb6ff2e4643763788553579cb71079f79c0bd160f5ac5c`  
		Last Modified: Mon, 16 Nov 2026 21:46:55 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1bf3710a70fce2272d6e07de6ad5ab224f9e0398f48656ed26268947ee7b0e8`  
		Last Modified: Mon, 16 Nov 2026 21:46:55 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa0a17297a388f7b906884e48db7418f8c20df5640e12144b7b2957cd2dda4ad`  
		Last Modified: Mon, 16 Nov 2026 21:46:55 GMT  
		Size: 974.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12.12-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:e6fc691ef27d2387d57760910fb0d0931eea43844d7d7dfbafaecf2e6e4fc7ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7900368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:489f74e5ed0f99360f6f81935b83a874b3696f6581baa04e07855fd43c0e3ce6`

```dockerfile
```

-	Layers:
	-	`sha256:8688ffb74ee7f616264ce20796bf418c104b7b8b79e557f81c5038a9d088172e`  
		Last Modified: Mon, 16 Nov 2026 21:46:55 GMT  
		Size: 7.9 MB (7876779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:929f3f9c04f6d422489c8e2cab9be11be658197f95d41d0033d7e49f7b918258`  
		Last Modified: Mon, 16 Nov 2026 21:46:54 GMT  
		Size: 23.6 KB (23589 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12.12-postgres` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:4081107f28ad6b6174090df42d30f6cc420dff591b6fdf5c2ab1d5ee9a13814e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.6 MB (379553883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f243c2de5290b691d23ff8516e6530988704782824359494126dc72f08e91fac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:31:57 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9015.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:58.337780+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:58.337780+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9015.tar
# Mon, 16 Nov 2026 19:41:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:41:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:41:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:41:34 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:41:34 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:41:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:41:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:41:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:41:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 19:45:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 19:45:26 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:45:26 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 19:45:26 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:45:26 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 19:45:26 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 19:45:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 19:45:58 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 19:45:58 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 19:45:58 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 19:45:58 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 19:52:10 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 19:52:10 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 19:52:10 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 19:52:10 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 19:52:10 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 19:52:10 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 20:04:49 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 20:04:49 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:04:49 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:04:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 20:04:49 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 20:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:10:30 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Mon, 16 Nov 2026 20:10:30 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Mon, 16 Nov 2026 20:10:30 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:10:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 20:10:30 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:e559f24d08dd72bc9d2a5e147da5879e37237192fcb4d790a7366125ed50a3fe`  
		Last Modified: Fri, 06 Nov 2026 12:45:01 GMT  
		Size: 39.4 MB (39369387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba25364baa451aafecaaa07dc2bf000816ef74517ab4b24424fc09b8da70affa`  
		Last Modified: Fri, 06 Nov 2026 12:45:04 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62cf4a8dcc74361404a998ba95f9c093f62b75fac53c80124e6fd079fec27531`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 25.0 MB (25029415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d88121b1983f9b8f80b984821221433c90481466ea1a73fc96b1a8b79c5c8bb`  
		Last Modified: Mon, 16 Nov 2026 19:42:02 GMT  
		Size: 50.6 MB (50557624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6166bcc6b7c544e3bf63f14cd996753ab91e99a5f46dcf7509e3651ae361230`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be18d864e62f34e02269f454dd761d7ca0fa3d4220cb5a52df5141c85c787a0`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c18f20b4ed5e00e614fe6ebda158a75acc7a22c1cb08671456d7b0fff0d100`  
		Last Modified: Mon, 16 Nov 2026 19:46:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5eed25a96139ecc18f19f508853295148e928ed788fd9592a45b7a59d65f5f`  
		Last Modified: Mon, 16 Nov 2026 19:46:10 GMT  
		Size: 16.5 MB (16479631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b34febb22ce36ff0e7ac33c119f9fb02d952863b9db0c50b38f9b20e84a7ac`  
		Last Modified: Mon, 16 Nov 2026 20:05:17 GMT  
		Size: 234.5 MB (234542919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f13e976589aed42cf0886a72876b48e62e5e06bd13ed27544713110d70bde870`  
		Last Modified: Mon, 16 Nov 2026 20:05:12 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f32169d52f38899b9f33992cf4e4963f513ee8c5e1e23c2f33faf9e9b381e5f6`  
		Last Modified: Mon, 16 Nov 2026 20:10:48 GMT  
		Size: 13.6 MB (13567963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbd92400edd615e24ab2b8395502d5d2c61bc110c26e9729a6d0fd05053c69c`  
		Last Modified: Mon, 16 Nov 2026 20:10:48 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93100739ab3883bafdb539b7413a3adedb3eaaefd1f30449e7c6e6f51f100e4b`  
		Last Modified: Mon, 16 Nov 2026 20:10:48 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c91f4732839b103380f64358ce842a62abedda4a35c8b0173e90849cf022dcb`  
		Last Modified: Mon, 16 Nov 2026 20:10:48 GMT  
		Size: 974.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12.12-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:f7a832be21a2262fa1462cce046465084a1ff4f6695ca30b7d84c6b8d71b5c11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7902368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:982164bad0606e0b29459f2a700ea86c84785a23c01f1839c6c6c5bbdd791a3c`

```dockerfile
```

-	Layers:
	-	`sha256:6047d6c8965839a8a7476b4764bfa612f817369a6067d662683cad81008c7286`  
		Last Modified: Mon, 16 Nov 2026 20:10:48 GMT  
		Size: 7.9 MB (7878694 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1709973b0e0c7ed86996dc732e0b8ec10e71c1d69e56b1546066f18717a159ee`  
		Last Modified: Mon, 16 Nov 2026 20:10:47 GMT  
		Size: 23.7 KB (23674 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12.12-postgres` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:71842146b4620ecec23f3a12936e637a76cebca191ba4f0e225f408ffe9b402a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.2 MB (387225577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c9f4afe6ce0b7e6800675225b829f1df7da1ec716d79b15930f6bbe95d945a8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Mon, 16 Nov 2026 19:46:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:46:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:46:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:46:09 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:46:09 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:46:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:46:12 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:46:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:46:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 19:58:17 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 19:58:17 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:58:17 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 19:58:17 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:58:17 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 19:58:17 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 19:58:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 19:58:47 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 19:58:47 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 19:58:47 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 19:58:47 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 20:15:30 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 20:15:30 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 20:15:30 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 20:15:30 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 20:15:30 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 20:15:30 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 20:23:00 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 20:23:01 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:23:01 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:23:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 20:23:01 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:14:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 21:14:22 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Mon, 16 Nov 2026 21:14:22 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Mon, 16 Nov 2026 21:14:22 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:14:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 21:14:22 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a395ec95e824f4faaa6248c7d619d5dc0565a8a3ea740f3763c544080493162f`  
		Last Modified: Mon, 16 Nov 2026 19:46:28 GMT  
		Size: 26.1 MB (26082592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff6bd93855ba1c69f5001f5649b288a64d24b22d8605e798bd9001d76dcb9cf`  
		Last Modified: Mon, 16 Nov 2026 19:46:29 GMT  
		Size: 54.3 MB (54281247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d737a61402af9dc97994319aba62b8c1eed2b2f75616d11fed109c8be380e1fe`  
		Last Modified: Mon, 16 Nov 2026 19:46:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedb616ab059a0ea4f8a9643194da64fed18bbef2250fe6222928f1cadb0940a`  
		Last Modified: Mon, 16 Nov 2026 19:46:27 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b5c15f2eade923de708c2ed6afa1fada5f839d98647477bdf5c8e930c37b510`  
		Last Modified: Mon, 16 Nov 2026 19:58:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7813e37c5eb8c0b834010c8939b4426152e040e17d1b65f842453a930f3ce0c0`  
		Last Modified: Mon, 16 Nov 2026 19:58:58 GMT  
		Size: 16.8 MB (16800233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35631671bb010c3acc39801629445d7561e5e564057c8a3dcd88fc78b68c1567`  
		Last Modified: Mon, 16 Nov 2026 20:23:30 GMT  
		Size: 234.6 MB (234551353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28edc7eb60e2c26941aa287d9d028821285bfbfc5a88999402d66086f68dcbf5`  
		Last Modified: Mon, 16 Nov 2026 20:23:25 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c6294711f16892fb35f1a304d1148848ced572012c464e6370ac39bc3f068f`  
		Last Modified: Mon, 16 Nov 2026 21:14:41 GMT  
		Size: 14.4 MB (14357406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a9e34b0ef2872bc5beac8e9faa4cb86d76d1a3c109f04d9547d4a87d4c628f3`  
		Last Modified: Mon, 16 Nov 2026 21:14:41 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799cc4e0492ff4199a0361918fa5c1afb8d15f958110f5a1f190cf70cfc7d8ed`  
		Last Modified: Mon, 16 Nov 2026 21:14:41 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8fd5bfac0a659eb464b79b61dc7fe77aa99d0681359f032d5ed4978916478e`  
		Last Modified: Mon, 16 Nov 2026 21:14:41 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12.12-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:8d0d5721efbab23439475c6f382704b3016bdd2292d9f63fe267264d3085c178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7906870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0bfb1684b26fc8e01c4f0433639ba558a037b526cf9b968d5924c1f9c0d1f3`

```dockerfile
```

-	Layers:
	-	`sha256:c4c31abd4aa9c99439cefac0858dcefacb014bd51ae9210de97b62324a072baa`  
		Last Modified: Mon, 16 Nov 2026 21:14:41 GMT  
		Size: 7.9 MB (7883175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f92c367899d11e128a9e48bccb2d41490a6005b0223bce29b5157907919d670b`  
		Last Modified: Mon, 16 Nov 2026 21:14:41 GMT  
		Size: 23.7 KB (23695 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:3.12.12-postgres` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:91892645a3169e811090580baf5a8546e3c668b4943ab8b0d9abb330d23eb77e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.6 MB (402631104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4c35c7b1c775e2787ddbaee6e59d1ce44771aa5cb01e53262b3ca476884021b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:31:02 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8890.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:02 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:02 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:03.049862+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:03.049862+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8890.tar
# Thu, 12 Nov 2026 01:42:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:42:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:42:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 12 Nov 2026 01:42:10 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:42:10 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:39:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:39:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:39:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:39:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 20:51:52 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 20:51:52 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:51:52 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 20:51:52 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:51:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 20:51:52 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 20:53:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 16 Nov 2026 20:53:29 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 20:53:29 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 20:53:29 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 20:53:29 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:16:34 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 21:16:34 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Mon, 16 Nov 2026 21:16:34 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Mon, 16 Nov 2026 21:16:34 GMT
ENV GN_VERSION=3.12.12
# Mon, 16 Nov 2026 21:16:34 GMT
ENV GN_DOWNLOAD_MD5=c9d2a15f5cecbd31fa6697c3f52f0180
# Mon, 16 Nov 2026 21:16:34 GMT
WORKDIR /usr/local/tomcat/webapps
# Mon, 16 Nov 2026 21:19:56 GMT
RUN apt-get update &&      apt-get install -y --no-install-recommends           unzip           curl &&     rm -rf /var/lib/apt/lists/* &&      curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download &&      echo "${GN_DOWNLOAD_MD5} *${GN_FILE}" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE # buildkit
# Mon, 16 Nov 2026 21:19:56 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:19:56 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 21:19:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 21:19:56 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:45:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 21:45:58 GMT
RUN sed -i -e 's#<import resource="../config-db/${geonetwork.db.type:h2}.xml"/>#<!--<import resource="../config-db/${geonetwork.db.type:h2}.xml"/-->#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' "${CATALINA_HOME}/webapps/geonetwork/WEB-INF/config-node/srv.xml" # buildkit
# Mon, 16 Nov 2026 21:45:58 GMT
COPY ./jdbc.properties /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties # buildkit
# Mon, 16 Nov 2026 21:45:59 GMT
COPY ./docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:45:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Nov 2026 21:45:59 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:3c9701fbb9a70cf7a42c70b0ed1319dc1fda04dcd07e3702eaa3b62fb99eb313`  
		Last Modified: Fri, 06 Nov 2026 12:44:51 GMT  
		Size: 47.3 MB (47281220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122ff67c910d027fb3961e0d1c3631321593f40c9ed77173f3af88d3e12ebe04`  
		Last Modified: Fri, 06 Nov 2026 12:44:54 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84cedda96933e67a9dd3d8f3b80302e1b93041f3af2633a2b538d81b728e6d2f`  
		Last Modified: Thu, 12 Nov 2026 01:43:16 GMT  
		Size: 22.4 MB (22447449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075b4df27f270d04f5a45a06c0b76f3991134a31be2ab7134f1b0231b77a0ec1`  
		Last Modified: Mon, 16 Nov 2026 19:40:19 GMT  
		Size: 52.7 MB (52693315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5518b1fb0c61d3f39865a2be0ca73ab6032eac9b949553c2567c03f318ddd9e`  
		Last Modified: Mon, 16 Nov 2026 19:40:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03ad50d90604304915c19b5082e1aab0760b32ae750b760378d8e0489f6d563`  
		Last Modified: Mon, 16 Nov 2026 19:40:17 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5587897b708951de4f8a889625ff4cee8da17e2cb1131dd2294715e9e4bae03`  
		Last Modified: Mon, 16 Nov 2026 20:54:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:233ea60d64765a4f1fe46d7d34350626386eadf782937cdf19e5106849cf67df`  
		Last Modified: Mon, 16 Nov 2026 20:54:03 GMT  
		Size: 30.6 MB (30553064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059be7c5dcc900006a4772ee80b97f2511797cba9e7bdecb1c29b20bc01a47a9`  
		Last Modified: Mon, 16 Nov 2026 21:21:01 GMT  
		Size: 234.6 MB (234595278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209910c9447ae0d94c05c844b72bf9d7be14b64ecf0cecd6ac5691f33cefbb77`  
		Last Modified: Mon, 16 Nov 2026 21:20:56 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39819ec77c2f9e8c4303ccda6d35ecfc0ecabffe92cfda6314eb08e37f6a2f8e`  
		Last Modified: Mon, 16 Nov 2026 21:46:40 GMT  
		Size: 15.1 MB (15053850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c98f46f5c85a5589887667bc5bcf90788c14eda1d57ed7fc2dbf90e7792ee40f`  
		Last Modified: Mon, 16 Nov 2026 21:46:40 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:530c8585180261f7c9aa53d9eaab8a8d8486b74f5f840ebf0098d228cbf21cf9`  
		Last Modified: Mon, 16 Nov 2026 21:46:40 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e511fa22a5e61706576bc21ac7b4393481c48a3fba43d914d37a02883b010cb`  
		Last Modified: Mon, 16 Nov 2026 21:46:40 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:3.12.12-postgres` - unknown; unknown

```console
$ docker pull geonetwork@sha256:64f42c87e2ffd5ce1dddd0e95c0856bf7a33abf6b36c117152b4486c892dc95f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7905093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:385d2fe4bdca5ae347aede74e35c7ddb76488279f2387c76d3d392804438a697`

```dockerfile
```

-	Layers:
	-	`sha256:63b37c8dd3ee77e4368e284e02dc9d53fc4622f4190f4ad736f4f729ef194b3f`  
		Last Modified: Mon, 16 Nov 2026 21:46:40 GMT  
		Size: 7.9 MB (7881464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71f689e7c6ef9ff951a92dc9aa8855121bff139408cff9e2b78cfd8396a97f5e`  
		Last Modified: Mon, 16 Nov 2026 21:46:39 GMT  
		Size: 23.6 KB (23629 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:4`

```console
$ docker pull geonetwork@sha256:27bfa7e826d12936f405de4bf1dfeb3e76f84bc146315a120bc3e43473a29755
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
$ docker pull geonetwork@sha256:d02b7e6a9b294abfea5d041a9b6d18d50a757fc74fe70cc7250791dae73cace1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.6 MB (392612653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990ec420fd5950d4244097002ddbd5212c1e6cfc7598c913ebcc6a783e853faa`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:17:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:17:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:17:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:17:08 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:17:08 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:17:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:17:11 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:17:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:17:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 14 Nov 2026 00:11:54 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 14 Nov 2026 00:11:54 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:11:54 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 14 Nov 2026 00:11:54 GMT
WORKDIR /usr/local/tomcat
# Sat, 14 Nov 2026 00:11:54 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:11:54 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:11:54 GMT
ENV TOMCAT_MAJOR=9
# Sat, 14 Nov 2026 00:11:54 GMT
ENV TOMCAT_VERSION=9.0.124
# Sat, 14 Nov 2026 00:11:54 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 00:11:55 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 00:12:05 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:12:06 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 00:12:06 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 00:12:06 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 00:12:06 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:16:17 GMT
ENV DATA_DIR=/catalogue-data
# Thu, 19 Nov 2026 21:16:17 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Thu, 19 Nov 2026 21:16:17 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Thu, 19 Nov 2026 21:16:17 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Thu, 19 Nov 2026 21:16:17 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Thu, 19 Nov 2026 21:16:17 GMT
ENV GN_FILE=geonetwork.war
# Thu, 19 Nov 2026 21:16:17 GMT
ENV GN_VERSION=4.4.13
# Thu, 19 Nov 2026 21:16:17 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Thu, 19 Nov 2026 21:35:46 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Thu, 19 Nov 2026 21:35:46 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Thu, 19 Nov 2026 21:35:46 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Thu, 19 Nov 2026 21:35:46 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Thu, 19 Nov 2026 21:35:46 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Thu, 19 Nov 2026 21:35:46 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:35:46 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16af2eba9bc8d0bb382ac128542967e0244e4149a5167346a3609b5c02250eb7`  
		Last Modified: Wed, 11 Nov 2026 23:17:25 GMT  
		Size: 17.0 MB (16968781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd5ffe3a8573849a46c62104d066d9a0238288b3722be90c7996fd183deaa38`  
		Last Modified: Wed, 11 Nov 2026 23:17:26 GMT  
		Size: 47.4 MB (47351616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e6810092226afebad4d044648bcbf7fdd2e52e37220e0ae2da3d595e3b09b23`  
		Last Modified: Wed, 11 Nov 2026 23:17:24 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72f525a27ee971f5f3a289935521db1283b5b80178d66ecf1b1a96d4401a0d4e`  
		Last Modified: Wed, 11 Nov 2026 23:17:24 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41498c12cf0417c842aba99cb7155199a723d43f2c70a87d204863fe6145f14`  
		Last Modified: Sat, 14 Nov 2026 00:12:15 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58248d56c2b6e9f16378817be0738c172d9493057daab7509eab9e0646d2e635`  
		Last Modified: Sat, 14 Nov 2026 00:12:16 GMT  
		Size: 14.2 MB (14157817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e28344dd525698dba8f79bc6cd1b0a70c9e383313ef90d75f10a3284d4e91bb`  
		Last Modified: Sat, 14 Nov 2026 00:12:16 GMT  
		Size: 12.8 MB (12844041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a1c5f454a186f79039a9549b8610b635dd51b4b233bd47a9fe3dadabea1373`  
		Last Modified: Thu, 19 Nov 2026 21:36:09 GMT  
		Size: 240.2 KB (240225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacf4d888deaed6f61be4fe7b01ea0f23d33895f1a6a2db52278ba49fb2877eb`  
		Last Modified: Thu, 19 Nov 2026 21:36:14 GMT  
		Size: 271.3 MB (271250089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05663daffb6daea9800730fd788423a363b465441f94908c981483d7f50e700`  
		Last Modified: Thu, 19 Nov 2026 21:36:09 GMT  
		Size: 323.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0354c4bcae5377b092d064f98104fe9c1ad0d2c22d2de9f00029ac00d71db1c`  
		Last Modified: Thu, 19 Nov 2026 21:36:09 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d9d2af6b68c0312400b9115a022d343070b705a615518fd147d1dcac0e11b0`  
		Last Modified: Thu, 19 Nov 2026 21:36:10 GMT  
		Size: 700.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:11291f5cd5faeff6f78a3a5522c2751391f0bb0af6c231bcb1916dd0a0aee663
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4111191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06315bda5f2404cfd18af9dc6ebdb252731288dcd94a485b796e99b52c4c3f7d`

```dockerfile
```

-	Layers:
	-	`sha256:a748bc7585cc5a15bf1ef922e773c44b3b2cf71d21c0bd1707a05456a14f696d`  
		Last Modified: Thu, 19 Nov 2026 21:36:09 GMT  
		Size: 4.1 MB (4085623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be2c9d1e3375076ed50e1f5d184b907de51741b138863a6410fbbf70d29a5dda`  
		Last Modified: Thu, 19 Nov 2026 21:36:09 GMT  
		Size: 25.6 KB (25568 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:e901b31c2431abb81b9420d0f61cd9cb56fdb92c5c5bc934f80c01ce188d0c04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.8 MB (385811484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90a6f09147fbddfc311bc796d25ec6507bde8ef46da07d58bb26f0da8c6f29fb`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:23 GMT
ADD file:3cbbfb6c4f8e63d9999d351c6c7c50b4ce512c57a42bc2c5bc2da9cb561f6eed in / 
# Tue, 10 Nov 2026 08:36:24 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:20:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:20:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:20:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:20:08 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:20:08 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:20:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:20:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:20:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:20:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 14 Nov 2026 00:18:35 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 14 Nov 2026 00:18:35 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:18:35 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 14 Nov 2026 00:18:36 GMT
WORKDIR /usr/local/tomcat
# Sat, 14 Nov 2026 00:18:36 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:18:36 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:18:36 GMT
ENV TOMCAT_MAJOR=9
# Sat, 14 Nov 2026 00:18:36 GMT
ENV TOMCAT_VERSION=9.0.124
# Sat, 14 Nov 2026 00:18:36 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 00:18:36 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 00:18:47 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:18:47 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 00:18:47 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 00:18:47 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 00:18:47 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:16:16 GMT
ENV DATA_DIR=/catalogue-data
# Thu, 19 Nov 2026 21:16:16 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Thu, 19 Nov 2026 21:16:16 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Thu, 19 Nov 2026 21:16:16 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Thu, 19 Nov 2026 21:16:16 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Thu, 19 Nov 2026 21:16:16 GMT
ENV GN_FILE=geonetwork.war
# Thu, 19 Nov 2026 21:16:16 GMT
ENV GN_VERSION=4.4.13
# Thu, 19 Nov 2026 21:16:16 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Thu, 19 Nov 2026 21:43:40 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Thu, 19 Nov 2026 21:43:40 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Thu, 19 Nov 2026 21:43:40 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Thu, 19 Nov 2026 21:43:40 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Thu, 19 Nov 2026 21:43:40 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Thu, 19 Nov 2026 21:43:40 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:43:40 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:c9ad55dde9ad5376b797faf6b6dd0caa61cff4a20a14ef03107c1e7fdc9113f0`  
		Last Modified: Wed, 11 Nov 2026 22:58:50 GMT  
		Size: 26.9 MB (26922008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed87f1d1727d0a3f93c75bce8c653db033c37e594c09db775ed5b959255b21c`  
		Last Modified: Wed, 11 Nov 2026 23:20:25 GMT  
		Size: 16.3 MB (16286314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5c7891017fcdfb7dd39ceffa3b7b6c6a167eda225a9411c8a03b890de0a8ce`  
		Last Modified: Wed, 11 Nov 2026 23:20:25 GMT  
		Size: 45.5 MB (45466398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad523630c28f4419d6418ce660b7305412872a43393029d248023f7fb92ac7ec`  
		Last Modified: Wed, 11 Nov 2026 23:20:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0152dfff9dc349392c57ca1601fcf39a6cba2f021f90771cb3504b23b246ac20`  
		Last Modified: Wed, 11 Nov 2026 23:20:24 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c977dc1ad0856baeae55a5c4386ab9ea86952337c9d9d7aed9bf0408d94da0`  
		Last Modified: Sat, 14 Nov 2026 00:18:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4def945bbd2ad8ae32b8fcc8af4da7c4d5a6ddc3d185d052f879eb2b11b5fe9`  
		Last Modified: Sat, 14 Nov 2026 00:18:57 GMT  
		Size: 14.1 MB (14092873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc95a25937d3a8b09d58c683c33cbfde537411109a85a3ab730de78921e7e94`  
		Last Modified: Sat, 14 Nov 2026 00:18:57 GMT  
		Size: 11.6 MB (11559483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc40e3888fe8ead0bbc99d08a7b322d44dffecde2b99b0d5edb18e9aad31826`  
		Last Modified: Thu, 19 Nov 2026 21:44:03 GMT  
		Size: 227.4 KB (227413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b1d2445d5c6db2dd0bc784f415b236cd34170a1f73db65b3c7ff1046a8b55c7`  
		Last Modified: Thu, 19 Nov 2026 21:44:08 GMT  
		Size: 271.3 MB (271250133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2943446ed7f6e327025ab0e5ef7473e7b8608dc39a87a0111903eaadedec4b0f`  
		Last Modified: Thu, 19 Nov 2026 21:44:03 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c3d1b1977822e6f59192e058679e3c481dbf929bcde3fa81811882858945e0a`  
		Last Modified: Thu, 19 Nov 2026 21:44:03 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d9d2af6b68c0312400b9115a022d343070b705a615518fd147d1dcac0e11b0`  
		Last Modified: Thu, 19 Nov 2026 21:36:10 GMT  
		Size: 700.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:fa1bdae4b731e1efb7a0451c26fa01edb84a5ea7ac95480f857b0aa5e79d8be6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4114891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a6eb5732d9161b9baa8e19c79ad86f7239a48c53e4bae4f0e7e3728a033caf`

```dockerfile
```

-	Layers:
	-	`sha256:7a74071cb538ea5487516c05897e2a78d0f2cb9b2dec5f8e80e24ee56c6889f1`  
		Last Modified: Thu, 19 Nov 2026 21:44:03 GMT  
		Size: 4.1 MB (4089230 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65390210ec99f38521167b02cbe5b0bcad418aca31b3baf99c2e0b0d73566eb0`  
		Last Modified: Thu, 19 Nov 2026 21:44:03 GMT  
		Size: 25.7 KB (25661 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:9907edb875b44f3d16e33d21170faea6a84b485cc5e40ad81a2a41247e666b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.9 MB (389876446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa411186e7ad37c054a8281d273fda914dd0be1d0d05dfeb1e431163ce373fb`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:21:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:21:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:21:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:21:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:21:12 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:21:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:21:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:21:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:21:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 14 Nov 2026 00:12:37 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 14 Nov 2026 00:12:37 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:12:37 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 14 Nov 2026 00:12:37 GMT
WORKDIR /usr/local/tomcat
# Sat, 14 Nov 2026 00:12:37 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:12:37 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:12:37 GMT
ENV TOMCAT_MAJOR=9
# Sat, 14 Nov 2026 00:12:37 GMT
ENV TOMCAT_VERSION=9.0.124
# Sat, 14 Nov 2026 00:12:37 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 00:12:37 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 00:12:47 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:12:47 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 00:12:47 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 00:12:47 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 00:12:47 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:16:40 GMT
ENV DATA_DIR=/catalogue-data
# Thu, 19 Nov 2026 21:16:40 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Thu, 19 Nov 2026 21:16:40 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Thu, 19 Nov 2026 21:16:40 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Thu, 19 Nov 2026 21:16:40 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Thu, 19 Nov 2026 21:16:40 GMT
ENV GN_FILE=geonetwork.war
# Thu, 19 Nov 2026 21:16:40 GMT
ENV GN_VERSION=4.4.13
# Thu, 19 Nov 2026 21:16:40 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Thu, 19 Nov 2026 21:39:05 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Thu, 19 Nov 2026 21:39:05 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Thu, 19 Nov 2026 21:39:05 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Thu, 19 Nov 2026 21:39:05 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Thu, 19 Nov 2026 21:39:05 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Thu, 19 Nov 2026 21:39:05 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:39:05 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b8ee1fba1c12acf3073da6bbf47d7f577b1408c55e995fc155be22719fa83d8`  
		Last Modified: Wed, 11 Nov 2026 23:21:29 GMT  
		Size: 17.0 MB (16978210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27a9f4f9f615ee35c7b8ad02ad452d1b27983a17a69dc782dde91b22507a10c4`  
		Last Modified: Wed, 11 Nov 2026 23:21:30 GMT  
		Size: 45.7 MB (45660541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e29c00c8386154f2b9e54dfdbd83f83cc64156f2479049dbffee054b0442e5`  
		Last Modified: Wed, 11 Nov 2026 23:21:27 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69343d5cc62197a325b3a13f7375e8d850f1b1c91a98ca00679cee6518bfdd03`  
		Last Modified: Wed, 11 Nov 2026 23:21:27 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11e40ccb5aefd553536718b0d1c824169455c26c18175296d01c442db9a3cba9`  
		Last Modified: Sat, 14 Nov 2026 00:12:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359ef4035dd7958968649de7b8c9605f26cfe88b23dbdf9fcb3dfafa3df51044`  
		Last Modified: Sat, 14 Nov 2026 00:12:57 GMT  
		Size: 14.2 MB (14167528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949a232ab28b074571ad31b2e263295876cc1c1b889c4879ad33ba1ca4201765`  
		Last Modified: Sat, 14 Nov 2026 00:12:56 GMT  
		Size: 12.6 MB (12608375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9970aa893d4ece0128f9fcb3b2f0d531f91b8ddd3cc1cb1a26551137087189`  
		Last Modified: Thu, 19 Nov 2026 21:39:28 GMT  
		Size: 239.5 KB (239542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7764a31bf9395677a3ddfb894b2c9c99849f2094bbc55743ec9b0ff888a1a70c`  
		Last Modified: Thu, 19 Nov 2026 21:39:33 GMT  
		Size: 271.3 MB (271250129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c63d264def0a3e7e1f11d16c555ffc4895220d5f93f8390285b131badd28c8`  
		Last Modified: Thu, 19 Nov 2026 21:39:28 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75f8a1c8d12bce079a74649941fc04ac6a7a4554c8c4cda102d382a1d679c6b9`  
		Last Modified: Thu, 19 Nov 2026 21:39:28 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eb263985aa206b97f2132da5ece7268479bb5798357a078a0e816b80ce95175`  
		Last Modified: Thu, 19 Nov 2026 21:39:30 GMT  
		Size: 700.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:a7856f7c5e00c229c0bf9a4ee698c2d357ef494ab9a972a52a20accb579be044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4112404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec226083612cadd5b3d2cccd132f3f2be9e0163adff3e6584b03c0cb6b9f7ab7`

```dockerfile
```

-	Layers:
	-	`sha256:a5f53edc6224f2f49b6693bbabfddc567852b21e5ad261f1467ddbba6f6c0026`  
		Last Modified: Thu, 19 Nov 2026 21:39:28 GMT  
		Size: 4.1 MB (4086717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e749702664d45ff1b1064fbacd54c18a2b18bf27e8f0379d17bc99b05bbdb355`  
		Last Modified: Thu, 19 Nov 2026 21:39:28 GMT  
		Size: 25.7 KB (25687 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4` - linux; ppc64le

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

### `geonetwork:4` - unknown; unknown

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

### `geonetwork:4` - linux; s390x

```console
$ docker pull geonetwork@sha256:16ee6130d139e6e9bab7bded07975b3c513c4921821f68e494fd7dc027c73678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.3 MB (386279324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06abcb3589594fac4a3eceac04532b0cc69ee61b2c2cd15f375b64d506fc744f`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:37:01 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:37:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:37:01 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:37:02 GMT
ADD file:cd6ae236aa13077d423218b776b66e2af298e76f13baa19a6432bfa2416d84e1 in / 
# Tue, 10 Nov 2026 08:37:03 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:14:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:14:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:14:14 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:14:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:14:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:14:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 02:19:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 12 Nov 2026 02:19:26 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 02:19:26 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 12 Nov 2026 02:19:26 GMT
WORKDIR /usr/local/tomcat
# Thu, 12 Nov 2026 02:19:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 02:19:26 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 02:19:26 GMT
ENV TOMCAT_MAJOR=9
# Thu, 12 Nov 2026 02:19:26 GMT
ENV TOMCAT_VERSION=9.0.124
# Thu, 12 Nov 2026 02:19:26 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 01:14:09 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 01:14:15 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 01:14:16 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 01:14:16 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 01:14:16 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 01:14:16 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:13:31 GMT
ENV DATA_DIR=/catalogue-data
# Thu, 19 Nov 2026 21:13:31 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Thu, 19 Nov 2026 21:13:31 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Thu, 19 Nov 2026 21:13:31 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Thu, 19 Nov 2026 21:13:31 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Thu, 19 Nov 2026 21:13:31 GMT
ENV GN_FILE=geonetwork.war
# Thu, 19 Nov 2026 21:13:31 GMT
ENV GN_VERSION=4.4.13
# Thu, 19 Nov 2026 21:13:31 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Thu, 19 Nov 2026 21:33:37 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Thu, 19 Nov 2026 21:33:37 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Thu, 19 Nov 2026 21:33:37 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Thu, 19 Nov 2026 21:33:37 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Thu, 19 Nov 2026 21:33:37 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Thu, 19 Nov 2026 21:33:37 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:33:37 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:bd74e3675913208a1119a54d3789c9fc5c9abdb19b714ce963adc875d0495d64`  
		Last Modified: Wed, 11 Nov 2026 22:58:51 GMT  
		Size: 30.0 MB (29967584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3134634370e311faddec73a586b392392ac4795c1016e6b7ca6269409b4500fa`  
		Last Modified: Wed, 11 Nov 2026 23:14:32 GMT  
		Size: 17.6 MB (17557905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ff515283d5ae2e02461ec9907b96c3acd9c121b5521ff74026772f6a8c20e4`  
		Last Modified: Wed, 11 Nov 2026 23:14:33 GMT  
		Size: 41.0 MB (41030907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592a5fb927d7c9ec87df2dc13efeaf977eb7956b84788dd59e86436f47f72355`  
		Last Modified: Wed, 11 Nov 2026 23:14:32 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a77ef17b74f329b0b19f2787e49b3adefb78e8a7bdac319846911f9224c199d`  
		Last Modified: Wed, 11 Nov 2026 23:14:32 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7877b7fb4767eee2e1e6cac81382aa3591786a19900c17fece144c8bffc7d45b`  
		Last Modified: Thu, 12 Nov 2026 02:20:08 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e598fbc3d56b856cd86f7da9e4e5d5645b59d636214eec0235e3671520b3f5f`  
		Last Modified: Sat, 14 Nov 2026 01:14:28 GMT  
		Size: 14.2 MB (14166859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e06e7dda18e23b55072f6dcbf042ccd9894a44a58b4d2a235c96fdb2cb3426c`  
		Last Modified: Sat, 14 Nov 2026 01:14:28 GMT  
		Size: 12.0 MB (12047742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762e12cb0640c3ee391bf2b1391270e000e5c4b91e70ec9ac172ea219b428da1`  
		Last Modified: Thu, 19 Nov 2026 21:34:06 GMT  
		Size: 251.3 KB (251333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be097f2dbc25b96a9982715cf600bc972d7cfc23f86dfafec70fd4933b739aa9`  
		Last Modified: Thu, 19 Nov 2026 21:34:10 GMT  
		Size: 271.3 MB (271250133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b198bc4423367992163ec443504792aab505b988a5d01e6936e0136c3e34b8b4`  
		Last Modified: Thu, 19 Nov 2026 21:34:06 GMT  
		Size: 323.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990c5e9079f8ed4dc82f2557034ed8e9484e57292774d510d53ed23324e17fcd`  
		Last Modified: Thu, 19 Nov 2026 21:34:06 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9ad768a1178da2b92250fed021ecf7845a30fded30f64547dc72497ffa2924`  
		Last Modified: Thu, 19 Nov 2026 21:34:07 GMT  
		Size: 700.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:01fa8e3503581fbf91c5e7037e7145efd61c8f553ef2ea84585c2ed50e6fd3c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4112154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff21acd84cc160028b092273775d1dae0f90f8ff5a34b4159636a5fe93fb9ec`

```dockerfile
```

-	Layers:
	-	`sha256:35508af884417a6595b0045181f9fa6c6f30637d19e6a73aadbdbc9d77d7225c`  
		Last Modified: Thu, 19 Nov 2026 21:34:06 GMT  
		Size: 4.1 MB (4086586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a8ffc84975c5e8c38e0c54b05e9d495d0e0e9a29cbc5269844de8f0710993a1`  
		Last Modified: Thu, 19 Nov 2026 21:34:06 GMT  
		Size: 25.6 KB (25568 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:4.2`

```console
$ docker pull geonetwork@sha256:7d7394bc466a2e533f40167706a0020c51de6758064a17982467957c78e74e5d
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
$ docker pull geonetwork@sha256:1430b65d7a1488418de3681129c1603cea79df4a1bcca14f05a0baa42de9488f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.0 MB (383018988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f39883e62c617f87745ccd6543cc5b7b48f708990b15a4e877fc9c4ab25ef036`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 19:47:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:47:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:47:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:47:22 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:47:22 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:47:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='bbe01d0683d3dcdd0bbdcc568d3d9123f719a4fa390208b3fe1ca6e1ef083923';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:47:24 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:47:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:47:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 21:11:37 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 21:11:37 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 21:11:37 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 21:11:37 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 21:11:37 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 21:11:37 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 21:11:37 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 21:11:37 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 21:11:37 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 21:11:37 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 16 Nov 2026 21:11:40 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 21:11:40 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 21:11:40 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 21:11:40 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 21:11:40 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:14:33 GMT
ENV DATA_DIR=/catalogue-data
# Thu, 19 Nov 2026 21:14:33 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Thu, 19 Nov 2026 21:14:33 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Thu, 19 Nov 2026 21:14:33 GMT
ENV GN_FILE=geonetwork.war
# Thu, 19 Nov 2026 21:14:33 GMT
ENV GN_VERSION=4.2.18
# Thu, 19 Nov 2026 21:14:33 GMT
ENV GN_DOWNLOAD_SHA256=4c846214fafcc681603a3c65b2248cce60f3283a74bd6a0e0aa2a216dacd87d3
# Thu, 19 Nov 2026 21:40:11 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Thu, 19 Nov 2026 21:40:11 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Thu, 19 Nov 2026 21:40:11 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Thu, 19 Nov 2026 21:40:11 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Thu, 19 Nov 2026 21:40:11 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:40:11 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2e79f81cf75bd7064b4ba224cad07487e325fe1226e7189c39d165d216ffee7`  
		Last Modified: Mon, 16 Nov 2026 19:47:36 GMT  
		Size: 23.1 MB (23065237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e371d53257150b312c58dc322b0c617d411f5e87b406d291b1d772f909d70d3b`  
		Last Modified: Mon, 16 Nov 2026 19:47:36 GMT  
		Size: 42.4 MB (42351680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aac639ee46464312c3251ea05d58dd44c2de1d2b47d5748b9305c52c1b19ab6`  
		Last Modified: Mon, 16 Nov 2026 19:47:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6080fcfa7dce01271ca2b8535490e754c4e9bd568f5e4a6fb684902b66749ee`  
		Last Modified: Mon, 16 Nov 2026 19:47:35 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af3edaa5e1322925e1de60b2382fe5593b5daa5862588ddb76d12d10dfe47be`  
		Last Modified: Mon, 16 Nov 2026 21:11:49 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a27dfee8a8170bf447ca4bd09bc1b859118f56e3bf67a663523f9363c385f3`  
		Last Modified: Mon, 16 Nov 2026 21:11:49 GMT  
		Size: 14.2 MB (14156918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3c42740e5dac4de44c1d14a091220c36b71c43edbf43836c5ab0490e3c199ce`  
		Last Modified: Mon, 16 Nov 2026 21:11:49 GMT  
		Size: 225.5 KB (225545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:790f5c5029a4543a16dcecb23d76105d35886a270a8701df2e313f5631be2d0f`  
		Last Modified: Thu, 19 Nov 2026 21:40:32 GMT  
		Size: 239.8 KB (239811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93070b55c32d401c369b853db72b675a40c7e03b74d575d5e8889e4ec5a0488`  
		Last Modified: Thu, 19 Nov 2026 21:40:38 GMT  
		Size: 273.2 MB (273181281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22667981fde212519eac2cc67cadfe771a7e26efac837d22a7245961602b28aa`  
		Last Modified: Thu, 19 Nov 2026 21:40:32 GMT  
		Size: 1.5 KB (1503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bfbb093981b76270747f09fe67e0bc8633cf7ed2ce9083af0bc62cd026a20e5`  
		Last Modified: Thu, 19 Nov 2026 21:40:33 GMT  
		Size: 998.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2` - unknown; unknown

```console
$ docker pull geonetwork@sha256:965dafe27ea2bea07c349dbdcc6fd18e48df594e7fbfbc78dc02afd2fb15dbf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4194169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57959c7e67efae7728dde8c34bc1df219fd3e218539d018f716180e39f59ee3d`

```dockerfile
```

-	Layers:
	-	`sha256:cd586ee746bb5585b698fa189f847bfdd5b370a52ee84deb742024418ed779e3`  
		Last Modified: Thu, 19 Nov 2026 21:40:32 GMT  
		Size: 4.2 MB (4172364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3894a96271c6381834882ec8e6e543451017123dad5155afaad528563bf27c8`  
		Last Modified: Thu, 19 Nov 2026 21:40:32 GMT  
		Size: 21.8 KB (21805 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.2` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:cde76f20be714e4cca1a9f4937200028e28b042ad4c9b8b6785de0b2c1c499c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.5 MB (375540140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab10704d42b15334d907eacea50c240195a0aee81b384f4221acf2720e396bc`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:23 GMT
ADD file:3cbbfb6c4f8e63d9999d351c6c7c50b4ce512c57a42bc2c5bc2da9cb561f6eed in / 
# Tue, 10 Nov 2026 08:36:24 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 19:41:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:41:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:41:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:41:43 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:41:43 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:41:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='bbe01d0683d3dcdd0bbdcc568d3d9123f719a4fa390208b3fe1ca6e1ef083923';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:41:50 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:41:50 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:41:50 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 19:52:04 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 19:52:04 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:52:04 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 19:52:04 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 19:52:04 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:52:04 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:52:04 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 19:52:04 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 19:52:04 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 19:52:05 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 16 Nov 2026 19:52:09 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:52:10 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 19:52:10 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 19:52:10 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 19:52:10 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:14:28 GMT
ENV DATA_DIR=/catalogue-data
# Thu, 19 Nov 2026 21:14:28 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Thu, 19 Nov 2026 21:14:28 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Thu, 19 Nov 2026 21:14:28 GMT
ENV GN_FILE=geonetwork.war
# Thu, 19 Nov 2026 21:14:28 GMT
ENV GN_VERSION=4.2.18
# Thu, 19 Nov 2026 21:14:28 GMT
ENV GN_DOWNLOAD_SHA256=4c846214fafcc681603a3c65b2248cce60f3283a74bd6a0e0aa2a216dacd87d3
# Thu, 19 Nov 2026 21:37:27 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Thu, 19 Nov 2026 21:37:27 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Thu, 19 Nov 2026 21:37:27 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Thu, 19 Nov 2026 21:37:27 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Thu, 19 Nov 2026 21:37:27 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:37:27 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:c9ad55dde9ad5376b797faf6b6dd0caa61cff4a20a14ef03107c1e7fdc9113f0`  
		Last Modified: Wed, 11 Nov 2026 22:58:50 GMT  
		Size: 26.9 MB (26922008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd8eaef430a8b3371beba4621997592db241717bd1bf4f33ece2822f0f77c175`  
		Last Modified: Mon, 16 Nov 2026 19:42:02 GMT  
		Size: 21.1 MB (21124402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82b41a9d2e57fabc8cdd283ff4472c156da661a301b77d3052f3b92c74fe5ed0`  
		Last Modified: Mon, 16 Nov 2026 19:42:03 GMT  
		Size: 39.8 MB (39790842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc29eb4274d74c4122e4dd54b928aca58eed62f8ec648f904728e7d8caa4454`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33e7ddb97ed1dc3a237f001e2b8cf1f3bddfd53591d4dc3f21b3e3da1b8109ef`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92521da79af2e27f9af74e3fe5eb94ac4c45b254359703ae088f0855a7aa437`  
		Last Modified: Mon, 16 Nov 2026 19:52:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2308d11efbb23b3dc7f2257974fba9134ba30aecb80c88c3e12e35be11e7769f`  
		Last Modified: Mon, 16 Nov 2026 19:52:18 GMT  
		Size: 14.1 MB (14091720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83e8fd676cacb41c02f12c36db1f1e43c07a1037de1ceefe2bd6caee91570304`  
		Last Modified: Mon, 16 Nov 2026 19:52:17 GMT  
		Size: 197.3 KB (197314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2ad3ec362e8fa63c4ae5cc79269953af2f14f0f722ce5a4062dd6cabe92d356`  
		Last Modified: Thu, 19 Nov 2026 21:37:50 GMT  
		Size: 227.3 KB (227254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1a30e7ee6e0b1ba637ee123a473ae747952ac9a360d450b003d3f749bbacb43`  
		Last Modified: Thu, 19 Nov 2026 21:37:55 GMT  
		Size: 273.2 MB (273181302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857f54410b12842f32fe6b4f649b0848588b1247920ccd7b9927bf4d8f01d92b`  
		Last Modified: Thu, 19 Nov 2026 21:37:50 GMT  
		Size: 1.5 KB (1505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bb64ac84b02de7c30f5945ca331735395b49c94fc3e55d0682264a27b640c18`  
		Last Modified: Thu, 19 Nov 2026 21:37:50 GMT  
		Size: 999.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2` - unknown; unknown

```console
$ docker pull geonetwork@sha256:49b3cf1971f851f9f5682a4a50fde868bbd24cbbb4bcad9d52d6d7dfd4d814c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4200237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8aad3101ef0c03553a7069a28d29922523ba40ca7f3917833e8c95221cb7e6d`

```dockerfile
```

-	Layers:
	-	`sha256:2c506c6b6b8f2065a8a0ac18d4d63031b92b9fa419c81e43d922137125855035`  
		Last Modified: Thu, 19 Nov 2026 21:37:50 GMT  
		Size: 4.2 MB (4178355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1dc8c2e417ce0d07b97d63ce94e8e2089508cb46b1185849276b903da0dab67c`  
		Last Modified: Thu, 19 Nov 2026 21:37:50 GMT  
		Size: 21.9 KB (21882 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.2` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:a04b4888282ae5defbeed736ec2257d364d6f5b2595c3b0aac7ed4636beb0d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.9 MB (380947937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4748fa58f2a1284199fe560beb4035c95d25832a09bc172a4ced2f5705d47bd5`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 19:41:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:41:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:41:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:41:45 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:41:45 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:41:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='bbe01d0683d3dcdd0bbdcc568d3d9123f719a4fa390208b3fe1ca6e1ef083923';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:41:48 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:41:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:41:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 20:15:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 20:15:29 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:15:29 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 20:15:30 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:15:30 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:15:30 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:15:30 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 20:15:30 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 20:15:30 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 20:15:30 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 16 Nov 2026 20:15:35 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:15:36 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 20:15:36 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 20:15:36 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 20:15:36 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:14:42 GMT
ENV DATA_DIR=/catalogue-data
# Thu, 19 Nov 2026 21:14:42 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Thu, 19 Nov 2026 21:14:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Thu, 19 Nov 2026 21:14:42 GMT
ENV GN_FILE=geonetwork.war
# Thu, 19 Nov 2026 21:14:42 GMT
ENV GN_VERSION=4.2.18
# Thu, 19 Nov 2026 21:14:42 GMT
ENV GN_DOWNLOAD_SHA256=4c846214fafcc681603a3c65b2248cce60f3283a74bd6a0e0aa2a216dacd87d3
# Thu, 19 Nov 2026 21:42:22 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Thu, 19 Nov 2026 21:42:22 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Thu, 19 Nov 2026 21:42:22 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Thu, 19 Nov 2026 21:42:22 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Thu, 19 Nov 2026 21:42:22 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:42:22 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d36789d4c0bd9894e9d682ec8ec1b0c1a19e485c78d2fc889d343b15ba9ae1`  
		Last Modified: Mon, 16 Nov 2026 19:42:00 GMT  
		Size: 22.8 MB (22849588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cfc5235c260d813bcb507b3e08056ca65d1b2e9a4934084af35a19560a4b2c1`  
		Last Modified: Mon, 16 Nov 2026 19:42:00 GMT  
		Size: 41.3 MB (41315292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17c1741f40589625e6b59d4246832c6c20348f83ff113762092f89e965f3e3a9`  
		Last Modified: Mon, 16 Nov 2026 19:41:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc35ae0764aa0ccca45dceca5ec543f146b136797643c66d0064dcf769d7254`  
		Last Modified: Mon, 16 Nov 2026 19:41:58 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb12a479ffec5fa45f82187048ad3ae101a6834e64bd8a7e5b1203705034224`  
		Last Modified: Mon, 16 Nov 2026 20:15:45 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c1427e81ad958eb13c58079bf067bbf5f54c0b74bc9a1d71f5e096fda3d073d`  
		Last Modified: Mon, 16 Nov 2026 20:15:45 GMT  
		Size: 14.2 MB (14166108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caecb1cd12a69970d570779ddd4e4197bedf2d23bd8e5660c55e86d1b5b56628`  
		Last Modified: Mon, 16 Nov 2026 20:15:45 GMT  
		Size: 226.0 KB (226046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdb4566673eb10fcc6ea47d620403a79d2b30237f3ac30ade3d7c226f201ab12`  
		Last Modified: Thu, 19 Nov 2026 21:42:45 GMT  
		Size: 239.0 KB (239044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86bcaf1d592392e97d40bb0f2e892e7e8fc6ddeaf195c5e48253edfd00fce0f`  
		Last Modified: Thu, 19 Nov 2026 21:42:50 GMT  
		Size: 273.2 MB (273181304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96b1be8369a4c94ae812620fd24f2bc4c778efcbed7d7871f738bf44984729d8`  
		Last Modified: Thu, 19 Nov 2026 21:42:45 GMT  
		Size: 1.5 KB (1502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721ade29c0101129019c71403bacba265b2b2f30a55b5377fa43717048653dc4`  
		Last Modified: Thu, 19 Nov 2026 21:42:46 GMT  
		Size: 999.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2` - unknown; unknown

```console
$ docker pull geonetwork@sha256:08e2ad50c6754d1f6dd38fbe22d0f420b3d4e161c6da06505c195ab596a8ee65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4195404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e9856adb331bfeba6a3be0f2e4125a343af67fb77e158ef13a445b937686312`

```dockerfile
```

-	Layers:
	-	`sha256:678267aba56a7d0f5ede5ecf5dfbcdf9dcbdae04eb053056399d28554fb4864a`  
		Last Modified: Thu, 19 Nov 2026 21:42:45 GMT  
		Size: 4.2 MB (4173504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a502b2f40e76cf1f272812c08e7f296fe94d3f2c4d9165479c8f147bb34625b`  
		Last Modified: Thu, 19 Nov 2026 21:42:45 GMT  
		Size: 21.9 KB (21900 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.2` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:3106fb700b20f4b10340ca2018939aeb19461e91543cf544a6870a889c0cf104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.3 MB (385255419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ecba05a85bdfc6daa673151b38a8f048d49de71805c330d4dc703d978c7e07a`
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
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:41:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='bbe01d0683d3dcdd0bbdcc568d3d9123f719a4fa390208b3fe1ca6e1ef083923';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:41:31 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:41:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:41:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 21:15:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 21:15:26 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 21:15:26 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 21:15:26 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 21:15:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 21:15:26 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 21:15:26 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 21:15:26 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 21:15:26 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 21:15:27 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 16 Nov 2026 21:15:56 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 21:16:01 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 21:16:01 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 21:16:01 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 21:16:01 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:46:02 GMT
ENV DATA_DIR=/catalogue-data
# Mon, 16 Nov 2026 21:46:02 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Mon, 16 Nov 2026 21:46:02 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Mon, 16 Nov 2026 21:46:02 GMT
ENV GN_FILE=geonetwork.war
# Mon, 16 Nov 2026 21:46:02 GMT
ENV GN_VERSION=4.2.17
# Mon, 16 Nov 2026 21:46:02 GMT
ENV GN_DOWNLOAD_SHA256=0b065e07ef9b1ff6116c8b10e54f02b9705ea72a154cdcc5a13768667439705b
# Mon, 16 Nov 2026 21:48:30 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Mon, 16 Nov 2026 21:48:30 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Mon, 16 Nov 2026 21:48:30 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Mon, 16 Nov 2026 21:48:30 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Mon, 16 Nov 2026 21:48:30 GMT
CMD ["catalina.sh" "run"]
# Mon, 16 Nov 2026 21:48:30 GMT
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
	-	`sha256:3099840c611f68fae5d48bfe89bdbf79be375637326b372903696170474750a8`  
		Last Modified: Mon, 16 Nov 2026 19:41:59 GMT  
		Size: 41.8 MB (41765098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6883c49032bf3d23974d61ac5f6f183d735ab830e0ee56d3e9ef06445331d5f0`  
		Last Modified: Mon, 16 Nov 2026 19:41:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070f7253f00b9a68a5b51ae54612e17d60dcefd74cb9b2ab0d4a325922248e4b`  
		Last Modified: Mon, 16 Nov 2026 19:41:58 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7df4e86fbf45933b77252a1cf45d644d4fec3901d9716144159dcfac30726037`  
		Last Modified: Mon, 16 Nov 2026 21:16:20 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9a2e311e84ddf05f10afaaa851c1eb2919af973ffc2475c936bff52290289a`  
		Last Modified: Mon, 16 Nov 2026 21:16:21 GMT  
		Size: 14.2 MB (14193915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a629654e03f204e38eb17216e8227f195a20d70b53d78c6b16a68b5053211f4`  
		Last Modified: Mon, 16 Nov 2026 21:16:21 GMT  
		Size: 13.7 MB (13652381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:819ca4d102e0aac02584f516336f947cbab1b65b8fc3e59db9e624344f776d3c`  
		Last Modified: Mon, 16 Nov 2026 21:49:15 GMT  
		Size: 271.0 KB (270951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70991638bfd1f0376248dad1741f93cbbbb3d4a3acd4031b5ee5dad6ccb9ff6e`  
		Last Modified: Mon, 16 Nov 2026 21:49:20 GMT  
		Size: 262.2 MB (262178761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be58ea064fe343c0a2826869cb8623829021101ef05414883e1af56b94050af1`  
		Last Modified: Mon, 16 Nov 2026 21:49:15 GMT  
		Size: 1.5 KB (1499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5e8f0dd6863c8d3bf4e563d54ac17756fc10f6ea668509d97614ae465e18fad`  
		Last Modified: Mon, 16 Nov 2026 21:49:15 GMT  
		Size: 999.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2` - unknown; unknown

```console
$ docker pull geonetwork@sha256:a0a1f97ee21c844ff289f00444fb7fd92bee8099ab7d420cef5355f721bfb6a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4192549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8392b55115a68d7ba4d4ea95f6f4f8de2f87ca842d4d3c97b30cec1128eb93b8`

```dockerfile
```

-	Layers:
	-	`sha256:0ea8cfc9da16dbbd4e59a492681f6c9abcbfdcfbad0a05a4818fcd21ea3b8c38`  
		Last Modified: Mon, 16 Nov 2026 21:49:15 GMT  
		Size: 4.2 MB (4170701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a14ec86fa5e091a9eb3eb04a4e15ffaea20bb787a1856af0648b18e2c2fec2b`  
		Last Modified: Mon, 16 Nov 2026 21:49:15 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:4.2.18`

```console
$ docker pull geonetwork@sha256:62670868310b0866ddac2ee6f4fb82cc014bf6896e397c3eeae4d566a73cf9e9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `geonetwork:4.2.18` - linux; amd64

```console
$ docker pull geonetwork@sha256:1430b65d7a1488418de3681129c1603cea79df4a1bcca14f05a0baa42de9488f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.0 MB (383018988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f39883e62c617f87745ccd6543cc5b7b48f708990b15a4e877fc9c4ab25ef036`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 19:47:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:47:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:47:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:47:22 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:47:22 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:47:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='bbe01d0683d3dcdd0bbdcc568d3d9123f719a4fa390208b3fe1ca6e1ef083923';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:47:24 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:47:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:47:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 21:11:37 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 21:11:37 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 21:11:37 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 21:11:37 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 21:11:37 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 21:11:37 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 21:11:37 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 21:11:37 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 21:11:37 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 21:11:37 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 16 Nov 2026 21:11:40 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 21:11:40 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 21:11:40 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 21:11:40 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 21:11:40 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:14:33 GMT
ENV DATA_DIR=/catalogue-data
# Thu, 19 Nov 2026 21:14:33 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Thu, 19 Nov 2026 21:14:33 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Thu, 19 Nov 2026 21:14:33 GMT
ENV GN_FILE=geonetwork.war
# Thu, 19 Nov 2026 21:14:33 GMT
ENV GN_VERSION=4.2.18
# Thu, 19 Nov 2026 21:14:33 GMT
ENV GN_DOWNLOAD_SHA256=4c846214fafcc681603a3c65b2248cce60f3283a74bd6a0e0aa2a216dacd87d3
# Thu, 19 Nov 2026 21:40:11 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Thu, 19 Nov 2026 21:40:11 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Thu, 19 Nov 2026 21:40:11 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Thu, 19 Nov 2026 21:40:11 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Thu, 19 Nov 2026 21:40:11 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:40:11 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2e79f81cf75bd7064b4ba224cad07487e325fe1226e7189c39d165d216ffee7`  
		Last Modified: Mon, 16 Nov 2026 19:47:36 GMT  
		Size: 23.1 MB (23065237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e371d53257150b312c58dc322b0c617d411f5e87b406d291b1d772f909d70d3b`  
		Last Modified: Mon, 16 Nov 2026 19:47:36 GMT  
		Size: 42.4 MB (42351680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aac639ee46464312c3251ea05d58dd44c2de1d2b47d5748b9305c52c1b19ab6`  
		Last Modified: Mon, 16 Nov 2026 19:47:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6080fcfa7dce01271ca2b8535490e754c4e9bd568f5e4a6fb684902b66749ee`  
		Last Modified: Mon, 16 Nov 2026 19:47:35 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af3edaa5e1322925e1de60b2382fe5593b5daa5862588ddb76d12d10dfe47be`  
		Last Modified: Mon, 16 Nov 2026 21:11:49 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a27dfee8a8170bf447ca4bd09bc1b859118f56e3bf67a663523f9363c385f3`  
		Last Modified: Mon, 16 Nov 2026 21:11:49 GMT  
		Size: 14.2 MB (14156918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3c42740e5dac4de44c1d14a091220c36b71c43edbf43836c5ab0490e3c199ce`  
		Last Modified: Mon, 16 Nov 2026 21:11:49 GMT  
		Size: 225.5 KB (225545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:790f5c5029a4543a16dcecb23d76105d35886a270a8701df2e313f5631be2d0f`  
		Last Modified: Thu, 19 Nov 2026 21:40:32 GMT  
		Size: 239.8 KB (239811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93070b55c32d401c369b853db72b675a40c7e03b74d575d5e8889e4ec5a0488`  
		Last Modified: Thu, 19 Nov 2026 21:40:38 GMT  
		Size: 273.2 MB (273181281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22667981fde212519eac2cc67cadfe771a7e26efac837d22a7245961602b28aa`  
		Last Modified: Thu, 19 Nov 2026 21:40:32 GMT  
		Size: 1.5 KB (1503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bfbb093981b76270747f09fe67e0bc8633cf7ed2ce9083af0bc62cd026a20e5`  
		Last Modified: Thu, 19 Nov 2026 21:40:33 GMT  
		Size: 998.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2.18` - unknown; unknown

```console
$ docker pull geonetwork@sha256:965dafe27ea2bea07c349dbdcc6fd18e48df594e7fbfbc78dc02afd2fb15dbf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4194169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57959c7e67efae7728dde8c34bc1df219fd3e218539d018f716180e39f59ee3d`

```dockerfile
```

-	Layers:
	-	`sha256:cd586ee746bb5585b698fa189f847bfdd5b370a52ee84deb742024418ed779e3`  
		Last Modified: Thu, 19 Nov 2026 21:40:32 GMT  
		Size: 4.2 MB (4172364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3894a96271c6381834882ec8e6e543451017123dad5155afaad528563bf27c8`  
		Last Modified: Thu, 19 Nov 2026 21:40:32 GMT  
		Size: 21.8 KB (21805 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.2.18` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:cde76f20be714e4cca1a9f4937200028e28b042ad4c9b8b6785de0b2c1c499c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.5 MB (375540140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab10704d42b15334d907eacea50c240195a0aee81b384f4221acf2720e396bc`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:23 GMT
ADD file:3cbbfb6c4f8e63d9999d351c6c7c50b4ce512c57a42bc2c5bc2da9cb561f6eed in / 
# Tue, 10 Nov 2026 08:36:24 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 19:41:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:41:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:41:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:41:43 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:41:43 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:41:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='bbe01d0683d3dcdd0bbdcc568d3d9123f719a4fa390208b3fe1ca6e1ef083923';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:41:50 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:41:50 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:41:50 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 19:52:04 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 19:52:04 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:52:04 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 19:52:04 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 19:52:04 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:52:04 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 19:52:04 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 19:52:04 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 19:52:04 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 19:52:05 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 16 Nov 2026 19:52:09 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:52:10 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 19:52:10 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 19:52:10 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 19:52:10 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:14:28 GMT
ENV DATA_DIR=/catalogue-data
# Thu, 19 Nov 2026 21:14:28 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Thu, 19 Nov 2026 21:14:28 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Thu, 19 Nov 2026 21:14:28 GMT
ENV GN_FILE=geonetwork.war
# Thu, 19 Nov 2026 21:14:28 GMT
ENV GN_VERSION=4.2.18
# Thu, 19 Nov 2026 21:14:28 GMT
ENV GN_DOWNLOAD_SHA256=4c846214fafcc681603a3c65b2248cce60f3283a74bd6a0e0aa2a216dacd87d3
# Thu, 19 Nov 2026 21:37:27 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Thu, 19 Nov 2026 21:37:27 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Thu, 19 Nov 2026 21:37:27 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Thu, 19 Nov 2026 21:37:27 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Thu, 19 Nov 2026 21:37:27 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:37:27 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:c9ad55dde9ad5376b797faf6b6dd0caa61cff4a20a14ef03107c1e7fdc9113f0`  
		Last Modified: Wed, 11 Nov 2026 22:58:50 GMT  
		Size: 26.9 MB (26922008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd8eaef430a8b3371beba4621997592db241717bd1bf4f33ece2822f0f77c175`  
		Last Modified: Mon, 16 Nov 2026 19:42:02 GMT  
		Size: 21.1 MB (21124402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82b41a9d2e57fabc8cdd283ff4472c156da661a301b77d3052f3b92c74fe5ed0`  
		Last Modified: Mon, 16 Nov 2026 19:42:03 GMT  
		Size: 39.8 MB (39790842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc29eb4274d74c4122e4dd54b928aca58eed62f8ec648f904728e7d8caa4454`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33e7ddb97ed1dc3a237f001e2b8cf1f3bddfd53591d4dc3f21b3e3da1b8109ef`  
		Last Modified: Mon, 16 Nov 2026 19:42:01 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92521da79af2e27f9af74e3fe5eb94ac4c45b254359703ae088f0855a7aa437`  
		Last Modified: Mon, 16 Nov 2026 19:52:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2308d11efbb23b3dc7f2257974fba9134ba30aecb80c88c3e12e35be11e7769f`  
		Last Modified: Mon, 16 Nov 2026 19:52:18 GMT  
		Size: 14.1 MB (14091720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83e8fd676cacb41c02f12c36db1f1e43c07a1037de1ceefe2bd6caee91570304`  
		Last Modified: Mon, 16 Nov 2026 19:52:17 GMT  
		Size: 197.3 KB (197314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2ad3ec362e8fa63c4ae5cc79269953af2f14f0f722ce5a4062dd6cabe92d356`  
		Last Modified: Thu, 19 Nov 2026 21:37:50 GMT  
		Size: 227.3 KB (227254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1a30e7ee6e0b1ba637ee123a473ae747952ac9a360d450b003d3f749bbacb43`  
		Last Modified: Thu, 19 Nov 2026 21:37:55 GMT  
		Size: 273.2 MB (273181302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857f54410b12842f32fe6b4f649b0848588b1247920ccd7b9927bf4d8f01d92b`  
		Last Modified: Thu, 19 Nov 2026 21:37:50 GMT  
		Size: 1.5 KB (1505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bb64ac84b02de7c30f5945ca331735395b49c94fc3e55d0682264a27b640c18`  
		Last Modified: Thu, 19 Nov 2026 21:37:50 GMT  
		Size: 999.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2.18` - unknown; unknown

```console
$ docker pull geonetwork@sha256:49b3cf1971f851f9f5682a4a50fde868bbd24cbbb4bcad9d52d6d7dfd4d814c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4200237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8aad3101ef0c03553a7069a28d29922523ba40ca7f3917833e8c95221cb7e6d`

```dockerfile
```

-	Layers:
	-	`sha256:2c506c6b6b8f2065a8a0ac18d4d63031b92b9fa419c81e43d922137125855035`  
		Last Modified: Thu, 19 Nov 2026 21:37:50 GMT  
		Size: 4.2 MB (4178355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1dc8c2e417ce0d07b97d63ce94e8e2089508cb46b1185849276b903da0dab67c`  
		Last Modified: Thu, 19 Nov 2026 21:37:50 GMT  
		Size: 21.9 KB (21882 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.2.18` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:a04b4888282ae5defbeed736ec2257d364d6f5b2595c3b0aac7ed4636beb0d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.9 MB (380947937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4748fa58f2a1284199fe560beb4035c95d25832a09bc172a4ced2f5705d47bd5`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 19:41:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:41:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:41:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:41:45 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:41:45 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:41:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='bbe01d0683d3dcdd0bbdcc568d3d9123f719a4fa390208b3fe1ca6e1ef083923';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:41:48 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:41:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:41:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 20:15:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 16 Nov 2026 20:15:29 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:15:29 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 16 Nov 2026 20:15:30 GMT
WORKDIR /usr/local/tomcat
# Mon, 16 Nov 2026 20:15:30 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:15:30 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 16 Nov 2026 20:15:30 GMT
ENV TOMCAT_MAJOR=9
# Mon, 16 Nov 2026 20:15:30 GMT
ENV TOMCAT_VERSION=9.0.124
# Mon, 16 Nov 2026 20:15:30 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Mon, 16 Nov 2026 20:15:30 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 16 Nov 2026 20:15:35 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:15:36 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 16 Nov 2026 20:15:36 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 16 Nov 2026 20:15:36 GMT
ENTRYPOINT []
# Mon, 16 Nov 2026 20:15:36 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:14:42 GMT
ENV DATA_DIR=/catalogue-data
# Thu, 19 Nov 2026 21:14:42 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Thu, 19 Nov 2026 21:14:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Thu, 19 Nov 2026 21:14:42 GMT
ENV GN_FILE=geonetwork.war
# Thu, 19 Nov 2026 21:14:42 GMT
ENV GN_VERSION=4.2.18
# Thu, 19 Nov 2026 21:14:42 GMT
ENV GN_DOWNLOAD_SHA256=4c846214fafcc681603a3c65b2248cce60f3283a74bd6a0e0aa2a216dacd87d3
# Thu, 19 Nov 2026 21:42:22 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Thu, 19 Nov 2026 21:42:22 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Thu, 19 Nov 2026 21:42:22 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Thu, 19 Nov 2026 21:42:22 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Thu, 19 Nov 2026 21:42:22 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:42:22 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d36789d4c0bd9894e9d682ec8ec1b0c1a19e485c78d2fc889d343b15ba9ae1`  
		Last Modified: Mon, 16 Nov 2026 19:42:00 GMT  
		Size: 22.8 MB (22849588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cfc5235c260d813bcb507b3e08056ca65d1b2e9a4934084af35a19560a4b2c1`  
		Last Modified: Mon, 16 Nov 2026 19:42:00 GMT  
		Size: 41.3 MB (41315292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17c1741f40589625e6b59d4246832c6c20348f83ff113762092f89e965f3e3a9`  
		Last Modified: Mon, 16 Nov 2026 19:41:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc35ae0764aa0ccca45dceca5ec543f146b136797643c66d0064dcf769d7254`  
		Last Modified: Mon, 16 Nov 2026 19:41:58 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb12a479ffec5fa45f82187048ad3ae101a6834e64bd8a7e5b1203705034224`  
		Last Modified: Mon, 16 Nov 2026 20:15:45 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c1427e81ad958eb13c58079bf067bbf5f54c0b74bc9a1d71f5e096fda3d073d`  
		Last Modified: Mon, 16 Nov 2026 20:15:45 GMT  
		Size: 14.2 MB (14166108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caecb1cd12a69970d570779ddd4e4197bedf2d23bd8e5660c55e86d1b5b56628`  
		Last Modified: Mon, 16 Nov 2026 20:15:45 GMT  
		Size: 226.0 KB (226046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdb4566673eb10fcc6ea47d620403a79d2b30237f3ac30ade3d7c226f201ab12`  
		Last Modified: Thu, 19 Nov 2026 21:42:45 GMT  
		Size: 239.0 KB (239044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86bcaf1d592392e97d40bb0f2e892e7e8fc6ddeaf195c5e48253edfd00fce0f`  
		Last Modified: Thu, 19 Nov 2026 21:42:50 GMT  
		Size: 273.2 MB (273181304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96b1be8369a4c94ae812620fd24f2bc4c778efcbed7d7871f738bf44984729d8`  
		Last Modified: Thu, 19 Nov 2026 21:42:45 GMT  
		Size: 1.5 KB (1502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721ade29c0101129019c71403bacba265b2b2f30a55b5377fa43717048653dc4`  
		Last Modified: Thu, 19 Nov 2026 21:42:46 GMT  
		Size: 999.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2.18` - unknown; unknown

```console
$ docker pull geonetwork@sha256:08e2ad50c6754d1f6dd38fbe22d0f420b3d4e161c6da06505c195ab596a8ee65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4195404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e9856adb331bfeba6a3be0f2e4125a343af67fb77e158ef13a445b937686312`

```dockerfile
```

-	Layers:
	-	`sha256:678267aba56a7d0f5ede5ecf5dfbcdf9dcbdae04eb053056399d28554fb4864a`  
		Last Modified: Thu, 19 Nov 2026 21:42:45 GMT  
		Size: 4.2 MB (4173504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a502b2f40e76cf1f272812c08e7f296fe94d3f2c4d9165479c8f147bb34625b`  
		Last Modified: Thu, 19 Nov 2026 21:42:45 GMT  
		Size: 21.9 KB (21900 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:4.4`

```console
$ docker pull geonetwork@sha256:27bfa7e826d12936f405de4bf1dfeb3e76f84bc146315a120bc3e43473a29755
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
$ docker pull geonetwork@sha256:d02b7e6a9b294abfea5d041a9b6d18d50a757fc74fe70cc7250791dae73cace1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.6 MB (392612653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990ec420fd5950d4244097002ddbd5212c1e6cfc7598c913ebcc6a783e853faa`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:17:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:17:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:17:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:17:08 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:17:08 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:17:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:17:11 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:17:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:17:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 14 Nov 2026 00:11:54 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 14 Nov 2026 00:11:54 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:11:54 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 14 Nov 2026 00:11:54 GMT
WORKDIR /usr/local/tomcat
# Sat, 14 Nov 2026 00:11:54 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:11:54 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:11:54 GMT
ENV TOMCAT_MAJOR=9
# Sat, 14 Nov 2026 00:11:54 GMT
ENV TOMCAT_VERSION=9.0.124
# Sat, 14 Nov 2026 00:11:54 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 00:11:55 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 00:12:05 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:12:06 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 00:12:06 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 00:12:06 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 00:12:06 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:16:17 GMT
ENV DATA_DIR=/catalogue-data
# Thu, 19 Nov 2026 21:16:17 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Thu, 19 Nov 2026 21:16:17 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Thu, 19 Nov 2026 21:16:17 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Thu, 19 Nov 2026 21:16:17 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Thu, 19 Nov 2026 21:16:17 GMT
ENV GN_FILE=geonetwork.war
# Thu, 19 Nov 2026 21:16:17 GMT
ENV GN_VERSION=4.4.13
# Thu, 19 Nov 2026 21:16:17 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Thu, 19 Nov 2026 21:35:46 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Thu, 19 Nov 2026 21:35:46 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Thu, 19 Nov 2026 21:35:46 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Thu, 19 Nov 2026 21:35:46 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Thu, 19 Nov 2026 21:35:46 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Thu, 19 Nov 2026 21:35:46 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:35:46 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16af2eba9bc8d0bb382ac128542967e0244e4149a5167346a3609b5c02250eb7`  
		Last Modified: Wed, 11 Nov 2026 23:17:25 GMT  
		Size: 17.0 MB (16968781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd5ffe3a8573849a46c62104d066d9a0238288b3722be90c7996fd183deaa38`  
		Last Modified: Wed, 11 Nov 2026 23:17:26 GMT  
		Size: 47.4 MB (47351616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e6810092226afebad4d044648bcbf7fdd2e52e37220e0ae2da3d595e3b09b23`  
		Last Modified: Wed, 11 Nov 2026 23:17:24 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72f525a27ee971f5f3a289935521db1283b5b80178d66ecf1b1a96d4401a0d4e`  
		Last Modified: Wed, 11 Nov 2026 23:17:24 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41498c12cf0417c842aba99cb7155199a723d43f2c70a87d204863fe6145f14`  
		Last Modified: Sat, 14 Nov 2026 00:12:15 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58248d56c2b6e9f16378817be0738c172d9493057daab7509eab9e0646d2e635`  
		Last Modified: Sat, 14 Nov 2026 00:12:16 GMT  
		Size: 14.2 MB (14157817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e28344dd525698dba8f79bc6cd1b0a70c9e383313ef90d75f10a3284d4e91bb`  
		Last Modified: Sat, 14 Nov 2026 00:12:16 GMT  
		Size: 12.8 MB (12844041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a1c5f454a186f79039a9549b8610b635dd51b4b233bd47a9fe3dadabea1373`  
		Last Modified: Thu, 19 Nov 2026 21:36:09 GMT  
		Size: 240.2 KB (240225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacf4d888deaed6f61be4fe7b01ea0f23d33895f1a6a2db52278ba49fb2877eb`  
		Last Modified: Thu, 19 Nov 2026 21:36:14 GMT  
		Size: 271.3 MB (271250089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05663daffb6daea9800730fd788423a363b465441f94908c981483d7f50e700`  
		Last Modified: Thu, 19 Nov 2026 21:36:09 GMT  
		Size: 323.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0354c4bcae5377b092d064f98104fe9c1ad0d2c22d2de9f00029ac00d71db1c`  
		Last Modified: Thu, 19 Nov 2026 21:36:09 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d9d2af6b68c0312400b9115a022d343070b705a615518fd147d1dcac0e11b0`  
		Last Modified: Thu, 19 Nov 2026 21:36:10 GMT  
		Size: 700.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:11291f5cd5faeff6f78a3a5522c2751391f0bb0af6c231bcb1916dd0a0aee663
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4111191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06315bda5f2404cfd18af9dc6ebdb252731288dcd94a485b796e99b52c4c3f7d`

```dockerfile
```

-	Layers:
	-	`sha256:a748bc7585cc5a15bf1ef922e773c44b3b2cf71d21c0bd1707a05456a14f696d`  
		Last Modified: Thu, 19 Nov 2026 21:36:09 GMT  
		Size: 4.1 MB (4085623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be2c9d1e3375076ed50e1f5d184b907de51741b138863a6410fbbf70d29a5dda`  
		Last Modified: Thu, 19 Nov 2026 21:36:09 GMT  
		Size: 25.6 KB (25568 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.4` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:e901b31c2431abb81b9420d0f61cd9cb56fdb92c5c5bc934f80c01ce188d0c04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.8 MB (385811484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90a6f09147fbddfc311bc796d25ec6507bde8ef46da07d58bb26f0da8c6f29fb`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:23 GMT
ADD file:3cbbfb6c4f8e63d9999d351c6c7c50b4ce512c57a42bc2c5bc2da9cb561f6eed in / 
# Tue, 10 Nov 2026 08:36:24 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:20:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:20:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:20:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:20:08 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:20:08 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:20:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:20:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:20:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:20:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 14 Nov 2026 00:18:35 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 14 Nov 2026 00:18:35 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:18:35 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 14 Nov 2026 00:18:36 GMT
WORKDIR /usr/local/tomcat
# Sat, 14 Nov 2026 00:18:36 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:18:36 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:18:36 GMT
ENV TOMCAT_MAJOR=9
# Sat, 14 Nov 2026 00:18:36 GMT
ENV TOMCAT_VERSION=9.0.124
# Sat, 14 Nov 2026 00:18:36 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 00:18:36 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 00:18:47 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:18:47 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 00:18:47 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 00:18:47 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 00:18:47 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:16:16 GMT
ENV DATA_DIR=/catalogue-data
# Thu, 19 Nov 2026 21:16:16 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Thu, 19 Nov 2026 21:16:16 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Thu, 19 Nov 2026 21:16:16 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Thu, 19 Nov 2026 21:16:16 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Thu, 19 Nov 2026 21:16:16 GMT
ENV GN_FILE=geonetwork.war
# Thu, 19 Nov 2026 21:16:16 GMT
ENV GN_VERSION=4.4.13
# Thu, 19 Nov 2026 21:16:16 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Thu, 19 Nov 2026 21:43:40 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Thu, 19 Nov 2026 21:43:40 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Thu, 19 Nov 2026 21:43:40 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Thu, 19 Nov 2026 21:43:40 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Thu, 19 Nov 2026 21:43:40 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Thu, 19 Nov 2026 21:43:40 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:43:40 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:c9ad55dde9ad5376b797faf6b6dd0caa61cff4a20a14ef03107c1e7fdc9113f0`  
		Last Modified: Wed, 11 Nov 2026 22:58:50 GMT  
		Size: 26.9 MB (26922008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed87f1d1727d0a3f93c75bce8c653db033c37e594c09db775ed5b959255b21c`  
		Last Modified: Wed, 11 Nov 2026 23:20:25 GMT  
		Size: 16.3 MB (16286314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5c7891017fcdfb7dd39ceffa3b7b6c6a167eda225a9411c8a03b890de0a8ce`  
		Last Modified: Wed, 11 Nov 2026 23:20:25 GMT  
		Size: 45.5 MB (45466398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad523630c28f4419d6418ce660b7305412872a43393029d248023f7fb92ac7ec`  
		Last Modified: Wed, 11 Nov 2026 23:20:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0152dfff9dc349392c57ca1601fcf39a6cba2f021f90771cb3504b23b246ac20`  
		Last Modified: Wed, 11 Nov 2026 23:20:24 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c977dc1ad0856baeae55a5c4386ab9ea86952337c9d9d7aed9bf0408d94da0`  
		Last Modified: Sat, 14 Nov 2026 00:18:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4def945bbd2ad8ae32b8fcc8af4da7c4d5a6ddc3d185d052f879eb2b11b5fe9`  
		Last Modified: Sat, 14 Nov 2026 00:18:57 GMT  
		Size: 14.1 MB (14092873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc95a25937d3a8b09d58c683c33cbfde537411109a85a3ab730de78921e7e94`  
		Last Modified: Sat, 14 Nov 2026 00:18:57 GMT  
		Size: 11.6 MB (11559483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc40e3888fe8ead0bbc99d08a7b322d44dffecde2b99b0d5edb18e9aad31826`  
		Last Modified: Thu, 19 Nov 2026 21:44:03 GMT  
		Size: 227.4 KB (227413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b1d2445d5c6db2dd0bc784f415b236cd34170a1f73db65b3c7ff1046a8b55c7`  
		Last Modified: Thu, 19 Nov 2026 21:44:08 GMT  
		Size: 271.3 MB (271250133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2943446ed7f6e327025ab0e5ef7473e7b8608dc39a87a0111903eaadedec4b0f`  
		Last Modified: Thu, 19 Nov 2026 21:44:03 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c3d1b1977822e6f59192e058679e3c481dbf929bcde3fa81811882858945e0a`  
		Last Modified: Thu, 19 Nov 2026 21:44:03 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d9d2af6b68c0312400b9115a022d343070b705a615518fd147d1dcac0e11b0`  
		Last Modified: Thu, 19 Nov 2026 21:36:10 GMT  
		Size: 700.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:fa1bdae4b731e1efb7a0451c26fa01edb84a5ea7ac95480f857b0aa5e79d8be6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4114891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a6eb5732d9161b9baa8e19c79ad86f7239a48c53e4bae4f0e7e3728a033caf`

```dockerfile
```

-	Layers:
	-	`sha256:7a74071cb538ea5487516c05897e2a78d0f2cb9b2dec5f8e80e24ee56c6889f1`  
		Last Modified: Thu, 19 Nov 2026 21:44:03 GMT  
		Size: 4.1 MB (4089230 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65390210ec99f38521167b02cbe5b0bcad418aca31b3baf99c2e0b0d73566eb0`  
		Last Modified: Thu, 19 Nov 2026 21:44:03 GMT  
		Size: 25.7 KB (25661 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.4` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:9907edb875b44f3d16e33d21170faea6a84b485cc5e40ad81a2a41247e666b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.9 MB (389876446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa411186e7ad37c054a8281d273fda914dd0be1d0d05dfeb1e431163ce373fb`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:21:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:21:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:21:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:21:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:21:12 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:21:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:21:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:21:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:21:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 14 Nov 2026 00:12:37 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 14 Nov 2026 00:12:37 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:12:37 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 14 Nov 2026 00:12:37 GMT
WORKDIR /usr/local/tomcat
# Sat, 14 Nov 2026 00:12:37 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:12:37 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:12:37 GMT
ENV TOMCAT_MAJOR=9
# Sat, 14 Nov 2026 00:12:37 GMT
ENV TOMCAT_VERSION=9.0.124
# Sat, 14 Nov 2026 00:12:37 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 00:12:37 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 00:12:47 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:12:47 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 00:12:47 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 00:12:47 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 00:12:47 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:16:40 GMT
ENV DATA_DIR=/catalogue-data
# Thu, 19 Nov 2026 21:16:40 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Thu, 19 Nov 2026 21:16:40 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Thu, 19 Nov 2026 21:16:40 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Thu, 19 Nov 2026 21:16:40 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Thu, 19 Nov 2026 21:16:40 GMT
ENV GN_FILE=geonetwork.war
# Thu, 19 Nov 2026 21:16:40 GMT
ENV GN_VERSION=4.4.13
# Thu, 19 Nov 2026 21:16:40 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Thu, 19 Nov 2026 21:39:05 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Thu, 19 Nov 2026 21:39:05 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Thu, 19 Nov 2026 21:39:05 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Thu, 19 Nov 2026 21:39:05 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Thu, 19 Nov 2026 21:39:05 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Thu, 19 Nov 2026 21:39:05 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:39:05 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b8ee1fba1c12acf3073da6bbf47d7f577b1408c55e995fc155be22719fa83d8`  
		Last Modified: Wed, 11 Nov 2026 23:21:29 GMT  
		Size: 17.0 MB (16978210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27a9f4f9f615ee35c7b8ad02ad452d1b27983a17a69dc782dde91b22507a10c4`  
		Last Modified: Wed, 11 Nov 2026 23:21:30 GMT  
		Size: 45.7 MB (45660541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e29c00c8386154f2b9e54dfdbd83f83cc64156f2479049dbffee054b0442e5`  
		Last Modified: Wed, 11 Nov 2026 23:21:27 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69343d5cc62197a325b3a13f7375e8d850f1b1c91a98ca00679cee6518bfdd03`  
		Last Modified: Wed, 11 Nov 2026 23:21:27 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11e40ccb5aefd553536718b0d1c824169455c26c18175296d01c442db9a3cba9`  
		Last Modified: Sat, 14 Nov 2026 00:12:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359ef4035dd7958968649de7b8c9605f26cfe88b23dbdf9fcb3dfafa3df51044`  
		Last Modified: Sat, 14 Nov 2026 00:12:57 GMT  
		Size: 14.2 MB (14167528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949a232ab28b074571ad31b2e263295876cc1c1b889c4879ad33ba1ca4201765`  
		Last Modified: Sat, 14 Nov 2026 00:12:56 GMT  
		Size: 12.6 MB (12608375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9970aa893d4ece0128f9fcb3b2f0d531f91b8ddd3cc1cb1a26551137087189`  
		Last Modified: Thu, 19 Nov 2026 21:39:28 GMT  
		Size: 239.5 KB (239542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7764a31bf9395677a3ddfb894b2c9c99849f2094bbc55743ec9b0ff888a1a70c`  
		Last Modified: Thu, 19 Nov 2026 21:39:33 GMT  
		Size: 271.3 MB (271250129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c63d264def0a3e7e1f11d16c555ffc4895220d5f93f8390285b131badd28c8`  
		Last Modified: Thu, 19 Nov 2026 21:39:28 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75f8a1c8d12bce079a74649941fc04ac6a7a4554c8c4cda102d382a1d679c6b9`  
		Last Modified: Thu, 19 Nov 2026 21:39:28 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eb263985aa206b97f2132da5ece7268479bb5798357a078a0e816b80ce95175`  
		Last Modified: Thu, 19 Nov 2026 21:39:30 GMT  
		Size: 700.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:a7856f7c5e00c229c0bf9a4ee698c2d357ef494ab9a972a52a20accb579be044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4112404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec226083612cadd5b3d2cccd132f3f2be9e0163adff3e6584b03c0cb6b9f7ab7`

```dockerfile
```

-	Layers:
	-	`sha256:a5f53edc6224f2f49b6693bbabfddc567852b21e5ad261f1467ddbba6f6c0026`  
		Last Modified: Thu, 19 Nov 2026 21:39:28 GMT  
		Size: 4.1 MB (4086717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e749702664d45ff1b1064fbacd54c18a2b18bf27e8f0379d17bc99b05bbdb355`  
		Last Modified: Thu, 19 Nov 2026 21:39:28 GMT  
		Size: 25.7 KB (25687 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.4` - linux; ppc64le

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

### `geonetwork:4.4` - unknown; unknown

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

### `geonetwork:4.4` - linux; s390x

```console
$ docker pull geonetwork@sha256:16ee6130d139e6e9bab7bded07975b3c513c4921821f68e494fd7dc027c73678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.3 MB (386279324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06abcb3589594fac4a3eceac04532b0cc69ee61b2c2cd15f375b64d506fc744f`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:37:01 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:37:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:37:01 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:37:02 GMT
ADD file:cd6ae236aa13077d423218b776b66e2af298e76f13baa19a6432bfa2416d84e1 in / 
# Tue, 10 Nov 2026 08:37:03 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:14:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:14:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:14:14 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:14:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:14:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:14:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 02:19:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 12 Nov 2026 02:19:26 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 02:19:26 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 12 Nov 2026 02:19:26 GMT
WORKDIR /usr/local/tomcat
# Thu, 12 Nov 2026 02:19:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 02:19:26 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 02:19:26 GMT
ENV TOMCAT_MAJOR=9
# Thu, 12 Nov 2026 02:19:26 GMT
ENV TOMCAT_VERSION=9.0.124
# Thu, 12 Nov 2026 02:19:26 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 01:14:09 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 01:14:15 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 01:14:16 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 01:14:16 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 01:14:16 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 01:14:16 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:13:31 GMT
ENV DATA_DIR=/catalogue-data
# Thu, 19 Nov 2026 21:13:31 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Thu, 19 Nov 2026 21:13:31 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Thu, 19 Nov 2026 21:13:31 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Thu, 19 Nov 2026 21:13:31 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Thu, 19 Nov 2026 21:13:31 GMT
ENV GN_FILE=geonetwork.war
# Thu, 19 Nov 2026 21:13:31 GMT
ENV GN_VERSION=4.4.13
# Thu, 19 Nov 2026 21:13:31 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Thu, 19 Nov 2026 21:33:37 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Thu, 19 Nov 2026 21:33:37 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Thu, 19 Nov 2026 21:33:37 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Thu, 19 Nov 2026 21:33:37 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Thu, 19 Nov 2026 21:33:37 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Thu, 19 Nov 2026 21:33:37 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:33:37 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:bd74e3675913208a1119a54d3789c9fc5c9abdb19b714ce963adc875d0495d64`  
		Last Modified: Wed, 11 Nov 2026 22:58:51 GMT  
		Size: 30.0 MB (29967584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3134634370e311faddec73a586b392392ac4795c1016e6b7ca6269409b4500fa`  
		Last Modified: Wed, 11 Nov 2026 23:14:32 GMT  
		Size: 17.6 MB (17557905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ff515283d5ae2e02461ec9907b96c3acd9c121b5521ff74026772f6a8c20e4`  
		Last Modified: Wed, 11 Nov 2026 23:14:33 GMT  
		Size: 41.0 MB (41030907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592a5fb927d7c9ec87df2dc13efeaf977eb7956b84788dd59e86436f47f72355`  
		Last Modified: Wed, 11 Nov 2026 23:14:32 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a77ef17b74f329b0b19f2787e49b3adefb78e8a7bdac319846911f9224c199d`  
		Last Modified: Wed, 11 Nov 2026 23:14:32 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7877b7fb4767eee2e1e6cac81382aa3591786a19900c17fece144c8bffc7d45b`  
		Last Modified: Thu, 12 Nov 2026 02:20:08 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e598fbc3d56b856cd86f7da9e4e5d5645b59d636214eec0235e3671520b3f5f`  
		Last Modified: Sat, 14 Nov 2026 01:14:28 GMT  
		Size: 14.2 MB (14166859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e06e7dda18e23b55072f6dcbf042ccd9894a44a58b4d2a235c96fdb2cb3426c`  
		Last Modified: Sat, 14 Nov 2026 01:14:28 GMT  
		Size: 12.0 MB (12047742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762e12cb0640c3ee391bf2b1391270e000e5c4b91e70ec9ac172ea219b428da1`  
		Last Modified: Thu, 19 Nov 2026 21:34:06 GMT  
		Size: 251.3 KB (251333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be097f2dbc25b96a9982715cf600bc972d7cfc23f86dfafec70fd4933b739aa9`  
		Last Modified: Thu, 19 Nov 2026 21:34:10 GMT  
		Size: 271.3 MB (271250133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b198bc4423367992163ec443504792aab505b988a5d01e6936e0136c3e34b8b4`  
		Last Modified: Thu, 19 Nov 2026 21:34:06 GMT  
		Size: 323.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990c5e9079f8ed4dc82f2557034ed8e9484e57292774d510d53ed23324e17fcd`  
		Last Modified: Thu, 19 Nov 2026 21:34:06 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9ad768a1178da2b92250fed021ecf7845a30fded30f64547dc72497ffa2924`  
		Last Modified: Thu, 19 Nov 2026 21:34:07 GMT  
		Size: 700.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:01fa8e3503581fbf91c5e7037e7145efd61c8f553ef2ea84585c2ed50e6fd3c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4112154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff21acd84cc160028b092273775d1dae0f90f8ff5a34b4159636a5fe93fb9ec`

```dockerfile
```

-	Layers:
	-	`sha256:35508af884417a6595b0045181f9fa6c6f30637d19e6a73aadbdbc9d77d7225c`  
		Last Modified: Thu, 19 Nov 2026 21:34:06 GMT  
		Size: 4.1 MB (4086586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a8ffc84975c5e8c38e0c54b05e9d495d0e0e9a29cbc5269844de8f0710993a1`  
		Last Modified: Thu, 19 Nov 2026 21:34:06 GMT  
		Size: 25.6 KB (25568 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:4.4.13`

```console
$ docker pull geonetwork@sha256:e2941ae772c704d95467ec8a6958c7e02ad008d1bc315a4df9f3d796222e0d37
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `geonetwork:4.4.13` - linux; amd64

```console
$ docker pull geonetwork@sha256:d02b7e6a9b294abfea5d041a9b6d18d50a757fc74fe70cc7250791dae73cace1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.6 MB (392612653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990ec420fd5950d4244097002ddbd5212c1e6cfc7598c913ebcc6a783e853faa`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:17:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:17:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:17:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:17:08 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:17:08 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:17:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:17:11 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:17:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:17:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 14 Nov 2026 00:11:54 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 14 Nov 2026 00:11:54 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:11:54 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 14 Nov 2026 00:11:54 GMT
WORKDIR /usr/local/tomcat
# Sat, 14 Nov 2026 00:11:54 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:11:54 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:11:54 GMT
ENV TOMCAT_MAJOR=9
# Sat, 14 Nov 2026 00:11:54 GMT
ENV TOMCAT_VERSION=9.0.124
# Sat, 14 Nov 2026 00:11:54 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 00:11:55 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 00:12:05 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:12:06 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 00:12:06 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 00:12:06 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 00:12:06 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:16:17 GMT
ENV DATA_DIR=/catalogue-data
# Thu, 19 Nov 2026 21:16:17 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Thu, 19 Nov 2026 21:16:17 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Thu, 19 Nov 2026 21:16:17 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Thu, 19 Nov 2026 21:16:17 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Thu, 19 Nov 2026 21:16:17 GMT
ENV GN_FILE=geonetwork.war
# Thu, 19 Nov 2026 21:16:17 GMT
ENV GN_VERSION=4.4.13
# Thu, 19 Nov 2026 21:16:17 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Thu, 19 Nov 2026 21:35:46 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Thu, 19 Nov 2026 21:35:46 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Thu, 19 Nov 2026 21:35:46 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Thu, 19 Nov 2026 21:35:46 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Thu, 19 Nov 2026 21:35:46 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Thu, 19 Nov 2026 21:35:46 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:35:46 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16af2eba9bc8d0bb382ac128542967e0244e4149a5167346a3609b5c02250eb7`  
		Last Modified: Wed, 11 Nov 2026 23:17:25 GMT  
		Size: 17.0 MB (16968781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd5ffe3a8573849a46c62104d066d9a0238288b3722be90c7996fd183deaa38`  
		Last Modified: Wed, 11 Nov 2026 23:17:26 GMT  
		Size: 47.4 MB (47351616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e6810092226afebad4d044648bcbf7fdd2e52e37220e0ae2da3d595e3b09b23`  
		Last Modified: Wed, 11 Nov 2026 23:17:24 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72f525a27ee971f5f3a289935521db1283b5b80178d66ecf1b1a96d4401a0d4e`  
		Last Modified: Wed, 11 Nov 2026 23:17:24 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41498c12cf0417c842aba99cb7155199a723d43f2c70a87d204863fe6145f14`  
		Last Modified: Sat, 14 Nov 2026 00:12:15 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58248d56c2b6e9f16378817be0738c172d9493057daab7509eab9e0646d2e635`  
		Last Modified: Sat, 14 Nov 2026 00:12:16 GMT  
		Size: 14.2 MB (14157817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e28344dd525698dba8f79bc6cd1b0a70c9e383313ef90d75f10a3284d4e91bb`  
		Last Modified: Sat, 14 Nov 2026 00:12:16 GMT  
		Size: 12.8 MB (12844041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a1c5f454a186f79039a9549b8610b635dd51b4b233bd47a9fe3dadabea1373`  
		Last Modified: Thu, 19 Nov 2026 21:36:09 GMT  
		Size: 240.2 KB (240225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacf4d888deaed6f61be4fe7b01ea0f23d33895f1a6a2db52278ba49fb2877eb`  
		Last Modified: Thu, 19 Nov 2026 21:36:14 GMT  
		Size: 271.3 MB (271250089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05663daffb6daea9800730fd788423a363b465441f94908c981483d7f50e700`  
		Last Modified: Thu, 19 Nov 2026 21:36:09 GMT  
		Size: 323.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0354c4bcae5377b092d064f98104fe9c1ad0d2c22d2de9f00029ac00d71db1c`  
		Last Modified: Thu, 19 Nov 2026 21:36:09 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d9d2af6b68c0312400b9115a022d343070b705a615518fd147d1dcac0e11b0`  
		Last Modified: Thu, 19 Nov 2026 21:36:10 GMT  
		Size: 700.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4.13` - unknown; unknown

```console
$ docker pull geonetwork@sha256:11291f5cd5faeff6f78a3a5522c2751391f0bb0af6c231bcb1916dd0a0aee663
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4111191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06315bda5f2404cfd18af9dc6ebdb252731288dcd94a485b796e99b52c4c3f7d`

```dockerfile
```

-	Layers:
	-	`sha256:a748bc7585cc5a15bf1ef922e773c44b3b2cf71d21c0bd1707a05456a14f696d`  
		Last Modified: Thu, 19 Nov 2026 21:36:09 GMT  
		Size: 4.1 MB (4085623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be2c9d1e3375076ed50e1f5d184b907de51741b138863a6410fbbf70d29a5dda`  
		Last Modified: Thu, 19 Nov 2026 21:36:09 GMT  
		Size: 25.6 KB (25568 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.4.13` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:e901b31c2431abb81b9420d0f61cd9cb56fdb92c5c5bc934f80c01ce188d0c04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.8 MB (385811484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90a6f09147fbddfc311bc796d25ec6507bde8ef46da07d58bb26f0da8c6f29fb`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:23 GMT
ADD file:3cbbfb6c4f8e63d9999d351c6c7c50b4ce512c57a42bc2c5bc2da9cb561f6eed in / 
# Tue, 10 Nov 2026 08:36:24 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:20:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:20:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:20:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:20:08 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:20:08 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:20:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:20:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:20:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:20:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 14 Nov 2026 00:18:35 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 14 Nov 2026 00:18:35 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:18:35 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 14 Nov 2026 00:18:36 GMT
WORKDIR /usr/local/tomcat
# Sat, 14 Nov 2026 00:18:36 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:18:36 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:18:36 GMT
ENV TOMCAT_MAJOR=9
# Sat, 14 Nov 2026 00:18:36 GMT
ENV TOMCAT_VERSION=9.0.124
# Sat, 14 Nov 2026 00:18:36 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 00:18:36 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 00:18:47 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:18:47 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 00:18:47 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 00:18:47 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 00:18:47 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:16:16 GMT
ENV DATA_DIR=/catalogue-data
# Thu, 19 Nov 2026 21:16:16 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Thu, 19 Nov 2026 21:16:16 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Thu, 19 Nov 2026 21:16:16 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Thu, 19 Nov 2026 21:16:16 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Thu, 19 Nov 2026 21:16:16 GMT
ENV GN_FILE=geonetwork.war
# Thu, 19 Nov 2026 21:16:16 GMT
ENV GN_VERSION=4.4.13
# Thu, 19 Nov 2026 21:16:16 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Thu, 19 Nov 2026 21:43:40 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Thu, 19 Nov 2026 21:43:40 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Thu, 19 Nov 2026 21:43:40 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Thu, 19 Nov 2026 21:43:40 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Thu, 19 Nov 2026 21:43:40 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Thu, 19 Nov 2026 21:43:40 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:43:40 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:c9ad55dde9ad5376b797faf6b6dd0caa61cff4a20a14ef03107c1e7fdc9113f0`  
		Last Modified: Wed, 11 Nov 2026 22:58:50 GMT  
		Size: 26.9 MB (26922008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed87f1d1727d0a3f93c75bce8c653db033c37e594c09db775ed5b959255b21c`  
		Last Modified: Wed, 11 Nov 2026 23:20:25 GMT  
		Size: 16.3 MB (16286314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5c7891017fcdfb7dd39ceffa3b7b6c6a167eda225a9411c8a03b890de0a8ce`  
		Last Modified: Wed, 11 Nov 2026 23:20:25 GMT  
		Size: 45.5 MB (45466398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad523630c28f4419d6418ce660b7305412872a43393029d248023f7fb92ac7ec`  
		Last Modified: Wed, 11 Nov 2026 23:20:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0152dfff9dc349392c57ca1601fcf39a6cba2f021f90771cb3504b23b246ac20`  
		Last Modified: Wed, 11 Nov 2026 23:20:24 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c977dc1ad0856baeae55a5c4386ab9ea86952337c9d9d7aed9bf0408d94da0`  
		Last Modified: Sat, 14 Nov 2026 00:18:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4def945bbd2ad8ae32b8fcc8af4da7c4d5a6ddc3d185d052f879eb2b11b5fe9`  
		Last Modified: Sat, 14 Nov 2026 00:18:57 GMT  
		Size: 14.1 MB (14092873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc95a25937d3a8b09d58c683c33cbfde537411109a85a3ab730de78921e7e94`  
		Last Modified: Sat, 14 Nov 2026 00:18:57 GMT  
		Size: 11.6 MB (11559483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc40e3888fe8ead0bbc99d08a7b322d44dffecde2b99b0d5edb18e9aad31826`  
		Last Modified: Thu, 19 Nov 2026 21:44:03 GMT  
		Size: 227.4 KB (227413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b1d2445d5c6db2dd0bc784f415b236cd34170a1f73db65b3c7ff1046a8b55c7`  
		Last Modified: Thu, 19 Nov 2026 21:44:08 GMT  
		Size: 271.3 MB (271250133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2943446ed7f6e327025ab0e5ef7473e7b8608dc39a87a0111903eaadedec4b0f`  
		Last Modified: Thu, 19 Nov 2026 21:44:03 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c3d1b1977822e6f59192e058679e3c481dbf929bcde3fa81811882858945e0a`  
		Last Modified: Thu, 19 Nov 2026 21:44:03 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d9d2af6b68c0312400b9115a022d343070b705a615518fd147d1dcac0e11b0`  
		Last Modified: Thu, 19 Nov 2026 21:36:10 GMT  
		Size: 700.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4.13` - unknown; unknown

```console
$ docker pull geonetwork@sha256:fa1bdae4b731e1efb7a0451c26fa01edb84a5ea7ac95480f857b0aa5e79d8be6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4114891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a6eb5732d9161b9baa8e19c79ad86f7239a48c53e4bae4f0e7e3728a033caf`

```dockerfile
```

-	Layers:
	-	`sha256:7a74071cb538ea5487516c05897e2a78d0f2cb9b2dec5f8e80e24ee56c6889f1`  
		Last Modified: Thu, 19 Nov 2026 21:44:03 GMT  
		Size: 4.1 MB (4089230 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65390210ec99f38521167b02cbe5b0bcad418aca31b3baf99c2e0b0d73566eb0`  
		Last Modified: Thu, 19 Nov 2026 21:44:03 GMT  
		Size: 25.7 KB (25661 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.4.13` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:9907edb875b44f3d16e33d21170faea6a84b485cc5e40ad81a2a41247e666b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.9 MB (389876446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa411186e7ad37c054a8281d273fda914dd0be1d0d05dfeb1e431163ce373fb`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:21:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:21:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:21:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:21:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:21:12 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:21:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:21:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:21:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:21:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 14 Nov 2026 00:12:37 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 14 Nov 2026 00:12:37 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:12:37 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 14 Nov 2026 00:12:37 GMT
WORKDIR /usr/local/tomcat
# Sat, 14 Nov 2026 00:12:37 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:12:37 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:12:37 GMT
ENV TOMCAT_MAJOR=9
# Sat, 14 Nov 2026 00:12:37 GMT
ENV TOMCAT_VERSION=9.0.124
# Sat, 14 Nov 2026 00:12:37 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 00:12:37 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 00:12:47 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:12:47 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 00:12:47 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 00:12:47 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 00:12:47 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:16:40 GMT
ENV DATA_DIR=/catalogue-data
# Thu, 19 Nov 2026 21:16:40 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Thu, 19 Nov 2026 21:16:40 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Thu, 19 Nov 2026 21:16:40 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Thu, 19 Nov 2026 21:16:40 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Thu, 19 Nov 2026 21:16:40 GMT
ENV GN_FILE=geonetwork.war
# Thu, 19 Nov 2026 21:16:40 GMT
ENV GN_VERSION=4.4.13
# Thu, 19 Nov 2026 21:16:40 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Thu, 19 Nov 2026 21:39:05 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Thu, 19 Nov 2026 21:39:05 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Thu, 19 Nov 2026 21:39:05 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Thu, 19 Nov 2026 21:39:05 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Thu, 19 Nov 2026 21:39:05 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Thu, 19 Nov 2026 21:39:05 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:39:05 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b8ee1fba1c12acf3073da6bbf47d7f577b1408c55e995fc155be22719fa83d8`  
		Last Modified: Wed, 11 Nov 2026 23:21:29 GMT  
		Size: 17.0 MB (16978210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27a9f4f9f615ee35c7b8ad02ad452d1b27983a17a69dc782dde91b22507a10c4`  
		Last Modified: Wed, 11 Nov 2026 23:21:30 GMT  
		Size: 45.7 MB (45660541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e29c00c8386154f2b9e54dfdbd83f83cc64156f2479049dbffee054b0442e5`  
		Last Modified: Wed, 11 Nov 2026 23:21:27 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69343d5cc62197a325b3a13f7375e8d850f1b1c91a98ca00679cee6518bfdd03`  
		Last Modified: Wed, 11 Nov 2026 23:21:27 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11e40ccb5aefd553536718b0d1c824169455c26c18175296d01c442db9a3cba9`  
		Last Modified: Sat, 14 Nov 2026 00:12:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359ef4035dd7958968649de7b8c9605f26cfe88b23dbdf9fcb3dfafa3df51044`  
		Last Modified: Sat, 14 Nov 2026 00:12:57 GMT  
		Size: 14.2 MB (14167528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949a232ab28b074571ad31b2e263295876cc1c1b889c4879ad33ba1ca4201765`  
		Last Modified: Sat, 14 Nov 2026 00:12:56 GMT  
		Size: 12.6 MB (12608375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9970aa893d4ece0128f9fcb3b2f0d531f91b8ddd3cc1cb1a26551137087189`  
		Last Modified: Thu, 19 Nov 2026 21:39:28 GMT  
		Size: 239.5 KB (239542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7764a31bf9395677a3ddfb894b2c9c99849f2094bbc55743ec9b0ff888a1a70c`  
		Last Modified: Thu, 19 Nov 2026 21:39:33 GMT  
		Size: 271.3 MB (271250129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c63d264def0a3e7e1f11d16c555ffc4895220d5f93f8390285b131badd28c8`  
		Last Modified: Thu, 19 Nov 2026 21:39:28 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75f8a1c8d12bce079a74649941fc04ac6a7a4554c8c4cda102d382a1d679c6b9`  
		Last Modified: Thu, 19 Nov 2026 21:39:28 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eb263985aa206b97f2132da5ece7268479bb5798357a078a0e816b80ce95175`  
		Last Modified: Thu, 19 Nov 2026 21:39:30 GMT  
		Size: 700.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4.13` - unknown; unknown

```console
$ docker pull geonetwork@sha256:a7856f7c5e00c229c0bf9a4ee698c2d357ef494ab9a972a52a20accb579be044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4112404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec226083612cadd5b3d2cccd132f3f2be9e0163adff3e6584b03c0cb6b9f7ab7`

```dockerfile
```

-	Layers:
	-	`sha256:a5f53edc6224f2f49b6693bbabfddc567852b21e5ad261f1467ddbba6f6c0026`  
		Last Modified: Thu, 19 Nov 2026 21:39:28 GMT  
		Size: 4.1 MB (4086717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e749702664d45ff1b1064fbacd54c18a2b18bf27e8f0379d17bc99b05bbdb355`  
		Last Modified: Thu, 19 Nov 2026 21:39:28 GMT  
		Size: 25.7 KB (25687 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.4.13` - linux; s390x

```console
$ docker pull geonetwork@sha256:16ee6130d139e6e9bab7bded07975b3c513c4921821f68e494fd7dc027c73678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.3 MB (386279324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06abcb3589594fac4a3eceac04532b0cc69ee61b2c2cd15f375b64d506fc744f`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:37:01 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:37:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:37:01 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:37:02 GMT
ADD file:cd6ae236aa13077d423218b776b66e2af298e76f13baa19a6432bfa2416d84e1 in / 
# Tue, 10 Nov 2026 08:37:03 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:14:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:14:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:14:14 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:14:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:14:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:14:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 02:19:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 12 Nov 2026 02:19:26 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 02:19:26 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 12 Nov 2026 02:19:26 GMT
WORKDIR /usr/local/tomcat
# Thu, 12 Nov 2026 02:19:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 02:19:26 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 02:19:26 GMT
ENV TOMCAT_MAJOR=9
# Thu, 12 Nov 2026 02:19:26 GMT
ENV TOMCAT_VERSION=9.0.124
# Thu, 12 Nov 2026 02:19:26 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 01:14:09 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 01:14:15 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 01:14:16 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 01:14:16 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 01:14:16 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 01:14:16 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:13:31 GMT
ENV DATA_DIR=/catalogue-data
# Thu, 19 Nov 2026 21:13:31 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Thu, 19 Nov 2026 21:13:31 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Thu, 19 Nov 2026 21:13:31 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Thu, 19 Nov 2026 21:13:31 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Thu, 19 Nov 2026 21:13:31 GMT
ENV GN_FILE=geonetwork.war
# Thu, 19 Nov 2026 21:13:31 GMT
ENV GN_VERSION=4.4.13
# Thu, 19 Nov 2026 21:13:31 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Thu, 19 Nov 2026 21:33:37 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Thu, 19 Nov 2026 21:33:37 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Thu, 19 Nov 2026 21:33:37 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Thu, 19 Nov 2026 21:33:37 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Thu, 19 Nov 2026 21:33:37 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Thu, 19 Nov 2026 21:33:37 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:33:37 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:bd74e3675913208a1119a54d3789c9fc5c9abdb19b714ce963adc875d0495d64`  
		Last Modified: Wed, 11 Nov 2026 22:58:51 GMT  
		Size: 30.0 MB (29967584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3134634370e311faddec73a586b392392ac4795c1016e6b7ca6269409b4500fa`  
		Last Modified: Wed, 11 Nov 2026 23:14:32 GMT  
		Size: 17.6 MB (17557905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ff515283d5ae2e02461ec9907b96c3acd9c121b5521ff74026772f6a8c20e4`  
		Last Modified: Wed, 11 Nov 2026 23:14:33 GMT  
		Size: 41.0 MB (41030907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592a5fb927d7c9ec87df2dc13efeaf977eb7956b84788dd59e86436f47f72355`  
		Last Modified: Wed, 11 Nov 2026 23:14:32 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a77ef17b74f329b0b19f2787e49b3adefb78e8a7bdac319846911f9224c199d`  
		Last Modified: Wed, 11 Nov 2026 23:14:32 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7877b7fb4767eee2e1e6cac81382aa3591786a19900c17fece144c8bffc7d45b`  
		Last Modified: Thu, 12 Nov 2026 02:20:08 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e598fbc3d56b856cd86f7da9e4e5d5645b59d636214eec0235e3671520b3f5f`  
		Last Modified: Sat, 14 Nov 2026 01:14:28 GMT  
		Size: 14.2 MB (14166859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e06e7dda18e23b55072f6dcbf042ccd9894a44a58b4d2a235c96fdb2cb3426c`  
		Last Modified: Sat, 14 Nov 2026 01:14:28 GMT  
		Size: 12.0 MB (12047742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762e12cb0640c3ee391bf2b1391270e000e5c4b91e70ec9ac172ea219b428da1`  
		Last Modified: Thu, 19 Nov 2026 21:34:06 GMT  
		Size: 251.3 KB (251333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be097f2dbc25b96a9982715cf600bc972d7cfc23f86dfafec70fd4933b739aa9`  
		Last Modified: Thu, 19 Nov 2026 21:34:10 GMT  
		Size: 271.3 MB (271250133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b198bc4423367992163ec443504792aab505b988a5d01e6936e0136c3e34b8b4`  
		Last Modified: Thu, 19 Nov 2026 21:34:06 GMT  
		Size: 323.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990c5e9079f8ed4dc82f2557034ed8e9484e57292774d510d53ed23324e17fcd`  
		Last Modified: Thu, 19 Nov 2026 21:34:06 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9ad768a1178da2b92250fed021ecf7845a30fded30f64547dc72497ffa2924`  
		Last Modified: Thu, 19 Nov 2026 21:34:07 GMT  
		Size: 700.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4.13` - unknown; unknown

```console
$ docker pull geonetwork@sha256:01fa8e3503581fbf91c5e7037e7145efd61c8f553ef2ea84585c2ed50e6fd3c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4112154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff21acd84cc160028b092273775d1dae0f90f8ff5a34b4159636a5fe93fb9ec`

```dockerfile
```

-	Layers:
	-	`sha256:35508af884417a6595b0045181f9fa6c6f30637d19e6a73aadbdbc9d77d7225c`  
		Last Modified: Thu, 19 Nov 2026 21:34:06 GMT  
		Size: 4.1 MB (4086586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a8ffc84975c5e8c38e0c54b05e9d495d0e0e9a29cbc5269844de8f0710993a1`  
		Last Modified: Thu, 19 Nov 2026 21:34:06 GMT  
		Size: 25.6 KB (25568 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:latest`

```console
$ docker pull geonetwork@sha256:27bfa7e826d12936f405de4bf1dfeb3e76f84bc146315a120bc3e43473a29755
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
$ docker pull geonetwork@sha256:d02b7e6a9b294abfea5d041a9b6d18d50a757fc74fe70cc7250791dae73cace1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.6 MB (392612653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990ec420fd5950d4244097002ddbd5212c1e6cfc7598c913ebcc6a783e853faa`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:17:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:17:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:17:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:17:08 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:17:08 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:17:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:17:11 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:17:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:17:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 14 Nov 2026 00:11:54 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 14 Nov 2026 00:11:54 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:11:54 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 14 Nov 2026 00:11:54 GMT
WORKDIR /usr/local/tomcat
# Sat, 14 Nov 2026 00:11:54 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:11:54 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:11:54 GMT
ENV TOMCAT_MAJOR=9
# Sat, 14 Nov 2026 00:11:54 GMT
ENV TOMCAT_VERSION=9.0.124
# Sat, 14 Nov 2026 00:11:54 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 00:11:55 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 00:12:05 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:12:06 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 00:12:06 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 00:12:06 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 00:12:06 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:16:17 GMT
ENV DATA_DIR=/catalogue-data
# Thu, 19 Nov 2026 21:16:17 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Thu, 19 Nov 2026 21:16:17 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Thu, 19 Nov 2026 21:16:17 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Thu, 19 Nov 2026 21:16:17 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Thu, 19 Nov 2026 21:16:17 GMT
ENV GN_FILE=geonetwork.war
# Thu, 19 Nov 2026 21:16:17 GMT
ENV GN_VERSION=4.4.13
# Thu, 19 Nov 2026 21:16:17 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Thu, 19 Nov 2026 21:35:46 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Thu, 19 Nov 2026 21:35:46 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Thu, 19 Nov 2026 21:35:46 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Thu, 19 Nov 2026 21:35:46 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Thu, 19 Nov 2026 21:35:46 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Thu, 19 Nov 2026 21:35:46 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:35:46 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16af2eba9bc8d0bb382ac128542967e0244e4149a5167346a3609b5c02250eb7`  
		Last Modified: Wed, 11 Nov 2026 23:17:25 GMT  
		Size: 17.0 MB (16968781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd5ffe3a8573849a46c62104d066d9a0238288b3722be90c7996fd183deaa38`  
		Last Modified: Wed, 11 Nov 2026 23:17:26 GMT  
		Size: 47.4 MB (47351616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e6810092226afebad4d044648bcbf7fdd2e52e37220e0ae2da3d595e3b09b23`  
		Last Modified: Wed, 11 Nov 2026 23:17:24 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72f525a27ee971f5f3a289935521db1283b5b80178d66ecf1b1a96d4401a0d4e`  
		Last Modified: Wed, 11 Nov 2026 23:17:24 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41498c12cf0417c842aba99cb7155199a723d43f2c70a87d204863fe6145f14`  
		Last Modified: Sat, 14 Nov 2026 00:12:15 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58248d56c2b6e9f16378817be0738c172d9493057daab7509eab9e0646d2e635`  
		Last Modified: Sat, 14 Nov 2026 00:12:16 GMT  
		Size: 14.2 MB (14157817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e28344dd525698dba8f79bc6cd1b0a70c9e383313ef90d75f10a3284d4e91bb`  
		Last Modified: Sat, 14 Nov 2026 00:12:16 GMT  
		Size: 12.8 MB (12844041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a1c5f454a186f79039a9549b8610b635dd51b4b233bd47a9fe3dadabea1373`  
		Last Modified: Thu, 19 Nov 2026 21:36:09 GMT  
		Size: 240.2 KB (240225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacf4d888deaed6f61be4fe7b01ea0f23d33895f1a6a2db52278ba49fb2877eb`  
		Last Modified: Thu, 19 Nov 2026 21:36:14 GMT  
		Size: 271.3 MB (271250089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05663daffb6daea9800730fd788423a363b465441f94908c981483d7f50e700`  
		Last Modified: Thu, 19 Nov 2026 21:36:09 GMT  
		Size: 323.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0354c4bcae5377b092d064f98104fe9c1ad0d2c22d2de9f00029ac00d71db1c`  
		Last Modified: Thu, 19 Nov 2026 21:36:09 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d9d2af6b68c0312400b9115a022d343070b705a615518fd147d1dcac0e11b0`  
		Last Modified: Thu, 19 Nov 2026 21:36:10 GMT  
		Size: 700.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:11291f5cd5faeff6f78a3a5522c2751391f0bb0af6c231bcb1916dd0a0aee663
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4111191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06315bda5f2404cfd18af9dc6ebdb252731288dcd94a485b796e99b52c4c3f7d`

```dockerfile
```

-	Layers:
	-	`sha256:a748bc7585cc5a15bf1ef922e773c44b3b2cf71d21c0bd1707a05456a14f696d`  
		Last Modified: Thu, 19 Nov 2026 21:36:09 GMT  
		Size: 4.1 MB (4085623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be2c9d1e3375076ed50e1f5d184b907de51741b138863a6410fbbf70d29a5dda`  
		Last Modified: Thu, 19 Nov 2026 21:36:09 GMT  
		Size: 25.6 KB (25568 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:latest` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:e901b31c2431abb81b9420d0f61cd9cb56fdb92c5c5bc934f80c01ce188d0c04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.8 MB (385811484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90a6f09147fbddfc311bc796d25ec6507bde8ef46da07d58bb26f0da8c6f29fb`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:23 GMT
ADD file:3cbbfb6c4f8e63d9999d351c6c7c50b4ce512c57a42bc2c5bc2da9cb561f6eed in / 
# Tue, 10 Nov 2026 08:36:24 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:20:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:20:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:20:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:20:08 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:20:08 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:20:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:20:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:20:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:20:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 14 Nov 2026 00:18:35 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 14 Nov 2026 00:18:35 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:18:35 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 14 Nov 2026 00:18:36 GMT
WORKDIR /usr/local/tomcat
# Sat, 14 Nov 2026 00:18:36 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:18:36 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:18:36 GMT
ENV TOMCAT_MAJOR=9
# Sat, 14 Nov 2026 00:18:36 GMT
ENV TOMCAT_VERSION=9.0.124
# Sat, 14 Nov 2026 00:18:36 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 00:18:36 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 00:18:47 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:18:47 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 00:18:47 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 00:18:47 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 00:18:47 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:16:16 GMT
ENV DATA_DIR=/catalogue-data
# Thu, 19 Nov 2026 21:16:16 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Thu, 19 Nov 2026 21:16:16 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Thu, 19 Nov 2026 21:16:16 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Thu, 19 Nov 2026 21:16:16 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Thu, 19 Nov 2026 21:16:16 GMT
ENV GN_FILE=geonetwork.war
# Thu, 19 Nov 2026 21:16:16 GMT
ENV GN_VERSION=4.4.13
# Thu, 19 Nov 2026 21:16:16 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Thu, 19 Nov 2026 21:43:40 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Thu, 19 Nov 2026 21:43:40 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Thu, 19 Nov 2026 21:43:40 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Thu, 19 Nov 2026 21:43:40 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Thu, 19 Nov 2026 21:43:40 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Thu, 19 Nov 2026 21:43:40 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:43:40 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:c9ad55dde9ad5376b797faf6b6dd0caa61cff4a20a14ef03107c1e7fdc9113f0`  
		Last Modified: Wed, 11 Nov 2026 22:58:50 GMT  
		Size: 26.9 MB (26922008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed87f1d1727d0a3f93c75bce8c653db033c37e594c09db775ed5b959255b21c`  
		Last Modified: Wed, 11 Nov 2026 23:20:25 GMT  
		Size: 16.3 MB (16286314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5c7891017fcdfb7dd39ceffa3b7b6c6a167eda225a9411c8a03b890de0a8ce`  
		Last Modified: Wed, 11 Nov 2026 23:20:25 GMT  
		Size: 45.5 MB (45466398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad523630c28f4419d6418ce660b7305412872a43393029d248023f7fb92ac7ec`  
		Last Modified: Wed, 11 Nov 2026 23:20:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0152dfff9dc349392c57ca1601fcf39a6cba2f021f90771cb3504b23b246ac20`  
		Last Modified: Wed, 11 Nov 2026 23:20:24 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c977dc1ad0856baeae55a5c4386ab9ea86952337c9d9d7aed9bf0408d94da0`  
		Last Modified: Sat, 14 Nov 2026 00:18:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4def945bbd2ad8ae32b8fcc8af4da7c4d5a6ddc3d185d052f879eb2b11b5fe9`  
		Last Modified: Sat, 14 Nov 2026 00:18:57 GMT  
		Size: 14.1 MB (14092873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc95a25937d3a8b09d58c683c33cbfde537411109a85a3ab730de78921e7e94`  
		Last Modified: Sat, 14 Nov 2026 00:18:57 GMT  
		Size: 11.6 MB (11559483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc40e3888fe8ead0bbc99d08a7b322d44dffecde2b99b0d5edb18e9aad31826`  
		Last Modified: Thu, 19 Nov 2026 21:44:03 GMT  
		Size: 227.4 KB (227413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b1d2445d5c6db2dd0bc784f415b236cd34170a1f73db65b3c7ff1046a8b55c7`  
		Last Modified: Thu, 19 Nov 2026 21:44:08 GMT  
		Size: 271.3 MB (271250133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2943446ed7f6e327025ab0e5ef7473e7b8608dc39a87a0111903eaadedec4b0f`  
		Last Modified: Thu, 19 Nov 2026 21:44:03 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c3d1b1977822e6f59192e058679e3c481dbf929bcde3fa81811882858945e0a`  
		Last Modified: Thu, 19 Nov 2026 21:44:03 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d9d2af6b68c0312400b9115a022d343070b705a615518fd147d1dcac0e11b0`  
		Last Modified: Thu, 19 Nov 2026 21:36:10 GMT  
		Size: 700.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:fa1bdae4b731e1efb7a0451c26fa01edb84a5ea7ac95480f857b0aa5e79d8be6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4114891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a6eb5732d9161b9baa8e19c79ad86f7239a48c53e4bae4f0e7e3728a033caf`

```dockerfile
```

-	Layers:
	-	`sha256:7a74071cb538ea5487516c05897e2a78d0f2cb9b2dec5f8e80e24ee56c6889f1`  
		Last Modified: Thu, 19 Nov 2026 21:44:03 GMT  
		Size: 4.1 MB (4089230 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65390210ec99f38521167b02cbe5b0bcad418aca31b3baf99c2e0b0d73566eb0`  
		Last Modified: Thu, 19 Nov 2026 21:44:03 GMT  
		Size: 25.7 KB (25661 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:latest` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:9907edb875b44f3d16e33d21170faea6a84b485cc5e40ad81a2a41247e666b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.9 MB (389876446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa411186e7ad37c054a8281d273fda914dd0be1d0d05dfeb1e431163ce373fb`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:21:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:21:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:21:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:21:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:21:12 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:21:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:21:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:21:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:21:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 14 Nov 2026 00:12:37 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 14 Nov 2026 00:12:37 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:12:37 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 14 Nov 2026 00:12:37 GMT
WORKDIR /usr/local/tomcat
# Sat, 14 Nov 2026 00:12:37 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:12:37 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:12:37 GMT
ENV TOMCAT_MAJOR=9
# Sat, 14 Nov 2026 00:12:37 GMT
ENV TOMCAT_VERSION=9.0.124
# Sat, 14 Nov 2026 00:12:37 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 00:12:37 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 00:12:47 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:12:47 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 00:12:47 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 00:12:47 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 00:12:47 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:16:40 GMT
ENV DATA_DIR=/catalogue-data
# Thu, 19 Nov 2026 21:16:40 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Thu, 19 Nov 2026 21:16:40 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Thu, 19 Nov 2026 21:16:40 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Thu, 19 Nov 2026 21:16:40 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Thu, 19 Nov 2026 21:16:40 GMT
ENV GN_FILE=geonetwork.war
# Thu, 19 Nov 2026 21:16:40 GMT
ENV GN_VERSION=4.4.13
# Thu, 19 Nov 2026 21:16:40 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Thu, 19 Nov 2026 21:39:05 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Thu, 19 Nov 2026 21:39:05 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Thu, 19 Nov 2026 21:39:05 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Thu, 19 Nov 2026 21:39:05 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Thu, 19 Nov 2026 21:39:05 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Thu, 19 Nov 2026 21:39:05 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:39:05 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b8ee1fba1c12acf3073da6bbf47d7f577b1408c55e995fc155be22719fa83d8`  
		Last Modified: Wed, 11 Nov 2026 23:21:29 GMT  
		Size: 17.0 MB (16978210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27a9f4f9f615ee35c7b8ad02ad452d1b27983a17a69dc782dde91b22507a10c4`  
		Last Modified: Wed, 11 Nov 2026 23:21:30 GMT  
		Size: 45.7 MB (45660541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e29c00c8386154f2b9e54dfdbd83f83cc64156f2479049dbffee054b0442e5`  
		Last Modified: Wed, 11 Nov 2026 23:21:27 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69343d5cc62197a325b3a13f7375e8d850f1b1c91a98ca00679cee6518bfdd03`  
		Last Modified: Wed, 11 Nov 2026 23:21:27 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11e40ccb5aefd553536718b0d1c824169455c26c18175296d01c442db9a3cba9`  
		Last Modified: Sat, 14 Nov 2026 00:12:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359ef4035dd7958968649de7b8c9605f26cfe88b23dbdf9fcb3dfafa3df51044`  
		Last Modified: Sat, 14 Nov 2026 00:12:57 GMT  
		Size: 14.2 MB (14167528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949a232ab28b074571ad31b2e263295876cc1c1b889c4879ad33ba1ca4201765`  
		Last Modified: Sat, 14 Nov 2026 00:12:56 GMT  
		Size: 12.6 MB (12608375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9970aa893d4ece0128f9fcb3b2f0d531f91b8ddd3cc1cb1a26551137087189`  
		Last Modified: Thu, 19 Nov 2026 21:39:28 GMT  
		Size: 239.5 KB (239542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7764a31bf9395677a3ddfb894b2c9c99849f2094bbc55743ec9b0ff888a1a70c`  
		Last Modified: Thu, 19 Nov 2026 21:39:33 GMT  
		Size: 271.3 MB (271250129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c63d264def0a3e7e1f11d16c555ffc4895220d5f93f8390285b131badd28c8`  
		Last Modified: Thu, 19 Nov 2026 21:39:28 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75f8a1c8d12bce079a74649941fc04ac6a7a4554c8c4cda102d382a1d679c6b9`  
		Last Modified: Thu, 19 Nov 2026 21:39:28 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eb263985aa206b97f2132da5ece7268479bb5798357a078a0e816b80ce95175`  
		Last Modified: Thu, 19 Nov 2026 21:39:30 GMT  
		Size: 700.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:a7856f7c5e00c229c0bf9a4ee698c2d357ef494ab9a972a52a20accb579be044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4112404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec226083612cadd5b3d2cccd132f3f2be9e0163adff3e6584b03c0cb6b9f7ab7`

```dockerfile
```

-	Layers:
	-	`sha256:a5f53edc6224f2f49b6693bbabfddc567852b21e5ad261f1467ddbba6f6c0026`  
		Last Modified: Thu, 19 Nov 2026 21:39:28 GMT  
		Size: 4.1 MB (4086717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e749702664d45ff1b1064fbacd54c18a2b18bf27e8f0379d17bc99b05bbdb355`  
		Last Modified: Thu, 19 Nov 2026 21:39:28 GMT  
		Size: 25.7 KB (25687 bytes)  
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
$ docker pull geonetwork@sha256:16ee6130d139e6e9bab7bded07975b3c513c4921821f68e494fd7dc027c73678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.3 MB (386279324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06abcb3589594fac4a3eceac04532b0cc69ee61b2c2cd15f375b64d506fc744f`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:37:01 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:37:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:37:01 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:37:02 GMT
ADD file:cd6ae236aa13077d423218b776b66e2af298e76f13baa19a6432bfa2416d84e1 in / 
# Tue, 10 Nov 2026 08:37:03 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:14:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:14:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:14:14 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:14:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:14:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:14:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 02:19:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 12 Nov 2026 02:19:26 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 02:19:26 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 12 Nov 2026 02:19:26 GMT
WORKDIR /usr/local/tomcat
# Thu, 12 Nov 2026 02:19:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 02:19:26 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 02:19:26 GMT
ENV TOMCAT_MAJOR=9
# Thu, 12 Nov 2026 02:19:26 GMT
ENV TOMCAT_VERSION=9.0.124
# Thu, 12 Nov 2026 02:19:26 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 01:14:09 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 01:14:15 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 01:14:16 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 01:14:16 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 01:14:16 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 01:14:16 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:13:31 GMT
ENV DATA_DIR=/catalogue-data
# Thu, 19 Nov 2026 21:13:31 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Thu, 19 Nov 2026 21:13:31 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Thu, 19 Nov 2026 21:13:31 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Thu, 19 Nov 2026 21:13:31 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Thu, 19 Nov 2026 21:13:31 GMT
ENV GN_FILE=geonetwork.war
# Thu, 19 Nov 2026 21:13:31 GMT
ENV GN_VERSION=4.4.13
# Thu, 19 Nov 2026 21:13:31 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Thu, 19 Nov 2026 21:33:37 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Thu, 19 Nov 2026 21:33:37 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Thu, 19 Nov 2026 21:33:37 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Thu, 19 Nov 2026 21:33:37 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Thu, 19 Nov 2026 21:33:37 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Thu, 19 Nov 2026 21:33:37 GMT
CMD ["catalina.sh" "run"]
# Thu, 19 Nov 2026 21:33:37 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:bd74e3675913208a1119a54d3789c9fc5c9abdb19b714ce963adc875d0495d64`  
		Last Modified: Wed, 11 Nov 2026 22:58:51 GMT  
		Size: 30.0 MB (29967584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3134634370e311faddec73a586b392392ac4795c1016e6b7ca6269409b4500fa`  
		Last Modified: Wed, 11 Nov 2026 23:14:32 GMT  
		Size: 17.6 MB (17557905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ff515283d5ae2e02461ec9907b96c3acd9c121b5521ff74026772f6a8c20e4`  
		Last Modified: Wed, 11 Nov 2026 23:14:33 GMT  
		Size: 41.0 MB (41030907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592a5fb927d7c9ec87df2dc13efeaf977eb7956b84788dd59e86436f47f72355`  
		Last Modified: Wed, 11 Nov 2026 23:14:32 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a77ef17b74f329b0b19f2787e49b3adefb78e8a7bdac319846911f9224c199d`  
		Last Modified: Wed, 11 Nov 2026 23:14:32 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7877b7fb4767eee2e1e6cac81382aa3591786a19900c17fece144c8bffc7d45b`  
		Last Modified: Thu, 12 Nov 2026 02:20:08 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e598fbc3d56b856cd86f7da9e4e5d5645b59d636214eec0235e3671520b3f5f`  
		Last Modified: Sat, 14 Nov 2026 01:14:28 GMT  
		Size: 14.2 MB (14166859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e06e7dda18e23b55072f6dcbf042ccd9894a44a58b4d2a235c96fdb2cb3426c`  
		Last Modified: Sat, 14 Nov 2026 01:14:28 GMT  
		Size: 12.0 MB (12047742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762e12cb0640c3ee391bf2b1391270e000e5c4b91e70ec9ac172ea219b428da1`  
		Last Modified: Thu, 19 Nov 2026 21:34:06 GMT  
		Size: 251.3 KB (251333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be097f2dbc25b96a9982715cf600bc972d7cfc23f86dfafec70fd4933b739aa9`  
		Last Modified: Thu, 19 Nov 2026 21:34:10 GMT  
		Size: 271.3 MB (271250133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b198bc4423367992163ec443504792aab505b988a5d01e6936e0136c3e34b8b4`  
		Last Modified: Thu, 19 Nov 2026 21:34:06 GMT  
		Size: 323.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990c5e9079f8ed4dc82f2557034ed8e9484e57292774d510d53ed23324e17fcd`  
		Last Modified: Thu, 19 Nov 2026 21:34:06 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9ad768a1178da2b92250fed021ecf7845a30fded30f64547dc72497ffa2924`  
		Last Modified: Thu, 19 Nov 2026 21:34:07 GMT  
		Size: 700.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:01fa8e3503581fbf91c5e7037e7145efd61c8f553ef2ea84585c2ed50e6fd3c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4112154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff21acd84cc160028b092273775d1dae0f90f8ff5a34b4159636a5fe93fb9ec`

```dockerfile
```

-	Layers:
	-	`sha256:35508af884417a6595b0045181f9fa6c6f30637d19e6a73aadbdbc9d77d7225c`  
		Last Modified: Thu, 19 Nov 2026 21:34:06 GMT  
		Size: 4.1 MB (4086586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a8ffc84975c5e8c38e0c54b05e9d495d0e0e9a29cbc5269844de8f0710993a1`  
		Last Modified: Thu, 19 Nov 2026 21:34:06 GMT  
		Size: 25.6 KB (25568 bytes)  
		MIME: application/vnd.in-toto+json
