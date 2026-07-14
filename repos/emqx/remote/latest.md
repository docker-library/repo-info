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
