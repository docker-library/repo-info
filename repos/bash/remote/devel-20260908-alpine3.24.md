## `bash:devel-20260908-alpine3.24`

```console
$ docker pull bash@sha256:3c8fcf3aa3ad4856ce2904ef28e3b70f75a7202cfaafad529b1c0d764f87481a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `bash:devel-20260908-alpine3.24` - linux; amd64

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

### `bash:devel-20260908-alpine3.24` - unknown; unknown

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

### `bash:devel-20260908-alpine3.24` - linux; arm64 variant v8

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

### `bash:devel-20260908-alpine3.24` - unknown; unknown

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

### `bash:devel-20260908-alpine3.24` - linux; 386

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

### `bash:devel-20260908-alpine3.24` - unknown; unknown

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
