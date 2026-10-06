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
$ docker pull emqx@sha256:a0fece4afaadf2f602a69d167e8fa00d9367d4701f6a5e911478c4892b068861
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5` - linux; amd64

```console
$ docker pull emqx@sha256:cc30036b6b73c8e7d71d5882b37902c5c685de8b93519bae9ab177e031183347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108471011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2027bc1ba9716d6dcfe2b662473df2e16f0875e660b5acccb5200ce35a106629`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:15:28 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 06 Oct 2026 01:15:28 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 06 Oct 2026 01:15:28 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 06 Oct 2026 01:15:28 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 06 Oct 2026 01:15:28 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 06 Oct 2026 01:15:28 GMT
WORKDIR /opt/emqx
# Tue, 06 Oct 2026 01:15:28 GMT
USER emqx
# Tue, 06 Oct 2026 01:15:28 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 06 Oct 2026 01:15:28 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 06 Oct 2026 01:15:28 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 06 Oct 2026 01:15:28 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:15:28 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcee08eb4d152b1403fb6325c76524a7642b2eb5cf68ad168620d0702bbd379f`  
		Last Modified: Tue, 06 Oct 2026 01:15:42 GMT  
		Size: 78.6 MB (78626600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f563b5d02ea6d5820b5a7120e0ce6497d3d47ea18bc01cb357a54447d67146`  
		Last Modified: Tue, 06 Oct 2026 01:15:40 GMT  
		Size: 1.0 KB (1029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5` - unknown; unknown

```console
$ docker pull emqx@sha256:74479c6542b917cf12a8600468186b6c759144e8da1fb59be0b8be8dc713aef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82add0dc75a1529d5b4c0e67b4d18db04b1c0befadb3db5e43a9b50abea2b6d7`

```dockerfile
```

-	Layers:
	-	`sha256:98eb0290fd669181c3e8d2a4622e49a2fd5a9ca53cf19cb52de3c76417240154`  
		Last Modified: Tue, 06 Oct 2026 01:15:40 GMT  
		Size: 2.4 MB (2409667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be4dc88b5a9837a3becc505e16b7207620ee5abaa3a2c2995e21131d250dad6a`  
		Last Modified: Tue, 06 Oct 2026 01:15:40 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:70cb9041f97c62fdbe1f052573298b2fc9a588277e847a3ccf5714257e8f07a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106734755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38eb9a048ddac72dd2fc069941ab12fa151545bb42ad441f846456a6672bc351`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:14:57 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 06 Oct 2026 01:14:57 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 06 Oct 2026 01:14:57 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 06 Oct 2026 01:14:57 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 06 Oct 2026 01:14:57 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 06 Oct 2026 01:14:57 GMT
WORKDIR /opt/emqx
# Tue, 06 Oct 2026 01:14:57 GMT
USER emqx
# Tue, 06 Oct 2026 01:14:57 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 06 Oct 2026 01:14:57 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 06 Oct 2026 01:14:57 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 06 Oct 2026 01:14:57 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:14:57 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2996e07378f5dc69325d90c32099811d0d5150a6d36508f23767e07360a2545`  
		Last Modified: Tue, 06 Oct 2026 01:15:12 GMT  
		Size: 76.5 MB (76533408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed69b6f377e463bef17df0b60335de37f4f45cd54a5527ccff1aecbeafb94980`  
		Last Modified: Tue, 06 Oct 2026 01:15:10 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5` - unknown; unknown

```console
$ docker pull emqx@sha256:a6e6d472160ab668d1ca7003b3956651cd3157c596cd5075fbdf7d39f09bf369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420b23a1f41920f42de80ef8c1e36f430417de46c290771866885c9ad625cb7d`

```dockerfile
```

-	Layers:
	-	`sha256:06295453c3eeeac0b918de92b7caa9e912d1b610787288579410fd60a0ed87a8`  
		Last Modified: Tue, 06 Oct 2026 01:15:10 GMT  
		Size: 2.4 MB (2409948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a4da456e3a53d1ddbd338b35776f2e964caa96210531bed084b6f60c604e6cc`  
		Last Modified: Tue, 06 Oct 2026 01:15:10 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.7`

```console
$ docker pull emqx@sha256:37df2f530d9da379649b59aed354ecbc2192f88510f93df36a4c6505fb8610d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.7` - linux; amd64

```console
$ docker pull emqx@sha256:200deee07bdaaf8a02e8e7acb16f48f751a45ca8e0a7ff7eafaa77c9d7c37b70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125233244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36536103894dce4e97298445005931f3e133f8372822825f2d166d013c55bf42`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:15:21 GMT
ENV EMQX_VERSION=5.7.2
# Tue, 06 Oct 2026 01:15:21 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Tue, 06 Oct 2026 01:15:21 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Tue, 06 Oct 2026 01:15:21 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 06 Oct 2026 01:15:21 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 06 Oct 2026 01:15:21 GMT
WORKDIR /opt/emqx
# Tue, 06 Oct 2026 01:15:21 GMT
USER emqx
# Tue, 06 Oct 2026 01:15:21 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 06 Oct 2026 01:15:21 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 06 Oct 2026 01:15:21 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 06 Oct 2026 01:15:21 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:15:21 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e40da527ac9317fe1bd0290e03c5de1b4c7fcd0bdd84f0405eb9bf2ea6452a`  
		Last Modified: Tue, 06 Oct 2026 01:15:38 GMT  
		Size: 97.0 MB (96982859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f07722159a3cf99cc521895a49babcf4f9972df9c1d672714fa892996d235f72`  
		Last Modified: Tue, 06 Oct 2026 01:15:36 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7` - unknown; unknown

```console
$ docker pull emqx@sha256:ba9b50382183c97427e007ffe69bc9473cfc055870b1e9ea56c2eff5d49778cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2768643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d54f63401d9ec168297d5569bd00aac027f4ccb8877d467e049a6d3901e0346`

```dockerfile
```

-	Layers:
	-	`sha256:df286112445b5829971080c58502b97a58c901f580fd26fd8a6ae49aeffda9d7`  
		Last Modified: Tue, 06 Oct 2026 01:15:36 GMT  
		Size: 2.8 MB (2756737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8845361a35a6850e7f6e975cfef38dc6543258db836b0421fe97c8ec2924f5a`  
		Last Modified: Tue, 06 Oct 2026 01:15:36 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.7` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:025c243f488e2641c397132a783aaa5215309198539a51b76aa11a040384452d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.7 MB (121680050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb3a2aeaf96f274b14f6168e92b203966a92d1e94cc97bd5db090be5933cc14f`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:14:45 GMT
ENV EMQX_VERSION=5.7.2
# Tue, 06 Oct 2026 01:14:45 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Tue, 06 Oct 2026 01:14:45 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Tue, 06 Oct 2026 01:14:45 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 06 Oct 2026 01:14:45 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 06 Oct 2026 01:14:45 GMT
WORKDIR /opt/emqx
# Tue, 06 Oct 2026 01:14:45 GMT
USER emqx
# Tue, 06 Oct 2026 01:14:45 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 06 Oct 2026 01:14:45 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 06 Oct 2026 01:14:45 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 06 Oct 2026 01:14:45 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:14:45 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e98001fc3a30f6ddce08ebca9e0cabaa1249d7b9184bb02b6c6bdb1452dae18`  
		Last Modified: Tue, 06 Oct 2026 01:15:01 GMT  
		Size: 93.5 MB (93541807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f41f71e4ac88c4a1b93fa362bc4b3dd189515eb71045d5e1960930a7c0391fc`  
		Last Modified: Tue, 06 Oct 2026 01:14:59 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7` - unknown; unknown

```console
$ docker pull emqx@sha256:7232191b485e336d49906c8cb968777509b5439d78c46a20e2288bbdd5036b11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2768979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ba026821b3354c9862cb6078be26bdd4189ff5c34a31c5b464de8d45e12e90d`

```dockerfile
```

-	Layers:
	-	`sha256:01c2772fb6a067ad0124418b45d7002171988a8fbd55a949d91a680e3adbd1e3`  
		Last Modified: Tue, 06 Oct 2026 01:14:59 GMT  
		Size: 2.8 MB (2756993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:548acb4d6808be07c4fcf90b1d480e562a1fd08188a6de93766351fbd6f7df8e`  
		Last Modified: Tue, 06 Oct 2026 01:14:59 GMT  
		Size: 12.0 KB (11986 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.7.2`

```console
$ docker pull emqx@sha256:37df2f530d9da379649b59aed354ecbc2192f88510f93df36a4c6505fb8610d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.7.2` - linux; amd64

```console
$ docker pull emqx@sha256:200deee07bdaaf8a02e8e7acb16f48f751a45ca8e0a7ff7eafaa77c9d7c37b70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125233244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36536103894dce4e97298445005931f3e133f8372822825f2d166d013c55bf42`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:15:21 GMT
ENV EMQX_VERSION=5.7.2
# Tue, 06 Oct 2026 01:15:21 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Tue, 06 Oct 2026 01:15:21 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Tue, 06 Oct 2026 01:15:21 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 06 Oct 2026 01:15:21 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 06 Oct 2026 01:15:21 GMT
WORKDIR /opt/emqx
# Tue, 06 Oct 2026 01:15:21 GMT
USER emqx
# Tue, 06 Oct 2026 01:15:21 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 06 Oct 2026 01:15:21 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 06 Oct 2026 01:15:21 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 06 Oct 2026 01:15:21 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:15:21 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e40da527ac9317fe1bd0290e03c5de1b4c7fcd0bdd84f0405eb9bf2ea6452a`  
		Last Modified: Tue, 06 Oct 2026 01:15:38 GMT  
		Size: 97.0 MB (96982859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f07722159a3cf99cc521895a49babcf4f9972df9c1d672714fa892996d235f72`  
		Last Modified: Tue, 06 Oct 2026 01:15:36 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7.2` - unknown; unknown

```console
$ docker pull emqx@sha256:ba9b50382183c97427e007ffe69bc9473cfc055870b1e9ea56c2eff5d49778cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2768643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d54f63401d9ec168297d5569bd00aac027f4ccb8877d467e049a6d3901e0346`

```dockerfile
```

-	Layers:
	-	`sha256:df286112445b5829971080c58502b97a58c901f580fd26fd8a6ae49aeffda9d7`  
		Last Modified: Tue, 06 Oct 2026 01:15:36 GMT  
		Size: 2.8 MB (2756737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8845361a35a6850e7f6e975cfef38dc6543258db836b0421fe97c8ec2924f5a`  
		Last Modified: Tue, 06 Oct 2026 01:15:36 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.7.2` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:025c243f488e2641c397132a783aaa5215309198539a51b76aa11a040384452d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.7 MB (121680050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb3a2aeaf96f274b14f6168e92b203966a92d1e94cc97bd5db090be5933cc14f`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:14:45 GMT
ENV EMQX_VERSION=5.7.2
# Tue, 06 Oct 2026 01:14:45 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Tue, 06 Oct 2026 01:14:45 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Tue, 06 Oct 2026 01:14:45 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 06 Oct 2026 01:14:45 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 06 Oct 2026 01:14:45 GMT
WORKDIR /opt/emqx
# Tue, 06 Oct 2026 01:14:45 GMT
USER emqx
# Tue, 06 Oct 2026 01:14:45 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 06 Oct 2026 01:14:45 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 06 Oct 2026 01:14:45 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 06 Oct 2026 01:14:45 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:14:45 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e98001fc3a30f6ddce08ebca9e0cabaa1249d7b9184bb02b6c6bdb1452dae18`  
		Last Modified: Tue, 06 Oct 2026 01:15:01 GMT  
		Size: 93.5 MB (93541807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f41f71e4ac88c4a1b93fa362bc4b3dd189515eb71045d5e1960930a7c0391fc`  
		Last Modified: Tue, 06 Oct 2026 01:14:59 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7.2` - unknown; unknown

```console
$ docker pull emqx@sha256:7232191b485e336d49906c8cb968777509b5439d78c46a20e2288bbdd5036b11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2768979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ba026821b3354c9862cb6078be26bdd4189ff5c34a31c5b464de8d45e12e90d`

```dockerfile
```

-	Layers:
	-	`sha256:01c2772fb6a067ad0124418b45d7002171988a8fbd55a949d91a680e3adbd1e3`  
		Last Modified: Tue, 06 Oct 2026 01:14:59 GMT  
		Size: 2.8 MB (2756993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:548acb4d6808be07c4fcf90b1d480e562a1fd08188a6de93766351fbd6f7df8e`  
		Last Modified: Tue, 06 Oct 2026 01:14:59 GMT  
		Size: 12.0 KB (11986 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.8`

```console
$ docker pull emqx@sha256:a0fece4afaadf2f602a69d167e8fa00d9367d4701f6a5e911478c4892b068861
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.8` - linux; amd64

```console
$ docker pull emqx@sha256:cc30036b6b73c8e7d71d5882b37902c5c685de8b93519bae9ab177e031183347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108471011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2027bc1ba9716d6dcfe2b662473df2e16f0875e660b5acccb5200ce35a106629`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:15:28 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 06 Oct 2026 01:15:28 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 06 Oct 2026 01:15:28 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 06 Oct 2026 01:15:28 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 06 Oct 2026 01:15:28 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 06 Oct 2026 01:15:28 GMT
WORKDIR /opt/emqx
# Tue, 06 Oct 2026 01:15:28 GMT
USER emqx
# Tue, 06 Oct 2026 01:15:28 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 06 Oct 2026 01:15:28 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 06 Oct 2026 01:15:28 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 06 Oct 2026 01:15:28 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:15:28 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcee08eb4d152b1403fb6325c76524a7642b2eb5cf68ad168620d0702bbd379f`  
		Last Modified: Tue, 06 Oct 2026 01:15:42 GMT  
		Size: 78.6 MB (78626600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f563b5d02ea6d5820b5a7120e0ce6497d3d47ea18bc01cb357a54447d67146`  
		Last Modified: Tue, 06 Oct 2026 01:15:40 GMT  
		Size: 1.0 KB (1029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8` - unknown; unknown

```console
$ docker pull emqx@sha256:74479c6542b917cf12a8600468186b6c759144e8da1fb59be0b8be8dc713aef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82add0dc75a1529d5b4c0e67b4d18db04b1c0befadb3db5e43a9b50abea2b6d7`

```dockerfile
```

-	Layers:
	-	`sha256:98eb0290fd669181c3e8d2a4622e49a2fd5a9ca53cf19cb52de3c76417240154`  
		Last Modified: Tue, 06 Oct 2026 01:15:40 GMT  
		Size: 2.4 MB (2409667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be4dc88b5a9837a3becc505e16b7207620ee5abaa3a2c2995e21131d250dad6a`  
		Last Modified: Tue, 06 Oct 2026 01:15:40 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.8` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:70cb9041f97c62fdbe1f052573298b2fc9a588277e847a3ccf5714257e8f07a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106734755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38eb9a048ddac72dd2fc069941ab12fa151545bb42ad441f846456a6672bc351`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:14:57 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 06 Oct 2026 01:14:57 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 06 Oct 2026 01:14:57 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 06 Oct 2026 01:14:57 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 06 Oct 2026 01:14:57 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 06 Oct 2026 01:14:57 GMT
WORKDIR /opt/emqx
# Tue, 06 Oct 2026 01:14:57 GMT
USER emqx
# Tue, 06 Oct 2026 01:14:57 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 06 Oct 2026 01:14:57 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 06 Oct 2026 01:14:57 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 06 Oct 2026 01:14:57 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:14:57 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2996e07378f5dc69325d90c32099811d0d5150a6d36508f23767e07360a2545`  
		Last Modified: Tue, 06 Oct 2026 01:15:12 GMT  
		Size: 76.5 MB (76533408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed69b6f377e463bef17df0b60335de37f4f45cd54a5527ccff1aecbeafb94980`  
		Last Modified: Tue, 06 Oct 2026 01:15:10 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8` - unknown; unknown

```console
$ docker pull emqx@sha256:a6e6d472160ab668d1ca7003b3956651cd3157c596cd5075fbdf7d39f09bf369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420b23a1f41920f42de80ef8c1e36f430417de46c290771866885c9ad625cb7d`

```dockerfile
```

-	Layers:
	-	`sha256:06295453c3eeeac0b918de92b7caa9e912d1b610787288579410fd60a0ed87a8`  
		Last Modified: Tue, 06 Oct 2026 01:15:10 GMT  
		Size: 2.4 MB (2409948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a4da456e3a53d1ddbd338b35776f2e964caa96210531bed084b6f60c604e6cc`  
		Last Modified: Tue, 06 Oct 2026 01:15:10 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.8.8`

```console
$ docker pull emqx@sha256:a0fece4afaadf2f602a69d167e8fa00d9367d4701f6a5e911478c4892b068861
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.8.8` - linux; amd64

```console
$ docker pull emqx@sha256:cc30036b6b73c8e7d71d5882b37902c5c685de8b93519bae9ab177e031183347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108471011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2027bc1ba9716d6dcfe2b662473df2e16f0875e660b5acccb5200ce35a106629`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:15:28 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 06 Oct 2026 01:15:28 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 06 Oct 2026 01:15:28 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 06 Oct 2026 01:15:28 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 06 Oct 2026 01:15:28 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 06 Oct 2026 01:15:28 GMT
WORKDIR /opt/emqx
# Tue, 06 Oct 2026 01:15:28 GMT
USER emqx
# Tue, 06 Oct 2026 01:15:28 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 06 Oct 2026 01:15:28 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 06 Oct 2026 01:15:28 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 06 Oct 2026 01:15:28 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:15:28 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcee08eb4d152b1403fb6325c76524a7642b2eb5cf68ad168620d0702bbd379f`  
		Last Modified: Tue, 06 Oct 2026 01:15:42 GMT  
		Size: 78.6 MB (78626600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f563b5d02ea6d5820b5a7120e0ce6497d3d47ea18bc01cb357a54447d67146`  
		Last Modified: Tue, 06 Oct 2026 01:15:40 GMT  
		Size: 1.0 KB (1029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8.8` - unknown; unknown

```console
$ docker pull emqx@sha256:74479c6542b917cf12a8600468186b6c759144e8da1fb59be0b8be8dc713aef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82add0dc75a1529d5b4c0e67b4d18db04b1c0befadb3db5e43a9b50abea2b6d7`

```dockerfile
```

-	Layers:
	-	`sha256:98eb0290fd669181c3e8d2a4622e49a2fd5a9ca53cf19cb52de3c76417240154`  
		Last Modified: Tue, 06 Oct 2026 01:15:40 GMT  
		Size: 2.4 MB (2409667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be4dc88b5a9837a3becc505e16b7207620ee5abaa3a2c2995e21131d250dad6a`  
		Last Modified: Tue, 06 Oct 2026 01:15:40 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.8.8` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:70cb9041f97c62fdbe1f052573298b2fc9a588277e847a3ccf5714257e8f07a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106734755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38eb9a048ddac72dd2fc069941ab12fa151545bb42ad441f846456a6672bc351`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:14:57 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 06 Oct 2026 01:14:57 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 06 Oct 2026 01:14:57 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 06 Oct 2026 01:14:57 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 06 Oct 2026 01:14:57 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 06 Oct 2026 01:14:57 GMT
WORKDIR /opt/emqx
# Tue, 06 Oct 2026 01:14:57 GMT
USER emqx
# Tue, 06 Oct 2026 01:14:57 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 06 Oct 2026 01:14:57 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 06 Oct 2026 01:14:57 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 06 Oct 2026 01:14:57 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:14:57 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2996e07378f5dc69325d90c32099811d0d5150a6d36508f23767e07360a2545`  
		Last Modified: Tue, 06 Oct 2026 01:15:12 GMT  
		Size: 76.5 MB (76533408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed69b6f377e463bef17df0b60335de37f4f45cd54a5527ccff1aecbeafb94980`  
		Last Modified: Tue, 06 Oct 2026 01:15:10 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8.8` - unknown; unknown

```console
$ docker pull emqx@sha256:a6e6d472160ab668d1ca7003b3956651cd3157c596cd5075fbdf7d39f09bf369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420b23a1f41920f42de80ef8c1e36f430417de46c290771866885c9ad625cb7d`

```dockerfile
```

-	Layers:
	-	`sha256:06295453c3eeeac0b918de92b7caa9e912d1b610787288579410fd60a0ed87a8`  
		Last Modified: Tue, 06 Oct 2026 01:15:10 GMT  
		Size: 2.4 MB (2409948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a4da456e3a53d1ddbd338b35776f2e964caa96210531bed084b6f60c604e6cc`  
		Last Modified: Tue, 06 Oct 2026 01:15:10 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:latest`

```console
$ docker pull emqx@sha256:a0fece4afaadf2f602a69d167e8fa00d9367d4701f6a5e911478c4892b068861
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:latest` - linux; amd64

```console
$ docker pull emqx@sha256:cc30036b6b73c8e7d71d5882b37902c5c685de8b93519bae9ab177e031183347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108471011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2027bc1ba9716d6dcfe2b662473df2e16f0875e660b5acccb5200ce35a106629`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:15:28 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 06 Oct 2026 01:15:28 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 06 Oct 2026 01:15:28 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 06 Oct 2026 01:15:28 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 06 Oct 2026 01:15:28 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 06 Oct 2026 01:15:28 GMT
WORKDIR /opt/emqx
# Tue, 06 Oct 2026 01:15:28 GMT
USER emqx
# Tue, 06 Oct 2026 01:15:28 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 06 Oct 2026 01:15:28 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 06 Oct 2026 01:15:28 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 06 Oct 2026 01:15:28 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:15:28 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcee08eb4d152b1403fb6325c76524a7642b2eb5cf68ad168620d0702bbd379f`  
		Last Modified: Tue, 06 Oct 2026 01:15:42 GMT  
		Size: 78.6 MB (78626600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f563b5d02ea6d5820b5a7120e0ce6497d3d47ea18bc01cb357a54447d67146`  
		Last Modified: Tue, 06 Oct 2026 01:15:40 GMT  
		Size: 1.0 KB (1029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:latest` - unknown; unknown

```console
$ docker pull emqx@sha256:74479c6542b917cf12a8600468186b6c759144e8da1fb59be0b8be8dc713aef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82add0dc75a1529d5b4c0e67b4d18db04b1c0befadb3db5e43a9b50abea2b6d7`

```dockerfile
```

-	Layers:
	-	`sha256:98eb0290fd669181c3e8d2a4622e49a2fd5a9ca53cf19cb52de3c76417240154`  
		Last Modified: Tue, 06 Oct 2026 01:15:40 GMT  
		Size: 2.4 MB (2409667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be4dc88b5a9837a3becc505e16b7207620ee5abaa3a2c2995e21131d250dad6a`  
		Last Modified: Tue, 06 Oct 2026 01:15:40 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:latest` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:70cb9041f97c62fdbe1f052573298b2fc9a588277e847a3ccf5714257e8f07a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106734755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38eb9a048ddac72dd2fc069941ab12fa151545bb42ad441f846456a6672bc351`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:14:57 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 06 Oct 2026 01:14:57 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 06 Oct 2026 01:14:57 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 06 Oct 2026 01:14:57 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 06 Oct 2026 01:14:57 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 06 Oct 2026 01:14:57 GMT
WORKDIR /opt/emqx
# Tue, 06 Oct 2026 01:14:57 GMT
USER emqx
# Tue, 06 Oct 2026 01:14:57 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 06 Oct 2026 01:14:57 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 06 Oct 2026 01:14:57 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 06 Oct 2026 01:14:57 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:14:57 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2996e07378f5dc69325d90c32099811d0d5150a6d36508f23767e07360a2545`  
		Last Modified: Tue, 06 Oct 2026 01:15:12 GMT  
		Size: 76.5 MB (76533408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed69b6f377e463bef17df0b60335de37f4f45cd54a5527ccff1aecbeafb94980`  
		Last Modified: Tue, 06 Oct 2026 01:15:10 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:latest` - unknown; unknown

```console
$ docker pull emqx@sha256:a6e6d472160ab668d1ca7003b3956651cd3157c596cd5075fbdf7d39f09bf369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420b23a1f41920f42de80ef8c1e36f430417de46c290771866885c9ad625cb7d`

```dockerfile
```

-	Layers:
	-	`sha256:06295453c3eeeac0b918de92b7caa9e912d1b610787288579410fd60a0ed87a8`  
		Last Modified: Tue, 06 Oct 2026 01:15:10 GMT  
		Size: 2.4 MB (2409948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a4da456e3a53d1ddbd338b35776f2e964caa96210531bed084b6f60c604e6cc`  
		Last Modified: Tue, 06 Oct 2026 01:15:10 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json
