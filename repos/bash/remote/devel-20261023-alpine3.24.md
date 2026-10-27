## `bash:devel-20261023-alpine3.24`

```console
$ docker pull bash@sha256:fb7043e12ade87d26135ff0214abbabec915ab34c2d04d974923630ed53dfbc2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; s390x
	-	unknown; unknown

### `bash:devel-20261023-alpine3.24` - linux; amd64

```console
$ docker pull bash@sha256:36974484a9361f791650bfa59db0d9fb9b70cc1c788ef039760feef4e3b141fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6908334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8286314ddab1b48562f7b79423a8f22e255de807430d2bc5fbfd4ea21c698509`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 17:56:14 GMT
ENV _BASH_COMMIT=5e427bb15d701245350c890be4dae6b339a2cea0
# Tue, 27 Oct 2026 17:56:14 GMT
ENV _BASH_VERSION=devel-20261023
# Tue, 27 Oct 2026 17:56:14 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 27 Oct 2026 17:56:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 27 Oct 2026 17:56:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:56:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:56:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bcdf82ec17debb88a9d9ead8cc8b27294619f6e91a49ed94a8b4fb70601b26e`  
		Last Modified: Tue, 27 Oct 2026 17:56:57 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248da25eec2ad7a5b4b6160c06459f9aeff4f700a4058dfaabec3032b927fb4b`  
		Last Modified: Tue, 27 Oct 2026 17:56:57 GMT  
		Size: 3.1 MB (3054435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0777467920a74ddfc2c37b35f8c6eac074a4fc6cceaa79f9665d0b80b8af5118`  
		Last Modified: Tue, 27 Oct 2026 17:56:57 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261023-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:231e7a656e138d06002f688b306bfa4cf9dd666fca7bb3211cbf047f19fb32a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.6 KB (135572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89171a24a3828c34e41ab75e79d64d53b5f147fb1a90f255f9d8a423f3383f61`

```dockerfile
```

-	Layers:
	-	`sha256:ab44916b8fa948a18973c7d0210924157894b95ae4b1058b6c23d55382f95c65`  
		Last Modified: Tue, 27 Oct 2026 17:56:57 GMT  
		Size: 117.1 KB (117128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7150c308c6fc57d64e456f5d7c977d3e958c9d04b2c800c34abd44779465479`  
		Last Modified: Tue, 27 Oct 2026 17:56:57 GMT  
		Size: 18.4 KB (18444 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20261023-alpine3.24` - linux; arm variant v6

```console
$ docker pull bash@sha256:71b0a5d1deac61545c02fcbe884f6f83eccf3f799b8aa2fc516281c0b93d38c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6572924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:341cf6c63df0a635c82649c5cb1f981a93aba656ebbda5933f5b2220ab15bc5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 17:43:07 GMT
ENV _BASH_COMMIT=5e427bb15d701245350c890be4dae6b339a2cea0
# Tue, 27 Oct 2026 17:43:07 GMT
ENV _BASH_VERSION=devel-20261023
# Tue, 27 Oct 2026 17:43:07 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 27 Oct 2026 17:43:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 27 Oct 2026 17:43:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:43:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:43:59 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f353778c9377a1180e8100f046940487da40ce579c120511709c12a1b2bbd99b`  
		Last Modified: Tue, 27 Oct 2026 17:44:03 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9240a87c6455ce1f1f7fad94b42c2d93fc4946198570938f7871d3b5f59c0be`  
		Last Modified: Tue, 27 Oct 2026 17:44:04 GMT  
		Size: 3.0 MB (3013844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d63aa501acd35861644700ebf723c0a2438280d338a70b08ac6bb0d3c140ff`  
		Last Modified: Tue, 27 Oct 2026 17:44:03 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261023-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:72d30596e60a45bb3afac97759aa3aa04e926ec2a090c8bb8fd3473bdb07eeb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 KB (18309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f11418c6494c51a83c40748a2cfebe4ae2bfadce81defe94efcab69395f52a81`

```dockerfile
```

-	Layers:
	-	`sha256:aa0e4d328983ba35cf9edb410978cfb1e49daea02d4c3e5d4595339a3d91c6c0`  
		Last Modified: Tue, 27 Oct 2026 17:44:03 GMT  
		Size: 18.3 KB (18309 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20261023-alpine3.24` - linux; arm variant v7

```console
$ docker pull bash@sha256:ad9fdb04294e8d4002f5d4a6a5ed9c9c73c5788357782afebad2a08ef0a2340e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6228812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc3c9c9067d0581dfedeae906b8a441debedd132c2e11f588019c65aae7eae5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 17:43:08 GMT
ENV _BASH_COMMIT=5e427bb15d701245350c890be4dae6b339a2cea0
# Tue, 27 Oct 2026 17:43:08 GMT
ENV _BASH_VERSION=devel-20261023
# Tue, 27 Oct 2026 17:43:08 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 27 Oct 2026 17:43:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 27 Oct 2026 17:43:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:43:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f530a310ca1b83ff4e824150af8e5571c230130590bfa3b961cdf5109b0b97da`  
		Last Modified: Tue, 27 Oct 2026 17:44:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65d492183dd3d2995f8dcc6a5e2bcc0a0ed06afde770dbe5b43726a64f7660f`  
		Last Modified: Tue, 27 Oct 2026 17:44:01 GMT  
		Size: 3.0 MB (2961363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee4167444fb9af0f5b8834a7f1fe91c2a487e8ae00025a2b85acd76add447fe2`  
		Last Modified: Tue, 27 Oct 2026 17:44:01 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261023-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:83dedd567d9e53dca7990e0336dbe7d5a4df7546303db4ead2ed84ea03df0ab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.0 KB (135038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb21558c2528f1331442f496ec9e3a2fda35f564b98c6eb07f4480a1edd1c9f3`

```dockerfile
```

-	Layers:
	-	`sha256:f47824a724f590eeb8c83ebc8a468370e729b6a4e433f74c2a1dec03ce8a55e5`  
		Last Modified: Tue, 27 Oct 2026 17:44:01 GMT  
		Size: 116.5 KB (116514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31159870b1275cdac626988608ff1e80d449264e71e3f31f55ff1410635a4d36`  
		Last Modified: Tue, 27 Oct 2026 17:44:01 GMT  
		Size: 18.5 KB (18524 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20261023-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:526b204ef7b86fc883f570cddc09acf2f528016402ba8f8777313fa3446cd30f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7319743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2248907fec5ffb1db32a371f7868c6dcf2c1996485d5f4327705a089951ade3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 17:50:59 GMT
ENV _BASH_COMMIT=5e427bb15d701245350c890be4dae6b339a2cea0
# Tue, 27 Oct 2026 17:50:59 GMT
ENV _BASH_VERSION=devel-20261023
# Tue, 27 Oct 2026 17:50:59 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 27 Oct 2026 17:51:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 27 Oct 2026 17:51:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:51:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:51:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6528ba94ed5a0eca7f2c37136d97d2808dff63b6b614e74129f5eea258377a0d`  
		Last Modified: Tue, 27 Oct 2026 17:51:44 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8444aeefe1d043bd36fdbb6fab3dd44de53d65be7c11060dca1d97a1ea5e4013`  
		Last Modified: Tue, 27 Oct 2026 17:51:44 GMT  
		Size: 3.1 MB (3128466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1655f7475769deaf1de7158f6717e36bf23cc6d61bd0bca83cff5a51044108e`  
		Last Modified: Tue, 27 Oct 2026 17:51:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261023-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:03b1b0f4a7fccdffdd7acf29ba401e19f04b287d342e36c42cb916b0a5a65097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 KB (135081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d5f9b2fb8c12a3c5de9e7dcd2f8970d20cbb1e6d5fb872cc790e34f4b64ffdb`

```dockerfile
```

-	Layers:
	-	`sha256:d3a52feb4e2dc8b212e03d9ea313b25f34091cce639e00b24bba05b51fbe0fba`  
		Last Modified: Tue, 27 Oct 2026 17:51:44 GMT  
		Size: 116.5 KB (116534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:379c97acac37d56c14c5f4598a5567b6a4013e25fb956a05215a83c7db68122d`  
		Last Modified: Tue, 27 Oct 2026 17:51:44 GMT  
		Size: 18.5 KB (18547 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20261023-alpine3.24` - linux; 386

```console
$ docker pull bash@sha256:022b9f4bfdee65b6076b01c2c845b68ac63690de071aa0417dc4303c10c91fc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6660201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a491301bee0fe2f9cb884009dc3970a71337bc74dc89bbe5ad191a22de599cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 17:43:08 GMT
ENV _BASH_COMMIT=5e427bb15d701245350c890be4dae6b339a2cea0
# Tue, 27 Oct 2026 17:43:08 GMT
ENV _BASH_VERSION=devel-20261023
# Tue, 27 Oct 2026 17:43:08 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 27 Oct 2026 17:43:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 27 Oct 2026 17:43:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:43:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:43:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bd6dec018dc3e5129fb4bfb45c594ce4c4ee1b32f2cf3c6fbb9f30c6f8e0a42`  
		Last Modified: Tue, 27 Oct 2026 17:43:58 GMT  
		Size: 459.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a26351162dc5b22e6f62f1df9407a2677b8abc84a09ab8dfcaf8f59da99196`  
		Last Modified: Tue, 27 Oct 2026 17:43:58 GMT  
		Size: 3.0 MB (2980416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca5571529f1213df44c51c3c7a7089efef6a1a701600f04c13ac9aab0cb64a55`  
		Last Modified: Tue, 27 Oct 2026 17:43:58 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261023-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:c047ef293576bc3d89713cc5f66b7deff26fc2a1b9029f66e598b0242397ffa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 KB (135515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d527a0ce0668d47c540170368e56b7ad7c7b2167c0f8dc30997ad59a762a9ce2`

```dockerfile
```

-	Layers:
	-	`sha256:03728a4cc9d53fa42532d381915d503f64dcfd91b213c58d5062ea4564d4f0a7`  
		Last Modified: Tue, 27 Oct 2026 17:43:58 GMT  
		Size: 117.1 KB (117103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b24c83b3ba75071f92f5c7a85fe8aa9b8fbc12474a2a286ad9c54b83e479ed07`  
		Last Modified: Tue, 27 Oct 2026 17:43:58 GMT  
		Size: 18.4 KB (18412 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20261023-alpine3.24` - linux; ppc64le

```console
$ docker pull bash@sha256:2291daef27c94aca4b2b4d61769dabe156bcc64d087e5c3a9e77efb7df38cbc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7192082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc448753aeac88ab4c22faa11205cdf7abf885682a14e85a5d38baa1d0c0303b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 19:27:41 GMT
ENV _BASH_COMMIT=5e427bb15d701245350c890be4dae6b339a2cea0
# Tue, 27 Oct 2026 19:27:41 GMT
ENV _BASH_VERSION=devel-20261023
# Tue, 27 Oct 2026 19:27:41 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 27 Oct 2026 19:29:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 27 Oct 2026 19:29:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 19:29:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 19:29:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050c5e8524f0304e1ef1fe0c156950f6e4c06455cb966e478e17bafdacbdbffd`  
		Last Modified: Tue, 27 Oct 2026 19:29:27 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b82378b9300f34df86353641d147a04f56846297ed7676d9ba9bb6bdd288e8b9`  
		Last Modified: Tue, 27 Oct 2026 19:29:27 GMT  
		Size: 3.4 MB (3370467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c297b1df1e37e47ee0b8607fb4163509cd9f52d7f3eda6e25f8b6b1e4554a672`  
		Last Modified: Tue, 27 Oct 2026 19:29:27 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261023-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:ca084143cd557d355ff7771c4155bfebadea6929ea71e3b074182c48ef2eb12e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.0 KB (134999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:425d5c099f85867df659be068c6d180782ef6eedf92637f4025ef98443494e81`

```dockerfile
```

-	Layers:
	-	`sha256:1e454fc5398cd51138e0f820a2ba56a8e67ac8636eb360ddb04c6f2642abac1a`  
		Last Modified: Tue, 27 Oct 2026 19:29:27 GMT  
		Size: 116.5 KB (116511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:900e4372ad305ee08b9921cce6e60f4018fb219b416d47b6c39460feac05cd27`  
		Last Modified: Tue, 27 Oct 2026 19:29:27 GMT  
		Size: 18.5 KB (18488 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20261023-alpine3.24` - linux; s390x

```console
$ docker pull bash@sha256:8e034d2c30dc087e4c2179734f71bdae580096df97c65fca8e4d55fdb9913153
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6865346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e87d6c4224925bc3c5056274923bf06da596aad95c0577db88ff69e58d2e2273`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:16:09 GMT
ENV _BASH_COMMIT=5e427bb15d701245350c890be4dae6b339a2cea0
# Wed, 21 Oct 2026 23:16:09 GMT
ENV _BASH_VERSION=devel-20261023
# Wed, 21 Oct 2026 23:16:09 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 27 Oct 2026 17:46:03 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 27 Oct 2026 17:46:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:46:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:46:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f681df03d1dcae6e8bc8b4dee0a98b1cd40ef514b41776d30fc70e6e58827e02`  
		Last Modified: Wed, 21 Oct 2026 23:17:10 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611fb1bc970e5b3667d621743fcb6a32cabc6d6cea234b4dff5b5efafc7f363f`  
		Last Modified: Tue, 27 Oct 2026 17:46:17 GMT  
		Size: 3.1 MB (3144850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313bf4e53f7d56f34a6eaf0dbaa43a979c4cbd023e3b0fcc19269fdc396e1123`  
		Last Modified: Tue, 27 Oct 2026 17:46:16 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261023-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:c23e4c48cf938a063340f48a7383cff88ec378cad28b49b623305bdddc5711d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 KB (134920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d4406f3c1ae7fb20f4d3a48e2db1c8984865253a16ab2aab9742eaee48a6ff`

```dockerfile
```

-	Layers:
	-	`sha256:5b7fcecfcd49560fde59e74ee43ee1c475584ad91e3fb43a3ed2a1886a022f17`  
		Last Modified: Tue, 27 Oct 2026 17:46:16 GMT  
		Size: 116.5 KB (116477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:336e7e1efb3b6bc43c81ad52346fc617a35ba96c36a1a7f452b737e61f8e9437`  
		Last Modified: Tue, 27 Oct 2026 17:46:16 GMT  
		Size: 18.4 KB (18443 bytes)  
		MIME: application/vnd.in-toto+json
