## `gcc:latest`

```console
$ docker pull gcc@sha256:f07e6385ea2bba4ee5582cadc50e5d3ce60cf758f0a3c9168ba0615475f1e459
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `gcc:latest` - linux; amd64

```console
$ docker pull gcc@sha256:3f73339bf0d3d64081cac3f6d9fdafc6dd4cef2b9c49e0a09f91e97cb0eb139a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **561.9 MB (561899536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:959ac766250f0fc0178b0af7f4454756bd3c16c6241af7151eae76b6ca54f09d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:34:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:16:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 07 Oct 2026 14:47:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		abigail-tools 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 15:49:32 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06 	D3A93CAD751C2AF4F8C7AD516C35B99309B5FA62
# Wed, 07 Oct 2026 15:49:32 GMT
ENV GCC_MIRRORS=https://ftpmirror.gnu.org/gcc 		https://mirrors.kernel.org/gnu/gcc 		https://bigsearcher.com/mirrors/gcc/releases 		http://www.netgull.com/gcc/releases 		https://ftpmirror.gnu.org/gcc 		https://sourceware.org/pub/gcc/releases 		ftp://ftp.gnu.org/gnu/gcc
# Wed, 07 Oct 2026 15:49:32 GMT
ENV GCC_VERSION=16.2.0
# Wed, 07 Oct 2026 15:49:32 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		flex 		gnupg 	; 	rm -r /var/lib/apt/lists/*; 		_fetch() { 		local fetch="$1"; shift; 		local file="$1"; shift; 		for mirror in $GCC_MIRRORS; do 			if curl -fL "$mirror/$fetch" --connect-timeout 30 -o "$file"; then 				return 0; 			fi; 		done; 		echo >&2 "error: failed to download '$fetch' from several mirrors"; 		return 1; 	}; 		_fetch "gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.xz.sig" 'gcc.tar.xz.sig'; 	_fetch "gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.xz" 'gcc.tar.xz'; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify gcc.tar.xz.sig gcc.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	mkdir -p /usr/src/gcc; 	tar -xf gcc.tar.xz -C /usr/src/gcc --strip-components=1; 	rm gcc.tar.xz*; 		cd /usr/src/gcc; 		./contrib/download_prerequisites; 	{ rm *.tar.* || true; }; 		for f in config.guess config.sub; do 		wget --timeout 30 -O "$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 		find -mindepth 2 -name "$f" -exec cp -v "$f" '{}' ';'; 	done; 		dir="$(mktemp -d)"; 	cd "$dir"; 		extraConfigureArgs=''; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) 			extraConfigureArgs="$extraConfigureArgs --with-arch=armv5te --with-float=soft" 			;; 		armhf) 			extraConfigureArgs="$extraConfigureArgs --with-arch=armv7-a+fp --with-float=hard --with-mode=thumb" 			;; 				i386) 			extraConfigureArgs="$extraConfigureArgs --with-arch-32=i686"; 			;; 	esac; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	/usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 		$extraConfigureArgs 	; 	make -j "$(nproc)"; 	make install-strip; 		cd ..; 		rm -rf "$dir" /usr/src/gcc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 07 Oct 2026 15:49:32 GMT
RUN set -ex; 	{ echo '/usr/local/lib64'; echo '/usr/local/lib'; } > /etc/ld.so.conf.d/000-local-lib.conf; 	ldconfig -v; 	deb="$(readlink -ve /usr/lib/*/libstdc++.so* | head -1)"; 	gcc="$(readlink -ve /usr/local/lib*/libstdc++.so | head -1)"; 	LD_PRELOAD="$deb" abidiff --no-added-syms "$deb" "$gcc" # buildkit
# Wed, 07 Oct 2026 15:49:32 GMT
RUN set -ex; 	dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc; 	dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++; 	dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran; 	update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999 # buildkit
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fe2e747f69f2f414c7e9eb1553155cf0a658398f0462557f458821dce2b29d`  
		Last Modified: Tue, 06 Oct 2026 01:41:33 GMT  
		Size: 25.6 MB (25640047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc3950125ebc9ed195e1101fc6c02e2fce113ba0f53bfb05b2cdf58747df9af`  
		Last Modified: Tue, 06 Oct 2026 02:35:02 GMT  
		Size: 67.8 MB (67807390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2eb680928d477abf960adfa8bb00fa681dac38ca5f624850072ed2976a80607`  
		Last Modified: Tue, 06 Oct 2026 03:17:13 GMT  
		Size: 237.0 MB (236958924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f4f58831bcff829c676fc47bd47cf57fa70ab34d662f30edb73bb5c3d8d9c9e`  
		Last Modified: Wed, 07 Oct 2026 15:50:40 GMT  
		Size: 4.6 MB (4592391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5be5bd52b188360b25d7a785d65f1f4713604e430bd12053624e8fa6c72686`  
		Last Modified: Wed, 07 Oct 2026 15:50:43 GMT  
		Size: 177.5 MB (177494920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e1184b59e7f5fe97bac8390e487427c8a51f5e4b3b1971258b9d597a0370e78`  
		Last Modified: Wed, 07 Oct 2026 15:50:39 GMT  
		Size: 10.7 KB (10654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c1e291c1c1e78184481d39220b5354520019216bcb00bf79a7c062ba5e6875c`  
		Last Modified: Wed, 07 Oct 2026 15:50:39 GMT  
		Size: 2.0 KB (2010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gcc:latest` - unknown; unknown

```console
$ docker pull gcc@sha256:937ad6186cbaad45d8ba3093a56b72042d247c30de31de36aaf9f2e25ca226dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17410578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f08bbf516a5341d008853e94897d1dd4989e220cbf163de7bbf1275514fe242`

```dockerfile
```

-	Layers:
	-	`sha256:da4fbcd2a31f934e384b57c9a42a3d9f33543c642a48f23bee8d10c705f545fb`  
		Last Modified: Wed, 07 Oct 2026 15:50:40 GMT  
		Size: 17.4 MB (17379865 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:306e51d7676a1a184e87a6123b7cb29475c98281d71c59d2f533ada67e80a93a`  
		Last Modified: Wed, 07 Oct 2026 15:50:39 GMT  
		Size: 30.7 KB (30713 bytes)  
		MIME: application/vnd.in-toto+json

### `gcc:latest` - linux; arm variant v5

```console
$ docker pull gcc@sha256:ffaa8388344e16d1999a770d6c6f49bb4e9d02c71447311ca2d6f82efc3f2180
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.0 MB (486015548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d207990b903453750ea8c8b3c3a99919c069dd503438060b2dec60785f31ec26`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:47:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:04:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:38:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 23:10:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		abigail-tools 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 09 Oct 2026 00:23:52 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06 	D3A93CAD751C2AF4F8C7AD516C35B99309B5FA62
# Fri, 09 Oct 2026 00:23:52 GMT
ENV GCC_MIRRORS=https://ftpmirror.gnu.org/gcc 		https://mirrors.kernel.org/gnu/gcc 		https://bigsearcher.com/mirrors/gcc/releases 		http://www.netgull.com/gcc/releases 		https://ftpmirror.gnu.org/gcc 		https://sourceware.org/pub/gcc/releases 		ftp://ftp.gnu.org/gnu/gcc
# Fri, 09 Oct 2026 00:23:52 GMT
ENV GCC_VERSION=16.2.0
# Fri, 09 Oct 2026 00:23:52 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		flex 		gnupg 	; 	rm -r /var/lib/apt/lists/*; 		_fetch() { 		local fetch="$1"; shift; 		local file="$1"; shift; 		for mirror in $GCC_MIRRORS; do 			if curl -fL "$mirror/$fetch" --connect-timeout 30 -o "$file"; then 				return 0; 			fi; 		done; 		echo >&2 "error: failed to download '$fetch' from several mirrors"; 		return 1; 	}; 		_fetch "gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.xz.sig" 'gcc.tar.xz.sig'; 	_fetch "gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.xz" 'gcc.tar.xz'; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify gcc.tar.xz.sig gcc.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	mkdir -p /usr/src/gcc; 	tar -xf gcc.tar.xz -C /usr/src/gcc --strip-components=1; 	rm gcc.tar.xz*; 		cd /usr/src/gcc; 		./contrib/download_prerequisites; 	{ rm *.tar.* || true; }; 		for f in config.guess config.sub; do 		wget --timeout 30 -O "$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 		find -mindepth 2 -name "$f" -exec cp -v "$f" '{}' ';'; 	done; 		dir="$(mktemp -d)"; 	cd "$dir"; 		extraConfigureArgs=''; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) 			extraConfigureArgs="$extraConfigureArgs --with-arch=armv5te --with-float=soft" 			;; 		armhf) 			extraConfigureArgs="$extraConfigureArgs --with-arch=armv7-a+fp --with-float=hard --with-mode=thumb" 			;; 				i386) 			extraConfigureArgs="$extraConfigureArgs --with-arch-32=i686"; 			;; 	esac; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	/usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 		$extraConfigureArgs 	; 	make -j "$(nproc)"; 	make install-strip; 		cd ..; 		rm -rf "$dir" /usr/src/gcc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Fri, 09 Oct 2026 00:23:52 GMT
RUN set -ex; 	{ echo '/usr/local/lib64'; echo '/usr/local/lib'; } > /etc/ld.so.conf.d/000-local-lib.conf; 	ldconfig -v; 	deb="$(readlink -ve /usr/lib/*/libstdc++.so* | head -1)"; 	gcc="$(readlink -ve /usr/local/lib*/libstdc++.so | head -1)"; 	LD_PRELOAD="$deb" abidiff --no-added-syms "$deb" "$gcc" # buildkit
# Fri, 09 Oct 2026 00:23:53 GMT
RUN set -ex; 	dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc; 	dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++; 	dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran; 	update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999 # buildkit
```

-	Layers:
	-	`sha256:2613b9f9cbe1793f19a07be0819263568ab684ead60cadb1613eb4f2868871cc`  
		Last Modified: Tue, 06 Oct 2026 00:12:49 GMT  
		Size: 47.6 MB (47559414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:275198ce4aab1747f7a9701756bd8de5d9970998693ce5abd7062a463f0731eb`  
		Last Modified: Tue, 06 Oct 2026 01:47:41 GMT  
		Size: 24.4 MB (24370888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30fa235e84c9141ac6638d4a5bc726912c5c743f585aef7d857b61d8dd24e80b`  
		Last Modified: Tue, 06 Oct 2026 03:05:04 GMT  
		Size: 65.4 MB (65362893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec97e411751dd84d74977499d87894f7348971ddfc3490b26aaff4ac7ae3f228`  
		Last Modified: Tue, 06 Oct 2026 03:39:09 GMT  
		Size: 206.6 MB (206643648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc09ea3aa830fda3ae2d70735a279837b68fcd76a6a0c24f96cb8d52c2c525f9`  
		Last Modified: Fri, 09 Oct 2026 00:24:27 GMT  
		Size: 4.4 MB (4441610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b150314c2bba825c08e3bdf8e0bca76f6d8a6369b71ff172fe2dfe6b0c4d76f`  
		Last Modified: Fri, 09 Oct 2026 00:24:31 GMT  
		Size: 137.6 MB (137625123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:847e8b0f91d70c822409b9b425f019cdd195dddff17539160ffa8c10a07c407b`  
		Last Modified: Fri, 09 Oct 2026 00:24:27 GMT  
		Size: 10.0 KB (9966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f554e0a6449505dd88dabedb428719cd24306202eb473686ed04abba76c248`  
		Last Modified: Fri, 09 Oct 2026 00:24:26 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gcc:latest` - unknown; unknown

```console
$ docker pull gcc@sha256:8a91df4e9a02b283967aea0941dd9feeb8ce1f66206343878f1b373fb66feda9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17172970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ef6ce8ecbcce98671dbaac02d03e0d3e6b390ba2fd1ef686d60f3384a4870df`

```dockerfile
```

-	Layers:
	-	`sha256:67b3efce77aebc0c9146576838b5a54b16790cd746bb46e5ed61532334c4d015`  
		Last Modified: Fri, 09 Oct 2026 00:24:27 GMT  
		Size: 17.1 MB (17142108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e05746c56c7d0d5823b4afb2c5b0095d57f3ae5dc9c9f13dc9a3a656ba54e856`  
		Last Modified: Fri, 09 Oct 2026 00:24:26 GMT  
		Size: 30.9 KB (30862 bytes)  
		MIME: application/vnd.in-toto+json

### `gcc:latest` - linux; arm variant v7

```console
$ docker pull gcc@sha256:47e28120bab0a3efd5a81fc28e4a5614e403522c42668ee9dc5a5fbc4e0d407c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **458.6 MB (458616051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4fd11d1635de9fc2b62b2e0014f6ea4a565a41166198a2b0d22f511e2af49f7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:29:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:48:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 03:14:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 05:26:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		abigail-tools 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 06:41:36 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06 	D3A93CAD751C2AF4F8C7AD516C35B99309B5FA62
# Wed, 21 Oct 2026 06:41:36 GMT
ENV GCC_MIRRORS=https://ftpmirror.gnu.org/gcc 		https://mirrors.kernel.org/gnu/gcc 		https://bigsearcher.com/mirrors/gcc/releases 		http://www.netgull.com/gcc/releases 		https://ftpmirror.gnu.org/gcc 		https://sourceware.org/pub/gcc/releases 		ftp://ftp.gnu.org/gnu/gcc
# Wed, 21 Oct 2026 06:41:36 GMT
ENV GCC_VERSION=16.2.0
# Wed, 21 Oct 2026 06:41:36 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		flex 		gnupg 	; 	rm -r /var/lib/apt/lists/*; 		_fetch() { 		local fetch="$1"; shift; 		local file="$1"; shift; 		for mirror in $GCC_MIRRORS; do 			if curl -fL "$mirror/$fetch" --connect-timeout 30 -o "$file"; then 				return 0; 			fi; 		done; 		echo >&2 "error: failed to download '$fetch' from several mirrors"; 		return 1; 	}; 		_fetch "gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.xz.sig" 'gcc.tar.xz.sig'; 	_fetch "gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.xz" 'gcc.tar.xz'; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify gcc.tar.xz.sig gcc.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	mkdir -p /usr/src/gcc; 	tar -xf gcc.tar.xz -C /usr/src/gcc --strip-components=1; 	rm gcc.tar.xz*; 		cd /usr/src/gcc; 		./contrib/download_prerequisites; 	{ rm *.tar.* || true; }; 		for f in config.guess config.sub; do 		wget --timeout 30 -O "$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 		find -mindepth 2 -name "$f" -exec cp -v "$f" '{}' ';'; 	done; 		dir="$(mktemp -d)"; 	cd "$dir"; 		extraConfigureArgs=''; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) 			extraConfigureArgs="$extraConfigureArgs --with-arch=armv5te --with-float=soft" 			;; 		armhf) 			extraConfigureArgs="$extraConfigureArgs --with-arch=armv7-a+fp --with-float=hard --with-mode=thumb" 			;; 				i386) 			extraConfigureArgs="$extraConfigureArgs --with-arch-32=i686"; 			;; 	esac; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	/usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 		$extraConfigureArgs 	; 	make -j "$(nproc)"; 	make install-strip; 		cd ..; 		rm -rf "$dir" /usr/src/gcc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 06:41:36 GMT
RUN set -ex; 	{ echo '/usr/local/lib64'; echo '/usr/local/lib'; } > /etc/ld.so.conf.d/000-local-lib.conf; 	ldconfig -v; 	deb="$(readlink -ve /usr/lib/*/libstdc++.so* | head -1)"; 	gcc="$(readlink -ve /usr/local/lib*/libstdc++.so | head -1)"; 	LD_PRELOAD="$deb" abidiff --no-added-syms "$deb" "$gcc" # buildkit
# Wed, 21 Oct 2026 06:41:36 GMT
RUN set -ex; 	dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc; 	dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++; 	dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran; 	update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999 # buildkit
```

-	Layers:
	-	`sha256:1754e402841fcf147f7bb4372f827a1d5e90cc18bd4014a1d7bd715e8ece4ecc`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 45.8 MB (45813599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f16e2f397e50daf634a3bb1659923e40dd3e4076bc5fc9bd98990ae4a7e2671`  
		Last Modified: Wed, 21 Oct 2026 01:29:28 GMT  
		Size: 23.6 MB (23637827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a82e1136011681a455e5beb76c55bc9d39fc7a8874f4396f669db2d589d371f8`  
		Last Modified: Wed, 21 Oct 2026 02:48:48 GMT  
		Size: 62.8 MB (62761753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43deb428fe0a20fb7751c5ead6eb80f4a8e44726b4ee003bfa67149c3166220b`  
		Last Modified: Wed, 21 Oct 2026 03:14:50 GMT  
		Size: 194.2 MB (194196301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a74dfb0a2bce0f74247b3a662d6725780a05c0d4f64946f37b6dfc63e112a26`  
		Last Modified: Wed, 21 Oct 2026 06:42:08 GMT  
		Size: 4.2 MB (4208904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89435868dc8834ca6e6e908f75b4ea80e00d9d6ddbf7103b6748fe0b3ebf45fa`  
		Last Modified: Wed, 21 Oct 2026 06:42:14 GMT  
		Size: 128.0 MB (127985666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c1c553d981bfe496dcbce360d531cd52a0e97727452d16e601307570ace332`  
		Last Modified: Wed, 21 Oct 2026 06:42:08 GMT  
		Size: 10.0 KB (9994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09b681c74b808bea8e135eec53bf5d1c4ce7d3246bf51754ea34d1f259899931`  
		Last Modified: Wed, 21 Oct 2026 06:42:08 GMT  
		Size: 2.0 KB (2007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gcc:latest` - unknown; unknown

```console
$ docker pull gcc@sha256:6502974f064520165ecc17700bf4a67035faee993db2c8804266e4840904d26f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17177583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6673d191fe36623cd2c8fb4886601afd1bb577b43ec3fe1eb792e85c8b844be4`

```dockerfile
```

-	Layers:
	-	`sha256:6f3072b4ac462af26c04da829143e77ead212b6a8d1eef6e4db14ad6995b7f3a`  
		Last Modified: Wed, 21 Oct 2026 06:42:09 GMT  
		Size: 17.1 MB (17146721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:157f119d6d2e6a23666a1a99bf92a7624af894e0dcebdec0d0fc96b640ebf62a`  
		Last Modified: Wed, 21 Oct 2026 06:42:08 GMT  
		Size: 30.9 KB (30862 bytes)  
		MIME: application/vnd.in-toto+json

### `gcc:latest` - linux; arm64 variant v8

```console
$ docker pull gcc@sha256:b89e1771f0ac16e3769dd351ea8e07a6676aa690a76339c16e36c761eaaaf0f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.7 MB (537716772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19d3bb32821181dd12e5a2d8266e7cf08af54e7e846fa03967e11aa90d501500`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:34:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:16:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 22 Oct 2026 01:54:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		abigail-tools 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 02:58:54 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06 	D3A93CAD751C2AF4F8C7AD516C35B99309B5FA62
# Thu, 22 Oct 2026 02:58:54 GMT
ENV GCC_MIRRORS=https://ftpmirror.gnu.org/gcc 		https://mirrors.kernel.org/gnu/gcc 		https://bigsearcher.com/mirrors/gcc/releases 		http://www.netgull.com/gcc/releases 		https://ftpmirror.gnu.org/gcc 		https://sourceware.org/pub/gcc/releases 		ftp://ftp.gnu.org/gnu/gcc
# Thu, 22 Oct 2026 02:58:54 GMT
ENV GCC_VERSION=16.2.0
# Thu, 22 Oct 2026 02:58:54 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		flex 		gnupg 	; 	rm -r /var/lib/apt/lists/*; 		_fetch() { 		local fetch="$1"; shift; 		local file="$1"; shift; 		for mirror in $GCC_MIRRORS; do 			if curl -fL "$mirror/$fetch" --connect-timeout 30 -o "$file"; then 				return 0; 			fi; 		done; 		echo >&2 "error: failed to download '$fetch' from several mirrors"; 		return 1; 	}; 		_fetch "gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.xz.sig" 'gcc.tar.xz.sig'; 	_fetch "gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.xz" 'gcc.tar.xz'; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify gcc.tar.xz.sig gcc.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	mkdir -p /usr/src/gcc; 	tar -xf gcc.tar.xz -C /usr/src/gcc --strip-components=1; 	rm gcc.tar.xz*; 		cd /usr/src/gcc; 		./contrib/download_prerequisites; 	{ rm *.tar.* || true; }; 		for f in config.guess config.sub; do 		wget --timeout 30 -O "$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 		find -mindepth 2 -name "$f" -exec cp -v "$f" '{}' ';'; 	done; 		dir="$(mktemp -d)"; 	cd "$dir"; 		extraConfigureArgs=''; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) 			extraConfigureArgs="$extraConfigureArgs --with-arch=armv5te --with-float=soft" 			;; 		armhf) 			extraConfigureArgs="$extraConfigureArgs --with-arch=armv7-a+fp --with-float=hard --with-mode=thumb" 			;; 				i386) 			extraConfigureArgs="$extraConfigureArgs --with-arch-32=i686"; 			;; 	esac; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	/usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 		$extraConfigureArgs 	; 	make -j "$(nproc)"; 	make install-strip; 		cd ..; 		rm -rf "$dir" /usr/src/gcc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 22 Oct 2026 02:58:54 GMT
RUN set -ex; 	{ echo '/usr/local/lib64'; echo '/usr/local/lib'; } > /etc/ld.so.conf.d/000-local-lib.conf; 	ldconfig -v; 	deb="$(readlink -ve /usr/lib/*/libstdc++.so* | head -1)"; 	gcc="$(readlink -ve /usr/local/lib*/libstdc++.so | head -1)"; 	LD_PRELOAD="$deb" abidiff --no-added-syms "$deb" "$gcc" # buildkit
# Thu, 22 Oct 2026 02:58:54 GMT
RUN set -ex; 	dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc; 	dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++; 	dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran; 	update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999 # buildkit
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb30108d3afde03433416a48caa9604703eb8530a12c943ec11a1e46a4d84a9`  
		Last Modified: Wed, 21 Oct 2026 00:50:04 GMT  
		Size: 25.0 MB (25036616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7d3237c24572d428cffa50bed9ee6a1844db67c96c4f566bd3a67853d3c223`  
		Last Modified: Wed, 21 Oct 2026 01:34:22 GMT  
		Size: 67.6 MB (67634136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1168ed298b87949310991d4d75ebe3a183265520d7854d16569bf3d10bf12d55`  
		Last Modified: Wed, 21 Oct 2026 02:17:30 GMT  
		Size: 227.1 MB (227095197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0069c803c2504b265ecf2c600fa38923ca9fde4eeeb3d1a7a2bfd2fb149b55`  
		Last Modified: Thu, 22 Oct 2026 02:59:51 GMT  
		Size: 4.5 MB (4500252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab06795373bc1e69c868b8c030e66ddc81a8dfc7aa84d95c16ee058346a39ebe`  
		Last Modified: Thu, 22 Oct 2026 02:59:54 GMT  
		Size: 163.7 MB (163676644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab4388bcb8feae2c43eb0c5beba755c053c0184bdec26202b6a7062f33bb8871`  
		Last Modified: Thu, 22 Oct 2026 02:59:50 GMT  
		Size: 10.3 KB (10339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00084d5226d5638801cc5cdb8115ac58ed30b7427d372a0ace8a2e4abcb36afb`  
		Last Modified: Thu, 22 Oct 2026 02:59:50 GMT  
		Size: 2.0 KB (1986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gcc:latest` - unknown; unknown

```console
$ docker pull gcc@sha256:cc9b7d1c0935a31d45b7453cdcc8f88ca9af53a7763f8315e24b27e67677d247
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17493310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60baf660251a8fd899864e72bc42d0e85dcc767bdec8ae99ba2aa1d7bb8a78de`

```dockerfile
```

-	Layers:
	-	`sha256:82de436b80003e8b494d6afeb4eac92a42925305d254a7a3d2234bfb6ac1a5cf`  
		Last Modified: Thu, 22 Oct 2026 02:59:51 GMT  
		Size: 17.5 MB (17462400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70015530fe8226233686423e722bc28dbc5e546bddb4bc0101feea59516012fc`  
		Last Modified: Thu, 22 Oct 2026 02:59:50 GMT  
		Size: 30.9 KB (30910 bytes)  
		MIME: application/vnd.in-toto+json

### `gcc:latest` - linux; ppc64le

```console
$ docker pull gcc@sha256:498a6401c7d0170c60d022c9e89f47ff052c54fef227cd309f52d843ee4ad503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **560.9 MB (560901237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48c114e8271db6c42bb61fc12bd82ae16719322bc71bf8a26ab99fbbb2618337`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 04:41:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 11:40:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 14:34:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 23:08:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		abigail-tools 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 05:45:30 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06 	D3A93CAD751C2AF4F8C7AD516C35B99309B5FA62
# Wed, 07 Oct 2026 05:45:30 GMT
ENV GCC_MIRRORS=https://ftpmirror.gnu.org/gcc 		https://mirrors.kernel.org/gnu/gcc 		https://bigsearcher.com/mirrors/gcc/releases 		http://www.netgull.com/gcc/releases 		https://ftpmirror.gnu.org/gcc 		https://sourceware.org/pub/gcc/releases 		ftp://ftp.gnu.org/gnu/gcc
# Wed, 07 Oct 2026 05:45:30 GMT
ENV GCC_VERSION=16.2.0
# Wed, 07 Oct 2026 05:45:30 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		flex 		gnupg 	; 	rm -r /var/lib/apt/lists/*; 		_fetch() { 		local fetch="$1"; shift; 		local file="$1"; shift; 		for mirror in $GCC_MIRRORS; do 			if curl -fL "$mirror/$fetch" --connect-timeout 30 -o "$file"; then 				return 0; 			fi; 		done; 		echo >&2 "error: failed to download '$fetch' from several mirrors"; 		return 1; 	}; 		_fetch "gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.xz.sig" 'gcc.tar.xz.sig'; 	_fetch "gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.xz" 'gcc.tar.xz'; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify gcc.tar.xz.sig gcc.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	mkdir -p /usr/src/gcc; 	tar -xf gcc.tar.xz -C /usr/src/gcc --strip-components=1; 	rm gcc.tar.xz*; 		cd /usr/src/gcc; 		./contrib/download_prerequisites; 	{ rm *.tar.* || true; }; 		for f in config.guess config.sub; do 		wget --timeout 30 -O "$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 		find -mindepth 2 -name "$f" -exec cp -v "$f" '{}' ';'; 	done; 		dir="$(mktemp -d)"; 	cd "$dir"; 		extraConfigureArgs=''; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) 			extraConfigureArgs="$extraConfigureArgs --with-arch=armv5te --with-float=soft" 			;; 		armhf) 			extraConfigureArgs="$extraConfigureArgs --with-arch=armv7-a+fp --with-float=hard --with-mode=thumb" 			;; 				i386) 			extraConfigureArgs="$extraConfigureArgs --with-arch-32=i686"; 			;; 	esac; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	/usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 		$extraConfigureArgs 	; 	make -j "$(nproc)"; 	make install-strip; 		cd ..; 		rm -rf "$dir" /usr/src/gcc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 07 Oct 2026 05:45:31 GMT
RUN set -ex; 	{ echo '/usr/local/lib64'; echo '/usr/local/lib'; } > /etc/ld.so.conf.d/000-local-lib.conf; 	ldconfig -v; 	deb="$(readlink -ve /usr/lib/*/libstdc++.so* | head -1)"; 	gcc="$(readlink -ve /usr/local/lib*/libstdc++.so | head -1)"; 	LD_PRELOAD="$deb" abidiff --no-added-syms "$deb" "$gcc" # buildkit
# Wed, 07 Oct 2026 05:45:32 GMT
RUN set -ex; 	dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc; 	dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++; 	dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran; 	update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999 # buildkit
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cee8c75408fb545ab55e5cbdf6e0c4e4b171baf24f9b88c760adbc0ef14b65b4`  
		Last Modified: Tue, 06 Oct 2026 04:41:57 GMT  
		Size: 27.0 MB (27023111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fd755399b9c7323fd96b40a78a5e5e123878fa481c517d7cb1672f297a2b8b`  
		Last Modified: Tue, 06 Oct 2026 11:41:10 GMT  
		Size: 73.1 MB (73088931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bdb408c91e88146791db291cb121f09d35e30d6e072b5574630e63d8fcaa84d`  
		Last Modified: Tue, 06 Oct 2026 14:36:24 GMT  
		Size: 232.1 MB (232137965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569224e4def2095588a699c9a648ba8a7c480b32123c46a57babc87bbeeed2d2`  
		Last Modified: Wed, 07 Oct 2026 05:32:12 GMT  
		Size: 4.9 MB (4898512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:890d900eb08e7027e5885c07e38c7755fb07791667cdc9da1400df69d4b570fa`  
		Last Modified: Wed, 07 Oct 2026 05:46:59 GMT  
		Size: 170.5 MB (170532924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a66804385cfbd543942c35e2e0c396825a788f124c4d74ffc602563d79ff3283`  
		Last Modified: Wed, 07 Oct 2026 05:46:55 GMT  
		Size: 10.7 KB (10662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b38a28bd9ca396783e55be5e4a5a5eb456c350ecd5b22dbc38d457be6663bee`  
		Last Modified: Wed, 07 Oct 2026 05:46:55 GMT  
		Size: 2.0 KB (2008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gcc:latest` - unknown; unknown

```console
$ docker pull gcc@sha256:f2e5591056e8f942be5a850fd12f8c1a20c715c2aed46fa1202ad6a213b70d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17396238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:223b319d923bc93c7e6b70962ffe47d595036f4e125fe6cdca78d083e06a2d11`

```dockerfile
```

-	Layers:
	-	`sha256:361f3301450b57023a5de33ea1206b7bdc6d1d77524bf37e1d7928186674d3f8`  
		Last Modified: Wed, 07 Oct 2026 05:46:56 GMT  
		Size: 17.4 MB (17365451 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca015bfd2a94c748422eb53dd9ba279b2c2f61041db6b230a1fed3a80103858e`  
		Last Modified: Wed, 07 Oct 2026 05:46:55 GMT  
		Size: 30.8 KB (30787 bytes)  
		MIME: application/vnd.in-toto+json

### `gcc:latest` - linux; s390x

```console
$ docker pull gcc@sha256:b55474b9431d9154c5f75cb792a5368623c9f26fdf981410375d7de172be0103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **530.6 MB (530561140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c54283ecc5c91e5daae50e8441741382d52497172297a8b56f3597df566d8a8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:10:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:56:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:25:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 12:58:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		abigail-tools 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 14:02:41 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06 	D3A93CAD751C2AF4F8C7AD516C35B99309B5FA62
# Wed, 21 Oct 2026 14:02:41 GMT
ENV GCC_MIRRORS=https://ftpmirror.gnu.org/gcc 		https://mirrors.kernel.org/gnu/gcc 		https://bigsearcher.com/mirrors/gcc/releases 		http://www.netgull.com/gcc/releases 		https://ftpmirror.gnu.org/gcc 		https://sourceware.org/pub/gcc/releases 		ftp://ftp.gnu.org/gnu/gcc
# Wed, 21 Oct 2026 14:02:41 GMT
ENV GCC_VERSION=16.2.0
# Wed, 21 Oct 2026 14:02:41 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		flex 		gnupg 	; 	rm -r /var/lib/apt/lists/*; 		_fetch() { 		local fetch="$1"; shift; 		local file="$1"; shift; 		for mirror in $GCC_MIRRORS; do 			if curl -fL "$mirror/$fetch" --connect-timeout 30 -o "$file"; then 				return 0; 			fi; 		done; 		echo >&2 "error: failed to download '$fetch' from several mirrors"; 		return 1; 	}; 		_fetch "gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.xz.sig" 'gcc.tar.xz.sig'; 	_fetch "gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.xz" 'gcc.tar.xz'; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify gcc.tar.xz.sig gcc.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	mkdir -p /usr/src/gcc; 	tar -xf gcc.tar.xz -C /usr/src/gcc --strip-components=1; 	rm gcc.tar.xz*; 		cd /usr/src/gcc; 		./contrib/download_prerequisites; 	{ rm *.tar.* || true; }; 		for f in config.guess config.sub; do 		wget --timeout 30 -O "$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 		find -mindepth 2 -name "$f" -exec cp -v "$f" '{}' ';'; 	done; 		dir="$(mktemp -d)"; 	cd "$dir"; 		extraConfigureArgs=''; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) 			extraConfigureArgs="$extraConfigureArgs --with-arch=armv5te --with-float=soft" 			;; 		armhf) 			extraConfigureArgs="$extraConfigureArgs --with-arch=armv7-a+fp --with-float=hard --with-mode=thumb" 			;; 				i386) 			extraConfigureArgs="$extraConfigureArgs --with-arch-32=i686"; 			;; 	esac; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	/usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 		$extraConfigureArgs 	; 	make -j "$(nproc)"; 	make install-strip; 		cd ..; 		rm -rf "$dir" /usr/src/gcc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 14:02:41 GMT
RUN set -ex; 	{ echo '/usr/local/lib64'; echo '/usr/local/lib'; } > /etc/ld.so.conf.d/000-local-lib.conf; 	ldconfig -v; 	deb="$(readlink -ve /usr/lib/*/libstdc++.so* | head -1)"; 	gcc="$(readlink -ve /usr/local/lib*/libstdc++.so | head -1)"; 	LD_PRELOAD="$deb" abidiff --no-added-syms "$deb" "$gcc" # buildkit
# Wed, 21 Oct 2026 14:02:42 GMT
RUN set -ex; 	dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc; 	dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++; 	dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran; 	update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999 # buildkit
```

-	Layers:
	-	`sha256:704f7e15662a961f845613a96026b2730c44eeb4278aaecb894b38a2faf73324`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 49.5 MB (49460141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd33cdea1fbdb4ffcd44fee7135b211b2c5a2a70ab9e516ec85432c1bc07fb61`  
		Last Modified: Wed, 21 Oct 2026 01:10:22 GMT  
		Size: 26.8 MB (26814219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f44aa5ddd4c553ac7c2cac8bb00eeba4af94a81fbefe6045c863220ef11212b`  
		Last Modified: Wed, 21 Oct 2026 01:56:41 GMT  
		Size: 68.7 MB (68663139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21749c740ddcacabb16b27febc2fc7e459e877eb7fd999966f02bf7486ea4a04`  
		Last Modified: Wed, 21 Oct 2026 02:26:11 GMT  
		Size: 207.5 MB (207534168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d47380780f6dcd59e01bd8d9ad941938f18631b19c00d9255c4d52442e093b1e`  
		Last Modified: Wed, 21 Oct 2026 14:03:30 GMT  
		Size: 4.7 MB (4673242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be356f88f89f7e5c23b29a78a90fb1ffc8650eac92207deb47b4a0dd30f06329`  
		Last Modified: Wed, 21 Oct 2026 14:03:33 GMT  
		Size: 173.4 MB (173403385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b67b61ee86d220f1237bb4de994eed34e4ad0b1b3bff02e10f6f2bc4fbe46d05`  
		Last Modified: Wed, 21 Oct 2026 14:03:30 GMT  
		Size: 10.9 KB (10867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5049e6e1068819f69f1bcc538718219ee01fbb6d14bbbe393969fe1de875e46a`  
		Last Modified: Wed, 21 Oct 2026 14:03:30 GMT  
		Size: 2.0 KB (1979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gcc:latest` - unknown; unknown

```console
$ docker pull gcc@sha256:067abaf6722c5fad0faa1be109bbc9fa589fb32a0b9fbc56eb3fe481188d342c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17186618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b88c2be49358215f1e700dcd213877c2db472a04e538fff2698e77c2f53c7d60`

```dockerfile
```

-	Layers:
	-	`sha256:f4b2191d220906de32a54f584c771eabee143fc42f826f3bfa1ed49869955f30`  
		Last Modified: Wed, 21 Oct 2026 14:03:30 GMT  
		Size: 17.2 MB (17155906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0605420f7f2669bfa7b507d600d29a040e4d13986103983b17facfe3e4ebeff`  
		Last Modified: Wed, 21 Oct 2026 14:03:30 GMT  
		Size: 30.7 KB (30712 bytes)  
		MIME: application/vnd.in-toto+json
