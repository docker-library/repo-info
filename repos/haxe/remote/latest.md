## `haxe:latest`

```console
$ docker pull haxe@sha256:c8dea95d4bdf31cdc5e9be01579e32bd37bc6ac771e971342179a7c526c382b7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

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

### `haxe:latest` - windows version 10.0.26100.33650; amd64

```console
$ docker pull haxe@sha256:833dec691ee7b42f71ce81ed5b77798e0857269610ac3882df7747efc26ed7bd
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2421971063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf3e42fa763ba53f73015195c074eccf7296bec06763fd5139cad7412e3e11b`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:10:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 13 Oct 2026 23:10:39 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Tue, 13 Oct 2026 23:10:40 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Tue, 13 Oct 2026 23:10:41 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Tue, 13 Oct 2026 23:10:42 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Tue, 13 Oct 2026 23:10:42 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Tue, 13 Oct 2026 23:10:49 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 13 Oct 2026 23:11:03 GMT
RUN $url = 'https://download.microsoft.com/download/0/5/6/056dcda9-d667-4e27-8001-8a0c6971d6b1/vcredist_x86.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'vcredist_x86.exe'; 		Write-Host 'Verifying sha256 (89f4e593ea5541d1c53f983923124f9fd061a1c0c967339109e375c661573c17) ...'; 	if ((Get-FileHash vcredist_x86.exe -Algorithm sha256).Hash -ne '89f4e593ea5541d1c53f983923124f9fd061a1c0c967339109e375c661573c17') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -FilePath "vcredist_x86.exe" -ArgumentList "/Q" -Wait; 		Write-Host 'Removing installer...'; 	Remove-Item .\vcredist_x86.exe; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:11:08 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Tue, 13 Oct 2026 23:11:09 GMT
ENV NEKO_VERSION=2.4.1
# Tue, 13 Oct 2026 23:11:19 GMT
RUN $url = 'https://github.com/HaxeFoundation/neko/releases/download/v2-4-1/neko-2.4.1-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (3902933da42320e8bc04dbee07959ee9ff09a7848e9af48072396400cc3618c9) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne '3902933da42320e8bc04dbee07959ee9ff09a7848e9af48072396400cc3618c9') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:11:19 GMT
ENV HAXE_VERSION=4.3.7
# Tue, 13 Oct 2026 23:12:02 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/4.3.7/haxe-4.3.7-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (29f7acb0fb9fc66a2b9f6bd9453af3474ccb14ebd9fd0142f351d7311c4010c9) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne '29f7acb0fb9fc66a2b9f6bd9453af3474ccb14ebd9fd0142f351d7311c4010c9') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 	Write-Host '  haxelib version'; haxelib version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:12:08 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Tue, 13 Oct 2026 23:12:08 GMT
ENV HOMEDRIVE=C:
# Tue, 13 Oct 2026 23:12:14 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 13 Oct 2026 23:12:21 GMT
RUN (New-Object System.Net.WebClient).DownloadString('https://lib.haxe.org/p/hxcpp/4.2.1/download/') >$null
# Tue, 13 Oct 2026 23:12:21 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821e03ee92a324cfa7af768364035960260e087ab0a194d1f773a7cd6ded73d7`  
		Last Modified: Tue, 13 Oct 2026 23:12:33 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe4848bb148b5d7db8f7da8924b19573642bc96e4453a9014c260bda51b5cdb`  
		Last Modified: Tue, 13 Oct 2026 23:12:32 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5c091294b654eec28b7a15641cc8d2463665ea05c37d1e04aa8dd7df3f142d`  
		Last Modified: Tue, 13 Oct 2026 23:12:31 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0d22bd86bcb5dbd37e19dd92d7da9e37eb30ba51f64bc9341cd80b78beca11`  
		Last Modified: Tue, 13 Oct 2026 23:12:31 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b53a96796c1343a391185ed8aa973f6dcb31a43d74815915dc2bb1045ecb83a1`  
		Last Modified: Tue, 13 Oct 2026 23:12:30 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb210932aeff0d7a0b0e6cb66bcae2925484afe9bdf2135fbcca449c73abf2f`  
		Last Modified: Tue, 13 Oct 2026 23:12:30 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f4952d707a72c17f29f0fd481dc6372ec19c89426651e1a5c518fca1d14f92`  
		Last Modified: Tue, 13 Oct 2026 23:12:29 GMT  
		Size: 346.4 KB (346408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0025e3b7298976c0cd9ae62dfab989bf22685e71a6deb2eb220557b69eec2f04`  
		Last Modified: Tue, 13 Oct 2026 23:12:31 GMT  
		Size: 12.9 MB (12922350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeef02b6d563fd7919930f04529c4f624ced03ed30e1a078e410488d48287ffd`  
		Last Modified: Tue, 13 Oct 2026 23:12:28 GMT  
		Size: 362.0 KB (361963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d33d25034729529a2e13c1d1fe409d6b7a787d7ce43fca976ab9d297166310c`  
		Last Modified: Tue, 13 Oct 2026 23:12:28 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818e6e30a50c8109f24f74f42e488331483e7b80bf3ecd6cc19202c1d42d17fd`  
		Last Modified: Tue, 13 Oct 2026 23:12:29 GMT  
		Size: 4.4 MB (4388534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe38db3e566884814534adbbfa060461c849af28560dff570548ac73c58c81a`  
		Last Modified: Tue, 13 Oct 2026 23:12:27 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a47d9a02c18748d0726bde0a75eef7f0e5385bb2d5730d8a1f56cec3a0ef06`  
		Last Modified: Tue, 13 Oct 2026 23:12:35 GMT  
		Size: 10.8 MB (10834161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9869b26e090a8d4ee5ad3c83589a849cc4723d267f2b9a8e23fe7d122580fe66`  
		Last Modified: Tue, 13 Oct 2026 23:12:26 GMT  
		Size: 359.5 KB (359508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81cd0311a3e302559cdcf65ae7b300c85b8540face8c31094032a1d0da89fbd`  
		Last Modified: Tue, 13 Oct 2026 23:12:26 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b64371ee4cf872c9319813208447fa1af534a2dcaf3dc95a89c8d8e1b6789a`  
		Last Modified: Tue, 13 Oct 2026 23:12:26 GMT  
		Size: 366.9 KB (366902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d1e10961a2523000035e34848247996a220b15d6a60e48d51320f0b0ca3934`  
		Last Modified: Tue, 13 Oct 2026 23:12:26 GMT  
		Size: 384.0 KB (384041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12aaa6ee109ea431410fc9e4e5e010a39431cac809e752cc3d1b2072ca262001`  
		Last Modified: Tue, 13 Oct 2026 23:12:26 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haxe:latest` - windows version 10.0.20348.5761; amd64

```console
$ docker pull haxe@sha256:7c6117ca2ff6aa154779c553c933d4f47ae6daa1e8ea9944193457cd2ac00926
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2256186392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f39edf91850e967cc8b15c48b00a058c4652e2160f20fb401f24984b2a55ee`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:04:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 13 Oct 2026 23:12:47 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Tue, 13 Oct 2026 23:12:48 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Tue, 13 Oct 2026 23:12:48 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Tue, 13 Oct 2026 23:12:49 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Tue, 13 Oct 2026 23:12:49 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Tue, 13 Oct 2026 23:12:54 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 13 Oct 2026 23:13:10 GMT
RUN $url = 'https://download.microsoft.com/download/0/5/6/056dcda9-d667-4e27-8001-8a0c6971d6b1/vcredist_x86.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'vcredist_x86.exe'; 		Write-Host 'Verifying sha256 (89f4e593ea5541d1c53f983923124f9fd061a1c0c967339109e375c661573c17) ...'; 	if ((Get-FileHash vcredist_x86.exe -Algorithm sha256).Hash -ne '89f4e593ea5541d1c53f983923124f9fd061a1c0c967339109e375c661573c17') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -FilePath "vcredist_x86.exe" -ArgumentList "/Q" -Wait; 		Write-Host 'Removing installer...'; 	Remove-Item .\vcredist_x86.exe; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:13:15 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Tue, 13 Oct 2026 23:13:16 GMT
ENV NEKO_VERSION=2.4.1
# Tue, 13 Oct 2026 23:13:27 GMT
RUN $url = 'https://github.com/HaxeFoundation/neko/releases/download/v2-4-1/neko-2.4.1-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (3902933da42320e8bc04dbee07959ee9ff09a7848e9af48072396400cc3618c9) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne '3902933da42320e8bc04dbee07959ee9ff09a7848e9af48072396400cc3618c9') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:13:27 GMT
ENV HAXE_VERSION=4.3.7
# Tue, 13 Oct 2026 23:14:15 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/4.3.7/haxe-4.3.7-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (29f7acb0fb9fc66a2b9f6bd9453af3474ccb14ebd9fd0142f351d7311c4010c9) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne '29f7acb0fb9fc66a2b9f6bd9453af3474ccb14ebd9fd0142f351d7311c4010c9') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 	Write-Host '  haxelib version'; haxelib version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:14:20 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Tue, 13 Oct 2026 23:14:21 GMT
ENV HOMEDRIVE=C:
# Tue, 13 Oct 2026 23:14:26 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 13 Oct 2026 23:14:33 GMT
RUN (New-Object System.Net.WebClient).DownloadString('https://lib.haxe.org/p/hxcpp/4.2.1/download/') >$null
# Tue, 13 Oct 2026 23:14:33 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1783688bc33ffd3c25d437b3b135d6a2c4584d562791202de8fbf44fd472c02f`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17df931d34e85ad92a79b4dd522024fc3dab605490d370b56ee69e9473f297db`  
		Last Modified: Tue, 13 Oct 2026 23:14:44 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d672a13dba7374db10efe5b6f646530b3e75e781aaa059d61dc7faa28bd4d721`  
		Last Modified: Tue, 13 Oct 2026 23:14:43 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e24033c5af1a4e5039ea0725c83bdcc504aad237dfdd33bbed58496fb3f5930`  
		Last Modified: Tue, 13 Oct 2026 23:14:43 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36386ab634e344d04b07cad78a4f354bec46fa5a1f42cac4d2866c34f6de9f6e`  
		Last Modified: Tue, 13 Oct 2026 23:14:42 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e0d01fb47dfb10b3301f57e6a3b89020bd6f1918df198a3d8a3dbda610ead1`  
		Last Modified: Tue, 13 Oct 2026 23:14:41 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a746b509caf89f6f5baf36c1efde4810e8e67645f218b435edbfd88bb4bae5a3`  
		Last Modified: Tue, 13 Oct 2026 23:14:41 GMT  
		Size: 338.1 KB (338052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dbf1535e347b5f797118eefca7cf69e1b9cb41bf9c0f584939d9e2e4fe10b30`  
		Last Modified: Tue, 13 Oct 2026 23:14:42 GMT  
		Size: 12.9 MB (12908505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e79258a0e6bcd6a0d2725cdc1130a9d4efcd894b7123230f07d58f4878c6fca`  
		Last Modified: Tue, 13 Oct 2026 23:14:40 GMT  
		Size: 356.4 KB (356376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967a102c21a6f2706db45a18a623faf42053d96495983e574a799b748934da81`  
		Last Modified: Tue, 13 Oct 2026 23:14:40 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8cdac00241154c47c060509f15dbe97881db8b9229d5db9aac3872b934e336`  
		Last Modified: Tue, 13 Oct 2026 23:14:40 GMT  
		Size: 4.4 MB (4375556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bca59d8deb0be68443895ec18aa34d2ed089954bd7c0607ce7f9fba67068161`  
		Last Modified: Tue, 13 Oct 2026 23:14:39 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4571ba8f1ebbd8b88f89f14dab470d2fa454399516b7f93c6054754b8224de11`  
		Last Modified: Tue, 13 Oct 2026 23:14:45 GMT  
		Size: 10.8 MB (10823356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0494362ecd5e2ea3c91044b77c7deaaa1e3c2fdb98194a4cb619933b2eb9772`  
		Last Modified: Tue, 13 Oct 2026 23:14:38 GMT  
		Size: 351.5 KB (351533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089aae537b6411275593e127c5a47dabe9f7693e63abf6c8aa97456f71103f45`  
		Last Modified: Tue, 13 Oct 2026 23:14:38 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4cf7766612dbe940c9b9011b14af9a6d4ff67b8b2527915aa35a93116db0da`  
		Last Modified: Tue, 13 Oct 2026 23:14:38 GMT  
		Size: 360.5 KB (360525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc587338e8a79e2e86c3f441cef59077150c2091527ab399e6a2d6944f6f0bd`  
		Last Modified: Tue, 13 Oct 2026 23:14:38 GMT  
		Size: 373.9 KB (373929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665f62de1cfc67365ae11a866796c3e05499814fd89ee0fa0b9eef72739196c5`  
		Last Modified: Tue, 13 Oct 2026 23:14:38 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
