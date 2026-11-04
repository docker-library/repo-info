## `bash:devel-20261030-alpine3.24`

```console
$ docker pull bash@sha256:0d8ac522af5c3e9498c54df8a6fe76be66d27379f59e799a7e3ae137909df2cd
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

### `bash:devel-20261030-alpine3.24` - linux; amd64

```console
$ docker pull bash@sha256:0e3e5f2dc1f249d1eb8965e2bace739a6baaccddae814d3bcf77ff87360d79aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6909092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b8aca17ab4a3b1eb770fa1493ae98aaf5547c3beb674872806cd833eaeafd22`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:20:28 GMT
ENV _BASH_COMMIT=a4a9dbc1b6df1089627b062472756b1e2b24e966
# Tue, 03 Nov 2026 22:20:28 GMT
ENV _BASH_VERSION=devel-20261030
# Tue, 03 Nov 2026 22:20:28 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 03 Nov 2026 22:21:03 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 03 Nov 2026 22:21:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:21:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:21:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8373be081a155847daa10eb885d42ac5caa2e9966a62560c993ddb5c4c9c8d8`  
		Last Modified: Tue, 03 Nov 2026 22:21:08 GMT  
		Size: 458.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9001e904de8a60b4ac72a3ab57c36a5df673a24331e06ea7c6937f77adbd6e29`  
		Last Modified: Tue, 03 Nov 2026 22:21:08 GMT  
		Size: 3.1 MB (3055192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1782e8a7a423c712a80ab2094db10d7c80c1a2077098ff063d3a0ea05a52458b`  
		Last Modified: Tue, 03 Nov 2026 22:21:08 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261030-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:2c99557b3fe674eed28afb2ea665a921dad028655b31fb612c2995e23b9996b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 KB (135348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4476f03007c56c387ce6b80f0b12e322225bf4ab2853c328de7092b130febbae`

```dockerfile
```

-	Layers:
	-	`sha256:02cd460edbbf603b2c53aee742222293a2d908c58561b4d2133412dfa9f8ba43`  
		Last Modified: Tue, 03 Nov 2026 22:21:08 GMT  
		Size: 117.1 KB (117128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2fe7f8d62e23e9b2344ff030292bc7b50a3988b36e885dd1a7a50cb6f349b64`  
		Last Modified: Tue, 03 Nov 2026 22:21:08 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20261030-alpine3.24` - linux; arm variant v6

```console
$ docker pull bash@sha256:703b331feef1fbdf41acfeb3f7f129db1c56e94228975d5eb4f28bb19dd78934
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6573907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414c20f300d9fc25559b5c7f21761e5efd0456e854104f6bf8a2c5abb57dc79d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:16:14 GMT
ENV _BASH_COMMIT=a4a9dbc1b6df1089627b062472756b1e2b24e966
# Tue, 03 Nov 2026 22:16:14 GMT
ENV _BASH_VERSION=devel-20261030
# Tue, 03 Nov 2026 22:16:14 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 03 Nov 2026 22:17:00 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 03 Nov 2026 22:17:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:17:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:17:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc17683e454b0579e0c0c430babec690d699561675d077bab0b27d7938940a79`  
		Last Modified: Tue, 03 Nov 2026 22:17:04 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc07d90f69fef04116b65a46750ae89143788c20de45f7f7f5db98d430ce99ed`  
		Last Modified: Tue, 03 Nov 2026 22:17:04 GMT  
		Size: 3.0 MB (3014826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51980b0b64fe2cd11c821f7b432cc9d899b3bdb92d0b8f6dc2d5cb484c58ef97`  
		Last Modified: Tue, 03 Nov 2026 22:17:04 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261030-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:bcf7c842d804354355a370c25a4cbdf535a99f228a035dcc44ce7e2a40c9aea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 KB (18085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b253fc5b088431a6777e01e88c14e7c9e5b2fd5747261c8ff445058fdb2d907`

```dockerfile
```

-	Layers:
	-	`sha256:430d05fd36521852ffb2216aa645261dac53c768e2035b57897fa92af16f28ca`  
		Last Modified: Tue, 03 Nov 2026 22:17:04 GMT  
		Size: 18.1 KB (18085 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20261030-alpine3.24` - linux; arm variant v7

```console
$ docker pull bash@sha256:b6f9775fbafcfc31085c5d8d36c982fc5a0b4b7b72760732f7758ca1c45062f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6229469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d07d3af046f2f0b9b2e974b81c169f8ab0c616cc3f4c5b80df098a8eff7fe08b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:18:50 GMT
ENV _BASH_COMMIT=a4a9dbc1b6df1089627b062472756b1e2b24e966
# Tue, 03 Nov 2026 22:18:50 GMT
ENV _BASH_VERSION=devel-20261030
# Tue, 03 Nov 2026 22:18:50 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 03 Nov 2026 22:19:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 03 Nov 2026 22:19:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:19:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:19:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01553421be062b2e252628a25d5b251faea91ab7519e07a7db7f8c676ea306fa`  
		Last Modified: Tue, 03 Nov 2026 22:19:41 GMT  
		Size: 458.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c05a78442d8d488f08ceb22a0e1c5432ad2d91f8c516120ca532e1efdbfd0e1`  
		Last Modified: Tue, 03 Nov 2026 22:19:41 GMT  
		Size: 3.0 MB (2962018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d68f4220286259e436bc36ead53cecd3702a4249193eeda676eac70d40013047`  
		Last Modified: Tue, 03 Nov 2026 22:19:41 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261030-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:f8a3465f065ac6fd0ad7f2d6e45e9c0d8a991adc5537dd9bf0edca54bab92743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 KB (134814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:513a584dc7a02f3b1bba8df2991225337dce65dba19856414cf58e5620372747`

```dockerfile
```

-	Layers:
	-	`sha256:723cb2b458e145847809fbdac5a5a7581cbc37dae0f13b54b9d11e22522d5bf3`  
		Last Modified: Tue, 03 Nov 2026 22:19:41 GMT  
		Size: 116.5 KB (116514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d312adc4f5382d5a0c013cffc4ab2f9a3f334663567069a3ca5689e3aa5dc1da`  
		Last Modified: Tue, 03 Nov 2026 22:19:41 GMT  
		Size: 18.3 KB (18300 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20261030-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:8f404ace4fa59ef0170cce1dd15bd3a487840dadf7f48988ecf58c64de670292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7320086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4615dbd2dee4a564b6b87119463de4ee43037654fe86f7a90fa7c593f25d475c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:20:06 GMT
ENV _BASH_COMMIT=a4a9dbc1b6df1089627b062472756b1e2b24e966
# Tue, 03 Nov 2026 22:20:06 GMT
ENV _BASH_VERSION=devel-20261030
# Tue, 03 Nov 2026 22:20:06 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 03 Nov 2026 22:20:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 03 Nov 2026 22:20:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:20:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:997317fb9155af951dff719b3f4ca1955201bbb4faa161c74107137e9cb95751`  
		Last Modified: Tue, 03 Nov 2026 22:20:52 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b506ab287ffcf520bd10307101a83186f751d35a046318d7e3503d099d566e61`  
		Last Modified: Tue, 03 Nov 2026 22:20:52 GMT  
		Size: 3.1 MB (3128805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c883f2de228f30bb503cb16262148c77d7a2871e43cbc7853edc723d3de15f2`  
		Last Modified: Tue, 03 Nov 2026 22:20:52 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261030-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:aea0b5e9406915eef2952d3f03db502c3b1a2c00b5cf4fd6825f7b94f2f82881
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 KB (134858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:166b95b22917b8c99ed8ecfd1728ddfd50aff9d99c5a7540869762d68db084ea`

```dockerfile
```

-	Layers:
	-	`sha256:39dac19f7908ee6e070bfcdc133169ae26e48de512758fc68f15c1be5ce04afb`  
		Last Modified: Tue, 03 Nov 2026 22:20:52 GMT  
		Size: 116.5 KB (116534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be31b644e50f3fe45e336594d585f959f7a42bcf373d71ff2b57d63600b77442`  
		Last Modified: Tue, 03 Nov 2026 22:20:52 GMT  
		Size: 18.3 KB (18324 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20261030-alpine3.24` - linux; 386

```console
$ docker pull bash@sha256:cd2701968ec461dea79c9a83eb37bf6eaac5f1d779dcf7cda13945425d068edc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6661209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ff23712c664960a57ebd9d93829b9683a81dd338778419b8c79eefa42a20967`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:12:59 GMT
ENV _BASH_COMMIT=a4a9dbc1b6df1089627b062472756b1e2b24e966
# Tue, 03 Nov 2026 22:12:59 GMT
ENV _BASH_VERSION=devel-20261030
# Tue, 03 Nov 2026 22:12:59 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 03 Nov 2026 22:13:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 03 Nov 2026 22:13:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:13:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:13:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e73aeae5742810b3f67f542c2ab9d2d774453f48db258c5b28e7d5066e64987`  
		Last Modified: Tue, 03 Nov 2026 22:13:41 GMT  
		Size: 460.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d17fcb81f1b8231e9b267311f97678c2d23b58db6093e74430ae361c2767654`  
		Last Modified: Tue, 03 Nov 2026 22:13:41 GMT  
		Size: 3.0 MB (2981418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c459f751bc58f7a3ee37fa5c086f525f742fd159dbf5f3abbc4835ea3cdb6e3c`  
		Last Modified: Tue, 03 Nov 2026 22:13:41 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261030-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:c4a9f69dda31210ae7d4f3699cea4a54ac0c1d7af20c5268192fb4aecf5f5b03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 KB (135291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138faabbfc3c39f57915721b42ceca1d0dc7ae7bced83cce1240ccd81af87699`

```dockerfile
```

-	Layers:
	-	`sha256:e940d239c8886d252f2488c301125f346870a3ccaa3c0904ab45488bd7c231c4`  
		Last Modified: Tue, 03 Nov 2026 22:13:40 GMT  
		Size: 117.1 KB (117103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ad9c3127744aef08f1e3ac5f4de3d9c8ff834455e845e6d52e1a8b3e7b951f3`  
		Last Modified: Tue, 03 Nov 2026 22:13:40 GMT  
		Size: 18.2 KB (18188 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20261030-alpine3.24` - linux; ppc64le

```console
$ docker pull bash@sha256:437f9743d5a6e51b0e2f9adf6334c1dcfb6e28f9567689b678d4e11a6d279e4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7193345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:677b2dcd96c7ebb87c44867b3932c215cee1ffad762630239b976f5d6a6a54ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:53:55 GMT
ENV _BASH_COMMIT=a4a9dbc1b6df1089627b062472756b1e2b24e966
# Tue, 03 Nov 2026 22:53:55 GMT
ENV _BASH_VERSION=devel-20261030
# Tue, 03 Nov 2026 22:53:55 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 03 Nov 2026 22:55:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 03 Nov 2026 22:55:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:55:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:55:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc9612130a0e7956592dc21b5e26167bebee7c07dec0f2baa7ebbf51423c6a2`  
		Last Modified: Tue, 03 Nov 2026 22:55:31 GMT  
		Size: 458.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0a91f748b3f01ecd92925018fc1b4411bc93e6f7f9b38d64760e3ce7679e250`  
		Last Modified: Tue, 03 Nov 2026 22:55:31 GMT  
		Size: 3.4 MB (3371725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f61d436073cc423bf04b8782e07986c3d831f0e272289066b810d28bdf108f81`  
		Last Modified: Tue, 03 Nov 2026 22:55:31 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261030-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:eaa8765159c0741e9c6702cae664eda26329a5a7bc8914e50d7ff64283c0fe36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 KB (134775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:043461e7a935cde093b9414e1fbf970f2c11f4823cb33ddabed98e956e422188`

```dockerfile
```

-	Layers:
	-	`sha256:970e1e78468bd1279f6e7d507339c96fb9b831d018fc40fb3dfb62398b855b2b`  
		Last Modified: Tue, 03 Nov 2026 22:55:31 GMT  
		Size: 116.5 KB (116511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38cdf678b7321d57b461737dd68b0aa0d9c757b3e68adea78820b8bad96bccff`  
		Last Modified: Tue, 03 Nov 2026 22:55:31 GMT  
		Size: 18.3 KB (18264 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20261030-alpine3.24` - linux; riscv64

```console
$ docker pull bash@sha256:5aed8507853e3d3d9a3dd65b6288a5db9d9481f690a97df7982834ae0220f6a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6827472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6028d8c55f5306d45c403ff8a23e4f84c28e91e97f0a42c2c8b98e1651c9bd12`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 14:27:50 GMT
ENV _BASH_COMMIT=a4a9dbc1b6df1089627b062472756b1e2b24e966
# Wed, 04 Nov 2026 14:27:50 GMT
ENV _BASH_VERSION=devel-20261030
# Wed, 04 Nov 2026 14:27:50 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Wed, 04 Nov 2026 14:37:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Wed, 04 Nov 2026 14:37:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 14:37:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Nov 2026 14:37:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76672535ab587f941ddfe617590bb720456a4f9b6cb6d52f708a8d333e821f45`  
		Last Modified: Wed, 04 Nov 2026 14:37:48 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0194596ee6360974a9e18e0c021ad99178c0c1acc89437fa1f6dae1c53739afd`  
		Last Modified: Wed, 04 Nov 2026 14:37:48 GMT  
		Size: 3.2 MB (3246028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1cb20291e366ef4e6f53d2a310fcf8c87b20408d3313dbf37441b0c9b4c582f`  
		Last Modified: Wed, 04 Nov 2026 14:37:48 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261030-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:bdc5dfa0c26d5b1518d15133c7b8763dd2198f5a6a06d0df554e459347870973
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 KB (134771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c63db8980726179b6db29f35621602cbb346ce7ef2444f852ed10f332d138640`

```dockerfile
```

-	Layers:
	-	`sha256:cca57eac95a92ba31ae2fa3bd0d816db7c0ffb8eae5fcb610052c10f12b04e50`  
		Last Modified: Wed, 04 Nov 2026 14:37:48 GMT  
		Size: 116.5 KB (116507 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28ddc2ed18f2634ad356598be21b5e7bc4b60b5c0f233940e3cfce4efc2bfde5`  
		Last Modified: Wed, 04 Nov 2026 14:37:48 GMT  
		Size: 18.3 KB (18264 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20261030-alpine3.24` - linux; s390x

```console
$ docker pull bash@sha256:23d64a2f918bac561718196cef0ffd03b364b4b2d588d9b7c0c0e2fb0272ca19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6865851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09dbc675f1cb69cb65d93fb333c8dfae59780e8432bedf89d7f3e7f884619ff4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:18:36 GMT
ENV _BASH_COMMIT=a4a9dbc1b6df1089627b062472756b1e2b24e966
# Tue, 03 Nov 2026 22:18:36 GMT
ENV _BASH_VERSION=devel-20261030
# Tue, 03 Nov 2026 22:18:36 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 03 Nov 2026 22:19:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 03 Nov 2026 22:19:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:19:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:19:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ba711b4dd37f66ed08c655d0ec1c43201f0ed972d5dcf8bd301199b05bd61e`  
		Last Modified: Tue, 03 Nov 2026 22:19:25 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e489683cc4a760c2413ae5d648bdcbb4c77c063bfa78078cefeb91c161d82a6c`  
		Last Modified: Tue, 03 Nov 2026 22:19:25 GMT  
		Size: 3.1 MB (3145352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5166fe57034b872cafd23d89bf78424a1599098ed50cda1bf70ea55120a88cb3`  
		Last Modified: Tue, 03 Nov 2026 22:19:24 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261030-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:830122c46dd9081b806b662ddea15a24d06252f6df443ade76498b46570ece3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 KB (134697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46b54ccd89cc0507d5a3249ef893a7519ec95ed39988450ebb7be3d3b305af12`

```dockerfile
```

-	Layers:
	-	`sha256:cf0cada1c0926e2df328d3f6ef3c1d335b0c6d70ecbbdd5d9b60acdf98280d8d`  
		Last Modified: Tue, 03 Nov 2026 22:19:25 GMT  
		Size: 116.5 KB (116477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0e5bdd716722062ff400786425011352ed45d04cf44ed951184c9b7b8e104b6`  
		Last Modified: Tue, 03 Nov 2026 22:19:25 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.in-toto+json
