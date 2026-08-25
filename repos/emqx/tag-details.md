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
$ docker pull emqx@sha256:11efadd3e7ae665d39a7a7838ac0c783bb7bb80abb3c0efcc8fd8f80c45b0209
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5` - linux; amd64

```console
$ docker pull emqx@sha256:da0c8f724b964bc2763aa4558756319860f8d14c6cbdcc20eb29daa5d1400b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108420022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6c108b5d0a3e20cd0c63246343adf9de5792a3b2ff02e9511f441c376875b2`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:17 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 25 Aug 2026 00:16:17 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 25 Aug 2026 00:16:17 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 25 Aug 2026 00:16:17 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 25 Aug 2026 00:16:17 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 25 Aug 2026 00:16:17 GMT
WORKDIR /opt/emqx
# Tue, 25 Aug 2026 00:16:17 GMT
USER emqx
# Tue, 25 Aug 2026 00:16:17 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 25 Aug 2026 00:16:17 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 25 Aug 2026 00:16:17 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 25 Aug 2026 00:16:17 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:16:17 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a20ea6b8242f04bc230907069581c8af445c52c6be346d3f66544dd941bc0d5`  
		Last Modified: Tue, 25 Aug 2026 00:16:32 GMT  
		Size: 78.6 MB (78626299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ad037ac7b177326d46362a0d3d27436ee2ee29d940b4e66ff664d2aadc29f2`  
		Last Modified: Tue, 25 Aug 2026 00:16:30 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5` - unknown; unknown

```console
$ docker pull emqx@sha256:06113f093ca85e47f88232585929926fa76efef81544f024e16a71ebb2a6c0a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a93815a5e5827c8946b1c1a9d2ba445933a9d02ee6951942fb50e1d9a7f10c`

```dockerfile
```

-	Layers:
	-	`sha256:33cad876deefb707396d9611fd58cb3feeba24c8733418db3600d9f50454de8b`  
		Last Modified: Tue, 25 Aug 2026 00:16:30 GMT  
		Size: 2.4 MB (2403957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e208bad2f86c6be0d23f490e59781cb80b0df98e63bfe67e1152f83ac18640b`  
		Last Modified: Tue, 25 Aug 2026 00:16:29 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:9535a506376c3f6fa7a6be99cbb27d4db5039e8da5478eb23f22947f3be43607
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106693642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30419b585090a92e8c8dd912bbe70f2c1962c9b9543ebf22376c6236b0a1a4ea`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:15:47 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 25 Aug 2026 00:15:47 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 25 Aug 2026 00:15:47 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 25 Aug 2026 00:15:47 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 25 Aug 2026 00:15:47 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 25 Aug 2026 00:15:47 GMT
WORKDIR /opt/emqx
# Tue, 25 Aug 2026 00:15:47 GMT
USER emqx
# Tue, 25 Aug 2026 00:15:47 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 25 Aug 2026 00:15:47 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 25 Aug 2026 00:15:47 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 25 Aug 2026 00:15:47 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:15:47 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1bacc94f80147d2c24233023cd03a2445da9368dd304f1b4e27e80b2c3d0861`  
		Last Modified: Tue, 25 Aug 2026 00:16:02 GMT  
		Size: 76.5 MB (76532997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6403f3c25f50acf648a9f1ac67d83333a5d595fe11a13e4f44904cff80bda65b`  
		Last Modified: Tue, 25 Aug 2026 00:16:00 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5` - unknown; unknown

```console
$ docker pull emqx@sha256:e5fa86a8c32a758f1421e9ea767b7042f867f530f8a7afcfa322f917279fb9e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d018bb4162ee5d6c579687261bbd7b3b38684efc4534ce90d80f414b5eb8a8`

```dockerfile
```

-	Layers:
	-	`sha256:82cc5af44284ea8ec6c216349d0990d1057365027877c6f3a854ef57a7d53a1f`  
		Last Modified: Tue, 25 Aug 2026 00:16:00 GMT  
		Size: 2.4 MB (2404238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d32592c19de8fb9280216c4982ad483b7d07a6fe6d7a0fe59abf5b389fb27106`  
		Last Modified: Tue, 25 Aug 2026 00:16:00 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.7`

```console
$ docker pull emqx@sha256:d7b6151f45a115c0419d18e230289436004076e985f949fdf7ff2a345478673a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.7` - linux; amd64

```console
$ docker pull emqx@sha256:3498c4b83680c52f7b280d781c3215adc279d8c6b86772fffef9f87b25936b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125407494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec402db8c671f04680f18d289bc0cfff528e66166894c6579c88d93b99a598ee`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:16:13 GMT
ENV EMQX_VERSION=5.7.2
# Tue, 25 Aug 2026 00:16:13 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Tue, 25 Aug 2026 00:16:13 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Tue, 25 Aug 2026 00:16:13 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 25 Aug 2026 00:16:13 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 25 Aug 2026 00:16:13 GMT
WORKDIR /opt/emqx
# Tue, 25 Aug 2026 00:16:13 GMT
USER emqx
# Tue, 25 Aug 2026 00:16:13 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 25 Aug 2026 00:16:13 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 25 Aug 2026 00:16:13 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 25 Aug 2026 00:16:13 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:16:13 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7512e7c5a2a47733088c3bb697fa0a49e5b2019c72b7ab8218c24b87b474c7b`  
		Last Modified: Tue, 25 Aug 2026 00:16:30 GMT  
		Size: 97.2 MB (97173776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25fb574615ab97af6f996783b228043256f206eb5a2385468d74c7caad9c24a`  
		Last Modified: Tue, 25 Aug 2026 00:16:27 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7` - unknown; unknown

```console
$ docker pull emqx@sha256:19de658cff48466c79ff2ffe649239fd9d1d20be1cf5ac9019394c785ced625f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2768580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff59bdacaf1b11174e87e2567243716d4b481afc55172e6ecaf019670ac58a7d`

```dockerfile
```

-	Layers:
	-	`sha256:4bddeaf41e480a6fa266592f51edc5c6cf1e6eb63e9b50e5fd24f1d6d1ff4b1f`  
		Last Modified: Tue, 25 Aug 2026 00:16:28 GMT  
		Size: 2.8 MB (2756673 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:962969fd8aff2c402ef74e2b817488f7b4278478af8929097302b4a201e4395c`  
		Last Modified: Tue, 25 Aug 2026 00:16:27 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.7` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:a27111f5c62fcdaa8c0f65d99d7319bb6efdd1f9b419d72078bade689374196c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.9 MB (121853696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86fd47734250395d33c11a8604cf0ac71df07d03bda6b869cdb49f007717a6e9`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:15:47 GMT
ENV EMQX_VERSION=5.7.2
# Tue, 25 Aug 2026 00:15:47 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Tue, 25 Aug 2026 00:15:47 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Tue, 25 Aug 2026 00:15:47 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 25 Aug 2026 00:15:47 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 25 Aug 2026 00:15:47 GMT
WORKDIR /opt/emqx
# Tue, 25 Aug 2026 00:15:47 GMT
USER emqx
# Tue, 25 Aug 2026 00:15:47 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 25 Aug 2026 00:15:47 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 25 Aug 2026 00:15:47 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 25 Aug 2026 00:15:47 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:15:47 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f281ea31242f8b861b9d4ba5a61c6181aa7860f4d419f1e84a40a36abc7d420`  
		Last Modified: Tue, 25 Aug 2026 00:16:04 GMT  
		Size: 93.7 MB (93735343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a57ac20059d7bd074d67f59467fd69c451304a9301e54a2247a2b4eea112b557`  
		Last Modified: Tue, 25 Aug 2026 00:16:02 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7` - unknown; unknown

```console
$ docker pull emqx@sha256:f1e4632d89e31dd9a9a185141c688c0756d5d8737302690727acb575ce418e52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2768917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:702f7b6ff20fcb83fec6bc84288203ac09f927b1d88a6d95f53764851c82b2ff`

```dockerfile
```

-	Layers:
	-	`sha256:68bc541cfda0bfcd2ed1c12eded1b301fc99b137efb33179f086f121dd33d9f8`  
		Last Modified: Tue, 25 Aug 2026 00:16:02 GMT  
		Size: 2.8 MB (2756929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37b58ed37a6c9e817a8af37b74df2bd0e8a8d8c973ed95b8d392ac8b70f374be`  
		Last Modified: Tue, 25 Aug 2026 00:16:02 GMT  
		Size: 12.0 KB (11988 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.7.2`

```console
$ docker pull emqx@sha256:d7b6151f45a115c0419d18e230289436004076e985f949fdf7ff2a345478673a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.7.2` - linux; amd64

```console
$ docker pull emqx@sha256:3498c4b83680c52f7b280d781c3215adc279d8c6b86772fffef9f87b25936b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125407494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec402db8c671f04680f18d289bc0cfff528e66166894c6579c88d93b99a598ee`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:16:13 GMT
ENV EMQX_VERSION=5.7.2
# Tue, 25 Aug 2026 00:16:13 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Tue, 25 Aug 2026 00:16:13 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Tue, 25 Aug 2026 00:16:13 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 25 Aug 2026 00:16:13 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 25 Aug 2026 00:16:13 GMT
WORKDIR /opt/emqx
# Tue, 25 Aug 2026 00:16:13 GMT
USER emqx
# Tue, 25 Aug 2026 00:16:13 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 25 Aug 2026 00:16:13 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 25 Aug 2026 00:16:13 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 25 Aug 2026 00:16:13 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:16:13 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7512e7c5a2a47733088c3bb697fa0a49e5b2019c72b7ab8218c24b87b474c7b`  
		Last Modified: Tue, 25 Aug 2026 00:16:30 GMT  
		Size: 97.2 MB (97173776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25fb574615ab97af6f996783b228043256f206eb5a2385468d74c7caad9c24a`  
		Last Modified: Tue, 25 Aug 2026 00:16:27 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7.2` - unknown; unknown

```console
$ docker pull emqx@sha256:19de658cff48466c79ff2ffe649239fd9d1d20be1cf5ac9019394c785ced625f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2768580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff59bdacaf1b11174e87e2567243716d4b481afc55172e6ecaf019670ac58a7d`

```dockerfile
```

-	Layers:
	-	`sha256:4bddeaf41e480a6fa266592f51edc5c6cf1e6eb63e9b50e5fd24f1d6d1ff4b1f`  
		Last Modified: Tue, 25 Aug 2026 00:16:28 GMT  
		Size: 2.8 MB (2756673 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:962969fd8aff2c402ef74e2b817488f7b4278478af8929097302b4a201e4395c`  
		Last Modified: Tue, 25 Aug 2026 00:16:27 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.7.2` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:a27111f5c62fcdaa8c0f65d99d7319bb6efdd1f9b419d72078bade689374196c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.9 MB (121853696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86fd47734250395d33c11a8604cf0ac71df07d03bda6b869cdb49f007717a6e9`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:15:47 GMT
ENV EMQX_VERSION=5.7.2
# Tue, 25 Aug 2026 00:15:47 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Tue, 25 Aug 2026 00:15:47 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Tue, 25 Aug 2026 00:15:47 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 25 Aug 2026 00:15:47 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 25 Aug 2026 00:15:47 GMT
WORKDIR /opt/emqx
# Tue, 25 Aug 2026 00:15:47 GMT
USER emqx
# Tue, 25 Aug 2026 00:15:47 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 25 Aug 2026 00:15:47 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 25 Aug 2026 00:15:47 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 25 Aug 2026 00:15:47 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:15:47 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f281ea31242f8b861b9d4ba5a61c6181aa7860f4d419f1e84a40a36abc7d420`  
		Last Modified: Tue, 25 Aug 2026 00:16:04 GMT  
		Size: 93.7 MB (93735343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a57ac20059d7bd074d67f59467fd69c451304a9301e54a2247a2b4eea112b557`  
		Last Modified: Tue, 25 Aug 2026 00:16:02 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7.2` - unknown; unknown

```console
$ docker pull emqx@sha256:f1e4632d89e31dd9a9a185141c688c0756d5d8737302690727acb575ce418e52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2768917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:702f7b6ff20fcb83fec6bc84288203ac09f927b1d88a6d95f53764851c82b2ff`

```dockerfile
```

-	Layers:
	-	`sha256:68bc541cfda0bfcd2ed1c12eded1b301fc99b137efb33179f086f121dd33d9f8`  
		Last Modified: Tue, 25 Aug 2026 00:16:02 GMT  
		Size: 2.8 MB (2756929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37b58ed37a6c9e817a8af37b74df2bd0e8a8d8c973ed95b8d392ac8b70f374be`  
		Last Modified: Tue, 25 Aug 2026 00:16:02 GMT  
		Size: 12.0 KB (11988 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.8`

```console
$ docker pull emqx@sha256:11efadd3e7ae665d39a7a7838ac0c783bb7bb80abb3c0efcc8fd8f80c45b0209
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.8` - linux; amd64

```console
$ docker pull emqx@sha256:da0c8f724b964bc2763aa4558756319860f8d14c6cbdcc20eb29daa5d1400b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108420022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6c108b5d0a3e20cd0c63246343adf9de5792a3b2ff02e9511f441c376875b2`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:17 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 25 Aug 2026 00:16:17 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 25 Aug 2026 00:16:17 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 25 Aug 2026 00:16:17 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 25 Aug 2026 00:16:17 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 25 Aug 2026 00:16:17 GMT
WORKDIR /opt/emqx
# Tue, 25 Aug 2026 00:16:17 GMT
USER emqx
# Tue, 25 Aug 2026 00:16:17 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 25 Aug 2026 00:16:17 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 25 Aug 2026 00:16:17 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 25 Aug 2026 00:16:17 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:16:17 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a20ea6b8242f04bc230907069581c8af445c52c6be346d3f66544dd941bc0d5`  
		Last Modified: Tue, 25 Aug 2026 00:16:32 GMT  
		Size: 78.6 MB (78626299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ad037ac7b177326d46362a0d3d27436ee2ee29d940b4e66ff664d2aadc29f2`  
		Last Modified: Tue, 25 Aug 2026 00:16:30 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8` - unknown; unknown

```console
$ docker pull emqx@sha256:06113f093ca85e47f88232585929926fa76efef81544f024e16a71ebb2a6c0a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a93815a5e5827c8946b1c1a9d2ba445933a9d02ee6951942fb50e1d9a7f10c`

```dockerfile
```

-	Layers:
	-	`sha256:33cad876deefb707396d9611fd58cb3feeba24c8733418db3600d9f50454de8b`  
		Last Modified: Tue, 25 Aug 2026 00:16:30 GMT  
		Size: 2.4 MB (2403957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e208bad2f86c6be0d23f490e59781cb80b0df98e63bfe67e1152f83ac18640b`  
		Last Modified: Tue, 25 Aug 2026 00:16:29 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.8` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:9535a506376c3f6fa7a6be99cbb27d4db5039e8da5478eb23f22947f3be43607
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106693642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30419b585090a92e8c8dd912bbe70f2c1962c9b9543ebf22376c6236b0a1a4ea`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:15:47 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 25 Aug 2026 00:15:47 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 25 Aug 2026 00:15:47 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 25 Aug 2026 00:15:47 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 25 Aug 2026 00:15:47 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 25 Aug 2026 00:15:47 GMT
WORKDIR /opt/emqx
# Tue, 25 Aug 2026 00:15:47 GMT
USER emqx
# Tue, 25 Aug 2026 00:15:47 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 25 Aug 2026 00:15:47 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 25 Aug 2026 00:15:47 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 25 Aug 2026 00:15:47 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:15:47 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1bacc94f80147d2c24233023cd03a2445da9368dd304f1b4e27e80b2c3d0861`  
		Last Modified: Tue, 25 Aug 2026 00:16:02 GMT  
		Size: 76.5 MB (76532997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6403f3c25f50acf648a9f1ac67d83333a5d595fe11a13e4f44904cff80bda65b`  
		Last Modified: Tue, 25 Aug 2026 00:16:00 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8` - unknown; unknown

```console
$ docker pull emqx@sha256:e5fa86a8c32a758f1421e9ea767b7042f867f530f8a7afcfa322f917279fb9e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d018bb4162ee5d6c579687261bbd7b3b38684efc4534ce90d80f414b5eb8a8`

```dockerfile
```

-	Layers:
	-	`sha256:82cc5af44284ea8ec6c216349d0990d1057365027877c6f3a854ef57a7d53a1f`  
		Last Modified: Tue, 25 Aug 2026 00:16:00 GMT  
		Size: 2.4 MB (2404238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d32592c19de8fb9280216c4982ad483b7d07a6fe6d7a0fe59abf5b389fb27106`  
		Last Modified: Tue, 25 Aug 2026 00:16:00 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.8.8`

```console
$ docker pull emqx@sha256:11efadd3e7ae665d39a7a7838ac0c783bb7bb80abb3c0efcc8fd8f80c45b0209
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.8.8` - linux; amd64

```console
$ docker pull emqx@sha256:da0c8f724b964bc2763aa4558756319860f8d14c6cbdcc20eb29daa5d1400b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108420022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6c108b5d0a3e20cd0c63246343adf9de5792a3b2ff02e9511f441c376875b2`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:17 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 25 Aug 2026 00:16:17 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 25 Aug 2026 00:16:17 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 25 Aug 2026 00:16:17 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 25 Aug 2026 00:16:17 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 25 Aug 2026 00:16:17 GMT
WORKDIR /opt/emqx
# Tue, 25 Aug 2026 00:16:17 GMT
USER emqx
# Tue, 25 Aug 2026 00:16:17 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 25 Aug 2026 00:16:17 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 25 Aug 2026 00:16:17 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 25 Aug 2026 00:16:17 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:16:17 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a20ea6b8242f04bc230907069581c8af445c52c6be346d3f66544dd941bc0d5`  
		Last Modified: Tue, 25 Aug 2026 00:16:32 GMT  
		Size: 78.6 MB (78626299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ad037ac7b177326d46362a0d3d27436ee2ee29d940b4e66ff664d2aadc29f2`  
		Last Modified: Tue, 25 Aug 2026 00:16:30 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8.8` - unknown; unknown

```console
$ docker pull emqx@sha256:06113f093ca85e47f88232585929926fa76efef81544f024e16a71ebb2a6c0a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a93815a5e5827c8946b1c1a9d2ba445933a9d02ee6951942fb50e1d9a7f10c`

```dockerfile
```

-	Layers:
	-	`sha256:33cad876deefb707396d9611fd58cb3feeba24c8733418db3600d9f50454de8b`  
		Last Modified: Tue, 25 Aug 2026 00:16:30 GMT  
		Size: 2.4 MB (2403957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e208bad2f86c6be0d23f490e59781cb80b0df98e63bfe67e1152f83ac18640b`  
		Last Modified: Tue, 25 Aug 2026 00:16:29 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.8.8` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:9535a506376c3f6fa7a6be99cbb27d4db5039e8da5478eb23f22947f3be43607
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106693642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30419b585090a92e8c8dd912bbe70f2c1962c9b9543ebf22376c6236b0a1a4ea`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:15:47 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 25 Aug 2026 00:15:47 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 25 Aug 2026 00:15:47 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 25 Aug 2026 00:15:47 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 25 Aug 2026 00:15:47 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 25 Aug 2026 00:15:47 GMT
WORKDIR /opt/emqx
# Tue, 25 Aug 2026 00:15:47 GMT
USER emqx
# Tue, 25 Aug 2026 00:15:47 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 25 Aug 2026 00:15:47 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 25 Aug 2026 00:15:47 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 25 Aug 2026 00:15:47 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:15:47 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1bacc94f80147d2c24233023cd03a2445da9368dd304f1b4e27e80b2c3d0861`  
		Last Modified: Tue, 25 Aug 2026 00:16:02 GMT  
		Size: 76.5 MB (76532997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6403f3c25f50acf648a9f1ac67d83333a5d595fe11a13e4f44904cff80bda65b`  
		Last Modified: Tue, 25 Aug 2026 00:16:00 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8.8` - unknown; unknown

```console
$ docker pull emqx@sha256:e5fa86a8c32a758f1421e9ea767b7042f867f530f8a7afcfa322f917279fb9e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d018bb4162ee5d6c579687261bbd7b3b38684efc4534ce90d80f414b5eb8a8`

```dockerfile
```

-	Layers:
	-	`sha256:82cc5af44284ea8ec6c216349d0990d1057365027877c6f3a854ef57a7d53a1f`  
		Last Modified: Tue, 25 Aug 2026 00:16:00 GMT  
		Size: 2.4 MB (2404238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d32592c19de8fb9280216c4982ad483b7d07a6fe6d7a0fe59abf5b389fb27106`  
		Last Modified: Tue, 25 Aug 2026 00:16:00 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:latest`

```console
$ docker pull emqx@sha256:11efadd3e7ae665d39a7a7838ac0c783bb7bb80abb3c0efcc8fd8f80c45b0209
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:latest` - linux; amd64

```console
$ docker pull emqx@sha256:da0c8f724b964bc2763aa4558756319860f8d14c6cbdcc20eb29daa5d1400b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108420022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6c108b5d0a3e20cd0c63246343adf9de5792a3b2ff02e9511f441c376875b2`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:17 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 25 Aug 2026 00:16:17 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 25 Aug 2026 00:16:17 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 25 Aug 2026 00:16:17 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 25 Aug 2026 00:16:17 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 25 Aug 2026 00:16:17 GMT
WORKDIR /opt/emqx
# Tue, 25 Aug 2026 00:16:17 GMT
USER emqx
# Tue, 25 Aug 2026 00:16:17 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 25 Aug 2026 00:16:17 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 25 Aug 2026 00:16:17 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 25 Aug 2026 00:16:17 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:16:17 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a20ea6b8242f04bc230907069581c8af445c52c6be346d3f66544dd941bc0d5`  
		Last Modified: Tue, 25 Aug 2026 00:16:32 GMT  
		Size: 78.6 MB (78626299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ad037ac7b177326d46362a0d3d27436ee2ee29d940b4e66ff664d2aadc29f2`  
		Last Modified: Tue, 25 Aug 2026 00:16:30 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:latest` - unknown; unknown

```console
$ docker pull emqx@sha256:06113f093ca85e47f88232585929926fa76efef81544f024e16a71ebb2a6c0a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a93815a5e5827c8946b1c1a9d2ba445933a9d02ee6951942fb50e1d9a7f10c`

```dockerfile
```

-	Layers:
	-	`sha256:33cad876deefb707396d9611fd58cb3feeba24c8733418db3600d9f50454de8b`  
		Last Modified: Tue, 25 Aug 2026 00:16:30 GMT  
		Size: 2.4 MB (2403957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e208bad2f86c6be0d23f490e59781cb80b0df98e63bfe67e1152f83ac18640b`  
		Last Modified: Tue, 25 Aug 2026 00:16:29 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:latest` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:9535a506376c3f6fa7a6be99cbb27d4db5039e8da5478eb23f22947f3be43607
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106693642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30419b585090a92e8c8dd912bbe70f2c1962c9b9543ebf22376c6236b0a1a4ea`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:15:47 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 25 Aug 2026 00:15:47 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 25 Aug 2026 00:15:47 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 25 Aug 2026 00:15:47 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 25 Aug 2026 00:15:47 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 25 Aug 2026 00:15:47 GMT
WORKDIR /opt/emqx
# Tue, 25 Aug 2026 00:15:47 GMT
USER emqx
# Tue, 25 Aug 2026 00:15:47 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 25 Aug 2026 00:15:47 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 25 Aug 2026 00:15:47 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 25 Aug 2026 00:15:47 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:15:47 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1bacc94f80147d2c24233023cd03a2445da9368dd304f1b4e27e80b2c3d0861`  
		Last Modified: Tue, 25 Aug 2026 00:16:02 GMT  
		Size: 76.5 MB (76532997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6403f3c25f50acf648a9f1ac67d83333a5d595fe11a13e4f44904cff80bda65b`  
		Last Modified: Tue, 25 Aug 2026 00:16:00 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:latest` - unknown; unknown

```console
$ docker pull emqx@sha256:e5fa86a8c32a758f1421e9ea767b7042f867f530f8a7afcfa322f917279fb9e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d018bb4162ee5d6c579687261bbd7b3b38684efc4534ce90d80f414b5eb8a8`

```dockerfile
```

-	Layers:
	-	`sha256:82cc5af44284ea8ec6c216349d0990d1057365027877c6f3a854ef57a7d53a1f`  
		Last Modified: Tue, 25 Aug 2026 00:16:00 GMT  
		Size: 2.4 MB (2404238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d32592c19de8fb9280216c4982ad483b7d07a6fe6d7a0fe59abf5b389fb27106`  
		Last Modified: Tue, 25 Aug 2026 00:16:00 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json
