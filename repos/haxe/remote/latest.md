## `haxe:latest`

```console
$ docker pull haxe@sha256:7dff519b6adf1d5067108aa9fefb8aee7d22e2a96fd47d954c8965db7dd5919f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

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
$ docker pull haxe@sha256:4f1fc47d6fe026cf0b4d5d424d0df96bae04eb7227751b16eebabe9834450f22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.7 MB (153737020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1063adb496e2a48002bc1d204fdfc77f2b868ac349bf776991018c505946441e`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:54:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 03:17:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1 		zlib1g 		libpcre2-8-0 		 		libmariadb3 		libsqlite3-0 		libmbedcrypto16 		libmbedtls21 		libmbedx509-7 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:17:06 GMT
ENV NEKO_VERSION=2.4.1
# Wed, 05 Aug 2026 03:18:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre2-dev 		zlib1g-dev 		apache2-dev 		libmariadb-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk-3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "https://github.com/HaxeFoundation/neko/archive/v2-4-1/neko-2.4.1.tar.gz" 	&& echo "702282028190dffa2078b00cca515b8e2ba889186a221df2226d2b6deb3ffaca *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache # buildkit
# Wed, 05 Aug 2026 03:18:32 GMT
ENV HAXE_VERSION=4.3.7
# Wed, 05 Aug 2026 03:18:32 GMT
ENV HAXE_STD_PATH=/usr/local/share/haxe/std
# Wed, 05 Aug 2026 03:23:21 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-findlib 		zlib1g-dev 		libpcre2-dev 		libmbedtls-dev 		opam 		mccs 		m4 		unzip 		pkg-config 		libstring-shellquote-perl 		libipc-system-simple-perl 	' 	&& git clone --recursive --depth 1 --branch 4.3.7 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& mkdir -p $HAXE_STD_PATH 	&& cp -r std/* $HAXE_STD_PATH 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 		&& opam init --compiler=4.14.2 --disable-sandboxing 	&& eval `opam env` 		&& opam pin add luv 0.5.14 --no-action 		&& ( [ -f /usr/src/haxe/opam ] || [ -f /usr/src/haxe/haxe.opam ] && opam install /usr/src/haxe --deps-only --assume-depexts --yes --ignore-constraints-on=luv || make opam_install ) 	&& make all tools 	&& mkdir -p /usr/local/bin 	&& cp haxe haxelib /usr/local/bin 	&& mkdir -p /haxelib 	&& cd / && haxelib setup /haxelib 		&& eval `opam env --revert` 	&& rm -rf ~/.opam 	&& rm -rf /var/lib/apt/lists/* 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache # buildkit
# Wed, 05 Aug 2026 03:23:21 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:ce00596802fbbb6f672716803836be915a7fa1e431e304e27380b560f4b25c8e`  
		Last Modified: Tue, 04 Aug 2026 23:52:16 GMT  
		Size: 45.7 MB (45743375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0dd361d89842d87704123c0af11b4564310574a6d57fefd0e2be36925c3d8d`  
		Last Modified: Wed, 05 Aug 2026 01:20:38 GMT  
		Size: 23.6 MB (23636453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb135e1760d1271aea3209c73b2b3ca0ea7f9cfde6d547d3d7e708701db7379`  
		Last Modified: Wed, 05 Aug 2026 02:54:53 GMT  
		Size: 62.8 MB (62757963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a1b9f3ab2435d90a22706b4576f50ccfbab501eae738be3b738a6b0120cf82`  
		Last Modified: Wed, 05 Aug 2026 03:23:26 GMT  
		Size: 1.4 MB (1363653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46712fe99bb74b833bc6e63151aab085a5365bec6249b42dbcda5891a44e3956`  
		Last Modified: Wed, 05 Aug 2026 03:23:27 GMT  
		Size: 9.1 MB (9072887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd62b85f904c967e929f93dfe9c5be9e55f8cb76b7c200a3cebe1b7734b8960f`  
		Last Modified: Wed, 05 Aug 2026 03:23:27 GMT  
		Size: 11.2 MB (11162689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haxe:latest` - unknown; unknown

```console
$ docker pull haxe@sha256:ec2b977b59ff4c4d3472fbb9a239620dd0c5aeadf77937231dd70464c27f6782
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 KB (19166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee2a1a46042d8ad0277f91cae0252cf66b7744116d0a4fc12f9ca256b4eca580`

```dockerfile
```

-	Layers:
	-	`sha256:5406c61a8f78191bf30fb0cba0eeb9be151f7e757a6a064c6482b2a135879f21`  
		Last Modified: Wed, 05 Aug 2026 03:23:26 GMT  
		Size: 19.2 KB (19166 bytes)  
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

### `haxe:latest` - windows version 10.0.26100.33296; amd64

```console
$ docker pull haxe@sha256:e21ec7d541ae6e0afc1a9b18c595c14da33ee2a352c21071911fbe12a657c47a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2470833450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1ea00eaafcd8d4e7a49b5b044d2b78d9cf39be9851c0148b92084efe83e0b6`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:46:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:46:49 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Wed, 12 Aug 2026 17:46:49 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Wed, 12 Aug 2026 17:46:50 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Wed, 12 Aug 2026 17:46:50 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Wed, 12 Aug 2026 17:46:51 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Wed, 12 Aug 2026 17:46:58 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Aug 2026 17:47:14 GMT
RUN $url = 'https://download.microsoft.com/download/0/5/6/056dcda9-d667-4e27-8001-8a0c6971d6b1/vcredist_x86.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'vcredist_x86.exe'; 		Write-Host 'Verifying sha256 (89f4e593ea5541d1c53f983923124f9fd061a1c0c967339109e375c661573c17) ...'; 	if ((Get-FileHash vcredist_x86.exe -Algorithm sha256).Hash -ne '89f4e593ea5541d1c53f983923124f9fd061a1c0c967339109e375c661573c17') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -FilePath "vcredist_x86.exe" -ArgumentList "/Q" -Wait; 		Write-Host 'Removing installer...'; 	Remove-Item .\vcredist_x86.exe; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:47:20 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Wed, 12 Aug 2026 17:47:20 GMT
ENV NEKO_VERSION=2.4.1
# Wed, 12 Aug 2026 17:47:32 GMT
RUN $url = 'https://github.com/HaxeFoundation/neko/releases/download/v2-4-1/neko-2.4.1-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (3902933da42320e8bc04dbee07959ee9ff09a7848e9af48072396400cc3618c9) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne '3902933da42320e8bc04dbee07959ee9ff09a7848e9af48072396400cc3618c9') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:47:32 GMT
ENV HAXE_VERSION=4.3.7
# Wed, 12 Aug 2026 17:48:20 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/4.3.7/haxe-4.3.7-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (29f7acb0fb9fc66a2b9f6bd9453af3474ccb14ebd9fd0142f351d7311c4010c9) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne '29f7acb0fb9fc66a2b9f6bd9453af3474ccb14ebd9fd0142f351d7311c4010c9') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 	Write-Host '  haxelib version'; haxelib version; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:48:25 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Wed, 12 Aug 2026 17:48:26 GMT
ENV HOMEDRIVE=C:
# Wed, 12 Aug 2026 17:48:32 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Aug 2026 17:48:39 GMT
RUN (New-Object System.Net.WebClient).DownloadString('https://lib.haxe.org/p/hxcpp/4.2.1/download/') >$null
# Wed, 12 Aug 2026 17:48:39 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efc9541172fee148ae0773f77cd5c15fd952a1ad7b84849afc9becf648dd6d1`  
		Last Modified: Wed, 12 Aug 2026 17:48:50 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d009c82dadf893315f59456ad6719ceedf7b8a1f5031c44c63527437c62fc77`  
		Last Modified: Wed, 12 Aug 2026 17:48:50 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093603ffe70eb5e9775ce3321b912dd0007b5d1a25868ab977ff3eed11be7067`  
		Last Modified: Wed, 12 Aug 2026 17:48:50 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7945aaa3168b570b4bba645bbb501992d9290b9ce36590d979282dabd25685b6`  
		Last Modified: Wed, 12 Aug 2026 17:48:49 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1cd6c5cf9250cc73b74c8c2db141e685190ea33ee9f3fbdb5e368ef641d7d3`  
		Last Modified: Wed, 12 Aug 2026 17:48:48 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f123c186c27b22998ec048b74898b20edb532b29127ed15bea9abaa7a9169912`  
		Last Modified: Wed, 12 Aug 2026 17:48:48 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec734220403b086e25f1c746a99c1745411d9f46393f2a7370cc8063fd61a01`  
		Last Modified: Wed, 12 Aug 2026 17:48:48 GMT  
		Size: 361.7 KB (361654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b08b709c2660ae08885b469259215f96eea75a3521f00f3a3c20e6f6040541`  
		Last Modified: Wed, 12 Aug 2026 17:48:49 GMT  
		Size: 12.9 MB (12931131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3464cbcd802824c830dc058fc1fb7d8417b49890db57e38fd02a2a9e53d8932`  
		Last Modified: Wed, 12 Aug 2026 17:48:47 GMT  
		Size: 370.0 KB (369967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fad506f55ff759d981e364de1a952d27b4a11e2456108eca183c2e4b93fb37f`  
		Last Modified: Wed, 12 Aug 2026 17:48:46 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff853139fdb5dec0aaff7bd315ffdb7a115565510c5b402c899415132700394d`  
		Last Modified: Wed, 12 Aug 2026 17:48:47 GMT  
		Size: 4.4 MB (4396535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349f68ade6987577ba58950d7a73ab915aaeb6c2d0c5b9457130f9e15576a66a`  
		Last Modified: Wed, 12 Aug 2026 17:48:46 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e266064212d5e7c1cf76f9231d91c97fd456ea03fed5b52d0cc329216b76e797`  
		Last Modified: Wed, 12 Aug 2026 17:48:48 GMT  
		Size: 10.8 MB (10840990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29953ff597efd42386c5d562e15696139de97a8389156e4e814a89bcde0a013`  
		Last Modified: Wed, 12 Aug 2026 17:48:44 GMT  
		Size: 368.8 KB (368839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fea5c1750cafd276aecfbbf9fca8e3fe283601580e14f48eb2e7841c755da8`  
		Last Modified: Wed, 12 Aug 2026 17:48:44 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b8d8a12dae5c34e65fc194b29c175844fba9f8ea76ecd1c98188bd3b71d414`  
		Last Modified: Wed, 12 Aug 2026 17:48:44 GMT  
		Size: 374.2 KB (374219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd637b6e359e0b26265ba28479ccaa8d7bc12a3a6694f684e21eb3a9ad0e2be6`  
		Last Modified: Wed, 12 Aug 2026 17:48:44 GMT  
		Size: 391.7 KB (391741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea6f907d797f84b038c36f687413bd82d3140efe51fbf24f5412a8baf12fee9`  
		Last Modified: Wed, 12 Aug 2026 17:48:44 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haxe:latest` - windows version 10.0.20348.5499; amd64

```console
$ docker pull haxe@sha256:fcbefe401b20934d0e21bad4c20020532f240807a9dc922dd83f9f9ffe2ce3ef
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2213917235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b6d31731bf126f137c063c7a452fd0699dc6c65ac69bb4b7f60e626976df2c1`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:48:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:48:55 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Wed, 12 Aug 2026 17:48:55 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Wed, 12 Aug 2026 17:48:56 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Wed, 12 Aug 2026 17:48:56 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Wed, 12 Aug 2026 17:48:57 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Wed, 12 Aug 2026 17:49:04 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Aug 2026 17:49:23 GMT
RUN $url = 'https://download.microsoft.com/download/0/5/6/056dcda9-d667-4e27-8001-8a0c6971d6b1/vcredist_x86.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'vcredist_x86.exe'; 		Write-Host 'Verifying sha256 (89f4e593ea5541d1c53f983923124f9fd061a1c0c967339109e375c661573c17) ...'; 	if ((Get-FileHash vcredist_x86.exe -Algorithm sha256).Hash -ne '89f4e593ea5541d1c53f983923124f9fd061a1c0c967339109e375c661573c17') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -FilePath "vcredist_x86.exe" -ArgumentList "/Q" -Wait; 		Write-Host 'Removing installer...'; 	Remove-Item .\vcredist_x86.exe; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:49:29 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Wed, 12 Aug 2026 18:24:37 GMT
ENV NEKO_VERSION=2.4.1
# Wed, 12 Aug 2026 18:24:49 GMT
RUN $url = 'https://github.com/HaxeFoundation/neko/releases/download/v2-4-1/neko-2.4.1-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (3902933da42320e8bc04dbee07959ee9ff09a7848e9af48072396400cc3618c9) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne '3902933da42320e8bc04dbee07959ee9ff09a7848e9af48072396400cc3618c9') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 18:24:50 GMT
ENV HAXE_VERSION=4.3.7
# Wed, 12 Aug 2026 18:25:37 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/4.3.7/haxe-4.3.7-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (29f7acb0fb9fc66a2b9f6bd9453af3474ccb14ebd9fd0142f351d7311c4010c9) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne '29f7acb0fb9fc66a2b9f6bd9453af3474ccb14ebd9fd0142f351d7311c4010c9') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 	Write-Host '  haxelib version'; haxelib version; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 18:25:43 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Wed, 12 Aug 2026 18:25:43 GMT
ENV HOMEDRIVE=C:
# Wed, 12 Aug 2026 18:25:49 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Aug 2026 18:25:55 GMT
RUN (New-Object System.Net.WebClient).DownloadString('https://lib.haxe.org/p/hxcpp/4.2.1/download/') >$null
# Wed, 12 Aug 2026 18:25:56 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c04285358a2fe41b2efb2c683bba24de49ba3c64cce2d596094809723b1c076`  
		Last Modified: Wed, 12 Aug 2026 17:50:51 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8623e7194a708a1104ade8c200d768f14c06e7d8b45521c5e457bae524520209`  
		Last Modified: Wed, 12 Aug 2026 17:50:51 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76de07f5c8e784e2dcc2114f7ba5d822f39ee8462722403f6df7e4ab2df6cd0`  
		Last Modified: Wed, 12 Aug 2026 17:50:50 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87356f389aacbf0a3f91dac7f8704a952ef74ce247a353504e71c75f1a8f95d`  
		Last Modified: Wed, 12 Aug 2026 17:50:50 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac74fced8919e1d085e3f043159bc06b4b139c1b16948fb1521f937c094787ab`  
		Last Modified: Wed, 12 Aug 2026 17:50:49 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e179899b608df7e9054050618e41e2089f7dd741fcac7517e863042d4bdf42ca`  
		Last Modified: Wed, 12 Aug 2026 17:50:49 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35cb1b5822ac4bb497b70846997baafa281c554460e458cd122a2411f6e2ed10`  
		Last Modified: Wed, 12 Aug 2026 17:50:49 GMT  
		Size: 340.9 KB (340907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6ee967e59ee7e3f3088918cc5199281e427664f163bab7fbfd7cdc63ac875a`  
		Last Modified: Wed, 12 Aug 2026 17:50:50 GMT  
		Size: 12.9 MB (12909793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b622913d7b6785c04321943fb2b0b52ad7a911d1e626a4594f9ee7194a6f87a`  
		Last Modified: Wed, 12 Aug 2026 17:50:47 GMT  
		Size: 356.7 KB (356720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031a034c0ac7c750a958cd5e754bbf91129295ccf5f439285d8bc384874a6e69`  
		Last Modified: Wed, 12 Aug 2026 18:26:02 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8e23d3eb7cc86ff9e00a6083da24ae95975c1058ab30533079e890a0905b37`  
		Last Modified: Wed, 12 Aug 2026 18:26:03 GMT  
		Size: 4.4 MB (4376436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72934ee0d7e512935ef8bcbe6dfff7f3d9f6b7a6a8026a0e7883718852d55101`  
		Last Modified: Wed, 12 Aug 2026 18:26:02 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6ed17f72ff478eca4884d1df77248ed6b30f4eeb21a999472a3f52f2c6fbec`  
		Last Modified: Wed, 12 Aug 2026 18:26:04 GMT  
		Size: 10.8 MB (10833821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4668c9cc5391985092e307801f6babc304eb600a3f60e9f1b1a4eb8f6e5d6385`  
		Last Modified: Wed, 12 Aug 2026 18:26:00 GMT  
		Size: 352.1 KB (352147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df37f704fa167b04e33aac9f94187562ad6233185cd309a21d663e6abe64bb95`  
		Last Modified: Wed, 12 Aug 2026 18:26:00 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4fc9001599914a9d0ce53681f5530a7b69e40f428046cfe46a51988ebfd9a8`  
		Last Modified: Wed, 12 Aug 2026 18:26:00 GMT  
		Size: 361.8 KB (361813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dfd7e41fa7ae24dcb339eea639ec75f616c0857d35092c774e0ef841b3a9d5`  
		Last Modified: Wed, 12 Aug 2026 18:26:00 GMT  
		Size: 375.1 KB (375136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffbedde2057d1ca6743e80a3a47f0fbfaf7eb86935fb0f87662edd07cd6f091`  
		Last Modified: Wed, 12 Aug 2026 18:26:00 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
