## `emqx:latest`

```console
$ docker pull emqx@sha256:13c6c919f83be18655be893599396fa7d5fcac48ad2e4be79c9f6245f9638620
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:latest` - linux; amd64

```console
$ docker pull emqx@sha256:37937a64302e7cfa933a143e8193de46bb6bbfa02f723a8e76776bca41b46d23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108458116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b78867fc5e49da27d5932becf85554b618cb4a90a9645238d98b972f0b95236c`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:12:35 GMT
ENV EMQX_VERSION=5.8.8
# Sat, 19 Sep 2026 00:12:35 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Sat, 19 Sep 2026 00:12:35 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Sat, 19 Sep 2026 00:12:35 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Sat, 19 Sep 2026 00:12:35 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Sat, 19 Sep 2026 00:12:35 GMT
WORKDIR /opt/emqx
# Sat, 19 Sep 2026 00:12:35 GMT
USER emqx
# Sat, 19 Sep 2026 00:12:35 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Sat, 19 Sep 2026 00:12:35 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Sat, 19 Sep 2026 00:12:35 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Sat, 19 Sep 2026 00:12:35 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:12:35 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb91354736c118386095d3aacd8ec80595fcb9bc8e3deea8e6befa1e11d4530`  
		Last Modified: Sat, 19 Sep 2026 00:12:50 GMT  
		Size: 78.6 MB (78626635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95aa9bacfb198de440fb8aba6499626c4659a70c35c020e71d9d2a99ad5fa11a`  
		Last Modified: Sat, 19 Sep 2026 00:12:47 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:latest` - unknown; unknown

```console
$ docker pull emqx@sha256:91a2b50c69a9efe4e522373b1ce29b5822a3c0b6e865ac58eebef34ea44b6968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efd5951fae5c0bef0c20e51293c63438c94aead0f889e778ed37aff23c1abf81`

```dockerfile
```

-	Layers:
	-	`sha256:b103557053e91f84af48f0c5829b802d147a642663149d4e7216da74a6f8e975`  
		Last Modified: Sat, 19 Sep 2026 00:12:48 GMT  
		Size: 2.4 MB (2409667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8d9ed86b95446b8a2094ae2114acd81ee721a0098f1f82d17b8dbd42ef8aeaa`  
		Last Modified: Sat, 19 Sep 2026 00:12:47 GMT  
		Size: 12.5 KB (12483 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:latest` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:6d4f017666f5b354f9856774a5b658d6378fad3bd810b0e8d0f5f7f1f45331a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106724102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8e8afe9818fe255b56f2d64f15fa67bf3d8ff141ef694ebf606c1e7837a074`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:14:02 GMT
ENV EMQX_VERSION=5.8.8
# Sat, 19 Sep 2026 00:14:02 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Sat, 19 Sep 2026 00:14:02 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Sat, 19 Sep 2026 00:14:02 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Sat, 19 Sep 2026 00:14:02 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Sat, 19 Sep 2026 00:14:02 GMT
WORKDIR /opt/emqx
# Sat, 19 Sep 2026 00:14:02 GMT
USER emqx
# Sat, 19 Sep 2026 00:14:02 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Sat, 19 Sep 2026 00:14:02 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Sat, 19 Sep 2026 00:14:02 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Sat, 19 Sep 2026 00:14:02 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:14:02 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:516d1da53b445f7534208c6dc878e1696116fc3fa317b5c1bc98a79625497acd`  
		Last Modified: Sat, 19 Sep 2026 00:14:17 GMT  
		Size: 76.5 MB (76533350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d15bad228e573cba58494000cbac0ad0a6b19db6ca1ca92e0bf2a949b1761fec`  
		Last Modified: Sat, 19 Sep 2026 00:14:14 GMT  
		Size: 1.0 KB (1029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:latest` - unknown; unknown

```console
$ docker pull emqx@sha256:3328a3d0cd8766517c751e44b0799cd6153d1c40bfa04010b46de8fa2b7739bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c19f57343eb751d5d43c225005d08c6aad9e900565aa6ab52f48e535ccc4d240`

```dockerfile
```

-	Layers:
	-	`sha256:6c51f81adaa484345c5150756b6c3de59f1a99387d9187e6d17d909b4c909427`  
		Last Modified: Sat, 19 Sep 2026 00:14:14 GMT  
		Size: 2.4 MB (2409948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64d9621f622221b10a4e098ef19926cc67eb6da13df7db7e4b67bf289de4b36c`  
		Last Modified: Sat, 19 Sep 2026 00:14:14 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json
