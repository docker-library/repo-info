<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `emqx`

-	[`emqx:5`](#emqx5)
-	[`emqx:5.7`](#emqx57)
-	[`emqx:5.7.2`](#emqx572)
-	[`emqx:5.8`](#emqx58)
-	[`emqx:5.8.8`](#emqx588)
-	[`emqx:latest`](#emqxlatest)

## `emqx:5`

```console
$ docker pull emqx@sha256:d761f6355267180f6af6970550e75dbaecb4e7a8ce493c9031c692397ec30332
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5` - linux; amd64

```console
$ docker pull emqx@sha256:168068447bcd85c0a763f39e05746551a72c77645301ad80148aeef099b49d3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108482068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4342337eacceac7694a9ad2b2874008890cd0ad4adc2adebcfced148b3d63d`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:12:52 GMT
ENV EMQX_VERSION=5.8.8
# Thu, 05 Nov 2026 07:12:52 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Thu, 05 Nov 2026 07:12:52 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Thu, 05 Nov 2026 07:12:52 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Thu, 05 Nov 2026 07:12:52 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 07:12:52 GMT
WORKDIR /opt/emqx
# Thu, 05 Nov 2026 07:12:52 GMT
USER emqx
# Thu, 05 Nov 2026 07:12:52 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Thu, 05 Nov 2026 07:12:52 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Thu, 05 Nov 2026 07:12:52 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Thu, 05 Nov 2026 07:12:52 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:12:52 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0932842385790792f8d40852838e06864b7a21490ee0b31a891f9ae66726d11`  
		Last Modified: Thu, 05 Nov 2026 07:13:06 GMT  
		Size: 78.6 MB (78624870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06470becd7a81f01c3884aff59a761e828033d21e06c90d62680cb6f4a0fec0`  
		Last Modified: Thu, 05 Nov 2026 07:13:04 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5` - unknown; unknown

```console
$ docker pull emqx@sha256:2af1be3a0ec963fad42bbfd8beb80a5834ae704bd54e8223cfc23fe71c93215c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32952927ec70df94c1de7a09eb49542fb49d62ed48079f4885cc3debb997579a`

```dockerfile
```

-	Layers:
	-	`sha256:2233e10663fbfcc28f2d227f8060ed6efc6db390f307651279c85a7420a80b65`  
		Last Modified: Thu, 05 Nov 2026 07:13:04 GMT  
		Size: 2.4 MB (2408418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce2a406440e45f933aa7419f2dcf2238f100252622e505bd42cee92bc18e5407`  
		Last Modified: Thu, 05 Nov 2026 07:13:04 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:4f51365c17a8022dcacf62034762e32e06a93091206db99422f449dbcbb01bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.8 MB (106750774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cebf9b975254575f86ab47ef50df3c5f3c501bdd94b55e5661dd527df01280e3`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:13:06 GMT
ENV EMQX_VERSION=5.8.8
# Thu, 05 Nov 2026 07:13:06 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Thu, 05 Nov 2026 07:13:06 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Thu, 05 Nov 2026 07:13:06 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Thu, 05 Nov 2026 07:13:06 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 07:13:06 GMT
WORKDIR /opt/emqx
# Thu, 05 Nov 2026 07:13:06 GMT
USER emqx
# Thu, 05 Nov 2026 07:13:06 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Thu, 05 Nov 2026 07:13:06 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Thu, 05 Nov 2026 07:13:07 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Thu, 05 Nov 2026 07:13:07 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:13:07 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0b51bbf8e2c7074f6f0167cd646016126a418c7ea7cd6865b15e81097806392`  
		Last Modified: Thu, 05 Nov 2026 07:13:22 GMT  
		Size: 76.5 MB (76535671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64871dc8d06c4d75713258521cc93fa367706521f06b6092e4f870765a6c857d`  
		Last Modified: Thu, 05 Nov 2026 07:13:19 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5` - unknown; unknown

```console
$ docker pull emqx@sha256:f32a9e9689faa85146e6808ad048e1a3db6a73b96de0b443e44506d58661c89f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ba946bf30f964e33bf5d2ded6f20ca9ee5631bac40dacd4070cde92ea07977`

```dockerfile
```

-	Layers:
	-	`sha256:27e74e363997175572194779128578b32f9ae8b9e2ba6d366cfd650448162d40`  
		Last Modified: Thu, 05 Nov 2026 07:13:20 GMT  
		Size: 2.4 MB (2408699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb215934bb5de26700293194ece3b28e0a294e79ed7e2f0f393833ebe4122c2e`  
		Last Modified: Thu, 05 Nov 2026 07:13:19 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.7`

```console
$ docker pull emqx@sha256:bb4994834a848a1e63bfd66b230cdfe50485f62ba93128ff1e0744b6d7497dfa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.7` - linux; amd64

```console
$ docker pull emqx@sha256:8b078f736b55d4c454070b838c8673860a1c5753e2fc6e7f1223603287473bf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125223196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af79f79bfff7e3f7b38ccb04e6a5b4d87c3beb626a8ebd76f76b2c945838c51`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:13:18 GMT
ENV EMQX_VERSION=5.7.2
# Thu, 05 Nov 2026 07:13:18 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Thu, 05 Nov 2026 07:13:18 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Thu, 05 Nov 2026 07:13:18 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Thu, 05 Nov 2026 07:13:18 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 07:13:18 GMT
WORKDIR /opt/emqx
# Thu, 05 Nov 2026 07:13:18 GMT
USER emqx
# Thu, 05 Nov 2026 07:13:18 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Thu, 05 Nov 2026 07:13:18 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Thu, 05 Nov 2026 07:13:18 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Thu, 05 Nov 2026 07:13:18 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:13:18 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f06e050603fc2af7b2baf69391194f917c32f19d4b5bbd5da4f3082469ea68`  
		Last Modified: Thu, 05 Nov 2026 07:13:35 GMT  
		Size: 97.0 MB (96974150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fcd348cb2d1f7c4998acaae7006e347dab3da558ee1f171b88220bb440c7a44`  
		Last Modified: Thu, 05 Nov 2026 07:13:32 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7` - unknown; unknown

```console
$ docker pull emqx@sha256:7f59083ba8876103c897bd36ac1992799439f7e33c4df3a5474a8f7d209d868e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39c579fcf09b499d4f6fca7acf548118ac7e354b49ee1c21857cf90ec7b7be30`

```dockerfile
```

-	Layers:
	-	`sha256:19492a7d86184a90d79645834f2aa1994a7df638b8c710352d85ccff6091a9c6`  
		Last Modified: Thu, 05 Nov 2026 07:13:32 GMT  
		Size: 2.8 MB (2755524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce93cbd69f61ed69850ed1581e02c64278ed3b2c76192feee23fdaaf4edaed54`  
		Last Modified: Thu, 05 Nov 2026 07:13:32 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.7` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:cfb2aecbc8ab237077a1e0474c82c0c44714207dc2999048e7df374091db4f0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.7 MB (121688833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc0eaacd69271d0c2a533f17de88631ea42ddc2d98a69d5b545f69fac5aa8343`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:13:07 GMT
ENV EMQX_VERSION=5.7.2
# Thu, 05 Nov 2026 07:13:07 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Thu, 05 Nov 2026 07:13:07 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Thu, 05 Nov 2026 07:13:07 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Thu, 05 Nov 2026 07:13:07 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 07:13:07 GMT
WORKDIR /opt/emqx
# Thu, 05 Nov 2026 07:13:07 GMT
USER emqx
# Thu, 05 Nov 2026 07:13:07 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Thu, 05 Nov 2026 07:13:07 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Thu, 05 Nov 2026 07:13:07 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Thu, 05 Nov 2026 07:13:07 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:13:07 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6b9b45f6ef1cfe8398df87cfa225e1e8633e21e40cb5676afa18742c120172`  
		Last Modified: Thu, 05 Nov 2026 07:13:23 GMT  
		Size: 93.5 MB (93543409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53d1f45a7d1a8081861455c842e14997f683a93253a686679965bc6d3a3b62c`  
		Last Modified: Thu, 05 Nov 2026 07:13:21 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7` - unknown; unknown

```console
$ docker pull emqx@sha256:b46bcb992ea22cd7cf70479e1708d8fd7f3f4f32bb2166ad63f3f7ac31a12f4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:500ded3c610f15d91642bb2f5a293f700f6016e31c80d97a06c3ac2defdbec80`

```dockerfile
```

-	Layers:
	-	`sha256:0e0ede986e344a9dfe4541d09a56429a859a9083c4490dfcd1e3d7e613bbd7b0`  
		Last Modified: Thu, 05 Nov 2026 07:13:21 GMT  
		Size: 2.8 MB (2755780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c597f49f350610f5c12073ff10b8437b21f2718ce8553cc9df944cb89a5246c2`  
		Last Modified: Thu, 05 Nov 2026 07:13:21 GMT  
		Size: 12.0 KB (11987 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.7.2`

```console
$ docker pull emqx@sha256:bb4994834a848a1e63bfd66b230cdfe50485f62ba93128ff1e0744b6d7497dfa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.7.2` - linux; amd64

```console
$ docker pull emqx@sha256:8b078f736b55d4c454070b838c8673860a1c5753e2fc6e7f1223603287473bf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125223196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af79f79bfff7e3f7b38ccb04e6a5b4d87c3beb626a8ebd76f76b2c945838c51`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:13:18 GMT
ENV EMQX_VERSION=5.7.2
# Thu, 05 Nov 2026 07:13:18 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Thu, 05 Nov 2026 07:13:18 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Thu, 05 Nov 2026 07:13:18 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Thu, 05 Nov 2026 07:13:18 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 07:13:18 GMT
WORKDIR /opt/emqx
# Thu, 05 Nov 2026 07:13:18 GMT
USER emqx
# Thu, 05 Nov 2026 07:13:18 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Thu, 05 Nov 2026 07:13:18 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Thu, 05 Nov 2026 07:13:18 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Thu, 05 Nov 2026 07:13:18 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:13:18 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f06e050603fc2af7b2baf69391194f917c32f19d4b5bbd5da4f3082469ea68`  
		Last Modified: Thu, 05 Nov 2026 07:13:35 GMT  
		Size: 97.0 MB (96974150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fcd348cb2d1f7c4998acaae7006e347dab3da558ee1f171b88220bb440c7a44`  
		Last Modified: Thu, 05 Nov 2026 07:13:32 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7.2` - unknown; unknown

```console
$ docker pull emqx@sha256:7f59083ba8876103c897bd36ac1992799439f7e33c4df3a5474a8f7d209d868e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39c579fcf09b499d4f6fca7acf548118ac7e354b49ee1c21857cf90ec7b7be30`

```dockerfile
```

-	Layers:
	-	`sha256:19492a7d86184a90d79645834f2aa1994a7df638b8c710352d85ccff6091a9c6`  
		Last Modified: Thu, 05 Nov 2026 07:13:32 GMT  
		Size: 2.8 MB (2755524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce93cbd69f61ed69850ed1581e02c64278ed3b2c76192feee23fdaaf4edaed54`  
		Last Modified: Thu, 05 Nov 2026 07:13:32 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.7.2` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:cfb2aecbc8ab237077a1e0474c82c0c44714207dc2999048e7df374091db4f0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.7 MB (121688833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc0eaacd69271d0c2a533f17de88631ea42ddc2d98a69d5b545f69fac5aa8343`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:13:07 GMT
ENV EMQX_VERSION=5.7.2
# Thu, 05 Nov 2026 07:13:07 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Thu, 05 Nov 2026 07:13:07 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Thu, 05 Nov 2026 07:13:07 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Thu, 05 Nov 2026 07:13:07 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 07:13:07 GMT
WORKDIR /opt/emqx
# Thu, 05 Nov 2026 07:13:07 GMT
USER emqx
# Thu, 05 Nov 2026 07:13:07 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Thu, 05 Nov 2026 07:13:07 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Thu, 05 Nov 2026 07:13:07 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Thu, 05 Nov 2026 07:13:07 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:13:07 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6b9b45f6ef1cfe8398df87cfa225e1e8633e21e40cb5676afa18742c120172`  
		Last Modified: Thu, 05 Nov 2026 07:13:23 GMT  
		Size: 93.5 MB (93543409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53d1f45a7d1a8081861455c842e14997f683a93253a686679965bc6d3a3b62c`  
		Last Modified: Thu, 05 Nov 2026 07:13:21 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7.2` - unknown; unknown

```console
$ docker pull emqx@sha256:b46bcb992ea22cd7cf70479e1708d8fd7f3f4f32bb2166ad63f3f7ac31a12f4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:500ded3c610f15d91642bb2f5a293f700f6016e31c80d97a06c3ac2defdbec80`

```dockerfile
```

-	Layers:
	-	`sha256:0e0ede986e344a9dfe4541d09a56429a859a9083c4490dfcd1e3d7e613bbd7b0`  
		Last Modified: Thu, 05 Nov 2026 07:13:21 GMT  
		Size: 2.8 MB (2755780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c597f49f350610f5c12073ff10b8437b21f2718ce8553cc9df944cb89a5246c2`  
		Last Modified: Thu, 05 Nov 2026 07:13:21 GMT  
		Size: 12.0 KB (11987 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.8`

```console
$ docker pull emqx@sha256:d761f6355267180f6af6970550e75dbaecb4e7a8ce493c9031c692397ec30332
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.8` - linux; amd64

```console
$ docker pull emqx@sha256:168068447bcd85c0a763f39e05746551a72c77645301ad80148aeef099b49d3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108482068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4342337eacceac7694a9ad2b2874008890cd0ad4adc2adebcfced148b3d63d`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:12:52 GMT
ENV EMQX_VERSION=5.8.8
# Thu, 05 Nov 2026 07:12:52 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Thu, 05 Nov 2026 07:12:52 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Thu, 05 Nov 2026 07:12:52 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Thu, 05 Nov 2026 07:12:52 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 07:12:52 GMT
WORKDIR /opt/emqx
# Thu, 05 Nov 2026 07:12:52 GMT
USER emqx
# Thu, 05 Nov 2026 07:12:52 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Thu, 05 Nov 2026 07:12:52 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Thu, 05 Nov 2026 07:12:52 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Thu, 05 Nov 2026 07:12:52 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:12:52 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0932842385790792f8d40852838e06864b7a21490ee0b31a891f9ae66726d11`  
		Last Modified: Thu, 05 Nov 2026 07:13:06 GMT  
		Size: 78.6 MB (78624870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06470becd7a81f01c3884aff59a761e828033d21e06c90d62680cb6f4a0fec0`  
		Last Modified: Thu, 05 Nov 2026 07:13:04 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8` - unknown; unknown

```console
$ docker pull emqx@sha256:2af1be3a0ec963fad42bbfd8beb80a5834ae704bd54e8223cfc23fe71c93215c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32952927ec70df94c1de7a09eb49542fb49d62ed48079f4885cc3debb997579a`

```dockerfile
```

-	Layers:
	-	`sha256:2233e10663fbfcc28f2d227f8060ed6efc6db390f307651279c85a7420a80b65`  
		Last Modified: Thu, 05 Nov 2026 07:13:04 GMT  
		Size: 2.4 MB (2408418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce2a406440e45f933aa7419f2dcf2238f100252622e505bd42cee92bc18e5407`  
		Last Modified: Thu, 05 Nov 2026 07:13:04 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.8` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:4f51365c17a8022dcacf62034762e32e06a93091206db99422f449dbcbb01bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.8 MB (106750774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cebf9b975254575f86ab47ef50df3c5f3c501bdd94b55e5661dd527df01280e3`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:13:06 GMT
ENV EMQX_VERSION=5.8.8
# Thu, 05 Nov 2026 07:13:06 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Thu, 05 Nov 2026 07:13:06 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Thu, 05 Nov 2026 07:13:06 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Thu, 05 Nov 2026 07:13:06 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 07:13:06 GMT
WORKDIR /opt/emqx
# Thu, 05 Nov 2026 07:13:06 GMT
USER emqx
# Thu, 05 Nov 2026 07:13:06 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Thu, 05 Nov 2026 07:13:06 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Thu, 05 Nov 2026 07:13:07 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Thu, 05 Nov 2026 07:13:07 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:13:07 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0b51bbf8e2c7074f6f0167cd646016126a418c7ea7cd6865b15e81097806392`  
		Last Modified: Thu, 05 Nov 2026 07:13:22 GMT  
		Size: 76.5 MB (76535671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64871dc8d06c4d75713258521cc93fa367706521f06b6092e4f870765a6c857d`  
		Last Modified: Thu, 05 Nov 2026 07:13:19 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8` - unknown; unknown

```console
$ docker pull emqx@sha256:f32a9e9689faa85146e6808ad048e1a3db6a73b96de0b443e44506d58661c89f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ba946bf30f964e33bf5d2ded6f20ca9ee5631bac40dacd4070cde92ea07977`

```dockerfile
```

-	Layers:
	-	`sha256:27e74e363997175572194779128578b32f9ae8b9e2ba6d366cfd650448162d40`  
		Last Modified: Thu, 05 Nov 2026 07:13:20 GMT  
		Size: 2.4 MB (2408699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb215934bb5de26700293194ece3b28e0a294e79ed7e2f0f393833ebe4122c2e`  
		Last Modified: Thu, 05 Nov 2026 07:13:19 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.8.8`

```console
$ docker pull emqx@sha256:d761f6355267180f6af6970550e75dbaecb4e7a8ce493c9031c692397ec30332
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.8.8` - linux; amd64

```console
$ docker pull emqx@sha256:168068447bcd85c0a763f39e05746551a72c77645301ad80148aeef099b49d3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108482068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4342337eacceac7694a9ad2b2874008890cd0ad4adc2adebcfced148b3d63d`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:12:52 GMT
ENV EMQX_VERSION=5.8.8
# Thu, 05 Nov 2026 07:12:52 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Thu, 05 Nov 2026 07:12:52 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Thu, 05 Nov 2026 07:12:52 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Thu, 05 Nov 2026 07:12:52 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 07:12:52 GMT
WORKDIR /opt/emqx
# Thu, 05 Nov 2026 07:12:52 GMT
USER emqx
# Thu, 05 Nov 2026 07:12:52 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Thu, 05 Nov 2026 07:12:52 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Thu, 05 Nov 2026 07:12:52 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Thu, 05 Nov 2026 07:12:52 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:12:52 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0932842385790792f8d40852838e06864b7a21490ee0b31a891f9ae66726d11`  
		Last Modified: Thu, 05 Nov 2026 07:13:06 GMT  
		Size: 78.6 MB (78624870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06470becd7a81f01c3884aff59a761e828033d21e06c90d62680cb6f4a0fec0`  
		Last Modified: Thu, 05 Nov 2026 07:13:04 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8.8` - unknown; unknown

```console
$ docker pull emqx@sha256:2af1be3a0ec963fad42bbfd8beb80a5834ae704bd54e8223cfc23fe71c93215c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32952927ec70df94c1de7a09eb49542fb49d62ed48079f4885cc3debb997579a`

```dockerfile
```

-	Layers:
	-	`sha256:2233e10663fbfcc28f2d227f8060ed6efc6db390f307651279c85a7420a80b65`  
		Last Modified: Thu, 05 Nov 2026 07:13:04 GMT  
		Size: 2.4 MB (2408418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce2a406440e45f933aa7419f2dcf2238f100252622e505bd42cee92bc18e5407`  
		Last Modified: Thu, 05 Nov 2026 07:13:04 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.8.8` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:4f51365c17a8022dcacf62034762e32e06a93091206db99422f449dbcbb01bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.8 MB (106750774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cebf9b975254575f86ab47ef50df3c5f3c501bdd94b55e5661dd527df01280e3`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:13:06 GMT
ENV EMQX_VERSION=5.8.8
# Thu, 05 Nov 2026 07:13:06 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Thu, 05 Nov 2026 07:13:06 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Thu, 05 Nov 2026 07:13:06 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Thu, 05 Nov 2026 07:13:06 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 07:13:06 GMT
WORKDIR /opt/emqx
# Thu, 05 Nov 2026 07:13:06 GMT
USER emqx
# Thu, 05 Nov 2026 07:13:06 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Thu, 05 Nov 2026 07:13:06 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Thu, 05 Nov 2026 07:13:07 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Thu, 05 Nov 2026 07:13:07 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:13:07 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0b51bbf8e2c7074f6f0167cd646016126a418c7ea7cd6865b15e81097806392`  
		Last Modified: Thu, 05 Nov 2026 07:13:22 GMT  
		Size: 76.5 MB (76535671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64871dc8d06c4d75713258521cc93fa367706521f06b6092e4f870765a6c857d`  
		Last Modified: Thu, 05 Nov 2026 07:13:19 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8.8` - unknown; unknown

```console
$ docker pull emqx@sha256:f32a9e9689faa85146e6808ad048e1a3db6a73b96de0b443e44506d58661c89f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ba946bf30f964e33bf5d2ded6f20ca9ee5631bac40dacd4070cde92ea07977`

```dockerfile
```

-	Layers:
	-	`sha256:27e74e363997175572194779128578b32f9ae8b9e2ba6d366cfd650448162d40`  
		Last Modified: Thu, 05 Nov 2026 07:13:20 GMT  
		Size: 2.4 MB (2408699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb215934bb5de26700293194ece3b28e0a294e79ed7e2f0f393833ebe4122c2e`  
		Last Modified: Thu, 05 Nov 2026 07:13:19 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:latest`

```console
$ docker pull emqx@sha256:d761f6355267180f6af6970550e75dbaecb4e7a8ce493c9031c692397ec30332
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:latest` - linux; amd64

```console
$ docker pull emqx@sha256:168068447bcd85c0a763f39e05746551a72c77645301ad80148aeef099b49d3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108482068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4342337eacceac7694a9ad2b2874008890cd0ad4adc2adebcfced148b3d63d`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:12:52 GMT
ENV EMQX_VERSION=5.8.8
# Thu, 05 Nov 2026 07:12:52 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Thu, 05 Nov 2026 07:12:52 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Thu, 05 Nov 2026 07:12:52 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Thu, 05 Nov 2026 07:12:52 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 07:12:52 GMT
WORKDIR /opt/emqx
# Thu, 05 Nov 2026 07:12:52 GMT
USER emqx
# Thu, 05 Nov 2026 07:12:52 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Thu, 05 Nov 2026 07:12:52 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Thu, 05 Nov 2026 07:12:52 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Thu, 05 Nov 2026 07:12:52 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:12:52 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0932842385790792f8d40852838e06864b7a21490ee0b31a891f9ae66726d11`  
		Last Modified: Thu, 05 Nov 2026 07:13:06 GMT  
		Size: 78.6 MB (78624870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06470becd7a81f01c3884aff59a761e828033d21e06c90d62680cb6f4a0fec0`  
		Last Modified: Thu, 05 Nov 2026 07:13:04 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:latest` - unknown; unknown

```console
$ docker pull emqx@sha256:2af1be3a0ec963fad42bbfd8beb80a5834ae704bd54e8223cfc23fe71c93215c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32952927ec70df94c1de7a09eb49542fb49d62ed48079f4885cc3debb997579a`

```dockerfile
```

-	Layers:
	-	`sha256:2233e10663fbfcc28f2d227f8060ed6efc6db390f307651279c85a7420a80b65`  
		Last Modified: Thu, 05 Nov 2026 07:13:04 GMT  
		Size: 2.4 MB (2408418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce2a406440e45f933aa7419f2dcf2238f100252622e505bd42cee92bc18e5407`  
		Last Modified: Thu, 05 Nov 2026 07:13:04 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:latest` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:4f51365c17a8022dcacf62034762e32e06a93091206db99422f449dbcbb01bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.8 MB (106750774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cebf9b975254575f86ab47ef50df3c5f3c501bdd94b55e5661dd527df01280e3`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:13:06 GMT
ENV EMQX_VERSION=5.8.8
# Thu, 05 Nov 2026 07:13:06 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Thu, 05 Nov 2026 07:13:06 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Thu, 05 Nov 2026 07:13:06 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Thu, 05 Nov 2026 07:13:06 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 07:13:06 GMT
WORKDIR /opt/emqx
# Thu, 05 Nov 2026 07:13:06 GMT
USER emqx
# Thu, 05 Nov 2026 07:13:06 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Thu, 05 Nov 2026 07:13:06 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Thu, 05 Nov 2026 07:13:07 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Thu, 05 Nov 2026 07:13:07 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:13:07 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0b51bbf8e2c7074f6f0167cd646016126a418c7ea7cd6865b15e81097806392`  
		Last Modified: Thu, 05 Nov 2026 07:13:22 GMT  
		Size: 76.5 MB (76535671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64871dc8d06c4d75713258521cc93fa367706521f06b6092e4f870765a6c857d`  
		Last Modified: Thu, 05 Nov 2026 07:13:19 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:latest` - unknown; unknown

```console
$ docker pull emqx@sha256:f32a9e9689faa85146e6808ad048e1a3db6a73b96de0b443e44506d58661c89f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ba946bf30f964e33bf5d2ded6f20ca9ee5631bac40dacd4070cde92ea07977`

```dockerfile
```

-	Layers:
	-	`sha256:27e74e363997175572194779128578b32f9ae8b9e2ba6d366cfd650448162d40`  
		Last Modified: Thu, 05 Nov 2026 07:13:20 GMT  
		Size: 2.4 MB (2408699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb215934bb5de26700293194ece3b28e0a294e79ed7e2f0f393833ebe4122c2e`  
		Last Modified: Thu, 05 Nov 2026 07:13:19 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json
