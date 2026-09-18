## `spiped:alpine`

```console
$ docker pull spiped@sha256:33659c27c5ccdbab57273f7e5b27de5609dd3771c5ba7ed7ba7d2e4d73d098a3
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

### `spiped:alpine` - linux; amd64

```console
$ docker pull spiped@sha256:27c62f22136c98c38224eccbad0739cfa5f4cf9c4d4cd3377c43d46945484ed1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3967475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60eadd8ed1cdf5be0a209d2cb535c22d25c150dd65ff27d92e57616d27fa979c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:03:42 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:03:43 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:03:52 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:03:52 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:03:52 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:03:52 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:03:52 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:03:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:03:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d10bab1d7548f8bce287f0517a87e92fa17fc9cd47e89537c4ae4d065a2baed`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:220d7d87e5024ed87f61f47d90d1a1a59e931e117f2c04455a9f683ce8fc687b`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 8.8 KB (8820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16de1a26386c992015e17006a7cbeacbd4d70b285fab4624a4aaa5f94ed298d`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 110.9 KB (110880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fecd81a13dc648d70c4d86fc7ec1d56cd674c50a487a6fd057fa6563720de4e`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adff1b91798e651fa945d477d288f479fe430d9a60b56f2d48d2dde4798517ba`  
		Last Modified: Mon, 24 Aug 2026 18:03:58 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:c8a0629317533451efd6f75405d02380e74341bc7ead41f9fc1dc2b465747484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 KB (95168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45ced2a3964c26249b77109955acff277efd16af016c2c9f088cd5e777ba67ba`

```dockerfile
```

-	Layers:
	-	`sha256:049d0be0e074eee81cb56a447b6c93c54a62a8b0781d7c36be8dd36deaeeb7f5`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 80.9 KB (80909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ee9a1fdd893266754a769c44597a0a4afdb612628f0f9840f2b170a3e9503de`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 14.3 KB (14259 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:550ef644969afaa03dc0a1d03aecabd8025ceebfbfbe309f3522ac8593167ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3657216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7303579f54c1322e0a0c4c32eb05366fb53a71d6ae4342032a12f8c4ec697727`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:24 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:53:25 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:53:35 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:53:35 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:53:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f4b24b0aa2f1d3ca5dad55d17a8d7e77c5b6b87992d9a76c49d759667bde28`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b98f97def63f8c3b8de000296da6c7bee54c6680126e3d0c39ffd6b022cd7d16`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 8.8 KB (8794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abe495e65120fd524d1f337d7d816f9fa966834587effc4fc50e2abe766c6c3`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 91.9 KB (91928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44818c29aa279ea3c464618beb96a05a81d07fc538b8fb0acbb997f284862ea1`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499e4d7cbfe0a7d953ff6e928cfd3698e0b31de3a780587b50ccea10b993a4c9`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:bba3f6762b43b50f4a5419d3e064969da68641b8f3aa70328844b0f0f8e7c72c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c501526bc5552c6fb00a27673794454a2c80f0d3a9d17f4ff91085fd59a623a`

```dockerfile
```

-	Layers:
	-	`sha256:f76641f331cffafb2e89db7fb4032caa841e794b9e385d67f18bcc9490eed975`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:1878bdbded6cde15bc43c44306dc3be08d415e09f436887777936b48797b06c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3360175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f448c8580efe744ca931f1414830fd3049fd214106d10bfbde18a931ff177eb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:23 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:53:23 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:53:33 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:53:33 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:53:33 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:33 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c07facf6cfd94303e9bc513e01ece46f7bda8dd5a0a5b60d88e9f6ee43afbf`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdcec03a202a10d687eb82fe4781644fccba2f0ac9a9d25b71d7302b6d661d85`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 8.8 KB (8816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585131a18be4b74d57f3465525d3806090d14cfe24693ed220f42e37ab6dd00d`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 84.8 KB (84774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9019d05401c20d55eda8fd806aae86cd47af502def2d907d9e8bfbffcdec732`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4f5d1a3fe86547253de95f44f3baddc7537bb87dc2257ff8957c4c2ab909ce`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:e854052b70ab432b9dff9edbdc9e9602e5f3b7a50e5595de596b70d59b519d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b54c849a1e1d208a549e53e313ff61cd42131ce67c0b80d34f379b3e9a1b951`

```dockerfile
```

-	Layers:
	-	`sha256:6ed0710b130ce5158b649cebc9b633d9a158e23ea498fa356b0c05768de025da`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 80.3 KB (80295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ae218fb2afb242766c0c687a43d9b932892411e2d5451213a959d21404ec84a`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 14.4 KB (14361 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:f23462df4970dfc8150e351fa0716bb39b77ac74d5a6836d2e1718caeef68458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4300371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6897625fa6be7d80285539f43a265756fa013b9c986249471bb252028cc87019`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:14 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:34:14 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:34:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:34:24 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:34:24 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:34:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b745289e2a1ff0c1258e983d17a6d34d56823c8db1bc76ef8ad779b87350db1f`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31322943e8f1b313f3178363bb73e44bb8922d978b3259778d0b31f29622b303`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 8.8 KB (8806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d9e272726d6605faa008f65116c7a1770b8e0fc853ed6df570a29acda82057`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 102.5 KB (102524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b203f93441728043c5e6910ded4834bd093d5342f64692469ac84378da5ab3e7`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62b6425ab7bdd74d111f3fdaf063415bc5a61d8df31b6f6e79699f60d0436e5`  
		Last Modified: Thu, 17 Sep 2026 21:34:30 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:579ea739c562da38a3b58d288ab888e34ae73b6631ea43bc7ae967087b18677c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6252a92ad3ea38e2722a73a1600cb4ac8bde249288de4cae4de624cc2b305805`

```dockerfile
```

-	Layers:
	-	`sha256:2aa54062bae232c24ff4b8a1146ddf91476d3f800ce2b74783b5a526dcb79057`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 80.3 KB (80315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bee0c6173f41139d30bea24d365c46d92fde662e4dd158560b2aee07a75442d`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; 386

```console
$ docker pull spiped@sha256:8d52984b4268447b45aeda532f6dd7dcee33e31ef7dd14aa4eef8d622039530d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3802989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d18b8afa781096142c3bfe4d5d68225fbb61025d848fd3346d8339e3a769ff8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:03:13 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:03:14 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:03:25 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:03:25 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:03:25 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:03:25 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:03:25 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:03:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:03:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5674db770041dea7bdb9814e2780ecfa56f9e2b489a4d5304ae6d00956203b95`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c95bf2e4f450571f54d6609fe2c42bb90b079232eaaa0eb5b44ba5a715d852`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 8.8 KB (8801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301d2b7088287ef460ab32b5cca3a095aecff4554b37e02e923e7b1a427391e5`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 122.7 KB (122665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8def0a966c55889e7f5d4f5df40cd61ccb20387d45e904df21d1b0f47f472b9`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be2d22ce1e1663ba424d1bbb9fa8966e7800f174f784017cc25491db6deafcf`  
		Last Modified: Mon, 24 Aug 2026 18:03:31 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:7e99b0521b200790057459b1d5f9da5e44cbc7dd68483e3bb9620ddaf53ef508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 KB (95107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4997688daaf4d4b562862b432479817dcefcf0b87bb708c043a62bd8fc082d75`

```dockerfile
```

-	Layers:
	-	`sha256:f46075ad8926246883be61045d15ec083df9b63a3bbadb923698d2b6bbd83641`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 80.9 KB (80884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:454fc7ec9bd31d623347b8b4b5e49e44c8c1de79bdcf9d650d381554c4e1b886`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:b01cd0d66e68f626cd37dd5692a413e6e236b573305ef4b04f66ccd35c4b4f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3938345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc36e7972a19c9e3eabc2d3e2eba307841c882659a2b2555ca5ecffef6f9570`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:02:08 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:02:10 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:02:27 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:02:27 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:02:27 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:02:27 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:02:27 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:02:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:02:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c41f5967dd36f6a3c6e4053b0376de18da09db22c2688b06b9151e73687713`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:131dd341cdd1237b30e6e90857aeedaaadd551060901e1647527e6489f2e2a8a`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 8.8 KB (8794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d38c25b5cd0b3fc91329d326de269558d937cec097ed3ea2500a7648208fc3`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 114.8 KB (114767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f680f8924a6ad82588ac01386791b9b45ef1ffc4d6240c4d6490b4860dbe8eba`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9bab852347aca626dd44e4ba513a3a93a86524dee71c1cf5d86b391840343f`  
		Last Modified: Mon, 24 Aug 2026 18:02:39 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:06ce29946f53e63cc3757cb235e2b2421a2a9f879792fbebacb2ebf793c6e466
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6753d933c3f5e6c3b5184e662e2b7cfc23f8773f174addb132caf69aa4240b91`

```dockerfile
```

-	Layers:
	-	`sha256:d6e3ba9573349d6d6f3da52aa1234d60db55d6b28808436176969dbf92b62faf`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 80.3 KB (80292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea5334b042f1a23f4eb8365bfe861654d8d42b8eba748502fa93c4f9f3fb2d00`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; riscv64

```console
$ docker pull spiped@sha256:d251843ba5911d4a1fcd1059324363118865b05815274872d87a6613cbe92c28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3684465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c08f5bd73b24fad6b48f07e4ac8c5090d9ac60cd5dc678a9f11297a46c95e884`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 20:46:16 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 20:46:19 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 20:48:01 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 20:48:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 20:48:01 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 20:48:01 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 20:48:01 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 20:48:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 20:48:01 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e47cc9dce8e1fca62bf3a8d5d60223b9597955e145e796bf5111668949e765`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e4480b2a947b869482e7bdfc6bae06cf9bb40d2b790ffa34b5cab365788f9b`  
		Last Modified: Mon, 24 Aug 2026 20:48:21 GMT  
		Size: 8.8 KB (8803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c58ed91852f50d9aec977663cad694056c79e63faa3ec4ebc47a4900c162a94d`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
		Size: 99.9 KB (99916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58da2c50abb545a672ebae9c063f99351eb1c3493ef5a7328755ffde25306242`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff5f5066d6c7a2efc4bbd6603433cc2818c3bf268e0862e0a70669fec5ce96b`  
		Last Modified: Mon, 24 Aug 2026 20:48:23 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:0d59b3fe02ccd02b1d999adc8a4d8c4995fe6a59d64598148fbb594f4a39e677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fb6babf72fa718228b04cbe9c69cd0c22633efa4f0e7bf9628e28e71d07e38`

```dockerfile
```

-	Layers:
	-	`sha256:6155eb1e42b11a79e9e02438ada81bd9a3b1849e148eb495d416db5e2ea1d72e`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
		Size: 80.3 KB (80288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aecdd9899b21323897b34d1f33c133264082a2c1dd90f9e3896ec70c8da90c87`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
		Size: 14.3 KB (14304 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; s390x

```console
$ docker pull spiped@sha256:6bc3753ca761bae60e057fb76a2dd63cbec0924e3588c5c9bb240221e283dc02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3818087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d9e72a79b8103a78314caacbdac0bfeeed605231cc777975ea53b586f9d2d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:02:49 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:02:50 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:03:01 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:03:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:03:01 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:03:02 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:03:03 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:03:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:03:03 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac69498c376413b1ee4f841ef2f56b6b92d1044b25eed68abf73507acbc57278`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075673245df91e4a7d327e272bd0cb01891b2004277ac593a82fe7633a2f1659`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 8.8 KB (8813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1824dd19889ff6fb0830dbcbdf46aaf44f78570f414b5e080cb14826cb661029`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 98.6 KB (98566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3fe48085e7b59fcf7b43df4161db2c671866390ad49b7043310a73781068f04`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ac5b140b0e3f1a67f13af786628597f050e4a3cb29e248eb873fffb4fc38ef`  
		Last Modified: Mon, 24 Aug 2026 18:03:36 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:ec5863eed4a1091816be64761330b9de172ace1651e996c2d2a2432077c76390
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ef257f7618c01d3d73ad9a8dc2a4019d4aff9bf3e352280e8ee633f2541dac`

```dockerfile
```

-	Layers:
	-	`sha256:3cfc11d8b67b7eaa4240d7e28a34f715ec0a8d467f5ee257b175a02e2ce4fd93`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 80.3 KB (80258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73a8dc372a89fc1390ecacd49132d1851b1d36b9d2476b643ffcf67a7f097428`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.in-toto+json
