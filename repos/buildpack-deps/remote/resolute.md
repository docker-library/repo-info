## `buildpack-deps:resolute`

```console
$ docker pull buildpack-deps@sha256:7625093213983e36f1b20edc7b5c1b27ab1f8f5d29844b7d77a64d76cbd53efd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:resolute` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:f1006d46a6b1aa17a8728fc792b470125572e8e8f9189b3e9da0fe2c748f6d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280677267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f9a4eb2453c2a05ffba57c140c78f016372963e9bffc7d11b919bcc90cdc77`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.8927.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.8927.tar
# Thu, 02 Jul 2026 02:12:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 05:18:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 06:20:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a9be9fd915e97ef977c92b5f9abe226548f0d6a4a013daef6d238708ccde9b61`  
		Last Modified: Sat, 27 Jun 2026 11:14:32 GMT  
		Size: 41.6 MB (41562253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1ce1d0a589804cc5314c1325593106b364e9d700502a06de710671c7697220`  
		Last Modified: Sat, 27 Jun 2026 11:14:36 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:275524c5a1e3e54114f2712b2c03105e38d654ed035e68c0fdec7c97c73fdb89`  
		Last Modified: Thu, 02 Jul 2026 02:12:56 GMT  
		Size: 19.5 MB (19482992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575fca83991bf9496cdb7873b08a0e0af9ce6ad5e28cbeca141f7aca46b9ca4d`  
		Last Modified: Thu, 02 Jul 2026 05:18:29 GMT  
		Size: 49.3 MB (49346284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baed6425a1d2131ac4929e8acf5289753630ac6f69dbe87c198966d249e17410`  
		Last Modified: Thu, 02 Jul 2026 06:21:36 GMT  
		Size: 170.3 MB (170285345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:resolute` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:715962279fcc60d7ae55b47cb627426b418b281d1fb1493abd19270294eba7b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13215889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3b0766b3e2b6af8395e44e66a0bc03df20413850349cbdd3e9ebb13391b5550`

```dockerfile
```

-	Layers:
	-	`sha256:4d5b5bcc6e46fc6325757aa625ab5f3ebebb7562b75f72d24b066ed1e532bdd7`  
		Last Modified: Thu, 02 Jul 2026 06:21:32 GMT  
		Size: 13.2 MB (13205421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccc3f54f57d91e2cf909a2b2a4ca91688ae88f70b2135eb2673062ae1c1d9826`  
		Last Modified: Thu, 02 Jul 2026 06:21:31 GMT  
		Size: 10.5 KB (10468 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:resolute` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:0f20fd19cb567f8bd252518b5cb69cee018ac7c5824f9a756b461990eac921c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (235008722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e011dacbebf283def95befe03f5051e72edfcb8937f094e7a5b0456c034f829c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:33 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.9093.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:34.497647+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:34.497647+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.9093.tar
# Thu, 02 Jul 2026 02:11:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 05:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 06:18:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9af107dfbc6bb56b3be0516eaaee7da72df4711bbf62dc9facc6d46d52451e25`  
		Last Modified: Sat, 27 Jun 2026 11:15:04 GMT  
		Size: 38.7 MB (38705623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20fb499c3af70d1b780623a8b68fe372295b0d2e12bbfc55d4897ff4816063d`  
		Last Modified: Sat, 27 Jun 2026 11:15:07 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7ebae767c1b2f0125226ad19750c238a564bfaf0d29fed45d9b44f6afa8d89b`  
		Last Modified: Thu, 02 Jul 2026 02:11:57 GMT  
		Size: 17.8 MB (17775754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfeccf757e1b17611588da26ef92ee84cf7f0612a4e75741add20ad894a521d1`  
		Last Modified: Thu, 02 Jul 2026 05:18:37 GMT  
		Size: 52.2 MB (52157242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d920658388f727a643cc30302b3ce475d55a9ef0640fe8468ffeab30efbd0251`  
		Last Modified: Thu, 02 Jul 2026 06:19:29 GMT  
		Size: 126.4 MB (126369714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:resolute` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:90c4cf84d5fbb218ea3a15dde8358002acbb33d3084efb80576ecc0887293a5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12956836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85f31e138f5ac2ab67677a2225126800ab5a4bbfbba0a8c14a48265a03f0cc3e`

```dockerfile
```

-	Layers:
	-	`sha256:b383df9784d20ee848e43387117aabf61f8774c235da7c9aacfc5ee35f926b36`  
		Last Modified: Thu, 02 Jul 2026 06:19:26 GMT  
		Size: 12.9 MB (12946304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f93849ef96d8388f108eda1adc6b0d5dc82bbf3a6a69384edcde0eb80d459dcf`  
		Last Modified: Thu, 02 Jul 2026 06:19:25 GMT  
		Size: 10.5 KB (10532 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:resolute` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:e4c23c4c84924ff4536eba7104c24ae5176dbe0e21215873655c2205d146834a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.3 MB (269270348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea218de3dff1127c096f133472122c8c909f70bfd4ff4c30216bf0aa129a3293`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.9127.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:53.170736+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:53.170736+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.9127.tar
# Thu, 02 Jul 2026 02:11:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 05:17:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 06:20:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b2b4144bf8691339f4f1011754b5ed314a4cb9c03e57af4c022301022f36b79a`  
		Last Modified: Sat, 27 Jun 2026 11:14:43 GMT  
		Size: 40.7 MB (40711760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade0b5cbf7f1ac2f5ced1ed952e889f07199006cfbb44f6e2c7b85df005259ca`  
		Last Modified: Sat, 27 Jun 2026 11:14:46 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ddf19701c273bed485f39bd69e3c3af57cd9f486e4dd43a8b3bb1c289abbf8`  
		Last Modified: Thu, 02 Jul 2026 02:12:09 GMT  
		Size: 19.0 MB (19030744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:861cf9a5133a377df9919b961671f5bc1a2db62683bb97078dfacc6fbdba9bd7`  
		Last Modified: Thu, 02 Jul 2026 05:18:04 GMT  
		Size: 49.0 MB (48954408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3128de429b30018c5ce3e9fab464e8f706c24369e73a9dc44beb0fbb38c96793`  
		Last Modified: Thu, 02 Jul 2026 06:20:47 GMT  
		Size: 160.6 MB (160573044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:resolute` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a1130b999f3dbaddf258057bf7a4399ce4eded63acaf822b9be0daad8206a2f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13270136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6814966641a17146a53b3f0efe4b9b19a597a50f89b9c34e9ed381176ffe681`

```dockerfile
```

-	Layers:
	-	`sha256:896980f3f19d086d0e5304e75ff30d384505a4158337b100a1b056b74cf31064`  
		Last Modified: Thu, 02 Jul 2026 06:20:44 GMT  
		Size: 13.3 MB (13259588 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82618db691e85422c5b9cd54b24543736ad30f8e9e2711c72da9830d00d568f3`  
		Last Modified: Thu, 02 Jul 2026 06:20:44 GMT  
		Size: 10.5 KB (10548 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:resolute` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:a2647b9bddef134da3cab79bdf1f5951e9691c8553689b55c8d2ae3508a76b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.5 MB (291483176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6207dd0b2b0712f5a658d9007159a2c4ccf42ee29106f7ba654f036b85151862`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:26 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.8987.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:26 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:26 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:26 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:27 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:26.997781+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:27 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:26.997781+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.8987.tar
# Thu, 02 Jul 2026 02:11:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 05:17:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 08:15:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:d64dd5d18b74c82a784c25257be2d6c73e40acee71cf48b70af4f97c3c1bc645`  
		Last Modified: Sat, 27 Jun 2026 11:14:54 GMT  
		Size: 46.6 MB (46591605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8733c8815773041f128f40bd66df0f61e8653f9e7104f3158eeb1032069ffda`  
		Last Modified: Sat, 27 Jun 2026 11:14:56 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cc666881a5077fe0b32fc05100476b0529b2194b42fdf8ccf07bea1f78bc961`  
		Last Modified: Thu, 02 Jul 2026 02:12:17 GMT  
		Size: 22.0 MB (21963009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3799af84affe99c4e7b3be1e2fd1885755be5be122b309ee741a72985f347e`  
		Last Modified: Thu, 02 Jul 2026 05:18:39 GMT  
		Size: 55.4 MB (55396935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d888e94e334c50f8345a0f5e0f9b95935c7315de8dfd7524f315a38872c3fb9`  
		Last Modified: Thu, 02 Jul 2026 08:16:49 GMT  
		Size: 167.5 MB (167531234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:resolute` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:5491f25fbc11d52a5347bf15ca2f90daa5a88079d6cef12df8d5b6464d904224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13188491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9ffc40677d7298c9d845251814cb4cd44d2ae23d0477625f4bd8a71f55e39eb`

```dockerfile
```

-	Layers:
	-	`sha256:bb51481dc626b6f099853838a5a09a9529a53374a945b9246c055d81ecb05b61`  
		Last Modified: Thu, 02 Jul 2026 08:16:45 GMT  
		Size: 13.2 MB (13177991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56df114cb3951d41077fc6886648866017798b0e1e0435ea194af4d07b97bf06`  
		Last Modified: Thu, 02 Jul 2026 08:16:44 GMT  
		Size: 10.5 KB (10500 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:resolute` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:bf141820bdf2bbb4b6ebbdc3e99d54d0bf0863b4c8b83a560915209adbdbcea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256604700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd45ecc3626c010009bfab6467625dce555a186ae3f30c259013bd7127ed747`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:18:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.9007.tar --tag 26.04
# Sat, 27 Jun 2026 04:18:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:18:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:18:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:18:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:18:32.566053+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:18:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:18:32.566053+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:18:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.9007.tar
# Thu, 02 Jul 2026 02:10:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 05:16:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 06:17:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e8dd6f44cfb110d0553eb1e852db0df004443dd0af10a8b5a103696c1b0e2042`  
		Last Modified: Sat, 27 Jun 2026 11:15:25 GMT  
		Size: 41.0 MB (40960033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ef8a2a65bc8e54418c208b1a7653f8530e6ed10b2ffb78ddd9b6009ab5b576`  
		Last Modified: Sat, 27 Jun 2026 11:15:28 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e466da5046c3dc62ff884b0d3aff0088ad8bc2cc22abdfc28bfd45d1703ede9a`  
		Last Modified: Thu, 02 Jul 2026 02:10:33 GMT  
		Size: 20.0 MB (19967148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda7f913ae0eeb7becb510bc3f4d636eb0972e5560bb693fe81c0c65866f7690`  
		Last Modified: Thu, 02 Jul 2026 05:17:10 GMT  
		Size: 50.5 MB (50515446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:421cf140d5458bc10f961ce496f3ac3d081bc05ef491add6a0ef9f2dbdcb7a9c`  
		Last Modified: Thu, 02 Jul 2026 06:18:13 GMT  
		Size: 145.2 MB (145161686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:resolute` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:24c914acdeccab9aea813597c90626c5813f1496d4d1d5d896654e686b303d07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13000239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d93b5f41866f10bc7a88af57df25cc3a7b2acdb4b8234fe02b078d8b29dd5ba3`

```dockerfile
```

-	Layers:
	-	`sha256:b67980ccc2eda4a6d8b5b6c741307e7036cf2346410f1eb5d52fb83108170ddc`  
		Last Modified: Thu, 02 Jul 2026 06:18:10 GMT  
		Size: 13.0 MB (12989771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df3c594bf1d18edc5b2aab9adeb3ce32d79561c620f7797c779aef59d33ff6b4`  
		Last Modified: Thu, 02 Jul 2026 06:18:10 GMT  
		Size: 10.5 KB (10468 bytes)  
		MIME: application/vnd.in-toto+json
