## `bash:devel-20261117-alpine3.24`

```console
$ docker pull bash@sha256:38863bbaec5f08d24531da48a1fe8db233aa43721c49bc254285ad60d74795f4
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

### `bash:devel-20261117-alpine3.24` - linux; amd64

```console
$ docker pull bash@sha256:abdd0cbf67b4c2fef7f9a635762918785db818b0e395cd9c8af7b9031e281df1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6908872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c1ed70c557293d4a0de687e2ddf9d0f7f0a4ccd72af621c288efa6f3a035cf7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 21:19:57 GMT
ENV _BASH_COMMIT=edeabcfb383d53ed90807ac2ce84d66f42721d31
# Tue, 24 Nov 2026 21:19:57 GMT
ENV _BASH_VERSION=devel-20261117
# Tue, 24 Nov 2026 21:19:57 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 24 Nov 2026 21:20:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 24 Nov 2026 21:20:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:20:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:20:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1cb73b7a5486e5911485f650bcb7a1147fc7bfae4cdaa4898ec23803a837f9`  
		Last Modified: Tue, 24 Nov 2026 21:20:40 GMT  
		Size: 459.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e323819b78d33e67f6d257da00ba6d3a49b605d6a69be9bb39b21aa872f2227`  
		Last Modified: Tue, 24 Nov 2026 21:20:41 GMT  
		Size: 3.1 MB (3054409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f33bb0225006625f1a1131d9748d173adde51cb9b773456aa1e47a78adf89e`  
		Last Modified: Tue, 24 Nov 2026 21:20:40 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261117-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:805e619094322e4a87de76e635052cd5fcededed6774b3b88800f4ae6b5b16ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.4 KB (135416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50302bd62fc7a9882ba312a337c03a591896cf7be9733e547bbca622886310a3`

```dockerfile
```

-	Layers:
	-	`sha256:ee15067456cc297294ff61732e69fdc72ef8c2bde215c6205d7901a9614730b1`  
		Last Modified: Tue, 24 Nov 2026 21:20:40 GMT  
		Size: 117.1 KB (117128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7efaae2a3b9de928ecca44b684d567cc2d7c91a1e625e04778b1fb330d45fc1c`  
		Last Modified: Tue, 24 Nov 2026 21:20:40 GMT  
		Size: 18.3 KB (18288 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20261117-alpine3.24` - linux; arm variant v6

```console
$ docker pull bash@sha256:c5f5bb2ac4cbb773e2ddaa750e0179f7eeddc001d178480f48d5cc024f5e4c99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6573340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d648802872a739821ed43a7c3ee770b8b9342eb92878b16d80205990f657a2e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 21:37:21 GMT
ENV _BASH_COMMIT=edeabcfb383d53ed90807ac2ce84d66f42721d31
# Tue, 24 Nov 2026 21:37:21 GMT
ENV _BASH_VERSION=devel-20261117
# Tue, 24 Nov 2026 21:37:21 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 24 Nov 2026 21:38:04 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 24 Nov 2026 21:38:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:38:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:38:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe19c80e384728a9d6f03487d7102a2343dd8d1db5e271648cb52ef7c56adadf`  
		Last Modified: Tue, 24 Nov 2026 21:38:08 GMT  
		Size: 458.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e50a896ec37712f773f9a1309abed24a06e901bee727d750a600e35fe04f69e7`  
		Last Modified: Tue, 24 Nov 2026 21:38:08 GMT  
		Size: 3.0 MB (3014145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4244f9a0d8f5fe781b8d58a857d2e326472ca31d5211661de92cb584d77b08c`  
		Last Modified: Tue, 24 Nov 2026 21:38:08 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261117-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:5b2a0b160173b3948f98c15217b963491ac6f557e50b7c53cd97efe3f71ac4ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.2 KB (18153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a525089ab7945526a6a3f56a8d2b2bb4eecd05ba55ac44cb0a49f221c03cdc5b`

```dockerfile
```

-	Layers:
	-	`sha256:fe0930935269c80a089bb15fd9139133136aa758a3bc7d52e3054afabd2b212f`  
		Last Modified: Tue, 24 Nov 2026 21:38:08 GMT  
		Size: 18.2 KB (18153 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20261117-alpine3.24` - linux; arm variant v7

```console
$ docker pull bash@sha256:92516af432ebf2bbef025805ac9a1589943a9e829333f44c8733805196a77e17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6229938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05657ec6ba488417cb06f6e4cf93f88a9545d62ce191f2734890dabab20abef9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 21:28:56 GMT
ENV _BASH_COMMIT=edeabcfb383d53ed90807ac2ce84d66f42721d31
# Tue, 24 Nov 2026 21:28:56 GMT
ENV _BASH_VERSION=devel-20261117
# Tue, 24 Nov 2026 21:28:56 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 24 Nov 2026 21:29:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 24 Nov 2026 21:29:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:29:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:29:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74331e164e5f6cead484b186715671bb20a8542a5d4bdfcbafcfb05ffb3379f`  
		Last Modified: Tue, 24 Nov 2026 21:29:43 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d281c6ed730a377b2d6af11aa8c5d8a191ea713003b32e4dfe7ead918453f1`  
		Last Modified: Tue, 24 Nov 2026 21:29:43 GMT  
		Size: 3.0 MB (2961410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:340f2c47047ffda92af369ae79e87ea1a90da794d2c36475cfda033baf6678d8`  
		Last Modified: Tue, 24 Nov 2026 21:29:43 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261117-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:9ba1b622d60cecdc0265a46c24cec5869ef3f0e5c5f10e002bdb77a9e5ff281a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 KB (134881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e5058798d1ef703a02f27c09022656a0f56570aafc74d50779be0b4a5cd29e`

```dockerfile
```

-	Layers:
	-	`sha256:76c98b814068cf72c1082b2cfd1e3a6237b674387e41a908b712a66418adb95b`  
		Last Modified: Tue, 24 Nov 2026 21:29:43 GMT  
		Size: 116.5 KB (116514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c95129b2c7b98c09ec8ab5446a88744b462c9ac2ede293967e08ceb0193bf2e0`  
		Last Modified: Tue, 24 Nov 2026 21:29:43 GMT  
		Size: 18.4 KB (18367 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20261117-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:b85d32adf8bdedd8a7adb971942be5e03bf777b37193f622c0e69f313923d276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7319475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cc09f5139ccff08a6fc5287f1d0c4348fbea8da27b3249990c084bc4fe77758`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 21:25:05 GMT
ENV _BASH_COMMIT=edeabcfb383d53ed90807ac2ce84d66f42721d31
# Tue, 24 Nov 2026 21:25:05 GMT
ENV _BASH_VERSION=devel-20261117
# Tue, 24 Nov 2026 21:25:05 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 24 Nov 2026 21:25:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 24 Nov 2026 21:25:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:25:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:25:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be46c66025a24edf0ae8efeafc73aa5b3bc5aba2952b7ee40902677bfed11f43`  
		Last Modified: Tue, 24 Nov 2026 21:25:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7660ad29b867e09be81f3271efb2f0df9edb85a5270d567061f16a2eb255bf`  
		Last Modified: Tue, 24 Nov 2026 21:25:51 GMT  
		Size: 3.1 MB (3128086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a0e3aacfb71972f2fc7c20e3dba32dd051fa4e0d5ec436e6ea6929c0aaca6a2`  
		Last Modified: Tue, 24 Nov 2026 21:25:51 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261117-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:fa1e00c246e3e6bb2eb0918a174eb5505bca67a5b037b769782f8133a56dd10b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 KB (134926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad6c7621196ca56c8cfeabe944d5d93649321f0503a0df66a866aa7783ec4f3`

```dockerfile
```

-	Layers:
	-	`sha256:f5dd3bfefd7a3c74c9cdace8526ebcbb74c4c09c92dade3c1dc9c5ce75760234`  
		Last Modified: Tue, 24 Nov 2026 21:25:51 GMT  
		Size: 116.5 KB (116534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8c8540a8425aa7771fc877dbba24d2a56abc1bc48e5828f85a8353055377309`  
		Last Modified: Tue, 24 Nov 2026 21:25:51 GMT  
		Size: 18.4 KB (18392 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20261117-alpine3.24` - linux; 386

```console
$ docker pull bash@sha256:56ed698b80e2b0c4ef3c6830b78d15f1ea760743ceb99cb886227fa742570ab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6661779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b98a9ae8dcad9651001558c6a0126597fdfcd7a74611b73be99423f8ab037be2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 21:21:18 GMT
ENV _BASH_COMMIT=edeabcfb383d53ed90807ac2ce84d66f42721d31
# Tue, 24 Nov 2026 21:21:18 GMT
ENV _BASH_VERSION=devel-20261117
# Tue, 24 Nov 2026 21:21:18 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 24 Nov 2026 21:21:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 24 Nov 2026 21:21:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:21:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:21:54 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b854e9e2fe6ec2ea2cf6ffe9e69225b58a31b432934a7fda2cb41fdef7992f1e`  
		Last Modified: Tue, 24 Nov 2026 21:21:59 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2c688514a64666df8d6d2c13c425bd8a1d52dcf88ab35cf235e0e95bf13da1`  
		Last Modified: Tue, 24 Nov 2026 21:21:59 GMT  
		Size: 3.0 MB (2980628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b59a74bc0fae818deec08a53af012638a8e49e5f551f82fc60aa77147493aeb`  
		Last Modified: Tue, 24 Nov 2026 21:21:59 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261117-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:6f5b1092403ece5ea92814035d43b269d37f11181aab582e54a3a65fb4b11148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.4 KB (135359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee3ffe7847718d77bbb22eae2f305ba3abd93316c977b0bd1b85c5619e87b7a7`

```dockerfile
```

-	Layers:
	-	`sha256:06960b917d855098bacfdccf5f073b87af16c522a89fefd707dbfae0534a63f0`  
		Last Modified: Tue, 24 Nov 2026 21:21:59 GMT  
		Size: 117.1 KB (117103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f874e4820de3e50941fc8e2c8b4b1e382bf2d2e4d1244129a9a27a95f48ea02`  
		Last Modified: Tue, 24 Nov 2026 21:21:59 GMT  
		Size: 18.3 KB (18256 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20261117-alpine3.24` - linux; ppc64le

```console
$ docker pull bash@sha256:df94403f759c2cb613ff8a9718dda3cbeec5e39c609d6b17ff3ec1b32b83499b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7193598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fd036f761cef4f430dc656740da3b9e384473a6873af82cc359d5e8bb690a3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 23:08:30 GMT
ENV _BASH_COMMIT=edeabcfb383d53ed90807ac2ce84d66f42721d31
# Tue, 24 Nov 2026 23:08:30 GMT
ENV _BASH_VERSION=devel-20261117
# Tue, 24 Nov 2026 23:08:30 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 24 Nov 2026 23:09:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 24 Nov 2026 23:09:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 23:09:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 23:09:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7b84654476644eedc4f08a50983f808422de5b7787bd7e131b72ab1e9940e2`  
		Last Modified: Tue, 24 Nov 2026 23:09:52 GMT  
		Size: 458.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51cd8666d63a5c7deccd3b993958807da2066a89557fabccc217a0935bd47bb5`  
		Last Modified: Tue, 24 Nov 2026 23:09:52 GMT  
		Size: 3.4 MB (3370882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9272ca4aff0b3a29f12ea48f251d5a2a6c52cc2176b5426a8d6060454c7796c`  
		Last Modified: Tue, 24 Nov 2026 23:09:52 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261117-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:8f88a2dadc691ad533e40ee266e1009ef379f9cb69a06b7556e7849e3357b90a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 KB (134843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0c14982a47eb58e6e67035b4d313eba7115579bbf85cf7c1f65736b593c22ce`

```dockerfile
```

-	Layers:
	-	`sha256:59ac9ddbde28fc5f647fe6ba7b0d5d56cae59bbb6fa678ce1b8763278b7a428e`  
		Last Modified: Tue, 24 Nov 2026 23:09:52 GMT  
		Size: 116.5 KB (116511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a89ff9a7be68b4a145e231b52a024f859d41ec7579379d9d6a60b07c651951a8`  
		Last Modified: Tue, 24 Nov 2026 23:09:52 GMT  
		Size: 18.3 KB (18332 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20261117-alpine3.24` - linux; riscv64

```console
$ docker pull bash@sha256:868168f1f74dc14e59ddbc579c78aa26637cdd4186ca8ba10cee1c2e103628e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6826919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e1a268a088f6f1f4cc59b9ff7f7ab16b771f7cccdbd8bb384b29ae6a9b7802`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 23:17:56 GMT
ENV _BASH_COMMIT=edeabcfb383d53ed90807ac2ce84d66f42721d31
# Tue, 24 Nov 2026 23:17:56 GMT
ENV _BASH_VERSION=devel-20261117
# Tue, 24 Nov 2026 23:17:56 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 24 Nov 2026 23:27:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 24 Nov 2026 23:27:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 23:27:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 23:27:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d911f2f82f7188a2a355ee2f9fe126bb240ac77a4eea7e5c9f630226f5103d4d`  
		Last Modified: Tue, 24 Nov 2026 23:27:42 GMT  
		Size: 459.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c73dd4b35d1dbddb06cc206e67d3009ebd70c8df38b6a22e55e02e625bd325`  
		Last Modified: Tue, 24 Nov 2026 23:27:43 GMT  
		Size: 3.2 MB (3245511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bfbec1c68152ee1ab488a765246197c37ff76e71d6658ccc4f11a067c607ea9`  
		Last Modified: Tue, 24 Nov 2026 23:27:42 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261117-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:c28d82819d9692fe1fb83b44e3ed5c2b9f3dec92a657d5128280bfbe52007564
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 KB (134839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a73a4842501ea9c2d67c4ff5cb5687713fea4f3cbf9b8c3ccb5ed89e84c6293e`

```dockerfile
```

-	Layers:
	-	`sha256:c197c78aafa5b7a8e454a3ceba13c7254a6ab512a8aa83656966a6afdc2584b8`  
		Last Modified: Tue, 24 Nov 2026 23:27:42 GMT  
		Size: 116.5 KB (116507 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04a0e19a30bd29f245a4e19694a7bd3b42c58e2175b171c48a3530701408fa80`  
		Last Modified: Tue, 24 Nov 2026 23:27:42 GMT  
		Size: 18.3 KB (18332 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-20261117-alpine3.24` - linux; s390x

```console
$ docker pull bash@sha256:d6ebcaaf6782b04e2ffa30aea3388b247496891148c20876b28c3d6b7c6c1d58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6866819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f5ab5cc269d350c58291c7c50ad4e6b66ee35a2c61c12fa2a1fd82c162e3cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 21:30:18 GMT
ENV _BASH_COMMIT=edeabcfb383d53ed90807ac2ce84d66f42721d31
# Tue, 24 Nov 2026 21:30:18 GMT
ENV _BASH_VERSION=devel-20261117
# Tue, 24 Nov 2026 21:30:18 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 24 Nov 2026 21:30:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 24 Nov 2026 21:30:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:30:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:30:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec74c63ea9c1ceed2f05383ac1db2aa9808f59e235bf2e03825a5231d46fd7db`  
		Last Modified: Tue, 24 Nov 2026 21:31:05 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee24733e386db4784db5ca0dbbfdf03e5ac3075ba521066bcfd4159c7eb484ab`  
		Last Modified: Tue, 24 Nov 2026 21:31:05 GMT  
		Size: 3.1 MB (3145362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3ee5e04047f569f6b58e777b62bf5af3265f609d8b6725511d834dc0829c34`  
		Last Modified: Tue, 24 Nov 2026 21:31:05 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-20261117-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:b505e76bf5b70741c854210595cba0a11d400f90d612f1f962c8584e79ae2c4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 KB (134765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcfed0c2b09898bb27fa4ed1139c6c81090c735dd9283d2665e4f9b853abe310`

```dockerfile
```

-	Layers:
	-	`sha256:d8f74f2647e9cf82ce1698b034274556610c37aad1eb48143fd83a6ea0af7a7c`  
		Last Modified: Tue, 24 Nov 2026 21:31:05 GMT  
		Size: 116.5 KB (116477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dff7b8a2ba424496dfd7c4b139adc53d7f0e50cd1e1353fbd849f6f215323eb`  
		Last Modified: Tue, 24 Nov 2026 21:31:05 GMT  
		Size: 18.3 KB (18288 bytes)  
		MIME: application/vnd.in-toto+json
