## `bash:devel-alpine3.24`

```console
$ docker pull bash@sha256:f56dbb7a8589c14efbadce80a1ed2c960fc3b00187eeb8db0d3c635773ecf4bb
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
$ docker pull bash@sha256:361f2c4247fa4728c3b27ce26bac770c65f4a2d975bd3fd05c78de47c3ee0c04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6898341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90b85ace2b8e989179b45544ad34d06abdfa45ba7b33e57749e6bb61c73e8072`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 25 Aug 2026 17:44:48 GMT
ENV _BASH_COMMIT=71327ab3b5aaa7058d28378d481c2c5a1ddb09fc
# Tue, 25 Aug 2026 17:44:48 GMT
ENV _BASH_VERSION=devel-20260821
# Tue, 25 Aug 2026 17:44:48 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 25 Aug 2026 17:45:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 25 Aug 2026 17:45:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 17:45:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 17:45:24 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a779425408d6d00d4b6058d554f59c3b1d5faaf26358c0599ec5c67eaec9700`  
		Last Modified: Tue, 25 Aug 2026 17:45:29 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6d22e69a302630b3c5de895b48396ae9a7c7e292632735cc5d0ee1ead9e733`  
		Last Modified: Tue, 25 Aug 2026 17:45:30 GMT  
		Size: 3.1 MB (3051162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f045777c3bc44ce8ad4a90905dec06a5de3372cf5dafd75070f50d63bfe963`  
		Last Modified: Tue, 25 Aug 2026 17:45:29 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:f46fd1342657bf1b9058e10218e88368a9fd30b15fcf48292109ef80524dfc1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 KB (135284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6520a6cc87472e5d62de8863feb47300dd8e342c51572eee1329e186397db6db`

```dockerfile
```

-	Layers:
	-	`sha256:15effd585b4db1d1e57c04d0112330b0a81219cf5279881da3bf79c4c933bad5`  
		Last Modified: Tue, 25 Aug 2026 17:45:29 GMT  
		Size: 117.1 KB (117128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2f6f1983d025f2bb7766a45018cc66595bbb09d52589928a90ccb0300263172`  
		Last Modified: Tue, 25 Aug 2026 17:45:29 GMT  
		Size: 18.2 KB (18156 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; arm variant v6

```console
$ docker pull bash@sha256:00335a816e3385b4298059e179c5b2042b3515aa2743827b3e5cf8668651aa86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6564464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82b0724e29dcfd087d12576a23a0232d52fedda7ab917cf66d4550700dca8b22`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 25 Aug 2026 17:44:33 GMT
ENV _BASH_COMMIT=71327ab3b5aaa7058d28378d481c2c5a1ddb09fc
# Tue, 25 Aug 2026 17:44:33 GMT
ENV _BASH_VERSION=devel-20260821
# Tue, 25 Aug 2026 17:44:33 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 25 Aug 2026 17:45:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 25 Aug 2026 17:45:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 17:45:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 17:45:18 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac80504854bb5ecb1780381290aade40b944b09875733cc35a40df038319574f`  
		Last Modified: Tue, 25 Aug 2026 17:45:22 GMT  
		Size: 461.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d402d42440c1ce3f3585db3996fdebb4416209449d870345c43efdf1e26c1224`  
		Last Modified: Tue, 25 Aug 2026 17:45:22 GMT  
		Size: 3.0 MB (3010220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3a837a2c5681d6259de81a7bc9c21d80d6b3c5f980b7332f4e9ca85b726ef22`  
		Last Modified: Tue, 25 Aug 2026 17:45:22 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:b34f2aa94b556c6a6f8122fb9f1ebc2d92839aeabf3c204d504aa34eae5cfc34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 KB (18021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f1aa7970111b45918e4b41ee8daf84b12af4636824057c4722d04e927feed7`

```dockerfile
```

-	Layers:
	-	`sha256:fcd3de9558536c21e04ffc3ffc40c502acce553ce979efe34cd3f05946c4dda7`  
		Last Modified: Tue, 25 Aug 2026 17:45:22 GMT  
		Size: 18.0 KB (18021 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; arm variant v7

```console
$ docker pull bash@sha256:cf72c74777fd663db17ef19ac11ce69c72594d6e3c84843c414a6609269a8132
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6219080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf5ad15061c083ada3a47578eb3e05e242ec8e2bd0cedfbf239a909141745bea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 25 Aug 2026 17:44:35 GMT
ENV _BASH_COMMIT=71327ab3b5aaa7058d28378d481c2c5a1ddb09fc
# Tue, 25 Aug 2026 17:44:35 GMT
ENV _BASH_VERSION=devel-20260821
# Tue, 25 Aug 2026 17:44:35 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 25 Aug 2026 17:45:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 25 Aug 2026 17:45:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 17:45:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 17:45:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663c07b4843bcf06148343563fc24c8a69064c4ae3e4a65166c5eb66d8171ce3`  
		Last Modified: Tue, 25 Aug 2026 17:45:25 GMT  
		Size: 459.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfabbe025e6c2f8292991b9431a50e51d42a90c7ea43f1d1d155b24a8fde22ec`  
		Last Modified: Tue, 25 Aug 2026 17:45:25 GMT  
		Size: 3.0 MB (2957669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f004ccb148919e18437947ea498fabba56aceabfd903138bed7364a72d847aed`  
		Last Modified: Tue, 25 Aug 2026 17:45:25 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:ca964e052796b6d8283f7f2440e4ced8d0391d71fcd39fd48e594f703a91b8c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 KB (134750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b33d899111229c3ff17a07ea05d3509c6cdf29121eddaf837b36f670370818d`

```dockerfile
```

-	Layers:
	-	`sha256:f5d64ffaa27e453660361b02067ba8db9916bc92a6e1ad3f65853931f5597113`  
		Last Modified: Tue, 25 Aug 2026 17:45:25 GMT  
		Size: 116.5 KB (116514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f42c0103b7ede6c8ab950647d1828ade7f191ac86c40a6b6bc23b45cebb1ab65`  
		Last Modified: Tue, 25 Aug 2026 17:45:25 GMT  
		Size: 18.2 KB (18236 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:e059c20de7d5f8c3b7aee0d25d86eb97734792a1787647d150d262aa74fc3b20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7309305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adae2ca3813baf44ef77cbf449a047ea0a9a40cffbeba848647c60901493ad25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 25 Aug 2026 17:44:40 GMT
ENV _BASH_COMMIT=71327ab3b5aaa7058d28378d481c2c5a1ddb09fc
# Tue, 25 Aug 2026 17:44:40 GMT
ENV _BASH_VERSION=devel-20260821
# Tue, 25 Aug 2026 17:44:40 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 25 Aug 2026 17:45:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 25 Aug 2026 17:45:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 17:45:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 17:45:22 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aefeb64e2fb74429319f3c26ecc8453e34782fe4ccc50c729fa41c56e910c843`  
		Last Modified: Tue, 25 Aug 2026 17:45:27 GMT  
		Size: 460.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:237702579e8ebcf2bce757cb5a8d389ca764eb7a27d53630e16667cc86f7d5cf`  
		Last Modified: Tue, 25 Aug 2026 17:45:27 GMT  
		Size: 3.1 MB (3125470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dcdc9c0a4defc9479394807698175241f6eeb69cb247a4b39c8fc6785505b2d`  
		Last Modified: Tue, 25 Aug 2026 17:45:27 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:6feb7935d1735d118046f03a7b1771b0017ea197f42fbe022764a7539068407f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 KB (134794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:661e91d31b9bdaabc6260457348b209261aaa69e63849e3507167f37df944357`

```dockerfile
```

-	Layers:
	-	`sha256:f7c6726a3406817af184301ff12cb0988b81db70bd7a0d851a05587bfca99563`  
		Last Modified: Tue, 25 Aug 2026 17:45:27 GMT  
		Size: 116.5 KB (116534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a16283ff6d067f50dba1946d98317ac7a7cc103cef64428862446bb31715c51a`  
		Last Modified: Tue, 25 Aug 2026 17:45:27 GMT  
		Size: 18.3 KB (18260 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; 386

```console
$ docker pull bash@sha256:27a61bbb733de595c1afc1f458533483c5e5628643c47148c1ab17bb1cf47b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6647744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea05c9c0e5741943048c66d3f76f5242f927027e43fd49daf8620b4d120dfbd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 25 Aug 2026 17:44:45 GMT
ENV _BASH_COMMIT=71327ab3b5aaa7058d28378d481c2c5a1ddb09fc
# Tue, 25 Aug 2026 17:44:45 GMT
ENV _BASH_VERSION=devel-20260821
# Tue, 25 Aug 2026 17:44:45 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 25 Aug 2026 17:45:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 25 Aug 2026 17:45:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 17:45:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 17:45:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:702f82e8dc828f8222d4830b9149184f3e2feed20b57ff96ea37d4c31581610f`  
		Last Modified: Tue, 25 Aug 2026 17:45:28 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef4d36a7c875e33cb9d02754907c50401672945d65a1bd9de29c0f35403b533e`  
		Last Modified: Tue, 25 Aug 2026 17:45:28 GMT  
		Size: 3.0 MB (2976810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2f7f11b39bd568286f5848846e19488ac86e98ea93f26f3d0210d469d4527a8`  
		Last Modified: Tue, 25 Aug 2026 17:45:28 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:3a47af8168b980f1d4e8d3b36a70bb91a8e994155c96a5eda10fc4a75634e2fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 KB (135226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1243ce8428f0a2f93f29695d3b8a664c9d9f2551b26f95666fc89cc588ae746b`

```dockerfile
```

-	Layers:
	-	`sha256:b3a7af5fd18cad3219f4ddbc6eeff125c5714a3b801fb06dcaf2ccd3bdd187f8`  
		Last Modified: Tue, 25 Aug 2026 17:45:28 GMT  
		Size: 117.1 KB (117103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7eff676748c402c1ea5299a1644bb69ba163192c95acc65b1542ef007e351551`  
		Last Modified: Tue, 25 Aug 2026 17:45:28 GMT  
		Size: 18.1 KB (18123 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; ppc64le

```console
$ docker pull bash@sha256:6e7444b8f040740306a5c4d03db9406e55076b774f4c4269e1cadd72058cc3c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7180978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c0c3b94412ed3a4cd1673667594e16b75df76a98cb6fd8968ce9e14dcd6c1a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Tue, 25 Aug 2026 18:55:50 GMT
ENV _BASH_COMMIT=71327ab3b5aaa7058d28378d481c2c5a1ddb09fc
# Tue, 25 Aug 2026 18:55:50 GMT
ENV _BASH_VERSION=devel-20260821
# Tue, 25 Aug 2026 18:55:50 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 25 Aug 2026 18:57:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 25 Aug 2026 18:57:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 18:57:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 18:57:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e3e51a443e37caca623cde714e4febf01d8ccc911bbaf99dd05696e39de99d`  
		Last Modified: Tue, 25 Aug 2026 18:57:10 GMT  
		Size: 458.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94bab2227b4cbfd169b7be131f7eaea8e8e836716403f2a7d5167de7e8be9d22`  
		Last Modified: Tue, 25 Aug 2026 18:57:10 GMT  
		Size: 3.4 MB (3366784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd027a2102cb8869b3250891b6f69bb024587125d252dd2aac1969e2b912916`  
		Last Modified: Tue, 25 Aug 2026 18:57:10 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:f7a0b6fd05e3c6e1c8ed85e7d68528a39d67a0adc5cda478f872004eed224cd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 KB (134711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be718998419d83d1de1ee5b73de8e54e33d88046280215a49265af583cf95609`

```dockerfile
```

-	Layers:
	-	`sha256:719165292caedd7eb5065df413262e1bbb55cad89d8640cc704c129a96a68f62`  
		Last Modified: Tue, 25 Aug 2026 18:57:10 GMT  
		Size: 116.5 KB (116511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13e2710135a094c551fbdf0d59b74e778bb802f45afca819a6f72149fbfc1250`  
		Last Modified: Tue, 25 Aug 2026 18:57:10 GMT  
		Size: 18.2 KB (18200 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; riscv64

```console
$ docker pull bash@sha256:bc2a4712a8dad7a7cb259f3e74e720917ee988193139bc9b02a1d45e637507d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6816320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22cda32ba61640e8fc6a927005a3c9be25109fdc316312c1f775c146f1fd6115`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Tue, 18 Aug 2026 21:54:54 GMT
ENV _BASH_COMMIT=2f7eb80c770c13adaabca4d6bf4ba5c01a01244d
# Tue, 18 Aug 2026 21:54:54 GMT
ENV _BASH_VERSION=devel-20260817
# Tue, 18 Aug 2026 21:54:54 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 18 Aug 2026 22:04:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 18 Aug 2026 22:04:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 22:04:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 22:04:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca0a4aa6f76c0b2023ef4f0eedab5ac1c08dcf41584ef1b454f411c748e841e7`  
		Last Modified: Tue, 18 Aug 2026 22:04:40 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2522d4fa2c72dcfb97ba80a9402cbe4bc1aa774d9ea240575366feb6ce63528c`  
		Last Modified: Tue, 18 Aug 2026 22:04:41 GMT  
		Size: 3.2 MB (3241167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a0a54b121c1234aa5cd0df438b95cfeec6dc24294c3ed3426be43e30034fb27`  
		Last Modified: Tue, 18 Aug 2026 22:04:40 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:4cac4eb7459d72a158d7ae92f4791ee3615fffe250affd542787496756af0988
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 KB (134746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d471172118bed05014c09893d6d1a35b9661858df1f8ea28ca149dbbf84f0cd0`

```dockerfile
```

-	Layers:
	-	`sha256:8f4efe939880061019d611ffcb89158946c63d01d658c1b20d570d72b8f5391f`  
		Last Modified: Tue, 18 Aug 2026 22:04:40 GMT  
		Size: 116.5 KB (116507 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b93fe30af6adaa9d167305ec2f2ddf16b9f2758cf61ca22b300e85db4339364`  
		Last Modified: Tue, 18 Aug 2026 22:04:40 GMT  
		Size: 18.2 KB (18239 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; s390x

```console
$ docker pull bash@sha256:1162798e51971caa5a43a949f09323f9dcbac973ce0418cdd4d37f0d8f3b4282
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6852434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85fdd7ff4c4cc10b95eb1fe4e9afffde71373fdcc52528626940cd972995ef89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Tue, 25 Aug 2026 17:47:31 GMT
ENV _BASH_COMMIT=71327ab3b5aaa7058d28378d481c2c5a1ddb09fc
# Tue, 25 Aug 2026 17:47:31 GMT
ENV _BASH_VERSION=devel-20260821
# Tue, 25 Aug 2026 17:47:31 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 25 Aug 2026 17:48:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 25 Aug 2026 17:48:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 17:48:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 17:48:46 GMT
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
	-	`sha256:4dccd0d2f01050b4c97b99f6ea321c8960a0bc7caf480b6576d230e1f5dbbe2d`  
		Last Modified: Tue, 25 Aug 2026 17:49:05 GMT  
		Size: 3.1 MB (3142317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7106673ad67b45ad710e4952c2c5505a69fe76975812c4e31b88e4fcc239f81`  
		Last Modified: Tue, 25 Aug 2026 17:49:04 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:370ea0f076b9f3b901bf177169dd6c4de6e442424fd91320df1e213346f3c603
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.6 KB (134631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf453775c580329ae36e85d3a73e289f628e643f7b87e61577bb28bf7054ab2`

```dockerfile
```

-	Layers:
	-	`sha256:77ff265b3011f1903a0efee49b7cb0e6ba88adfb76ae68cec99c7f41ab9a2ed0`  
		Last Modified: Tue, 25 Aug 2026 17:49:04 GMT  
		Size: 116.5 KB (116477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08f2f9d586523f2e97272515a9983a2c883c6dff02ab280e36bdf9adad52f7ad`  
		Last Modified: Tue, 25 Aug 2026 17:49:04 GMT  
		Size: 18.2 KB (18154 bytes)  
		MIME: application/vnd.in-toto+json
