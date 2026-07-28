## `tomcat:9-jdk8-corretto`

```console
$ docker pull tomcat@sha256:d0a9d49a6deaf14218883abd5d2a113369c2d65fdfca74adf225cd45c70855f0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomcat:9-jdk8-corretto` - linux; amd64

```console
$ docker pull tomcat@sha256:acab8d23fce3b0ac64e9d8de09b2ce03080b6e1e7fc6541bc5ff96d723541220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.5 MB (141466540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18e7a26095cde70b8f456715b6c74300cdd9862153b316e22132a06e223474b6`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:37 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:27 GMT
ARG version=1.8.0_502.b07-1
# Mon, 27 Jul 2026 21:35:27 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 27 Jul 2026 21:35:27 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Mon, 27 Jul 2026 22:03:57 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 27 Jul 2026 22:03:57 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:03:57 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 27 Jul 2026 22:03:57 GMT
WORKDIR /usr/local/tomcat
# Mon, 27 Jul 2026 22:03:57 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 27 Jul 2026 22:03:57 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 27 Jul 2026 22:03:57 GMT
ENV TOMCAT_MAJOR=9
# Mon, 27 Jul 2026 22:03:57 GMT
ENV TOMCAT_VERSION=9.0.120
# Mon, 27 Jul 2026 22:03:57 GMT
ENV TOMCAT_SHA512=07eb6d9639c3e69af81171a16ccff1c19b7fd5b2e87e3646851f0a3f42a4ce3c1bf128fbe40fc978a08935ba4f0400ef3b43ded3e470b9aaf23b97a9e1fa0858
# Mon, 27 Jul 2026 22:04:17 GMT
RUN set -eux; 		if ! command -v yumdb > /dev/null; then 		yum install -y --setopt=skip_missing_names_on_install=False yum-utils; 		yumdb set reason dep yum-utils; 	fi; 	_yum_install_temporary() { ( set -eu +x; 		local pkg todo=''; 		for pkg; do 			if ! rpm --query "$pkg" > /dev/null 2>&1; then 				todo="$todo $pkg"; 			fi; 		done; 		if [ -n "$todo" ]; then 			set -x; 			yum install -y --setopt=skip_missing_names_on_install=False $todo; 			yumdb set reason dep $todo; 		fi; 	) }; 	_yum_install_temporary gzip tar; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	_yum_install_temporary 		apr-devel 		gcc 		make 		openssl11-devel 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ && $(NF-1) != "=>" { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt rpm --query --whatprovides 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r yumdb set reason user 	; 		yum autoremove -y; 	yum clean all; 	rm -rf /var/cache/yum; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 27 Jul 2026 22:04:18 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 27 Jul 2026 22:04:18 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 27 Jul 2026 22:04:18 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ecb305a9fa099768e2ab2db16a63b4d1c27e400b85713b11b7acf4f08d3c4246`  
		Last Modified: Tue, 21 Jul 2026 12:36:19 GMT  
		Size: 63.0 MB (62956821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b46df55cd9eb7da3f9d0b6c7eb26eefaa6e393cebc55058091c6a62f16db338f`  
		Last Modified: Mon, 27 Jul 2026 21:35:42 GMT  
		Size: 60.1 MB (60065872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f417bd0f205f2cb6c2777696595493a9225eb2d4e2f9b47674767603564f729f`  
		Last Modified: Mon, 27 Jul 2026 22:04:28 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:787d4599c7c49b807af14f5b5218b30544ad53f6206c459d97bc51120e79ddab`  
		Last Modified: Mon, 27 Jul 2026 22:04:29 GMT  
		Size: 18.4 MB (18443644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jdk8-corretto` - unknown; unknown

```console
$ docker pull tomcat@sha256:1e0eec241b0e57c81eeb4001eddb6cce32558b318c999df29b0ef7bc2653e444
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5452064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75c06919cedc8d30b1d2385256b645f06d07620c8d85de20ac42cfb377031e9d`

```dockerfile
```

-	Layers:
	-	`sha256:93b2a1c5759f6a89e9cf2603d2a7b93582543aa66851e4c042e68e11c522e6f0`  
		Last Modified: Mon, 27 Jul 2026 22:04:28 GMT  
		Size: 5.4 MB (5422872 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29699b5c039f2c5a77f4eaa526cd2ddf7b0d7122b13fa2df7c866723c63a8541`  
		Last Modified: Mon, 27 Jul 2026 22:04:28 GMT  
		Size: 29.2 KB (29192 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jdk8-corretto` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:d9dad7189e1c0ab3ea24eddce77d77cf7c0d0922f58e3fcb2a6ff118af8ae382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143045456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b24582209f88cc169d4ef40d32de40beb1e2d92e8fa0c086790e686e17b47b01`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:38 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:38 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:34:26 GMT
ARG version=1.8.0_502.b07-1
# Mon, 27 Jul 2026 21:34:26 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 27 Jul 2026 21:34:26 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:34:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Mon, 27 Jul 2026 22:03:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 27 Jul 2026 22:03:24 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:03:24 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 27 Jul 2026 22:03:24 GMT
WORKDIR /usr/local/tomcat
# Mon, 27 Jul 2026 22:03:24 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 27 Jul 2026 22:03:24 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 27 Jul 2026 22:03:24 GMT
ENV TOMCAT_MAJOR=9
# Mon, 27 Jul 2026 22:03:24 GMT
ENV TOMCAT_VERSION=9.0.120
# Mon, 27 Jul 2026 22:03:24 GMT
ENV TOMCAT_SHA512=07eb6d9639c3e69af81171a16ccff1c19b7fd5b2e87e3646851f0a3f42a4ce3c1bf128fbe40fc978a08935ba4f0400ef3b43ded3e470b9aaf23b97a9e1fa0858
# Mon, 27 Jul 2026 22:03:43 GMT
RUN set -eux; 		if ! command -v yumdb > /dev/null; then 		yum install -y --setopt=skip_missing_names_on_install=False yum-utils; 		yumdb set reason dep yum-utils; 	fi; 	_yum_install_temporary() { ( set -eu +x; 		local pkg todo=''; 		for pkg; do 			if ! rpm --query "$pkg" > /dev/null 2>&1; then 				todo="$todo $pkg"; 			fi; 		done; 		if [ -n "$todo" ]; then 			set -x; 			yum install -y --setopt=skip_missing_names_on_install=False $todo; 			yumdb set reason dep $todo; 		fi; 	) }; 	_yum_install_temporary gzip tar; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	_yum_install_temporary 		apr-devel 		gcc 		make 		openssl11-devel 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ && $(NF-1) != "=>" { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt rpm --query --whatprovides 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r yumdb set reason user 	; 		yum autoremove -y; 	yum clean all; 	rm -rf /var/cache/yum; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 27 Jul 2026 22:03:43 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 27 Jul 2026 22:03:43 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 27 Jul 2026 22:03:43 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0a46a1a412d5f6c5cdb7477c659ba32441211eaf54fce3b67c715aed53a63deb`  
		Last Modified: Fri, 24 Jul 2026 16:24:54 GMT  
		Size: 64.8 MB (64800064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e71e82e47a2c8d03ba5f6124963a8b98d2f705065990e294ecf4be6925d59e3b`  
		Last Modified: Mon, 27 Jul 2026 21:34:42 GMT  
		Size: 59.9 MB (59888812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d187685081a16093ec7cd2f3b4b804fe1dd22146274742ccdfaa03b65209ccd`  
		Last Modified: Mon, 27 Jul 2026 22:03:54 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4408a7bdd3d53af585d215ef2f18a6a7e8c4decc07dfc3f6eb6be39a388529d5`  
		Last Modified: Mon, 27 Jul 2026 22:03:54 GMT  
		Size: 18.4 MB (18356377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jdk8-corretto` - unknown; unknown

```console
$ docker pull tomcat@sha256:7160ebaff665d5049cd4699f93debc1f7678b67b5b1c7ac731e8dfebc115fb76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5451772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b901ab0f0243a3053d5736f0a0adf29a31025e1bbb499d23f7444c0138dfb46`

```dockerfile
```

-	Layers:
	-	`sha256:7dffeba853e36b5e647bc64adba39994b91ce6063b432ab34bfe6806d9e01719`  
		Last Modified: Mon, 27 Jul 2026 22:03:54 GMT  
		Size: 5.4 MB (5422422 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22604c2cf42e14dcff2919047c4161a1a1ef29e40f8b7b7b65a948415853202d`  
		Last Modified: Mon, 27 Jul 2026 22:03:53 GMT  
		Size: 29.4 KB (29350 bytes)  
		MIME: application/vnd.in-toto+json
