## `buildpack-deps:bullseye`

```console
$ docker pull buildpack-deps@sha256:30d62be8c0d1960899261429cd3960bccffbd075f324adae967c79f410bde24f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `buildpack-deps:bullseye` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:861d612f2bccf851b081e8c4db098d305c804c909230258a78feb41b9f0e7eb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.7 MB (321721085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed366a801c77497cca4d5adab7b47e5a84f03e576c8d29f44b6eb6b3b0b95c3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:50:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:18:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5909957719ab662a311099b46df8f146fbe5be5ec749fa12615589aaf221b5b8`  
		Last Modified: Tue, 25 Aug 2026 00:50:43 GMT  
		Size: 15.8 MB (15805167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f735ad8e196ddab59dc182a0d1821e340e843e689d0287b68a2a2c51eba6a98`  
		Last Modified: Tue, 25 Aug 2026 01:38:27 GMT  
		Size: 54.7 MB (54743271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f310c6a2419cfd070257b21061b096e505b28e074fc07883728a7ac0e55d7f`  
		Last Modified: Tue, 25 Aug 2026 02:19:30 GMT  
		Size: 197.4 MB (197395255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1936ceea9c260dfbf4c48d924033d3af21fdd685f6caa59e6951ca9da922f2dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15486983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:435cad2f6a5414ebc0af1437ff25624c61296e0644f6dc0b3aa633a86482d5da`

```dockerfile
```

-	Layers:
	-	`sha256:2eaf81efbd9cd95ca5df24cf219968de3a425ae54c0895c964bf0f2963c5fda8`  
		Last Modified: Tue, 25 Aug 2026 02:19:26 GMT  
		Size: 15.5 MB (15476788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ae913fb132ca5348397204d86e9290eecfc536a10de54ad476f3bf9a5f443d7`  
		Last Modified: Tue, 25 Aug 2026 02:19:26 GMT  
		Size: 10.2 KB (10195 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bullseye` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:9bc8ea3e0bbce4dc55038faeb01cab7598cd7d46624ad06c37aaaa9f46f9d0fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282487474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47d5bf205e974b326e6f36fa8636a2fea27801b9bca588f7a37a79f70b59686e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:32:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:36:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:13:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f6631be4d16afcfb3d74014e88338a92e7c1065338576d3e2dc9e061a4f3bbd8`  
		Last Modified: Mon, 24 Aug 2026 23:20:38 GMT  
		Size: 49.1 MB (49067696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85cae38623c0f9775252c0e52955b53b4a7fa5906ecb81bf9eccd32f57af5a46`  
		Last Modified: Tue, 25 Aug 2026 01:32:56 GMT  
		Size: 14.9 MB (14913721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618fd6f46995e477521337b77d8c13199469f427c6209974c35c194c4dabdad1`  
		Last Modified: Tue, 25 Aug 2026 02:36:31 GMT  
		Size: 50.7 MB (50663425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7358101329905e6e1a177fee622b5e2a0ed1514546f68c7fcf1c45b3d9be2c2f`  
		Last Modified: Tue, 25 Aug 2026 03:14:29 GMT  
		Size: 167.8 MB (167842632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:aea173e5b7ce769b4ea4965befe3a6feaf1627474e57e229c2b079e5ba746907
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15286365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450de2c68d68783f1ab81cfed6cd047639fd8740588ab58d64fd82c266b551c7`

```dockerfile
```

-	Layers:
	-	`sha256:dd5aa9bbb82da78aa129389d016521df3e13d4e007da554c95cba2c8feba2910`  
		Last Modified: Tue, 25 Aug 2026 03:14:25 GMT  
		Size: 15.3 MB (15276106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a01f79108d3c8603af29ae5931856a41fd296e35c9baff97c40a136d362fee1`  
		Last Modified: Tue, 25 Aug 2026 03:14:25 GMT  
		Size: 10.3 KB (10259 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bullseye` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:3ab6b6a9addd2fd03e577c440ef6875692253fe387aa6484f58f169c5377c711
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.2 MB (313237617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0adeb198203190b5672dbc3915ab626c787faa1ca10182d55e49a9fbd9df53a2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:52:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:18:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ebf8e47572aa15d512f1dc9c2f5be1d99ab6c1c7747e4670e36bd9518a42b0`  
		Last Modified: Tue, 25 Aug 2026 00:52:51 GMT  
		Size: 15.8 MB (15789863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a95e7eedddd8f8d0f051099560d562e62c6a499ed176b8b62a0895f7c3a397c`  
		Last Modified: Tue, 25 Aug 2026 01:43:19 GMT  
		Size: 54.9 MB (54880321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ea703385b55ce6a9ca8f59c9c1d6627f53989d61e13bf9d8941d75ed3f612b`  
		Last Modified: Tue, 25 Aug 2026 02:18:39 GMT  
		Size: 190.3 MB (190306090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ea0aab5c489076fe0b7c2122c54b3906a87cb864d6f513b641f90f3569c1a017
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15489007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7478b1bfcc39544a2cbedf5a3a346705becf759d47c8d17da7052507cb9daded`

```dockerfile
```

-	Layers:
	-	`sha256:2115b62085925654bf65393181c522f1cc264007a8d3b8c9c649beb76a94090b`  
		Last Modified: Tue, 25 Aug 2026 02:18:35 GMT  
		Size: 15.5 MB (15478733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ba6b267a67275d120b3a97c1039e8a0fa4ed7c6c722dc382c1489a11a65a4d2`  
		Last Modified: Tue, 25 Aug 2026 02:18:34 GMT  
		Size: 10.3 KB (10274 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bullseye` - linux; 386

```console
$ docker pull buildpack-deps@sha256:1efc7d824a55fcd139208200d03aa9762d2222dfcdfb871df575fe9fdb12ea8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.4 MB (327356285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd1400c52390440bcb015f0d920eb7600d33a8a6096ad15a81561afce733df14`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:50:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:42:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:17:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f64e33df6f56ecdb94ffda8ff8b3392edefc222230e3c0514b62a3448a7e7e0c`  
		Last Modified: Mon, 24 Aug 2026 23:20:35 GMT  
		Size: 54.7 MB (54716169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcda78a9270c75800a19723999e4b6e90e7f8bb3d12a0b61bb9eb4b9d2c5a0c0`  
		Last Modified: Tue, 25 Aug 2026 00:50:57 GMT  
		Size: 16.3 MB (16310635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621309314e0c8fd3763b34ad20f9cdf0c5c511120b5b490360cd397268fd18a2`  
		Last Modified: Tue, 25 Aug 2026 01:42:25 GMT  
		Size: 56.1 MB (56051465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:947893689e69178d7eff18ffa13bde346cfd13d68292993d9f3da6fc5b7f1a20`  
		Last Modified: Tue, 25 Aug 2026 02:18:05 GMT  
		Size: 200.3 MB (200278016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:db208ba72baf8f3d7be621fa91f5397367b3bbf64236cd86d595c2f64c4ca384
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15474976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1044b6caad90ac0b720309d3486ab2267031e1e8f942115d0d9f1e48265e30e`

```dockerfile
```

-	Layers:
	-	`sha256:5a56a87814c4064e1afb0869d7ac31a2fd70e79f4f334105fee6c02be76136e2`  
		Last Modified: Tue, 25 Aug 2026 02:18:01 GMT  
		Size: 15.5 MB (15464803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e48598785c5f920260cf0abf4653754b241adc1ade8c2639ab708fe14ff416e`  
		Last Modified: Tue, 25 Aug 2026 02:18:00 GMT  
		Size: 10.2 KB (10173 bytes)  
		MIME: application/vnd.in-toto+json
