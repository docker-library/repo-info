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
$ docker pull emqx@sha256:4337e8705d960d3b7d86506ef23332dab256b6bd165e664f3aad568b81d0826b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5` - linux; amd64

```console
$ docker pull emqx@sha256:314c5dab0c1cbf759c1f25c1cf568546d9ecad95c09978198bbb36f641c9dd3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108468132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0473a3a4e3649e51fc7e647410057f6352f771549ef9951a52712b30ac2f7015`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:13:35 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 24 Nov 2026 04:13:35 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 24 Nov 2026 04:13:35 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 24 Nov 2026 04:13:35 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 24 Nov 2026 04:13:35 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 24 Nov 2026 04:13:35 GMT
WORKDIR /opt/emqx
# Tue, 24 Nov 2026 04:13:35 GMT
USER emqx
# Tue, 24 Nov 2026 04:13:35 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 24 Nov 2026 04:13:35 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 24 Nov 2026 04:13:35 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 24 Nov 2026 04:13:35 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:13:35 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bddfb0a9c247e28c520fa0ea453955f4bcf7fbd2d13f846e686ce0ff5c2a5f7a`  
		Last Modified: Tue, 24 Nov 2026 04:13:50 GMT  
		Size: 78.6 MB (78624887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86c2be53b12ece45c45fa326ebad925c28cdb3f8d54ab168ec0e79bad7585f0`  
		Last Modified: Tue, 24 Nov 2026 04:13:47 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5` - unknown; unknown

```console
$ docker pull emqx@sha256:84f633dce2c206e3346e74ce47806955d8d5a552700ad66a568bab1b473fac48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1079024ee529d3b18a3a8b9e00c2d8a748f3a83c82f9edada2b5f56b1dcd84f9`

```dockerfile
```

-	Layers:
	-	`sha256:097d6eaeb9fc6cec003b78aa6740e08383c896ea9ee31de4ca88fd57ec3d82bd`  
		Last Modified: Tue, 24 Nov 2026 04:13:48 GMT  
		Size: 2.4 MB (2408446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:194bdaec26165c451258f98389397a247d1bc94a44d7de9992d34b9309f6ba8b`  
		Last Modified: Tue, 24 Nov 2026 04:13:47 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:31c71a1be636998841d21064a381fa1ba538c10bf40cf6ab7e6d3a9ce3d8150b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106734784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f359f9fd15839f83d16ca75eac3aeca977e6c7eb99a918a9fe503b92cf5797`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:13:40 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 24 Nov 2026 04:13:40 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 24 Nov 2026 04:13:40 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 24 Nov 2026 04:13:40 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 24 Nov 2026 04:13:40 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 24 Nov 2026 04:13:40 GMT
WORKDIR /opt/emqx
# Tue, 24 Nov 2026 04:13:40 GMT
USER emqx
# Tue, 24 Nov 2026 04:13:40 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 24 Nov 2026 04:13:40 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 24 Nov 2026 04:13:40 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 24 Nov 2026 04:13:40 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:13:40 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1adcf67549d004e7f1542aef8d5af0ad5987d0b01c721a8e67e1e63ec03a77e`  
		Last Modified: Tue, 24 Nov 2026 04:13:55 GMT  
		Size: 76.5 MB (76535687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:890a835969d453968e3d0e451fd38c90d4bf46eca088ae21101ce95b3cb26170`  
		Last Modified: Tue, 24 Nov 2026 04:13:53 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5` - unknown; unknown

```console
$ docker pull emqx@sha256:7011e257619d3c18120b927f9d30562bd7970598472ea7cd43cb96fca4ea1ae6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18165c8f4327d29cba7bed620f2e2a9a1936954a71e01a3dc65ec0bcace9f9f0`

```dockerfile
```

-	Layers:
	-	`sha256:3af236185bc3d0780482513d6c3de718c93858d2da30e4c35312b29fc2b24001`  
		Last Modified: Tue, 24 Nov 2026 04:13:53 GMT  
		Size: 2.4 MB (2408727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78cb258ba17e4af2b421acbfa1f4c0da85566797c1bf5eb50fe8bf548eb24ecb`  
		Last Modified: Tue, 24 Nov 2026 04:13:53 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.7`

```console
$ docker pull emqx@sha256:c9a8911de55adbdfcf63125e0d6b5903b1968632273027cc1963e16827fef27d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.7` - linux; amd64

```console
$ docker pull emqx@sha256:e321ae3ce2708053b70fd522c05106898a0af39d77bfa436fc6f9250422b61d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125223365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:274640597488370d23e0c599f3ae849306936618f9f83cab3843527f38c718f1`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:13:36 GMT
ENV EMQX_VERSION=5.7.2
# Tue, 24 Nov 2026 04:13:36 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Tue, 24 Nov 2026 04:13:36 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Tue, 24 Nov 2026 04:13:36 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 24 Nov 2026 04:13:36 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 24 Nov 2026 04:13:36 GMT
WORKDIR /opt/emqx
# Tue, 24 Nov 2026 04:13:36 GMT
USER emqx
# Tue, 24 Nov 2026 04:13:36 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 24 Nov 2026 04:13:36 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 24 Nov 2026 04:13:36 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 24 Nov 2026 04:13:36 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:13:36 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ce35971d03a943f5079f312d2e2a8c64d288a5ee0a4745f8766f809d7a37ec0`  
		Last Modified: Tue, 24 Nov 2026 04:13:53 GMT  
		Size: 97.0 MB (96974342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8779353ef49a6a87dbfee2d78ccc3fd7e07ff78d6c9250187b4f4bb778a35bdf`  
		Last Modified: Tue, 24 Nov 2026 04:13:50 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7` - unknown; unknown

```console
$ docker pull emqx@sha256:3a0fc69e567fee97d486a5f885b1f97c60718f66ae1e946037926d84aaa8bd5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ab2cf96e09991931a4e041c37d817fd7c25e940e7b2c1de5ee700781c2d09d8`

```dockerfile
```

-	Layers:
	-	`sha256:59176c79aff36f4dd863e258c4d699a682fa36fbc0171c531cf9fd207fa13b67`  
		Last Modified: Tue, 24 Nov 2026 04:13:51 GMT  
		Size: 2.8 MB (2755524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26d507a521d244e57a677582b7e515047bf83b33744a6b48665e6abafa8c1859`  
		Last Modified: Tue, 24 Nov 2026 04:13:50 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.7` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:bef1e5c81af12c7f9636bae32d5ce1aafc251d2534571e15ff88351588bc7697
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.7 MB (121688732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:214719effca366ee85851c4223ed1600d9dd394c40c95f1afffbd80331076e28`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:13:41 GMT
ENV EMQX_VERSION=5.7.2
# Tue, 24 Nov 2026 04:13:41 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Tue, 24 Nov 2026 04:13:41 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Tue, 24 Nov 2026 04:13:41 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 24 Nov 2026 04:13:41 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 24 Nov 2026 04:13:41 GMT
WORKDIR /opt/emqx
# Tue, 24 Nov 2026 04:13:41 GMT
USER emqx
# Tue, 24 Nov 2026 04:13:41 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 24 Nov 2026 04:13:41 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 24 Nov 2026 04:13:41 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 24 Nov 2026 04:13:41 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:13:41 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bc4cc9f8ace69d000a91926e457857726b772f5ccf089bbad05325310fdcdb6`  
		Last Modified: Tue, 24 Nov 2026 04:13:57 GMT  
		Size: 93.5 MB (93543365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6f56c93918ec2b0b0f2d9df5b3681f5924ba090903d55ce3286aafb2adae722`  
		Last Modified: Tue, 24 Nov 2026 04:13:55 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7` - unknown; unknown

```console
$ docker pull emqx@sha256:c959f5c45a4eeeb4d88f2c8379dfbc138010fac772757246190c0459a40880c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51bf6708534cdadf9651a30cafadecfc921caabcc6e36f847e02cb9198896957`

```dockerfile
```

-	Layers:
	-	`sha256:01a8516484216c06afe2f6522ba50e236b9c2ac0b115b4d28cd8fdc329aecde7`  
		Last Modified: Tue, 24 Nov 2026 04:13:55 GMT  
		Size: 2.8 MB (2755780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4821a7e7d089eab696779c6836c511435ead9691731f4fc0d6184d8733ada866`  
		Last Modified: Tue, 24 Nov 2026 04:13:55 GMT  
		Size: 12.0 KB (11988 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.7.2`

```console
$ docker pull emqx@sha256:c9a8911de55adbdfcf63125e0d6b5903b1968632273027cc1963e16827fef27d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.7.2` - linux; amd64

```console
$ docker pull emqx@sha256:e321ae3ce2708053b70fd522c05106898a0af39d77bfa436fc6f9250422b61d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125223365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:274640597488370d23e0c599f3ae849306936618f9f83cab3843527f38c718f1`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:13:36 GMT
ENV EMQX_VERSION=5.7.2
# Tue, 24 Nov 2026 04:13:36 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Tue, 24 Nov 2026 04:13:36 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Tue, 24 Nov 2026 04:13:36 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 24 Nov 2026 04:13:36 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 24 Nov 2026 04:13:36 GMT
WORKDIR /opt/emqx
# Tue, 24 Nov 2026 04:13:36 GMT
USER emqx
# Tue, 24 Nov 2026 04:13:36 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 24 Nov 2026 04:13:36 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 24 Nov 2026 04:13:36 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 24 Nov 2026 04:13:36 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:13:36 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ce35971d03a943f5079f312d2e2a8c64d288a5ee0a4745f8766f809d7a37ec0`  
		Last Modified: Tue, 24 Nov 2026 04:13:53 GMT  
		Size: 97.0 MB (96974342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8779353ef49a6a87dbfee2d78ccc3fd7e07ff78d6c9250187b4f4bb778a35bdf`  
		Last Modified: Tue, 24 Nov 2026 04:13:50 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7.2` - unknown; unknown

```console
$ docker pull emqx@sha256:3a0fc69e567fee97d486a5f885b1f97c60718f66ae1e946037926d84aaa8bd5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ab2cf96e09991931a4e041c37d817fd7c25e940e7b2c1de5ee700781c2d09d8`

```dockerfile
```

-	Layers:
	-	`sha256:59176c79aff36f4dd863e258c4d699a682fa36fbc0171c531cf9fd207fa13b67`  
		Last Modified: Tue, 24 Nov 2026 04:13:51 GMT  
		Size: 2.8 MB (2755524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26d507a521d244e57a677582b7e515047bf83b33744a6b48665e6abafa8c1859`  
		Last Modified: Tue, 24 Nov 2026 04:13:50 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.7.2` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:bef1e5c81af12c7f9636bae32d5ce1aafc251d2534571e15ff88351588bc7697
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.7 MB (121688732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:214719effca366ee85851c4223ed1600d9dd394c40c95f1afffbd80331076e28`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:13:41 GMT
ENV EMQX_VERSION=5.7.2
# Tue, 24 Nov 2026 04:13:41 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Tue, 24 Nov 2026 04:13:41 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Tue, 24 Nov 2026 04:13:41 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 24 Nov 2026 04:13:41 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 24 Nov 2026 04:13:41 GMT
WORKDIR /opt/emqx
# Tue, 24 Nov 2026 04:13:41 GMT
USER emqx
# Tue, 24 Nov 2026 04:13:41 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 24 Nov 2026 04:13:41 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 24 Nov 2026 04:13:41 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 24 Nov 2026 04:13:41 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:13:41 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bc4cc9f8ace69d000a91926e457857726b772f5ccf089bbad05325310fdcdb6`  
		Last Modified: Tue, 24 Nov 2026 04:13:57 GMT  
		Size: 93.5 MB (93543365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6f56c93918ec2b0b0f2d9df5b3681f5924ba090903d55ce3286aafb2adae722`  
		Last Modified: Tue, 24 Nov 2026 04:13:55 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7.2` - unknown; unknown

```console
$ docker pull emqx@sha256:c959f5c45a4eeeb4d88f2c8379dfbc138010fac772757246190c0459a40880c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51bf6708534cdadf9651a30cafadecfc921caabcc6e36f847e02cb9198896957`

```dockerfile
```

-	Layers:
	-	`sha256:01a8516484216c06afe2f6522ba50e236b9c2ac0b115b4d28cd8fdc329aecde7`  
		Last Modified: Tue, 24 Nov 2026 04:13:55 GMT  
		Size: 2.8 MB (2755780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4821a7e7d089eab696779c6836c511435ead9691731f4fc0d6184d8733ada866`  
		Last Modified: Tue, 24 Nov 2026 04:13:55 GMT  
		Size: 12.0 KB (11988 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.8`

```console
$ docker pull emqx@sha256:4337e8705d960d3b7d86506ef23332dab256b6bd165e664f3aad568b81d0826b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.8` - linux; amd64

```console
$ docker pull emqx@sha256:314c5dab0c1cbf759c1f25c1cf568546d9ecad95c09978198bbb36f641c9dd3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108468132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0473a3a4e3649e51fc7e647410057f6352f771549ef9951a52712b30ac2f7015`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:13:35 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 24 Nov 2026 04:13:35 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 24 Nov 2026 04:13:35 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 24 Nov 2026 04:13:35 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 24 Nov 2026 04:13:35 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 24 Nov 2026 04:13:35 GMT
WORKDIR /opt/emqx
# Tue, 24 Nov 2026 04:13:35 GMT
USER emqx
# Tue, 24 Nov 2026 04:13:35 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 24 Nov 2026 04:13:35 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 24 Nov 2026 04:13:35 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 24 Nov 2026 04:13:35 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:13:35 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bddfb0a9c247e28c520fa0ea453955f4bcf7fbd2d13f846e686ce0ff5c2a5f7a`  
		Last Modified: Tue, 24 Nov 2026 04:13:50 GMT  
		Size: 78.6 MB (78624887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86c2be53b12ece45c45fa326ebad925c28cdb3f8d54ab168ec0e79bad7585f0`  
		Last Modified: Tue, 24 Nov 2026 04:13:47 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8` - unknown; unknown

```console
$ docker pull emqx@sha256:84f633dce2c206e3346e74ce47806955d8d5a552700ad66a568bab1b473fac48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1079024ee529d3b18a3a8b9e00c2d8a748f3a83c82f9edada2b5f56b1dcd84f9`

```dockerfile
```

-	Layers:
	-	`sha256:097d6eaeb9fc6cec003b78aa6740e08383c896ea9ee31de4ca88fd57ec3d82bd`  
		Last Modified: Tue, 24 Nov 2026 04:13:48 GMT  
		Size: 2.4 MB (2408446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:194bdaec26165c451258f98389397a247d1bc94a44d7de9992d34b9309f6ba8b`  
		Last Modified: Tue, 24 Nov 2026 04:13:47 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.8` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:31c71a1be636998841d21064a381fa1ba538c10bf40cf6ab7e6d3a9ce3d8150b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106734784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f359f9fd15839f83d16ca75eac3aeca977e6c7eb99a918a9fe503b92cf5797`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:13:40 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 24 Nov 2026 04:13:40 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 24 Nov 2026 04:13:40 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 24 Nov 2026 04:13:40 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 24 Nov 2026 04:13:40 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 24 Nov 2026 04:13:40 GMT
WORKDIR /opt/emqx
# Tue, 24 Nov 2026 04:13:40 GMT
USER emqx
# Tue, 24 Nov 2026 04:13:40 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 24 Nov 2026 04:13:40 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 24 Nov 2026 04:13:40 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 24 Nov 2026 04:13:40 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:13:40 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1adcf67549d004e7f1542aef8d5af0ad5987d0b01c721a8e67e1e63ec03a77e`  
		Last Modified: Tue, 24 Nov 2026 04:13:55 GMT  
		Size: 76.5 MB (76535687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:890a835969d453968e3d0e451fd38c90d4bf46eca088ae21101ce95b3cb26170`  
		Last Modified: Tue, 24 Nov 2026 04:13:53 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8` - unknown; unknown

```console
$ docker pull emqx@sha256:7011e257619d3c18120b927f9d30562bd7970598472ea7cd43cb96fca4ea1ae6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18165c8f4327d29cba7bed620f2e2a9a1936954a71e01a3dc65ec0bcace9f9f0`

```dockerfile
```

-	Layers:
	-	`sha256:3af236185bc3d0780482513d6c3de718c93858d2da30e4c35312b29fc2b24001`  
		Last Modified: Tue, 24 Nov 2026 04:13:53 GMT  
		Size: 2.4 MB (2408727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78cb258ba17e4af2b421acbfa1f4c0da85566797c1bf5eb50fe8bf548eb24ecb`  
		Last Modified: Tue, 24 Nov 2026 04:13:53 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.8.8`

```console
$ docker pull emqx@sha256:4337e8705d960d3b7d86506ef23332dab256b6bd165e664f3aad568b81d0826b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.8.8` - linux; amd64

```console
$ docker pull emqx@sha256:314c5dab0c1cbf759c1f25c1cf568546d9ecad95c09978198bbb36f641c9dd3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108468132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0473a3a4e3649e51fc7e647410057f6352f771549ef9951a52712b30ac2f7015`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:13:35 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 24 Nov 2026 04:13:35 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 24 Nov 2026 04:13:35 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 24 Nov 2026 04:13:35 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 24 Nov 2026 04:13:35 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 24 Nov 2026 04:13:35 GMT
WORKDIR /opt/emqx
# Tue, 24 Nov 2026 04:13:35 GMT
USER emqx
# Tue, 24 Nov 2026 04:13:35 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 24 Nov 2026 04:13:35 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 24 Nov 2026 04:13:35 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 24 Nov 2026 04:13:35 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:13:35 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bddfb0a9c247e28c520fa0ea453955f4bcf7fbd2d13f846e686ce0ff5c2a5f7a`  
		Last Modified: Tue, 24 Nov 2026 04:13:50 GMT  
		Size: 78.6 MB (78624887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86c2be53b12ece45c45fa326ebad925c28cdb3f8d54ab168ec0e79bad7585f0`  
		Last Modified: Tue, 24 Nov 2026 04:13:47 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8.8` - unknown; unknown

```console
$ docker pull emqx@sha256:84f633dce2c206e3346e74ce47806955d8d5a552700ad66a568bab1b473fac48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1079024ee529d3b18a3a8b9e00c2d8a748f3a83c82f9edada2b5f56b1dcd84f9`

```dockerfile
```

-	Layers:
	-	`sha256:097d6eaeb9fc6cec003b78aa6740e08383c896ea9ee31de4ca88fd57ec3d82bd`  
		Last Modified: Tue, 24 Nov 2026 04:13:48 GMT  
		Size: 2.4 MB (2408446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:194bdaec26165c451258f98389397a247d1bc94a44d7de9992d34b9309f6ba8b`  
		Last Modified: Tue, 24 Nov 2026 04:13:47 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.8.8` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:31c71a1be636998841d21064a381fa1ba538c10bf40cf6ab7e6d3a9ce3d8150b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106734784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f359f9fd15839f83d16ca75eac3aeca977e6c7eb99a918a9fe503b92cf5797`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:13:40 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 24 Nov 2026 04:13:40 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 24 Nov 2026 04:13:40 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 24 Nov 2026 04:13:40 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 24 Nov 2026 04:13:40 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 24 Nov 2026 04:13:40 GMT
WORKDIR /opt/emqx
# Tue, 24 Nov 2026 04:13:40 GMT
USER emqx
# Tue, 24 Nov 2026 04:13:40 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 24 Nov 2026 04:13:40 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 24 Nov 2026 04:13:40 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 24 Nov 2026 04:13:40 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:13:40 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1adcf67549d004e7f1542aef8d5af0ad5987d0b01c721a8e67e1e63ec03a77e`  
		Last Modified: Tue, 24 Nov 2026 04:13:55 GMT  
		Size: 76.5 MB (76535687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:890a835969d453968e3d0e451fd38c90d4bf46eca088ae21101ce95b3cb26170`  
		Last Modified: Tue, 24 Nov 2026 04:13:53 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8.8` - unknown; unknown

```console
$ docker pull emqx@sha256:7011e257619d3c18120b927f9d30562bd7970598472ea7cd43cb96fca4ea1ae6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18165c8f4327d29cba7bed620f2e2a9a1936954a71e01a3dc65ec0bcace9f9f0`

```dockerfile
```

-	Layers:
	-	`sha256:3af236185bc3d0780482513d6c3de718c93858d2da30e4c35312b29fc2b24001`  
		Last Modified: Tue, 24 Nov 2026 04:13:53 GMT  
		Size: 2.4 MB (2408727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78cb258ba17e4af2b421acbfa1f4c0da85566797c1bf5eb50fe8bf548eb24ecb`  
		Last Modified: Tue, 24 Nov 2026 04:13:53 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:latest`

```console
$ docker pull emqx@sha256:4337e8705d960d3b7d86506ef23332dab256b6bd165e664f3aad568b81d0826b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:latest` - linux; amd64

```console
$ docker pull emqx@sha256:314c5dab0c1cbf759c1f25c1cf568546d9ecad95c09978198bbb36f641c9dd3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108468132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0473a3a4e3649e51fc7e647410057f6352f771549ef9951a52712b30ac2f7015`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:13:35 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 24 Nov 2026 04:13:35 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 24 Nov 2026 04:13:35 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 24 Nov 2026 04:13:35 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 24 Nov 2026 04:13:35 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 24 Nov 2026 04:13:35 GMT
WORKDIR /opt/emqx
# Tue, 24 Nov 2026 04:13:35 GMT
USER emqx
# Tue, 24 Nov 2026 04:13:35 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 24 Nov 2026 04:13:35 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 24 Nov 2026 04:13:35 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 24 Nov 2026 04:13:35 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:13:35 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bddfb0a9c247e28c520fa0ea453955f4bcf7fbd2d13f846e686ce0ff5c2a5f7a`  
		Last Modified: Tue, 24 Nov 2026 04:13:50 GMT  
		Size: 78.6 MB (78624887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86c2be53b12ece45c45fa326ebad925c28cdb3f8d54ab168ec0e79bad7585f0`  
		Last Modified: Tue, 24 Nov 2026 04:13:47 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:latest` - unknown; unknown

```console
$ docker pull emqx@sha256:84f633dce2c206e3346e74ce47806955d8d5a552700ad66a568bab1b473fac48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1079024ee529d3b18a3a8b9e00c2d8a748f3a83c82f9edada2b5f56b1dcd84f9`

```dockerfile
```

-	Layers:
	-	`sha256:097d6eaeb9fc6cec003b78aa6740e08383c896ea9ee31de4ca88fd57ec3d82bd`  
		Last Modified: Tue, 24 Nov 2026 04:13:48 GMT  
		Size: 2.4 MB (2408446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:194bdaec26165c451258f98389397a247d1bc94a44d7de9992d34b9309f6ba8b`  
		Last Modified: Tue, 24 Nov 2026 04:13:47 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:latest` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:31c71a1be636998841d21064a381fa1ba538c10bf40cf6ab7e6d3a9ce3d8150b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106734784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f359f9fd15839f83d16ca75eac3aeca977e6c7eb99a918a9fe503b92cf5797`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:13:40 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 24 Nov 2026 04:13:40 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 24 Nov 2026 04:13:40 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 24 Nov 2026 04:13:40 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 24 Nov 2026 04:13:40 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 24 Nov 2026 04:13:40 GMT
WORKDIR /opt/emqx
# Tue, 24 Nov 2026 04:13:40 GMT
USER emqx
# Tue, 24 Nov 2026 04:13:40 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 24 Nov 2026 04:13:40 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 24 Nov 2026 04:13:40 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 24 Nov 2026 04:13:40 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:13:40 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1adcf67549d004e7f1542aef8d5af0ad5987d0b01c721a8e67e1e63ec03a77e`  
		Last Modified: Tue, 24 Nov 2026 04:13:55 GMT  
		Size: 76.5 MB (76535687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:890a835969d453968e3d0e451fd38c90d4bf46eca088ae21101ce95b3cb26170`  
		Last Modified: Tue, 24 Nov 2026 04:13:53 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:latest` - unknown; unknown

```console
$ docker pull emqx@sha256:7011e257619d3c18120b927f9d30562bd7970598472ea7cd43cb96fca4ea1ae6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18165c8f4327d29cba7bed620f2e2a9a1936954a71e01a3dc65ec0bcace9f9f0`

```dockerfile
```

-	Layers:
	-	`sha256:3af236185bc3d0780482513d6c3de718c93858d2da30e4c35312b29fc2b24001`  
		Last Modified: Tue, 24 Nov 2026 04:13:53 GMT  
		Size: 2.4 MB (2408727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78cb258ba17e4af2b421acbfa1f4c0da85566797c1bf5eb50fe8bf548eb24ecb`  
		Last Modified: Tue, 24 Nov 2026 04:13:53 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json
