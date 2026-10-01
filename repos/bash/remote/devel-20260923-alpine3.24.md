## `bash:devel-20260923-alpine3.24`

```console
$ docker pull bash@sha256:1969487be8c6c7f45e1b3bd1425676fc4805ae55b496e75cde768273c3754dfe
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

### `bash:devel-20260923-alpine3.24` - linux; amd64

```console
$ docker pull bash@sha256:9db68232257f562de3242c733c2128cb73ee2e7389b6549eddfdc292868fe76d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6904833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf7f85ea24f412e4142ed8e44050428aeb9466f00ca5e523f25ccc41ee39249`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 22:05:28 GMT
ENV _BASH_COMMIT=1c20880e1683aaabc887a1358c98cdb9c169a630
# Tue, 29 Sep 2026 22:05:28 GMT
ENV _BASH_VERSION=devel-20260923
# Tue, 29 Sep 2026 22:05:28 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 29 Sep 2026 22:06:03 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 29 Sep 2026 22:06:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 29 Sep 2026 22:06:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Sep 2026 22:06:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44c3cbb0c4d472d00f258e3267bfb68201df02da715e5971a8ea15628c33f95`  
		Last Modified: Tue, 29 Sep 2026 22:06:08 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd2ff31f94eb7de11cda72d051d05c951ebd68d5fd2b6218210733015c07e404`  
		Last Modified: Tue, 29 Sep 2026 22:06:08 GMT  
		Size: 3.1 MB (3054306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8bb0363be44267e861a5e96d5ce25f195abe498921f5f65efb78abbe47f20f4`  
		Last Modified: Tue, 29 Sep 2026 22:06:08 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20260923-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:a7781c7ee7c3a7325028c2a36b55caebaccbee16bd5a35095c2f9a0b659f72e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 KB (135340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb2179a044a372955c86e18e906d4f3101606857c9ad1b33c365cb14a39ec99`

```dockerfile
```

-	Layers:
	-	`sha256:d65a95cf7eac5553f321ef0553c469398551d957f350bd1477b7d9ba7cbc46e4`  
		Last Modified: Tue, 29 Sep 2026 22:06:08 GMT  
		Size: 117.1 KB (117128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8e0c6e626201f43b53f30def0c47afc599b828584091270b70f94253759446e`  
		Last Modified: Tue, 29 Sep 2026 22:06:08 GMT  
		Size: 18.2 KB (18212 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20260923-alpine3.24` - linux; arm variant v6

```console
$ docker pull bash@sha256:5eff075ed4b126fc09edffc6b8206818a432017e88292a7cc2790976f1190c68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6569346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bda303bf9c2e82c0ec5d57d88d926745956fc04eba10a7c6c06ca21f3002d599`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 22:05:30 GMT
ENV _BASH_COMMIT=1c20880e1683aaabc887a1358c98cdb9c169a630
# Tue, 29 Sep 2026 22:05:30 GMT
ENV _BASH_VERSION=devel-20260923
# Tue, 29 Sep 2026 22:05:30 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 29 Sep 2026 22:06:15 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 29 Sep 2026 22:06:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 29 Sep 2026 22:06:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Sep 2026 22:06:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83fc37ea9ce157e5fb6edd5a8fb96d40b4b9e8ee055c3a898be399f2adeb131d`  
		Last Modified: Tue, 29 Sep 2026 22:06:19 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a8e0837dad32ca9dace6c3e0e617f2cac224e6e982f369da1d03af7807318d8`  
		Last Modified: Tue, 29 Sep 2026 22:06:19 GMT  
		Size: 3.0 MB (3013445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a2334d347cee5bb6798ac15b47f87392d937367b12378eac099ad9b62eeb09`  
		Last Modified: Tue, 29 Sep 2026 22:06:19 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20260923-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:83166ad103e5282fa65522359a9cb418e0a0fb5df633d9df3fecc5119741202e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 KB (18077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e757b17728b1868a34e228a92917e71ada58bd1728c7f87e16a14cd5667e9daa`

```dockerfile
```

-	Layers:
	-	`sha256:7318044219d6c6b232701a4c153fefb85466e3b6772b8d06f02f1da5998cc66b`  
		Last Modified: Tue, 29 Sep 2026 22:06:18 GMT  
		Size: 18.1 KB (18077 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20260923-alpine3.24` - linux; arm variant v7

```console
$ docker pull bash@sha256:2685846685d51895f29a34e1885993178debac4c02ecabf2468d517251ac3669
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6226718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16fd803a46de4e94b77e50d793c6f8a338901916d59a9e1be53fff3b835eb921`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 22:05:31 GMT
ENV _BASH_COMMIT=1c20880e1683aaabc887a1358c98cdb9c169a630
# Tue, 29 Sep 2026 22:05:31 GMT
ENV _BASH_VERSION=devel-20260923
# Tue, 29 Sep 2026 22:05:31 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 29 Sep 2026 22:06:15 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 29 Sep 2026 22:06:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 29 Sep 2026 22:06:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Sep 2026 22:06:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cced328e5a09e9ccb96b2ef5884f88037e02c105eb798d0818ed85e2600acef`  
		Last Modified: Tue, 29 Sep 2026 22:06:20 GMT  
		Size: 458.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fab9913abd988ac2dc60d52ef9eca91238bdc67627a53fec23403e031380edf5`  
		Last Modified: Tue, 29 Sep 2026 22:06:20 GMT  
		Size: 3.0 MB (2960727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79c1f3fa1f69df6ddc1e423a96febe4abfd5684abe41e465f01f0a233839b57`  
		Last Modified: Tue, 29 Sep 2026 22:06:20 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20260923-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:0d216f6a396210a86f72959db1ffdc4a308a2d324b29ec751c1bad56950fc863
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 KB (134806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b02841fea02fc317da5972259c0242de30c41692f2de8b8a82a33391843d3914`

```dockerfile
```

-	Layers:
	-	`sha256:7239915b281d711a4c21155daa1244917eaa1001abbc0942e0110d7ba794168a`  
		Last Modified: Tue, 29 Sep 2026 22:06:20 GMT  
		Size: 116.5 KB (116514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31ff181fef46c4fe7bd22c20f86574961deba4825142e9fb604cd35bf86ff9c6`  
		Last Modified: Tue, 29 Sep 2026 22:06:20 GMT  
		Size: 18.3 KB (18292 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20260923-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:d10c273c7ba4e19ef4bf16b4f1bdc646aff4aeaff414f5e07752bacb07443aae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7316587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd832f3242b9fd6ce9f7228e18ca00493c3932886b5cca53fc11c1a4015c57ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 22:07:51 GMT
ENV _BASH_COMMIT=1c20880e1683aaabc887a1358c98cdb9c169a630
# Tue, 29 Sep 2026 22:07:51 GMT
ENV _BASH_VERSION=devel-20260923
# Tue, 29 Sep 2026 22:07:51 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 29 Sep 2026 22:08:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 29 Sep 2026 22:08:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 29 Sep 2026 22:08:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Sep 2026 22:08:31 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c04ac189a105412d7261a5e50c52d58eeb09114e0e72ceadc6dd633e1613c3f`  
		Last Modified: Tue, 29 Sep 2026 22:08:36 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7afd37ebcf281d71b724e56c14ac8f601355d081d477f44898d0709f9d17f5d6`  
		Last Modified: Tue, 29 Sep 2026 22:08:36 GMT  
		Size: 3.1 MB (3128137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45aab7a397f308a5d2415f5556a5e180cdbc4258a244f58882a6cd6830e72eb4`  
		Last Modified: Tue, 29 Sep 2026 22:08:36 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20260923-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:1199ea09f649b4a3bf56eb32a3a44cbb52a68a14e444f1edb7a2d951c96f27f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 KB (134850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39450a8457f8fb7ec628715ced5d873e613dc1d333e9cc2c688c40b1b73a0c33`

```dockerfile
```

-	Layers:
	-	`sha256:a537047f4463ede84be532d8bd5dc293cf20ab69a8e62a59d2c8cc133525d108`  
		Last Modified: Tue, 29 Sep 2026 22:08:36 GMT  
		Size: 116.5 KB (116534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50f7364d76dcd17b289357e65ac07633ab1f80b934bd6af32db6fd8fcd2a2e3d`  
		Last Modified: Tue, 29 Sep 2026 22:08:36 GMT  
		Size: 18.3 KB (18316 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20260923-alpine3.24` - linux; 386

```console
$ docker pull bash@sha256:eccc62d875fabf254643173c6150e782b0295273d3b81de9522818e462a97cec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6657535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54f372b159cc45ec8b1aa0c0de23066560d0b3c96fc746e7bbab302365bc25c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 22:05:11 GMT
ENV _BASH_COMMIT=1c20880e1683aaabc887a1358c98cdb9c169a630
# Tue, 29 Sep 2026 22:05:11 GMT
ENV _BASH_VERSION=devel-20260923
# Tue, 29 Sep 2026 22:05:11 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 29 Sep 2026 22:05:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 29 Sep 2026 22:05:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 29 Sep 2026 22:05:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Sep 2026 22:05:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5f99d135243a594c63f882c098ca9ca306adb583cf085f0f5d0238896958968`  
		Last Modified: Tue, 29 Sep 2026 22:05:54 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c858f716e9f0469b1985819970127e8a042ebb8cc4aa68cdcea824d4bb31a17e`  
		Last Modified: Tue, 29 Sep 2026 22:05:54 GMT  
		Size: 3.0 MB (2979965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7e3a28afa854bfd82b759fcd0757609ecd5e243e4f2e326d223676fc2f9803`  
		Last Modified: Tue, 29 Sep 2026 22:05:54 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20260923-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:d9e501050df99a8a4b293142f9c63a8c0346c33c5392114a79b42c8928ebc2df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 KB (135282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e052b1300dc633ad1e515cd1935183a5b37c1a2e16b70c723f6560ee1351125c`

```dockerfile
```

-	Layers:
	-	`sha256:03ce492fb19513f120f2fa3ac47d80a1c95db6e5f19be2bd3e5cf2df03dda6f9`  
		Last Modified: Tue, 29 Sep 2026 22:05:54 GMT  
		Size: 117.1 KB (117103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6277b2807494f3f51bea09b47aa8fa190d17f33c5b26b41f003b1d9f9ebc790f`  
		Last Modified: Tue, 29 Sep 2026 22:05:54 GMT  
		Size: 18.2 KB (18179 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20260923-alpine3.24` - linux; ppc64le

```console
$ docker pull bash@sha256:6c080d2519031af99c62ad7ebdd391221c21b9891c7b1b3203652a2019cae0a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7188243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56dd8f20c2e3aec909a7a1556a51396e3a6722928c7ad9586c8b43cd79c0ac67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 22:21:37 GMT
ENV _BASH_COMMIT=1c20880e1683aaabc887a1358c98cdb9c169a630
# Tue, 29 Sep 2026 22:21:37 GMT
ENV _BASH_VERSION=devel-20260923
# Tue, 29 Sep 2026 22:21:37 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 29 Sep 2026 22:22:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 29 Sep 2026 22:22:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 29 Sep 2026 22:22:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Sep 2026 22:22:54 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abe15a773559fbc8051e32c56057762ad3c0306387a432e7d688cfc3dbbed9f`  
		Last Modified: Tue, 29 Sep 2026 22:23:05 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48f5c10af63daa10e89a9b47f94549ff51abba11e67735148c51448f483d4f76`  
		Last Modified: Tue, 29 Sep 2026 22:23:05 GMT  
		Size: 3.4 MB (3369972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f19cac9cb579fdaf4029f4886b0a2810687e9b2b4eb04b9d7c3e4a599e06b01`  
		Last Modified: Tue, 29 Sep 2026 22:23:05 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20260923-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:127c3bc3f2ae67c139db23290fe12ddc3a0e5aba9661fbf6ec2c1e450a492d67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 KB (134767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d2d3ebb83c85b0a7eba3b6ab22ef322db3f0745f774b585bbfc68dd5aadf22`

```dockerfile
```

-	Layers:
	-	`sha256:807088150f2f58706532fcd06f5d55126be27e7a32fd2b4ba09341acf2041775`  
		Last Modified: Tue, 29 Sep 2026 22:23:05 GMT  
		Size: 116.5 KB (116511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42eb0ac8dea9687bc9a94379149f2fa8e1359f949c89b19bc2b742b8edd448b7`  
		Last Modified: Tue, 29 Sep 2026 22:23:05 GMT  
		Size: 18.3 KB (18256 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20260923-alpine3.24` - linux; riscv64

```console
$ docker pull bash@sha256:b23d69f1a6e9489ba872808e1f9744398c7cdc0d6d4b2c4ca5b23b5f2316875e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6821481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8c81df88adb428cece61158fb245efc661fb4ab04cac77a168214b424343b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 10:26:27 GMT
ENV _BASH_COMMIT=1c20880e1683aaabc887a1358c98cdb9c169a630
# Thu, 01 Oct 2026 10:26:27 GMT
ENV _BASH_VERSION=devel-20260923
# Thu, 01 Oct 2026 10:26:27 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Thu, 01 Oct 2026 10:35:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Thu, 01 Oct 2026 10:35:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 10:35:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Oct 2026 10:35:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a4f068e56d78236695dc8a3fdadf69f19d82b724f64a3f613ff24c4f49b65f0`  
		Last Modified: Thu, 01 Oct 2026 10:36:23 GMT  
		Size: 458.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f3eaa81e4684bbaa450df10158546ab0a8feb90d8d61496fc7210c31955cc24`  
		Last Modified: Thu, 01 Oct 2026 10:36:23 GMT  
		Size: 3.2 MB (3245311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38fc2ade973967c309c4e871440d4be9250975af73906541d47e33be99b2c209`  
		Last Modified: Thu, 01 Oct 2026 10:36:23 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20260923-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:75c37d63772e2c32d5d2a8bab57de1121436c916f75962ccd880c95a4f5af1b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 KB (134763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe4dac80c512af4bc4cf1af433bcad0f953982bbf32481dc22d644565465e136`

```dockerfile
```

-	Layers:
	-	`sha256:e47f697d5e724719cd8650708b8a46d04f3cd69130ce51de2123a9902a2539db`  
		Last Modified: Thu, 01 Oct 2026 10:36:23 GMT  
		Size: 116.5 KB (116507 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17d79373533d6b0673cdddbd6ae5baae5037967323739cebaa118723523e73cf`  
		Last Modified: Thu, 01 Oct 2026 10:36:23 GMT  
		Size: 18.3 KB (18256 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20260923-alpine3.24` - linux; s390x

```console
$ docker pull bash@sha256:3d4d7b01fd6d9e1d61c69c22e9578c8f252149d97a040d3c84cb2d0b7f8bdea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6860643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5beb44e7d1a8600d06a550d2d255b2cd53384c40e9ef6167be274fc645861bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 22:08:53 GMT
ENV _BASH_COMMIT=1c20880e1683aaabc887a1358c98cdb9c169a630
# Tue, 29 Sep 2026 22:08:53 GMT
ENV _BASH_VERSION=devel-20260923
# Tue, 29 Sep 2026 22:08:53 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 29 Sep 2026 22:09:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 29 Sep 2026 22:09:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 29 Sep 2026 22:09:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Sep 2026 22:09:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c536828c9e50e87b406f29d295c21f77747726b0c9a12e702f8d6e3505b61e97`  
		Last Modified: Tue, 29 Sep 2026 22:09:36 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b0acc076a60f9535dc82835983dafb4f4b6b677b413efa59d15e602534ff6d1`  
		Last Modified: Tue, 29 Sep 2026 22:09:36 GMT  
		Size: 3.1 MB (3144516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:642ac4913db4027edd58b6027ad79ea3dbad45f340f171dfc15428d505f8e5c6`  
		Last Modified: Tue, 29 Sep 2026 22:09:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20260923-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:472bbbd8e51e610fcb9da8e02ce5961db28eb30dfffc498a3510331e2cc259f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 KB (134689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d8e631579468eb5b4a31252ba2221f3fb042e7fe25b3d1559f5d95e8e7d4ab`

```dockerfile
```

-	Layers:
	-	`sha256:d8fbb64d5dc747f64bc4335a337951ce231b993f5d224f70cbc8ea8dc1b1c48b`  
		Last Modified: Tue, 29 Sep 2026 22:09:36 GMT  
		Size: 116.5 KB (116477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:693c764b5f1eca59fded5643121ea8836b3f8f505c1aa0317bb44ea760c0b135`  
		Last Modified: Tue, 29 Sep 2026 22:09:36 GMT  
		Size: 18.2 KB (18212 bytes)  
		MIME: application/vnd.in-toto+json
