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
$ docker pull geonetwork@sha256:596e6ed085e8b148deb3b4287325dd1b957ed420b868889d9d69d0c58fd3c66f
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

### `geonetwork:4` - unknown; unknown

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

### `geonetwork:4` - linux; arm variant v7

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

### `geonetwork:4` - unknown; unknown

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

### `geonetwork:4` - linux; arm64 variant v8

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

### `geonetwork:4` - unknown; unknown

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

### `geonetwork:4` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:8122bcd140b1f064f4a09fd612f10a2485a47298a982dd9a78f1d962e7f6c957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.4 MB (388413830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a748f1f3a3070859713097f2dede0722c2e5908eaee78771a2ef07a46e683701`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:22:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:22:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:22:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:22:43 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:22:43 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 20 Nov 2026 03:23:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:23:50 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:23:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 07:09:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 20 Nov 2026 07:09:25 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 07:09:25 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 20 Nov 2026 07:09:26 GMT
WORKDIR /usr/local/tomcat
# Fri, 20 Nov 2026 07:09:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 07:09:26 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 07:09:26 GMT
ENV TOMCAT_MAJOR=9
# Fri, 20 Nov 2026 07:09:26 GMT
ENV TOMCAT_VERSION=9.0.124
# Fri, 20 Nov 2026 07:09:26 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Fri, 20 Nov 2026 07:11:08 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 20 Nov 2026 07:11:15 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 07:11:17 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 20 Nov 2026 07:11:17 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 20 Nov 2026 07:11:17 GMT
ENTRYPOINT []
# Fri, 20 Nov 2026 07:11:17 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 08:47:16 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 20 Nov 2026 08:47:16 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Fri, 20 Nov 2026 08:47:16 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Fri, 20 Nov 2026 08:47:16 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Fri, 20 Nov 2026 08:47:16 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Fri, 20 Nov 2026 08:47:16 GMT
ENV GN_FILE=geonetwork.war
# Fri, 20 Nov 2026 08:47:16 GMT
ENV GN_VERSION=4.4.13
# Fri, 20 Nov 2026 08:47:16 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Fri, 20 Nov 2026 09:01:52 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 20 Nov 2026 09:01:52 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Fri, 20 Nov 2026 09:01:53 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 20 Nov 2026 09:01:53 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 09:01:53 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 20 Nov 2026 09:01:53 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 09:01:53 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ebaa1e7b750c6d8a6862f3d311b4d62adccafbcc2e1d7c53d1e1cc58d69abc`  
		Last Modified: Fri, 20 Nov 2026 03:23:15 GMT  
		Size: 25.7 MB (25655366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3c7638f3451bf92f17ae06665e753513f647575b56da597b4a2d304e269297c`  
		Last Modified: Fri, 20 Nov 2026 03:24:30 GMT  
		Size: 42.4 MB (42373237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:455d8a4214fb8157c0624722d79f9188450bed2904bdbb542fa7625eb8611a81`  
		Last Modified: Fri, 20 Nov 2026 03:24:29 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d6184d6573255b7b6aacf3b1d9f2d2a077fd5b53a2aa47048a042fe8fd3efd`  
		Last Modified: Fri, 20 Nov 2026 03:24:29 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9533a0d1e95bec4f6ba979c7285d412f232d0494e0b6f18ad915755f9e356c`  
		Last Modified: Fri, 20 Nov 2026 07:10:03 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4451e90df96bfcfcbb70fe179901d06c67cd1e7984f67f164ac00a566f3ffc6`  
		Last Modified: Fri, 20 Nov 2026 07:11:38 GMT  
		Size: 14.2 MB (14194549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b3a0f2580ea7b031af32bf26378894762d53e2464b935677884b10b747656e`  
		Last Modified: Fri, 20 Nov 2026 07:11:37 GMT  
		Size: 257.3 KB (257251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c4f2fc63704c6fb276974d1369ebcac04d381a8743ae2dcafefb5882cfb690`  
		Last Modified: Fri, 20 Nov 2026 09:03:06 GMT  
		Size: 270.2 KB (270244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:463f579d0ba3c531362e27e520acb9fbe386926ea2263f578b28c2038bcbddcc`  
		Last Modified: Fri, 20 Nov 2026 09:03:12 GMT  
		Size: 271.3 MB (271250086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e04cbd346d2359b015c97f7d67eaba1d00b959a94d22fecab4fe5beb080563`  
		Last Modified: Fri, 20 Nov 2026 09:03:06 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3b24c50d9f22d0ac140c35035fb90e206f853728e5ff41a0c0ce0bf4b662fb6`  
		Last Modified: Fri, 20 Nov 2026 09:03:06 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf2da0983823bdea97a2499f1831a868ad21d8076cb5471c93d87d7c651753c`  
		Last Modified: Fri, 20 Nov 2026 09:03:07 GMT  
		Size: 697.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:3358775e3589b3afacd173cb9504564da221395c0de3e3023fe639e41699a9e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4114066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b8012acc6d92abf12838498db1a0c446c219bbbbc72503c07dab93c16a11f57`

```dockerfile
```

-	Layers:
	-	`sha256:265a32f35efd9b2f68011d03b65b8debed4b9042d8065d10ba78a229c3a8ef0e`  
		Last Modified: Fri, 20 Nov 2026 09:03:06 GMT  
		Size: 4.1 MB (4088464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e886402860078d73807367a6b14ddc6dcc85228a59f36b9c1b77c895bad35100`  
		Last Modified: Fri, 20 Nov 2026 09:03:06 GMT  
		Size: 25.6 KB (25602 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4` - linux; s390x

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

### `geonetwork:4` - unknown; unknown

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

## `geonetwork:4.2`

```console
$ docker pull geonetwork@sha256:64b2fd10811e496ad49f013b39e1674587354c6e315ec5a4604f932b0dd0edb0
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
$ docker pull geonetwork@sha256:e44b52be6c02d33d7086d9fce78fe2180bdeb996da65c4bf641e4ebf52f1faae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.0 MB (383018802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2f5464b8c4fcc25a15e005934b74b77b13951876860f7f1b9e56035c2548a0`
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
# Fri, 20 Nov 2026 03:15:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:15:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:15:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:15:43 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:15:43 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Fri, 20 Nov 2026 03:15:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='bbe01d0683d3dcdd0bbdcc568d3d9123f719a4fa390208b3fe1ca6e1ef083923';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 20 Nov 2026 03:15:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:15:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:15:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 05:23:28 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 20 Nov 2026 05:23:28 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 05:23:28 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 20 Nov 2026 05:23:28 GMT
WORKDIR /usr/local/tomcat
# Fri, 20 Nov 2026 05:23:28 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 05:23:28 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 05:23:28 GMT
ENV TOMCAT_MAJOR=9
# Fri, 20 Nov 2026 05:23:28 GMT
ENV TOMCAT_VERSION=9.0.124
# Fri, 20 Nov 2026 05:23:28 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Fri, 20 Nov 2026 05:23:28 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 20 Nov 2026 05:23:31 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:23:32 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 20 Nov 2026 05:23:32 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 20 Nov 2026 05:23:32 GMT
ENTRYPOINT []
# Fri, 20 Nov 2026 05:23:32 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 06:09:31 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 20 Nov 2026 06:09:31 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Fri, 20 Nov 2026 06:09:31 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Fri, 20 Nov 2026 06:09:31 GMT
ENV GN_FILE=geonetwork.war
# Fri, 20 Nov 2026 06:09:31 GMT
ENV GN_VERSION=4.2.18
# Fri, 20 Nov 2026 06:09:31 GMT
ENV GN_DOWNLOAD_SHA256=4c846214fafcc681603a3c65b2248cce60f3283a74bd6a0e0aa2a216dacd87d3
# Fri, 20 Nov 2026 06:14:05 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 20 Nov 2026 06:14:05 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 20 Nov 2026 06:14:05 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:14:05 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 20 Nov 2026 06:14:05 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 06:14:05 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8e337d7d84ee4d44437ff40b4f5a73375286f79f9924180ec8de17e8c75f2a`  
		Last Modified: Fri, 20 Nov 2026 03:15:57 GMT  
		Size: 23.1 MB (23065080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efac8b0d73718df3ebe08725cd4122e7824a345b94be5be06a707f5dc31f6cf6`  
		Last Modified: Fri, 20 Nov 2026 03:15:58 GMT  
		Size: 42.4 MB (42351665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ca4ed6f9759d11e0cfdcbc2f2a4987554b914b5e065a1f6ecf65fddac6c19eb`  
		Last Modified: Fri, 20 Nov 2026 03:15:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8d7716c0c03d6b28e4539f979e585114b6597efce2ccbf9dd29974ca2334093`  
		Last Modified: Fri, 20 Nov 2026 03:15:57 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e301bdb7da732f06b2c31a1176ebf570ec289fb9415afe6a53a2ee9a9288f8c`  
		Last Modified: Fri, 20 Nov 2026 05:23:39 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9660cf015cfbc924b2066b7bf96902df3ee49c9c805b0d022079a1cccae17658`  
		Last Modified: Fri, 20 Nov 2026 05:23:40 GMT  
		Size: 14.2 MB (14156934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97bb01232fc9977ea9d92daeec19fda641638b58de75c3a48997da34d71d95d`  
		Last Modified: Fri, 20 Nov 2026 05:23:39 GMT  
		Size: 225.5 KB (225519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279eaf092e93bb614213990fdadd3af54bcac15e7fd5b246054f7d688379778b`  
		Last Modified: Fri, 20 Nov 2026 06:14:29 GMT  
		Size: 239.7 KB (239749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c98746a1e368ca30f7b924781e3fd16a84f946ece6491616905d2ba44a0ec345`  
		Last Modified: Fri, 20 Nov 2026 06:14:34 GMT  
		Size: 273.2 MB (273181266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f80233e79cc66f507724d9ba44f98b08110c79a12cb0295c040bd07d0bc533`  
		Last Modified: Fri, 20 Nov 2026 06:14:29 GMT  
		Size: 1.5 KB (1500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7463b5a8ccdb5e47b25d5282eed5cbe4517d592cb6c2df57f6481e03a14ff33`  
		Last Modified: Fri, 20 Nov 2026 06:14:29 GMT  
		Size: 999.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2` - unknown; unknown

```console
$ docker pull geonetwork@sha256:697b9d9f12e04bbc9af51528048097bc2a0022053d312ec73311553eea839d90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4194169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d55642786e12899666fd51187c3da8f8ee7d85caed1ebac57599d8d056ca5786`

```dockerfile
```

-	Layers:
	-	`sha256:0a33b87dc30fa942eb3fb58a173c987b8cc791e1df6e7be8321574dc9c6d654e`  
		Last Modified: Fri, 20 Nov 2026 06:14:29 GMT  
		Size: 4.2 MB (4172364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71a72447c3af8e5355964c8180eb77123870da6bed417d910f4cdaafc81ef961`  
		Last Modified: Fri, 20 Nov 2026 06:14:28 GMT  
		Size: 21.8 KB (21805 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.2` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:5538323b183928cfa1d697ccd3b540f09b3a380653be01ed8659bba73fca24e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.5 MB (375540147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9675a68dd4da36b0bec8ce6dd148029446cd79ea115df64dca09d675bb82b6f`
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
# Fri, 20 Nov 2026 03:10:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:10:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:10:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:49 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Fri, 20 Nov 2026 03:10:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='bbe01d0683d3dcdd0bbdcc568d3d9123f719a4fa390208b3fe1ca6e1ef083923';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 20 Nov 2026 03:10:56 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:10:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 05:15:08 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 20 Nov 2026 05:15:08 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 05:15:08 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 20 Nov 2026 05:15:08 GMT
WORKDIR /usr/local/tomcat
# Fri, 20 Nov 2026 05:15:08 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 05:15:08 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 05:15:08 GMT
ENV TOMCAT_MAJOR=9
# Fri, 20 Nov 2026 05:15:08 GMT
ENV TOMCAT_VERSION=9.0.124
# Fri, 20 Nov 2026 05:15:08 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Fri, 20 Nov 2026 05:15:08 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 20 Nov 2026 05:15:12 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:15:13 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 20 Nov 2026 05:15:13 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 20 Nov 2026 05:15:13 GMT
ENTRYPOINT []
# Fri, 20 Nov 2026 05:15:13 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 06:10:36 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 20 Nov 2026 06:10:36 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Fri, 20 Nov 2026 06:10:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Fri, 20 Nov 2026 06:10:36 GMT
ENV GN_FILE=geonetwork.war
# Fri, 20 Nov 2026 06:10:36 GMT
ENV GN_VERSION=4.2.18
# Fri, 20 Nov 2026 06:10:36 GMT
ENV GN_DOWNLOAD_SHA256=4c846214fafcc681603a3c65b2248cce60f3283a74bd6a0e0aa2a216dacd87d3
# Fri, 20 Nov 2026 06:15:40 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 20 Nov 2026 06:15:40 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 20 Nov 2026 06:15:40 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:15:40 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 20 Nov 2026 06:15:40 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 06:15:40 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:791147b088b7508116b0b388cfcf00e16fa77f527003abee70726bcdb34b8248`  
		Last Modified: Tue, 10 Nov 2026 20:09:32 GMT  
		Size: 26.9 MB (26921983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78248ab6e92868c3b4c3a483afcfba973db624498607ba5e797de15a3fc2e5f7`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 21.1 MB (21124416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf6e767f8b8bb3a24541d686eb70d3513cea2a3defda585352d3acaeed7abec0`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 39.8 MB (39790806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4b3bee31afaad99e6796633952b12be78b9f653af813cba991d3c4f31d98602`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e7097901dfbe2ff8dae9b42573647184475eff147a42a36285a9e5c7fb0287b`  
		Last Modified: Fri, 20 Nov 2026 03:10:57 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7130103037036b3ce7ec5fe5e64b9128bf2a2e9cdd15176efe23346501e5ac26`  
		Last Modified: Fri, 20 Nov 2026 05:15:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0793527f3e15cee5df4a05a2f57e5c4e45720a1009738937ff7c33b6afd3ddcc`  
		Last Modified: Fri, 20 Nov 2026 05:15:21 GMT  
		Size: 14.1 MB (14091830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb16f2d8fdafbdd4c75a3bbd6b88ded47c476d90c5e9dc226939dac5ce26219c`  
		Last Modified: Fri, 20 Nov 2026 05:15:21 GMT  
		Size: 197.3 KB (197287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628dbf91dbaf8401ac39bb222674ca38d3ffd84f98917f621deb5ff4781fa82c`  
		Last Modified: Fri, 20 Nov 2026 06:16:03 GMT  
		Size: 227.3 KB (227253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db4c2960f29929eb3aed553444afb4d651b3b7937d788619e0bee7260d7a6b9`  
		Last Modified: Fri, 20 Nov 2026 06:16:08 GMT  
		Size: 273.2 MB (273181282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c4b1c52a6e141250487d7b74012b306dc01983585344da53bbd79d2376e5850`  
		Last Modified: Fri, 20 Nov 2026 06:16:03 GMT  
		Size: 1.5 KB (1502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4318c2a65168f990298c87a818f8ca5449882f074132ed42325462dea3dc3f93`  
		Last Modified: Fri, 20 Nov 2026 06:16:02 GMT  
		Size: 996.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2` - unknown; unknown

```console
$ docker pull geonetwork@sha256:95e5c80f29b9ba0534fb8e3e7c9d9c63786589175039cf779c4118ba8a678511
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4200237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7c3c916e507b8da3acc06e940912901ed83c2ede5a72f8384923dd63195363`

```dockerfile
```

-	Layers:
	-	`sha256:9ad0b17fb67260def0069d4f27e7b6d4acc71f799417d0ed21447f9f3501d402`  
		Last Modified: Fri, 20 Nov 2026 06:16:03 GMT  
		Size: 4.2 MB (4178355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd1ea346958f3a8a5956c79bbf2f25fdb1ad5d14cad4b5aea2e54f350a02fc3a`  
		Last Modified: Fri, 20 Nov 2026 06:16:02 GMT  
		Size: 21.9 KB (21882 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.2` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:78c2e9459e66fec5edbcc58fd87f534d822734ed59cfd1d91e6ec0710a991e54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.9 MB (380947865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfcef3878be5d02ef19168dc4d87f62d6260d62c1c62ec0b8c107c5696a76f73`
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
# Fri, 20 Nov 2026 03:16:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:12 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Fri, 20 Nov 2026 03:16:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='bbe01d0683d3dcdd0bbdcc568d3d9123f719a4fa390208b3fe1ca6e1ef083923';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 20 Nov 2026 03:16:15 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:16:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:16:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 05:27:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 20 Nov 2026 05:27:16 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 05:27:16 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 20 Nov 2026 05:27:16 GMT
WORKDIR /usr/local/tomcat
# Fri, 20 Nov 2026 05:27:16 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 05:27:16 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 05:27:16 GMT
ENV TOMCAT_MAJOR=9
# Fri, 20 Nov 2026 05:27:16 GMT
ENV TOMCAT_VERSION=9.0.124
# Fri, 20 Nov 2026 05:27:16 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Fri, 20 Nov 2026 05:27:16 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 20 Nov 2026 05:27:20 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:27:21 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 20 Nov 2026 05:27:21 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 20 Nov 2026 05:27:21 GMT
ENTRYPOINT []
# Fri, 20 Nov 2026 05:27:21 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 06:10:55 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 20 Nov 2026 06:10:55 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Fri, 20 Nov 2026 06:10:55 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Fri, 20 Nov 2026 06:10:55 GMT
ENV GN_FILE=geonetwork.war
# Fri, 20 Nov 2026 06:10:55 GMT
ENV GN_VERSION=4.2.18
# Fri, 20 Nov 2026 06:10:55 GMT
ENV GN_DOWNLOAD_SHA256=4c846214fafcc681603a3c65b2248cce60f3283a74bd6a0e0aa2a216dacd87d3
# Fri, 20 Nov 2026 06:16:32 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 20 Nov 2026 06:16:32 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 20 Nov 2026 06:16:32 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:16:32 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 20 Nov 2026 06:16:32 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 06:16:32 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f552c4e8ba4d088c5da26a3c4d26d24332974b7eb82fc41623da39ba957ed52c`  
		Last Modified: Fri, 20 Nov 2026 03:16:27 GMT  
		Size: 22.8 MB (22849549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b34c84854113009dea0d31b188115538fb4b02a89eaeafe15cbca8556d2c1d`  
		Last Modified: Fri, 20 Nov 2026 03:16:28 GMT  
		Size: 41.3 MB (41315350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aa9770a6975ee3d8cd769312a336c573556c66fa0d9045db4306b563b2afec7`  
		Last Modified: Fri, 20 Nov 2026 03:16:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4353663c90d257605513863d8e8b5c4119f5b35256458852b5249196d79ac4`  
		Last Modified: Fri, 20 Nov 2026 03:16:26 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eee3eb05464fc3b8b940f50d0d341324862e6d3414f34b7478b6b93be02d202`  
		Last Modified: Fri, 20 Nov 2026 05:27:30 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0df751c58d62684044bac2b945801f64b5991665995de80e89d465da40e2ae45`  
		Last Modified: Fri, 20 Nov 2026 05:27:30 GMT  
		Size: 14.2 MB (14166087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89e6fdd3f0f94677b879796aae2a92d42001e590bf018324e9de415cfc839f19`  
		Last Modified: Fri, 20 Nov 2026 05:27:30 GMT  
		Size: 226.1 KB (226062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46447d95f213d328c5334078443f320c2f2569f89b61d8d7bbda7c7eb0cdb58f`  
		Last Modified: Fri, 20 Nov 2026 06:16:55 GMT  
		Size: 239.0 KB (239025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:790c589191d0e9508ea1f24b26891153f8df177d3cb4804d78942464cf7a946b`  
		Last Modified: Fri, 20 Nov 2026 06:17:01 GMT  
		Size: 273.2 MB (273181188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab413d4773e9d8294f8a11b4b1865f5857775f3973b8d623a6e2dbbda4e7d61`  
		Last Modified: Fri, 20 Nov 2026 06:16:55 GMT  
		Size: 1.5 KB (1499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415dc36a59f4d20284aacef7a6dc99d362d210e71e778cb0f8b5a5c35fa8b6e3`  
		Last Modified: Fri, 20 Nov 2026 06:16:55 GMT  
		Size: 999.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2` - unknown; unknown

```console
$ docker pull geonetwork@sha256:e3d07466e050b127f67b78ef868a5a75d3b1f8b0fd3e74a6a90014acc56731f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4195403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f18012cb0dd50bf3275a1d897e30c00aadd4bf265297b8dbc30a1ba43de77a1d`

```dockerfile
```

-	Layers:
	-	`sha256:d233c25d9d3e5ecbedb4d117f0b4fcdae8359c2dd0ea5905f5a900c1d851eee2`  
		Last Modified: Fri, 20 Nov 2026 06:16:56 GMT  
		Size: 4.2 MB (4173504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3aa38beef887c28a64a8bc3c8fef2610780010b47567103d7c33f2b93b760c96`  
		Last Modified: Fri, 20 Nov 2026 06:16:55 GMT  
		Size: 21.9 KB (21899 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.2` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:8cc0fd157cb66ba02a988ca8abb26a4ffd9512688e0df7a2fc59bdfbd9f36573
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.7 MB (389734743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:267694ac22bd362218204077cd42e1f311590b0986e62ca513fbfbb7ccb1be61`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:22:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:22:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:22:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:22:43 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:22:43 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Fri, 20 Nov 2026 03:22:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='bbe01d0683d3dcdd0bbdcc568d3d9123f719a4fa390208b3fe1ca6e1ef083923';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 20 Nov 2026 03:22:50 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:22:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:22:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 07:11:13 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 20 Nov 2026 07:11:13 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 07:11:13 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 20 Nov 2026 07:11:13 GMT
WORKDIR /usr/local/tomcat
# Fri, 20 Nov 2026 07:11:13 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 07:11:13 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 07:11:13 GMT
ENV TOMCAT_MAJOR=9
# Fri, 20 Nov 2026 07:11:13 GMT
ENV TOMCAT_VERSION=9.0.124
# Fri, 20 Nov 2026 07:11:13 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Fri, 20 Nov 2026 07:11:14 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 20 Nov 2026 07:11:23 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 07:11:27 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 20 Nov 2026 07:11:27 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 20 Nov 2026 07:11:27 GMT
ENTRYPOINT []
# Fri, 20 Nov 2026 07:11:27 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 08:47:09 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 20 Nov 2026 08:47:09 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Fri, 20 Nov 2026 08:47:09 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Fri, 20 Nov 2026 08:47:09 GMT
ENV GN_FILE=geonetwork.war
# Fri, 20 Nov 2026 08:47:09 GMT
ENV GN_VERSION=4.2.18
# Fri, 20 Nov 2026 08:47:09 GMT
ENV GN_DOWNLOAD_SHA256=4c846214fafcc681603a3c65b2248cce60f3283a74bd6a0e0aa2a216dacd87d3
# Fri, 20 Nov 2026 09:04:58 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 20 Nov 2026 09:04:59 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 20 Nov 2026 09:04:59 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 09:04:59 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 20 Nov 2026 09:04:59 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 09:04:59 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ebaa1e7b750c6d8a6862f3d311b4d62adccafbcc2e1d7c53d1e1cc58d69abc`  
		Last Modified: Fri, 20 Nov 2026 03:23:15 GMT  
		Size: 25.7 MB (25655366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a20430152e1ce1eed40972c87595a8924e042b43eb0e6f5044a8d38096eef6d5`  
		Last Modified: Fri, 20 Nov 2026 03:23:16 GMT  
		Size: 41.8 MB (41765158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e7b69ea933f31f71ba9104fa96497511741936009177afb99aa5922a5e5805`  
		Last Modified: Fri, 20 Nov 2026 03:23:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a096a3bd8d49e3e9dbde683140467293600dde1cdd946ddb3f082aa2209e8ab9`  
		Last Modified: Fri, 20 Nov 2026 03:23:14 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea7a0732c1636d898c5ba481cbbc75f3592d15589b9762b28d668a7883367ac5`  
		Last Modified: Fri, 20 Nov 2026 07:11:48 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c913a08e387d47f499e4cea366ab36961a99f3c1286c2060aaee7604d28a3686`  
		Last Modified: Fri, 20 Nov 2026 07:11:48 GMT  
		Size: 14.2 MB (14193936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:284866c1eb3a00e36eb745dd28aab804431a9fa9b6d7927fe884fa9c7d502e2c`  
		Last Modified: Fri, 20 Nov 2026 07:11:48 GMT  
		Size: 257.3 KB (257251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e65e178ce4a8663686a8f21036e298ca94c3cee9964286cca626ca8c44005671`  
		Last Modified: Fri, 20 Nov 2026 09:05:55 GMT  
		Size: 270.2 KB (270193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e3bbe6cad589cc3596f3f4d7370bd94b9306f324da1c90c7e63c53413701b7`  
		Last Modified: Fri, 20 Nov 2026 09:06:00 GMT  
		Size: 273.2 MB (273181309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f292a17a8b8af1284a70da1d9641fea331c01599fae6b2f1e0f1f70ece32c041`  
		Last Modified: Fri, 20 Nov 2026 09:05:55 GMT  
		Size: 1.5 KB (1502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7b0be3fee7e6aa8f7ce3181648514d07a8a9a458e080392fb41887de74413f`  
		Last Modified: Fri, 20 Nov 2026 09:05:55 GMT  
		Size: 995.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2` - unknown; unknown

```console
$ docker pull geonetwork@sha256:ac0b113ef70493b75302d6734811bd41ba71d0decfafe5e620d6d5b87277b657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4198960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff0f092c37cbd1ebac6635f8bb5550b89ab09fb3cb8bc99b9db98dec41d1f67`

```dockerfile
```

-	Layers:
	-	`sha256:a964339dc96317caea5ccf46b0b0b6d022987b4926b55e7522be17434276c850`  
		Last Modified: Fri, 20 Nov 2026 09:05:54 GMT  
		Size: 4.2 MB (4177121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9b730b545f268d1eb4dfd79adc8e8408af39adf955ae0669196aebb93fc5000`  
		Last Modified: Fri, 20 Nov 2026 09:05:54 GMT  
		Size: 21.8 KB (21839 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:4.2.18`

```console
$ docker pull geonetwork@sha256:64b2fd10811e496ad49f013b39e1674587354c6e315ec5a4604f932b0dd0edb0
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

### `geonetwork:4.2.18` - linux; amd64

```console
$ docker pull geonetwork@sha256:e44b52be6c02d33d7086d9fce78fe2180bdeb996da65c4bf641e4ebf52f1faae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.0 MB (383018802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2f5464b8c4fcc25a15e005934b74b77b13951876860f7f1b9e56035c2548a0`
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
# Fri, 20 Nov 2026 03:15:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:15:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:15:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:15:43 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:15:43 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Fri, 20 Nov 2026 03:15:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='bbe01d0683d3dcdd0bbdcc568d3d9123f719a4fa390208b3fe1ca6e1ef083923';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 20 Nov 2026 03:15:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:15:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:15:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 05:23:28 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 20 Nov 2026 05:23:28 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 05:23:28 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 20 Nov 2026 05:23:28 GMT
WORKDIR /usr/local/tomcat
# Fri, 20 Nov 2026 05:23:28 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 05:23:28 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 05:23:28 GMT
ENV TOMCAT_MAJOR=9
# Fri, 20 Nov 2026 05:23:28 GMT
ENV TOMCAT_VERSION=9.0.124
# Fri, 20 Nov 2026 05:23:28 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Fri, 20 Nov 2026 05:23:28 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 20 Nov 2026 05:23:31 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:23:32 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 20 Nov 2026 05:23:32 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 20 Nov 2026 05:23:32 GMT
ENTRYPOINT []
# Fri, 20 Nov 2026 05:23:32 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 06:09:31 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 20 Nov 2026 06:09:31 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Fri, 20 Nov 2026 06:09:31 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Fri, 20 Nov 2026 06:09:31 GMT
ENV GN_FILE=geonetwork.war
# Fri, 20 Nov 2026 06:09:31 GMT
ENV GN_VERSION=4.2.18
# Fri, 20 Nov 2026 06:09:31 GMT
ENV GN_DOWNLOAD_SHA256=4c846214fafcc681603a3c65b2248cce60f3283a74bd6a0e0aa2a216dacd87d3
# Fri, 20 Nov 2026 06:14:05 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 20 Nov 2026 06:14:05 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 20 Nov 2026 06:14:05 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:14:05 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 20 Nov 2026 06:14:05 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 06:14:05 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8e337d7d84ee4d44437ff40b4f5a73375286f79f9924180ec8de17e8c75f2a`  
		Last Modified: Fri, 20 Nov 2026 03:15:57 GMT  
		Size: 23.1 MB (23065080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efac8b0d73718df3ebe08725cd4122e7824a345b94be5be06a707f5dc31f6cf6`  
		Last Modified: Fri, 20 Nov 2026 03:15:58 GMT  
		Size: 42.4 MB (42351665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ca4ed6f9759d11e0cfdcbc2f2a4987554b914b5e065a1f6ecf65fddac6c19eb`  
		Last Modified: Fri, 20 Nov 2026 03:15:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8d7716c0c03d6b28e4539f979e585114b6597efce2ccbf9dd29974ca2334093`  
		Last Modified: Fri, 20 Nov 2026 03:15:57 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e301bdb7da732f06b2c31a1176ebf570ec289fb9415afe6a53a2ee9a9288f8c`  
		Last Modified: Fri, 20 Nov 2026 05:23:39 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9660cf015cfbc924b2066b7bf96902df3ee49c9c805b0d022079a1cccae17658`  
		Last Modified: Fri, 20 Nov 2026 05:23:40 GMT  
		Size: 14.2 MB (14156934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97bb01232fc9977ea9d92daeec19fda641638b58de75c3a48997da34d71d95d`  
		Last Modified: Fri, 20 Nov 2026 05:23:39 GMT  
		Size: 225.5 KB (225519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279eaf092e93bb614213990fdadd3af54bcac15e7fd5b246054f7d688379778b`  
		Last Modified: Fri, 20 Nov 2026 06:14:29 GMT  
		Size: 239.7 KB (239749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c98746a1e368ca30f7b924781e3fd16a84f946ece6491616905d2ba44a0ec345`  
		Last Modified: Fri, 20 Nov 2026 06:14:34 GMT  
		Size: 273.2 MB (273181266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f80233e79cc66f507724d9ba44f98b08110c79a12cb0295c040bd07d0bc533`  
		Last Modified: Fri, 20 Nov 2026 06:14:29 GMT  
		Size: 1.5 KB (1500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7463b5a8ccdb5e47b25d5282eed5cbe4517d592cb6c2df57f6481e03a14ff33`  
		Last Modified: Fri, 20 Nov 2026 06:14:29 GMT  
		Size: 999.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2.18` - unknown; unknown

```console
$ docker pull geonetwork@sha256:697b9d9f12e04bbc9af51528048097bc2a0022053d312ec73311553eea839d90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4194169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d55642786e12899666fd51187c3da8f8ee7d85caed1ebac57599d8d056ca5786`

```dockerfile
```

-	Layers:
	-	`sha256:0a33b87dc30fa942eb3fb58a173c987b8cc791e1df6e7be8321574dc9c6d654e`  
		Last Modified: Fri, 20 Nov 2026 06:14:29 GMT  
		Size: 4.2 MB (4172364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71a72447c3af8e5355964c8180eb77123870da6bed417d910f4cdaafc81ef961`  
		Last Modified: Fri, 20 Nov 2026 06:14:28 GMT  
		Size: 21.8 KB (21805 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.2.18` - linux; arm variant v7

```console
$ docker pull geonetwork@sha256:5538323b183928cfa1d697ccd3b540f09b3a380653be01ed8659bba73fca24e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.5 MB (375540147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9675a68dd4da36b0bec8ce6dd148029446cd79ea115df64dca09d675bb82b6f`
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
# Fri, 20 Nov 2026 03:10:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:10:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:10:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:49 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Fri, 20 Nov 2026 03:10:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='bbe01d0683d3dcdd0bbdcc568d3d9123f719a4fa390208b3fe1ca6e1ef083923';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 20 Nov 2026 03:10:56 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:10:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 05:15:08 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 20 Nov 2026 05:15:08 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 05:15:08 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 20 Nov 2026 05:15:08 GMT
WORKDIR /usr/local/tomcat
# Fri, 20 Nov 2026 05:15:08 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 05:15:08 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 05:15:08 GMT
ENV TOMCAT_MAJOR=9
# Fri, 20 Nov 2026 05:15:08 GMT
ENV TOMCAT_VERSION=9.0.124
# Fri, 20 Nov 2026 05:15:08 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Fri, 20 Nov 2026 05:15:08 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 20 Nov 2026 05:15:12 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:15:13 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 20 Nov 2026 05:15:13 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 20 Nov 2026 05:15:13 GMT
ENTRYPOINT []
# Fri, 20 Nov 2026 05:15:13 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 06:10:36 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 20 Nov 2026 06:10:36 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Fri, 20 Nov 2026 06:10:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Fri, 20 Nov 2026 06:10:36 GMT
ENV GN_FILE=geonetwork.war
# Fri, 20 Nov 2026 06:10:36 GMT
ENV GN_VERSION=4.2.18
# Fri, 20 Nov 2026 06:10:36 GMT
ENV GN_DOWNLOAD_SHA256=4c846214fafcc681603a3c65b2248cce60f3283a74bd6a0e0aa2a216dacd87d3
# Fri, 20 Nov 2026 06:15:40 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 20 Nov 2026 06:15:40 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 20 Nov 2026 06:15:40 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:15:40 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 20 Nov 2026 06:15:40 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 06:15:40 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:791147b088b7508116b0b388cfcf00e16fa77f527003abee70726bcdb34b8248`  
		Last Modified: Tue, 10 Nov 2026 20:09:32 GMT  
		Size: 26.9 MB (26921983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78248ab6e92868c3b4c3a483afcfba973db624498607ba5e797de15a3fc2e5f7`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 21.1 MB (21124416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf6e767f8b8bb3a24541d686eb70d3513cea2a3defda585352d3acaeed7abec0`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 39.8 MB (39790806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4b3bee31afaad99e6796633952b12be78b9f653af813cba991d3c4f31d98602`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e7097901dfbe2ff8dae9b42573647184475eff147a42a36285a9e5c7fb0287b`  
		Last Modified: Fri, 20 Nov 2026 03:10:57 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7130103037036b3ce7ec5fe5e64b9128bf2a2e9cdd15176efe23346501e5ac26`  
		Last Modified: Fri, 20 Nov 2026 05:15:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0793527f3e15cee5df4a05a2f57e5c4e45720a1009738937ff7c33b6afd3ddcc`  
		Last Modified: Fri, 20 Nov 2026 05:15:21 GMT  
		Size: 14.1 MB (14091830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb16f2d8fdafbdd4c75a3bbd6b88ded47c476d90c5e9dc226939dac5ce26219c`  
		Last Modified: Fri, 20 Nov 2026 05:15:21 GMT  
		Size: 197.3 KB (197287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628dbf91dbaf8401ac39bb222674ca38d3ffd84f98917f621deb5ff4781fa82c`  
		Last Modified: Fri, 20 Nov 2026 06:16:03 GMT  
		Size: 227.3 KB (227253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db4c2960f29929eb3aed553444afb4d651b3b7937d788619e0bee7260d7a6b9`  
		Last Modified: Fri, 20 Nov 2026 06:16:08 GMT  
		Size: 273.2 MB (273181282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c4b1c52a6e141250487d7b74012b306dc01983585344da53bbd79d2376e5850`  
		Last Modified: Fri, 20 Nov 2026 06:16:03 GMT  
		Size: 1.5 KB (1502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4318c2a65168f990298c87a818f8ca5449882f074132ed42325462dea3dc3f93`  
		Last Modified: Fri, 20 Nov 2026 06:16:02 GMT  
		Size: 996.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2.18` - unknown; unknown

```console
$ docker pull geonetwork@sha256:95e5c80f29b9ba0534fb8e3e7c9d9c63786589175039cf779c4118ba8a678511
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4200237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7c3c916e507b8da3acc06e940912901ed83c2ede5a72f8384923dd63195363`

```dockerfile
```

-	Layers:
	-	`sha256:9ad0b17fb67260def0069d4f27e7b6d4acc71f799417d0ed21447f9f3501d402`  
		Last Modified: Fri, 20 Nov 2026 06:16:03 GMT  
		Size: 4.2 MB (4178355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd1ea346958f3a8a5956c79bbf2f25fdb1ad5d14cad4b5aea2e54f350a02fc3a`  
		Last Modified: Fri, 20 Nov 2026 06:16:02 GMT  
		Size: 21.9 KB (21882 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.2.18` - linux; arm64 variant v8

```console
$ docker pull geonetwork@sha256:78c2e9459e66fec5edbcc58fd87f534d822734ed59cfd1d91e6ec0710a991e54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.9 MB (380947865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfcef3878be5d02ef19168dc4d87f62d6260d62c1c62ec0b8c107c5696a76f73`
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
# Fri, 20 Nov 2026 03:16:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:12 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Fri, 20 Nov 2026 03:16:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='bbe01d0683d3dcdd0bbdcc568d3d9123f719a4fa390208b3fe1ca6e1ef083923';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 20 Nov 2026 03:16:15 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:16:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:16:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 05:27:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 20 Nov 2026 05:27:16 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 05:27:16 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 20 Nov 2026 05:27:16 GMT
WORKDIR /usr/local/tomcat
# Fri, 20 Nov 2026 05:27:16 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 05:27:16 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 05:27:16 GMT
ENV TOMCAT_MAJOR=9
# Fri, 20 Nov 2026 05:27:16 GMT
ENV TOMCAT_VERSION=9.0.124
# Fri, 20 Nov 2026 05:27:16 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Fri, 20 Nov 2026 05:27:16 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 20 Nov 2026 05:27:20 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:27:21 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 20 Nov 2026 05:27:21 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 20 Nov 2026 05:27:21 GMT
ENTRYPOINT []
# Fri, 20 Nov 2026 05:27:21 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 06:10:55 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 20 Nov 2026 06:10:55 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Fri, 20 Nov 2026 06:10:55 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Fri, 20 Nov 2026 06:10:55 GMT
ENV GN_FILE=geonetwork.war
# Fri, 20 Nov 2026 06:10:55 GMT
ENV GN_VERSION=4.2.18
# Fri, 20 Nov 2026 06:10:55 GMT
ENV GN_DOWNLOAD_SHA256=4c846214fafcc681603a3c65b2248cce60f3283a74bd6a0e0aa2a216dacd87d3
# Fri, 20 Nov 2026 06:16:32 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 20 Nov 2026 06:16:32 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 20 Nov 2026 06:16:32 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:16:32 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 20 Nov 2026 06:16:32 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 06:16:32 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f552c4e8ba4d088c5da26a3c4d26d24332974b7eb82fc41623da39ba957ed52c`  
		Last Modified: Fri, 20 Nov 2026 03:16:27 GMT  
		Size: 22.8 MB (22849549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b34c84854113009dea0d31b188115538fb4b02a89eaeafe15cbca8556d2c1d`  
		Last Modified: Fri, 20 Nov 2026 03:16:28 GMT  
		Size: 41.3 MB (41315350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aa9770a6975ee3d8cd769312a336c573556c66fa0d9045db4306b563b2afec7`  
		Last Modified: Fri, 20 Nov 2026 03:16:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4353663c90d257605513863d8e8b5c4119f5b35256458852b5249196d79ac4`  
		Last Modified: Fri, 20 Nov 2026 03:16:26 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eee3eb05464fc3b8b940f50d0d341324862e6d3414f34b7478b6b93be02d202`  
		Last Modified: Fri, 20 Nov 2026 05:27:30 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0df751c58d62684044bac2b945801f64b5991665995de80e89d465da40e2ae45`  
		Last Modified: Fri, 20 Nov 2026 05:27:30 GMT  
		Size: 14.2 MB (14166087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89e6fdd3f0f94677b879796aae2a92d42001e590bf018324e9de415cfc839f19`  
		Last Modified: Fri, 20 Nov 2026 05:27:30 GMT  
		Size: 226.1 KB (226062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46447d95f213d328c5334078443f320c2f2569f89b61d8d7bbda7c7eb0cdb58f`  
		Last Modified: Fri, 20 Nov 2026 06:16:55 GMT  
		Size: 239.0 KB (239025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:790c589191d0e9508ea1f24b26891153f8df177d3cb4804d78942464cf7a946b`  
		Last Modified: Fri, 20 Nov 2026 06:17:01 GMT  
		Size: 273.2 MB (273181188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab413d4773e9d8294f8a11b4b1865f5857775f3973b8d623a6e2dbbda4e7d61`  
		Last Modified: Fri, 20 Nov 2026 06:16:55 GMT  
		Size: 1.5 KB (1499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415dc36a59f4d20284aacef7a6dc99d362d210e71e778cb0f8b5a5c35fa8b6e3`  
		Last Modified: Fri, 20 Nov 2026 06:16:55 GMT  
		Size: 999.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2.18` - unknown; unknown

```console
$ docker pull geonetwork@sha256:e3d07466e050b127f67b78ef868a5a75d3b1f8b0fd3e74a6a90014acc56731f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4195403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f18012cb0dd50bf3275a1d897e30c00aadd4bf265297b8dbc30a1ba43de77a1d`

```dockerfile
```

-	Layers:
	-	`sha256:d233c25d9d3e5ecbedb4d117f0b4fcdae8359c2dd0ea5905f5a900c1d851eee2`  
		Last Modified: Fri, 20 Nov 2026 06:16:56 GMT  
		Size: 4.2 MB (4173504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3aa38beef887c28a64a8bc3c8fef2610780010b47567103d7c33f2b93b760c96`  
		Last Modified: Fri, 20 Nov 2026 06:16:55 GMT  
		Size: 21.9 KB (21899 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.2.18` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:8cc0fd157cb66ba02a988ca8abb26a4ffd9512688e0df7a2fc59bdfbd9f36573
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.7 MB (389734743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:267694ac22bd362218204077cd42e1f311590b0986e62ca513fbfbb7ccb1be61`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:22:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:22:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:22:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:22:43 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:22:43 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Fri, 20 Nov 2026 03:22:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='bbe01d0683d3dcdd0bbdcc568d3d9123f719a4fa390208b3fe1ca6e1ef083923';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 20 Nov 2026 03:22:50 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:22:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:22:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 07:11:13 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 20 Nov 2026 07:11:13 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 07:11:13 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 20 Nov 2026 07:11:13 GMT
WORKDIR /usr/local/tomcat
# Fri, 20 Nov 2026 07:11:13 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 07:11:13 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 07:11:13 GMT
ENV TOMCAT_MAJOR=9
# Fri, 20 Nov 2026 07:11:13 GMT
ENV TOMCAT_VERSION=9.0.124
# Fri, 20 Nov 2026 07:11:13 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Fri, 20 Nov 2026 07:11:14 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 20 Nov 2026 07:11:23 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 07:11:27 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 20 Nov 2026 07:11:27 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 20 Nov 2026 07:11:27 GMT
ENTRYPOINT []
# Fri, 20 Nov 2026 07:11:27 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 08:47:09 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 20 Nov 2026 08:47:09 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom         -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC         -Dgeonetwork.resources.dir=/catalogue-data/resources         -Dgeonetwork.data.dir=/catalogue-data         -Dgeonetwork.codeList.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/codelist         -Dgeonetwork.schema.dir=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data/config/schema_plugins
# Fri, 20 Nov 2026 08:47:09 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /usr/local/tomcat/webapps/geonetwork # buildkit
# Fri, 20 Nov 2026 08:47:09 GMT
ENV GN_FILE=geonetwork.war
# Fri, 20 Nov 2026 08:47:09 GMT
ENV GN_VERSION=4.2.18
# Fri, 20 Nov 2026 08:47:09 GMT
ENV GN_DOWNLOAD_SHA256=4c846214fafcc681603a3c65b2248cce60f3283a74bd6a0e0aa2a216dacd87d3
# Fri, 20 Nov 2026 09:04:58 GMT
RUN set -eux;     cd /usr/local/tomcat/webapps/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";     echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 20 Nov 2026 09:04:59 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 20 Nov 2026 09:04:59 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 09:04:59 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 20 Nov 2026 09:04:59 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 09:04:59 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ebaa1e7b750c6d8a6862f3d311b4d62adccafbcc2e1d7c53d1e1cc58d69abc`  
		Last Modified: Fri, 20 Nov 2026 03:23:15 GMT  
		Size: 25.7 MB (25655366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a20430152e1ce1eed40972c87595a8924e042b43eb0e6f5044a8d38096eef6d5`  
		Last Modified: Fri, 20 Nov 2026 03:23:16 GMT  
		Size: 41.8 MB (41765158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e7b69ea933f31f71ba9104fa96497511741936009177afb99aa5922a5e5805`  
		Last Modified: Fri, 20 Nov 2026 03:23:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a096a3bd8d49e3e9dbde683140467293600dde1cdd946ddb3f082aa2209e8ab9`  
		Last Modified: Fri, 20 Nov 2026 03:23:14 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea7a0732c1636d898c5ba481cbbc75f3592d15589b9762b28d668a7883367ac5`  
		Last Modified: Fri, 20 Nov 2026 07:11:48 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c913a08e387d47f499e4cea366ab36961a99f3c1286c2060aaee7604d28a3686`  
		Last Modified: Fri, 20 Nov 2026 07:11:48 GMT  
		Size: 14.2 MB (14193936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:284866c1eb3a00e36eb745dd28aab804431a9fa9b6d7927fe884fa9c7d502e2c`  
		Last Modified: Fri, 20 Nov 2026 07:11:48 GMT  
		Size: 257.3 KB (257251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e65e178ce4a8663686a8f21036e298ca94c3cee9964286cca626ca8c44005671`  
		Last Modified: Fri, 20 Nov 2026 09:05:55 GMT  
		Size: 270.2 KB (270193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e3bbe6cad589cc3596f3f4d7370bd94b9306f324da1c90c7e63c53413701b7`  
		Last Modified: Fri, 20 Nov 2026 09:06:00 GMT  
		Size: 273.2 MB (273181309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f292a17a8b8af1284a70da1d9641fea331c01599fae6b2f1e0f1f70ece32c041`  
		Last Modified: Fri, 20 Nov 2026 09:05:55 GMT  
		Size: 1.5 KB (1502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7b0be3fee7e6aa8f7ce3181648514d07a8a9a458e080392fb41887de74413f`  
		Last Modified: Fri, 20 Nov 2026 09:05:55 GMT  
		Size: 995.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.2.18` - unknown; unknown

```console
$ docker pull geonetwork@sha256:ac0b113ef70493b75302d6734811bd41ba71d0decfafe5e620d6d5b87277b657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4198960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff0f092c37cbd1ebac6635f8bb5550b89ab09fb3cb8bc99b9db98dec41d1f67`

```dockerfile
```

-	Layers:
	-	`sha256:a964339dc96317caea5ccf46b0b0b6d022987b4926b55e7522be17434276c850`  
		Last Modified: Fri, 20 Nov 2026 09:05:54 GMT  
		Size: 4.2 MB (4177121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9b730b545f268d1eb4dfd79adc8e8408af39adf955ae0669196aebb93fc5000`  
		Last Modified: Fri, 20 Nov 2026 09:05:54 GMT  
		Size: 21.8 KB (21839 bytes)  
		MIME: application/vnd.in-toto+json

## `geonetwork:4.4`

```console
$ docker pull geonetwork@sha256:596e6ed085e8b148deb3b4287325dd1b957ed420b868889d9d69d0c58fd3c66f
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

### `geonetwork:4.4` - unknown; unknown

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

### `geonetwork:4.4` - linux; arm variant v7

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

### `geonetwork:4.4` - unknown; unknown

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

### `geonetwork:4.4` - linux; arm64 variant v8

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

### `geonetwork:4.4` - unknown; unknown

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

### `geonetwork:4.4` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:8122bcd140b1f064f4a09fd612f10a2485a47298a982dd9a78f1d962e7f6c957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.4 MB (388413830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a748f1f3a3070859713097f2dede0722c2e5908eaee78771a2ef07a46e683701`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:22:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:22:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:22:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:22:43 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:22:43 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 20 Nov 2026 03:23:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:23:50 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:23:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 07:09:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 20 Nov 2026 07:09:25 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 07:09:25 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 20 Nov 2026 07:09:26 GMT
WORKDIR /usr/local/tomcat
# Fri, 20 Nov 2026 07:09:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 07:09:26 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 07:09:26 GMT
ENV TOMCAT_MAJOR=9
# Fri, 20 Nov 2026 07:09:26 GMT
ENV TOMCAT_VERSION=9.0.124
# Fri, 20 Nov 2026 07:09:26 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Fri, 20 Nov 2026 07:11:08 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 20 Nov 2026 07:11:15 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 07:11:17 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 20 Nov 2026 07:11:17 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 20 Nov 2026 07:11:17 GMT
ENTRYPOINT []
# Fri, 20 Nov 2026 07:11:17 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 08:47:16 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 20 Nov 2026 08:47:16 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Fri, 20 Nov 2026 08:47:16 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Fri, 20 Nov 2026 08:47:16 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Fri, 20 Nov 2026 08:47:16 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Fri, 20 Nov 2026 08:47:16 GMT
ENV GN_FILE=geonetwork.war
# Fri, 20 Nov 2026 08:47:16 GMT
ENV GN_VERSION=4.4.13
# Fri, 20 Nov 2026 08:47:16 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Fri, 20 Nov 2026 09:01:52 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 20 Nov 2026 09:01:52 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Fri, 20 Nov 2026 09:01:53 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 20 Nov 2026 09:01:53 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 09:01:53 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 20 Nov 2026 09:01:53 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 09:01:53 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ebaa1e7b750c6d8a6862f3d311b4d62adccafbcc2e1d7c53d1e1cc58d69abc`  
		Last Modified: Fri, 20 Nov 2026 03:23:15 GMT  
		Size: 25.7 MB (25655366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3c7638f3451bf92f17ae06665e753513f647575b56da597b4a2d304e269297c`  
		Last Modified: Fri, 20 Nov 2026 03:24:30 GMT  
		Size: 42.4 MB (42373237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:455d8a4214fb8157c0624722d79f9188450bed2904bdbb542fa7625eb8611a81`  
		Last Modified: Fri, 20 Nov 2026 03:24:29 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d6184d6573255b7b6aacf3b1d9f2d2a077fd5b53a2aa47048a042fe8fd3efd`  
		Last Modified: Fri, 20 Nov 2026 03:24:29 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9533a0d1e95bec4f6ba979c7285d412f232d0494e0b6f18ad915755f9e356c`  
		Last Modified: Fri, 20 Nov 2026 07:10:03 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4451e90df96bfcfcbb70fe179901d06c67cd1e7984f67f164ac00a566f3ffc6`  
		Last Modified: Fri, 20 Nov 2026 07:11:38 GMT  
		Size: 14.2 MB (14194549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b3a0f2580ea7b031af32bf26378894762d53e2464b935677884b10b747656e`  
		Last Modified: Fri, 20 Nov 2026 07:11:37 GMT  
		Size: 257.3 KB (257251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c4f2fc63704c6fb276974d1369ebcac04d381a8743ae2dcafefb5882cfb690`  
		Last Modified: Fri, 20 Nov 2026 09:03:06 GMT  
		Size: 270.2 KB (270244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:463f579d0ba3c531362e27e520acb9fbe386926ea2263f578b28c2038bcbddcc`  
		Last Modified: Fri, 20 Nov 2026 09:03:12 GMT  
		Size: 271.3 MB (271250086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e04cbd346d2359b015c97f7d67eaba1d00b959a94d22fecab4fe5beb080563`  
		Last Modified: Fri, 20 Nov 2026 09:03:06 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3b24c50d9f22d0ac140c35035fb90e206f853728e5ff41a0c0ce0bf4b662fb6`  
		Last Modified: Fri, 20 Nov 2026 09:03:06 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf2da0983823bdea97a2499f1831a868ad21d8076cb5471c93d87d7c651753c`  
		Last Modified: Fri, 20 Nov 2026 09:03:07 GMT  
		Size: 697.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4` - unknown; unknown

```console
$ docker pull geonetwork@sha256:3358775e3589b3afacd173cb9504564da221395c0de3e3023fe639e41699a9e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4114066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b8012acc6d92abf12838498db1a0c446c219bbbbc72503c07dab93c16a11f57`

```dockerfile
```

-	Layers:
	-	`sha256:265a32f35efd9b2f68011d03b65b8debed4b9042d8065d10ba78a229c3a8ef0e`  
		Last Modified: Fri, 20 Nov 2026 09:03:06 GMT  
		Size: 4.1 MB (4088464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e886402860078d73807367a6b14ddc6dcc85228a59f36b9c1b77c895bad35100`  
		Last Modified: Fri, 20 Nov 2026 09:03:06 GMT  
		Size: 25.6 KB (25602 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.4` - linux; s390x

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

### `geonetwork:4.4` - unknown; unknown

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

## `geonetwork:4.4.13`

```console
$ docker pull geonetwork@sha256:596e6ed085e8b148deb3b4287325dd1b957ed420b868889d9d69d0c58fd3c66f
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

### `geonetwork:4.4.13` - linux; amd64

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

### `geonetwork:4.4.13` - unknown; unknown

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

### `geonetwork:4.4.13` - linux; arm variant v7

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

### `geonetwork:4.4.13` - unknown; unknown

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

### `geonetwork:4.4.13` - linux; arm64 variant v8

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

### `geonetwork:4.4.13` - unknown; unknown

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

### `geonetwork:4.4.13` - linux; ppc64le

```console
$ docker pull geonetwork@sha256:8122bcd140b1f064f4a09fd612f10a2485a47298a982dd9a78f1d962e7f6c957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.4 MB (388413830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a748f1f3a3070859713097f2dede0722c2e5908eaee78771a2ef07a46e683701`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:22:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:22:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:22:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:22:43 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:22:43 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 20 Nov 2026 03:23:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:23:50 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:23:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 07:09:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 20 Nov 2026 07:09:25 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 07:09:25 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 20 Nov 2026 07:09:26 GMT
WORKDIR /usr/local/tomcat
# Fri, 20 Nov 2026 07:09:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 07:09:26 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 07:09:26 GMT
ENV TOMCAT_MAJOR=9
# Fri, 20 Nov 2026 07:09:26 GMT
ENV TOMCAT_VERSION=9.0.124
# Fri, 20 Nov 2026 07:09:26 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Fri, 20 Nov 2026 07:11:08 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 20 Nov 2026 07:11:15 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 07:11:17 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 20 Nov 2026 07:11:17 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 20 Nov 2026 07:11:17 GMT
ENTRYPOINT []
# Fri, 20 Nov 2026 07:11:17 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 08:47:16 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 20 Nov 2026 08:47:16 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Fri, 20 Nov 2026 08:47:16 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Fri, 20 Nov 2026 08:47:16 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Fri, 20 Nov 2026 08:47:16 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Fri, 20 Nov 2026 08:47:16 GMT
ENV GN_FILE=geonetwork.war
# Fri, 20 Nov 2026 08:47:16 GMT
ENV GN_VERSION=4.4.13
# Fri, 20 Nov 2026 08:47:16 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Fri, 20 Nov 2026 09:01:52 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 20 Nov 2026 09:01:52 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Fri, 20 Nov 2026 09:01:53 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 20 Nov 2026 09:01:53 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 09:01:53 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 20 Nov 2026 09:01:53 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 09:01:53 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ebaa1e7b750c6d8a6862f3d311b4d62adccafbcc2e1d7c53d1e1cc58d69abc`  
		Last Modified: Fri, 20 Nov 2026 03:23:15 GMT  
		Size: 25.7 MB (25655366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3c7638f3451bf92f17ae06665e753513f647575b56da597b4a2d304e269297c`  
		Last Modified: Fri, 20 Nov 2026 03:24:30 GMT  
		Size: 42.4 MB (42373237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:455d8a4214fb8157c0624722d79f9188450bed2904bdbb542fa7625eb8611a81`  
		Last Modified: Fri, 20 Nov 2026 03:24:29 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d6184d6573255b7b6aacf3b1d9f2d2a077fd5b53a2aa47048a042fe8fd3efd`  
		Last Modified: Fri, 20 Nov 2026 03:24:29 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9533a0d1e95bec4f6ba979c7285d412f232d0494e0b6f18ad915755f9e356c`  
		Last Modified: Fri, 20 Nov 2026 07:10:03 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4451e90df96bfcfcbb70fe179901d06c67cd1e7984f67f164ac00a566f3ffc6`  
		Last Modified: Fri, 20 Nov 2026 07:11:38 GMT  
		Size: 14.2 MB (14194549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b3a0f2580ea7b031af32bf26378894762d53e2464b935677884b10b747656e`  
		Last Modified: Fri, 20 Nov 2026 07:11:37 GMT  
		Size: 257.3 KB (257251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c4f2fc63704c6fb276974d1369ebcac04d381a8743ae2dcafefb5882cfb690`  
		Last Modified: Fri, 20 Nov 2026 09:03:06 GMT  
		Size: 270.2 KB (270244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:463f579d0ba3c531362e27e520acb9fbe386926ea2263f578b28c2038bcbddcc`  
		Last Modified: Fri, 20 Nov 2026 09:03:12 GMT  
		Size: 271.3 MB (271250086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e04cbd346d2359b015c97f7d67eaba1d00b959a94d22fecab4fe5beb080563`  
		Last Modified: Fri, 20 Nov 2026 09:03:06 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3b24c50d9f22d0ac140c35035fb90e206f853728e5ff41a0c0ce0bf4b662fb6`  
		Last Modified: Fri, 20 Nov 2026 09:03:06 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf2da0983823bdea97a2499f1831a868ad21d8076cb5471c93d87d7c651753c`  
		Last Modified: Fri, 20 Nov 2026 09:03:07 GMT  
		Size: 697.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:4.4.13` - unknown; unknown

```console
$ docker pull geonetwork@sha256:3358775e3589b3afacd173cb9504564da221395c0de3e3023fe639e41699a9e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4114066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b8012acc6d92abf12838498db1a0c446c219bbbbc72503c07dab93c16a11f57`

```dockerfile
```

-	Layers:
	-	`sha256:265a32f35efd9b2f68011d03b65b8debed4b9042d8065d10ba78a229c3a8ef0e`  
		Last Modified: Fri, 20 Nov 2026 09:03:06 GMT  
		Size: 4.1 MB (4088464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e886402860078d73807367a6b14ddc6dcc85228a59f36b9c1b77c895bad35100`  
		Last Modified: Fri, 20 Nov 2026 09:03:06 GMT  
		Size: 25.6 KB (25602 bytes)  
		MIME: application/vnd.in-toto+json

### `geonetwork:4.4.13` - linux; s390x

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

### `geonetwork:4.4.13` - unknown; unknown

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

## `geonetwork:latest`

```console
$ docker pull geonetwork@sha256:596e6ed085e8b148deb3b4287325dd1b957ed420b868889d9d69d0c58fd3c66f
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
$ docker pull geonetwork@sha256:8122bcd140b1f064f4a09fd612f10a2485a47298a982dd9a78f1d962e7f6c957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.4 MB (388413830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a748f1f3a3070859713097f2dede0722c2e5908eaee78771a2ef07a46e683701`
-	Entrypoint: `["\/geonetwork-entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:22:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:22:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:22:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:22:43 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:22:43 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 20 Nov 2026 03:23:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='654c48e5bee5675eda8478e255d8dd227415b93af9a8072f35f771bd3db11563';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:23:50 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:23:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 07:09:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 20 Nov 2026 07:09:25 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 07:09:25 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 20 Nov 2026 07:09:26 GMT
WORKDIR /usr/local/tomcat
# Fri, 20 Nov 2026 07:09:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 07:09:26 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 20 Nov 2026 07:09:26 GMT
ENV TOMCAT_MAJOR=9
# Fri, 20 Nov 2026 07:09:26 GMT
ENV TOMCAT_VERSION=9.0.124
# Fri, 20 Nov 2026 07:09:26 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Fri, 20 Nov 2026 07:11:08 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 20 Nov 2026 07:11:15 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 07:11:17 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 20 Nov 2026 07:11:17 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 20 Nov 2026 07:11:17 GMT
ENTRYPOINT []
# Fri, 20 Nov 2026 07:11:17 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 08:47:16 GMT
ENV DATA_DIR=/catalogue-data
# Fri, 20 Nov 2026 08:47:16 GMT
ENV WEBAPP_CONTEXT_PATH=/geonetwork
# Fri, 20 Nov 2026 08:47:16 GMT
ENV GN_CONFIG_PROPERTIES=-Dgeonetwork.dir=/catalogue-data         -Dgeonetwork.formatter.dir=/catalogue-data/data/formatter         -Dgeonetwork.schema.dir=/opt/geonetwork/WEB-INF/data/config/schema_plugins         -Dgeonetwork.indexConfig.dir=/opt/geonetwork/WEB-INF/data/config/index
# Fri, 20 Nov 2026 08:47:16 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true         -Xms512M -Xss512M -Xmx2G -XX:+UseConcMarkSweepGC
# Fri, 20 Nov 2026 08:47:16 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         curl         unzip     ;     rm -rf /var/lib/apt/lists/*;     mkdir -p "${DATA_DIR}";     mkdir -p /opt/geonetwork;     mkdir -p /usr/local/tomcat/conf/Catalina/localhost # buildkit
# Fri, 20 Nov 2026 08:47:16 GMT
ENV GN_FILE=geonetwork.war
# Fri, 20 Nov 2026 08:47:16 GMT
ENV GN_VERSION=4.4.13
# Fri, 20 Nov 2026 08:47:16 GMT
ENV GN_DOWNLOAD_SHA256=2320f21e936dbe57b8160a554e8196734c1eaba787ed51eb421c47dc60c261ba
# Fri, 20 Nov 2026 09:01:52 GMT
RUN set -eux;     cd /opt/geonetwork/;     curl -fSL -o geonetwork.war         "https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/${GN_FILE}/download";    echo "${GN_DOWNLOAD_SHA256} *geonetwork.war" | sha256sum -c;     unzip -q geonetwork.war;     rm geonetwork.war # buildkit
# Fri, 20 Nov 2026 09:01:52 GMT
COPY tomcat/geonetwork_context_template.xml /usr/local/share/geonetwork/geonetwork_context_template.xml # buildkit
# Fri, 20 Nov 2026 09:01:53 GMT
COPY tomcat/server.xml /usr/local/tomcat/conf/server.xml # buildkit
# Fri, 20 Nov 2026 09:01:53 GMT
COPY ./docker-entrypoint.sh /geonetwork-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 09:01:53 GMT
ENTRYPOINT ["/geonetwork-entrypoint.sh"]
# Fri, 20 Nov 2026 09:01:53 GMT
CMD ["catalina.sh" "run"]
# Fri, 20 Nov 2026 09:01:53 GMT
VOLUME [/catalogue-data]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ebaa1e7b750c6d8a6862f3d311b4d62adccafbcc2e1d7c53d1e1cc58d69abc`  
		Last Modified: Fri, 20 Nov 2026 03:23:15 GMT  
		Size: 25.7 MB (25655366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3c7638f3451bf92f17ae06665e753513f647575b56da597b4a2d304e269297c`  
		Last Modified: Fri, 20 Nov 2026 03:24:30 GMT  
		Size: 42.4 MB (42373237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:455d8a4214fb8157c0624722d79f9188450bed2904bdbb542fa7625eb8611a81`  
		Last Modified: Fri, 20 Nov 2026 03:24:29 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d6184d6573255b7b6aacf3b1d9f2d2a077fd5b53a2aa47048a042fe8fd3efd`  
		Last Modified: Fri, 20 Nov 2026 03:24:29 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9533a0d1e95bec4f6ba979c7285d412f232d0494e0b6f18ad915755f9e356c`  
		Last Modified: Fri, 20 Nov 2026 07:10:03 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4451e90df96bfcfcbb70fe179901d06c67cd1e7984f67f164ac00a566f3ffc6`  
		Last Modified: Fri, 20 Nov 2026 07:11:38 GMT  
		Size: 14.2 MB (14194549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b3a0f2580ea7b031af32bf26378894762d53e2464b935677884b10b747656e`  
		Last Modified: Fri, 20 Nov 2026 07:11:37 GMT  
		Size: 257.3 KB (257251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c4f2fc63704c6fb276974d1369ebcac04d381a8743ae2dcafefb5882cfb690`  
		Last Modified: Fri, 20 Nov 2026 09:03:06 GMT  
		Size: 270.2 KB (270244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:463f579d0ba3c531362e27e520acb9fbe386926ea2263f578b28c2038bcbddcc`  
		Last Modified: Fri, 20 Nov 2026 09:03:12 GMT  
		Size: 271.3 MB (271250086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e04cbd346d2359b015c97f7d67eaba1d00b959a94d22fecab4fe5beb080563`  
		Last Modified: Fri, 20 Nov 2026 09:03:06 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3b24c50d9f22d0ac140c35035fb90e206f853728e5ff41a0c0ce0bf4b662fb6`  
		Last Modified: Fri, 20 Nov 2026 09:03:06 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf2da0983823bdea97a2499f1831a868ad21d8076cb5471c93d87d7c651753c`  
		Last Modified: Fri, 20 Nov 2026 09:03:07 GMT  
		Size: 697.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `geonetwork:latest` - unknown; unknown

```console
$ docker pull geonetwork@sha256:3358775e3589b3afacd173cb9504564da221395c0de3e3023fe639e41699a9e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4114066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b8012acc6d92abf12838498db1a0c446c219bbbbc72503c07dab93c16a11f57`

```dockerfile
```

-	Layers:
	-	`sha256:265a32f35efd9b2f68011d03b65b8debed4b9042d8065d10ba78a229c3a8ef0e`  
		Last Modified: Fri, 20 Nov 2026 09:03:06 GMT  
		Size: 4.1 MB (4088464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e886402860078d73807367a6b14ddc6dcc85228a59f36b9c1b77c895bad35100`  
		Last Modified: Fri, 20 Nov 2026 09:03:06 GMT  
		Size: 25.6 KB (25602 bytes)  
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
