## `haxe:latest`

```console
$ docker pull haxe@sha256:2344c1af482e1ed059ed1597184ed148a5bc9c66fbf6bc2da55b047a238fe5d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `haxe:latest` - linux; amd64

```console
$ docker pull haxe@sha256:941773ff9d54d4aa4c71a0abf0e76e855fb2de0620b767a9cace10c5036d8816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165332233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28085e6584f27d84f9079327491241a43bde133b6bc6c7e8388d9f266dac0fb5`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:17:24 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 02:17:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1 		zlib1g 		libpcre2-8-0 		 		libmariadb3 		libsqlite3-0 		libmbedcrypto16 		libmbedtls21 		libmbedx509-7 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:17:24 GMT
ENV NEKO_VERSION=2.4.1
# Wed, 05 Aug 2026 02:18:45 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre2-dev 		zlib1g-dev 		apache2-dev 		libmariadb-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk-3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "https://github.com/HaxeFoundation/neko/archive/v2-4-1/neko-2.4.1.tar.gz" 	&& echo "702282028190dffa2078b00cca515b8e2ba889186a221df2226d2b6deb3ffaca *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache # buildkit
# Wed, 05 Aug 2026 02:18:45 GMT
ENV HAXE_VERSION=4.3.7
# Wed, 05 Aug 2026 02:18:45 GMT
ENV HAXE_STD_PATH=/usr/local/share/haxe/std
# Wed, 05 Aug 2026 02:22:03 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-findlib 		zlib1g-dev 		libpcre2-dev 		libmbedtls-dev 		opam 		mccs 		m4 		unzip 		pkg-config 		libstring-shellquote-perl 		libipc-system-simple-perl 	' 	&& git clone --recursive --depth 1 --branch 4.3.7 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& mkdir -p $HAXE_STD_PATH 	&& cp -r std/* $HAXE_STD_PATH 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 		&& opam init --compiler=4.14.2 --disable-sandboxing 	&& eval `opam env` 		&& opam pin add luv 0.5.14 --no-action 		&& ( [ -f /usr/src/haxe/opam ] || [ -f /usr/src/haxe/haxe.opam ] && opam install /usr/src/haxe --deps-only --assume-depexts --yes --ignore-constraints-on=luv || make opam_install ) 	&& make all tools 	&& mkdir -p /usr/local/bin 	&& cp haxe haxelib /usr/local/bin 	&& mkdir -p /haxelib 	&& cd / && haxelib setup /haxelib 		&& eval `opam env --revert` 	&& rm -rf ~/.opam 	&& rm -rf /var/lib/apt/lists/* 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache # buildkit
# Wed, 05 Aug 2026 02:22:03 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b64c51cda3d04397bcf5742a29a9a1ba7adcfd18a376bacb8d114ed64cbd5a`  
		Last Modified: Wed, 05 Aug 2026 00:45:14 GMT  
		Size: 25.6 MB (25638637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec935196e6a095bdd6ac865248321ea4fd33424071fe14264cd33900f8ae6212`  
		Last Modified: Wed, 05 Aug 2026 01:33:41 GMT  
		Size: 67.8 MB (67797999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bb87ff137a25bac1462ef2a57db2b7c414f388ea78fc889e4c4bdd0790a520`  
		Last Modified: Wed, 05 Aug 2026 02:22:09 GMT  
		Size: 1.5 MB (1478725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25bce5941da5b0805f725c5642b524f2042215401b6c299205bc40f99a675d64`  
		Last Modified: Wed, 05 Aug 2026 02:22:09 GMT  
		Size: 9.4 MB (9405656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd87127363d6f06b4e7b3cdfd0951b8d4dc75c45ec3cde93ad572679e979807`  
		Last Modified: Wed, 05 Aug 2026 02:22:09 GMT  
		Size: 11.7 MB (11698902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haxe:latest` - unknown; unknown

```console
$ docker pull haxe@sha256:18c183656cf08bb0003f6fb2e974ce6cc0e9599b8950080cdaea6329dd7cf9d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a56a2049932b1de347b781222bbe302ee895f7e26ad033d0246a910af4dfa60`

```dockerfile
```

-	Layers:
	-	`sha256:c052ec13d5fdc783ec00bdd3d25597987b3b858cba1ff5bab02a756b90b68e5a`  
		Last Modified: Wed, 05 Aug 2026 02:22:09 GMT  
		Size: 19.1 KB (19052 bytes)  
		MIME: application/vnd.in-toto+json

### `haxe:latest` - linux; arm variant v7

```console
$ docker pull haxe@sha256:e47f3143ec777ce8aca237f5e2974450a94e97c9be39faa3b6ab68de604b9239
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.7 MB (153726166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d61e92e7b7363d329cd7dbae9924c851528f6ac810bbe2b383bd9e83bceacf4a`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:31:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:15:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 05:18:22 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 05:18:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1 		zlib1g 		libpcre2-8-0 		 		libmariadb3 		libsqlite3-0 		libmbedcrypto16 		libmbedtls21 		libmbedx509-7 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 05:18:22 GMT
ENV NEKO_VERSION=2.4.1
# Tue, 14 Jul 2026 05:19:52 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre2-dev 		zlib1g-dev 		apache2-dev 		libmariadb-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk-3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "https://github.com/HaxeFoundation/neko/archive/v2-4-1/neko-2.4.1.tar.gz" 	&& echo "702282028190dffa2078b00cca515b8e2ba889186a221df2226d2b6deb3ffaca *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache # buildkit
# Tue, 14 Jul 2026 05:19:52 GMT
ENV HAXE_VERSION=4.3.7
# Tue, 14 Jul 2026 05:19:52 GMT
ENV HAXE_STD_PATH=/usr/local/share/haxe/std
# Tue, 14 Jul 2026 05:24:41 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-findlib 		zlib1g-dev 		libpcre2-dev 		libmbedtls-dev 		opam 		mccs 		m4 		unzip 		pkg-config 		libstring-shellquote-perl 		libipc-system-simple-perl 	' 	&& git clone --recursive --depth 1 --branch 4.3.7 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& mkdir -p $HAXE_STD_PATH 	&& cp -r std/* $HAXE_STD_PATH 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 		&& opam init --compiler=4.14.2 --disable-sandboxing 	&& eval `opam env` 		&& opam pin add luv 0.5.14 --no-action 		&& ( [ -f /usr/src/haxe/opam ] || [ -f /usr/src/haxe/haxe.opam ] && opam install /usr/src/haxe --deps-only --assume-depexts --yes --ignore-constraints-on=luv || make opam_install ) 	&& make all tools 	&& mkdir -p /usr/local/bin 	&& cp haxe haxelib /usr/local/bin 	&& mkdir -p /haxelib 	&& cd / && haxelib setup /haxelib 		&& eval `opam env --revert` 	&& rm -rf ~/.opam 	&& rm -rf /var/lib/apt/lists/* 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache # buildkit
# Tue, 14 Jul 2026 05:24:41 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:1d8dcf695fa507a9d4cb0ef3ecaeb24a772f22a09a5795746304d8601933b1dc`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 45.7 MB (45743729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c8bac7fdc99a9f96cdc34c1e6bd063d1181c8b53c33b04b3148bc8b98c7d8e`  
		Last Modified: Tue, 14 Jul 2026 02:31:35 GMT  
		Size: 23.6 MB (23636524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:847b21004c354c8a82f1e64b061add3c7998d83dfedf44e7b5f3cf76541e114e`  
		Last Modified: Tue, 14 Jul 2026 04:15:41 GMT  
		Size: 62.7 MB (62746773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4291663e8db4947b76d000631ef80177c2ea1db789038b8634ec89135564df4d`  
		Last Modified: Tue, 14 Jul 2026 05:24:46 GMT  
		Size: 1.4 MB (1363615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f2738ccb1aab1be776df403259f3cd3dd9519435b61e926d39b77040736c47`  
		Last Modified: Tue, 14 Jul 2026 05:24:47 GMT  
		Size: 9.1 MB (9072801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bbc0ee2de1292b8569f96786158197229686a451662d07c47eed3fe92912b3`  
		Last Modified: Tue, 14 Jul 2026 05:24:47 GMT  
		Size: 11.2 MB (11162724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haxe:latest` - unknown; unknown

```console
$ docker pull haxe@sha256:e97286209573b32c3882fdedeeea4c7fe2497c4507e9105b6785ac74cf935586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 KB (19165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40b5e16fe0e8699cec527c2052d53518df0666a0040bda4bf4e571331891ca9d`

```dockerfile
```

-	Layers:
	-	`sha256:caa799dc4e123f9275006db0c65a006578227ac59ce04898f4a795dda0d6e54a`  
		Last Modified: Tue, 14 Jul 2026 05:24:46 GMT  
		Size: 19.2 KB (19165 bytes)  
		MIME: application/vnd.in-toto+json

### `haxe:latest` - linux; arm64 variant v8

```console
$ docker pull haxe@sha256:e78ff820e17dd3b5b118ab0f85729650f0c742cba76cbd52d601d8847456826f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.6 MB (166551920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e400a4f563884e4ac4a6bdcebae5e81b09ff7b1e0c4f5b7c63c1478e6538b50`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:17:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 02:17:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1 		zlib1g 		libpcre2-8-0 		 		libmariadb3 		libsqlite3-0 		libmbedcrypto16 		libmbedtls21 		libmbedx509-7 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:17:09 GMT
ENV NEKO_VERSION=2.4.1
# Wed, 05 Aug 2026 02:18:31 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre2-dev 		zlib1g-dev 		apache2-dev 		libmariadb-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk-3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "https://github.com/HaxeFoundation/neko/archive/v2-4-1/neko-2.4.1.tar.gz" 	&& echo "702282028190dffa2078b00cca515b8e2ba889186a221df2226d2b6deb3ffaca *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache # buildkit
# Wed, 05 Aug 2026 02:18:31 GMT
ENV HAXE_VERSION=4.3.7
# Wed, 05 Aug 2026 02:18:31 GMT
ENV HAXE_STD_PATH=/usr/local/share/haxe/std
# Wed, 05 Aug 2026 02:22:08 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-findlib 		zlib1g-dev 		libpcre2-dev 		libmbedtls-dev 		opam 		mccs 		m4 		unzip 		pkg-config 		libstring-shellquote-perl 		libipc-system-simple-perl 	' 	&& git clone --recursive --depth 1 --branch 4.3.7 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& mkdir -p $HAXE_STD_PATH 	&& cp -r std/* $HAXE_STD_PATH 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 		&& opam init --compiler=4.14.2 --disable-sandboxing 	&& eval `opam env` 		&& opam pin add luv 0.5.14 --no-action 		&& ( [ -f /usr/src/haxe/opam ] || [ -f /usr/src/haxe/haxe.opam ] && opam install /usr/src/haxe --deps-only --assume-depexts --yes --ignore-constraints-on=luv || make opam_install ) 	&& make all tools 	&& mkdir -p /usr/local/bin 	&& cp haxe haxelib /usr/local/bin 	&& mkdir -p /haxelib 	&& cd / && haxelib setup /haxelib 		&& eval `opam env --revert` 	&& rm -rf ~/.opam 	&& rm -rf /var/lib/apt/lists/* 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache # buildkit
# Wed, 05 Aug 2026 02:22:08 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3df26e3af2ffa164164818cbb63174def2450bcdee94680a9fe9f3ecaddbee`  
		Last Modified: Wed, 05 Aug 2026 00:47:38 GMT  
		Size: 25.0 MB (25026975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50fe3346a36b8a110ecc263e7e06ae8e67594eceaf987bbc84fa7ceb29b1a6cd`  
		Last Modified: Wed, 05 Aug 2026 01:40:24 GMT  
		Size: 67.6 MB (67600081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1471abf8629aec0c1dbb78986136fd329881e65701d482fc1d42b5ab307ddd1d`  
		Last Modified: Wed, 05 Aug 2026 02:22:15 GMT  
		Size: 1.5 MB (1477040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f74e072c248bad1f5230cbaf44505034cce4c454503b2e24fb6c938827c91e7d`  
		Last Modified: Wed, 05 Aug 2026 02:22:15 GMT  
		Size: 9.4 MB (9351075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fffafdadf655571b0c1e71768bb761a9e7f89815a0c5b445111900c0bd3c7893`  
		Last Modified: Wed, 05 Aug 2026 02:22:15 GMT  
		Size: 13.4 MB (13422903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haxe:latest` - unknown; unknown

```console
$ docker pull haxe@sha256:d1b58e9a040c4b7d54c1010611d3d4e89b36309cdffa774cdbe550582a3452ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 KB (19198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd4b6ed105607876b916af6826a59d2f4ce93c4f971fe1c973ca5b93fb6e77a0`

```dockerfile
```

-	Layers:
	-	`sha256:357af5bd764b229e94e8772eecf72ff342f14dcc02798016cfb05c308e6737b7`  
		Last Modified: Wed, 05 Aug 2026 02:22:14 GMT  
		Size: 19.2 KB (19198 bytes)  
		MIME: application/vnd.in-toto+json

### `haxe:latest` - windows version 10.0.26100.33158; amd64

```console
$ docker pull haxe@sha256:f8bce201e622942a7989e17e5b32233cd49805ab00b1f228474d382c87e323ae
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2385091146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba4450db0e974e05b07c18621cc03088fc3efa64267542e90d54c32782efc525`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Thu, 16 Jul 2026 00:00:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 16 Jul 2026 00:00:34 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Thu, 16 Jul 2026 00:00:35 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Thu, 16 Jul 2026 00:00:35 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Thu, 16 Jul 2026 00:00:36 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Thu, 16 Jul 2026 00:00:37 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Thu, 16 Jul 2026 00:00:43 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 16 Jul 2026 00:01:06 GMT
RUN $url = 'https://download.microsoft.com/download/0/5/6/056dcda9-d667-4e27-8001-8a0c6971d6b1/vcredist_x86.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'vcredist_x86.exe'; 		Write-Host 'Verifying sha256 (89f4e593ea5541d1c53f983923124f9fd061a1c0c967339109e375c661573c17) ...'; 	if ((Get-FileHash vcredist_x86.exe -Algorithm sha256).Hash -ne '89f4e593ea5541d1c53f983923124f9fd061a1c0c967339109e375c661573c17') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -FilePath "vcredist_x86.exe" -ArgumentList "/Q" -Wait; 		Write-Host 'Removing installer...'; 	Remove-Item .\vcredist_x86.exe; 		Write-Host 'Complete.';
# Thu, 16 Jul 2026 00:01:12 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Thu, 16 Jul 2026 00:01:12 GMT
ENV NEKO_VERSION=2.4.1
# Thu, 16 Jul 2026 00:01:22 GMT
RUN $url = 'https://github.com/HaxeFoundation/neko/releases/download/v2-4-1/neko-2.4.1-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (3902933da42320e8bc04dbee07959ee9ff09a7848e9af48072396400cc3618c9) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne '3902933da42320e8bc04dbee07959ee9ff09a7848e9af48072396400cc3618c9') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Thu, 16 Jul 2026 00:01:23 GMT
ENV HAXE_VERSION=4.3.7
# Thu, 16 Jul 2026 00:02:08 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/4.3.7/haxe-4.3.7-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (29f7acb0fb9fc66a2b9f6bd9453af3474ccb14ebd9fd0142f351d7311c4010c9) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne '29f7acb0fb9fc66a2b9f6bd9453af3474ccb14ebd9fd0142f351d7311c4010c9') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 	Write-Host '  haxelib version'; haxelib version; 		Write-Host 'Complete.';
# Thu, 16 Jul 2026 00:02:14 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Thu, 16 Jul 2026 00:02:15 GMT
ENV HOMEDRIVE=C:
# Thu, 16 Jul 2026 00:02:21 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 16 Jul 2026 00:02:28 GMT
RUN (New-Object System.Net.WebClient).DownloadString('https://lib.haxe.org/p/hxcpp/4.2.1/download/') >$null
# Thu, 16 Jul 2026 00:02:28 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf360e04485e3289c6d221ae4a5a314249e758c1531a2a76749384d2976df46`  
		Last Modified: Thu, 16 Jul 2026 00:02:39 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbbc595cc96eccc2fc554968dbadce37f7bb6101561efd2d8b1b18fd5525bb8`  
		Last Modified: Thu, 16 Jul 2026 00:02:39 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b62a71eadf2179f581e8f076603d15dc2e617cf7575faa00b570e1f414aa407`  
		Last Modified: Thu, 16 Jul 2026 00:02:39 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042a241628e13187a4d4fdce5ecacb2b56505b26d2ce49bcc92b1b329d6cec88`  
		Last Modified: Thu, 16 Jul 2026 00:02:39 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117e1888681ffb12028bf05dad940b226e3a692ac0fd27eab2f37063e55c738a`  
		Last Modified: Thu, 16 Jul 2026 00:02:38 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e76e568a8b298cec495a83190b10f3c871c7570de13931834deaec00a77c923`  
		Last Modified: Thu, 16 Jul 2026 00:02:37 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e90ec7dc592ddb1b0a29850ede263acca9f619176170e9fd9dc3b308fefec5`  
		Last Modified: Thu, 16 Jul 2026 00:02:37 GMT  
		Size: 368.6 KB (368639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef967898d4128c15950424605aa3fd65da7441231b3f71733ca247f01e1e4ae`  
		Last Modified: Thu, 16 Jul 2026 00:02:38 GMT  
		Size: 13.0 MB (12954468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271c0ace4ad2d62e61f28148ca8a04d25aea2f786d9437d345855138114b59c5`  
		Last Modified: Thu, 16 Jul 2026 00:02:36 GMT  
		Size: 375.9 KB (375850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5826d3499f6ae9c95cdab83d0fcfb4a24b769d1f8939637ab6f503d17eb425`  
		Last Modified: Thu, 16 Jul 2026 00:02:35 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54229441afb9d7c9510540aa043752de853239359c0081aba3e35455698cc928`  
		Last Modified: Thu, 16 Jul 2026 00:02:36 GMT  
		Size: 4.4 MB (4395771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3013dcec7ff5989c7af77421fc588c13e57eddc4831345d7517ed400073ffaec`  
		Last Modified: Thu, 16 Jul 2026 00:02:35 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbffdf7b4e0ce450e6124295746ae0d729442274cbec0c2ecd8162795fcac66e`  
		Last Modified: Thu, 16 Jul 2026 00:02:37 GMT  
		Size: 10.8 MB (10835527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b158106fa7207f9f69441a7c127b2d5ede6ae29f5e8d76986d83aadfa4002e`  
		Last Modified: Thu, 16 Jul 2026 00:02:33 GMT  
		Size: 370.7 KB (370704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08be06ef1cff03a6589f3c7dbc95e0ae1096292d076ca1dbce6c44d615931f0`  
		Last Modified: Thu, 16 Jul 2026 00:02:33 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0968d49377a4e2a8003ba08a9f00e19b35aecc2e2af57e32ace9b09ca0e21da1`  
		Last Modified: Thu, 16 Jul 2026 00:02:33 GMT  
		Size: 376.2 KB (376201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315a96b45278edaa1862681d4afd61a3812d58c57fc08acceb553983cb62c267`  
		Last Modified: Thu, 16 Jul 2026 00:02:33 GMT  
		Size: 393.0 KB (393037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3b8991ec3552db62b5e51046edc4bab5b1e55ac47fbff97e41dc74fa3b1bfa`  
		Last Modified: Thu, 16 Jul 2026 00:02:33 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haxe:latest` - windows version 10.0.20348.5386; amd64

```console
$ docker pull haxe@sha256:9ac1403cc1d8d2b1eb85feefa73fbf4d3789b525fd4e7a2191a229fef47bf933
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2187758357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdaaec1d953aca6f55e504c3af39ca5d5e62f20311aea7e23f32438bcaff7215`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:24:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Jul 2026 23:24:10 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Wed, 15 Jul 2026 23:24:11 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Wed, 15 Jul 2026 23:24:12 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Wed, 15 Jul 2026 23:24:13 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Wed, 15 Jul 2026 23:24:14 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Wed, 15 Jul 2026 23:24:21 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Jul 2026 23:24:35 GMT
RUN $url = 'https://download.microsoft.com/download/0/5/6/056dcda9-d667-4e27-8001-8a0c6971d6b1/vcredist_x86.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'vcredist_x86.exe'; 		Write-Host 'Verifying sha256 (89f4e593ea5541d1c53f983923124f9fd061a1c0c967339109e375c661573c17) ...'; 	if ((Get-FileHash vcredist_x86.exe -Algorithm sha256).Hash -ne '89f4e593ea5541d1c53f983923124f9fd061a1c0c967339109e375c661573c17') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -FilePath "vcredist_x86.exe" -ArgumentList "/Q" -Wait; 		Write-Host 'Removing installer...'; 	Remove-Item .\vcredist_x86.exe; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:24:40 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Wed, 15 Jul 2026 23:24:41 GMT
ENV NEKO_VERSION=2.4.1
# Wed, 15 Jul 2026 23:24:52 GMT
RUN $url = 'https://github.com/HaxeFoundation/neko/releases/download/v2-4-1/neko-2.4.1-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (3902933da42320e8bc04dbee07959ee9ff09a7848e9af48072396400cc3618c9) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne '3902933da42320e8bc04dbee07959ee9ff09a7848e9af48072396400cc3618c9') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:24:53 GMT
ENV HAXE_VERSION=4.3.7
# Wed, 15 Jul 2026 23:25:41 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/4.3.7/haxe-4.3.7-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (29f7acb0fb9fc66a2b9f6bd9453af3474ccb14ebd9fd0142f351d7311c4010c9) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne '29f7acb0fb9fc66a2b9f6bd9453af3474ccb14ebd9fd0142f351d7311c4010c9') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 	Write-Host '  haxelib version'; haxelib version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:25:46 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Wed, 15 Jul 2026 23:25:47 GMT
ENV HOMEDRIVE=C:
# Wed, 15 Jul 2026 23:25:52 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Jul 2026 23:25:59 GMT
RUN (New-Object System.Net.WebClient).DownloadString('https://lib.haxe.org/p/hxcpp/4.2.1/download/') >$null
# Wed, 15 Jul 2026 23:26:00 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd10fe4583a5940def2910e6017eaedce1c193c0c7ab637e92cd8bbb4106590a`  
		Last Modified: Wed, 15 Jul 2026 23:26:10 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33ce4604ec48637f5bd4e72ed5098ac7d01b52732aa874d0355415b302455fc`  
		Last Modified: Wed, 15 Jul 2026 23:26:10 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63d64c889277082d435adf98495809d2420b519b609de8d706d14f9f63c1497`  
		Last Modified: Wed, 15 Jul 2026 23:26:10 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc60396f5f88bdefec279eb7ae44c13f28594bb07caed78dd1feda2f50c1b368`  
		Last Modified: Wed, 15 Jul 2026 23:26:10 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a6dfaf8e332011e43f871919e3a5838e54bdf5f376ebc4bc98f3f787cab8a7`  
		Last Modified: Wed, 15 Jul 2026 23:26:09 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccc76ff4b820302aca1a37d0e6ecb697c16a2073ecafe2910bbdad02430dac2`  
		Last Modified: Wed, 15 Jul 2026 23:26:08 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16e785b8676e07e59593d3dd07581a7fb15dcb5ac2fb91263587559a67a6165`  
		Last Modified: Wed, 15 Jul 2026 23:26:08 GMT  
		Size: 496.9 KB (496856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf46ebaacbcf6e0c6f10fab0247843f1be6e30968e4327a39a000cb863b81a59`  
		Last Modified: Wed, 15 Jul 2026 23:26:09 GMT  
		Size: 12.9 MB (12931770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c27a2f4df556a78ea7571a19417f2d74fe222795f0563034c3301c9928de0fa`  
		Last Modified: Wed, 15 Jul 2026 23:26:07 GMT  
		Size: 377.4 KB (377387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7733fdc56b28e0bf06e26393a717be12adf613dcf70baa27ba8e9911cc1731f3`  
		Last Modified: Wed, 15 Jul 2026 23:26:06 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c213968abcced70ebf33e25328d066a88b989c178264d02470d1f45c4ce040`  
		Last Modified: Wed, 15 Jul 2026 23:26:07 GMT  
		Size: 4.4 MB (4395417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de15312f19c99277dee2b653b4ba5a53d3c0adf42e6c4cf4ed8e85dff266c4f1`  
		Last Modified: Wed, 15 Jul 2026 23:26:06 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd9b1af76b5ba94aed9bf0323b8cd59d4709f4cf396bfef82e90bd399a6223c`  
		Last Modified: Wed, 15 Jul 2026 23:26:08 GMT  
		Size: 10.8 MB (10844076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4146815c85be24908c6226feeb19f691cbe7484a7e8387567f90a3bb97db84c`  
		Last Modified: Wed, 15 Jul 2026 23:26:05 GMT  
		Size: 372.2 KB (372190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e11dde54a8014f05dc5654bc14054397d740f5b4d620e87b04d89eba2177e1`  
		Last Modified: Wed, 15 Jul 2026 23:26:04 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a6e3f9615276c2bc4931cce3658189bc2ab3adf20d3bf667f2204ae7d7a700`  
		Last Modified: Wed, 15 Jul 2026 23:26:05 GMT  
		Size: 381.3 KB (381270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abf7eeabd8e490cede8c3a2ee35cc23b911e40cfa56b3874f4b2992c840a062`  
		Last Modified: Wed, 15 Jul 2026 23:26:05 GMT  
		Size: 393.1 KB (393144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581a79393b7deeafe73134e2e35489743d9050de2d5827b4edbe990ed0ba355e`  
		Last Modified: Wed, 15 Jul 2026 23:26:04 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
