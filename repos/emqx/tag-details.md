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
$ docker pull emqx@sha256:c4e4e21bfc60de6d1419c94b591e5e9076cd3284b3773cca8a929374483b62eb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5` - linux; amd64

```console
$ docker pull emqx@sha256:dca8a2d7c1df579b1344176df63ef927dd8228126f9e2b8193b17c340442cdff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108469722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f855a258b6eeb029733e4057d4521f969a9d6b7106143c6e292037ba7dbb263`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:15:20 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 21 Oct 2026 00:15:20 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 21 Oct 2026 00:15:20 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 21 Oct 2026 00:15:20 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 21 Oct 2026 00:15:20 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 21 Oct 2026 00:15:20 GMT
WORKDIR /opt/emqx
# Wed, 21 Oct 2026 00:15:20 GMT
USER emqx
# Wed, 21 Oct 2026 00:15:20 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 21 Oct 2026 00:15:20 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 21 Oct 2026 00:15:20 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 21 Oct 2026 00:15:20 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:15:20 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:043c9361dedc1df3372455dcfe5ed61076071de1c507553a9bf04482aea642a6`  
		Last Modified: Wed, 21 Oct 2026 00:15:35 GMT  
		Size: 78.6 MB (78625078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5d597f77446446371df9e5a1dd7531a87d11d987f2e88e46592251a0938554`  
		Last Modified: Wed, 21 Oct 2026 00:15:33 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5` - unknown; unknown

```console
$ docker pull emqx@sha256:218c3f2f23da223f56e2a670fe92abebca031040be6e3eb4e42844228168031b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f93cd5a41af31e3a077dc43c85c096952aa77625fb37d9d21e3b4553b68912`

```dockerfile
```

-	Layers:
	-	`sha256:65d0c2ecacbaff85996416aa5c3e6bbc540563fef95d9f5eb736135ad780735b`  
		Last Modified: Wed, 21 Oct 2026 00:15:33 GMT  
		Size: 2.4 MB (2408390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61ca7ea3be1dbe936fe6de72aa375036b6079d188a194bf78d6ce48ec61577df`  
		Last Modified: Wed, 21 Oct 2026 00:15:33 GMT  
		Size: 12.5 KB (12485 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:6cebd3c90e8b3e64533868f33c91a26317931f37e08ce2b53f4bc5af91ca84dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106736351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:443a6bc854acb3bd4bb88fb0080f83ad597e9f568a6bd9f1a916b61324d027ce`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:15:18 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 21 Oct 2026 00:15:18 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 21 Oct 2026 00:15:18 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 21 Oct 2026 00:15:18 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 21 Oct 2026 00:15:18 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 21 Oct 2026 00:15:18 GMT
WORKDIR /opt/emqx
# Wed, 21 Oct 2026 00:15:18 GMT
USER emqx
# Wed, 21 Oct 2026 00:15:18 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 21 Oct 2026 00:15:18 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 21 Oct 2026 00:15:18 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 21 Oct 2026 00:15:18 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:15:18 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4af3144cacd1707dada6afe820a39c7cdd64ae7d6196e9f9eff040e6286485a8`  
		Last Modified: Wed, 21 Oct 2026 00:15:35 GMT  
		Size: 76.5 MB (76534808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10670fe9fb61cece0245d7b58583333b12ef6ef8321ab493de0b66183ac063c2`  
		Last Modified: Wed, 21 Oct 2026 00:15:32 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5` - unknown; unknown

```console
$ docker pull emqx@sha256:2cbeb7beec42ccf0f9ebbfadc489064facc491c17948563e35f5e2f066493734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaca1c458586008e28024db7dd34bcac7ac698190d387f4a2598618d47b8f836`

```dockerfile
```

-	Layers:
	-	`sha256:c92c327a929abfa56d8e3063644f05bd3c375f3fa415125fe62e3b205a3131de`  
		Last Modified: Wed, 21 Oct 2026 00:15:32 GMT  
		Size: 2.4 MB (2408671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd58909dce862f87d90e1c331e1f4bb65439e40fd807c4362ee29cef0bae9572`  
		Last Modified: Wed, 21 Oct 2026 00:15:32 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.7`

```console
$ docker pull emqx@sha256:5b933b4045a6db5f11efb1161c500feddad6b71111ad6a2138ca31e7025b5d2e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.7` - linux; amd64

```console
$ docker pull emqx@sha256:8a09401b57e350ac81926ff6e7a27ce1f0e8e5524ce49f8e8b5295b918713d87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125222339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7ea4335b0e25812baa82c3f13d98458388a47b3b2f26cdadfe6033680101b1`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:14:57 GMT
ENV EMQX_VERSION=5.7.2
# Wed, 21 Oct 2026 00:14:57 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Wed, 21 Oct 2026 00:14:57 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Wed, 21 Oct 2026 00:14:57 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 21 Oct 2026 00:14:57 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 21 Oct 2026 00:14:57 GMT
WORKDIR /opt/emqx
# Wed, 21 Oct 2026 00:14:57 GMT
USER emqx
# Wed, 21 Oct 2026 00:14:57 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 21 Oct 2026 00:14:57 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 21 Oct 2026 00:14:57 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 21 Oct 2026 00:14:57 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:14:57 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c7a242f6f0ff9e8f51d185e3f6f5e5c2aa66c89b250ed815435d954f1fe97f`  
		Last Modified: Wed, 21 Oct 2026 00:15:19 GMT  
		Size: 97.0 MB (96973337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0687ad61a3d409445575542b9a296a5a887a6bb5c6f54c64f4acaef9efac1a76`  
		Last Modified: Wed, 21 Oct 2026 00:15:12 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7` - unknown; unknown

```console
$ docker pull emqx@sha256:2d6c097e79d550b438e3adac94a184420cbfbb1d538ef8f93cb25fb615ef109b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f3d8bc9337033b75c85dcf81a7c30b9db67d90badf51b961b9e8ac51700253`

```dockerfile
```

-	Layers:
	-	`sha256:ceeff503489fccfe02a6e6736ddb52f1f114802ac039a05d625599d39037d1f2`  
		Last Modified: Wed, 21 Oct 2026 00:15:12 GMT  
		Size: 2.8 MB (2755442 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e434734e0b0a5d818f5babb5a0fdf4d34ce3837eb3defbb9a01ddf599f7781a0`  
		Last Modified: Wed, 21 Oct 2026 00:15:12 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.7` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:fd58296e0064008a1a6899f420995003e1299a119081c2b09286449b330f3f36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.7 MB (121682476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e162f58608e1248577932e4116fb055693843d62cd1b6e154d7eddea75f09990`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:14:46 GMT
ENV EMQX_VERSION=5.7.2
# Wed, 21 Oct 2026 00:14:46 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Wed, 21 Oct 2026 00:14:46 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Wed, 21 Oct 2026 00:14:46 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 21 Oct 2026 00:14:46 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 21 Oct 2026 00:14:46 GMT
WORKDIR /opt/emqx
# Wed, 21 Oct 2026 00:14:46 GMT
USER emqx
# Wed, 21 Oct 2026 00:14:46 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 21 Oct 2026 00:14:46 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 21 Oct 2026 00:14:46 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 21 Oct 2026 00:14:46 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:14:46 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14c43e25d09a5e190274ac5324a23407bdec236f1aab5b4250f7b8c35605c6d5`  
		Last Modified: Wed, 21 Oct 2026 00:15:03 GMT  
		Size: 93.5 MB (93542985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495e31a6226b86b268eba47212ab19cd3ca71b16bda11f2fdfb5814a1781fdd3`  
		Last Modified: Wed, 21 Oct 2026 00:15:01 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7` - unknown; unknown

```console
$ docker pull emqx@sha256:2876d7a19b0056be1536792d05e8df05b7f5ee97d19aa0ab19a22f2c11059c13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69c31298012c35e74ee6de88ee8b5f11d79c827e8dc9243417da854719b77251`

```dockerfile
```

-	Layers:
	-	`sha256:20762c460ca7d763e3d3ec306b31b8502ce7c3b4f7d6536fb5514ec87b562d21`  
		Last Modified: Wed, 21 Oct 2026 00:15:01 GMT  
		Size: 2.8 MB (2755698 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf665ae684d584057c1ac8aa9a1a1d015181572d2fcbaba21fdcfca7e5f9e00a`  
		Last Modified: Wed, 21 Oct 2026 00:15:01 GMT  
		Size: 12.0 KB (11988 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.7.2`

```console
$ docker pull emqx@sha256:5b933b4045a6db5f11efb1161c500feddad6b71111ad6a2138ca31e7025b5d2e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.7.2` - linux; amd64

```console
$ docker pull emqx@sha256:8a09401b57e350ac81926ff6e7a27ce1f0e8e5524ce49f8e8b5295b918713d87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125222339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7ea4335b0e25812baa82c3f13d98458388a47b3b2f26cdadfe6033680101b1`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:14:57 GMT
ENV EMQX_VERSION=5.7.2
# Wed, 21 Oct 2026 00:14:57 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Wed, 21 Oct 2026 00:14:57 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Wed, 21 Oct 2026 00:14:57 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 21 Oct 2026 00:14:57 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 21 Oct 2026 00:14:57 GMT
WORKDIR /opt/emqx
# Wed, 21 Oct 2026 00:14:57 GMT
USER emqx
# Wed, 21 Oct 2026 00:14:57 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 21 Oct 2026 00:14:57 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 21 Oct 2026 00:14:57 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 21 Oct 2026 00:14:57 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:14:57 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c7a242f6f0ff9e8f51d185e3f6f5e5c2aa66c89b250ed815435d954f1fe97f`  
		Last Modified: Wed, 21 Oct 2026 00:15:19 GMT  
		Size: 97.0 MB (96973337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0687ad61a3d409445575542b9a296a5a887a6bb5c6f54c64f4acaef9efac1a76`  
		Last Modified: Wed, 21 Oct 2026 00:15:12 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7.2` - unknown; unknown

```console
$ docker pull emqx@sha256:2d6c097e79d550b438e3adac94a184420cbfbb1d538ef8f93cb25fb615ef109b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f3d8bc9337033b75c85dcf81a7c30b9db67d90badf51b961b9e8ac51700253`

```dockerfile
```

-	Layers:
	-	`sha256:ceeff503489fccfe02a6e6736ddb52f1f114802ac039a05d625599d39037d1f2`  
		Last Modified: Wed, 21 Oct 2026 00:15:12 GMT  
		Size: 2.8 MB (2755442 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e434734e0b0a5d818f5babb5a0fdf4d34ce3837eb3defbb9a01ddf599f7781a0`  
		Last Modified: Wed, 21 Oct 2026 00:15:12 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.7.2` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:fd58296e0064008a1a6899f420995003e1299a119081c2b09286449b330f3f36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.7 MB (121682476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e162f58608e1248577932e4116fb055693843d62cd1b6e154d7eddea75f09990`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:14:46 GMT
ENV EMQX_VERSION=5.7.2
# Wed, 21 Oct 2026 00:14:46 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Wed, 21 Oct 2026 00:14:46 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Wed, 21 Oct 2026 00:14:46 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 21 Oct 2026 00:14:46 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 21 Oct 2026 00:14:46 GMT
WORKDIR /opt/emqx
# Wed, 21 Oct 2026 00:14:46 GMT
USER emqx
# Wed, 21 Oct 2026 00:14:46 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 21 Oct 2026 00:14:46 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 21 Oct 2026 00:14:46 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 21 Oct 2026 00:14:46 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:14:46 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14c43e25d09a5e190274ac5324a23407bdec236f1aab5b4250f7b8c35605c6d5`  
		Last Modified: Wed, 21 Oct 2026 00:15:03 GMT  
		Size: 93.5 MB (93542985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495e31a6226b86b268eba47212ab19cd3ca71b16bda11f2fdfb5814a1781fdd3`  
		Last Modified: Wed, 21 Oct 2026 00:15:01 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7.2` - unknown; unknown

```console
$ docker pull emqx@sha256:2876d7a19b0056be1536792d05e8df05b7f5ee97d19aa0ab19a22f2c11059c13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69c31298012c35e74ee6de88ee8b5f11d79c827e8dc9243417da854719b77251`

```dockerfile
```

-	Layers:
	-	`sha256:20762c460ca7d763e3d3ec306b31b8502ce7c3b4f7d6536fb5514ec87b562d21`  
		Last Modified: Wed, 21 Oct 2026 00:15:01 GMT  
		Size: 2.8 MB (2755698 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf665ae684d584057c1ac8aa9a1a1d015181572d2fcbaba21fdcfca7e5f9e00a`  
		Last Modified: Wed, 21 Oct 2026 00:15:01 GMT  
		Size: 12.0 KB (11988 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.8`

```console
$ docker pull emqx@sha256:c4e4e21bfc60de6d1419c94b591e5e9076cd3284b3773cca8a929374483b62eb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.8` - linux; amd64

```console
$ docker pull emqx@sha256:dca8a2d7c1df579b1344176df63ef927dd8228126f9e2b8193b17c340442cdff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108469722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f855a258b6eeb029733e4057d4521f969a9d6b7106143c6e292037ba7dbb263`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:15:20 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 21 Oct 2026 00:15:20 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 21 Oct 2026 00:15:20 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 21 Oct 2026 00:15:20 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 21 Oct 2026 00:15:20 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 21 Oct 2026 00:15:20 GMT
WORKDIR /opt/emqx
# Wed, 21 Oct 2026 00:15:20 GMT
USER emqx
# Wed, 21 Oct 2026 00:15:20 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 21 Oct 2026 00:15:20 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 21 Oct 2026 00:15:20 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 21 Oct 2026 00:15:20 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:15:20 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:043c9361dedc1df3372455dcfe5ed61076071de1c507553a9bf04482aea642a6`  
		Last Modified: Wed, 21 Oct 2026 00:15:35 GMT  
		Size: 78.6 MB (78625078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5d597f77446446371df9e5a1dd7531a87d11d987f2e88e46592251a0938554`  
		Last Modified: Wed, 21 Oct 2026 00:15:33 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8` - unknown; unknown

```console
$ docker pull emqx@sha256:218c3f2f23da223f56e2a670fe92abebca031040be6e3eb4e42844228168031b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f93cd5a41af31e3a077dc43c85c096952aa77625fb37d9d21e3b4553b68912`

```dockerfile
```

-	Layers:
	-	`sha256:65d0c2ecacbaff85996416aa5c3e6bbc540563fef95d9f5eb736135ad780735b`  
		Last Modified: Wed, 21 Oct 2026 00:15:33 GMT  
		Size: 2.4 MB (2408390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61ca7ea3be1dbe936fe6de72aa375036b6079d188a194bf78d6ce48ec61577df`  
		Last Modified: Wed, 21 Oct 2026 00:15:33 GMT  
		Size: 12.5 KB (12485 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.8` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:6cebd3c90e8b3e64533868f33c91a26317931f37e08ce2b53f4bc5af91ca84dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106736351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:443a6bc854acb3bd4bb88fb0080f83ad597e9f568a6bd9f1a916b61324d027ce`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:15:18 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 21 Oct 2026 00:15:18 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 21 Oct 2026 00:15:18 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 21 Oct 2026 00:15:18 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 21 Oct 2026 00:15:18 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 21 Oct 2026 00:15:18 GMT
WORKDIR /opt/emqx
# Wed, 21 Oct 2026 00:15:18 GMT
USER emqx
# Wed, 21 Oct 2026 00:15:18 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 21 Oct 2026 00:15:18 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 21 Oct 2026 00:15:18 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 21 Oct 2026 00:15:18 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:15:18 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4af3144cacd1707dada6afe820a39c7cdd64ae7d6196e9f9eff040e6286485a8`  
		Last Modified: Wed, 21 Oct 2026 00:15:35 GMT  
		Size: 76.5 MB (76534808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10670fe9fb61cece0245d7b58583333b12ef6ef8321ab493de0b66183ac063c2`  
		Last Modified: Wed, 21 Oct 2026 00:15:32 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8` - unknown; unknown

```console
$ docker pull emqx@sha256:2cbeb7beec42ccf0f9ebbfadc489064facc491c17948563e35f5e2f066493734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaca1c458586008e28024db7dd34bcac7ac698190d387f4a2598618d47b8f836`

```dockerfile
```

-	Layers:
	-	`sha256:c92c327a929abfa56d8e3063644f05bd3c375f3fa415125fe62e3b205a3131de`  
		Last Modified: Wed, 21 Oct 2026 00:15:32 GMT  
		Size: 2.4 MB (2408671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd58909dce862f87d90e1c331e1f4bb65439e40fd807c4362ee29cef0bae9572`  
		Last Modified: Wed, 21 Oct 2026 00:15:32 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.8.8`

```console
$ docker pull emqx@sha256:c4e4e21bfc60de6d1419c94b591e5e9076cd3284b3773cca8a929374483b62eb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.8.8` - linux; amd64

```console
$ docker pull emqx@sha256:dca8a2d7c1df579b1344176df63ef927dd8228126f9e2b8193b17c340442cdff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108469722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f855a258b6eeb029733e4057d4521f969a9d6b7106143c6e292037ba7dbb263`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:15:20 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 21 Oct 2026 00:15:20 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 21 Oct 2026 00:15:20 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 21 Oct 2026 00:15:20 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 21 Oct 2026 00:15:20 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 21 Oct 2026 00:15:20 GMT
WORKDIR /opt/emqx
# Wed, 21 Oct 2026 00:15:20 GMT
USER emqx
# Wed, 21 Oct 2026 00:15:20 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 21 Oct 2026 00:15:20 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 21 Oct 2026 00:15:20 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 21 Oct 2026 00:15:20 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:15:20 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:043c9361dedc1df3372455dcfe5ed61076071de1c507553a9bf04482aea642a6`  
		Last Modified: Wed, 21 Oct 2026 00:15:35 GMT  
		Size: 78.6 MB (78625078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5d597f77446446371df9e5a1dd7531a87d11d987f2e88e46592251a0938554`  
		Last Modified: Wed, 21 Oct 2026 00:15:33 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8.8` - unknown; unknown

```console
$ docker pull emqx@sha256:218c3f2f23da223f56e2a670fe92abebca031040be6e3eb4e42844228168031b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f93cd5a41af31e3a077dc43c85c096952aa77625fb37d9d21e3b4553b68912`

```dockerfile
```

-	Layers:
	-	`sha256:65d0c2ecacbaff85996416aa5c3e6bbc540563fef95d9f5eb736135ad780735b`  
		Last Modified: Wed, 21 Oct 2026 00:15:33 GMT  
		Size: 2.4 MB (2408390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61ca7ea3be1dbe936fe6de72aa375036b6079d188a194bf78d6ce48ec61577df`  
		Last Modified: Wed, 21 Oct 2026 00:15:33 GMT  
		Size: 12.5 KB (12485 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.8.8` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:6cebd3c90e8b3e64533868f33c91a26317931f37e08ce2b53f4bc5af91ca84dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106736351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:443a6bc854acb3bd4bb88fb0080f83ad597e9f568a6bd9f1a916b61324d027ce`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:15:18 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 21 Oct 2026 00:15:18 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 21 Oct 2026 00:15:18 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 21 Oct 2026 00:15:18 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 21 Oct 2026 00:15:18 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 21 Oct 2026 00:15:18 GMT
WORKDIR /opt/emqx
# Wed, 21 Oct 2026 00:15:18 GMT
USER emqx
# Wed, 21 Oct 2026 00:15:18 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 21 Oct 2026 00:15:18 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 21 Oct 2026 00:15:18 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 21 Oct 2026 00:15:18 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:15:18 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4af3144cacd1707dada6afe820a39c7cdd64ae7d6196e9f9eff040e6286485a8`  
		Last Modified: Wed, 21 Oct 2026 00:15:35 GMT  
		Size: 76.5 MB (76534808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10670fe9fb61cece0245d7b58583333b12ef6ef8321ab493de0b66183ac063c2`  
		Last Modified: Wed, 21 Oct 2026 00:15:32 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8.8` - unknown; unknown

```console
$ docker pull emqx@sha256:2cbeb7beec42ccf0f9ebbfadc489064facc491c17948563e35f5e2f066493734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaca1c458586008e28024db7dd34bcac7ac698190d387f4a2598618d47b8f836`

```dockerfile
```

-	Layers:
	-	`sha256:c92c327a929abfa56d8e3063644f05bd3c375f3fa415125fe62e3b205a3131de`  
		Last Modified: Wed, 21 Oct 2026 00:15:32 GMT  
		Size: 2.4 MB (2408671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd58909dce862f87d90e1c331e1f4bb65439e40fd807c4362ee29cef0bae9572`  
		Last Modified: Wed, 21 Oct 2026 00:15:32 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:latest`

```console
$ docker pull emqx@sha256:c4e4e21bfc60de6d1419c94b591e5e9076cd3284b3773cca8a929374483b62eb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:latest` - linux; amd64

```console
$ docker pull emqx@sha256:dca8a2d7c1df579b1344176df63ef927dd8228126f9e2b8193b17c340442cdff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108469722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f855a258b6eeb029733e4057d4521f969a9d6b7106143c6e292037ba7dbb263`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:15:20 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 21 Oct 2026 00:15:20 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 21 Oct 2026 00:15:20 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 21 Oct 2026 00:15:20 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 21 Oct 2026 00:15:20 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 21 Oct 2026 00:15:20 GMT
WORKDIR /opt/emqx
# Wed, 21 Oct 2026 00:15:20 GMT
USER emqx
# Wed, 21 Oct 2026 00:15:20 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 21 Oct 2026 00:15:20 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 21 Oct 2026 00:15:20 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 21 Oct 2026 00:15:20 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:15:20 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:043c9361dedc1df3372455dcfe5ed61076071de1c507553a9bf04482aea642a6`  
		Last Modified: Wed, 21 Oct 2026 00:15:35 GMT  
		Size: 78.6 MB (78625078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5d597f77446446371df9e5a1dd7531a87d11d987f2e88e46592251a0938554`  
		Last Modified: Wed, 21 Oct 2026 00:15:33 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:latest` - unknown; unknown

```console
$ docker pull emqx@sha256:218c3f2f23da223f56e2a670fe92abebca031040be6e3eb4e42844228168031b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f93cd5a41af31e3a077dc43c85c096952aa77625fb37d9d21e3b4553b68912`

```dockerfile
```

-	Layers:
	-	`sha256:65d0c2ecacbaff85996416aa5c3e6bbc540563fef95d9f5eb736135ad780735b`  
		Last Modified: Wed, 21 Oct 2026 00:15:33 GMT  
		Size: 2.4 MB (2408390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61ca7ea3be1dbe936fe6de72aa375036b6079d188a194bf78d6ce48ec61577df`  
		Last Modified: Wed, 21 Oct 2026 00:15:33 GMT  
		Size: 12.5 KB (12485 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:latest` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:6cebd3c90e8b3e64533868f33c91a26317931f37e08ce2b53f4bc5af91ca84dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106736351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:443a6bc854acb3bd4bb88fb0080f83ad597e9f568a6bd9f1a916b61324d027ce`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:15:18 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 21 Oct 2026 00:15:18 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 21 Oct 2026 00:15:18 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 21 Oct 2026 00:15:18 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 21 Oct 2026 00:15:18 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 21 Oct 2026 00:15:18 GMT
WORKDIR /opt/emqx
# Wed, 21 Oct 2026 00:15:18 GMT
USER emqx
# Wed, 21 Oct 2026 00:15:18 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 21 Oct 2026 00:15:18 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 21 Oct 2026 00:15:18 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 21 Oct 2026 00:15:18 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:15:18 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4af3144cacd1707dada6afe820a39c7cdd64ae7d6196e9f9eff040e6286485a8`  
		Last Modified: Wed, 21 Oct 2026 00:15:35 GMT  
		Size: 76.5 MB (76534808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10670fe9fb61cece0245d7b58583333b12ef6ef8321ab493de0b66183ac063c2`  
		Last Modified: Wed, 21 Oct 2026 00:15:32 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:latest` - unknown; unknown

```console
$ docker pull emqx@sha256:2cbeb7beec42ccf0f9ebbfadc489064facc491c17948563e35f5e2f066493734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaca1c458586008e28024db7dd34bcac7ac698190d387f4a2598618d47b8f836`

```dockerfile
```

-	Layers:
	-	`sha256:c92c327a929abfa56d8e3063644f05bd3c375f3fa415125fe62e3b205a3131de`  
		Last Modified: Wed, 21 Oct 2026 00:15:32 GMT  
		Size: 2.4 MB (2408671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd58909dce862f87d90e1c331e1f4bb65439e40fd807c4362ee29cef0bae9572`  
		Last Modified: Wed, 21 Oct 2026 00:15:32 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json
