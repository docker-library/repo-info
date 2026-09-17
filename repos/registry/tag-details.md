<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `registry`

-	[`registry:3`](#registry3)
-	[`registry:3.1`](#registry31)
-	[`registry:3.1.1`](#registry311)
-	[`registry:latest`](#registrylatest)

## `registry:3`

```console
$ docker pull registry@sha256:849b7d29920d060df8091770ede2279c07924ecd29e2a4c029ee0b5ea2ea542b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `registry:3` - linux; amd64

```console
$ docker pull registry@sha256:7518da9b12dd746278282a729dee2e65eabdeb449db4d0b28d46ef6e90308f58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 MB (20121269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc3f1a4432290d5ac3341603f15bf99c5b2feb4a9e3195e530aadc66fbcc65e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:53 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 22 Jun 2026 19:52:54 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Mon, 22 Jun 2026 19:52:54 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Mon, 22 Jun 2026 19:52:54 GMT
ENV OTEL_TRACES_EXPORTER=none
# Mon, 22 Jun 2026 19:52:54 GMT
VOLUME [/var/lib/registry]
# Mon, 22 Jun 2026 19:52:54 GMT
EXPOSE map[5000/tcp:{}]
# Mon, 22 Jun 2026 19:52:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 19:52:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 19:52:54 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47465c9fe4b1438b5f9aed1cf7182de26087f6eda66eb23dce944b763673bbed`  
		Last Modified: Mon, 22 Jun 2026 19:53:01 GMT  
		Size: 245.1 KB (245051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:269b60c1a347a7b2501df94ec2391af4c325bb9ef5a0cf5a4e6dd2e87198eb21`  
		Last Modified: Mon, 22 Jun 2026 19:53:02 GMT  
		Size: 16.0 MB (16031187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90c3e90567750f85e63c5ba884e9ef81f4839ab404a8f3dfd306e661018c6a0`  
		Last Modified: Mon, 22 Jun 2026 19:53:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4e1177a675ecd1759cde12c405d158ff166a809659e4006966a2b1a7c87123`  
		Last Modified: Mon, 22 Jun 2026 19:53:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3` - unknown; unknown

```console
$ docker pull registry@sha256:e648072cc326a080beaf294364129774fcc687e027bdff1b39d8fbf9161f57a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.5 KB (264549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85447bee306edaae59b1a341e1dbc8bf4732a2c09510b8ec46953ed4149418a5`

```dockerfile
```

-	Layers:
	-	`sha256:3f6a72b62a6e961cbb241afcc4d6a96d20be9f435b8846888d483eb85dab6459`  
		Last Modified: Mon, 22 Jun 2026 19:53:01 GMT  
		Size: 250.2 KB (250224 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb37447a81d229f9ac51bff5d3a2ecef9875370c32a92cfc1050178dcbcc79d2`  
		Last Modified: Mon, 22 Jun 2026 19:53:01 GMT  
		Size: 14.3 KB (14325 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3` - linux; arm variant v6

```console
$ docker pull registry@sha256:b6c962055ae2606cf181f91c12275fddc416556b9c5fe358741c29e315fb2a9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18715402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f2cdd4c54309071a2c379496fb0b549d72b698be0755835e7703502801e23e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:21 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:53:22 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 17 Sep 2026 21:53:22 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 17 Sep 2026 21:53:22 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 17 Sep 2026 21:53:22 GMT
VOLUME [/var/lib/registry]
# Thu, 17 Sep 2026 21:53:22 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 17 Sep 2026 21:53:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:53:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:22 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ed8926fe805d460445cab5357d1849eb1f933a2aea9865047dffe16a903e81`  
		Last Modified: Thu, 17 Sep 2026 21:53:28 GMT  
		Size: 248.5 KB (248459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42b2b55ca84898bc70e1d51053e24bccf73eb4f2f0af1ed6efe53a4451457951`  
		Last Modified: Thu, 17 Sep 2026 21:53:28 GMT  
		Size: 14.9 MB (14911408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03faa055ba49332ec8e5383db30aca126e820d39382bcb00d8a36f15b327ddd`  
		Last Modified: Thu, 17 Sep 2026 21:53:28 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e91049820ef531fd3ca43071feea1d9863700d3b277a4b1b01727cd00561d3a`  
		Last Modified: Thu, 17 Sep 2026 21:53:28 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3` - unknown; unknown

```console
$ docker pull registry@sha256:5a4381e0ca6eb14f677e90da12e7f477095da893ae77aed4ec5eab3b82c8b952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d6ebb3530dc7f3103a429a55ef28110fb9fbbebe2e986f896bef8cd3aa38c9`

```dockerfile
```

-	Layers:
	-	`sha256:0382755dcbe03d99adf3e953d94f9520b02e43be24c0b9a92bf8f27e5a0eab16`  
		Last Modified: Thu, 17 Sep 2026 21:53:28 GMT  
		Size: 14.2 KB (14201 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3` - linux; arm variant v7

```console
$ docker pull registry@sha256:167116daa2018f21398d3550eccf348d33b14e69a79d63fc12138e010ead3a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18403319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6910ac3bcc3d4201e64b284af1e96d20cc6cc73bdb0cb4cba50a80c3fe555e9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:10 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:53:12 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 17 Sep 2026 21:53:12 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 17 Sep 2026 21:53:12 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 17 Sep 2026 21:53:12 GMT
VOLUME [/var/lib/registry]
# Thu, 17 Sep 2026 21:53:12 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 17 Sep 2026 21:53:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:53:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:12 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e898337927197f93ecc02336ca74a48f0483d9567fbe206624cab30bdc4a1e`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 247.6 KB (247555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae1dbe16a596a0f30bf85205bbbb0a9234ae3f33521768fdc969092bc9ccb788`  
		Last Modified: Thu, 17 Sep 2026 21:53:20 GMT  
		Size: 14.9 MB (14892242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aea5098e9d08a2ca9c0a2aa22d6c442feaed06c109e373779120bd142718418a`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:787f3057d447d74a4f379dd1eac1d21e647d495b13246ae8abbfa90e5adc9c3b`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3` - unknown; unknown

```console
$ docker pull registry@sha256:89ab2c9b78a23a6d3f6941d0918ec6477514eb00427321d85134baab411b8315
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 KB (264557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44d54157acbb0765092df7569b5390398b2df7fca330176e713ac587b003f949`

```dockerfile
```

-	Layers:
	-	`sha256:509e49d3ad5f95530dcbddc5f7c640e4b65df9998214fe68bfcb98fff42e69ac`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 250.1 KB (250139 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fbfca3bea83792b43d3670169a3a570166abb5b0752529995d253767c841047`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 14.4 KB (14418 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3` - linux; arm64 variant v8

```console
$ docker pull registry@sha256:16c9340cae30cbf9b5ced3f3e77340f3bf4064971685540f4257a0254069c6b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18830129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d28f1b4ff6974f686144907e64ef2e32d22f01c78f66be395cf4ee410fec5ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:14 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:34:15 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 17 Sep 2026 21:34:15 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 17 Sep 2026 21:34:15 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 17 Sep 2026 21:34:15 GMT
VOLUME [/var/lib/registry]
# Thu, 17 Sep 2026 21:34:15 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 17 Sep 2026 21:34:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:34:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:34:15 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c88dbdab2c4985db246b53b122e7217f4676f297a2744cc70c868bf63e5b9912`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 249.8 KB (249840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d89d8769804478b12ea5a69e6909db8d4a6556ed0640af719384257e836920a2`  
		Last Modified: Thu, 17 Sep 2026 21:34:23 GMT  
		Size: 14.4 MB (14393623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98ecc695dabd736ff7b8620769417b16e738f767b0b7550c289f501bd1493d5`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cae7938a91e6fb070c2218ba798031a87883fb96ccab7470a43e6bcdff6b87e`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3` - unknown; unknown

```console
$ docker pull registry@sha256:8971342d48e86d62bcad0209521589d3516a2335c3dc1a03e293bf6425160c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.4 KB (265366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:883b47e23a8e8d1366e9dd24c44e3d0734c9b217ec6c355af4795aa07c5f5638`

```dockerfile
```

-	Layers:
	-	`sha256:48d38c75d78715b11e2de8409d4b06683bae524d187d922912b9735d4096e450`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 250.9 KB (250923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78e3f5e6724e14ef90f39516892e71ccee92c720637d8a3679125c484a50f8b4`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 14.4 KB (14443 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3` - linux; ppc64le

```console
$ docker pull registry@sha256:8743d907b6cdb2dd87f4ed94f822fd154b89063c523a09c242b909ff017f910b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18375981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f76541ae81a4b1d1ccca4ebc0385717d7c4bacfcb2c034053169d1e34a54eb6f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:49:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
ENV OTEL_TRACES_EXPORTER=none
# Mon, 22 Jun 2026 20:49:27 GMT
VOLUME [/var/lib/registry]
# Mon, 22 Jun 2026 20:49:27 GMT
EXPOSE map[5000/tcp:{}]
# Mon, 22 Jun 2026 20:49:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:49:27 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2afe4ddf70535a87895dd2928115f13eed6bd80bb630863f6b224ede37a652`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 247.9 KB (247906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6560a44fce175ef47acf06550554be08c32cfcf71234304c92a0c75addf0b78`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 14.3 MB (14315166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cd5fdef66691aba6224a0396b74054fe2dafc926047862087ba3588eabbddd1`  
		Last Modified: Mon, 22 Jun 2026 20:49:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c56ebedf1ae387efff134db775c1b0b4ee1620769345e48f68a80ef0273f50`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3` - unknown; unknown

```console
$ docker pull registry@sha256:75f230ee32b15a03df499965af1a343bb46c2a63cb1b39ad27f9e3b028fde7f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 KB (263978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71897556fbe1f7c56e5b37daceb2deeb74fd011fb04fee6437999dcb5900a23f`

```dockerfile
```

-	Layers:
	-	`sha256:6fc344e4c8c00da110031c1eda4bb79b2d63ff8a9f4d5256e4bac361759204d0`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 249.6 KB (249607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:789ecb938ce7bb106c3aa07f346d8a17b45b611ec278ac19b4961d1c3d3e1141`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3` - linux; riscv64

```console
$ docker pull registry@sha256:50a4402473f31a470e7427e96fc52b14ea33af25b96ac3b08f69d07ca3c696a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19135793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9afedb42ee0c533e1776d2de277e9ba5fbdd64993017b5f6a45118fbe134462`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 14:05:16 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 23 Jun 2026 14:05:22 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Tue, 23 Jun 2026 14:05:23 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Tue, 23 Jun 2026 14:05:23 GMT
ENV OTEL_TRACES_EXPORTER=none
# Tue, 23 Jun 2026 14:05:23 GMT
VOLUME [/var/lib/registry]
# Tue, 23 Jun 2026 14:05:23 GMT
EXPOSE map[5000/tcp:{}]
# Tue, 23 Jun 2026 14:05:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 23 Jun 2026 14:05:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jun 2026 14:05:23 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d1b6a4c21a78dbb25159d2e273a4550eac3caff5f0f9a74168efac89740c36`  
		Last Modified: Tue, 23 Jun 2026 14:06:21 GMT  
		Size: 245.5 KB (245467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe99b974a84169b2ca12be6633ba4a7ee840ea1abbd3f6cdbc4b6c42c77beda1`  
		Last Modified: Tue, 23 Jun 2026 14:06:23 GMT  
		Size: 15.3 MB (15316476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c893b5aea44bc331c01e03f12d4257cbea486eb42187ad15e564fa1e687891f3`  
		Last Modified: Tue, 23 Jun 2026 14:06:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba5c7dde5b7db95855936540944aa0f64b7bda800c6fd59737507eb42b3e9ac`  
		Last Modified: Tue, 23 Jun 2026 14:06:21 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3` - unknown; unknown

```console
$ docker pull registry@sha256:23c2ca8c8d8430044412eecd31b28adc3be4a0216f43d65c4ca9cc31a7933c9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 KB (263974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47bceea67eb25309c98d71f978a163dee545b6448c1ed376a108203c85c5929e`

```dockerfile
```

-	Layers:
	-	`sha256:dfab2b1e83d442a2c29ce8d5c1eb6fcd58902855a601a67d0e04ebfc78972a45`  
		Last Modified: Tue, 23 Jun 2026 14:06:20 GMT  
		Size: 249.6 KB (249603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a850f3c3ecaf89ed7e0ec1026990ca88ccfbd5f548d65c7950eaee6c7786931`  
		Last Modified: Tue, 23 Jun 2026 14:06:20 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3` - linux; s390x

```console
$ docker pull registry@sha256:3258c57f1d3f616a9c806f1a5784a24343b7f87725f8f6ad91dd551069236aed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19315005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd2f7875d22841f8cac8e57cc35361b9e7d3a6edb1db15bd25a30e892c501e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:10:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 22 Jun 2026 20:10:56 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Mon, 22 Jun 2026 20:10:56 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Mon, 22 Jun 2026 20:10:56 GMT
ENV OTEL_TRACES_EXPORTER=none
# Mon, 22 Jun 2026 20:10:56 GMT
VOLUME [/var/lib/registry]
# Mon, 22 Jun 2026 20:10:56 GMT
EXPOSE map[5000/tcp:{}]
# Mon, 22 Jun 2026 20:10:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:10:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:10:56 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470176434bca20b0199baf086b0e5f5cba5a0bee165b8e1094c1885f4df27c81`  
		Last Modified: Mon, 22 Jun 2026 20:11:11 GMT  
		Size: 246.1 KB (246139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:545862897924bceb9b97706f1c73c502840d540e039fbbfa46185c45a6974d23`  
		Last Modified: Mon, 22 Jun 2026 20:11:12 GMT  
		Size: 15.4 MB (15361009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6621ef0e5bc723e6e9b9c7415f73b4722e858f3f3da35efa99743b9f3831adaa`  
		Last Modified: Mon, 22 Jun 2026 20:11:11 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49b26589d17656b50ffc9938cfc210eee544658f1fea6099fcf7f77eb16b247d`  
		Last Modified: Mon, 22 Jun 2026 20:11:11 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3` - unknown; unknown

```console
$ docker pull registry@sha256:ff9fcd6da3aa8ae0465188650111b05121da6e14746a25bb053eccb91ca8bf19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.9 KB (263898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dfc6aa19a21eb4a4b8376bcf670f0e355ca90a8fde035b19a2561a8f29c42cf`

```dockerfile
```

-	Layers:
	-	`sha256:9909b60e831886a87b34f8d8e20ec9466084574861f51acff91b12b80b9bc5b1`  
		Last Modified: Mon, 22 Jun 2026 20:11:11 GMT  
		Size: 249.6 KB (249573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02e91698fc78c29df6054e23b67d3e797a740990a861d1b805027443af1d2438`  
		Last Modified: Mon, 22 Jun 2026 20:11:11 GMT  
		Size: 14.3 KB (14325 bytes)  
		MIME: application/vnd.in-toto+json

## `registry:3.1`

```console
$ docker pull registry@sha256:849b7d29920d060df8091770ede2279c07924ecd29e2a4c029ee0b5ea2ea542b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `registry:3.1` - linux; amd64

```console
$ docker pull registry@sha256:7518da9b12dd746278282a729dee2e65eabdeb449db4d0b28d46ef6e90308f58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 MB (20121269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc3f1a4432290d5ac3341603f15bf99c5b2feb4a9e3195e530aadc66fbcc65e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:53 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 22 Jun 2026 19:52:54 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Mon, 22 Jun 2026 19:52:54 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Mon, 22 Jun 2026 19:52:54 GMT
ENV OTEL_TRACES_EXPORTER=none
# Mon, 22 Jun 2026 19:52:54 GMT
VOLUME [/var/lib/registry]
# Mon, 22 Jun 2026 19:52:54 GMT
EXPOSE map[5000/tcp:{}]
# Mon, 22 Jun 2026 19:52:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 19:52:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 19:52:54 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47465c9fe4b1438b5f9aed1cf7182de26087f6eda66eb23dce944b763673bbed`  
		Last Modified: Mon, 22 Jun 2026 19:53:01 GMT  
		Size: 245.1 KB (245051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:269b60c1a347a7b2501df94ec2391af4c325bb9ef5a0cf5a4e6dd2e87198eb21`  
		Last Modified: Mon, 22 Jun 2026 19:53:02 GMT  
		Size: 16.0 MB (16031187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90c3e90567750f85e63c5ba884e9ef81f4839ab404a8f3dfd306e661018c6a0`  
		Last Modified: Mon, 22 Jun 2026 19:53:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4e1177a675ecd1759cde12c405d158ff166a809659e4006966a2b1a7c87123`  
		Last Modified: Mon, 22 Jun 2026 19:53:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1` - unknown; unknown

```console
$ docker pull registry@sha256:e648072cc326a080beaf294364129774fcc687e027bdff1b39d8fbf9161f57a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.5 KB (264549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85447bee306edaae59b1a341e1dbc8bf4732a2c09510b8ec46953ed4149418a5`

```dockerfile
```

-	Layers:
	-	`sha256:3f6a72b62a6e961cbb241afcc4d6a96d20be9f435b8846888d483eb85dab6459`  
		Last Modified: Mon, 22 Jun 2026 19:53:01 GMT  
		Size: 250.2 KB (250224 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb37447a81d229f9ac51bff5d3a2ecef9875370c32a92cfc1050178dcbcc79d2`  
		Last Modified: Mon, 22 Jun 2026 19:53:01 GMT  
		Size: 14.3 KB (14325 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1` - linux; arm variant v6

```console
$ docker pull registry@sha256:b6c962055ae2606cf181f91c12275fddc416556b9c5fe358741c29e315fb2a9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18715402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f2cdd4c54309071a2c379496fb0b549d72b698be0755835e7703502801e23e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:21 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:53:22 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 17 Sep 2026 21:53:22 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 17 Sep 2026 21:53:22 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 17 Sep 2026 21:53:22 GMT
VOLUME [/var/lib/registry]
# Thu, 17 Sep 2026 21:53:22 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 17 Sep 2026 21:53:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:53:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:22 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ed8926fe805d460445cab5357d1849eb1f933a2aea9865047dffe16a903e81`  
		Last Modified: Thu, 17 Sep 2026 21:53:28 GMT  
		Size: 248.5 KB (248459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42b2b55ca84898bc70e1d51053e24bccf73eb4f2f0af1ed6efe53a4451457951`  
		Last Modified: Thu, 17 Sep 2026 21:53:28 GMT  
		Size: 14.9 MB (14911408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03faa055ba49332ec8e5383db30aca126e820d39382bcb00d8a36f15b327ddd`  
		Last Modified: Thu, 17 Sep 2026 21:53:28 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e91049820ef531fd3ca43071feea1d9863700d3b277a4b1b01727cd00561d3a`  
		Last Modified: Thu, 17 Sep 2026 21:53:28 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1` - unknown; unknown

```console
$ docker pull registry@sha256:5a4381e0ca6eb14f677e90da12e7f477095da893ae77aed4ec5eab3b82c8b952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d6ebb3530dc7f3103a429a55ef28110fb9fbbebe2e986f896bef8cd3aa38c9`

```dockerfile
```

-	Layers:
	-	`sha256:0382755dcbe03d99adf3e953d94f9520b02e43be24c0b9a92bf8f27e5a0eab16`  
		Last Modified: Thu, 17 Sep 2026 21:53:28 GMT  
		Size: 14.2 KB (14201 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1` - linux; arm variant v7

```console
$ docker pull registry@sha256:167116daa2018f21398d3550eccf348d33b14e69a79d63fc12138e010ead3a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18403319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6910ac3bcc3d4201e64b284af1e96d20cc6cc73bdb0cb4cba50a80c3fe555e9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:10 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:53:12 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 17 Sep 2026 21:53:12 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 17 Sep 2026 21:53:12 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 17 Sep 2026 21:53:12 GMT
VOLUME [/var/lib/registry]
# Thu, 17 Sep 2026 21:53:12 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 17 Sep 2026 21:53:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:53:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:12 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e898337927197f93ecc02336ca74a48f0483d9567fbe206624cab30bdc4a1e`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 247.6 KB (247555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae1dbe16a596a0f30bf85205bbbb0a9234ae3f33521768fdc969092bc9ccb788`  
		Last Modified: Thu, 17 Sep 2026 21:53:20 GMT  
		Size: 14.9 MB (14892242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aea5098e9d08a2ca9c0a2aa22d6c442feaed06c109e373779120bd142718418a`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:787f3057d447d74a4f379dd1eac1d21e647d495b13246ae8abbfa90e5adc9c3b`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1` - unknown; unknown

```console
$ docker pull registry@sha256:89ab2c9b78a23a6d3f6941d0918ec6477514eb00427321d85134baab411b8315
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 KB (264557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44d54157acbb0765092df7569b5390398b2df7fca330176e713ac587b003f949`

```dockerfile
```

-	Layers:
	-	`sha256:509e49d3ad5f95530dcbddc5f7c640e4b65df9998214fe68bfcb98fff42e69ac`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 250.1 KB (250139 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fbfca3bea83792b43d3670169a3a570166abb5b0752529995d253767c841047`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 14.4 KB (14418 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1` - linux; arm64 variant v8

```console
$ docker pull registry@sha256:16c9340cae30cbf9b5ced3f3e77340f3bf4064971685540f4257a0254069c6b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18830129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d28f1b4ff6974f686144907e64ef2e32d22f01c78f66be395cf4ee410fec5ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:14 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:34:15 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 17 Sep 2026 21:34:15 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 17 Sep 2026 21:34:15 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 17 Sep 2026 21:34:15 GMT
VOLUME [/var/lib/registry]
# Thu, 17 Sep 2026 21:34:15 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 17 Sep 2026 21:34:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:34:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:34:15 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c88dbdab2c4985db246b53b122e7217f4676f297a2744cc70c868bf63e5b9912`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 249.8 KB (249840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d89d8769804478b12ea5a69e6909db8d4a6556ed0640af719384257e836920a2`  
		Last Modified: Thu, 17 Sep 2026 21:34:23 GMT  
		Size: 14.4 MB (14393623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98ecc695dabd736ff7b8620769417b16e738f767b0b7550c289f501bd1493d5`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cae7938a91e6fb070c2218ba798031a87883fb96ccab7470a43e6bcdff6b87e`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1` - unknown; unknown

```console
$ docker pull registry@sha256:8971342d48e86d62bcad0209521589d3516a2335c3dc1a03e293bf6425160c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.4 KB (265366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:883b47e23a8e8d1366e9dd24c44e3d0734c9b217ec6c355af4795aa07c5f5638`

```dockerfile
```

-	Layers:
	-	`sha256:48d38c75d78715b11e2de8409d4b06683bae524d187d922912b9735d4096e450`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 250.9 KB (250923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78e3f5e6724e14ef90f39516892e71ccee92c720637d8a3679125c484a50f8b4`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 14.4 KB (14443 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1` - linux; ppc64le

```console
$ docker pull registry@sha256:8743d907b6cdb2dd87f4ed94f822fd154b89063c523a09c242b909ff017f910b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18375981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f76541ae81a4b1d1ccca4ebc0385717d7c4bacfcb2c034053169d1e34a54eb6f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:49:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
ENV OTEL_TRACES_EXPORTER=none
# Mon, 22 Jun 2026 20:49:27 GMT
VOLUME [/var/lib/registry]
# Mon, 22 Jun 2026 20:49:27 GMT
EXPOSE map[5000/tcp:{}]
# Mon, 22 Jun 2026 20:49:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:49:27 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2afe4ddf70535a87895dd2928115f13eed6bd80bb630863f6b224ede37a652`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 247.9 KB (247906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6560a44fce175ef47acf06550554be08c32cfcf71234304c92a0c75addf0b78`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 14.3 MB (14315166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cd5fdef66691aba6224a0396b74054fe2dafc926047862087ba3588eabbddd1`  
		Last Modified: Mon, 22 Jun 2026 20:49:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c56ebedf1ae387efff134db775c1b0b4ee1620769345e48f68a80ef0273f50`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1` - unknown; unknown

```console
$ docker pull registry@sha256:75f230ee32b15a03df499965af1a343bb46c2a63cb1b39ad27f9e3b028fde7f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 KB (263978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71897556fbe1f7c56e5b37daceb2deeb74fd011fb04fee6437999dcb5900a23f`

```dockerfile
```

-	Layers:
	-	`sha256:6fc344e4c8c00da110031c1eda4bb79b2d63ff8a9f4d5256e4bac361759204d0`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 249.6 KB (249607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:789ecb938ce7bb106c3aa07f346d8a17b45b611ec278ac19b4961d1c3d3e1141`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1` - linux; riscv64

```console
$ docker pull registry@sha256:50a4402473f31a470e7427e96fc52b14ea33af25b96ac3b08f69d07ca3c696a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19135793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9afedb42ee0c533e1776d2de277e9ba5fbdd64993017b5f6a45118fbe134462`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 14:05:16 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 23 Jun 2026 14:05:22 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Tue, 23 Jun 2026 14:05:23 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Tue, 23 Jun 2026 14:05:23 GMT
ENV OTEL_TRACES_EXPORTER=none
# Tue, 23 Jun 2026 14:05:23 GMT
VOLUME [/var/lib/registry]
# Tue, 23 Jun 2026 14:05:23 GMT
EXPOSE map[5000/tcp:{}]
# Tue, 23 Jun 2026 14:05:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 23 Jun 2026 14:05:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jun 2026 14:05:23 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d1b6a4c21a78dbb25159d2e273a4550eac3caff5f0f9a74168efac89740c36`  
		Last Modified: Tue, 23 Jun 2026 14:06:21 GMT  
		Size: 245.5 KB (245467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe99b974a84169b2ca12be6633ba4a7ee840ea1abbd3f6cdbc4b6c42c77beda1`  
		Last Modified: Tue, 23 Jun 2026 14:06:23 GMT  
		Size: 15.3 MB (15316476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c893b5aea44bc331c01e03f12d4257cbea486eb42187ad15e564fa1e687891f3`  
		Last Modified: Tue, 23 Jun 2026 14:06:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba5c7dde5b7db95855936540944aa0f64b7bda800c6fd59737507eb42b3e9ac`  
		Last Modified: Tue, 23 Jun 2026 14:06:21 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1` - unknown; unknown

```console
$ docker pull registry@sha256:23c2ca8c8d8430044412eecd31b28adc3be4a0216f43d65c4ca9cc31a7933c9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 KB (263974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47bceea67eb25309c98d71f978a163dee545b6448c1ed376a108203c85c5929e`

```dockerfile
```

-	Layers:
	-	`sha256:dfab2b1e83d442a2c29ce8d5c1eb6fcd58902855a601a67d0e04ebfc78972a45`  
		Last Modified: Tue, 23 Jun 2026 14:06:20 GMT  
		Size: 249.6 KB (249603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a850f3c3ecaf89ed7e0ec1026990ca88ccfbd5f548d65c7950eaee6c7786931`  
		Last Modified: Tue, 23 Jun 2026 14:06:20 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1` - linux; s390x

```console
$ docker pull registry@sha256:3258c57f1d3f616a9c806f1a5784a24343b7f87725f8f6ad91dd551069236aed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19315005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd2f7875d22841f8cac8e57cc35361b9e7d3a6edb1db15bd25a30e892c501e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:10:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 22 Jun 2026 20:10:56 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Mon, 22 Jun 2026 20:10:56 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Mon, 22 Jun 2026 20:10:56 GMT
ENV OTEL_TRACES_EXPORTER=none
# Mon, 22 Jun 2026 20:10:56 GMT
VOLUME [/var/lib/registry]
# Mon, 22 Jun 2026 20:10:56 GMT
EXPOSE map[5000/tcp:{}]
# Mon, 22 Jun 2026 20:10:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:10:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:10:56 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470176434bca20b0199baf086b0e5f5cba5a0bee165b8e1094c1885f4df27c81`  
		Last Modified: Mon, 22 Jun 2026 20:11:11 GMT  
		Size: 246.1 KB (246139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:545862897924bceb9b97706f1c73c502840d540e039fbbfa46185c45a6974d23`  
		Last Modified: Mon, 22 Jun 2026 20:11:12 GMT  
		Size: 15.4 MB (15361009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6621ef0e5bc723e6e9b9c7415f73b4722e858f3f3da35efa99743b9f3831adaa`  
		Last Modified: Mon, 22 Jun 2026 20:11:11 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49b26589d17656b50ffc9938cfc210eee544658f1fea6099fcf7f77eb16b247d`  
		Last Modified: Mon, 22 Jun 2026 20:11:11 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1` - unknown; unknown

```console
$ docker pull registry@sha256:ff9fcd6da3aa8ae0465188650111b05121da6e14746a25bb053eccb91ca8bf19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.9 KB (263898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dfc6aa19a21eb4a4b8376bcf670f0e355ca90a8fde035b19a2561a8f29c42cf`

```dockerfile
```

-	Layers:
	-	`sha256:9909b60e831886a87b34f8d8e20ec9466084574861f51acff91b12b80b9bc5b1`  
		Last Modified: Mon, 22 Jun 2026 20:11:11 GMT  
		Size: 249.6 KB (249573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02e91698fc78c29df6054e23b67d3e797a740990a861d1b805027443af1d2438`  
		Last Modified: Mon, 22 Jun 2026 20:11:11 GMT  
		Size: 14.3 KB (14325 bytes)  
		MIME: application/vnd.in-toto+json

## `registry:3.1.1`

```console
$ docker pull registry@sha256:849b7d29920d060df8091770ede2279c07924ecd29e2a4c029ee0b5ea2ea542b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `registry:3.1.1` - linux; amd64

```console
$ docker pull registry@sha256:7518da9b12dd746278282a729dee2e65eabdeb449db4d0b28d46ef6e90308f58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 MB (20121269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc3f1a4432290d5ac3341603f15bf99c5b2feb4a9e3195e530aadc66fbcc65e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:53 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 22 Jun 2026 19:52:54 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Mon, 22 Jun 2026 19:52:54 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Mon, 22 Jun 2026 19:52:54 GMT
ENV OTEL_TRACES_EXPORTER=none
# Mon, 22 Jun 2026 19:52:54 GMT
VOLUME [/var/lib/registry]
# Mon, 22 Jun 2026 19:52:54 GMT
EXPOSE map[5000/tcp:{}]
# Mon, 22 Jun 2026 19:52:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 19:52:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 19:52:54 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47465c9fe4b1438b5f9aed1cf7182de26087f6eda66eb23dce944b763673bbed`  
		Last Modified: Mon, 22 Jun 2026 19:53:01 GMT  
		Size: 245.1 KB (245051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:269b60c1a347a7b2501df94ec2391af4c325bb9ef5a0cf5a4e6dd2e87198eb21`  
		Last Modified: Mon, 22 Jun 2026 19:53:02 GMT  
		Size: 16.0 MB (16031187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90c3e90567750f85e63c5ba884e9ef81f4839ab404a8f3dfd306e661018c6a0`  
		Last Modified: Mon, 22 Jun 2026 19:53:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4e1177a675ecd1759cde12c405d158ff166a809659e4006966a2b1a7c87123`  
		Last Modified: Mon, 22 Jun 2026 19:53:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1.1` - unknown; unknown

```console
$ docker pull registry@sha256:e648072cc326a080beaf294364129774fcc687e027bdff1b39d8fbf9161f57a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.5 KB (264549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85447bee306edaae59b1a341e1dbc8bf4732a2c09510b8ec46953ed4149418a5`

```dockerfile
```

-	Layers:
	-	`sha256:3f6a72b62a6e961cbb241afcc4d6a96d20be9f435b8846888d483eb85dab6459`  
		Last Modified: Mon, 22 Jun 2026 19:53:01 GMT  
		Size: 250.2 KB (250224 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb37447a81d229f9ac51bff5d3a2ecef9875370c32a92cfc1050178dcbcc79d2`  
		Last Modified: Mon, 22 Jun 2026 19:53:01 GMT  
		Size: 14.3 KB (14325 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1.1` - linux; arm variant v6

```console
$ docker pull registry@sha256:b6c962055ae2606cf181f91c12275fddc416556b9c5fe358741c29e315fb2a9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18715402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f2cdd4c54309071a2c379496fb0b549d72b698be0755835e7703502801e23e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:21 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:53:22 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 17 Sep 2026 21:53:22 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 17 Sep 2026 21:53:22 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 17 Sep 2026 21:53:22 GMT
VOLUME [/var/lib/registry]
# Thu, 17 Sep 2026 21:53:22 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 17 Sep 2026 21:53:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:53:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:22 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ed8926fe805d460445cab5357d1849eb1f933a2aea9865047dffe16a903e81`  
		Last Modified: Thu, 17 Sep 2026 21:53:28 GMT  
		Size: 248.5 KB (248459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42b2b55ca84898bc70e1d51053e24bccf73eb4f2f0af1ed6efe53a4451457951`  
		Last Modified: Thu, 17 Sep 2026 21:53:28 GMT  
		Size: 14.9 MB (14911408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03faa055ba49332ec8e5383db30aca126e820d39382bcb00d8a36f15b327ddd`  
		Last Modified: Thu, 17 Sep 2026 21:53:28 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e91049820ef531fd3ca43071feea1d9863700d3b277a4b1b01727cd00561d3a`  
		Last Modified: Thu, 17 Sep 2026 21:53:28 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1.1` - unknown; unknown

```console
$ docker pull registry@sha256:5a4381e0ca6eb14f677e90da12e7f477095da893ae77aed4ec5eab3b82c8b952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d6ebb3530dc7f3103a429a55ef28110fb9fbbebe2e986f896bef8cd3aa38c9`

```dockerfile
```

-	Layers:
	-	`sha256:0382755dcbe03d99adf3e953d94f9520b02e43be24c0b9a92bf8f27e5a0eab16`  
		Last Modified: Thu, 17 Sep 2026 21:53:28 GMT  
		Size: 14.2 KB (14201 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1.1` - linux; arm variant v7

```console
$ docker pull registry@sha256:167116daa2018f21398d3550eccf348d33b14e69a79d63fc12138e010ead3a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18403319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6910ac3bcc3d4201e64b284af1e96d20cc6cc73bdb0cb4cba50a80c3fe555e9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:10 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:53:12 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 17 Sep 2026 21:53:12 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 17 Sep 2026 21:53:12 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 17 Sep 2026 21:53:12 GMT
VOLUME [/var/lib/registry]
# Thu, 17 Sep 2026 21:53:12 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 17 Sep 2026 21:53:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:53:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:12 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e898337927197f93ecc02336ca74a48f0483d9567fbe206624cab30bdc4a1e`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 247.6 KB (247555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae1dbe16a596a0f30bf85205bbbb0a9234ae3f33521768fdc969092bc9ccb788`  
		Last Modified: Thu, 17 Sep 2026 21:53:20 GMT  
		Size: 14.9 MB (14892242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aea5098e9d08a2ca9c0a2aa22d6c442feaed06c109e373779120bd142718418a`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:787f3057d447d74a4f379dd1eac1d21e647d495b13246ae8abbfa90e5adc9c3b`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1.1` - unknown; unknown

```console
$ docker pull registry@sha256:89ab2c9b78a23a6d3f6941d0918ec6477514eb00427321d85134baab411b8315
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 KB (264557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44d54157acbb0765092df7569b5390398b2df7fca330176e713ac587b003f949`

```dockerfile
```

-	Layers:
	-	`sha256:509e49d3ad5f95530dcbddc5f7c640e4b65df9998214fe68bfcb98fff42e69ac`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 250.1 KB (250139 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fbfca3bea83792b43d3670169a3a570166abb5b0752529995d253767c841047`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 14.4 KB (14418 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1.1` - linux; arm64 variant v8

```console
$ docker pull registry@sha256:16c9340cae30cbf9b5ced3f3e77340f3bf4064971685540f4257a0254069c6b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18830129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d28f1b4ff6974f686144907e64ef2e32d22f01c78f66be395cf4ee410fec5ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:14 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:34:15 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 17 Sep 2026 21:34:15 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 17 Sep 2026 21:34:15 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 17 Sep 2026 21:34:15 GMT
VOLUME [/var/lib/registry]
# Thu, 17 Sep 2026 21:34:15 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 17 Sep 2026 21:34:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:34:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:34:15 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c88dbdab2c4985db246b53b122e7217f4676f297a2744cc70c868bf63e5b9912`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 249.8 KB (249840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d89d8769804478b12ea5a69e6909db8d4a6556ed0640af719384257e836920a2`  
		Last Modified: Thu, 17 Sep 2026 21:34:23 GMT  
		Size: 14.4 MB (14393623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98ecc695dabd736ff7b8620769417b16e738f767b0b7550c289f501bd1493d5`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cae7938a91e6fb070c2218ba798031a87883fb96ccab7470a43e6bcdff6b87e`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1.1` - unknown; unknown

```console
$ docker pull registry@sha256:8971342d48e86d62bcad0209521589d3516a2335c3dc1a03e293bf6425160c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.4 KB (265366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:883b47e23a8e8d1366e9dd24c44e3d0734c9b217ec6c355af4795aa07c5f5638`

```dockerfile
```

-	Layers:
	-	`sha256:48d38c75d78715b11e2de8409d4b06683bae524d187d922912b9735d4096e450`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 250.9 KB (250923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78e3f5e6724e14ef90f39516892e71ccee92c720637d8a3679125c484a50f8b4`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 14.4 KB (14443 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1.1` - linux; ppc64le

```console
$ docker pull registry@sha256:8743d907b6cdb2dd87f4ed94f822fd154b89063c523a09c242b909ff017f910b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18375981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f76541ae81a4b1d1ccca4ebc0385717d7c4bacfcb2c034053169d1e34a54eb6f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:49:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
ENV OTEL_TRACES_EXPORTER=none
# Mon, 22 Jun 2026 20:49:27 GMT
VOLUME [/var/lib/registry]
# Mon, 22 Jun 2026 20:49:27 GMT
EXPOSE map[5000/tcp:{}]
# Mon, 22 Jun 2026 20:49:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:49:27 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2afe4ddf70535a87895dd2928115f13eed6bd80bb630863f6b224ede37a652`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 247.9 KB (247906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6560a44fce175ef47acf06550554be08c32cfcf71234304c92a0c75addf0b78`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 14.3 MB (14315166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cd5fdef66691aba6224a0396b74054fe2dafc926047862087ba3588eabbddd1`  
		Last Modified: Mon, 22 Jun 2026 20:49:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c56ebedf1ae387efff134db775c1b0b4ee1620769345e48f68a80ef0273f50`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1.1` - unknown; unknown

```console
$ docker pull registry@sha256:75f230ee32b15a03df499965af1a343bb46c2a63cb1b39ad27f9e3b028fde7f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 KB (263978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71897556fbe1f7c56e5b37daceb2deeb74fd011fb04fee6437999dcb5900a23f`

```dockerfile
```

-	Layers:
	-	`sha256:6fc344e4c8c00da110031c1eda4bb79b2d63ff8a9f4d5256e4bac361759204d0`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 249.6 KB (249607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:789ecb938ce7bb106c3aa07f346d8a17b45b611ec278ac19b4961d1c3d3e1141`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1.1` - linux; riscv64

```console
$ docker pull registry@sha256:50a4402473f31a470e7427e96fc52b14ea33af25b96ac3b08f69d07ca3c696a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19135793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9afedb42ee0c533e1776d2de277e9ba5fbdd64993017b5f6a45118fbe134462`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 14:05:16 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 23 Jun 2026 14:05:22 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Tue, 23 Jun 2026 14:05:23 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Tue, 23 Jun 2026 14:05:23 GMT
ENV OTEL_TRACES_EXPORTER=none
# Tue, 23 Jun 2026 14:05:23 GMT
VOLUME [/var/lib/registry]
# Tue, 23 Jun 2026 14:05:23 GMT
EXPOSE map[5000/tcp:{}]
# Tue, 23 Jun 2026 14:05:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 23 Jun 2026 14:05:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jun 2026 14:05:23 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d1b6a4c21a78dbb25159d2e273a4550eac3caff5f0f9a74168efac89740c36`  
		Last Modified: Tue, 23 Jun 2026 14:06:21 GMT  
		Size: 245.5 KB (245467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe99b974a84169b2ca12be6633ba4a7ee840ea1abbd3f6cdbc4b6c42c77beda1`  
		Last Modified: Tue, 23 Jun 2026 14:06:23 GMT  
		Size: 15.3 MB (15316476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c893b5aea44bc331c01e03f12d4257cbea486eb42187ad15e564fa1e687891f3`  
		Last Modified: Tue, 23 Jun 2026 14:06:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba5c7dde5b7db95855936540944aa0f64b7bda800c6fd59737507eb42b3e9ac`  
		Last Modified: Tue, 23 Jun 2026 14:06:21 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1.1` - unknown; unknown

```console
$ docker pull registry@sha256:23c2ca8c8d8430044412eecd31b28adc3be4a0216f43d65c4ca9cc31a7933c9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 KB (263974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47bceea67eb25309c98d71f978a163dee545b6448c1ed376a108203c85c5929e`

```dockerfile
```

-	Layers:
	-	`sha256:dfab2b1e83d442a2c29ce8d5c1eb6fcd58902855a601a67d0e04ebfc78972a45`  
		Last Modified: Tue, 23 Jun 2026 14:06:20 GMT  
		Size: 249.6 KB (249603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a850f3c3ecaf89ed7e0ec1026990ca88ccfbd5f548d65c7950eaee6c7786931`  
		Last Modified: Tue, 23 Jun 2026 14:06:20 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1.1` - linux; s390x

```console
$ docker pull registry@sha256:3258c57f1d3f616a9c806f1a5784a24343b7f87725f8f6ad91dd551069236aed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19315005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd2f7875d22841f8cac8e57cc35361b9e7d3a6edb1db15bd25a30e892c501e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:10:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 22 Jun 2026 20:10:56 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Mon, 22 Jun 2026 20:10:56 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Mon, 22 Jun 2026 20:10:56 GMT
ENV OTEL_TRACES_EXPORTER=none
# Mon, 22 Jun 2026 20:10:56 GMT
VOLUME [/var/lib/registry]
# Mon, 22 Jun 2026 20:10:56 GMT
EXPOSE map[5000/tcp:{}]
# Mon, 22 Jun 2026 20:10:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:10:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:10:56 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470176434bca20b0199baf086b0e5f5cba5a0bee165b8e1094c1885f4df27c81`  
		Last Modified: Mon, 22 Jun 2026 20:11:11 GMT  
		Size: 246.1 KB (246139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:545862897924bceb9b97706f1c73c502840d540e039fbbfa46185c45a6974d23`  
		Last Modified: Mon, 22 Jun 2026 20:11:12 GMT  
		Size: 15.4 MB (15361009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6621ef0e5bc723e6e9b9c7415f73b4722e858f3f3da35efa99743b9f3831adaa`  
		Last Modified: Mon, 22 Jun 2026 20:11:11 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49b26589d17656b50ffc9938cfc210eee544658f1fea6099fcf7f77eb16b247d`  
		Last Modified: Mon, 22 Jun 2026 20:11:11 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1.1` - unknown; unknown

```console
$ docker pull registry@sha256:ff9fcd6da3aa8ae0465188650111b05121da6e14746a25bb053eccb91ca8bf19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.9 KB (263898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dfc6aa19a21eb4a4b8376bcf670f0e355ca90a8fde035b19a2561a8f29c42cf`

```dockerfile
```

-	Layers:
	-	`sha256:9909b60e831886a87b34f8d8e20ec9466084574861f51acff91b12b80b9bc5b1`  
		Last Modified: Mon, 22 Jun 2026 20:11:11 GMT  
		Size: 249.6 KB (249573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02e91698fc78c29df6054e23b67d3e797a740990a861d1b805027443af1d2438`  
		Last Modified: Mon, 22 Jun 2026 20:11:11 GMT  
		Size: 14.3 KB (14325 bytes)  
		MIME: application/vnd.in-toto+json

## `registry:latest`

```console
$ docker pull registry@sha256:849b7d29920d060df8091770ede2279c07924ecd29e2a4c029ee0b5ea2ea542b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `registry:latest` - linux; amd64

```console
$ docker pull registry@sha256:7518da9b12dd746278282a729dee2e65eabdeb449db4d0b28d46ef6e90308f58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 MB (20121269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc3f1a4432290d5ac3341603f15bf99c5b2feb4a9e3195e530aadc66fbcc65e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:53 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 22 Jun 2026 19:52:54 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Mon, 22 Jun 2026 19:52:54 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Mon, 22 Jun 2026 19:52:54 GMT
ENV OTEL_TRACES_EXPORTER=none
# Mon, 22 Jun 2026 19:52:54 GMT
VOLUME [/var/lib/registry]
# Mon, 22 Jun 2026 19:52:54 GMT
EXPOSE map[5000/tcp:{}]
# Mon, 22 Jun 2026 19:52:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 19:52:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 19:52:54 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47465c9fe4b1438b5f9aed1cf7182de26087f6eda66eb23dce944b763673bbed`  
		Last Modified: Mon, 22 Jun 2026 19:53:01 GMT  
		Size: 245.1 KB (245051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:269b60c1a347a7b2501df94ec2391af4c325bb9ef5a0cf5a4e6dd2e87198eb21`  
		Last Modified: Mon, 22 Jun 2026 19:53:02 GMT  
		Size: 16.0 MB (16031187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90c3e90567750f85e63c5ba884e9ef81f4839ab404a8f3dfd306e661018c6a0`  
		Last Modified: Mon, 22 Jun 2026 19:53:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4e1177a675ecd1759cde12c405d158ff166a809659e4006966a2b1a7c87123`  
		Last Modified: Mon, 22 Jun 2026 19:53:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:e648072cc326a080beaf294364129774fcc687e027bdff1b39d8fbf9161f57a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.5 KB (264549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85447bee306edaae59b1a341e1dbc8bf4732a2c09510b8ec46953ed4149418a5`

```dockerfile
```

-	Layers:
	-	`sha256:3f6a72b62a6e961cbb241afcc4d6a96d20be9f435b8846888d483eb85dab6459`  
		Last Modified: Mon, 22 Jun 2026 19:53:01 GMT  
		Size: 250.2 KB (250224 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb37447a81d229f9ac51bff5d3a2ecef9875370c32a92cfc1050178dcbcc79d2`  
		Last Modified: Mon, 22 Jun 2026 19:53:01 GMT  
		Size: 14.3 KB (14325 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:latest` - linux; arm variant v6

```console
$ docker pull registry@sha256:b6c962055ae2606cf181f91c12275fddc416556b9c5fe358741c29e315fb2a9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18715402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f2cdd4c54309071a2c379496fb0b549d72b698be0755835e7703502801e23e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:21 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:53:22 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 17 Sep 2026 21:53:22 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 17 Sep 2026 21:53:22 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 17 Sep 2026 21:53:22 GMT
VOLUME [/var/lib/registry]
# Thu, 17 Sep 2026 21:53:22 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 17 Sep 2026 21:53:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:53:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:22 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ed8926fe805d460445cab5357d1849eb1f933a2aea9865047dffe16a903e81`  
		Last Modified: Thu, 17 Sep 2026 21:53:28 GMT  
		Size: 248.5 KB (248459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42b2b55ca84898bc70e1d51053e24bccf73eb4f2f0af1ed6efe53a4451457951`  
		Last Modified: Thu, 17 Sep 2026 21:53:28 GMT  
		Size: 14.9 MB (14911408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03faa055ba49332ec8e5383db30aca126e820d39382bcb00d8a36f15b327ddd`  
		Last Modified: Thu, 17 Sep 2026 21:53:28 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e91049820ef531fd3ca43071feea1d9863700d3b277a4b1b01727cd00561d3a`  
		Last Modified: Thu, 17 Sep 2026 21:53:28 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:5a4381e0ca6eb14f677e90da12e7f477095da893ae77aed4ec5eab3b82c8b952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d6ebb3530dc7f3103a429a55ef28110fb9fbbebe2e986f896bef8cd3aa38c9`

```dockerfile
```

-	Layers:
	-	`sha256:0382755dcbe03d99adf3e953d94f9520b02e43be24c0b9a92bf8f27e5a0eab16`  
		Last Modified: Thu, 17 Sep 2026 21:53:28 GMT  
		Size: 14.2 KB (14201 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:latest` - linux; arm variant v7

```console
$ docker pull registry@sha256:167116daa2018f21398d3550eccf348d33b14e69a79d63fc12138e010ead3a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18403319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6910ac3bcc3d4201e64b284af1e96d20cc6cc73bdb0cb4cba50a80c3fe555e9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:10 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:53:12 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 17 Sep 2026 21:53:12 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 17 Sep 2026 21:53:12 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 17 Sep 2026 21:53:12 GMT
VOLUME [/var/lib/registry]
# Thu, 17 Sep 2026 21:53:12 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 17 Sep 2026 21:53:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:53:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:12 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e898337927197f93ecc02336ca74a48f0483d9567fbe206624cab30bdc4a1e`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 247.6 KB (247555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae1dbe16a596a0f30bf85205bbbb0a9234ae3f33521768fdc969092bc9ccb788`  
		Last Modified: Thu, 17 Sep 2026 21:53:20 GMT  
		Size: 14.9 MB (14892242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aea5098e9d08a2ca9c0a2aa22d6c442feaed06c109e373779120bd142718418a`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:787f3057d447d74a4f379dd1eac1d21e647d495b13246ae8abbfa90e5adc9c3b`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:89ab2c9b78a23a6d3f6941d0918ec6477514eb00427321d85134baab411b8315
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 KB (264557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44d54157acbb0765092df7569b5390398b2df7fca330176e713ac587b003f949`

```dockerfile
```

-	Layers:
	-	`sha256:509e49d3ad5f95530dcbddc5f7c640e4b65df9998214fe68bfcb98fff42e69ac`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 250.1 KB (250139 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fbfca3bea83792b43d3670169a3a570166abb5b0752529995d253767c841047`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 14.4 KB (14418 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:latest` - linux; arm64 variant v8

```console
$ docker pull registry@sha256:16c9340cae30cbf9b5ced3f3e77340f3bf4064971685540f4257a0254069c6b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18830129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d28f1b4ff6974f686144907e64ef2e32d22f01c78f66be395cf4ee410fec5ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:14 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:34:15 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 17 Sep 2026 21:34:15 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 17 Sep 2026 21:34:15 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 17 Sep 2026 21:34:15 GMT
VOLUME [/var/lib/registry]
# Thu, 17 Sep 2026 21:34:15 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 17 Sep 2026 21:34:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:34:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:34:15 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c88dbdab2c4985db246b53b122e7217f4676f297a2744cc70c868bf63e5b9912`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 249.8 KB (249840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d89d8769804478b12ea5a69e6909db8d4a6556ed0640af719384257e836920a2`  
		Last Modified: Thu, 17 Sep 2026 21:34:23 GMT  
		Size: 14.4 MB (14393623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98ecc695dabd736ff7b8620769417b16e738f767b0b7550c289f501bd1493d5`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cae7938a91e6fb070c2218ba798031a87883fb96ccab7470a43e6bcdff6b87e`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:8971342d48e86d62bcad0209521589d3516a2335c3dc1a03e293bf6425160c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.4 KB (265366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:883b47e23a8e8d1366e9dd24c44e3d0734c9b217ec6c355af4795aa07c5f5638`

```dockerfile
```

-	Layers:
	-	`sha256:48d38c75d78715b11e2de8409d4b06683bae524d187d922912b9735d4096e450`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 250.9 KB (250923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78e3f5e6724e14ef90f39516892e71ccee92c720637d8a3679125c484a50f8b4`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 14.4 KB (14443 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:latest` - linux; ppc64le

```console
$ docker pull registry@sha256:8743d907b6cdb2dd87f4ed94f822fd154b89063c523a09c242b909ff017f910b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18375981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f76541ae81a4b1d1ccca4ebc0385717d7c4bacfcb2c034053169d1e34a54eb6f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:49:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
ENV OTEL_TRACES_EXPORTER=none
# Mon, 22 Jun 2026 20:49:27 GMT
VOLUME [/var/lib/registry]
# Mon, 22 Jun 2026 20:49:27 GMT
EXPOSE map[5000/tcp:{}]
# Mon, 22 Jun 2026 20:49:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:49:27 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2afe4ddf70535a87895dd2928115f13eed6bd80bb630863f6b224ede37a652`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 247.9 KB (247906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6560a44fce175ef47acf06550554be08c32cfcf71234304c92a0c75addf0b78`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 14.3 MB (14315166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cd5fdef66691aba6224a0396b74054fe2dafc926047862087ba3588eabbddd1`  
		Last Modified: Mon, 22 Jun 2026 20:49:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c56ebedf1ae387efff134db775c1b0b4ee1620769345e48f68a80ef0273f50`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:75f230ee32b15a03df499965af1a343bb46c2a63cb1b39ad27f9e3b028fde7f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 KB (263978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71897556fbe1f7c56e5b37daceb2deeb74fd011fb04fee6437999dcb5900a23f`

```dockerfile
```

-	Layers:
	-	`sha256:6fc344e4c8c00da110031c1eda4bb79b2d63ff8a9f4d5256e4bac361759204d0`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 249.6 KB (249607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:789ecb938ce7bb106c3aa07f346d8a17b45b611ec278ac19b4961d1c3d3e1141`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:latest` - linux; riscv64

```console
$ docker pull registry@sha256:50a4402473f31a470e7427e96fc52b14ea33af25b96ac3b08f69d07ca3c696a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19135793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9afedb42ee0c533e1776d2de277e9ba5fbdd64993017b5f6a45118fbe134462`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 14:05:16 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 23 Jun 2026 14:05:22 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Tue, 23 Jun 2026 14:05:23 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Tue, 23 Jun 2026 14:05:23 GMT
ENV OTEL_TRACES_EXPORTER=none
# Tue, 23 Jun 2026 14:05:23 GMT
VOLUME [/var/lib/registry]
# Tue, 23 Jun 2026 14:05:23 GMT
EXPOSE map[5000/tcp:{}]
# Tue, 23 Jun 2026 14:05:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 23 Jun 2026 14:05:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jun 2026 14:05:23 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d1b6a4c21a78dbb25159d2e273a4550eac3caff5f0f9a74168efac89740c36`  
		Last Modified: Tue, 23 Jun 2026 14:06:21 GMT  
		Size: 245.5 KB (245467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe99b974a84169b2ca12be6633ba4a7ee840ea1abbd3f6cdbc4b6c42c77beda1`  
		Last Modified: Tue, 23 Jun 2026 14:06:23 GMT  
		Size: 15.3 MB (15316476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c893b5aea44bc331c01e03f12d4257cbea486eb42187ad15e564fa1e687891f3`  
		Last Modified: Tue, 23 Jun 2026 14:06:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba5c7dde5b7db95855936540944aa0f64b7bda800c6fd59737507eb42b3e9ac`  
		Last Modified: Tue, 23 Jun 2026 14:06:21 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:23c2ca8c8d8430044412eecd31b28adc3be4a0216f43d65c4ca9cc31a7933c9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 KB (263974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47bceea67eb25309c98d71f978a163dee545b6448c1ed376a108203c85c5929e`

```dockerfile
```

-	Layers:
	-	`sha256:dfab2b1e83d442a2c29ce8d5c1eb6fcd58902855a601a67d0e04ebfc78972a45`  
		Last Modified: Tue, 23 Jun 2026 14:06:20 GMT  
		Size: 249.6 KB (249603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a850f3c3ecaf89ed7e0ec1026990ca88ccfbd5f548d65c7950eaee6c7786931`  
		Last Modified: Tue, 23 Jun 2026 14:06:20 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:latest` - linux; s390x

```console
$ docker pull registry@sha256:3258c57f1d3f616a9c806f1a5784a24343b7f87725f8f6ad91dd551069236aed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19315005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd2f7875d22841f8cac8e57cc35361b9e7d3a6edb1db15bd25a30e892c501e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:10:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 22 Jun 2026 20:10:56 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Mon, 22 Jun 2026 20:10:56 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Mon, 22 Jun 2026 20:10:56 GMT
ENV OTEL_TRACES_EXPORTER=none
# Mon, 22 Jun 2026 20:10:56 GMT
VOLUME [/var/lib/registry]
# Mon, 22 Jun 2026 20:10:56 GMT
EXPOSE map[5000/tcp:{}]
# Mon, 22 Jun 2026 20:10:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:10:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:10:56 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470176434bca20b0199baf086b0e5f5cba5a0bee165b8e1094c1885f4df27c81`  
		Last Modified: Mon, 22 Jun 2026 20:11:11 GMT  
		Size: 246.1 KB (246139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:545862897924bceb9b97706f1c73c502840d540e039fbbfa46185c45a6974d23`  
		Last Modified: Mon, 22 Jun 2026 20:11:12 GMT  
		Size: 15.4 MB (15361009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6621ef0e5bc723e6e9b9c7415f73b4722e858f3f3da35efa99743b9f3831adaa`  
		Last Modified: Mon, 22 Jun 2026 20:11:11 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49b26589d17656b50ffc9938cfc210eee544658f1fea6099fcf7f77eb16b247d`  
		Last Modified: Mon, 22 Jun 2026 20:11:11 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:ff9fcd6da3aa8ae0465188650111b05121da6e14746a25bb053eccb91ca8bf19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.9 KB (263898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dfc6aa19a21eb4a4b8376bcf670f0e355ca90a8fde035b19a2561a8f29c42cf`

```dockerfile
```

-	Layers:
	-	`sha256:9909b60e831886a87b34f8d8e20ec9466084574861f51acff91b12b80b9bc5b1`  
		Last Modified: Mon, 22 Jun 2026 20:11:11 GMT  
		Size: 249.6 KB (249573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02e91698fc78c29df6054e23b67d3e797a740990a861d1b805027443af1d2438`  
		Last Modified: Mon, 22 Jun 2026 20:11:11 GMT  
		Size: 14.3 KB (14325 bytes)  
		MIME: application/vnd.in-toto+json
