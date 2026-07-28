## `tomcat:9-jdk21-corretto-al2`

```console
$ docker pull tomcat@sha256:67128d01b8c1ff6755d3532bae5be0cc7bcff5f8a43e931c9eebbc83d2978be6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomcat:9-jdk21-corretto-al2` - linux; amd64

```console
$ docker pull tomcat@sha256:9388cb7c096734a4f95ee35c2c745c075202673e7250e798a2247a9a0a458778
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.0 MB (247002600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33dd3151ea62a481b895aed2f685eb5ca6e4e76a3cb580025bc8bd8e092bf236`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:37 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:36:58 GMT
ARG version=21.0.12.8-1
# Mon, 27 Jul 2026 21:36:58 GMT
# ARGS: version=21.0.12.8-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 27 Jul 2026 21:36:58 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:36:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Mon, 27 Jul 2026 22:03:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 27 Jul 2026 22:03:47 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:03:47 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 27 Jul 2026 22:03:47 GMT
WORKDIR /usr/local/tomcat
# Mon, 27 Jul 2026 22:03:47 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 27 Jul 2026 22:03:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 27 Jul 2026 22:03:47 GMT
ENV TOMCAT_MAJOR=9
# Mon, 27 Jul 2026 22:03:47 GMT
ENV TOMCAT_VERSION=9.0.120
# Mon, 27 Jul 2026 22:03:47 GMT
ENV TOMCAT_SHA512=07eb6d9639c3e69af81171a16ccff1c19b7fd5b2e87e3646851f0a3f42a4ce3c1bf128fbe40fc978a08935ba4f0400ef3b43ded3e470b9aaf23b97a9e1fa0858
# Mon, 27 Jul 2026 22:04:05 GMT
RUN set -eux; 		if ! command -v yumdb > /dev/null; then 		yum install -y --setopt=skip_missing_names_on_install=False yum-utils; 		yumdb set reason dep yum-utils; 	fi; 	_yum_install_temporary() { ( set -eu +x; 		local pkg todo=''; 		for pkg; do 			if ! rpm --query "$pkg" > /dev/null 2>&1; then 				todo="$todo $pkg"; 			fi; 		done; 		if [ -n "$todo" ]; then 			set -x; 			yum install -y --setopt=skip_missing_names_on_install=False $todo; 			yumdb set reason dep $todo; 		fi; 	) }; 	_yum_install_temporary gzip tar; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	_yum_install_temporary 		apr-devel 		gcc 		make 		openssl11-devel 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ && $(NF-1) != "=>" { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt rpm --query --whatprovides 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r yumdb set reason user 	; 		yum autoremove -y; 	yum clean all; 	rm -rf /var/cache/yum; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 27 Jul 2026 22:04:06 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 27 Jul 2026 22:04:06 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 27 Jul 2026 22:04:06 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ecb305a9fa099768e2ab2db16a63b4d1c27e400b85713b11b7acf4f08d3c4246`  
		Last Modified: Tue, 21 Jul 2026 12:36:19 GMT  
		Size: 63.0 MB (62956821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8b8ac634634cab9e22ae0541ccd003484b02e5d8040fb3fa1ee00de6adff11`  
		Last Modified: Mon, 27 Jul 2026 21:37:18 GMT  
		Size: 165.6 MB (165612285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e3d9707027f8b0da814eb9687c6e1407ca694a517aaa5647adf85d00437b6c6`  
		Last Modified: Mon, 27 Jul 2026 22:04:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12168b7473c90d7729dc4b996fd9810f681ca04adc1708e00a7257d368fe8602`  
		Last Modified: Mon, 27 Jul 2026 22:04:17 GMT  
		Size: 18.4 MB (18433291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jdk21-corretto-al2` - unknown; unknown

```console
$ docker pull tomcat@sha256:d032552bd8a357c23b8a5ac11f738b12a430bb643bdc3898f423d09d985f0472
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5632527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4379ac17de74a09ca004bf20cd4707b84b538fc97f29080b1de614001e5a501e`

```dockerfile
```

-	Layers:
	-	`sha256:98c22175a68d8034e64fa968457977bc79e82ec771e05801ffaeadf8aa634255`  
		Last Modified: Mon, 27 Jul 2026 22:04:17 GMT  
		Size: 5.6 MB (5603324 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a2e72f2ac4ae7fe562c9d558291f1c6b782d536e803f94fd77267ddd1a0b610`  
		Last Modified: Mon, 27 Jul 2026 22:04:17 GMT  
		Size: 29.2 KB (29203 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jdk21-corretto-al2` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:d2f51285bcda2eac53b7da6d388a21188cee286aca6fcf4674e200d435f8253f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246940589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0320538786b9937ab167f896317e80c1a8839367191e819bed3f006d57b00e1b`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:38 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:38 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:36:18 GMT
ARG version=21.0.12.8-1
# Mon, 27 Jul 2026 21:36:18 GMT
# ARGS: version=21.0.12.8-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 27 Jul 2026 21:36:18 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:36:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Mon, 27 Jul 2026 22:02:40 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 27 Jul 2026 22:02:40 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:02:40 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 27 Jul 2026 22:02:40 GMT
WORKDIR /usr/local/tomcat
# Mon, 27 Jul 2026 22:02:40 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 27 Jul 2026 22:02:40 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 27 Jul 2026 22:02:40 GMT
ENV TOMCAT_MAJOR=9
# Mon, 27 Jul 2026 22:02:40 GMT
ENV TOMCAT_VERSION=9.0.120
# Mon, 27 Jul 2026 22:02:40 GMT
ENV TOMCAT_SHA512=07eb6d9639c3e69af81171a16ccff1c19b7fd5b2e87e3646851f0a3f42a4ce3c1bf128fbe40fc978a08935ba4f0400ef3b43ded3e470b9aaf23b97a9e1fa0858
# Mon, 27 Jul 2026 22:03:01 GMT
RUN set -eux; 		if ! command -v yumdb > /dev/null; then 		yum install -y --setopt=skip_missing_names_on_install=False yum-utils; 		yumdb set reason dep yum-utils; 	fi; 	_yum_install_temporary() { ( set -eu +x; 		local pkg todo=''; 		for pkg; do 			if ! rpm --query "$pkg" > /dev/null 2>&1; then 				todo="$todo $pkg"; 			fi; 		done; 		if [ -n "$todo" ]; then 			set -x; 			yum install -y --setopt=skip_missing_names_on_install=False $todo; 			yumdb set reason dep $todo; 		fi; 	) }; 	_yum_install_temporary gzip tar; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	_yum_install_temporary 		apr-devel 		gcc 		make 		openssl11-devel 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ && $(NF-1) != "=>" { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt rpm --query --whatprovides 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r yumdb set reason user 	; 		yum autoremove -y; 	yum clean all; 	rm -rf /var/cache/yum; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Mon, 27 Jul 2026 22:03:02 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 27 Jul 2026 22:03:02 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 27 Jul 2026 22:03:02 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0a46a1a412d5f6c5cdb7477c659ba32441211eaf54fce3b67c715aed53a63deb`  
		Last Modified: Fri, 24 Jul 2026 16:24:54 GMT  
		Size: 64.8 MB (64800064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116b5f2dc6894c3a34807a21914d994f63ff05eee74e5a4f59a129e124cd7705`  
		Last Modified: Mon, 27 Jul 2026 21:36:41 GMT  
		Size: 163.8 MB (163783305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9226ec7acd525e9c2cfc70d502f08846f4988b797907a1e1b662def6195069`  
		Last Modified: Mon, 27 Jul 2026 22:03:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:428805dd602cfd67a125a4198349bbedc7232a4a06db65ee6b850e41c0e7038d`  
		Last Modified: Mon, 27 Jul 2026 22:03:14 GMT  
		Size: 18.4 MB (18357017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jdk21-corretto-al2` - unknown; unknown

```console
$ docker pull tomcat@sha256:3be7c89849e6ccebe860227ac285a33398017aeb7474cefd428bc7ae2efb3d85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5631350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c93ab502705ebd33d62078abab35a3a56230b8a9defdd3a7eb1642380c58b03`

```dockerfile
```

-	Layers:
	-	`sha256:6263e0ac9eed6c3dac8f121f24a3db7820b5266aad9916900e43011d35afb05b`  
		Last Modified: Mon, 27 Jul 2026 22:03:13 GMT  
		Size: 5.6 MB (5601989 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b8007cbb7f917c9dfb4a782063ce0cc8add43772d5265b443e3203f1e6264d5`  
		Last Modified: Mon, 27 Jul 2026 22:03:13 GMT  
		Size: 29.4 KB (29361 bytes)  
		MIME: application/vnd.in-toto+json
