## `haxe:latest`

```console
$ docker pull haxe@sha256:4dfe5819516fe986dc785ca033aeb37b9166b57905144d78eda43e8d882a4dcd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `haxe:latest` - linux; amd64

```console
$ docker pull haxe@sha256:fac0ef57a7de1d264fe467e703e5c114fde030a9337ad483ca07fe3181f00d77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165434590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f74e0cc8e2fc075b52cd442bf3f8d463c86ad6e28ecec351ddf643047e603f`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:34:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:16:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:16:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1 		zlib1g 		libpcre2-8-0 		 		libmariadb3 		libsqlite3-0 		libmbedcrypto16 		libmbedtls21 		libmbedx509-7 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:16:33 GMT
ENV NEKO_VERSION=2.4.1
# Tue, 06 Oct 2026 03:17:55 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre2-dev 		zlib1g-dev 		apache2-dev 		libmariadb-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk-3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "https://github.com/HaxeFoundation/neko/archive/v2-4-1/neko-2.4.1.tar.gz" 	&& echo "702282028190dffa2078b00cca515b8e2ba889186a221df2226d2b6deb3ffaca *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache # buildkit
# Tue, 06 Oct 2026 03:17:55 GMT
ENV HAXE_VERSION=4.3.7
# Tue, 06 Oct 2026 03:17:55 GMT
ENV HAXE_STD_PATH=/usr/local/share/haxe/std
# Tue, 06 Oct 2026 03:21:11 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-findlib 		zlib1g-dev 		libpcre2-dev 		libmbedtls-dev 		opam 		mccs 		m4 		unzip 		pkg-config 		libstring-shellquote-perl 		libipc-system-simple-perl 	' 	&& git clone --recursive --depth 1 --branch 4.3.7 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& mkdir -p $HAXE_STD_PATH 	&& cp -r std/* $HAXE_STD_PATH 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 		&& opam init --compiler=4.14.2 --disable-sandboxing 	&& eval `opam env` 		&& opam pin add luv 0.5.14 --no-action 		&& ( [ -f /usr/src/haxe/opam ] || [ -f /usr/src/haxe/haxe.opam ] && opam install /usr/src/haxe --deps-only --assume-depexts --yes --ignore-constraints-on=luv || make opam_install ) 	&& make all tools 	&& mkdir -p /usr/local/bin 	&& cp haxe haxelib /usr/local/bin 	&& mkdir -p /haxelib 	&& cd / && haxelib setup /haxelib 		&& eval `opam env --revert` 	&& rm -rf ~/.opam 	&& rm -rf /var/lib/apt/lists/* 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache # buildkit
# Tue, 06 Oct 2026 03:21:11 GMT
CMD ["haxe"]
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
	-	`sha256:b22b64b0e4d83b51d3257c06283cb84736e3a811bae08930c720fab04178860d`  
		Last Modified: Tue, 06 Oct 2026 03:21:17 GMT  
		Size: 1.5 MB (1489128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550df70628eef7b082a5697ff942c679191160f57e1843a909dd785d28ec81b9`  
		Last Modified: Tue, 06 Oct 2026 03:21:17 GMT  
		Size: 9.4 MB (9405909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d0a5dd69f7b1663b520e4add9b492ca07a3f623cbaa901cdd423b6f193b9725`  
		Last Modified: Tue, 06 Oct 2026 03:21:17 GMT  
		Size: 11.7 MB (11698916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haxe:latest` - unknown; unknown

```console
$ docker pull haxe@sha256:c31ba4438809ac28d43cf65fe676cf06cb324587c0007dbecec45c203f2dc411
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95efb374c502c37b5bf64ba94b0224bbebbfcee1a6622e6794246bbb20d73250`

```dockerfile
```

-	Layers:
	-	`sha256:6ee669d7a7700a287c029511acaf0e6bb5c47cfc45905fd03b5e1b3fed51fbb1`  
		Last Modified: Tue, 06 Oct 2026 03:21:17 GMT  
		Size: 19.1 KB (19052 bytes)  
		MIME: application/vnd.in-toto+json

### `haxe:latest` - linux; arm variant v7

```console
$ docker pull haxe@sha256:74f611d60919bf71728eec3749928666019fadce0164f1452018afa06cf099ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.8 MB (153824474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b4ddb6d306e9c7c38f1bdc16fe078962f17322758bf311e96f7c8d98083cf0a`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:24:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:40:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 04:14:54 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 04:14:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1 		zlib1g 		libpcre2-8-0 		 		libmariadb3 		libsqlite3-0 		libmbedcrypto16 		libmbedtls21 		libmbedx509-7 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:14:54 GMT
ENV NEKO_VERSION=2.4.1
# Tue, 06 Oct 2026 04:16:24 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre2-dev 		zlib1g-dev 		apache2-dev 		libmariadb-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk-3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "https://github.com/HaxeFoundation/neko/archive/v2-4-1/neko-2.4.1.tar.gz" 	&& echo "702282028190dffa2078b00cca515b8e2ba889186a221df2226d2b6deb3ffaca *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache # buildkit
# Tue, 06 Oct 2026 04:16:24 GMT
ENV HAXE_VERSION=4.3.7
# Tue, 06 Oct 2026 04:16:24 GMT
ENV HAXE_STD_PATH=/usr/local/share/haxe/std
# Tue, 06 Oct 2026 04:21:22 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-findlib 		zlib1g-dev 		libpcre2-dev 		libmbedtls-dev 		opam 		mccs 		m4 		unzip 		pkg-config 		libstring-shellquote-perl 		libipc-system-simple-perl 	' 	&& git clone --recursive --depth 1 --branch 4.3.7 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& mkdir -p $HAXE_STD_PATH 	&& cp -r std/* $HAXE_STD_PATH 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 		&& opam init --compiler=4.14.2 --disable-sandboxing 	&& eval `opam env` 		&& opam pin add luv 0.5.14 --no-action 		&& ( [ -f /usr/src/haxe/opam ] || [ -f /usr/src/haxe/haxe.opam ] && opam install /usr/src/haxe --deps-only --assume-depexts --yes --ignore-constraints-on=luv || make opam_install ) 	&& make all tools 	&& mkdir -p /usr/local/bin 	&& cp haxe haxelib /usr/local/bin 	&& mkdir -p /haxelib 	&& cd / && haxelib setup /haxelib 		&& eval `opam env --revert` 	&& rm -rf ~/.opam 	&& rm -rf /var/lib/apt/lists/* 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache # buildkit
# Tue, 06 Oct 2026 04:21:22 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:b2e7b40559933644a31714a37346ff1796717d607ea763ad445b388befffd0bb`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 45.8 MB (45813264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a18046e6eeb6e12f2b634e0f7041e5c3fe7d2c4ac0f9b15f4eba7d3be40fb25`  
		Last Modified: Tue, 06 Oct 2026 02:25:06 GMT  
		Size: 23.6 MB (23642235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49da2bc1d40e0c89474b55c8511c5a9f0d1fca3b48964954bc979f105fab0963`  
		Last Modified: Tue, 06 Oct 2026 03:41:06 GMT  
		Size: 62.8 MB (62759938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e081595bc4f3fcc6d6b75decc92bcc390f3352c62fede2c27d9a466704cb6e`  
		Last Modified: Tue, 06 Oct 2026 04:21:27 GMT  
		Size: 1.4 MB (1372999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708d71b0d659bb34504f5bc0216ebc57547a8f9737ca6f26f952cafd1025d98b`  
		Last Modified: Tue, 06 Oct 2026 04:21:28 GMT  
		Size: 9.1 MB (9073210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf7081c8aeb9bcaf045f35857dfb6ebcce96108555d71ded96179378693d102a`  
		Last Modified: Tue, 06 Oct 2026 04:21:28 GMT  
		Size: 11.2 MB (11162828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haxe:latest` - unknown; unknown

```console
$ docker pull haxe@sha256:6497db73fded89287c498607663c77d7e9bccafc02fc84b4af665f62512c0a24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 KB (19166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e5b1b3493209da6255e3c752149e88f752fb8b3ba3992aa1be2983ed7148ed2`

```dockerfile
```

-	Layers:
	-	`sha256:017e2cdca803fdb43bb6a2cc215f7546311ec62aa1f5b3733e4e0ab11cf1dcc0`  
		Last Modified: Tue, 06 Oct 2026 04:21:27 GMT  
		Size: 19.2 KB (19166 bytes)  
		MIME: application/vnd.in-toto+json

### `haxe:latest` - linux; arm64 variant v8

```console
$ docker pull haxe@sha256:ffa652dee58004292521ff27c45d517f38447d29761c279f4bda8d58715679cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166682377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0033222bc6a1be3fbf527fbe22e5cff756ac3d5f883039e2392219e58fb205d`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:25:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:16:04 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:16:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1 		zlib1g 		libpcre2-8-0 		 		libmariadb3 		libsqlite3-0 		libmbedcrypto16 		libmbedtls21 		libmbedx509-7 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:16:04 GMT
ENV NEKO_VERSION=2.4.1
# Tue, 06 Oct 2026 03:17:30 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre2-dev 		zlib1g-dev 		apache2-dev 		libmariadb-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk-3-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "https://github.com/HaxeFoundation/neko/archive/v2-4-1/neko-2.4.1.tar.gz" 	&& echo "702282028190dffa2078b00cca515b8e2ba889186a221df2226d2b6deb3ffaca *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache # buildkit
# Tue, 06 Oct 2026 03:17:30 GMT
ENV HAXE_VERSION=4.3.7
# Tue, 06 Oct 2026 03:17:30 GMT
ENV HAXE_STD_PATH=/usr/local/share/haxe/std
# Tue, 06 Oct 2026 03:21:05 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml 		ocaml-findlib 		zlib1g-dev 		libpcre2-dev 		libmbedtls-dev 		opam 		mccs 		m4 		unzip 		pkg-config 		libstring-shellquote-perl 		libipc-system-simple-perl 	' 	&& git clone --recursive --depth 1 --branch 4.3.7 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& mkdir -p $HAXE_STD_PATH 	&& cp -r std/* $HAXE_STD_PATH 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 		&& opam init --compiler=4.14.2 --disable-sandboxing 	&& eval `opam env` 		&& opam pin add luv 0.5.14 --no-action 		&& ( [ -f /usr/src/haxe/opam ] || [ -f /usr/src/haxe/haxe.opam ] && opam install /usr/src/haxe --deps-only --assume-depexts --yes --ignore-constraints-on=luv || make opam_install ) 	&& make all tools 	&& mkdir -p /usr/local/bin 	&& cp haxe haxelib /usr/local/bin 	&& mkdir -p /haxelib 	&& cd / && haxelib setup /haxelib 		&& eval `opam env --revert` 	&& rm -rf ~/.opam 	&& rm -rf /var/lib/apt/lists/* 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache # buildkit
# Tue, 06 Oct 2026 03:21:05 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f385aa2c76a7dd234ab579740a6011f59b0284b9e77b56b88dfad43c2fd58b`  
		Last Modified: Tue, 06 Oct 2026 01:44:53 GMT  
		Size: 25.0 MB (25038980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f73cdbf7c744c3331ef0185e57129804983040b8484e91af064b3bfa14750c`  
		Last Modified: Tue, 06 Oct 2026 02:26:06 GMT  
		Size: 67.6 MB (67622292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff80ccd5c51ce8db85ab20a19f107a3c15aa961fc93381cfa1b5cf43e1295542`  
		Last Modified: Tue, 06 Oct 2026 03:21:11 GMT  
		Size: 1.5 MB (1486112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcfb432c7a6f6f863005f508979aadb474a5d99eb800a3e837d8c67fd7151c92`  
		Last Modified: Tue, 06 Oct 2026 03:21:12 GMT  
		Size: 9.4 MB (9351326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f8158975cb856cb0e1a5d6d55b82b869be29617aa6e80cfcc6fd5951558d7bd`  
		Last Modified: Tue, 06 Oct 2026 03:21:12 GMT  
		Size: 13.4 MB (13422562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haxe:latest` - unknown; unknown

```console
$ docker pull haxe@sha256:4d71591a3b7ca1fe0556d143e8e326dffde815f3576b7584d78b6963d7920291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 KB (19198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff4a15a770d8096ef9c23ea22c67ad711ffbb845a0210b5010078e0fc001739`

```dockerfile
```

-	Layers:
	-	`sha256:33365fa6097761c858b34cd8308e9b6329d827424ca02fde7c6540d977ea2d41`  
		Last Modified: Tue, 06 Oct 2026 03:21:11 GMT  
		Size: 19.2 KB (19198 bytes)  
		MIME: application/vnd.in-toto+json

### `haxe:latest` - windows version 10.0.26100.33438; amd64

```console
$ docker pull haxe@sha256:c0632e3771a2c476d555a89a32c9c7e10c8df80a055793b368e8b6815b640ab3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2487666918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4f378dbc64fe9cd2f4c049b9e6df25c682cd7b8ef1c5f1d18e3bc33c9b979d4`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:45:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Sep 2026 22:45:47 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Wed, 09 Sep 2026 22:45:47 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Wed, 09 Sep 2026 22:45:48 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Wed, 09 Sep 2026 22:45:49 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Wed, 09 Sep 2026 22:45:50 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Wed, 09 Sep 2026 22:45:56 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 09 Sep 2026 22:46:12 GMT
RUN $url = 'https://download.microsoft.com/download/0/5/6/056dcda9-d667-4e27-8001-8a0c6971d6b1/vcredist_x86.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'vcredist_x86.exe'; 		Write-Host 'Verifying sha256 (89f4e593ea5541d1c53f983923124f9fd061a1c0c967339109e375c661573c17) ...'; 	if ((Get-FileHash vcredist_x86.exe -Algorithm sha256).Hash -ne '89f4e593ea5541d1c53f983923124f9fd061a1c0c967339109e375c661573c17') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -FilePath "vcredist_x86.exe" -ArgumentList "/Q" -Wait; 		Write-Host 'Removing installer...'; 	Remove-Item .\vcredist_x86.exe; 		Write-Host 'Complete.';
# Wed, 09 Sep 2026 22:46:17 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Wed, 09 Sep 2026 22:46:18 GMT
ENV NEKO_VERSION=2.4.1
# Wed, 09 Sep 2026 22:46:28 GMT
RUN $url = 'https://github.com/HaxeFoundation/neko/releases/download/v2-4-1/neko-2.4.1-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (3902933da42320e8bc04dbee07959ee9ff09a7848e9af48072396400cc3618c9) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne '3902933da42320e8bc04dbee07959ee9ff09a7848e9af48072396400cc3618c9') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Wed, 09 Sep 2026 22:46:29 GMT
ENV HAXE_VERSION=4.3.7
# Wed, 09 Sep 2026 22:47:13 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/4.3.7/haxe-4.3.7-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (29f7acb0fb9fc66a2b9f6bd9453af3474ccb14ebd9fd0142f351d7311c4010c9) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne '29f7acb0fb9fc66a2b9f6bd9453af3474ccb14ebd9fd0142f351d7311c4010c9') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 	Write-Host '  haxelib version'; haxelib version; 		Write-Host 'Complete.';
# Wed, 09 Sep 2026 22:47:18 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Wed, 09 Sep 2026 22:47:19 GMT
ENV HOMEDRIVE=C:
# Wed, 09 Sep 2026 22:47:25 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 09 Sep 2026 22:47:32 GMT
RUN (New-Object System.Net.WebClient).DownloadString('https://lib.haxe.org/p/hxcpp/4.2.1/download/') >$null
# Wed, 09 Sep 2026 22:47:32 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17bdd601defb4d0d5b515eda044792e61e2c649c0446b227857b0ef0e91fe1f`  
		Last Modified: Wed, 09 Sep 2026 22:47:43 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beeaf03dd799a8c68bfe0e8596dbd0932cbad02e21c2e9df35e42e8e3b9d6977`  
		Last Modified: Wed, 09 Sep 2026 22:47:43 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e391782888c91895c7014e4208c40cae023e021311227048c15a1907aa3918bd`  
		Last Modified: Wed, 09 Sep 2026 22:47:43 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a374261f29d6fa73e1c80704eefa0de0e5548c006faf185b6666b0405681e0e9`  
		Last Modified: Wed, 09 Sep 2026 22:47:42 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789f9474612c9ed04ed59b9287ba48c996526cbf2f051f37ead096290d143ee3`  
		Last Modified: Wed, 09 Sep 2026 22:47:41 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a839c5f7e16169df5eef9fde7b4df02a59e17be08393515d9a4fb6f4420b12be`  
		Last Modified: Wed, 09 Sep 2026 22:47:41 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc91e6aa3ceff89a171f7612ba341a787127511bb492328e31973b19838ce0b`  
		Last Modified: Wed, 09 Sep 2026 22:47:41 GMT  
		Size: 354.6 KB (354635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2e20c0f5a12a06a61a1b3507209f9b5d7d9621f94a2474274d56e3be75387d`  
		Last Modified: Wed, 09 Sep 2026 22:47:41 GMT  
		Size: 12.9 MB (12928658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29dbc851a88c5b8660a315583635b554642e00d44d894eadc1fe1b5c564eace8`  
		Last Modified: Wed, 09 Sep 2026 22:47:39 GMT  
		Size: 369.8 KB (369836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7275921153e26e9c7b5fe863a91c731bb8bb1236784cec2dc1006867e769ff0`  
		Last Modified: Wed, 09 Sep 2026 22:47:39 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1ec3b0339a73a2806d30786aa5c9799e6a13012e23c38de564d7b7b9ee7788`  
		Last Modified: Wed, 09 Sep 2026 22:47:39 GMT  
		Size: 4.4 MB (4396786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dbe56ef7d76ca57de9102b5f00b3a8cc45e4432f74e20459c68c68724fe742e`  
		Last Modified: Wed, 09 Sep 2026 22:47:39 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19c92deee8db76e6f0aa46e6f776a778546d0138d47565a9ba4b0856ab97f9c`  
		Last Modified: Wed, 09 Sep 2026 22:47:44 GMT  
		Size: 10.8 MB (10840812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93ed292dae08adda17813fd74b9baf9530091e119b19448ea7b9d6a85d0f001`  
		Last Modified: Wed, 09 Sep 2026 22:47:37 GMT  
		Size: 368.4 KB (368419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0cda1f53df9d6351e80f6e50f0eb39687a612f123d347b7d2e267cf99759cde`  
		Last Modified: Wed, 09 Sep 2026 22:47:37 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfdb5e9ff41d6fdc2c967e4a7de2b4014e94d70022f5c1727d9625591e911813`  
		Last Modified: Wed, 09 Sep 2026 22:47:37 GMT  
		Size: 373.9 KB (373902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13686f7d2257cb667997ca24952f993f6d53dddc2dac61465387c2f4d1cbbd9`  
		Last Modified: Wed, 09 Sep 2026 22:47:37 GMT  
		Size: 391.4 KB (391362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de3012fcf06f2a22b351e74a22c3032f99d6aa8464f8951d6cd607545833f9e`  
		Last Modified: Wed, 09 Sep 2026 22:47:37 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haxe:latest` - windows version 10.0.20348.5622; amd64

```console
$ docker pull haxe@sha256:e760330468b25b397d689ce0b3eeb012df2984593bc24defb0be0d3729357db0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2249406257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:182401dc5196f49c23d9a28c81c08858409aa017afea3c992059854294c1e186`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:46:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Sep 2026 22:46:58 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Wed, 09 Sep 2026 22:46:59 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Wed, 09 Sep 2026 22:47:00 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Wed, 09 Sep 2026 22:47:01 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Wed, 09 Sep 2026 22:47:02 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Wed, 09 Sep 2026 22:47:08 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 09 Sep 2026 22:47:24 GMT
RUN $url = 'https://download.microsoft.com/download/0/5/6/056dcda9-d667-4e27-8001-8a0c6971d6b1/vcredist_x86.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'vcredist_x86.exe'; 		Write-Host 'Verifying sha256 (89f4e593ea5541d1c53f983923124f9fd061a1c0c967339109e375c661573c17) ...'; 	if ((Get-FileHash vcredist_x86.exe -Algorithm sha256).Hash -ne '89f4e593ea5541d1c53f983923124f9fd061a1c0c967339109e375c661573c17') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -FilePath "vcredist_x86.exe" -ArgumentList "/Q" -Wait; 		Write-Host 'Removing installer...'; 	Remove-Item .\vcredist_x86.exe; 		Write-Host 'Complete.';
# Wed, 09 Sep 2026 22:47:30 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Wed, 09 Sep 2026 22:47:31 GMT
ENV NEKO_VERSION=2.4.1
# Wed, 09 Sep 2026 22:47:42 GMT
RUN $url = 'https://github.com/HaxeFoundation/neko/releases/download/v2-4-1/neko-2.4.1-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (3902933da42320e8bc04dbee07959ee9ff09a7848e9af48072396400cc3618c9) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne '3902933da42320e8bc04dbee07959ee9ff09a7848e9af48072396400cc3618c9') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Wed, 09 Sep 2026 22:47:43 GMT
ENV HAXE_VERSION=4.3.7
# Wed, 09 Sep 2026 22:48:36 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/4.3.7/haxe-4.3.7-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (29f7acb0fb9fc66a2b9f6bd9453af3474ccb14ebd9fd0142f351d7311c4010c9) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne '29f7acb0fb9fc66a2b9f6bd9453af3474ccb14ebd9fd0142f351d7311c4010c9') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 	Write-Host '  haxelib version'; haxelib version; 		Write-Host 'Complete.';
# Wed, 09 Sep 2026 22:48:42 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Wed, 09 Sep 2026 22:48:43 GMT
ENV HOMEDRIVE=C:
# Wed, 09 Sep 2026 22:48:48 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 09 Sep 2026 22:48:55 GMT
RUN (New-Object System.Net.WebClient).DownloadString('https://lib.haxe.org/p/hxcpp/4.2.1/download/') >$null
# Wed, 09 Sep 2026 22:48:56 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd53535539a965dfefccb085ff6f849317dd72815f9376a6b9312cf48ef19b1`  
		Last Modified: Wed, 09 Sep 2026 22:49:07 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6180483ef7387a3736591da2178c98b08f2f89e62e1614020ac3d2590295feb`  
		Last Modified: Wed, 09 Sep 2026 22:49:06 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b332daf13635b6f33dbbb5ffd2e53a4c92aea68bc9c5b69f077f3d6f1fa843de`  
		Last Modified: Wed, 09 Sep 2026 22:49:06 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68897f393839d46c7752f223c5056dfbd7d93c6cc383c168e113b47b411e03bb`  
		Last Modified: Wed, 09 Sep 2026 22:49:06 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fcbd2eeeef6869fa56af556ddc2cc62cdc152698e73aeb13651776ac49b09ef`  
		Last Modified: Wed, 09 Sep 2026 22:49:05 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cbf61a8dab179d82aab73eb115f9e75e1da9f61de8c69bfc419e8d07e46995`  
		Last Modified: Wed, 09 Sep 2026 22:49:04 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59277ee0f0a11c3874b183b8f57ff80638b41d4d674596cdce824655cf547e63`  
		Last Modified: Wed, 09 Sep 2026 22:49:04 GMT  
		Size: 341.3 KB (341319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9341b95df642787f8e6279f0b8119dd385cef0102cf8ecc09a838ecbd7d64d`  
		Last Modified: Wed, 09 Sep 2026 22:49:06 GMT  
		Size: 12.9 MB (12909553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1613c61c8924119babcecd0541c4765d46dd19967b2c0a96390fe3019357e0c4`  
		Last Modified: Wed, 09 Sep 2026 22:49:03 GMT  
		Size: 356.3 KB (356303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b658e28e48dedb5384a7cc1f59cd94cedbb04ade95e0afb8a9292794cc77386`  
		Last Modified: Wed, 09 Sep 2026 22:49:02 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff48c929e51417c408fecb3d1c92a48828f7053d4ee3d53dcef63b052d599e62`  
		Last Modified: Wed, 09 Sep 2026 22:49:03 GMT  
		Size: 4.4 MB (4376183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea2c6b15d95644751c2495eb23ed41beb9d6450f88cd82fcc3b5de8aa5ea229b`  
		Last Modified: Wed, 09 Sep 2026 22:49:02 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a717de1b223e464958d8b3ae95c0c614e157c746037ce9c3edf666dfbbb5cb2`  
		Last Modified: Wed, 09 Sep 2026 22:49:07 GMT  
		Size: 10.8 MB (10833879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bddfcb279e580be83132c34b529b04faf2c55a55c007666ee9f45081aa78103`  
		Last Modified: Wed, 09 Sep 2026 22:49:01 GMT  
		Size: 351.9 KB (351922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e953abaefe38c1bad8fe42f1a5fec53837b710f630c9c54882e186f0b9d141`  
		Last Modified: Wed, 09 Sep 2026 22:49:00 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2242a017d84d96c89db509d4af6d6234e90b5bb19be4f39fdd6c62ff041920ac`  
		Last Modified: Wed, 09 Sep 2026 22:49:01 GMT  
		Size: 360.9 KB (360851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708afaf0450ba370a534ac902908eb0e3254d965ea47746a31caba077b60c6e5`  
		Last Modified: Wed, 09 Sep 2026 22:49:01 GMT  
		Size: 374.4 KB (374358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821fcfb5ba43d81ead2afae8cf8a8c6290e375013cb8fa054de9f53446efb570`  
		Last Modified: Wed, 09 Sep 2026 22:49:01 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
