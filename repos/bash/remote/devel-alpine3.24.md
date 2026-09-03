## `bash:devel-alpine3.24`

```console
$ docker pull bash@sha256:b7feac1cc25e5b908e12bc03f5bec7930a7c4b8d4e2b7103b323333477732251
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
$ docker pull bash@sha256:7f7a601298542f4c15716a0e17b1bd6962ea4ed3e5ec601f80c108091e0308fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6899363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13931201224c5f619202a4a4091264643c70cfe42b384ee0006c375b22535f27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 02 Sep 2026 22:12:58 GMT
ENV _BASH_COMMIT=81ddb6474bbeed1744ff0573aadc6ddeb7efbeee
# Wed, 02 Sep 2026 22:12:58 GMT
ENV _BASH_VERSION=devel-20260828
# Wed, 02 Sep 2026 22:12:58 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Wed, 02 Sep 2026 22:13:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Wed, 02 Sep 2026 22:13:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 02 Sep 2026 22:13:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 Sep 2026 22:13:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750c41b1b938c26f417c79c1ebe2c2f600051ac70c05d5623e0de48471bf2add`  
		Last Modified: Wed, 02 Sep 2026 22:13:41 GMT  
		Size: 458.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e74b8135cc45cf22eabe859c9c53a7439ad71b9c22cb9d282158fed673a8e1d8`  
		Last Modified: Wed, 02 Sep 2026 22:13:42 GMT  
		Size: 3.1 MB (3052178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78ad12f37de08e5a2b4076dc1d329881339d2edaf3988ad7bc8f7de87c326690`  
		Last Modified: Wed, 02 Sep 2026 22:13:41 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:e5ec2a206a7d57bc4914503239b9ed1fb7adf35c60cf3b121dbdb19da1721234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.7 KB (135699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf2727b27040283a6f5cb4eb9255ccc3ad805bca936f4013d77686552e0f4f6`

```dockerfile
```

-	Layers:
	-	`sha256:69d5a567466aa4782e6a2f360b5e454deaf32a674206b1a71c28954ae06a27e6`  
		Last Modified: Wed, 02 Sep 2026 22:13:41 GMT  
		Size: 117.1 KB (117128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e1044d289acc71c334a180f9e8dcbf7b1089e88af374647d966a2701b1dd472`  
		Last Modified: Wed, 02 Sep 2026 22:13:41 GMT  
		Size: 18.6 KB (18571 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; arm variant v6

```console
$ docker pull bash@sha256:601d2753bfc4b14627b474b5319c79c058ade64499c0066818599bbbaf0726ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6565335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff9773a5355feab0cb0d91ae2b7796eba10d58d51a9e0cd1b677ed8d0c12c32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Wed, 02 Sep 2026 22:08:24 GMT
ENV _BASH_COMMIT=81ddb6474bbeed1744ff0573aadc6ddeb7efbeee
# Wed, 02 Sep 2026 22:08:24 GMT
ENV _BASH_VERSION=devel-20260828
# Wed, 02 Sep 2026 22:08:24 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Wed, 02 Sep 2026 22:09:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Wed, 02 Sep 2026 22:09:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 02 Sep 2026 22:09:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 Sep 2026 22:09:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae831e54c65948a6e80ce550a996b6e65d33ced5340996487bc7a57c1c1fd03`  
		Last Modified: Wed, 02 Sep 2026 22:09:11 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fde6949fe1f0d508510abbc0822a440833e4e87f403f1fcf568aff4f691db0d`  
		Last Modified: Wed, 02 Sep 2026 22:09:11 GMT  
		Size: 3.0 MB (3011095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9772c74c337027d6dff6c0e0ef22830b009dcff9f7095e8d056a5953acee788`  
		Last Modified: Wed, 02 Sep 2026 22:09:11 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:1d2dac1cad34853881a7da26c09395a71fc3952025cb71306eeeae81d8672723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 KB (18437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70777573bf46171b32329aaae1743f88f465cb055f71abaff71c0a1d46a1d256`

```dockerfile
```

-	Layers:
	-	`sha256:e116f08dfdaa5052c4fbe41ee84a2c6c7af2868dbd210430e2e335738d415290`  
		Last Modified: Wed, 02 Sep 2026 22:09:11 GMT  
		Size: 18.4 KB (18437 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; arm variant v7

```console
$ docker pull bash@sha256:25d54a7e10ab7c67fc1b8b4b0e63841c23929122c0e7f61c0f7a299c4ed35e00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6219598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5df0a780e7f56db7977a35021a350b2eed79f4ff59c893f752153e8aeb2a2c60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Wed, 02 Sep 2026 22:08:28 GMT
ENV _BASH_COMMIT=81ddb6474bbeed1744ff0573aadc6ddeb7efbeee
# Wed, 02 Sep 2026 22:08:28 GMT
ENV _BASH_VERSION=devel-20260828
# Wed, 02 Sep 2026 22:08:28 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Wed, 02 Sep 2026 22:09:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Wed, 02 Sep 2026 22:09:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 02 Sep 2026 22:09:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 Sep 2026 22:09:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe1fbee10eaa5f10f1a7b958de392ae7c493677f5e04af6d697580f39adaf2ed`  
		Last Modified: Wed, 02 Sep 2026 22:09:17 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3efc291992f8c2bb8d971ae4f84b67d44e7063bb35f1c76eef7c0d040782714`  
		Last Modified: Wed, 02 Sep 2026 22:09:17 GMT  
		Size: 3.0 MB (2958193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42061d7c9451c29a422e01351740c114bd28d48fa35d9ae464f01c95a10fd563`  
		Last Modified: Wed, 02 Sep 2026 22:09:16 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:e4dd6774010d544784ea93fabce3f8e795af8c5f12869a56a97853d15a3aa8c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 KB (135166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae972577ac32ad9f581951d94e913ddf3b68ccf7a024b6c02c95948ff83771a3`

```dockerfile
```

-	Layers:
	-	`sha256:e0e03c03c060d0e9b7a878e5719213bf8b9c78d77e8bc61ece9e219ae6507a69`  
		Last Modified: Wed, 02 Sep 2026 22:09:16 GMT  
		Size: 116.5 KB (116514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c69bae771b8d2a8cd9bf68755331d4811bfcfff2f41d24676d028f5d2a23abaa`  
		Last Modified: Wed, 02 Sep 2026 22:09:17 GMT  
		Size: 18.7 KB (18652 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:3c1eb4ff5cae88329672a1868b43c0259a152258c837afae9150922885b00ffd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7309923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0eb41af92c6caec4d24e565aaed99e761bc6b6af1759a406ca795c7b3df280c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 02 Sep 2026 22:15:10 GMT
ENV _BASH_COMMIT=81ddb6474bbeed1744ff0573aadc6ddeb7efbeee
# Wed, 02 Sep 2026 22:15:10 GMT
ENV _BASH_VERSION=devel-20260828
# Wed, 02 Sep 2026 22:15:10 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Wed, 02 Sep 2026 22:15:50 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Wed, 02 Sep 2026 22:15:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 02 Sep 2026 22:15:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 Sep 2026 22:15:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:299bc257eec816041d6fae82337f586476d4489d2bb6565e6c749f18381d458e`  
		Last Modified: Wed, 02 Sep 2026 22:15:55 GMT  
		Size: 458.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf3bea9e93ed84389a73be7dee720faa87bc0e6d27bd68e870e4f225ba105021`  
		Last Modified: Wed, 02 Sep 2026 22:15:55 GMT  
		Size: 3.1 MB (3126090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a6bb7530e26c93aed908bcfb590f8a39b769e57cfca5fa39ff837803caa201d`  
		Last Modified: Wed, 02 Sep 2026 22:15:55 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:3be5c3de55886a91d10eae61b2ba889876f388a06bd9bfbf84b499b67df96810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 KB (135210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c2618ade26e11a74d5f0ce2991a42403c8bfb5d403611a043012dcbeb26021`

```dockerfile
```

-	Layers:
	-	`sha256:82e6932604bb9c11c13452944ae2be52987e413837c3fe8749ad117aeefd790b`  
		Last Modified: Wed, 02 Sep 2026 22:15:55 GMT  
		Size: 116.5 KB (116534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:850b61d3ae50a5e8ff24dd1d7e04009b7b1a1fba41cbfa253f385a116ad12d12`  
		Last Modified: Wed, 02 Sep 2026 22:15:55 GMT  
		Size: 18.7 KB (18676 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; 386

```console
$ docker pull bash@sha256:41a1a77affe28cad5f6904f530e4798458124a751d1bf1730bc755a698ea99c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6648665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1047a16c84f03d1d649846643e33a03474be6def11bcb9b324809b75dde0bb18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Wed, 02 Sep 2026 22:08:45 GMT
ENV _BASH_COMMIT=81ddb6474bbeed1744ff0573aadc6ddeb7efbeee
# Wed, 02 Sep 2026 22:08:45 GMT
ENV _BASH_VERSION=devel-20260828
# Wed, 02 Sep 2026 22:08:45 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Wed, 02 Sep 2026 22:09:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Wed, 02 Sep 2026 22:09:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 02 Sep 2026 22:09:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 Sep 2026 22:09:26 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c87d7a09c07034bec083cf91b36103fd89eaeeb10448ccecb5390c67edc9e6`  
		Last Modified: Wed, 02 Sep 2026 22:09:31 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b2f8dd6280f6d88f3facdff5f74d5f4cfd85a26aa55fa3169d6223e6103292`  
		Last Modified: Wed, 02 Sep 2026 22:09:31 GMT  
		Size: 3.0 MB (2977729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a3e8f100518acf19146372dd8eaa8a645985b7edd81b816f6efd3b0e1c5652`  
		Last Modified: Wed, 02 Sep 2026 22:09:31 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:a3706be6ddea1fe6f6ed7dbb1b1b8e6419a44693956c526b47cbe3c033186cf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.6 KB (135643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac6ffc5671f046d870aa7b50227012f2c40bae68c9c5db57fd3bec41d48b1b1c`

```dockerfile
```

-	Layers:
	-	`sha256:46454a5a3b5e43006c267868092857d45936fc72a3695c34367f5cf75e1f8ab6`  
		Last Modified: Wed, 02 Sep 2026 22:09:31 GMT  
		Size: 117.1 KB (117103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0a03db1970cac6e2da5043a58af6ace99a34c2f9fdcc29e50bedf178eee7e6c`  
		Last Modified: Wed, 02 Sep 2026 22:09:31 GMT  
		Size: 18.5 KB (18540 bytes)  
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
