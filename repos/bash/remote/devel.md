## `bash:devel`

```console
$ docker pull bash@sha256:defebbe54e74bc67c53fbb20ea49348acbc3ce5e14352a99cb13674fcb2bae58
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

### `bash:devel` - linux; amd64

```console
$ docker pull bash@sha256:5dc0244802d64f303a384f7aa46c19d70f572077debc774c477b098c67928159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6909106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e65c40b2fe38cc5b48443c47de8288b58c3a8bf0fb30e59d37491cef5f64aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:54:23 GMT
ENV _BASH_COMMIT=f7043f647e84a9642ff03d001062f47e53f631bb
# Wed, 11 Nov 2026 20:54:23 GMT
ENV _BASH_VERSION=devel-20261106
# Wed, 11 Nov 2026 20:54:23 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Wed, 11 Nov 2026 20:54:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Wed, 11 Nov 2026 20:54:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 20:54:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:54:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e79cc0f039ab0ac806be0717a6ededbedc878bc9627b7eb051144678c153fd3`  
		Last Modified: Wed, 11 Nov 2026 20:55:02 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fdffb54330e258c2a4a121342296cd73e12ca9db4671c9397f04366f38e609f`  
		Last Modified: Wed, 11 Nov 2026 20:55:02 GMT  
		Size: 3.1 MB (3054644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4721758bdaff6521fdf9a576bae94f2ffe328cfa9c3440b4dab49a7b755fd3b2`  
		Last Modified: Wed, 11 Nov 2026 20:55:02 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel` - unknown; unknown

```console
$ docker pull bash@sha256:0f28b588278576e3ae8c4a96feb3946436f3fc3e248dc87c8f70fdd306bd1638
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 KB (135140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10d58af1f949806f6065b6540952e22b113a4c6492747074294fbb99beac4985`

```dockerfile
```

-	Layers:
	-	`sha256:27d4aec85eef8a5f71ced4fa662b9b211833ce82805a362603fa5e2edf58842f`  
		Last Modified: Wed, 11 Nov 2026 20:55:02 GMT  
		Size: 117.1 KB (117128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4afdada7e8ef00ee044699bb2044f9d9ad9d7774a22aa1637ad3b5051a2fb67`  
		Last Modified: Wed, 11 Nov 2026 20:55:02 GMT  
		Size: 18.0 KB (18012 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel` - linux; arm variant v6

```console
$ docker pull bash@sha256:32df038380fbd15366bf5ad67ee27537093b43fc3a5490bcf7660f4025f11327
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6573849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bab88a7ce4ad2d6680b83b21836140ec0fc5035b4cc8afe5698b7515d7db067`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:27:20 GMT
ENV _BASH_COMMIT=f7043f647e84a9642ff03d001062f47e53f631bb
# Wed, 11 Nov 2026 20:27:20 GMT
ENV _BASH_VERSION=devel-20261106
# Wed, 11 Nov 2026 20:27:20 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Wed, 11 Nov 2026 20:28:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Wed, 11 Nov 2026 20:28:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 20:28:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:28:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eba10fe59d3111db72d22f4c0d0925aae9f7613325ea95db4f696b50652abd7`  
		Last Modified: Wed, 11 Nov 2026 20:28:10 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10aeda48f656c6f2e2f1a09bf54cafd2b48c4016ae31ebdb00d293f42a1bc81`  
		Last Modified: Wed, 11 Nov 2026 20:28:10 GMT  
		Size: 3.0 MB (3014654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63858c55c22da90697e3c3772065cc373e50d360766e2da344a02b51520352e9`  
		Last Modified: Wed, 11 Nov 2026 20:28:10 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel` - unknown; unknown

```console
$ docker pull bash@sha256:54502709a5444c9640815c729fd02098dcf071e95a0bb950fe50623b2b8ac1c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 KB (17876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db58932679db9d23c74d5e9da4ad1f8b59675f5e8799345aec056764cbc6de3b`

```dockerfile
```

-	Layers:
	-	`sha256:ba3024ad52b79276909ba15fceec7223a861406a6e4a172b8d52964bcc56b7ca`  
		Last Modified: Wed, 11 Nov 2026 20:28:10 GMT  
		Size: 17.9 KB (17876 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel` - linux; arm variant v7

```console
$ docker pull bash@sha256:6ebe85116cea6345b8bc8da43aa7d0ad46523bf46c8f092ec34e87f692c12c79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6230157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8f3399cf1d340004c253ea58eba40617b0302aa193c9dfbff2796393f5b3889`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:33:46 GMT
ENV _BASH_COMMIT=f7043f647e84a9642ff03d001062f47e53f631bb
# Wed, 11 Nov 2026 20:33:46 GMT
ENV _BASH_VERSION=devel-20261106
# Wed, 11 Nov 2026 20:33:46 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Wed, 11 Nov 2026 20:34:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Wed, 11 Nov 2026 20:34:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 20:34:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:34:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e90fde7133a71671959210d24c0450204c3096166c6adc58fba6dd488553c9c2`  
		Last Modified: Wed, 11 Nov 2026 20:34:34 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768243ee5b571c433ecf0886979dbc8d75b5c80ddf92604c1b655de32d4f9b10`  
		Last Modified: Wed, 11 Nov 2026 20:34:34 GMT  
		Size: 3.0 MB (2961638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:081d2e67b20141649e61c1db54868bad8e6d8219d03cba09d71b553c3967d2fd`  
		Last Modified: Wed, 11 Nov 2026 20:34:34 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel` - unknown; unknown

```console
$ docker pull bash@sha256:762442dcb250f518d5932f79afe8162e685146ecaad9db5762ef56e33de85712
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.6 KB (134606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4dba9adf1dcca075c6959a3a0ec3e5afa5e3db04f396a7f9c9ab3d11b950975`

```dockerfile
```

-	Layers:
	-	`sha256:a8dc0579a34e8eac17971bf9c13c42b114135fc43b5bd5b0e568bc84b65821a4`  
		Last Modified: Wed, 11 Nov 2026 20:34:34 GMT  
		Size: 116.5 KB (116514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19144fb279f2346b1c075fcb462b475f393d4474ff2b2baae76b52613145f2e5`  
		Last Modified: Wed, 11 Nov 2026 20:34:34 GMT  
		Size: 18.1 KB (18092 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:73d6d186569a3293e8c81d6c00abb4dfa4c2456fcdf2c3eef3b1de0776ba6904
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7319719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7843a77d4bcccbbfbbe9c81d68ab2add34cac154a3bb535eb1457d19e81abe29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:46:46 GMT
ENV _BASH_COMMIT=f7043f647e84a9642ff03d001062f47e53f631bb
# Wed, 11 Nov 2026 20:46:46 GMT
ENV _BASH_VERSION=devel-20261106
# Wed, 11 Nov 2026 20:46:46 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Wed, 11 Nov 2026 20:47:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Wed, 11 Nov 2026 20:47:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 20:47:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:47:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ca19176fcfa2178b2450764f26081f674ac49bc215e2242995fe35427e004f`  
		Last Modified: Wed, 11 Nov 2026 20:47:35 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6e0a259a68de58c76c9ca67c5e22c28f4d6ae851ce3f5601d6296970997a1e`  
		Last Modified: Wed, 11 Nov 2026 20:47:35 GMT  
		Size: 3.1 MB (3128337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:085df3b0c0f2cf53638569372dcd1f829789e0605c318f208c17625c5e672a4f`  
		Last Modified: Wed, 11 Nov 2026 20:47:35 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel` - unknown; unknown

```console
$ docker pull bash@sha256:7f0c0ac8a4f72af143a105eac81f74dac76ba3266590ef2a75bad40bb7a79e5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 KB (134650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:804d26fab42c871de50eafedd915e5f25fe6bfc49f66bb0065c0f6d6d3667c0f`

```dockerfile
```

-	Layers:
	-	`sha256:51a22af2a27568e26290a184cc74cb83d346e9ffa19b06556b65233e4ed652ef`  
		Last Modified: Wed, 11 Nov 2026 20:47:35 GMT  
		Size: 116.5 KB (116534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d75257b56bb289d8f44b5651f23f4f14fc50bf224268795c794a13a03a75d584`  
		Last Modified: Wed, 11 Nov 2026 20:47:35 GMT  
		Size: 18.1 KB (18116 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel` - linux; 386

```console
$ docker pull bash@sha256:23598ff52c2e4449dfd00b4534eb1ab10897ff70b8e0815e5527c63db012847d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6662119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f9f877737a128d88c5559819690efac460030d601656ea7dfae68fbfce705d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:39:43 GMT
ENV _BASH_COMMIT=f7043f647e84a9642ff03d001062f47e53f631bb
# Wed, 11 Nov 2026 20:39:43 GMT
ENV _BASH_VERSION=devel-20261106
# Wed, 11 Nov 2026 20:39:43 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Wed, 11 Nov 2026 20:40:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Wed, 11 Nov 2026 20:40:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 20:40:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:40:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b121e24c91ac8cca4916929e0fd101f933d8e517c1cb79b71c58a9c85e89a36d`  
		Last Modified: Wed, 11 Nov 2026 20:40:25 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67b8daefb3708d5c3af98abfb63e821ec2a2eea591a516257aa6a60bc76a3d43`  
		Last Modified: Wed, 11 Nov 2026 20:40:25 GMT  
		Size: 3.0 MB (2980971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333fb58af8e3471ad00b845e79ceaee311e42a29f299c28e379e721bc4a9a8b4`  
		Last Modified: Wed, 11 Nov 2026 20:40:25 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel` - unknown; unknown

```console
$ docker pull bash@sha256:c7e53b79bc4feb8a0356974ce65985d05446cdf3544402077974eae95c4c2397
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 KB (135083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a1d8a64193fba16762fddd3cc7f2a41ca5aa6a09a7513c5067584c53f4c10a3`

```dockerfile
```

-	Layers:
	-	`sha256:e6d15cc1e90347c6b42314515976ea600fd44e559cfc9536e93ebc3b49c915a0`  
		Last Modified: Wed, 11 Nov 2026 20:40:25 GMT  
		Size: 117.1 KB (117103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b95e2399fc0f3b76d9505c1c40479b72b7f4187990072571539679da2647a572`  
		Last Modified: Wed, 11 Nov 2026 20:40:25 GMT  
		Size: 18.0 KB (17980 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel` - linux; ppc64le

```console
$ docker pull bash@sha256:af7b3b1422deedb466c500971c1e84aff15f603b2a71e3092b016214491fb128
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7194420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0b7a20235a31713a1a7cb26228800d06106ea6b54b0743c60992ce53c5c650a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:12:28 GMT
ENV _BASH_COMMIT=a4a9dbc1b6df1089627b062472756b1e2b24e966
# Thu, 05 Nov 2026 21:12:28 GMT
ENV _BASH_VERSION=devel-20261030
# Thu, 05 Nov 2026 21:12:28 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Thu, 05 Nov 2026 21:13:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Thu, 05 Nov 2026 21:13:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 21:13:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:13:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376f48f3af2c5914160edc789c097e3494a95c9e64302d73a845bfa9c8a750bb`  
		Last Modified: Thu, 05 Nov 2026 21:13:59 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f002e18897023654869e1d2df902f6e45670fb8cfcbd88f61cd451920fa7ccd`  
		Last Modified: Thu, 05 Nov 2026 21:13:59 GMT  
		Size: 3.4 MB (3371705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8783b94de0d76dbb610b2478219e4739b47aca69f56d19b421bb0150ba69d810`  
		Last Modified: Thu, 05 Nov 2026 21:13:59 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel` - unknown; unknown

```console
$ docker pull bash@sha256:2a66d42872c44e4369876142bad326b3b5eabd5a7327a4923a75bfab6333ddeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 KB (134775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65fe62cb5d6ca83fe9d346d52079c27ae96991caae59f3594d3fc4b4a38b632f`

```dockerfile
```

-	Layers:
	-	`sha256:a1e7a8d7521339d595c9bc30020b288df1198dbaacf808e07c4812a10c491ecd`  
		Last Modified: Thu, 05 Nov 2026 21:13:59 GMT  
		Size: 116.5 KB (116511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:039553e4b57ec2381da524f663bdccbee3e9370acbbbfdaf01c72d6fa67f397f`  
		Last Modified: Thu, 05 Nov 2026 21:13:59 GMT  
		Size: 18.3 KB (18264 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel` - linux; riscv64

```console
$ docker pull bash@sha256:2fccc08f1401db061eeefee908679c5cd94134ad394b82f82acac101e7d2ce23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6827445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db1edc4cf116b2d88fdf75d4b94165a45e8be51e26d1d3a3b5630198fce7d2b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 20:48:10 GMT
ENV _BASH_COMMIT=a4a9dbc1b6df1089627b062472756b1e2b24e966
# Mon, 09 Nov 2026 20:48:10 GMT
ENV _BASH_VERSION=devel-20261030
# Mon, 09 Nov 2026 20:48:10 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Mon, 09 Nov 2026 20:57:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Mon, 09 Nov 2026 20:57:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 09 Nov 2026 20:57:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Nov 2026 20:57:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5a5059e3f82b5622834cf257b77c301bed27da2ac9c2eb691190b329f4d24d5`  
		Last Modified: Mon, 09 Nov 2026 20:58:07 GMT  
		Size: 458.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db750700572ea85a60fb469f2adf4b574c005382601e205d238d9f82f206a61`  
		Last Modified: Mon, 09 Nov 2026 20:58:07 GMT  
		Size: 3.2 MB (3246037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0df01ef28710cab4d3b1c2d46916e1aecd74f32154d861eaecf3ff8077653016`  
		Last Modified: Mon, 09 Nov 2026 20:58:07 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel` - unknown; unknown

```console
$ docker pull bash@sha256:a1a0f9f560515e1d097a224bca387636f936ef67e805fc0f7b44957583bac6e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 KB (134771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d596e2d79814d1caed97d18390e1a9d4786dba22d923dda1a6851874bb346696`

```dockerfile
```

-	Layers:
	-	`sha256:1a985877b31a1f613af3ccbee95aac91a3add523d375c5ac39a6abdbf12f5c75`  
		Last Modified: Mon, 09 Nov 2026 20:58:07 GMT  
		Size: 116.5 KB (116507 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1118aa8fff8714dad44062e553bbae57e7524e1be67627340241fb8d41e0843`  
		Last Modified: Mon, 09 Nov 2026 20:58:07 GMT  
		Size: 18.3 KB (18264 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel` - linux; s390x

```console
$ docker pull bash@sha256:5eda1986a04ae6f6240ca66c3b6bd50019a309a8c29f1ebdf1d1808562f7ad59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6866719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d85287665618ef9dbe821c50a62bdd85f572465aac40af807f2e0fa39f58609`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:10:02 GMT
ENV _BASH_COMMIT=f7043f647e84a9642ff03d001062f47e53f631bb
# Thu, 05 Nov 2026 18:10:02 GMT
ENV _BASH_VERSION=devel-20261106
# Thu, 05 Nov 2026 18:10:02 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Wed, 11 Nov 2026 20:31:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Wed, 11 Nov 2026 20:31:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 20:31:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:31:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:268331fc5fda7d6af1f0e00ce9c2426720362f58474f14966d272b7d60b60849`  
		Last Modified: Thu, 05 Nov 2026 18:10:55 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d01b8c9b77bfac6815ad8e1459288ea95db9c3f84e7409917c091faf41e0d0`  
		Last Modified: Wed, 11 Nov 2026 20:31:43 GMT  
		Size: 3.1 MB (3145256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efd3043bea6f4db1183c0c1b2b115b5c818892c5c75066019fd03737c577c1a8`  
		Last Modified: Wed, 11 Nov 2026 20:31:43 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel` - unknown; unknown

```console
$ docker pull bash@sha256:2fe723b1e16781e4b2d8559b3c1ff22db7dbd1aefbf96b3cac900d7fb10fb541
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.5 KB (134487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01cc25171469d3b828d9a57f6bf5e3bba1a8a12d1af0013727c59e76c488ac8`

```dockerfile
```

-	Layers:
	-	`sha256:54b4079c98a47cdaff771a8c2826bac2858026c656630c791163d9f2bdcaab6b`  
		Last Modified: Wed, 11 Nov 2026 20:31:42 GMT  
		Size: 116.5 KB (116477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6248c73bc4c7a872fbf9ba1147b309b399f22c41be4583cb8fca0852b9554fcd`  
		Last Modified: Wed, 11 Nov 2026 20:31:42 GMT  
		Size: 18.0 KB (18010 bytes)  
		MIME: application/vnd.in-toto+json
