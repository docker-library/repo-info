## `tomcat:jdk17-temurin-jammy`

```console
$ docker pull tomcat@sha256:1cc5416badbf569d4e036546db2bb655d3599e7827ab94bfb239dd5f7a06d51e
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

### `tomcat:jdk17-temurin-jammy` - linux; amd64

```console
$ docker pull tomcat@sha256:8bdc164bb9730d6f191204df252ac5be0bd365c93b4fc2a60d4ad5d576046896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218874855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e39344757a3d1adf79c34daa32587fc5a0d71a5129208309702a88e68dfa1715`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:20:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:20:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:20:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:20:17 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:20:17 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 09 Sep 2026 02:20:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='543173615a7e6e8905d99c45f9d0caeb5faf1a6dcdc25cbb5337f53e7ef06c78';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:20:26 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:20:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:20:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 02:20:26 GMT
CMD ["jshell"]
# Tue, 15 Sep 2026 23:40:15 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 15 Sep 2026 23:40:15 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 23:40:15 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 15 Sep 2026 23:40:15 GMT
WORKDIR /usr/local/tomcat
# Tue, 15 Sep 2026 23:40:15 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 15 Sep 2026 23:40:15 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 15 Sep 2026 23:40:15 GMT
ENV TOMCAT_MAJOR=11
# Tue, 15 Sep 2026 23:40:15 GMT
ENV TOMCAT_VERSION=11.0.26
# Tue, 15 Sep 2026 23:40:15 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Tue, 15 Sep 2026 23:40:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-11/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Tue, 15 Sep 2026 23:40:45 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 15 Sep 2026 23:40:45 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 15 Sep 2026 23:40:45 GMT
ENTRYPOINT []
# Tue, 15 Sep 2026 23:40:45 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa776214624d8f9afae89714cb131d929108f8319c57f7afd5e31a5684fa3c5`  
		Last Modified: Wed, 09 Sep 2026 02:20:43 GMT  
		Size: 20.7 MB (20660917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f821f946d45b08fb1cd8709ae1fa848908c8a9e9e5d97dafc4967b044a7019bd`  
		Last Modified: Wed, 09 Sep 2026 02:20:48 GMT  
		Size: 145.8 MB (145832361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a946b32c7c1edcdbfc95f297ab0c54320417c6790f6a571dbc9ed67d68033f32`  
		Last Modified: Wed, 09 Sep 2026 02:20:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c7774045fa164f50d453278cbfe6ae4580a5c0970eca03c38c835af73c1777`  
		Last Modified: Wed, 09 Sep 2026 02:20:42 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721f023e10eca66acb6fcd82466d442f4e1e33f7717010bee175b728c070f29d`  
		Last Modified: Tue, 15 Sep 2026 23:40:54 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:561a38bfe6507d3754311e84f4c0e60cec93f050effc740a47f35573874ed5d1`  
		Last Modified: Tue, 15 Sep 2026 23:40:55 GMT  
		Size: 22.6 MB (22628499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jdk17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:66238df016bdfbeae5f6cb1cec8505472d5e6ef557f6944a500fe5dd19b85a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4201507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8628c3f535e7171f6aac92efa43791194a2ed8ac968caf42bae8cc42f312827`

```dockerfile
```

-	Layers:
	-	`sha256:093cf1a146432cedee9eecaaf854cdb2e4d3de39ed66a166af576f83cba0fd6e`  
		Last Modified: Tue, 15 Sep 2026 23:40:55 GMT  
		Size: 4.2 MB (4171094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de03d2a2ef68292d467125814499f90cd0816d7b3813ba4e6539df367ee91faf`  
		Last Modified: Tue, 15 Sep 2026 23:40:54 GMT  
		Size: 30.4 KB (30413 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jdk17-temurin-jammy` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:171f1b31ed83ffaccf21bc9573962ddd1bdaaa81cc08ea0cd59e85088243bc36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212345062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:963660b2af6fa63f9a005745e79697a6f9280763f60fdee534947f9584778ffe`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:44 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:44 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:48 GMT
ADD file:3964c8b3085bc8973d824f786b55dfc8739922f8c0ba7540b52cc99dc2a74672 in / 
# Thu, 03 Sep 2026 12:14:48 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:16:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 01:16:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 01:16:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 01:16:31 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:16:31 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 09 Sep 2026 01:16:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='543173615a7e6e8905d99c45f9d0caeb5faf1a6dcdc25cbb5337f53e7ef06c78';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 01:16:46 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 01:16:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:16:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 01:16:46 GMT
CMD ["jshell"]
# Tue, 15 Sep 2026 23:41:30 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 15 Sep 2026 23:41:30 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 23:41:30 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 15 Sep 2026 23:41:30 GMT
WORKDIR /usr/local/tomcat
# Tue, 15 Sep 2026 23:41:30 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 15 Sep 2026 23:41:30 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 15 Sep 2026 23:41:30 GMT
ENV TOMCAT_MAJOR=11
# Tue, 15 Sep 2026 23:41:30 GMT
ENV TOMCAT_VERSION=11.0.26
# Tue, 15 Sep 2026 23:41:30 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Tue, 15 Sep 2026 23:42:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-11/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Tue, 15 Sep 2026 23:42:05 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 15 Sep 2026 23:42:05 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 15 Sep 2026 23:42:05 GMT
ENTRYPOINT []
# Tue, 15 Sep 2026 23:42:05 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:bfca8bdd141e37c0d0eb6a1ccbc63661539547c75fa38334423103a13cc1b0eb`  
		Last Modified: Thu, 03 Sep 2026 17:08:34 GMT  
		Size: 26.9 MB (26854708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53368a4792090859fe8ab48caf31d9610433d2e65d8ac3320638d43ec2152b20`  
		Last Modified: Wed, 09 Sep 2026 01:17:29 GMT  
		Size: 21.0 MB (20950135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a710eb62eb9b7489ec15277fc1f9820eff4de21dd8b751218e0f3da39dfff8`  
		Last Modified: Wed, 09 Sep 2026 01:17:31 GMT  
		Size: 143.1 MB (143140938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46d80ee157d91e91f5c1b0665f2877032a18a0591eef7c5b7945a99b5fe6a305`  
		Last Modified: Wed, 09 Sep 2026 01:17:28 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d620a895a8c4dbd5abadca60433fad4b59cd4eb42c094e16444386bcd5bf8ad4`  
		Last Modified: Wed, 09 Sep 2026 01:17:28 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f53adac8bf2aedc166f3e1b864194d1c006261426c8fb1e769c3ef732c8807`  
		Last Modified: Tue, 15 Sep 2026 23:42:15 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d890773e5233dcf5c239f82c21565f6ce6ad64db4def0db06a1c20a87f3ebff`  
		Last Modified: Tue, 15 Sep 2026 23:42:16 GMT  
		Size: 21.4 MB (21396452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jdk17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:ff9758112ae7f61494fc29dd19c2843d7ab517efd41c21abc88787aa7f8c6858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4120883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d42f4c4a54e31030cee6a55ecfc0bef05c16251681685e12f148d4fc38e2cb3`

```dockerfile
```

-	Layers:
	-	`sha256:33f33edd20ca19e3299680bf10360865d1de78c361c56dea95f2df4996c05003`  
		Last Modified: Tue, 15 Sep 2026 23:42:15 GMT  
		Size: 4.1 MB (4090364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bf0aabe679510655974ae0ddd01f7c5b76a8d0e2ea5616894d18b51cfcafed0`  
		Last Modified: Tue, 15 Sep 2026 23:42:15 GMT  
		Size: 30.5 KB (30519 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jdk17-temurin-jammy` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:7795b754c809e963e8b95cab52716385d4ee264b4b125c53ff54fc2da0b4a67b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.9 MB (215911362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34e60826d6cbefc585129dc7e3c897110e710de65bd2e38f0fbb09b9f63ed96f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:31:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 01:31:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 01:31:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 01:31:22 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:31:22 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 09 Sep 2026 01:31:30 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='543173615a7e6e8905d99c45f9d0caeb5faf1a6dcdc25cbb5337f53e7ef06c78';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 01:31:31 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 01:31:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:31:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 01:31:31 GMT
CMD ["jshell"]
# Tue, 15 Sep 2026 23:40:10 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 15 Sep 2026 23:40:10 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 23:40:10 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 15 Sep 2026 23:40:10 GMT
WORKDIR /usr/local/tomcat
# Tue, 15 Sep 2026 23:40:10 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 15 Sep 2026 23:40:10 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 15 Sep 2026 23:40:10 GMT
ENV TOMCAT_MAJOR=11
# Tue, 15 Sep 2026 23:40:10 GMT
ENV TOMCAT_VERSION=11.0.26
# Tue, 15 Sep 2026 23:40:10 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Tue, 15 Sep 2026 23:40:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-11/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Tue, 15 Sep 2026 23:40:45 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 15 Sep 2026 23:40:45 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 15 Sep 2026 23:40:45 GMT
ENTRYPOINT []
# Tue, 15 Sep 2026 23:40:45 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b55af6d425d5ca77d8e43b744314fb49bbbd337bcd8df546a0d7630287f4251f`  
		Last Modified: Wed, 09 Sep 2026 01:32:22 GMT  
		Size: 22.1 MB (22077952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:779c43ccda4bde99b66e1a97d34d3d960f6134bc9bfa4fa55633ca0738c51b6d`  
		Last Modified: Wed, 09 Sep 2026 01:32:25 GMT  
		Size: 144.7 MB (144655543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e653cb970d86b1ece79692c4545b981c23cef4df0a304efaf386b8d16910522`  
		Last Modified: Wed, 09 Sep 2026 01:32:21 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a05338f3f29bc00d1a272cf758c4eb5b01f75b9349d3c42a4de8d98edfa0180`  
		Last Modified: Wed, 09 Sep 2026 01:32:21 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:714ce417b76f23ec546e5b6542fcd58bdfdf0a2f2c3964fa5412b3789ef705c7`  
		Last Modified: Tue, 15 Sep 2026 23:40:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16bd05ef035a0724d61fa4bd1b8f8650ac5a27da18161b2190e6043cee460740`  
		Last Modified: Tue, 15 Sep 2026 23:40:56 GMT  
		Size: 21.5 MB (21492294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jdk17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:3f4d2068cd6d3d9f5a50c50c3bff0ffece27dab2edc46ea3657638557aa08337
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4297124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13a28d70e5144435bb0e0248298f51a6ef9a166986bcd4baab4892f532232b5a`

```dockerfile
```

-	Layers:
	-	`sha256:16277678a57c20481e6f4c6d063e0daef032066f38a05dc4e57043d19e82c4bc`  
		Last Modified: Tue, 15 Sep 2026 23:40:55 GMT  
		Size: 4.3 MB (4266577 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e3768e4d788e1db23b54920abbc4840891fab6f3e1226e8e267df61ff7d823a`  
		Last Modified: Tue, 15 Sep 2026 23:40:55 GMT  
		Size: 30.5 KB (30547 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jdk17-temurin-jammy` - linux; ppc64le

```console
$ docker pull tomcat@sha256:deb11dff57e9cfc9b06757793233397ae9b72515ac6a01ea24efd80a8de69d8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.5 MB (226534721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:440dfa7c72f1e95a20288d06f1d666a77cfdc5f74b00c498015c9c8c62021c75`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 03 Sep 2026 12:57:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:57:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:57:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:57:55 GMT
ADD file:432b9684ec0569be2be149e91ac77c16c05d7cfbb3e9cfbb7fd24d3ec4e3542c in / 
# Thu, 03 Sep 2026 12:57:55 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:46:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 01:46:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 01:46:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 01:46:09 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:46:09 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 09 Sep 2026 01:46:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='543173615a7e6e8905d99c45f9d0caeb5faf1a6dcdc25cbb5337f53e7ef06c78';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 01:46:41 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 01:46:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:46:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 01:46:42 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 07:04:08 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 09 Sep 2026 07:04:08 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 07:04:08 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 09 Sep 2026 07:04:08 GMT
WORKDIR /usr/local/tomcat
# Wed, 09 Sep 2026 07:04:08 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 09 Sep 2026 07:04:08 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 09 Sep 2026 07:04:08 GMT
ENV TOMCAT_MAJOR=11
# Wed, 09 Sep 2026 07:04:08 GMT
ENV TOMCAT_VERSION=11.0.25
# Wed, 09 Sep 2026 07:04:08 GMT
ENV TOMCAT_SHA512=81339c046dff1b363a80a3bccf80cb391660a6828dd8ae042180ceb11c8b1614317143e60b311b9e791dab585bb046b777234667acce7dca2203a74b37bf20f2
# Wed, 09 Sep 2026 07:07:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-11/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Wed, 09 Sep 2026 07:07:34 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 09 Sep 2026 07:07:34 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 09 Sep 2026 07:07:34 GMT
ENTRYPOINT []
# Wed, 09 Sep 2026 07:07:34 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1997eb335ba6138cfcbb2c07cc4ed606ec6ac9f77f5b3279aeecfc403734ecd`  
		Last Modified: Wed, 09 Sep 2026 01:47:52 GMT  
		Size: 22.5 MB (22540295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c536631c0efe3d4e612f0e049d4a4f38198e1e045f068b8c6267a0522b5df6`  
		Last Modified: Wed, 09 Sep 2026 01:47:57 GMT  
		Size: 145.7 MB (145681226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78447f7936445116c8034c0d1e652f6457ae4c700c49203dca9aa1eacd45b4f3`  
		Last Modified: Wed, 09 Sep 2026 01:47:51 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0465b7222a87bdefd469df9580c3c4a61ab1597ab5cb084c6d4cabec576fd9`  
		Last Modified: Wed, 09 Sep 2026 01:47:51 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0dacf86d662e09ae56f0e89d308fa776f8c2aa561d610a7f397481bd125d53`  
		Last Modified: Wed, 09 Sep 2026 07:08:16 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28878e5ed2ec26b5dce0dc33647ce354ba66564f3dae5e19ccc1b3bb7897564a`  
		Last Modified: Wed, 09 Sep 2026 07:08:17 GMT  
		Size: 23.6 MB (23607696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jdk17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:9f17f2158398d556b44d47f8e1a064051afb1582ef84fe695244b8e9ad7689c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4229120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e81dfbeba7e3927653c5bcf9da429d95e53f14a0ac787009ab4910f715f86c7`

```dockerfile
```

-	Layers:
	-	`sha256:db4771ff479423d3d447a42dadb2722f85687463fc33551f273b8fceedb58288`  
		Last Modified: Wed, 09 Sep 2026 07:08:17 GMT  
		Size: 4.2 MB (4198659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19bd5fd0d2c80bc0ee1c9ea2d2d5cb8b40886a0df9eb254c5730bb1b6144c49b`  
		Last Modified: Wed, 09 Sep 2026 07:08:16 GMT  
		Size: 30.5 KB (30461 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jdk17-temurin-jammy` - linux; s390x

```console
$ docker pull tomcat@sha256:4f1f60f789dcb7275a2d48a5343787cb57259a1e5eacd7732469d9f12a54b923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.1 MB (199144884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0121b06e0d2fc089edb575341a7f95a49d850cf5d8d3188d7ca5cfc5e378ea`
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
# Fri, 21 Aug 2026 18:28:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:28:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:28:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:28:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:28:12 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:28:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='543173615a7e6e8905d99c45f9d0caeb5faf1a6dcdc25cbb5337f53e7ef06c78';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:28:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:28:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:28:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:28:18 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 18:47:45 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 21 Aug 2026 18:47:45 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:47:45 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 21 Aug 2026 18:47:45 GMT
WORKDIR /usr/local/tomcat
# Fri, 21 Aug 2026 18:47:45 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 18:47:45 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 18:47:45 GMT
ENV TOMCAT_MAJOR=11
# Fri, 21 Aug 2026 18:47:45 GMT
ENV TOMCAT_VERSION=11.0.25
# Fri, 21 Aug 2026 18:47:45 GMT
ENV TOMCAT_SHA512=81339c046dff1b363a80a3bccf80cb391660a6828dd8ae042180ceb11c8b1614317143e60b311b9e791dab585bb046b777234667acce7dca2203a74b37bf20f2
# Fri, 21 Aug 2026 18:48:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-11/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Fri, 21 Aug 2026 18:48:06 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 21 Aug 2026 18:48:06 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 18:48:06 GMT
ENTRYPOINT []
# Fri, 21 Aug 2026 18:48:06 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:3c9503cfff1c82d12820c3c752940964f6a091cb183b44e45fc5a003b8d47e87`  
		Last Modified: Mon, 10 Aug 2026 20:09:16 GMT  
		Size: 28.2 MB (28210903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f39fc8d447212b2f25e0314ae46b067afb5c1cf1819dfb5f2e422c391537d39`  
		Last Modified: Fri, 21 Aug 2026 18:28:43 GMT  
		Size: 20.4 MB (20369530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569b6a81e6de24cda56fc0016c409e8bb8dcf7d0fd34f1d7750aec0f8f42558e`  
		Last Modified: Fri, 21 Aug 2026 18:28:45 GMT  
		Size: 135.9 MB (135877816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:139d8a367130b6314e7a441ae3abb15b5602948aed875dd312d482a5bf51bcac`  
		Last Modified: Fri, 21 Aug 2026 18:28:42 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a9cc47d00a5cae6d23324f7b5e729977215970a0a31b33b20efb2a76b0f977`  
		Last Modified: Fri, 21 Aug 2026 18:28:42 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26df0213b9a17f74042a06b946c4b020ded7231d4db59dd0ba77211a0cb8c02b`  
		Last Modified: Fri, 21 Aug 2026 18:48:18 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9c1b899efe5737198bc564a4b284825df29a2741bb70de44a2856458f3587e6`  
		Last Modified: Fri, 21 Aug 2026 18:48:19 GMT  
		Size: 14.7 MB (14683809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jdk17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:31f5312054148c2624a0afda93f9f01bc1b680804c5acb4e57bf79a5c7ccce76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4125159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b694b23fc89147fc539efa83b13b688de1b70e3538e3d047dc8acc0e1249fe96`

```dockerfile
```

-	Layers:
	-	`sha256:ea59bfb70d5e90158705f5a1c32458b126a90f97491adfbb46616443197f09c0`  
		Last Modified: Fri, 21 Aug 2026 18:48:18 GMT  
		Size: 4.1 MB (4094746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95dcd95fc4e91f3e60ca56629d5c0f00891acf6712aee38094e1f4de6faa3224`  
		Last Modified: Fri, 21 Aug 2026 18:48:18 GMT  
		Size: 30.4 KB (30413 bytes)  
		MIME: application/vnd.in-toto+json
