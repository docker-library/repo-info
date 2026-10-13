## `bash:devel`

```console
$ docker pull bash@sha256:207ed221345b9f9d4e0019855050b1fd1cf85e47aadd0a4f32e45ad8b20662ea
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
$ docker pull bash@sha256:399cc12b3898a4de1d85e6dfe7222af405043301080ecf5d1b617a24f93dde16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6905013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18b327cb5cf63889f8eb936e674cfb43ae32bbe94d4c82def768c7d096eb3260`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Tue, 13 Oct 2026 21:09:58 GMT
ENV _BASH_COMMIT=7cfdb340d23a5602e2a261d791033994d91e8298
# Tue, 13 Oct 2026 21:09:58 GMT
ENV _BASH_VERSION=devel-20261007
# Tue, 13 Oct 2026 21:09:58 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 13 Oct 2026 21:10:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 13 Oct 2026 21:10:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 21:10:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Oct 2026 21:10:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c407b7a3f134807186545dc51d81cf7dd83821afd6e5b686ad00c6bfca852451`  
		Last Modified: Tue, 13 Oct 2026 21:10:39 GMT  
		Size: 458.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575d4a92a37d46d8c4ed284623c9e87ab64f596227297e6024fffe09c3141fc9`  
		Last Modified: Tue, 13 Oct 2026 21:10:39 GMT  
		Size: 3.1 MB (3054484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7d77f27af74aa201afb6db6fc0c72c8f8d0f8527d67f90da816851fee8f9e38`  
		Last Modified: Tue, 13 Oct 2026 21:10:39 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel` - unknown; unknown

```console
$ docker pull bash@sha256:3dee79a9dd9f9ecfcbedb47113014d2535e46f688cdcc18a4fffaee778af9f00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 KB (135232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b40cd90a2c7ad7f56762a56bbc7a428ac7976d04cdc4206df8cbd2c8a3c6687b`

```dockerfile
```

-	Layers:
	-	`sha256:6b85332ef1540ddaa12704244d67b44f38d62a41782e4f44cbeff0b38d391dcd`  
		Last Modified: Tue, 13 Oct 2026 21:10:39 GMT  
		Size: 117.1 KB (117128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e16b9a54885b47d28cce903b57b1fdbbff29220221f1a6f91f491d1e6530cbe2`  
		Last Modified: Tue, 13 Oct 2026 21:10:39 GMT  
		Size: 18.1 KB (18104 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel` - linux; arm variant v6

```console
$ docker pull bash@sha256:7d416c869093deba2ec0cc4c403331d6941700d6899dad893a0895f2e80732dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6569501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc9350bb01b783202a9e939b72471953d4576df42f6f2159e5077f51df5a2176`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Tue, 13 Oct 2026 21:10:14 GMT
ENV _BASH_COMMIT=7cfdb340d23a5602e2a261d791033994d91e8298
# Tue, 13 Oct 2026 21:10:14 GMT
ENV _BASH_VERSION=devel-20261007
# Tue, 13 Oct 2026 21:10:14 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 13 Oct 2026 21:10:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 13 Oct 2026 21:10:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 21:10:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Oct 2026 21:10:59 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ef3e5870ed077ec9d3a7043cf29539c066bb520cdb446072e7f8ca30fc2e10`  
		Last Modified: Tue, 13 Oct 2026 21:11:03 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f3667d9c80b06266bc32fed0492e9c718e03a03bb5dd6b2fff127ce35179d6`  
		Last Modified: Tue, 13 Oct 2026 21:11:03 GMT  
		Size: 3.0 MB (3013592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a04a56eff2c50a48ff8017c08be25322b5ea4e9a00d0a656b4f82aca21641c`  
		Last Modified: Tue, 13 Oct 2026 21:11:03 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel` - unknown; unknown

```console
$ docker pull bash@sha256:e384e61073cd3f123edc6853f1464f42b52dd5287eea400771f4ee35257a5bea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 KB (17969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4b20055019cadbb035a4238d797e42447a5564b0641e384d338ef4ee811350`

```dockerfile
```

-	Layers:
	-	`sha256:fd1775afd1520eabe899cde803cf99cee86c1bf22492e68fa98f2c3b1236c4d0`  
		Last Modified: Tue, 13 Oct 2026 21:11:03 GMT  
		Size: 18.0 KB (17969 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel` - linux; arm variant v7

```console
$ docker pull bash@sha256:fe65068e37dda761a20b4fa8761057b660fab69735ca1928cea06cae47c01a8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6226913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd3f26f5426028e2eff08205c14b86415289cac5175ecbfc69128faf6585635a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Tue, 13 Oct 2026 21:10:08 GMT
ENV _BASH_COMMIT=7cfdb340d23a5602e2a261d791033994d91e8298
# Tue, 13 Oct 2026 21:10:08 GMT
ENV _BASH_VERSION=devel-20261007
# Tue, 13 Oct 2026 21:10:08 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 13 Oct 2026 21:10:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 13 Oct 2026 21:10:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 21:10:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Oct 2026 21:10:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9715033cb29500c4c1d37ce33940d72847c3e7bb7d4386a254e1c9630b7d49f`  
		Last Modified: Tue, 13 Oct 2026 21:10:58 GMT  
		Size: 459.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3cde95a75bf8075a9cd67526e8249f1feb7ec6dd96925508924619d6572072`  
		Last Modified: Tue, 13 Oct 2026 21:10:58 GMT  
		Size: 3.0 MB (2960919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89f72bcf8aec39a6950c09dd9a8e76b97f372139bd762f5a7e94becc4fcf67a`  
		Last Modified: Tue, 13 Oct 2026 21:10:57 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel` - unknown; unknown

```console
$ docker pull bash@sha256:734f7921010d867068c2ad70d021dd8c3d2b74c8a7b3ba1739b3e30b66ef3939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 KB (134698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:162a72de77368b7469ef0c98a56a6696d65f71fa886936f4bbcbfedb6020d5f3`

```dockerfile
```

-	Layers:
	-	`sha256:49b343d2fe2f43cdbca5e6ebc781e54e57b94fb6c3f5b8d25dabbb755dfa0256`  
		Last Modified: Tue, 13 Oct 2026 21:10:58 GMT  
		Size: 116.5 KB (116514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce15543d240dc0a1e71fae39f031062901cdad4b840cae0090dafa36d44bf771`  
		Last Modified: Tue, 13 Oct 2026 21:10:58 GMT  
		Size: 18.2 KB (18184 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:9228a380147a67c1f7444f5a3a14f62b453c584963ed2e190874430a29d866d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7316920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6337780cae5cc17f4c2c202bb8747e96e77aec8129edae9e7c5f7850c3dd3812`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Tue, 13 Oct 2026 21:10:01 GMT
ENV _BASH_COMMIT=7cfdb340d23a5602e2a261d791033994d91e8298
# Tue, 13 Oct 2026 21:10:01 GMT
ENV _BASH_VERSION=devel-20261007
# Tue, 13 Oct 2026 21:10:01 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 13 Oct 2026 21:10:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 13 Oct 2026 21:10:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 21:10:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Oct 2026 21:10:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25dba5506d16166862cf8907bed30a754647a10f13cc4f10d7797d85720140a2`  
		Last Modified: Tue, 13 Oct 2026 21:10:48 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fc2199021dc45fc512e5e7fd6643dfb3e8f6e511d117efeff4bf039a287a6b4`  
		Last Modified: Tue, 13 Oct 2026 21:10:48 GMT  
		Size: 3.1 MB (3128468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb601427480c0c6a10384a2fc79ed9acff71ce71ab7dacf879bf5a928e75b2b`  
		Last Modified: Tue, 13 Oct 2026 21:10:48 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel` - unknown; unknown

```console
$ docker pull bash@sha256:541ddbfc16507d7dedad01bcfae2ef769ea48864a0ebe0d8bce6fbbaf174343b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 KB (134742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b76546256b6fbf336eeb0983fc798be72e17d5ad8d60462c3f60c1aa0ee37c`

```dockerfile
```

-	Layers:
	-	`sha256:544c6877d500463975f6177acf920412ad0e69b06e9c2ba8f25197258bf58af8`  
		Last Modified: Tue, 13 Oct 2026 21:10:48 GMT  
		Size: 116.5 KB (116534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad0c19c0651648658f1940035de248c7dd51e2a5b999b09f6bb9093d2f5217ff`  
		Last Modified: Tue, 13 Oct 2026 21:10:48 GMT  
		Size: 18.2 KB (18208 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel` - linux; 386

```console
$ docker pull bash@sha256:7ef8213b72e62ee4108d6330dd63cd9e80923d51b5f789307b817b6dc9c54ec4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6657887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89d7649ae63793154809cfc13ccc77e8e0c2ac52a21bddbe8f84207320fb544`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Tue, 13 Oct 2026 21:10:36 GMT
ENV _BASH_COMMIT=7cfdb340d23a5602e2a261d791033994d91e8298
# Tue, 13 Oct 2026 21:10:36 GMT
ENV _BASH_VERSION=devel-20261007
# Tue, 13 Oct 2026 21:10:36 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 13 Oct 2026 21:11:15 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 13 Oct 2026 21:11:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 21:11:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Oct 2026 21:11:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:821a19bbc7882c6cdaf165cc06dd7c0777ca80b1e16a90c559680c6046d30491`  
		Last Modified: Tue, 13 Oct 2026 21:11:20 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dfa756705a81a46996e46d79b18db9954e57c46140fdda7ea64afd7f080b078`  
		Last Modified: Tue, 13 Oct 2026 21:11:21 GMT  
		Size: 3.0 MB (2980320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2b24fdf593157d6cf4c4b7251b21ce554ece48188f96f3925ec35287ff3ac6`  
		Last Modified: Tue, 13 Oct 2026 21:11:20 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel` - unknown; unknown

```console
$ docker pull bash@sha256:64ed370cec7edd6fa3519c799017605e832672c93b02507107ef3f21985522f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 KB (135175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cb21d91b9688f117e9492caf1faa9f6ac174793e91f7126e0fe3b6ab1dfd0d1`

```dockerfile
```

-	Layers:
	-	`sha256:79110cfce67ab90a7a0c0ab8930278729c14dd209c3e1832d8b1a66c0d0bc366`  
		Last Modified: Tue, 13 Oct 2026 21:11:20 GMT  
		Size: 117.1 KB (117103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a074d01d9670ba1889a2633455f522e82f20c88e4727c25c059d3e34649e7046`  
		Last Modified: Tue, 13 Oct 2026 21:11:20 GMT  
		Size: 18.1 KB (18072 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel` - linux; ppc64le

```console
$ docker pull bash@sha256:1537885035e27713d7b42fadfc677cde0d8cc42acef3cc72dc88d0c680a43ad1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7188373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de3b3ef80d531c173a4e0efe45b4d96c33f2c0cac074a07c08f662c79ff394a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Tue, 13 Oct 2026 21:10:31 GMT
ENV _BASH_COMMIT=7cfdb340d23a5602e2a261d791033994d91e8298
# Tue, 13 Oct 2026 21:10:31 GMT
ENV _BASH_VERSION=devel-20261007
# Tue, 13 Oct 2026 21:10:31 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 13 Oct 2026 21:11:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 13 Oct 2026 21:11:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 21:11:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Oct 2026 21:11:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df7fab56aebd78edcec0dddedff7d46899a2faee66175003bc9c4f3fc2728d94`  
		Last Modified: Tue, 13 Oct 2026 21:12:03 GMT  
		Size: 459.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0aa89a308bb2f16c64d6189ddd46d4bcca4acc13f4eea4787f7f37837ed83f0`  
		Last Modified: Tue, 13 Oct 2026 21:12:03 GMT  
		Size: 3.4 MB (3370098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a91df6de520c76be3cc6b906cd85d10f041093517dffc4115eed15afdd59b8`  
		Last Modified: Tue, 13 Oct 2026 21:12:03 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel` - unknown; unknown

```console
$ docker pull bash@sha256:50430b4fc552d94595a3b4bb460ad9f7443fea23e5302e7f170214570e960757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 KB (134659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dbfbedf54c4765fe9cf882faf515376d5e60db125ddc3defb3dbe8bba91017a`

```dockerfile
```

-	Layers:
	-	`sha256:859af4c5efb01ed8a8c85f2d3f5d562ac9c5434b26bbbea41782630c83248dde`  
		Last Modified: Tue, 13 Oct 2026 21:12:03 GMT  
		Size: 116.5 KB (116511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e88d3a64f74388fd34b3cb0cc6823586ef5d7f937940b20754c2d2486e360523`  
		Last Modified: Tue, 13 Oct 2026 21:12:03 GMT  
		Size: 18.1 KB (18148 bytes)  
		MIME: application/vnd.in-toto+json

### `bash:devel` - linux; riscv64

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

### `bash:devel` - unknown; unknown

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

### `bash:devel` - linux; s390x

```console
$ docker pull bash@sha256:218d1654c27c654e977c8f8781e6210f0190eeb6b6338603a1544f75ae5745b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6860686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:babaf115316eee8d9eaea2fb5b313271065654ac0340f49f6baef02888116e79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Tue, 13 Oct 2026 21:10:14 GMT
ENV _BASH_COMMIT=7cfdb340d23a5602e2a261d791033994d91e8298
# Tue, 13 Oct 2026 21:10:14 GMT
ENV _BASH_VERSION=devel-20261007
# Tue, 13 Oct 2026 21:10:14 GMT
COPY alpine-strcpy.patch /usr/local/src/tianon-bash-patches/ # buildkit
# Tue, 13 Oct 2026 21:10:50 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		wget -T2 -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz" || 		wget -O bash.tar.gz "https://github.com/tianon/mirror-bash/archive/$_BASH_COMMIT.tar.gz"; 		mkdir -p /usr/local/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/local/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		apk add --no-cache --virtual .patch-deps patch; 		for p in bash-patches/*; do 			patch 				--directory=/usr/local/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 		apk del --no-network .patch-deps; 	fi; 		for p in /usr/local/src/tianon-bash-patches/*; do 		patch 			--directory=/usr/local/src/bash 			--input="$p" 			--strip=1 		; 	done; 		cd /usr/local/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/local/src/bash; 		rm -rf 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .bash-rundeps $runDeps; 	apk del --no-network .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	bash -c 'help' > /dev/null # buildkit
# Tue, 13 Oct 2026 21:10:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 21:10:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Oct 2026 21:10:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2818f651d44ad58f7108c0f0a6d93f0627552b25f8a2cb7f4ff8ac80c429aba9`  
		Last Modified: Tue, 13 Oct 2026 21:10:59 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c005292d86826d3c35860539bff637e1fa0f32eda5222b798a68466f064bf65a`  
		Last Modified: Tue, 13 Oct 2026 21:10:59 GMT  
		Size: 3.1 MB (3144553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53477ab65bf9756004ac2df16a09623075c98c58a841e496212a12d0bce86ff0`  
		Last Modified: Tue, 13 Oct 2026 21:10:59 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bash:devel` - unknown; unknown

```console
$ docker pull bash@sha256:8edc9c28807dd9cca0605c5c6ad5ba22f8a28752a43b712dab8fc5c9685f1044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.6 KB (134580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:396ea02c2702f9d3a9e8314ab6b27d6eca3f63f61d1e6114ece4df5213061c89`

```dockerfile
```

-	Layers:
	-	`sha256:5d0d012a8da701f5d046a65969a0e6f93ee049a6cb920e131829fa94b8b59583`  
		Last Modified: Tue, 13 Oct 2026 21:10:59 GMT  
		Size: 116.5 KB (116477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f3abd0dabdb0e88ec9d68a8227be23803551ef0f76041e5215ef0d6d4b06f9b`  
		Last Modified: Tue, 13 Oct 2026 21:10:59 GMT  
		Size: 18.1 KB (18103 bytes)  
		MIME: application/vnd.in-toto+json
