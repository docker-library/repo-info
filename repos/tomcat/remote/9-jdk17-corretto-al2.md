## `tomcat:9-jdk17-corretto-al2`

```console
$ docker pull tomcat@sha256:dad6d5a59c760b6b0326d284eeb052822632f528fcad1c33df9b13477e48cd52
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomcat:9-jdk17-corretto-al2` - linux; amd64

```console
$ docker pull tomcat@sha256:6ed0a778049852f81b2e10cc712dad50a9ff58945fabac0d3f35a5e35e83ca3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.1 MB (234073708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b901225fe0d1d326258566c8aaeb0e487c5a10f2a6de3fdd3950ac62144612c0`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 22 Jun 2026 17:59:59 GMT
COPY /rootfs/ / # buildkit
# Mon, 22 Jun 2026 17:59:59 GMT
CMD ["/bin/bash"]
# Mon, 22 Jun 2026 18:14:18 GMT
ARG version=17.0.19.10-1
# Mon, 22 Jun 2026 18:14:18 GMT
# ARGS: version=17.0.19.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 22 Jun 2026 18:14:18 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 18:14:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Tue, 07 Jul 2026 17:52:08 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 07 Jul 2026 17:52:08 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 17:52:08 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 07 Jul 2026 17:52:08 GMT
WORKDIR /usr/local/tomcat
# Tue, 07 Jul 2026 17:52:08 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 07 Jul 2026 17:52:08 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 07 Jul 2026 17:52:08 GMT
ENV TOMCAT_MAJOR=9
# Tue, 07 Jul 2026 17:52:08 GMT
ENV TOMCAT_VERSION=9.0.120
# Tue, 07 Jul 2026 17:52:08 GMT
ENV TOMCAT_SHA512=07eb6d9639c3e69af81171a16ccff1c19b7fd5b2e87e3646851f0a3f42a4ce3c1bf128fbe40fc978a08935ba4f0400ef3b43ded3e470b9aaf23b97a9e1fa0858
# Tue, 07 Jul 2026 17:52:29 GMT
RUN set -eux; 		if ! command -v yumdb > /dev/null; then 		yum install -y --setopt=skip_missing_names_on_install=False yum-utils; 		yumdb set reason dep yum-utils; 	fi; 	_yum_install_temporary() { ( set -eu +x; 		local pkg todo=''; 		for pkg; do 			if ! rpm --query "$pkg" > /dev/null 2>&1; then 				todo="$todo $pkg"; 			fi; 		done; 		if [ -n "$todo" ]; then 			set -x; 			yum install -y --setopt=skip_missing_names_on_install=False $todo; 			yumdb set reason dep $todo; 		fi; 	) }; 	_yum_install_temporary gzip tar; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	_yum_install_temporary 		apr-devel 		gcc 		make 		openssl11-devel 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ && $(NF-1) != "=>" { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt rpm --query --whatprovides 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r yumdb set reason user 	; 		yum autoremove -y; 	yum clean all; 	rm -rf /var/cache/yum; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Tue, 07 Jul 2026 17:52:29 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 07 Jul 2026 17:52:29 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 07 Jul 2026 17:52:29 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:b5a31d0a32c9342b5b53f098c4d8ac4fadeb6cbc6b34b2e4424fd39eb880bf9a`  
		Last Modified: Sat, 13 Jun 2026 04:09:34 GMT  
		Size: 62.9 MB (62942019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b91bfd2599ba044359e57f7483de74c4605efe350141bbeb5e51bfa4a3c23b9b`  
		Last Modified: Mon, 22 Jun 2026 18:14:39 GMT  
		Size: 152.7 MB (152678781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b79bc27013a5abde6e66db9f13b500a629aceee1cff57bd513583579f01903d`  
		Last Modified: Tue, 07 Jul 2026 17:52:40 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f013f5a07bac301298cfab1b352579e864c0a831bb075e82886459cbca855ad4`  
		Last Modified: Tue, 07 Jul 2026 17:52:41 GMT  
		Size: 18.5 MB (18452706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jdk17-corretto-al2` - unknown; unknown

```console
$ docker pull tomcat@sha256:159b66211b767e69204f39a834a92828acdc0ad200998a421c5f1302ea004f65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5632623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a07e288fda3ee0c927ff2e3ee5c6430fe813c253f4a49f681224e03a3b6ac08a`

```dockerfile
```

-	Layers:
	-	`sha256:87c9ee64ef74b19ce44266cb3f642f93cb0c26c633c6cc8dbf275f7730567c56`  
		Last Modified: Tue, 07 Jul 2026 17:52:41 GMT  
		Size: 5.6 MB (5603421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da6f7792c6f97f08b2908f03bd9e82fd73c0b61709ac473ea7173d8cae4ee244`  
		Last Modified: Tue, 07 Jul 2026 17:52:40 GMT  
		Size: 29.2 KB (29202 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jdk17-corretto-al2` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:e9194f8b34b7dc05b9a10d790e8b3978577283f08c78db157af49157b7284ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.4 MB (234424187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5649d4c24e7ea8bf30f4f3fd95661496357ab196f365f917973bb70e37cf7cff`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 22 Jun 2026 18:00:28 GMT
COPY /rootfs/ / # buildkit
# Mon, 22 Jun 2026 18:00:28 GMT
CMD ["/bin/bash"]
# Mon, 22 Jun 2026 18:14:16 GMT
ARG version=17.0.19.10-1
# Mon, 22 Jun 2026 18:14:16 GMT
# ARGS: version=17.0.19.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 22 Jun 2026 18:14:16 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 18:14:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Tue, 07 Jul 2026 17:51:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 07 Jul 2026 17:51:59 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 17:51:59 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 07 Jul 2026 17:51:59 GMT
WORKDIR /usr/local/tomcat
# Tue, 07 Jul 2026 17:51:59 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 07 Jul 2026 17:51:59 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 07 Jul 2026 17:51:59 GMT
ENV TOMCAT_MAJOR=9
# Tue, 07 Jul 2026 17:51:59 GMT
ENV TOMCAT_VERSION=9.0.120
# Tue, 07 Jul 2026 17:51:59 GMT
ENV TOMCAT_SHA512=07eb6d9639c3e69af81171a16ccff1c19b7fd5b2e87e3646851f0a3f42a4ce3c1bf128fbe40fc978a08935ba4f0400ef3b43ded3e470b9aaf23b97a9e1fa0858
# Tue, 07 Jul 2026 17:52:17 GMT
RUN set -eux; 		if ! command -v yumdb > /dev/null; then 		yum install -y --setopt=skip_missing_names_on_install=False yum-utils; 		yumdb set reason dep yum-utils; 	fi; 	_yum_install_temporary() { ( set -eu +x; 		local pkg todo=''; 		for pkg; do 			if ! rpm --query "$pkg" > /dev/null 2>&1; then 				todo="$todo $pkg"; 			fi; 		done; 		if [ -n "$todo" ]; then 			set -x; 			yum install -y --setopt=skip_missing_names_on_install=False $todo; 			yumdb set reason dep $todo; 		fi; 	) }; 	_yum_install_temporary gzip tar; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	_yum_install_temporary 		apr-devel 		gcc 		make 		openssl11-devel 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ && $(NF-1) != "=>" { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt rpm --query --whatprovides 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r yumdb set reason user 	; 		yum autoremove -y; 	yum clean all; 	rm -rf /var/cache/yum; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Tue, 07 Jul 2026 17:52:18 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 07 Jul 2026 17:52:18 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 07 Jul 2026 17:52:18 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:4b30ecc040ec91b7e580ef7f93f591eaf80422b110a473c44b4d0dbcb2301395`  
		Last Modified: Wed, 17 Jun 2026 13:06:48 GMT  
		Size: 64.8 MB (64794736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0d804c084121f03b54fc16c0bdbdcfd660261c53137d6c83b654614d5f7772`  
		Last Modified: Mon, 22 Jun 2026 18:14:37 GMT  
		Size: 151.3 MB (151277376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c430c2dd243c12040d98f99ba99b60fdc3515b9b656b6478598a4ce9ba0b1e8b`  
		Last Modified: Tue, 07 Jul 2026 17:52:29 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19dc9b840d1797e259d827d062c58d17db49d88a5a688ec7a22297b06eef6eb6`  
		Last Modified: Tue, 07 Jul 2026 17:52:30 GMT  
		Size: 18.4 MB (18351872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jdk17-corretto-al2` - unknown; unknown

```console
$ docker pull tomcat@sha256:1e5ded7b518c8bcd3dfe864045999233d647822744c042b5dab37396c10efd9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5631447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cd8ab9ed7bf5b4cff255e9837935fd8c6a3e405799f2d86d5f64e91cd9a3c85`

```dockerfile
```

-	Layers:
	-	`sha256:171346baa7a5a6fe3c702dcc5fb25356c117ef3f914562aff41b6543944485e8`  
		Last Modified: Tue, 07 Jul 2026 17:52:29 GMT  
		Size: 5.6 MB (5602086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5cd397e07a673dbdcd55d8eb09facd756eab9b4f2c2b22ebd590d3d11887b64`  
		Last Modified: Tue, 07 Jul 2026 17:52:29 GMT  
		Size: 29.4 KB (29361 bytes)  
		MIME: application/vnd.in-toto+json
