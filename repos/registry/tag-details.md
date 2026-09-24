<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `registry`

-	[`registry:3`](#registry3)
-	[`registry:3.1`](#registry31)
-	[`registry:3.1.2`](#registry312)
-	[`registry:latest`](#registrylatest)

## `registry:3`

```console
$ docker pull registry@sha256:325b4b29b041e82803abeb703e201655e4e23ab83264ec1a7c9ddb0a5b14a6e0
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
$ docker pull registry@sha256:3d527cee870ddd0fc8a31f99b2fdfb6451801a8dd4f5a92c1ec36dae24c14274
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 MB (20127812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18d4e31e052829d782e13941820382387c2949e622751b0dc6ccd97cccfa0792`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:32:56 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:32:57 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 17 Sep 2026 21:32:57 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 17 Sep 2026 21:32:57 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 17 Sep 2026 21:32:57 GMT
VOLUME [/var/lib/registry]
# Thu, 17 Sep 2026 21:32:57 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 17 Sep 2026 21:32:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:32:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:32:57 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a11e5e50f04a7d790a7432516de162cb5c3ed7865486b70e423fa4a5f11084c`  
		Last Modified: Thu, 17 Sep 2026 21:33:04 GMT  
		Size: 247.5 KB (247508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a6dafad43fb450ca634239ab4ef1f872a9cbd68cf443fe6f274e0a670a3c92e`  
		Last Modified: Thu, 17 Sep 2026 21:33:05 GMT  
		Size: 16.0 MB (16031187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18803f8dd229ffe8ce52f6cf312986e64fc616f679a544370720701307a648e1`  
		Last Modified: Thu, 17 Sep 2026 21:33:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:884de165200caa9c6a1607c789abc414cb791ecf5c70375d7e863d46a74f6542`  
		Last Modified: Thu, 17 Sep 2026 21:33:04 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3` - unknown; unknown

```console
$ docker pull registry@sha256:5b25c625def8e447a22b40828ac24219d863ad1a8c435a4742c54ca970f77f0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 KB (265841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5e0d57daf6312a99aecdbba3d9d539dae74c42d8a77ae08e7fe1ec47e2bb85`

```dockerfile
```

-	Layers:
	-	`sha256:9cf8142aecac1aa6a453c19c3ecab5a1be83ac2f613a257f917114b42330d5dc`  
		Last Modified: Thu, 17 Sep 2026 21:33:04 GMT  
		Size: 251.5 KB (251517 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e89d002cbf37edf6333e8f13c4c5446f037dcff13f002713a0ba8061174605f4`  
		Last Modified: Thu, 17 Sep 2026 21:33:04 GMT  
		Size: 14.3 KB (14324 bytes)  
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
$ docker pull registry@sha256:dd73731d3b0c49d397940e4bcf09b3f9f0cbb25109c20fe431b6e9b85897d064
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18380782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64187063c9b671d7c8e38521ae3cabd9dda0aa7bf75367c442a237ffc7088c10`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:46:43 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 23:46:45 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 17 Sep 2026 23:46:45 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 17 Sep 2026 23:46:46 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 17 Sep 2026 23:46:46 GMT
VOLUME [/var/lib/registry]
# Thu, 17 Sep 2026 23:46:46 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 17 Sep 2026 23:46:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 23:46:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 23:46:46 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e7d755fbc89975a56671fb9c66c0475cd0c3d985931f98beed5cc993d42210`  
		Last Modified: Thu, 17 Sep 2026 23:46:58 GMT  
		Size: 250.2 KB (250238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f3783b1779bb01cbe848ec6282d0c0f8736e0e0632485adcc9b92f30250b27a`  
		Last Modified: Thu, 17 Sep 2026 23:46:59 GMT  
		Size: 14.3 MB (14315166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e56a60abd7ba866376bf9de9df586a99129f9d19232b4e42cab02368925af5`  
		Last Modified: Thu, 17 Sep 2026 23:46:58 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a27b3bf91f4d7697f5b31d10be53f6e8d9125aa34d61a39ec91d4acd8a33d201`  
		Last Modified: Thu, 17 Sep 2026 23:46:59 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3` - unknown; unknown

```console
$ docker pull registry@sha256:4e215ddf604f8bfe43f92523edcb6a708a32c9b1fdda74e5eb71d8f1f1fa2ce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 KB (265270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25b6e72dbf9addbf44756a8b3a150e889c884a69b29869d359895310ef301956`

```dockerfile
```

-	Layers:
	-	`sha256:bd89f1ebc378506ce4228a0a692ed4b3891da65f2771505e377a135c7a01fbee`  
		Last Modified: Thu, 17 Sep 2026 23:46:58 GMT  
		Size: 250.9 KB (250900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f0b3d7416cb8188e9a4ca5b8f7321623004d8cb79af5d96745f58f898ed4a4b`  
		Last Modified: Thu, 17 Sep 2026 23:46:58 GMT  
		Size: 14.4 KB (14370 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3` - linux; riscv64

```console
$ docker pull registry@sha256:d9b02f0dff163a708fb12c7621ce745bcf4ce942b609cd79be04d4b762d53ea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19141378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe41742b4151ded664003f7ae88151417f0b9cd8c8ad10b738e04abd5731d8c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:45:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 21 Sep 2026 09:46:01 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Mon, 21 Sep 2026 09:46:01 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Mon, 21 Sep 2026 09:46:01 GMT
ENV OTEL_TRACES_EXPORTER=none
# Mon, 21 Sep 2026 09:46:01 GMT
VOLUME [/var/lib/registry]
# Mon, 21 Sep 2026 09:46:01 GMT
EXPOSE map[5000/tcp:{}]
# Mon, 21 Sep 2026 09:46:01 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 09:46:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 21 Sep 2026 09:46:01 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a26110e639e5c2f5ae2a279e28220c86acc4835d7de4818e4ea9064ba9bcf1f`  
		Last Modified: Mon, 21 Sep 2026 09:47:07 GMT  
		Size: 248.0 KB (247955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ade842977f10bef3e3cba2522d1e7a010382f2d19f5603afcde474c1cbb8a1b`  
		Last Modified: Mon, 21 Sep 2026 09:47:09 GMT  
		Size: 15.3 MB (15316491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afaa2d47cb38982b3b6c32e912f74fc40992d98d6c6c5618aade12cf60627b35`  
		Last Modified: Mon, 21 Sep 2026 09:47:07 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71f0ed8e7abf883953776fcfbfc1789cc19aedaf42265c6c82ed3201f462db36`  
		Last Modified: Mon, 21 Sep 2026 09:47:07 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3` - unknown; unknown

```console
$ docker pull registry@sha256:2c748b2e4b0e57bc4e1f5fa40330377041a842c9d98214acd5b29a84ce432a53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 KB (265267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef74b36768b0f9e7c8a9cf7bb56233a6aa15f8da386e7e5a0f7974498229bf4`

```dockerfile
```

-	Layers:
	-	`sha256:316af2572dd44a25bce8de4a6baa0785c3e890c2fcdf41741214d9252b6a4c87`  
		Last Modified: Mon, 21 Sep 2026 09:47:07 GMT  
		Size: 250.9 KB (250896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b3b4375c86b8ecc15bea3ebb62b8ea74c91225104da312041c15fc3a96d58c1`  
		Last Modified: Mon, 21 Sep 2026 09:47:06 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3` - linux; s390x

```console
$ docker pull registry@sha256:0058fc29be2338c4b569023bd55d7bb9a5cf549dbbf5e8bc349a2e837832cb89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19323446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:340cde8ee4214f7973755f0d96222857d828485aa676702efff9f91fb1d989a9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:21:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 23:21:26 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 17 Sep 2026 23:21:26 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 17 Sep 2026 23:21:26 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 17 Sep 2026 23:21:26 GMT
VOLUME [/var/lib/registry]
# Thu, 17 Sep 2026 23:21:26 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 17 Sep 2026 23:21:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 23:21:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 23:21:26 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ddfaec3be95f27dd8946c7aeea6d7456f6d56bd3d2fabdbe4078df7699d3eb`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 248.6 KB (248571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b325eea358dfe6ea734241e4bb72ccde22a126e3588ddd442607dec39cd9b46f`  
		Last Modified: Thu, 17 Sep 2026 23:21:38 GMT  
		Size: 15.4 MB (15361009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8dedec0c96540e96bdd31c1be6b5ff982fa22dbb9e7162b7f2f17c657dfcab`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b37a7c88145d07374029f030c42fd20a13bc30d40113923cf14f0ef78a0590d4`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3` - unknown; unknown

```console
$ docker pull registry@sha256:249bc30d1f874a5bc8eab625bda070b8e60c7b73a0206b97f1866f9b6aa501af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 KB (265191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53919b47b56df7e75ea1024e7aaf92c29d00a9b59e4570e649d4cd29e8c10fee`

```dockerfile
```

-	Layers:
	-	`sha256:a597631d43b0654a3ce502d29fdb6b456bfce048fb74669a942b7014c55dde3a`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 250.9 KB (250866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70382ecd7a24982f1db6e2aeb0a1bdeb34bf9ddfb5be77c51c908efecb936f12`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 14.3 KB (14325 bytes)  
		MIME: application/vnd.in-toto+json

## `registry:3.1`

```console
$ docker pull registry@sha256:325b4b29b041e82803abeb703e201655e4e23ab83264ec1a7c9ddb0a5b14a6e0
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
$ docker pull registry@sha256:3d527cee870ddd0fc8a31f99b2fdfb6451801a8dd4f5a92c1ec36dae24c14274
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 MB (20127812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18d4e31e052829d782e13941820382387c2949e622751b0dc6ccd97cccfa0792`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:32:56 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:32:57 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 17 Sep 2026 21:32:57 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 17 Sep 2026 21:32:57 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 17 Sep 2026 21:32:57 GMT
VOLUME [/var/lib/registry]
# Thu, 17 Sep 2026 21:32:57 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 17 Sep 2026 21:32:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:32:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:32:57 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a11e5e50f04a7d790a7432516de162cb5c3ed7865486b70e423fa4a5f11084c`  
		Last Modified: Thu, 17 Sep 2026 21:33:04 GMT  
		Size: 247.5 KB (247508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a6dafad43fb450ca634239ab4ef1f872a9cbd68cf443fe6f274e0a670a3c92e`  
		Last Modified: Thu, 17 Sep 2026 21:33:05 GMT  
		Size: 16.0 MB (16031187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18803f8dd229ffe8ce52f6cf312986e64fc616f679a544370720701307a648e1`  
		Last Modified: Thu, 17 Sep 2026 21:33:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:884de165200caa9c6a1607c789abc414cb791ecf5c70375d7e863d46a74f6542`  
		Last Modified: Thu, 17 Sep 2026 21:33:04 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1` - unknown; unknown

```console
$ docker pull registry@sha256:5b25c625def8e447a22b40828ac24219d863ad1a8c435a4742c54ca970f77f0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 KB (265841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5e0d57daf6312a99aecdbba3d9d539dae74c42d8a77ae08e7fe1ec47e2bb85`

```dockerfile
```

-	Layers:
	-	`sha256:9cf8142aecac1aa6a453c19c3ecab5a1be83ac2f613a257f917114b42330d5dc`  
		Last Modified: Thu, 17 Sep 2026 21:33:04 GMT  
		Size: 251.5 KB (251517 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e89d002cbf37edf6333e8f13c4c5446f037dcff13f002713a0ba8061174605f4`  
		Last Modified: Thu, 17 Sep 2026 21:33:04 GMT  
		Size: 14.3 KB (14324 bytes)  
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
$ docker pull registry@sha256:dd73731d3b0c49d397940e4bcf09b3f9f0cbb25109c20fe431b6e9b85897d064
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18380782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64187063c9b671d7c8e38521ae3cabd9dda0aa7bf75367c442a237ffc7088c10`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:46:43 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 23:46:45 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 17 Sep 2026 23:46:45 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 17 Sep 2026 23:46:46 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 17 Sep 2026 23:46:46 GMT
VOLUME [/var/lib/registry]
# Thu, 17 Sep 2026 23:46:46 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 17 Sep 2026 23:46:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 23:46:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 23:46:46 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e7d755fbc89975a56671fb9c66c0475cd0c3d985931f98beed5cc993d42210`  
		Last Modified: Thu, 17 Sep 2026 23:46:58 GMT  
		Size: 250.2 KB (250238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f3783b1779bb01cbe848ec6282d0c0f8736e0e0632485adcc9b92f30250b27a`  
		Last Modified: Thu, 17 Sep 2026 23:46:59 GMT  
		Size: 14.3 MB (14315166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e56a60abd7ba866376bf9de9df586a99129f9d19232b4e42cab02368925af5`  
		Last Modified: Thu, 17 Sep 2026 23:46:58 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a27b3bf91f4d7697f5b31d10be53f6e8d9125aa34d61a39ec91d4acd8a33d201`  
		Last Modified: Thu, 17 Sep 2026 23:46:59 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1` - unknown; unknown

```console
$ docker pull registry@sha256:4e215ddf604f8bfe43f92523edcb6a708a32c9b1fdda74e5eb71d8f1f1fa2ce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 KB (265270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25b6e72dbf9addbf44756a8b3a150e889c884a69b29869d359895310ef301956`

```dockerfile
```

-	Layers:
	-	`sha256:bd89f1ebc378506ce4228a0a692ed4b3891da65f2771505e377a135c7a01fbee`  
		Last Modified: Thu, 17 Sep 2026 23:46:58 GMT  
		Size: 250.9 KB (250900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f0b3d7416cb8188e9a4ca5b8f7321623004d8cb79af5d96745f58f898ed4a4b`  
		Last Modified: Thu, 17 Sep 2026 23:46:58 GMT  
		Size: 14.4 KB (14370 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1` - linux; riscv64

```console
$ docker pull registry@sha256:d9b02f0dff163a708fb12c7621ce745bcf4ce942b609cd79be04d4b762d53ea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19141378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe41742b4151ded664003f7ae88151417f0b9cd8c8ad10b738e04abd5731d8c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:45:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 21 Sep 2026 09:46:01 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Mon, 21 Sep 2026 09:46:01 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Mon, 21 Sep 2026 09:46:01 GMT
ENV OTEL_TRACES_EXPORTER=none
# Mon, 21 Sep 2026 09:46:01 GMT
VOLUME [/var/lib/registry]
# Mon, 21 Sep 2026 09:46:01 GMT
EXPOSE map[5000/tcp:{}]
# Mon, 21 Sep 2026 09:46:01 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 09:46:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 21 Sep 2026 09:46:01 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a26110e639e5c2f5ae2a279e28220c86acc4835d7de4818e4ea9064ba9bcf1f`  
		Last Modified: Mon, 21 Sep 2026 09:47:07 GMT  
		Size: 248.0 KB (247955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ade842977f10bef3e3cba2522d1e7a010382f2d19f5603afcde474c1cbb8a1b`  
		Last Modified: Mon, 21 Sep 2026 09:47:09 GMT  
		Size: 15.3 MB (15316491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afaa2d47cb38982b3b6c32e912f74fc40992d98d6c6c5618aade12cf60627b35`  
		Last Modified: Mon, 21 Sep 2026 09:47:07 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71f0ed8e7abf883953776fcfbfc1789cc19aedaf42265c6c82ed3201f462db36`  
		Last Modified: Mon, 21 Sep 2026 09:47:07 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1` - unknown; unknown

```console
$ docker pull registry@sha256:2c748b2e4b0e57bc4e1f5fa40330377041a842c9d98214acd5b29a84ce432a53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 KB (265267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef74b36768b0f9e7c8a9cf7bb56233a6aa15f8da386e7e5a0f7974498229bf4`

```dockerfile
```

-	Layers:
	-	`sha256:316af2572dd44a25bce8de4a6baa0785c3e890c2fcdf41741214d9252b6a4c87`  
		Last Modified: Mon, 21 Sep 2026 09:47:07 GMT  
		Size: 250.9 KB (250896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b3b4375c86b8ecc15bea3ebb62b8ea74c91225104da312041c15fc3a96d58c1`  
		Last Modified: Mon, 21 Sep 2026 09:47:06 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1` - linux; s390x

```console
$ docker pull registry@sha256:0058fc29be2338c4b569023bd55d7bb9a5cf549dbbf5e8bc349a2e837832cb89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19323446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:340cde8ee4214f7973755f0d96222857d828485aa676702efff9f91fb1d989a9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:21:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 23:21:26 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 17 Sep 2026 23:21:26 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 17 Sep 2026 23:21:26 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 17 Sep 2026 23:21:26 GMT
VOLUME [/var/lib/registry]
# Thu, 17 Sep 2026 23:21:26 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 17 Sep 2026 23:21:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 23:21:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 23:21:26 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ddfaec3be95f27dd8946c7aeea6d7456f6d56bd3d2fabdbe4078df7699d3eb`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 248.6 KB (248571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b325eea358dfe6ea734241e4bb72ccde22a126e3588ddd442607dec39cd9b46f`  
		Last Modified: Thu, 17 Sep 2026 23:21:38 GMT  
		Size: 15.4 MB (15361009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8dedec0c96540e96bdd31c1be6b5ff982fa22dbb9e7162b7f2f17c657dfcab`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b37a7c88145d07374029f030c42fd20a13bc30d40113923cf14f0ef78a0590d4`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1` - unknown; unknown

```console
$ docker pull registry@sha256:249bc30d1f874a5bc8eab625bda070b8e60c7b73a0206b97f1866f9b6aa501af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 KB (265191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53919b47b56df7e75ea1024e7aaf92c29d00a9b59e4570e649d4cd29e8c10fee`

```dockerfile
```

-	Layers:
	-	`sha256:a597631d43b0654a3ce502d29fdb6b456bfce048fb74669a942b7014c55dde3a`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 250.9 KB (250866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70382ecd7a24982f1db6e2aeb0a1bdeb34bf9ddfb5be77c51c908efecb936f12`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 14.3 KB (14325 bytes)  
		MIME: application/vnd.in-toto+json

## `registry:3.1.2`

**does not exist** (yet?)

## `registry:latest`

```console
$ docker pull registry@sha256:325b4b29b041e82803abeb703e201655e4e23ab83264ec1a7c9ddb0a5b14a6e0
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
$ docker pull registry@sha256:3d527cee870ddd0fc8a31f99b2fdfb6451801a8dd4f5a92c1ec36dae24c14274
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 MB (20127812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18d4e31e052829d782e13941820382387c2949e622751b0dc6ccd97cccfa0792`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:32:56 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:32:57 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 17 Sep 2026 21:32:57 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 17 Sep 2026 21:32:57 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 17 Sep 2026 21:32:57 GMT
VOLUME [/var/lib/registry]
# Thu, 17 Sep 2026 21:32:57 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 17 Sep 2026 21:32:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:32:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:32:57 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a11e5e50f04a7d790a7432516de162cb5c3ed7865486b70e423fa4a5f11084c`  
		Last Modified: Thu, 17 Sep 2026 21:33:04 GMT  
		Size: 247.5 KB (247508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a6dafad43fb450ca634239ab4ef1f872a9cbd68cf443fe6f274e0a670a3c92e`  
		Last Modified: Thu, 17 Sep 2026 21:33:05 GMT  
		Size: 16.0 MB (16031187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18803f8dd229ffe8ce52f6cf312986e64fc616f679a544370720701307a648e1`  
		Last Modified: Thu, 17 Sep 2026 21:33:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:884de165200caa9c6a1607c789abc414cb791ecf5c70375d7e863d46a74f6542`  
		Last Modified: Thu, 17 Sep 2026 21:33:04 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:5b25c625def8e447a22b40828ac24219d863ad1a8c435a4742c54ca970f77f0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 KB (265841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5e0d57daf6312a99aecdbba3d9d539dae74c42d8a77ae08e7fe1ec47e2bb85`

```dockerfile
```

-	Layers:
	-	`sha256:9cf8142aecac1aa6a453c19c3ecab5a1be83ac2f613a257f917114b42330d5dc`  
		Last Modified: Thu, 17 Sep 2026 21:33:04 GMT  
		Size: 251.5 KB (251517 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e89d002cbf37edf6333e8f13c4c5446f037dcff13f002713a0ba8061174605f4`  
		Last Modified: Thu, 17 Sep 2026 21:33:04 GMT  
		Size: 14.3 KB (14324 bytes)  
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
$ docker pull registry@sha256:dd73731d3b0c49d397940e4bcf09b3f9f0cbb25109c20fe431b6e9b85897d064
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18380782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64187063c9b671d7c8e38521ae3cabd9dda0aa7bf75367c442a237ffc7088c10`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:46:43 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 23:46:45 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 17 Sep 2026 23:46:45 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 17 Sep 2026 23:46:46 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 17 Sep 2026 23:46:46 GMT
VOLUME [/var/lib/registry]
# Thu, 17 Sep 2026 23:46:46 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 17 Sep 2026 23:46:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 23:46:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 23:46:46 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e7d755fbc89975a56671fb9c66c0475cd0c3d985931f98beed5cc993d42210`  
		Last Modified: Thu, 17 Sep 2026 23:46:58 GMT  
		Size: 250.2 KB (250238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f3783b1779bb01cbe848ec6282d0c0f8736e0e0632485adcc9b92f30250b27a`  
		Last Modified: Thu, 17 Sep 2026 23:46:59 GMT  
		Size: 14.3 MB (14315166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e56a60abd7ba866376bf9de9df586a99129f9d19232b4e42cab02368925af5`  
		Last Modified: Thu, 17 Sep 2026 23:46:58 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a27b3bf91f4d7697f5b31d10be53f6e8d9125aa34d61a39ec91d4acd8a33d201`  
		Last Modified: Thu, 17 Sep 2026 23:46:59 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:4e215ddf604f8bfe43f92523edcb6a708a32c9b1fdda74e5eb71d8f1f1fa2ce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 KB (265270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25b6e72dbf9addbf44756a8b3a150e889c884a69b29869d359895310ef301956`

```dockerfile
```

-	Layers:
	-	`sha256:bd89f1ebc378506ce4228a0a692ed4b3891da65f2771505e377a135c7a01fbee`  
		Last Modified: Thu, 17 Sep 2026 23:46:58 GMT  
		Size: 250.9 KB (250900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f0b3d7416cb8188e9a4ca5b8f7321623004d8cb79af5d96745f58f898ed4a4b`  
		Last Modified: Thu, 17 Sep 2026 23:46:58 GMT  
		Size: 14.4 KB (14370 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:latest` - linux; riscv64

```console
$ docker pull registry@sha256:d9b02f0dff163a708fb12c7621ce745bcf4ce942b609cd79be04d4b762d53ea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19141378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe41742b4151ded664003f7ae88151417f0b9cd8c8ad10b738e04abd5731d8c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:45:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 21 Sep 2026 09:46:01 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Mon, 21 Sep 2026 09:46:01 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Mon, 21 Sep 2026 09:46:01 GMT
ENV OTEL_TRACES_EXPORTER=none
# Mon, 21 Sep 2026 09:46:01 GMT
VOLUME [/var/lib/registry]
# Mon, 21 Sep 2026 09:46:01 GMT
EXPOSE map[5000/tcp:{}]
# Mon, 21 Sep 2026 09:46:01 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 09:46:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 21 Sep 2026 09:46:01 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a26110e639e5c2f5ae2a279e28220c86acc4835d7de4818e4ea9064ba9bcf1f`  
		Last Modified: Mon, 21 Sep 2026 09:47:07 GMT  
		Size: 248.0 KB (247955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ade842977f10bef3e3cba2522d1e7a010382f2d19f5603afcde474c1cbb8a1b`  
		Last Modified: Mon, 21 Sep 2026 09:47:09 GMT  
		Size: 15.3 MB (15316491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afaa2d47cb38982b3b6c32e912f74fc40992d98d6c6c5618aade12cf60627b35`  
		Last Modified: Mon, 21 Sep 2026 09:47:07 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71f0ed8e7abf883953776fcfbfc1789cc19aedaf42265c6c82ed3201f462db36`  
		Last Modified: Mon, 21 Sep 2026 09:47:07 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:2c748b2e4b0e57bc4e1f5fa40330377041a842c9d98214acd5b29a84ce432a53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 KB (265267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef74b36768b0f9e7c8a9cf7bb56233a6aa15f8da386e7e5a0f7974498229bf4`

```dockerfile
```

-	Layers:
	-	`sha256:316af2572dd44a25bce8de4a6baa0785c3e890c2fcdf41741214d9252b6a4c87`  
		Last Modified: Mon, 21 Sep 2026 09:47:07 GMT  
		Size: 250.9 KB (250896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b3b4375c86b8ecc15bea3ebb62b8ea74c91225104da312041c15fc3a96d58c1`  
		Last Modified: Mon, 21 Sep 2026 09:47:06 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:latest` - linux; s390x

```console
$ docker pull registry@sha256:0058fc29be2338c4b569023bd55d7bb9a5cf549dbbf5e8bc349a2e837832cb89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19323446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:340cde8ee4214f7973755f0d96222857d828485aa676702efff9f91fb1d989a9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:21:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 23:21:26 GMT
RUN set -eux; 	version='3.1.1'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='6f330a3ba9ea1d23a6ee189f449d792595240585bb2f159123d76ac594f70dd8' ;; 		aarch64) arch='arm64';   sha256='8167316d2b4a57e10d44f8c8a3c75fea5f3ec1c71872760bb903e5e8e52e9ad6' ;; 		armhf)   arch='armv6';   sha256='8cf93e43dfddb195f46dcf3e643d021f29c689a2662d1edb1e70f536f380e3ba' ;; 		armv7)   arch='armv7';   sha256='23bfb562d2b41dc6cb800fc7a2ea682071999ebb4c6e7c8162988bc49eb10ec3' ;; 		ppc64le) arch='ppc64le'; sha256='7f7e126b18b3deb1eecf14824bd80215cda6a10bb07a47c7c42268319cf5b305' ;; 		s390x)   arch='s390x';   sha256='27f5f3237a6332b129d7383066eee99f15759f9add9304fbf283cef1e3803041' ;; 		riscv64) arch='riscv64'; sha256='a64bb17c994885382c977d73695a3f000e884c25b8e5aa14857fedaa096619bb' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 17 Sep 2026 23:21:26 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 17 Sep 2026 23:21:26 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 17 Sep 2026 23:21:26 GMT
VOLUME [/var/lib/registry]
# Thu, 17 Sep 2026 23:21:26 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 17 Sep 2026 23:21:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 23:21:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 23:21:26 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ddfaec3be95f27dd8946c7aeea6d7456f6d56bd3d2fabdbe4078df7699d3eb`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 248.6 KB (248571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b325eea358dfe6ea734241e4bb72ccde22a126e3588ddd442607dec39cd9b46f`  
		Last Modified: Thu, 17 Sep 2026 23:21:38 GMT  
		Size: 15.4 MB (15361009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8dedec0c96540e96bdd31c1be6b5ff982fa22dbb9e7162b7f2f17c657dfcab`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b37a7c88145d07374029f030c42fd20a13bc30d40113923cf14f0ef78a0590d4`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:249bc30d1f874a5bc8eab625bda070b8e60c7b73a0206b97f1866f9b6aa501af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 KB (265191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53919b47b56df7e75ea1024e7aaf92c29d00a9b59e4570e649d4cd29e8c10fee`

```dockerfile
```

-	Layers:
	-	`sha256:a597631d43b0654a3ce502d29fdb6b456bfce048fb74669a942b7014c55dde3a`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 250.9 KB (250866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70382ecd7a24982f1db6e2aeb0a1bdeb34bf9ddfb5be77c51c908efecb936f12`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 14.3 KB (14325 bytes)  
		MIME: application/vnd.in-toto+json
