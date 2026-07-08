## `bash:devel-alpine3.24`

```console
$ docker pull bash@sha256:c627141eacc30f3ce47722bfa1406b64c20982bd8c17c589e234791936d9be52
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
$ docker pull bash@sha256:aba33e96fc37af93f86fa5d8b13d9cf0263ac979552820b8b34c31aed99b25d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6890224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:348a71387a3c7e8b6bbf7e8b81d6fead5cb74cc855240b21b0ad2ec434eeb4f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:54:48 GMT
ENV _BASH_COMMIT=0e16a4e4b1dd8403bd186f13716079cb223f9603
# Tue, 07 Jul 2026 17:54:48 GMT
ENV _BASH_VERSION=devel-20260701
# Tue, 07 Jul 2026 17:54:48 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 07 Jul 2026 17:55:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 07 Jul 2026 17:55:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:55:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:55:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2364c2a2694269aff1870e1f77a5aaffac6965d2e08f8684ade6d7bb6b1d18b9`  
		Last Modified: Tue, 07 Jul 2026 17:55:29 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c58a8e47e1bd1f3f42a287b01f586d3d938f13ee8e758a225d296c393f988c`  
		Last Modified: Tue, 07 Jul 2026 17:55:30 GMT  
		Size: 3.0 MB (3043040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d38ad5e46638370d08f8f810c00e3caf943571986b61059996f1855c755e434`  
		Last Modified: Tue, 07 Jul 2026 17:55:29 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:8acced79708da92e4f99875793761e0a46b6975762d04ed63c8415818fcbde45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 KB (135292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc06a99787c137db7b53e5175ce36fd808f20490aa1dbc3c0741e36713ad1faa`

```dockerfile
```

-	Layers:
	-	`sha256:64d3153fff291dd6aed9d5a83f0adc076bff5e29ed9a2754818e8413f82b4ce5`  
		Last Modified: Tue, 07 Jul 2026 17:55:29 GMT  
		Size: 117.1 KB (117128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c2bd5d72f8c307b41e271cd1fbfb0c3a450eff124cae16a4baec293e8d9996`  
		Last Modified: Tue, 07 Jul 2026 17:55:30 GMT  
		Size: 18.2 KB (18164 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; arm variant v6

```console
$ docker pull bash@sha256:c981d46c7c1ecf4d11b3e1f5265134f73c350d406e6ab57724cb55b65e6a55ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6558018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95eb053aa0d9cb9386debc35b16d874bb6f3e4a15fd1e40b38f7c40663857b7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:23:47 GMT
ENV _BASH_COMMIT=0e16a4e4b1dd8403bd186f13716079cb223f9603
# Tue, 07 Jul 2026 18:23:47 GMT
ENV _BASH_VERSION=devel-20260701
# Tue, 07 Jul 2026 18:23:47 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 07 Jul 2026 18:24:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 07 Jul 2026 18:24:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:24:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:24:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:198e0784cc6cef4496fdeb33d47d032d575041962710825d46e53df416e4c33d`  
		Last Modified: Tue, 07 Jul 2026 18:24:38 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1cdf90e4e9c792ac9d8a6f6600dbb3bc81160aa5bd78b0559ea94740d4ebf82`  
		Last Modified: Tue, 07 Jul 2026 18:24:38 GMT  
		Size: 3.0 MB (3003776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c58c11752ca4d609fa7ab2df6bec823e4481d2fb15ba3764cb6087661e2379b5`  
		Last Modified: Tue, 07 Jul 2026 18:24:38 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:2976641fad8972323067e754144aeafc967a5bab4416fbab9fbd1a1cd31c1e18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 KB (18029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48fb9a66e6d9a292fea4cb9389e237951cf536ff5c89fcaf9a4ea368fe1cd9b3`

```dockerfile
```

-	Layers:
	-	`sha256:10f347e0145e59f2403cc8e5cf052f7daaa69807ed29595b657094271d8b8a13`  
		Last Modified: Tue, 07 Jul 2026 18:24:38 GMT  
		Size: 18.0 KB (18029 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; arm variant v7

```console
$ docker pull bash@sha256:2af5437a7165107057bb01be5be0fc9199287ebff81baea1f39560f3789183d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6213220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9442cefd30a8d78e3c08486e701021fe0072871674a87b178b8232a15b9c08b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:33:42 GMT
ENV _BASH_COMMIT=0e16a4e4b1dd8403bd186f13716079cb223f9603
# Tue, 07 Jul 2026 18:33:42 GMT
ENV _BASH_VERSION=devel-20260701
# Tue, 07 Jul 2026 18:33:42 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 07 Jul 2026 18:34:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 07 Jul 2026 18:34:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:34:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:34:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61a6e198e21a302d3a903ae5a52fe48b8efd45a5379cec790f28f95fba248bb`  
		Last Modified: Tue, 07 Jul 2026 18:34:32 GMT  
		Size: 458.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd5b5ba75019473f2f91220a19709d8408bf57819faaf0cb64057d87574317fb`  
		Last Modified: Tue, 07 Jul 2026 18:34:32 GMT  
		Size: 3.0 MB (2951817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f01b685a7097cc3edc32fa63680e8c406efb271a594159db204e1b2a09e2df`  
		Last Modified: Tue, 07 Jul 2026 18:34:32 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:10e4c8fdf34f9d43861bd832193ee09d054a2a1b6d9720b8abbbd6728b9be320
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 KB (134758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:738260c892ab915d3aca14953571d1b67a6423c95b5abbb40cf0f2eaa3d100ca`

```dockerfile
```

-	Layers:
	-	`sha256:1859b81a76c0367b1439b22b31ddbc179deba3961321b8e82ad360c9b8bce726`  
		Last Modified: Tue, 07 Jul 2026 18:34:32 GMT  
		Size: 116.5 KB (116514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82365520664ad1554b0c86b7f2b5961cd5fa59f11935e844e190a50be981021c`  
		Last Modified: Tue, 07 Jul 2026 18:34:32 GMT  
		Size: 18.2 KB (18244 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:99ddba5b59aab91192f7140f9692bf5fee47360e5a7a0871b1583d14616dd897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7299316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b36ede3c8b63b05461b9a5e3a163a3c354c817f055c4f56ac0b75f5a39f1aa5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:54:53 GMT
ENV _BASH_COMMIT=0e16a4e4b1dd8403bd186f13716079cb223f9603
# Tue, 07 Jul 2026 17:54:53 GMT
ENV _BASH_VERSION=devel-20260701
# Tue, 07 Jul 2026 17:54:53 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 07 Jul 2026 17:56:50 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 07 Jul 2026 17:56:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:56:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:56:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762c46abdb7897b234d31e2fc90a59e28725e2de1721753379c2eab6a4670562`  
		Last Modified: Tue, 07 Jul 2026 17:56:55 GMT  
		Size: 458.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0756e40b42602bfb35c96bc828106e4243bdf589d4f81c287882c341ea8bb22d`  
		Last Modified: Tue, 07 Jul 2026 17:56:55 GMT  
		Size: 3.1 MB (3115485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:babfb2449a149e18b4fc481902d6a769c5e1ca5c455e2f1e12d2e1178f2f13b8`  
		Last Modified: Tue, 07 Jul 2026 17:56:55 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:db2bfdb9a7c6f1e82a0001527e0776450e70ccd64b979567d0ef3aa55aa2d140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 KB (134802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f5cb09a1a48e81c87f0d4e5d0e6effb5588ca5dfffddd39c8105cc7bd9b29e`

```dockerfile
```

-	Layers:
	-	`sha256:aba436aabce0cea83abfd9d53212e67253190982180841c254460cb5b335a8ce`  
		Last Modified: Tue, 07 Jul 2026 17:56:55 GMT  
		Size: 116.5 KB (116534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e13629cef3db6c6e8c105aeb64f096d38f2f15ecd80d8bd3c3b6eaba25a99e10`  
		Last Modified: Tue, 07 Jul 2026 17:56:55 GMT  
		Size: 18.3 KB (18268 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; 386

```console
$ docker pull bash@sha256:68a7c8e598fa33fc534031b7d6ad33b80f325824468c6cd3b4b270827cbba845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6641860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:352fcfad928178ef9df2dc85ff450382a606110a5bd5267174a165b6a51d9e0a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:07:57 GMT
ENV _BASH_COMMIT=0e16a4e4b1dd8403bd186f13716079cb223f9603
# Tue, 07 Jul 2026 18:07:57 GMT
ENV _BASH_VERSION=devel-20260701
# Tue, 07 Jul 2026 18:07:57 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 07 Jul 2026 18:08:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 07 Jul 2026 18:08:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:08:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:08:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:125fe742218611f4eb789b7d950e9b960fd3c20b90a30c09329af4db358bf7f1`  
		Last Modified: Tue, 07 Jul 2026 18:08:42 GMT  
		Size: 458.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9672b8fac88dd4f6fa6fec8d8b8707add37d1f4d60e4cd40cb5898ff82fe9bae`  
		Last Modified: Tue, 07 Jul 2026 18:08:42 GMT  
		Size: 3.0 MB (2970928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c0791f50da1aed5cdc1312296afdf40971297681fa21acc1418b81222e3bbe3`  
		Last Modified: Tue, 07 Jul 2026 18:08:42 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:c2b5a29c964f58e4500951cc709b0267b11c700f61ddf248b3baee2c3ec653e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 KB (135235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76bb317d94673376ba348e8d6494975252eb91e8b55849afd7cfe8b89e02e898`

```dockerfile
```

-	Layers:
	-	`sha256:ab3eed1ed77f2420177da8901300f6d9e144b8ed95a466545d03a802eee2b7c8`  
		Last Modified: Tue, 07 Jul 2026 18:08:42 GMT  
		Size: 117.1 KB (117103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2704fedd425f35717989be1deb4fba11204622d93f88f75b5a34f0ca2cf8c0fa`  
		Last Modified: Tue, 07 Jul 2026 18:08:42 GMT  
		Size: 18.1 KB (18132 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; ppc64le

```console
$ docker pull bash@sha256:e0e7c2acd2d28d27ec8977f92e540584e3333426b0974c43ab77c9e4e08f10a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7170311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbd4d8e02a287eeeccf5e4c0a9b7d7f56bd14aa1ce50dac2ed539e572d5368c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:27:10 GMT
ENV _BASH_COMMIT=0e16a4e4b1dd8403bd186f13716079cb223f9603
# Tue, 07 Jul 2026 18:27:10 GMT
ENV _BASH_VERSION=devel-20260701
# Tue, 07 Jul 2026 18:27:10 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 07 Jul 2026 18:28:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 07 Jul 2026 18:28:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:28:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:28:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0da92b26f79593bd2db0a3863d5963945cf52650af5ad6b937e20f2889d7965`  
		Last Modified: Tue, 07 Jul 2026 18:28:28 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be5965c51eca60e3177372142d225ef9b02ea5e1d2a0b530b0385a04bfd3a815`  
		Last Modified: Tue, 07 Jul 2026 18:28:29 GMT  
		Size: 3.4 MB (3356122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef5d07054ca8e05f32144b8903dcec1239fb9afc013edf12988c355a6b73a84`  
		Last Modified: Tue, 07 Jul 2026 18:28:28 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:4499097a33fff1992e8ce7a82d900cf7793170467bbee3876ef74e915a8199c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 KB (134719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18bc31449fb1b07c3df41d8c1595a0fe3f18601d50fcb4056db6d6ab206c763b`

```dockerfile
```

-	Layers:
	-	`sha256:9e042341ccb4050b927dfe567cf6037e1c7a1a76e7aaf54eeb8da0c1d57ae8ff`  
		Last Modified: Tue, 07 Jul 2026 18:28:28 GMT  
		Size: 116.5 KB (116511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5180faab7d5849a0efbd3b93b48d6f904cfee1d294c95f0df0c7bd308d4bed88`  
		Last Modified: Tue, 07 Jul 2026 18:28:28 GMT  
		Size: 18.2 KB (18208 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; riscv64

```console
$ docker pull bash@sha256:0edf3dda1b31795c1dc0c9ce0d761fec95ed878657353cfcacdcffb8a99faba5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6810369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d3bb06415e9fbb59ce6385477f7910ffee422d69f180dd3640ba380e18ec46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Wed, 08 Jul 2026 01:11:24 GMT
ENV _BASH_COMMIT=0e16a4e4b1dd8403bd186f13716079cb223f9603
# Wed, 08 Jul 2026 01:11:24 GMT
ENV _BASH_VERSION=devel-20260701
# Wed, 08 Jul 2026 01:11:24 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Wed, 08 Jul 2026 01:20:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Wed, 08 Jul 2026 01:20:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 01:20:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 01:20:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea27d705a90d2a80a1242046e4b1ddee5279cbe30df1b30cef0cb1d198d6ac32`  
		Last Modified: Wed, 08 Jul 2026 01:21:24 GMT  
		Size: 459.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12077142eafd927c73cd93cc110d883e7fb4814fa8b354ca7dcd99a6bc17c735`  
		Last Modified: Wed, 08 Jul 2026 01:21:25 GMT  
		Size: 3.2 MB (3235212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a089b39bf8fc3a7021bc78e48c4eaf1f207e98d8a6143b9f1d5ab372edb1c4`  
		Last Modified: Wed, 08 Jul 2026 01:21:24 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:38d2d49124b49184c6ff737acfb7abd2fdf7b6a1189b8dc7f735aa0f473bf6db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 KB (134715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199ec816f01b3b03f7a465582ead965ed85c76eb0bfbeb8e2390ce8eeb11b768`

```dockerfile
```

-	Layers:
	-	`sha256:93ca2691f52f75dd2173eeb21d9bc778b0df9583c7dbf2ff893c16dd90790898`  
		Last Modified: Wed, 08 Jul 2026 01:21:24 GMT  
		Size: 116.5 KB (116507 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3120e26715594f23ecadf766a02ee8938ace8f41244f13cb6bff857124aa1fae`  
		Last Modified: Wed, 08 Jul 2026 01:21:24 GMT  
		Size: 18.2 KB (18208 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel-alpine3.24` - linux; s390x

```console
$ docker pull bash@sha256:19c48e56aa8a0b0fa29b6037775440c3227ce2f62bad2491164bcde9d859d261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6845593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114a1d38c8f19df7c443122ed91f64ef915a73773e2d7b5de3d4cefc3c768d5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 20:23:29 GMT
ENV _BASH_COMMIT=0e16a4e4b1dd8403bd186f13716079cb223f9603
# Tue, 07 Jul 2026 20:23:29 GMT
ENV _BASH_VERSION=devel-20260701
# Tue, 07 Jul 2026 20:23:29 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 07 Jul 2026 20:24:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 07 Jul 2026 20:24:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 20:24:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 20:24:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7096ad7ef7eff79830cf710bb6bb7f1f69d97ef7ccc0011d16254b448e5816fb`  
		Last Modified: Tue, 07 Jul 2026 20:24:26 GMT  
		Size: 458.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ca311a7d0f575d3777216c09a76cac50c45be4eeae5188d034714b8659d7323`  
		Last Modified: Tue, 07 Jul 2026 20:24:26 GMT  
		Size: 3.1 MB (3135479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:810234afdb11b1aa8c4c309ede4a0e85a8dda3bd413debb2104cd23cb3083e75`  
		Last Modified: Tue, 07 Jul 2026 20:24:26 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel-alpine3.24` - unknown; unknown

```console
$ docker pull bash@sha256:85f0dc031524a044821ee93f10ecd1d63e5a8e037f06d86853b0f61f73cadcc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.6 KB (134641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3280dc271b0f856cc8a7afa2c0d2fab50c92f07c759c78c190fb2b6ada988ca`

```dockerfile
```

-	Layers:
	-	`sha256:fee6ad09f8b6633e98fff424f64dcf5ff8306ea4be2d2d71c7a4abe704daebe5`  
		Last Modified: Tue, 07 Jul 2026 20:24:26 GMT  
		Size: 116.5 KB (116477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:834ddb6bb0a6d7ee8eaec7bfd69ff13100dfe6860e27911e5ebc2146b5aecad9`  
		Last Modified: Tue, 07 Jul 2026 20:24:26 GMT  
		Size: 18.2 KB (18164 bytes)  
		MIME: application/vnd.in-toto+json
