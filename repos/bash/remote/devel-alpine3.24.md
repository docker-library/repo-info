## `bash:devel-alpine3.24`

```console
$ docker pull bash@sha256:a1c08f5a6f59ef4e59cb643bbcfba0866092c0955264cbea2b7eea7f45dd755e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `bash:devel-alpine3.24` - linux; amd64

```console
$ docker pull bash@sha256:bee78a7b91b171f159c29f116124e6089a83831efbb2d53527e2901970a1fcce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6899819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c86c94dddcda2181cda959099bf496d3a5af87dcd0473fe464337c58b1f00d60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:23:42 GMT
ENV _BASH_COMMIT=f26caaa17864b10e80056eed8fd8e2c0d5eb1b4b
# Tue, 15 Sep 2026 22:23:42 GMT
ENV _BASH_VERSION=devel-20260908
# Tue, 15 Sep 2026 22:23:42 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 15 Sep 2026 22:24:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 15 Sep 2026 22:24:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:24:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:24:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70828966bcc7ff05611ee98a1272cf83e782615682bab0c2662d69b8d2d79b31`  
		Last Modified: Tue, 15 Sep 2026 22:24:21 GMT  
		Size: 458.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f24491d83eaefa8b6aa2c53eaaeae3643c73b3bacb6827e5c53313628cd9c85`  
		Last Modified: Tue, 15 Sep 2026 22:24:21 GMT  
		Size: 3.1 MB (3052639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce51005604c1ffafc9489a48893f72adf5355a2496aec68db70b057918abad3`  
		Last Modified: Tue, 15 Sep 2026 22:24:21 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:78fd55009963c0ec18935e45692e66b57b9d362e91f1f64b8ec40a7f883503fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.4 KB (135376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ed053628748888547555d1f8ac134bd23f866d184af18cd589ec895a17cc23`

```dockerfile
```

-	Layers:
	-	`sha256:f99970341828fe1dc6c0cb5189e56b26d5099a4735656adf694f114f440af209`  
		Last Modified: Tue, 15 Sep 2026 22:24:21 GMT  
		Size: 117.1 KB (117128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:701a834bb2cec6c2778ab9456997548dcecefd29c194fc6a9c81324b281dd767`  
		Last Modified: Tue, 15 Sep 2026 22:24:21 GMT  
		Size: 18.2 KB (18248 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; arm variant v6

```console
$ docker pull bash@sha256:2228fe51db1f2560d42bfee7213b78f88a469491734ee2ccf2e7fd2c6ac82cad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6566146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:028b0313ae77ad64b7b0dfdc7c305d7591dc67790295a55324f878defbdb4be2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:01:40 GMT
ENV _BASH_COMMIT=f26caaa17864b10e80056eed8fd8e2c0d5eb1b4b
# Tue, 15 Sep 2026 23:01:40 GMT
ENV _BASH_VERSION=devel-20260908
# Tue, 15 Sep 2026 23:01:40 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 15 Sep 2026 23:02:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 15 Sep 2026 23:02:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:02:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:02:26 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f6c9d0b3e0b5a6826f4941bfc50fa6acb69cc164040913f7a11a62b81000449`  
		Last Modified: Tue, 15 Sep 2026 23:02:30 GMT  
		Size: 459.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae92543c9d96eb22a30ba12db4f77ac1a2efb50a6476a686377254b3d9430d1`  
		Last Modified: Tue, 15 Sep 2026 23:02:30 GMT  
		Size: 3.0 MB (3011901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:292da15705440e6193d16eee33de940fa331df883079bcd6403f41c3ddb6049d`  
		Last Modified: Tue, 15 Sep 2026 23:02:30 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:02a3273bcb65a19cd949c7f856f2a1a2caca685586af9f99638e50197cb72a6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 KB (18113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365707d1f74ac336f86c41b038962c0bd5f46d4159aab306e93b6f3f5929fead`

```dockerfile
```

-	Layers:
	-	`sha256:0e734a2915d6fbcb6270611410b6ec4d6b67df7094cec6d1dd91fac0baa8f9bc`  
		Last Modified: Tue, 15 Sep 2026 23:02:30 GMT  
		Size: 18.1 KB (18113 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; arm variant v7

```console
$ docker pull bash@sha256:f48bdc637796f98e4d58f35e1a2ba273e6f718b1b1d0a26700b3bcef00c4f46e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6220737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6089bc857e36d61531098e887682a6be222e5721a8716277a10c2bce816cc9e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:07:06 GMT
ENV _BASH_COMMIT=f26caaa17864b10e80056eed8fd8e2c0d5eb1b4b
# Tue, 15 Sep 2026 23:07:06 GMT
ENV _BASH_VERSION=devel-20260908
# Tue, 15 Sep 2026 23:07:06 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 15 Sep 2026 23:07:50 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 15 Sep 2026 23:07:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:07:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:07:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceb1f595600d276d6e63bc59e506071d72c26009be54e8733e91d3120c910ea5`  
		Last Modified: Tue, 15 Sep 2026 23:07:57 GMT  
		Size: 459.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a0c4355eb126b86d57f946b48232ba77f6c8d1b0f53fad793ab0c640d20900`  
		Last Modified: Tue, 15 Sep 2026 23:07:57 GMT  
		Size: 3.0 MB (2959326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3156db0b32c636c680420647f9787c03bf129e8c46140fe6b83997b2bc7fa48`  
		Last Modified: Tue, 15 Sep 2026 23:07:56 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:2b0697bd88adbdcd9b6237ab9fd1fe5d23ec611d9af52e5910d3067417788634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 KB (134842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86999e1542c8476d5ba3f6783583be4ffdfe94ea65eaf0d6549948eec37cf5f7`

```dockerfile
```

-	Layers:
	-	`sha256:a44eee1351160ca4106d5b9a0d0413c21320b5409c6bd5ded6afabc9042559ce`  
		Last Modified: Tue, 15 Sep 2026 23:07:56 GMT  
		Size: 116.5 KB (116514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f741dc982a7d00b6e0aed5fb18bee798706ef428c21e3036a00c418f248090b`  
		Last Modified: Tue, 15 Sep 2026 23:07:56 GMT  
		Size: 18.3 KB (18328 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:76603c2b9fe6f2358073c276a624948898e5e7d7f9de22b61be28f9c0d23415a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7310964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1108dcc0d626d2e9b6d8ef91d3b9b981a48ab7009d4c0c9b107bbc9d32197292`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:37:10 GMT
ENV _BASH_COMMIT=f26caaa17864b10e80056eed8fd8e2c0d5eb1b4b
# Tue, 15 Sep 2026 22:37:10 GMT
ENV _BASH_VERSION=devel-20260908
# Tue, 15 Sep 2026 22:37:10 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 15 Sep 2026 22:37:50 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 15 Sep 2026 22:37:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:37:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:37:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a208de67b58ebd1ad53b4b88f4b71838ab96030f87fc0cc9fcc06c1ce37d730b`  
		Last Modified: Tue, 15 Sep 2026 22:37:55 GMT  
		Size: 458.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6a3df32fd510247b3740a380250555b9b83f219fc9f5270fd965e9fe2d75355`  
		Last Modified: Tue, 15 Sep 2026 22:37:55 GMT  
		Size: 3.1 MB (3127132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae346cef020ec4c9723349fca3c618c2d2d1db1ed7fb7a36a405967ebf8b91e5`  
		Last Modified: Tue, 15 Sep 2026 22:37:55 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:9a5a8b36c3bbbe3ba0dbe76c82b0ab37e2e0dd14fb770199793e108c7caa3c70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 KB (134885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85cd836ee666a76af1dc3cfcc327c7911bc986d776a32fb5a569f06bf4cc2f6f`

```dockerfile
```

-	Layers:
	-	`sha256:fe7d8fc31502333f96381419b336ee0ad6d34b6089e0bb942a6e4775139cc61d`  
		Last Modified: Tue, 15 Sep 2026 22:37:55 GMT  
		Size: 116.5 KB (116534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cb4ed54c1e24af6dc46003770f290a6cb28a6c5b133fbcd69faaadde038d735`  
		Last Modified: Tue, 15 Sep 2026 22:37:55 GMT  
		Size: 18.4 KB (18351 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; 386

```console
$ docker pull bash@sha256:472f6588a7c3e271d32c4f93a85aae958a8063694586fb89801b5ce20fd75dfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6648964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:333aa2f0eeae605d48cbba4e468a5cfe71f5cca2dbac1f7267de0e04cf109f28`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:34:23 GMT
ENV _BASH_COMMIT=f26caaa17864b10e80056eed8fd8e2c0d5eb1b4b
# Tue, 15 Sep 2026 22:34:23 GMT
ENV _BASH_VERSION=devel-20260908
# Tue, 15 Sep 2026 22:34:23 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 15 Sep 2026 22:35:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 15 Sep 2026 22:35:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:35:01 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1895b9102d57d6bfa15c4150ef781be3b4c61d6ed67f0b6a6415ab04876d95e5`  
		Last Modified: Tue, 15 Sep 2026 22:35:05 GMT  
		Size: 458.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fec8b1574b44dc66f49af12e4052ea50b8a95cedc68d2da35c61054a01fe6b0`  
		Last Modified: Tue, 15 Sep 2026 22:35:05 GMT  
		Size: 3.0 MB (2978029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce408020f75d34d340c8d9384aad7a38dbf01609a270cb255c580fe4438c125`  
		Last Modified: Tue, 15 Sep 2026 22:35:05 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:0ec21191d00eee8b69147dea8234d0bc970bfe80673e4ec43c674fea753a7a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 KB (135319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a88a8284ad3c67c0316a4c406972ea0ba11d9a4bc493f934bb36d0c3e1bba923`

```dockerfile
```

-	Layers:
	-	`sha256:a895df55ed86227252d20246b42ff3bf8887c7a37468a8d3ff0e8528c4f27f11`  
		Last Modified: Tue, 15 Sep 2026 22:35:05 GMT  
		Size: 117.1 KB (117103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11d1b28532a2c20165d5bb5fd9faabdbb7490b317b829da0b656eacb691d3f22`  
		Last Modified: Tue, 15 Sep 2026 22:35:05 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; ppc64le

```console
$ docker pull bash@sha256:4fd5576c8fd1aefb4ecd1f99b9ca9b6e0f776bd6c32760ac90ecfa3df7781af2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7181529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e4856c5ca12924013f2c1b9ae7e4f34aeecdeb9b1ed8e183dc53edfa864bf0c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 02 Sep 2026 22:08:02 GMT
ENV _BASH_COMMIT=81ddb6474bbeed1744ff0573aadc6ddeb7efbeee
# Wed, 02 Sep 2026 22:08:02 GMT
ENV _BASH_VERSION=devel-20260828
# Wed, 02 Sep 2026 22:08:02 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Wed, 02 Sep 2026 22:09:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Wed, 02 Sep 2026 22:09:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 02 Sep 2026 22:09:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 Sep 2026 22:09:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e87a1f6294a61b9427476f192d6dd9263f29ceae6ed8ec64acd8c1d085eb7cfc`  
		Last Modified: Wed, 02 Sep 2026 22:09:18 GMT  
		Size: 459.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0091a81b5cb9314168acac26b97baa69fa6eb0006a1bf134170bc06677172e2`  
		Last Modified: Wed, 02 Sep 2026 22:09:18 GMT  
		Size: 3.4 MB (3367331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7df03828967750bf24bd85d67f97c09a2f61ca7a702b2cd00cdea3950bce533a`  
		Last Modified: Wed, 02 Sep 2026 22:09:18 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:3690c5075da354dc8e02accc736c21533d0a79080c1ebbd60a92e4fe0baaa0cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 KB (135127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11318f23fac1a7b775ede570fbd9de917cb73b4af0f8b0aaae544140ee973ac5`

```dockerfile
```

-	Layers:
	-	`sha256:f332abe5153c87ab9a54098d1f262fa935f01524405a35c81fa45aa8bac93325`  
		Last Modified: Wed, 02 Sep 2026 22:09:18 GMT  
		Size: 116.5 KB (116511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa0dcf9e4376646a8ca23511adb717b83bb87986eb73cdc92f287f4058c1db79`  
		Last Modified: Wed, 02 Sep 2026 22:09:18 GMT  
		Size: 18.6 KB (18616 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; riscv64

```console
$ docker pull bash@sha256:6105599fb5f040566deb4059be14752fd6d184f1bd896bff3aeb745817693abe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6818441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0abb0f7a15b87918853883d308f186808a7cdba7519fa5c5304c26a4b7aec4e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Thu, 03 Sep 2026 09:27:07 GMT
ENV _BASH_COMMIT=81ddb6474bbeed1744ff0573aadc6ddeb7efbeee
# Thu, 03 Sep 2026 09:27:07 GMT
ENV _BASH_VERSION=devel-20260828
# Thu, 03 Sep 2026 09:27:07 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Thu, 03 Sep 2026 09:36:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Thu, 03 Sep 2026 09:36:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 09:36:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 03 Sep 2026 09:36:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae17a72102a3023eae918e724c99caa85cf1a6045898ef6e8840b06ae15ad6eb`  
		Last Modified: Thu, 03 Sep 2026 09:36:33 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a26a50f5e79a0f4fd9efa5a95520d0eb4dbcd0d85262d704c3bf7785dec7e5`  
		Last Modified: Thu, 03 Sep 2026 09:36:33 GMT  
		Size: 3.2 MB (3243288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2b3db6e4f46e21e35bfc99e36221871d74003c5981b4da67204ee01dec6703`  
		Last Modified: Thu, 03 Sep 2026 09:36:33 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:c97586447e108f429cc0083e3ca46331bf37096f2edbd8622d46aa37e4e4dbb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 KB (135123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4356a5c7e5e8f2ca699906a66c5e3fae3295a211b529cfd9f241efb2ea936d47`

```dockerfile
```

-	Layers:
	-	`sha256:9a0d812dd30a75604226ced64ec19bcb72d752c62683ed480ff83e29e1611af0`  
		Last Modified: Thu, 03 Sep 2026 09:36:33 GMT  
		Size: 116.5 KB (116507 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49bbc0594384c83ee89c7079a9578b9c58d273a2e73247cab877814597e98787`  
		Last Modified: Thu, 03 Sep 2026 09:36:33 GMT  
		Size: 18.6 KB (18616 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; s390x

```console
$ docker pull bash@sha256:43c13192e140e903c259b6d9792867db6f4b14baaa3c56a094171cfcfc2745c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6853219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7599f55eb46fde9fd346d2f824b97c209bdac79e30fbc487a75b78b43fb7ae90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Tue, 25 Aug 2026 17:47:31 GMT
ENV _BASH_COMMIT=81ddb6474bbeed1744ff0573aadc6ddeb7efbeee
# Tue, 25 Aug 2026 17:47:31 GMT
ENV _BASH_VERSION=devel-20260828
# Tue, 25 Aug 2026 17:47:31 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Wed, 02 Sep 2026 22:08:32 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Wed, 02 Sep 2026 22:08:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 02 Sep 2026 22:08:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 Sep 2026 22:08:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a679a9781d14186ec3e0ddc5191c34aeeba1a6a7f5cac38350a56eaed5caa291`  
		Last Modified: Tue, 25 Aug 2026 17:49:04 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c371af96d872d4977f0b1b3c2a725700d7cee5665364e571379db6590a8eaac2`  
		Last Modified: Wed, 02 Sep 2026 22:08:42 GMT  
		Size: 3.1 MB (3143109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2bf8c464cc306e9d0c66fb9f88449f52dfcea6e5546b2611ba4abaf65afd1f7`  
		Last Modified: Wed, 02 Sep 2026 22:08:42 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:abc8374297ea9d460ae7ef2e25d1374b01a11e52e884001cec7612b6936c1b43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.0 KB (135049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:742d50afb395ca434c9930c2681752de7939877b17314bb55a8e8c6b3d4fbfc4`

```dockerfile
```

-	Layers:
	-	`sha256:58040edcd04f9e164a49b00fd3a91ad5e726c5227aa7764034e3e67136d8c4f0`  
		Last Modified: Wed, 02 Sep 2026 22:08:42 GMT  
		Size: 116.5 KB (116477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01a2c7d993b5e178f8b3267c97e7850e8c677d22947f0a7d8bcb0ce3ce1a306b`  
		Last Modified: Wed, 02 Sep 2026 22:08:42 GMT  
		Size: 18.6 KB (18572 bytes)  
		MIME: application/vnd.in-toto+json
