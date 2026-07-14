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
$ docker pull emqx@sha256:45b79cdae22e896f07285cdff744bbca06413ac1c334bd6e6f594a0b63823432
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5` - linux; amd64

```console
$ docker pull emqx@sha256:4c8880d1b0769baffcd85cccc9ec45f0bcd192e841f79bff90084dd571f86997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108408461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd5c0f6398346ebf0da993dad784d03cd06fd98f38d0c259937f421a35a56947`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:16:04 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 14 Jul 2026 01:16:04 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 14 Jul 2026 01:16:04 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 14 Jul 2026 01:16:04 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 14 Jul 2026 01:16:04 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 14 Jul 2026 01:16:04 GMT
WORKDIR /opt/emqx
# Tue, 14 Jul 2026 01:16:04 GMT
USER emqx
# Tue, 14 Jul 2026 01:16:04 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 14 Jul 2026 01:16:04 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 14 Jul 2026 01:16:04 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 14 Jul 2026 01:16:04 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:16:04 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ae66cd158c9b183a2e45e0cc05e1037e0f4190ddf937bd9e2c7bc0bfce693b`  
		Last Modified: Tue, 14 Jul 2026 01:16:20 GMT  
		Size: 78.6 MB (78626493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ffcd667d55c1cbab2d20463e799e8e2fb07fc57ec80ebf8b93d3a93da1ba`  
		Last Modified: Tue, 14 Jul 2026 01:16:17 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5` - unknown; unknown

```console
$ docker pull emqx@sha256:08987721626b6eccf6b756a6c0554587e8b45da73ed12d56df48927caf70afc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92776c7f8c8aa22cac02907ba3bd2f08200e1f27dd21489fb517ff24bca67fc1`

```dockerfile
```

-	Layers:
	-	`sha256:be5e240e75f8d8bb1957d311e06238b61639a2b46ed711af6a37caaad3b5c007`  
		Last Modified: Tue, 14 Jul 2026 01:16:17 GMT  
		Size: 2.4 MB (2403759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d81e314cb04f8921dbcc6f9e900bc47dbdd71cf93ee022e50a7b3619be9f753`  
		Last Modified: Tue, 14 Jul 2026 01:16:17 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:0682bb7c12fd999be76e4ce68d92aec49d942c9e0eaa8d0599ecd99e5dd8e551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106677933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22cecd4d9b63cbb9d0c4aae42d6c999bbe0d01e73c051b884fba8c559c7c1433`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:15:51 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 14 Jul 2026 01:15:51 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 14 Jul 2026 01:15:51 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 14 Jul 2026 01:15:51 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 14 Jul 2026 01:15:51 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 14 Jul 2026 01:15:51 GMT
WORKDIR /opt/emqx
# Tue, 14 Jul 2026 01:15:51 GMT
USER emqx
# Tue, 14 Jul 2026 01:15:51 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 14 Jul 2026 01:15:51 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 14 Jul 2026 01:15:51 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 14 Jul 2026 01:15:51 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:15:51 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb76cb996a59260fc7e0498fceb2fc6b06f8be08451835a28601a073450263a3`  
		Last Modified: Tue, 14 Jul 2026 01:16:06 GMT  
		Size: 76.5 MB (76533164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b379c5cd39c18c591caaed77b52cd26a23c02fb1ef8449830e7cd3263ab0a77`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5` - unknown; unknown

```console
$ docker pull emqx@sha256:e181b453a91ce04180caf13a9c6b52ef786bf53a0ca48c456193405524992237
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f0bb0cd3ee4c9c0ea6a0f29719af880889811d2f4b40a071853ec275452889`

```dockerfile
```

-	Layers:
	-	`sha256:583b71f367f673e1a72bfbffb9623d44000f66efc61772c5350f477c0168d07b`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 2.4 MB (2404040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb33b574425b1d81852f71b6cd9319f15221cd7c80e4744e96e33d8f23b5269c`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.7`

```console
$ docker pull emqx@sha256:be61e39edab623f0c41e47d5cafb6956fcfe0e91ad7061eb5854178144298246
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.7` - linux; amd64

```console
$ docker pull emqx@sha256:4e351e18ec57fa78d773698f8d7f4503b7ea6246c4e42e7844ec2bdf396c708f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125391826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499b06ba35c5782200d49f2294664ccc23e2c5bb5c249e5682bbcbb6211ee90c`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:16:27 GMT
ENV EMQX_VERSION=5.7.2
# Tue, 14 Jul 2026 01:16:27 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Tue, 14 Jul 2026 01:16:27 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Tue, 14 Jul 2026 01:16:27 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 14 Jul 2026 01:16:27 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 14 Jul 2026 01:16:27 GMT
WORKDIR /opt/emqx
# Tue, 14 Jul 2026 01:16:27 GMT
USER emqx
# Tue, 14 Jul 2026 01:16:27 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 14 Jul 2026 01:16:27 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 14 Jul 2026 01:16:27 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 14 Jul 2026 01:16:27 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:16:27 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e195b23dad46ceacb7e4670c5e402bc79227b6887e51344ab72e2c00ac23eac`  
		Last Modified: Tue, 14 Jul 2026 01:16:44 GMT  
		Size: 97.2 MB (97158120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10fdc47c70b2516ca6473c3a81fde9828ed0c23f3e8a428c4306a3c4a16ebf2b`  
		Last Modified: Tue, 14 Jul 2026 01:16:42 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7` - unknown; unknown

```console
$ docker pull emqx@sha256:b292c26b235ada5667fed6f1a792a153e8e61a2be4f47604b7d7e5f33ee58635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2763378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76c0a067582b99d4cce1e0c921262b3a10613f6971d0caba5f385a32eb45d54e`

```dockerfile
```

-	Layers:
	-	`sha256:2b9923f43a0943e51f4f1bca46f24c74f2934f85ab49b3b0beeb290c23a4c1e1`  
		Last Modified: Tue, 14 Jul 2026 01:16:42 GMT  
		Size: 2.8 MB (2751470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79b7168ecd9f3925d08822b58fe4456de79b4ed98987cf832b00c5237f0864f9`  
		Last Modified: Tue, 14 Jul 2026 01:16:42 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.7` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:ef85bd9fa95c54ef9c16e06a833bc50777ccdd8b241114d6d804f22c4b92fdad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121839000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a83f46a2b9f01327361d878a01f1dc5cd10d4eb0433ba19b946f2cb0772e57f`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:16:18 GMT
ENV EMQX_VERSION=5.7.2
# Tue, 14 Jul 2026 01:16:18 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Tue, 14 Jul 2026 01:16:18 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Tue, 14 Jul 2026 01:16:18 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 14 Jul 2026 01:16:18 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 14 Jul 2026 01:16:18 GMT
WORKDIR /opt/emqx
# Tue, 14 Jul 2026 01:16:18 GMT
USER emqx
# Tue, 14 Jul 2026 01:16:18 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 14 Jul 2026 01:16:18 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 14 Jul 2026 01:16:18 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 14 Jul 2026 01:16:18 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:16:18 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c7bf7dc663eb59b1d22a36276daaac02e0f791cedb8c2f4e9b898837a37e860`  
		Last Modified: Tue, 14 Jul 2026 01:16:35 GMT  
		Size: 93.7 MB (93720682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4952bfb8f3c7ea6598ae8d824df1d1a2cf99053023e63dd85cd4ae9c461749ce`  
		Last Modified: Tue, 14 Jul 2026 01:16:33 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7` - unknown; unknown

```console
$ docker pull emqx@sha256:71d99167537574c314990cbe94bb80169f8fdaaf2555b5bc1ed70608b17ddcdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2763714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78bbbdc5281f2337a10ac778e0718a7b4bc7894c76a805600ca1867d44d3af38`

```dockerfile
```

-	Layers:
	-	`sha256:eafba4eca583d734c175d2ea6fdc9ca4954a82001ac46717ee427d07f5d80403`  
		Last Modified: Tue, 14 Jul 2026 01:16:33 GMT  
		Size: 2.8 MB (2751726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0039fa0db67a5525d482d45a00d964f6a3b14a575f8043dc39dc20ae7aed4715`  
		Last Modified: Tue, 14 Jul 2026 01:16:33 GMT  
		Size: 12.0 KB (11988 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.7.2`

```console
$ docker pull emqx@sha256:be61e39edab623f0c41e47d5cafb6956fcfe0e91ad7061eb5854178144298246
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.7.2` - linux; amd64

```console
$ docker pull emqx@sha256:4e351e18ec57fa78d773698f8d7f4503b7ea6246c4e42e7844ec2bdf396c708f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125391826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499b06ba35c5782200d49f2294664ccc23e2c5bb5c249e5682bbcbb6211ee90c`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:16:27 GMT
ENV EMQX_VERSION=5.7.2
# Tue, 14 Jul 2026 01:16:27 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Tue, 14 Jul 2026 01:16:27 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Tue, 14 Jul 2026 01:16:27 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 14 Jul 2026 01:16:27 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 14 Jul 2026 01:16:27 GMT
WORKDIR /opt/emqx
# Tue, 14 Jul 2026 01:16:27 GMT
USER emqx
# Tue, 14 Jul 2026 01:16:27 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 14 Jul 2026 01:16:27 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 14 Jul 2026 01:16:27 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 14 Jul 2026 01:16:27 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:16:27 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e195b23dad46ceacb7e4670c5e402bc79227b6887e51344ab72e2c00ac23eac`  
		Last Modified: Tue, 14 Jul 2026 01:16:44 GMT  
		Size: 97.2 MB (97158120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10fdc47c70b2516ca6473c3a81fde9828ed0c23f3e8a428c4306a3c4a16ebf2b`  
		Last Modified: Tue, 14 Jul 2026 01:16:42 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7.2` - unknown; unknown

```console
$ docker pull emqx@sha256:b292c26b235ada5667fed6f1a792a153e8e61a2be4f47604b7d7e5f33ee58635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2763378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76c0a067582b99d4cce1e0c921262b3a10613f6971d0caba5f385a32eb45d54e`

```dockerfile
```

-	Layers:
	-	`sha256:2b9923f43a0943e51f4f1bca46f24c74f2934f85ab49b3b0beeb290c23a4c1e1`  
		Last Modified: Tue, 14 Jul 2026 01:16:42 GMT  
		Size: 2.8 MB (2751470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79b7168ecd9f3925d08822b58fe4456de79b4ed98987cf832b00c5237f0864f9`  
		Last Modified: Tue, 14 Jul 2026 01:16:42 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.7.2` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:ef85bd9fa95c54ef9c16e06a833bc50777ccdd8b241114d6d804f22c4b92fdad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121839000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a83f46a2b9f01327361d878a01f1dc5cd10d4eb0433ba19b946f2cb0772e57f`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:16:18 GMT
ENV EMQX_VERSION=5.7.2
# Tue, 14 Jul 2026 01:16:18 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Tue, 14 Jul 2026 01:16:18 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Tue, 14 Jul 2026 01:16:18 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 14 Jul 2026 01:16:18 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 14 Jul 2026 01:16:18 GMT
WORKDIR /opt/emqx
# Tue, 14 Jul 2026 01:16:18 GMT
USER emqx
# Tue, 14 Jul 2026 01:16:18 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 14 Jul 2026 01:16:18 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 14 Jul 2026 01:16:18 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 14 Jul 2026 01:16:18 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:16:18 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c7bf7dc663eb59b1d22a36276daaac02e0f791cedb8c2f4e9b898837a37e860`  
		Last Modified: Tue, 14 Jul 2026 01:16:35 GMT  
		Size: 93.7 MB (93720682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4952bfb8f3c7ea6598ae8d824df1d1a2cf99053023e63dd85cd4ae9c461749ce`  
		Last Modified: Tue, 14 Jul 2026 01:16:33 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7.2` - unknown; unknown

```console
$ docker pull emqx@sha256:71d99167537574c314990cbe94bb80169f8fdaaf2555b5bc1ed70608b17ddcdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2763714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78bbbdc5281f2337a10ac778e0718a7b4bc7894c76a805600ca1867d44d3af38`

```dockerfile
```

-	Layers:
	-	`sha256:eafba4eca583d734c175d2ea6fdc9ca4954a82001ac46717ee427d07f5d80403`  
		Last Modified: Tue, 14 Jul 2026 01:16:33 GMT  
		Size: 2.8 MB (2751726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0039fa0db67a5525d482d45a00d964f6a3b14a575f8043dc39dc20ae7aed4715`  
		Last Modified: Tue, 14 Jul 2026 01:16:33 GMT  
		Size: 12.0 KB (11988 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.8`

```console
$ docker pull emqx@sha256:45b79cdae22e896f07285cdff744bbca06413ac1c334bd6e6f594a0b63823432
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.8` - linux; amd64

```console
$ docker pull emqx@sha256:4c8880d1b0769baffcd85cccc9ec45f0bcd192e841f79bff90084dd571f86997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108408461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd5c0f6398346ebf0da993dad784d03cd06fd98f38d0c259937f421a35a56947`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:16:04 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 14 Jul 2026 01:16:04 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 14 Jul 2026 01:16:04 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 14 Jul 2026 01:16:04 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 14 Jul 2026 01:16:04 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 14 Jul 2026 01:16:04 GMT
WORKDIR /opt/emqx
# Tue, 14 Jul 2026 01:16:04 GMT
USER emqx
# Tue, 14 Jul 2026 01:16:04 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 14 Jul 2026 01:16:04 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 14 Jul 2026 01:16:04 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 14 Jul 2026 01:16:04 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:16:04 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ae66cd158c9b183a2e45e0cc05e1037e0f4190ddf937bd9e2c7bc0bfce693b`  
		Last Modified: Tue, 14 Jul 2026 01:16:20 GMT  
		Size: 78.6 MB (78626493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ffcd667d55c1cbab2d20463e799e8e2fb07fc57ec80ebf8b93d3a93da1ba`  
		Last Modified: Tue, 14 Jul 2026 01:16:17 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8` - unknown; unknown

```console
$ docker pull emqx@sha256:08987721626b6eccf6b756a6c0554587e8b45da73ed12d56df48927caf70afc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92776c7f8c8aa22cac02907ba3bd2f08200e1f27dd21489fb517ff24bca67fc1`

```dockerfile
```

-	Layers:
	-	`sha256:be5e240e75f8d8bb1957d311e06238b61639a2b46ed711af6a37caaad3b5c007`  
		Last Modified: Tue, 14 Jul 2026 01:16:17 GMT  
		Size: 2.4 MB (2403759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d81e314cb04f8921dbcc6f9e900bc47dbdd71cf93ee022e50a7b3619be9f753`  
		Last Modified: Tue, 14 Jul 2026 01:16:17 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.8` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:0682bb7c12fd999be76e4ce68d92aec49d942c9e0eaa8d0599ecd99e5dd8e551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106677933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22cecd4d9b63cbb9d0c4aae42d6c999bbe0d01e73c051b884fba8c559c7c1433`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:15:51 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 14 Jul 2026 01:15:51 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 14 Jul 2026 01:15:51 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 14 Jul 2026 01:15:51 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 14 Jul 2026 01:15:51 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 14 Jul 2026 01:15:51 GMT
WORKDIR /opt/emqx
# Tue, 14 Jul 2026 01:15:51 GMT
USER emqx
# Tue, 14 Jul 2026 01:15:51 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 14 Jul 2026 01:15:51 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 14 Jul 2026 01:15:51 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 14 Jul 2026 01:15:51 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:15:51 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb76cb996a59260fc7e0498fceb2fc6b06f8be08451835a28601a073450263a3`  
		Last Modified: Tue, 14 Jul 2026 01:16:06 GMT  
		Size: 76.5 MB (76533164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b379c5cd39c18c591caaed77b52cd26a23c02fb1ef8449830e7cd3263ab0a77`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8` - unknown; unknown

```console
$ docker pull emqx@sha256:e181b453a91ce04180caf13a9c6b52ef786bf53a0ca48c456193405524992237
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f0bb0cd3ee4c9c0ea6a0f29719af880889811d2f4b40a071853ec275452889`

```dockerfile
```

-	Layers:
	-	`sha256:583b71f367f673e1a72bfbffb9623d44000f66efc61772c5350f477c0168d07b`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 2.4 MB (2404040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb33b574425b1d81852f71b6cd9319f15221cd7c80e4744e96e33d8f23b5269c`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.8.8`

```console
$ docker pull emqx@sha256:45b79cdae22e896f07285cdff744bbca06413ac1c334bd6e6f594a0b63823432
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.8.8` - linux; amd64

```console
$ docker pull emqx@sha256:4c8880d1b0769baffcd85cccc9ec45f0bcd192e841f79bff90084dd571f86997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108408461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd5c0f6398346ebf0da993dad784d03cd06fd98f38d0c259937f421a35a56947`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:16:04 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 14 Jul 2026 01:16:04 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 14 Jul 2026 01:16:04 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 14 Jul 2026 01:16:04 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 14 Jul 2026 01:16:04 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 14 Jul 2026 01:16:04 GMT
WORKDIR /opt/emqx
# Tue, 14 Jul 2026 01:16:04 GMT
USER emqx
# Tue, 14 Jul 2026 01:16:04 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 14 Jul 2026 01:16:04 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 14 Jul 2026 01:16:04 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 14 Jul 2026 01:16:04 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:16:04 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ae66cd158c9b183a2e45e0cc05e1037e0f4190ddf937bd9e2c7bc0bfce693b`  
		Last Modified: Tue, 14 Jul 2026 01:16:20 GMT  
		Size: 78.6 MB (78626493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ffcd667d55c1cbab2d20463e799e8e2fb07fc57ec80ebf8b93d3a93da1ba`  
		Last Modified: Tue, 14 Jul 2026 01:16:17 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8.8` - unknown; unknown

```console
$ docker pull emqx@sha256:08987721626b6eccf6b756a6c0554587e8b45da73ed12d56df48927caf70afc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92776c7f8c8aa22cac02907ba3bd2f08200e1f27dd21489fb517ff24bca67fc1`

```dockerfile
```

-	Layers:
	-	`sha256:be5e240e75f8d8bb1957d311e06238b61639a2b46ed711af6a37caaad3b5c007`  
		Last Modified: Tue, 14 Jul 2026 01:16:17 GMT  
		Size: 2.4 MB (2403759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d81e314cb04f8921dbcc6f9e900bc47dbdd71cf93ee022e50a7b3619be9f753`  
		Last Modified: Tue, 14 Jul 2026 01:16:17 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.8.8` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:0682bb7c12fd999be76e4ce68d92aec49d942c9e0eaa8d0599ecd99e5dd8e551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106677933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22cecd4d9b63cbb9d0c4aae42d6c999bbe0d01e73c051b884fba8c559c7c1433`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:15:51 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 14 Jul 2026 01:15:51 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 14 Jul 2026 01:15:51 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 14 Jul 2026 01:15:51 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 14 Jul 2026 01:15:51 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 14 Jul 2026 01:15:51 GMT
WORKDIR /opt/emqx
# Tue, 14 Jul 2026 01:15:51 GMT
USER emqx
# Tue, 14 Jul 2026 01:15:51 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 14 Jul 2026 01:15:51 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 14 Jul 2026 01:15:51 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 14 Jul 2026 01:15:51 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:15:51 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb76cb996a59260fc7e0498fceb2fc6b06f8be08451835a28601a073450263a3`  
		Last Modified: Tue, 14 Jul 2026 01:16:06 GMT  
		Size: 76.5 MB (76533164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b379c5cd39c18c591caaed77b52cd26a23c02fb1ef8449830e7cd3263ab0a77`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8.8` - unknown; unknown

```console
$ docker pull emqx@sha256:e181b453a91ce04180caf13a9c6b52ef786bf53a0ca48c456193405524992237
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f0bb0cd3ee4c9c0ea6a0f29719af880889811d2f4b40a071853ec275452889`

```dockerfile
```

-	Layers:
	-	`sha256:583b71f367f673e1a72bfbffb9623d44000f66efc61772c5350f477c0168d07b`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 2.4 MB (2404040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb33b574425b1d81852f71b6cd9319f15221cd7c80e4744e96e33d8f23b5269c`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:latest`

```console
$ docker pull emqx@sha256:45b79cdae22e896f07285cdff744bbca06413ac1c334bd6e6f594a0b63823432
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:latest` - linux; amd64

```console
$ docker pull emqx@sha256:4c8880d1b0769baffcd85cccc9ec45f0bcd192e841f79bff90084dd571f86997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108408461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd5c0f6398346ebf0da993dad784d03cd06fd98f38d0c259937f421a35a56947`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:16:04 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 14 Jul 2026 01:16:04 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 14 Jul 2026 01:16:04 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 14 Jul 2026 01:16:04 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 14 Jul 2026 01:16:04 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 14 Jul 2026 01:16:04 GMT
WORKDIR /opt/emqx
# Tue, 14 Jul 2026 01:16:04 GMT
USER emqx
# Tue, 14 Jul 2026 01:16:04 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 14 Jul 2026 01:16:04 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 14 Jul 2026 01:16:04 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 14 Jul 2026 01:16:04 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:16:04 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ae66cd158c9b183a2e45e0cc05e1037e0f4190ddf937bd9e2c7bc0bfce693b`  
		Last Modified: Tue, 14 Jul 2026 01:16:20 GMT  
		Size: 78.6 MB (78626493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ffcd667d55c1cbab2d20463e799e8e2fb07fc57ec80ebf8b93d3a93da1ba`  
		Last Modified: Tue, 14 Jul 2026 01:16:17 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:latest` - unknown; unknown

```console
$ docker pull emqx@sha256:08987721626b6eccf6b756a6c0554587e8b45da73ed12d56df48927caf70afc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92776c7f8c8aa22cac02907ba3bd2f08200e1f27dd21489fb517ff24bca67fc1`

```dockerfile
```

-	Layers:
	-	`sha256:be5e240e75f8d8bb1957d311e06238b61639a2b46ed711af6a37caaad3b5c007`  
		Last Modified: Tue, 14 Jul 2026 01:16:17 GMT  
		Size: 2.4 MB (2403759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d81e314cb04f8921dbcc6f9e900bc47dbdd71cf93ee022e50a7b3619be9f753`  
		Last Modified: Tue, 14 Jul 2026 01:16:17 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:latest` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:0682bb7c12fd999be76e4ce68d92aec49d942c9e0eaa8d0599ecd99e5dd8e551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106677933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22cecd4d9b63cbb9d0c4aae42d6c999bbe0d01e73c051b884fba8c559c7c1433`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:15:51 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 14 Jul 2026 01:15:51 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 14 Jul 2026 01:15:51 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 14 Jul 2026 01:15:51 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 14 Jul 2026 01:15:51 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 14 Jul 2026 01:15:51 GMT
WORKDIR /opt/emqx
# Tue, 14 Jul 2026 01:15:51 GMT
USER emqx
# Tue, 14 Jul 2026 01:15:51 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 14 Jul 2026 01:15:51 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 14 Jul 2026 01:15:51 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 14 Jul 2026 01:15:51 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:15:51 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb76cb996a59260fc7e0498fceb2fc6b06f8be08451835a28601a073450263a3`  
		Last Modified: Tue, 14 Jul 2026 01:16:06 GMT  
		Size: 76.5 MB (76533164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b379c5cd39c18c591caaed77b52cd26a23c02fb1ef8449830e7cd3263ab0a77`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:latest` - unknown; unknown

```console
$ docker pull emqx@sha256:e181b453a91ce04180caf13a9c6b52ef786bf53a0ca48c456193405524992237
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f0bb0cd3ee4c9c0ea6a0f29719af880889811d2f4b40a071853ec275452889`

```dockerfile
```

-	Layers:
	-	`sha256:583b71f367f673e1a72bfbffb9623d44000f66efc61772c5350f477c0168d07b`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 2.4 MB (2404040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb33b574425b1d81852f71b6cd9319f15221cd7c80e4744e96e33d8f23b5269c`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json
