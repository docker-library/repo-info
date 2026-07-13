<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.10`](#chronograf110)
-	[`chronograf:1.10-alpine`](#chronograf110-alpine)
-	[`chronograf:1.10.9`](#chronograf1109)
-	[`chronograf:1.10.9-alpine`](#chronograf1109-alpine)
-	[`chronograf:1.11`](#chronograf111)
-	[`chronograf:1.11-alpine`](#chronograf111-alpine)
-	[`chronograf:1.11.4`](#chronograf1114)
-	[`chronograf:1.11.4-alpine`](#chronograf1114-alpine)
-	[`chronograf:1.8`](#chronograf18)
-	[`chronograf:1.8-alpine`](#chronograf18-alpine)
-	[`chronograf:1.8.10`](#chronograf1810)
-	[`chronograf:1.8.10-alpine`](#chronograf1810-alpine)
-	[`chronograf:1.9`](#chronograf19)
-	[`chronograf:1.9-alpine`](#chronograf19-alpine)
-	[`chronograf:1.9.4`](#chronograf194)
-	[`chronograf:1.9.4-alpine`](#chronograf194-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.10`

```console
$ docker pull chronograf@sha256:2f587075ca6b101681e6588b762acebb2c53b6b66a358581119d0e85c1c8db3e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.10` - linux; amd64

```console
$ docker pull chronograf@sha256:5fd2aca1fbbb6c10a6da206c0b837cbbb8dd9129b9c6f87fbc23a632a322e4bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85013301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a88acca2d889c936f879b0addc84cbf4ec05331c3da30a02c9eb7881f9b1bdb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:41:49 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 01:41:54 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 24 Jun 2026 01:41:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:41:54 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 24 Jun 2026 01:41:54 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 24 Jun 2026 01:41:54 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 24 Jun 2026 01:41:54 GMT
VOLUME [/var/lib/chronograf]
# Wed, 24 Jun 2026 01:41:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 01:41:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 01:41:54 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d22a64c244d0b1688872d7d449c8caba920552d22e53b0a4f1c6f5d080f35120`  
		Last Modified: Wed, 24 Jun 2026 01:42:06 GMT  
		Size: 7.9 MB (7883310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c50b9d15a0cb8fa95f05e18190dee73cf59bd1c36b550de04ae3fa39a33afd1`  
		Last Modified: Wed, 24 Jun 2026 01:42:07 GMT  
		Size: 48.9 MB (48867888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c654a7b8d6a72f6f5ff7b50dbecdd1d4c9bcd874c31d9f78629d72ebcf25b530`  
		Last Modified: Wed, 24 Jun 2026 01:42:06 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbb6775e13570b2ca9ae601a6802e527f7b48b693fdc44dfc354cbf5c0f883f7`  
		Last Modified: Wed, 24 Jun 2026 01:42:06 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0ccc5e83dacb3ee02ada1c2e8ff4d39491686d30f50e1cc0aeab3c0deac2145`  
		Last Modified: Wed, 24 Jun 2026 01:42:07 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:5921d74f2e12a501ae8eca91789d6b52d9bd9f64d8ce5309cd035f6e52952fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2871239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:283d4aba7f0e2a1ccf8e9ff765a65dbae3be13101cd781e97d381aa789e1c3f4`

```dockerfile
```

-	Layers:
	-	`sha256:b73ce687d22f63316493ff10865de87519c0bdee0f9f807dc48d77ab013027fd`  
		Last Modified: Wed, 24 Jun 2026 01:42:06 GMT  
		Size: 2.9 MB (2855460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:966ee3be35968d332c20ac833ccad36608718ce12a2fb23c734dce4d3e1af890`  
		Last Modified: Wed, 24 Jun 2026 01:42:06 GMT  
		Size: 15.8 KB (15779 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:778560736cf1fe7be585f8c43629946279a42d93da3d8a44684888fccd5d3d3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76803681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65336fe3159334c70e9d119f65e4073fa0b3e5998ec7ea6f1776ea9047429e18`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:28:40 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 02:28:46 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 24 Jun 2026 02:28:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 02:28:46 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 24 Jun 2026 02:28:46 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 24 Jun 2026 02:28:46 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 24 Jun 2026 02:28:46 GMT
VOLUME [/var/lib/chronograf]
# Wed, 24 Jun 2026 02:28:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 02:28:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 02:28:46 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78b44450dc1fab7a516cc73384c414cb761a75c5b8c8886db7a3c62967fd55a`  
		Last Modified: Wed, 24 Jun 2026 02:28:57 GMT  
		Size: 6.5 MB (6514514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39e90847971f56b5d7ea13621cfb3d1ae9eb943f46fc9293fd15717a52055ef1`  
		Last Modified: Wed, 24 Jun 2026 02:28:59 GMT  
		Size: 46.3 MB (46320171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a832929be21fe75166868b717e40577e6252bc3d78b60188a9cecc74f5f2992`  
		Last Modified: Wed, 24 Jun 2026 02:28:57 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0f03833baeba06e123c5621cf532e40c3099cfc6abc2e11872915b17287da33`  
		Last Modified: Wed, 24 Jun 2026 02:28:57 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b395c52b03b8bb7032f320396ba1808ae3f8229ee73c9c9ea530f4b87cc5bee`  
		Last Modified: Wed, 24 Jun 2026 02:28:58 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:d0e01c92d7cbd4f8dae045bc8b68bb551f9f38bb2719e0e95f791490430f7233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2873605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52637d47202eedcb77366f3e97694b2f9d8d552ac96415e921bab1fce7045c83`

```dockerfile
```

-	Layers:
	-	`sha256:fcfc3c25a50a107186e1f65174562c30017174928c3f04fe88d3d514972a78dd`  
		Last Modified: Wed, 24 Jun 2026 02:28:57 GMT  
		Size: 2.9 MB (2857749 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cee8c46bd2f436119ff839077dca90089176b25d3cf4622b40542f990ea7a261`  
		Last Modified: Wed, 24 Jun 2026 02:28:57 GMT  
		Size: 15.9 KB (15856 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:1a38df7abf8e7ee7ab3e40605bd2667db28c51dce200cd5e08c066f82211e73a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81855641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d2594b0a77416106bfda8ef99a38214d3dbae4bbe79f4fe34bacbedd0b26e36`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:45:13 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 01:45:19 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 24 Jun 2026 01:45:19 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:45:19 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 24 Jun 2026 01:45:19 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 24 Jun 2026 01:45:19 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 24 Jun 2026 01:45:19 GMT
VOLUME [/var/lib/chronograf]
# Wed, 24 Jun 2026 01:45:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 01:45:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 01:45:19 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c3e2a6b0cb7fb8c89a3683ee0afca97833584349da0d90b3585dd2d3c73b1b`  
		Last Modified: Wed, 24 Jun 2026 01:45:30 GMT  
		Size: 7.7 MB (7699896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b4fd0a3782ef9f4d43c69a29aa37acc3009c8cce4ef1440085d81d000d335d`  
		Last Modified: Wed, 24 Jun 2026 01:45:31 GMT  
		Size: 46.0 MB (46008858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58dc6d21a8c66dcfaa8e486c808e8734a14c34875e9a601a564dd2d39fa83435`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495ea045331771d28bd41e1283614da3fe7c795358cafb54addbfafb3e6e1b30`  
		Last Modified: Wed, 24 Jun 2026 01:45:30 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca4f83b958dc67246560c4aed4a1ac91e679520743685fee6f5271bdea05b1e1`  
		Last Modified: Wed, 24 Jun 2026 01:45:31 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:eb4da076f037a7d3e3944578b5eabe9919d9de1c1b92f207743d227c98c72300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2871595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60252e5f7ceb1f68fda65bbdb407b2437993b061325a5f299e933d80037c73f2`

```dockerfile
```

-	Layers:
	-	`sha256:d516d7f146cd72a952642d33a6ca127bb118e4515ae9ef23f25327e97c8f3d80`  
		Last Modified: Wed, 24 Jun 2026 01:45:30 GMT  
		Size: 2.9 MB (2855721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e91767290c80c0bb01d248aa323addc97fc9ba63efada36ce0358243e4a968cb`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 15.9 KB (15874 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.10-alpine`

```console
$ docker pull chronograf@sha256:b000618ec7e3a0bf1931ba9ed12c5b347275dff8172cdb1305dc9a9832d9cbe2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.10-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:b8e74c35e5231080b81127e0577e64d64bb246a1e1bcd5d4e650981a9673e64d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33214540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca665246e4b6f85ea6db5c68c9e874fdcbcad9e207495274a3183239f9d87ee`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:56:11 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 19:56:11 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 19:56:14 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Mon, 22 Jun 2026 19:56:14 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Mon, 22 Jun 2026 19:56:14 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Mon, 22 Jun 2026 19:56:14 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Mon, 22 Jun 2026 19:56:14 GMT
EXPOSE map[8888/tcp:{}]
# Mon, 22 Jun 2026 19:56:14 GMT
VOLUME [/var/lib/chronograf]
# Mon, 22 Jun 2026 19:56:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 19:56:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 19:56:14 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5117c3486ea43e29efca00448cabc535b8f239d757c2ea33ef0320285384ab97`  
		Last Modified: Mon, 22 Jun 2026 19:56:22 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c138ad4109725f9ac144c7b23085967f20ab7006fd27272598882e140227af`  
		Last Modified: Mon, 22 Jun 2026 19:56:23 GMT  
		Size: 268.0 KB (268025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:880daa7fabb26e5620128d415d7aa48249aacd46940433d1894271ae7ef3a6b5`  
		Last Modified: Mon, 22 Jun 2026 19:56:24 GMT  
		Size: 29.1 MB (29134197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa1f3e1739343a8716664d1b82acab8681f1f3101acf6695f1cf2b791c7f83e5`  
		Last Modified: Mon, 22 Jun 2026 19:56:23 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:960222739a97c24fefa7b57265a4e13a2acd84bbf3900523fd3a5ad2f9fd1cea`  
		Last Modified: Mon, 22 Jun 2026 19:56:24 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eab50510b69ae15c2c3be82bc491e2c68e1139bd139081b3f29e976f73e9ae3`  
		Last Modified: Mon, 22 Jun 2026 19:56:24 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:5c9a23113a46122ee3f7481e596f13c4931878445a3dde5926f05d8f12a266aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 KB (251655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:002728f7c925bb71df3e5da9cc8b97957529d0941c02b0738978b7afb9f3fe71`

```dockerfile
```

-	Layers:
	-	`sha256:062994b6c398feef6a43854b00a01e7707ae30982261ff445e2126ac01e775f2`  
		Last Modified: Mon, 22 Jun 2026 19:56:22 GMT  
		Size: 234.1 KB (234149 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08db123f70b5a684132c941d3d0f84fbae2815da5b5f949519b98aa5cd924c00`  
		Last Modified: Mon, 22 Jun 2026 19:56:22 GMT  
		Size: 17.5 KB (17506 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.10.9`

```console
$ docker pull chronograf@sha256:2f587075ca6b101681e6588b762acebb2c53b6b66a358581119d0e85c1c8db3e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.10.9` - linux; amd64

```console
$ docker pull chronograf@sha256:5fd2aca1fbbb6c10a6da206c0b837cbbb8dd9129b9c6f87fbc23a632a322e4bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85013301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a88acca2d889c936f879b0addc84cbf4ec05331c3da30a02c9eb7881f9b1bdb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:41:49 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 01:41:54 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 24 Jun 2026 01:41:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:41:54 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 24 Jun 2026 01:41:54 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 24 Jun 2026 01:41:54 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 24 Jun 2026 01:41:54 GMT
VOLUME [/var/lib/chronograf]
# Wed, 24 Jun 2026 01:41:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 01:41:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 01:41:54 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d22a64c244d0b1688872d7d449c8caba920552d22e53b0a4f1c6f5d080f35120`  
		Last Modified: Wed, 24 Jun 2026 01:42:06 GMT  
		Size: 7.9 MB (7883310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c50b9d15a0cb8fa95f05e18190dee73cf59bd1c36b550de04ae3fa39a33afd1`  
		Last Modified: Wed, 24 Jun 2026 01:42:07 GMT  
		Size: 48.9 MB (48867888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c654a7b8d6a72f6f5ff7b50dbecdd1d4c9bcd874c31d9f78629d72ebcf25b530`  
		Last Modified: Wed, 24 Jun 2026 01:42:06 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbb6775e13570b2ca9ae601a6802e527f7b48b693fdc44dfc354cbf5c0f883f7`  
		Last Modified: Wed, 24 Jun 2026 01:42:06 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0ccc5e83dacb3ee02ada1c2e8ff4d39491686d30f50e1cc0aeab3c0deac2145`  
		Last Modified: Wed, 24 Jun 2026 01:42:07 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:5921d74f2e12a501ae8eca91789d6b52d9bd9f64d8ce5309cd035f6e52952fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2871239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:283d4aba7f0e2a1ccf8e9ff765a65dbae3be13101cd781e97d381aa789e1c3f4`

```dockerfile
```

-	Layers:
	-	`sha256:b73ce687d22f63316493ff10865de87519c0bdee0f9f807dc48d77ab013027fd`  
		Last Modified: Wed, 24 Jun 2026 01:42:06 GMT  
		Size: 2.9 MB (2855460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:966ee3be35968d332c20ac833ccad36608718ce12a2fb23c734dce4d3e1af890`  
		Last Modified: Wed, 24 Jun 2026 01:42:06 GMT  
		Size: 15.8 KB (15779 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10.9` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:778560736cf1fe7be585f8c43629946279a42d93da3d8a44684888fccd5d3d3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76803681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65336fe3159334c70e9d119f65e4073fa0b3e5998ec7ea6f1776ea9047429e18`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:28:40 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 02:28:46 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 24 Jun 2026 02:28:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 02:28:46 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 24 Jun 2026 02:28:46 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 24 Jun 2026 02:28:46 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 24 Jun 2026 02:28:46 GMT
VOLUME [/var/lib/chronograf]
# Wed, 24 Jun 2026 02:28:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 02:28:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 02:28:46 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78b44450dc1fab7a516cc73384c414cb761a75c5b8c8886db7a3c62967fd55a`  
		Last Modified: Wed, 24 Jun 2026 02:28:57 GMT  
		Size: 6.5 MB (6514514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39e90847971f56b5d7ea13621cfb3d1ae9eb943f46fc9293fd15717a52055ef1`  
		Last Modified: Wed, 24 Jun 2026 02:28:59 GMT  
		Size: 46.3 MB (46320171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a832929be21fe75166868b717e40577e6252bc3d78b60188a9cecc74f5f2992`  
		Last Modified: Wed, 24 Jun 2026 02:28:57 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0f03833baeba06e123c5621cf532e40c3099cfc6abc2e11872915b17287da33`  
		Last Modified: Wed, 24 Jun 2026 02:28:57 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b395c52b03b8bb7032f320396ba1808ae3f8229ee73c9c9ea530f4b87cc5bee`  
		Last Modified: Wed, 24 Jun 2026 02:28:58 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:d0e01c92d7cbd4f8dae045bc8b68bb551f9f38bb2719e0e95f791490430f7233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2873605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52637d47202eedcb77366f3e97694b2f9d8d552ac96415e921bab1fce7045c83`

```dockerfile
```

-	Layers:
	-	`sha256:fcfc3c25a50a107186e1f65174562c30017174928c3f04fe88d3d514972a78dd`  
		Last Modified: Wed, 24 Jun 2026 02:28:57 GMT  
		Size: 2.9 MB (2857749 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cee8c46bd2f436119ff839077dca90089176b25d3cf4622b40542f990ea7a261`  
		Last Modified: Wed, 24 Jun 2026 02:28:57 GMT  
		Size: 15.9 KB (15856 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10.9` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:1a38df7abf8e7ee7ab3e40605bd2667db28c51dce200cd5e08c066f82211e73a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81855641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d2594b0a77416106bfda8ef99a38214d3dbae4bbe79f4fe34bacbedd0b26e36`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:45:13 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 01:45:19 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 24 Jun 2026 01:45:19 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:45:19 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 24 Jun 2026 01:45:19 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 24 Jun 2026 01:45:19 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 24 Jun 2026 01:45:19 GMT
VOLUME [/var/lib/chronograf]
# Wed, 24 Jun 2026 01:45:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 01:45:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 01:45:19 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c3e2a6b0cb7fb8c89a3683ee0afca97833584349da0d90b3585dd2d3c73b1b`  
		Last Modified: Wed, 24 Jun 2026 01:45:30 GMT  
		Size: 7.7 MB (7699896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b4fd0a3782ef9f4d43c69a29aa37acc3009c8cce4ef1440085d81d000d335d`  
		Last Modified: Wed, 24 Jun 2026 01:45:31 GMT  
		Size: 46.0 MB (46008858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58dc6d21a8c66dcfaa8e486c808e8734a14c34875e9a601a564dd2d39fa83435`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495ea045331771d28bd41e1283614da3fe7c795358cafb54addbfafb3e6e1b30`  
		Last Modified: Wed, 24 Jun 2026 01:45:30 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca4f83b958dc67246560c4aed4a1ac91e679520743685fee6f5271bdea05b1e1`  
		Last Modified: Wed, 24 Jun 2026 01:45:31 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:eb4da076f037a7d3e3944578b5eabe9919d9de1c1b92f207743d227c98c72300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2871595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60252e5f7ceb1f68fda65bbdb407b2437993b061325a5f299e933d80037c73f2`

```dockerfile
```

-	Layers:
	-	`sha256:d516d7f146cd72a952642d33a6ca127bb118e4515ae9ef23f25327e97c8f3d80`  
		Last Modified: Wed, 24 Jun 2026 01:45:30 GMT  
		Size: 2.9 MB (2855721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e91767290c80c0bb01d248aa323addc97fc9ba63efada36ce0358243e4a968cb`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 15.9 KB (15874 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.10.9-alpine`

```console
$ docker pull chronograf@sha256:b000618ec7e3a0bf1931ba9ed12c5b347275dff8172cdb1305dc9a9832d9cbe2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.10.9-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:b8e74c35e5231080b81127e0577e64d64bb246a1e1bcd5d4e650981a9673e64d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33214540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca665246e4b6f85ea6db5c68c9e874fdcbcad9e207495274a3183239f9d87ee`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:56:11 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 19:56:11 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 19:56:14 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Mon, 22 Jun 2026 19:56:14 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Mon, 22 Jun 2026 19:56:14 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Mon, 22 Jun 2026 19:56:14 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Mon, 22 Jun 2026 19:56:14 GMT
EXPOSE map[8888/tcp:{}]
# Mon, 22 Jun 2026 19:56:14 GMT
VOLUME [/var/lib/chronograf]
# Mon, 22 Jun 2026 19:56:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 19:56:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 19:56:14 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5117c3486ea43e29efca00448cabc535b8f239d757c2ea33ef0320285384ab97`  
		Last Modified: Mon, 22 Jun 2026 19:56:22 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c138ad4109725f9ac144c7b23085967f20ab7006fd27272598882e140227af`  
		Last Modified: Mon, 22 Jun 2026 19:56:23 GMT  
		Size: 268.0 KB (268025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:880daa7fabb26e5620128d415d7aa48249aacd46940433d1894271ae7ef3a6b5`  
		Last Modified: Mon, 22 Jun 2026 19:56:24 GMT  
		Size: 29.1 MB (29134197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa1f3e1739343a8716664d1b82acab8681f1f3101acf6695f1cf2b791c7f83e5`  
		Last Modified: Mon, 22 Jun 2026 19:56:23 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:960222739a97c24fefa7b57265a4e13a2acd84bbf3900523fd3a5ad2f9fd1cea`  
		Last Modified: Mon, 22 Jun 2026 19:56:24 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eab50510b69ae15c2c3be82bc491e2c68e1139bd139081b3f29e976f73e9ae3`  
		Last Modified: Mon, 22 Jun 2026 19:56:24 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:5c9a23113a46122ee3f7481e596f13c4931878445a3dde5926f05d8f12a266aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 KB (251655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:002728f7c925bb71df3e5da9cc8b97957529d0941c02b0738978b7afb9f3fe71`

```dockerfile
```

-	Layers:
	-	`sha256:062994b6c398feef6a43854b00a01e7707ae30982261ff445e2126ac01e775f2`  
		Last Modified: Mon, 22 Jun 2026 19:56:22 GMT  
		Size: 234.1 KB (234149 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08db123f70b5a684132c941d3d0f84fbae2815da5b5f949519b98aa5cd924c00`  
		Last Modified: Mon, 22 Jun 2026 19:56:22 GMT  
		Size: 17.5 KB (17506 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11`

```console
$ docker pull chronograf@sha256:f514cdb4b746c858911fa603af2c8a1ffa5c10586db3e39725f7f67e8c808309
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11` - linux; amd64

```console
$ docker pull chronograf@sha256:8244e3ea048b4fde1f9e12d94a0509de26fd99b1a7f5f00bc5938fd312c11598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96342769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30f995551b3ab79c16b3f723149400f238cdae86bee1b604b0c539112bc05a0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:41:51 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 01:41:56 GMT
ENV CHRONOGRAF_VERSION=1.11.3
# Wed, 24 Jun 2026 01:41:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:41:56 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 24 Jun 2026 01:41:57 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 24 Jun 2026 01:41:57 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 24 Jun 2026 01:41:57 GMT
VOLUME [/var/lib/chronograf]
# Wed, 24 Jun 2026 01:41:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 01:41:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 01:41:57 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d09057baea755ac0454cfb11b1cbe0e9e1ee4c38e6db6bcff0c6d1706474099f`  
		Last Modified: Wed, 24 Jun 2026 01:42:10 GMT  
		Size: 7.9 MB (7883310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4c1db69649af63e96f1f9596c9d402c419fd6b1258206ccb75b166f8c55c8c0`  
		Last Modified: Wed, 24 Jun 2026 01:42:12 GMT  
		Size: 60.2 MB (60197364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253c238d92e7c394e6dce7f48ca9801825b04a5123d6ad52aae3b30cf3ec0da4`  
		Last Modified: Wed, 24 Jun 2026 01:42:10 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aed7269e10cd63b75152047377d0e91c04a74e437a15d134b6601eee8d847e64`  
		Last Modified: Wed, 24 Jun 2026 01:42:10 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19cec0470799078f9b4a5ba9726c523181626073d67fd3deb8741546b543278c`  
		Last Modified: Wed, 24 Jun 2026 01:42:11 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:199e5ba81ac53da34a2d4381f892a2360c303375e5cc6aed0388735f46cd48cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef92ce94472cea9eddfe7cd53deafc158a2ab8b0a7e71001cce45bbe2589867`

```dockerfile
```

-	Layers:
	-	`sha256:78447c64b7e7446c5e81d601b23f9ed334863c04c65cf9738e067b3e425e54aa`  
		Last Modified: Wed, 24 Jun 2026 01:42:10 GMT  
		Size: 2.9 MB (2873738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c47b24d3754b049fd9ff19912a131b706a53ab2e91eb5a6d6d141bd1de9417d`  
		Last Modified: Wed, 24 Jun 2026 01:42:10 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:7add699c4a7b07602f1670ed50c8395d7601ff70c3c4e8dc2b88ec58d413929c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93055638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69d36673acad971874f98100764952943e92b385547cc163234e2bd2abe5bcb3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:45:12 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 01:45:18 GMT
ENV CHRONOGRAF_VERSION=1.11.3
# Wed, 24 Jun 2026 01:45:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:45:18 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 24 Jun 2026 01:45:18 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 24 Jun 2026 01:45:18 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 24 Jun 2026 01:45:18 GMT
VOLUME [/var/lib/chronograf]
# Wed, 24 Jun 2026 01:45:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 01:45:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 01:45:18 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:482c8ec9e5064e38c4628ad068c825d45bcf5602ee4ce7f41ee8a1f7658873d2`  
		Last Modified: Wed, 24 Jun 2026 01:45:32 GMT  
		Size: 7.7 MB (7699866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062bed99a11d6f486d2bba154ff7966b1cdfc997776e2a3fe24f9aed7d7a6645`  
		Last Modified: Wed, 24 Jun 2026 01:45:34 GMT  
		Size: 57.2 MB (57208893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:779dd9d2c6600c643e47752381374fc95ab8663debcda4fa05cbad9c3acd4348`  
		Last Modified: Wed, 24 Jun 2026 01:45:32 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ee5191ce20166ef95999ed64334cc5f4fecd188b4cd3dff441f979f36b19d1`  
		Last Modified: Wed, 24 Jun 2026 01:45:32 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca4f83b958dc67246560c4aed4a1ac91e679520743685fee6f5271bdea05b1e1`  
		Last Modified: Wed, 24 Jun 2026 01:45:31 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:90d42c3a9e9da4b66a265810a45ed8df5cee9e2233e598999cb31f188463bfea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53cc8d94fdfd958c5753895184004ca46a290bad2eb35d4f89f5e117cb0a18d4`

```dockerfile
```

-	Layers:
	-	`sha256:db206cf02d8b2ed5038e9672c0e9ed4833679c36e47db1837d6455e521d1853a`  
		Last Modified: Wed, 24 Jun 2026 01:45:32 GMT  
		Size: 2.9 MB (2872952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:408ebe58e9c9f25d15ce4c6ef868e5b396082ac2084af80a50d09b88f3fc273d`  
		Last Modified: Wed, 24 Jun 2026 01:45:32 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11-alpine`

```console
$ docker pull chronograf@sha256:3a4d1bdde45637be9b012855ab2ecf9847c9bca2629e5895ceff0f08525cd1ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.11-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:52a00a974fa31ab104f5615656f1f1ba19124d9dae74d1e3e19095da738ba4cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62242533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3562034250a9e0cf4501b816388ce00db408d02585ac8df9a5f1c9eef9387bd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:56:11 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 19:56:11 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 19:56:16 GMT
ENV CHRONOGRAF_VERSION=1.11.3
# Mon, 22 Jun 2026 19:56:16 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Mon, 22 Jun 2026 19:56:16 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Mon, 22 Jun 2026 19:56:16 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Mon, 22 Jun 2026 19:56:16 GMT
EXPOSE map[8888/tcp:{}]
# Mon, 22 Jun 2026 19:56:16 GMT
VOLUME [/var/lib/chronograf]
# Mon, 22 Jun 2026 19:56:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 19:56:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 19:56:16 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5117c3486ea43e29efca00448cabc535b8f239d757c2ea33ef0320285384ab97`  
		Last Modified: Mon, 22 Jun 2026 19:56:22 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c138ad4109725f9ac144c7b23085967f20ab7006fd27272598882e140227af`  
		Last Modified: Mon, 22 Jun 2026 19:56:23 GMT  
		Size: 268.0 KB (268025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c7d0596ef7237fc88fb03d77af3d61b002a1e42ded225a97f9fc69ee2fe95d`  
		Last Modified: Mon, 22 Jun 2026 19:56:30 GMT  
		Size: 58.2 MB (58162177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:881dc26ef020f0cad884e72944ebec73a1f795973e8bfb6c6db1e41060f44516`  
		Last Modified: Mon, 22 Jun 2026 19:56:28 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0292f8295b205f521c6f751540b266d56de9079017576ebe9221ceff52b54b42`  
		Last Modified: Mon, 22 Jun 2026 19:56:28 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c48ef1b877e834580c226ecf1161f71b15017d2168d2f2546ee3982dd9be936a`  
		Last Modified: Mon, 22 Jun 2026 19:56:28 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:53d0c74f55399512e8bcbaf8564c4bdef51e154b5945714c13c0cf04a9fd1873
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 KB (270191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43529a8845f8039709e8625c631ae8596244bc3cb3a04816f708e98ea86e12e4`

```dockerfile
```

-	Layers:
	-	`sha256:240b9e5d786fcf925327de71a60eb8944708565e23237bec28592aba486cbeee`  
		Last Modified: Mon, 22 Jun 2026 19:56:28 GMT  
		Size: 252.4 KB (252427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b290ab107110c261f7aeca24b0147ea4138218fee2d23ddf55b64e55f42ae82c`  
		Last Modified: Mon, 22 Jun 2026 19:56:28 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11.4`

```console
$ docker pull chronograf@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `chronograf:1.11.4-alpine`

```console
$ docker pull chronograf@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `chronograf:1.8`

```console
$ docker pull chronograf@sha256:9a4d389d8daab0ec9ab12e00f9c0ce9277fa70f9c04e2fabcf9c7e8cbb1350e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.8` - linux; amd64

```console
$ docker pull chronograf@sha256:bc243ea7847ada9559fb7abfcc4f6594e24020f0686f89adf503c48330614312
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.9 MB (69889748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:047e5de72e54f867345283029a1d746d453103028037b083cf2aef783368e374`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:41:45 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 01:41:50 GMT
ENV CHRONOGRAF_VERSION=1.8.10
# Wed, 24 Jun 2026 01:41:50 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:41:50 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 24 Jun 2026 01:41:50 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 24 Jun 2026 01:41:50 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 24 Jun 2026 01:41:50 GMT
VOLUME [/var/lib/chronograf]
# Wed, 24 Jun 2026 01:41:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 01:41:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 01:41:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:0251c4232e4025b51352f0bb7119fd866d4a6a62861f09baea6fe5af4c6eee59`  
		Last Modified: Wed, 24 Jun 2026 00:28:14 GMT  
		Size: 30.3 MB (30259447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6703672631488c60e66a3e5c2d91748b53f6cc9376f6991148a5db85e817ecfe`  
		Last Modified: Wed, 24 Jun 2026 01:42:00 GMT  
		Size: 5.2 MB (5241717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9be1af923e79a422117ac884d1f99dabd89db398129c211836c9aae00dc92de`  
		Last Modified: Wed, 24 Jun 2026 01:42:01 GMT  
		Size: 34.4 MB (34364196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5df1efd5be422e9a47f87b42a5fd7ce117bc9d6c8c7e04b0b1843c5a852a12`  
		Last Modified: Wed, 24 Jun 2026 01:42:00 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d42d350146b5d66e8dfbb616ecae1b3c22ace524b049a05c46c6d30d0a06fd7d`  
		Last Modified: Wed, 24 Jun 2026 01:42:00 GMT  
		Size: 11.9 KB (11903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3876efcb3825698c7898e5a01c4310f507c1f3b85307b5a80a76d454d1bbb623`  
		Last Modified: Wed, 24 Jun 2026 01:42:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.8` - unknown; unknown

```console
$ docker pull chronograf@sha256:6f54586e8e111455962c73b1c7267db06472891a7582f97e059878a27f92481a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3128709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c00db286bbd753c228b967a689ac23bfd2540421f628be2f673cfde6754a63`

```dockerfile
```

-	Layers:
	-	`sha256:65aef326e033a8f0f6048b80661e07f4c3e4f96991e05d3f3750108682c9c087`  
		Last Modified: Wed, 24 Jun 2026 01:42:00 GMT  
		Size: 3.1 MB (3112935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:135d51056e42a4f0b4b6a5c6fea7a6b85c8384469d08f1979694d4eee58231f5`  
		Last Modified: Wed, 24 Jun 2026 01:42:00 GMT  
		Size: 15.8 KB (15774 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.8` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:a9ee0244a2446acde342f0e94a95a4a6799a57faf77af7a5da2bbd1b820669b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62622097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d06a78906a7f3a5ca7672fa368b7708b5ae405c1b374c2fa4a88418079bf8e9c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 02:25:35 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 02:25:41 GMT
ENV CHRONOGRAF_VERSION=1.8.10
# Wed, 24 Jun 2026 02:25:41 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 02:25:41 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 24 Jun 2026 02:25:41 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 24 Jun 2026 02:25:41 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 24 Jun 2026 02:25:41 GMT
VOLUME [/var/lib/chronograf]
# Wed, 24 Jun 2026 02:25:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 02:25:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 02:25:41 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:8ec7789c331459e48d19f428fbcbbcb0b3cc1497798c19c3025d746ad6b457af`  
		Last Modified: Wed, 24 Jun 2026 00:27:55 GMT  
		Size: 25.6 MB (25552772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8d2d4e9f2178971803dd5aef3d0fa0d2dc93e913fcca7a5bee96f01866f342`  
		Last Modified: Wed, 24 Jun 2026 02:25:50 GMT  
		Size: 4.5 MB (4509995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:412ba35fe14b460ad4abaca1649c635cf4782b8f4ab24bb4e81f0b5b9888cac8`  
		Last Modified: Wed, 24 Jun 2026 02:25:51 GMT  
		Size: 32.5 MB (32534933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a5553e2c5e42c6f59ec7163a375c14145e2a1b77b562cb2692531805a4c5104`  
		Last Modified: Wed, 24 Jun 2026 02:25:50 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cf523abfe322411777bc4f9f1eda45cb450dcee20c2c2bbaba1249fca4703aa`  
		Last Modified: Wed, 24 Jun 2026 02:25:50 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f92f6741ecd4d0c86c0acffd7a7923967e6d7a19a4281c04c2702f3df49ce07`  
		Last Modified: Wed, 24 Jun 2026 02:25:51 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.8` - unknown; unknown

```console
$ docker pull chronograf@sha256:38c3d958c014c2117692798ee3b5b9323691baada71934d842f5d3fa8d855666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3131057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:335c91c0cd3dc3a21dde465b54676aa879b98462fe09ad1171d88b31216fe3a1`

```dockerfile
```

-	Layers:
	-	`sha256:9aa064cada674aeed8ab316e340233d98b52b6042b206e08b3c183f97a1db7c0`  
		Last Modified: Wed, 24 Jun 2026 02:25:50 GMT  
		Size: 3.1 MB (3115206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faa5cff5a19551ec30b50fc840a3113bb9729442fc0b37dbc42efe13f8bac7c6`  
		Last Modified: Wed, 24 Jun 2026 02:25:50 GMT  
		Size: 15.9 KB (15851 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.8` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:2b0883a649a3f9c7c08163c5561b48341e5b4452f6dae3bb248c4f53b20833ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.4 MB (66430624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87503724fba1b672382af5e2fca98430c5d2a7f7324243568896d2323c1d3871`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:45:11 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
ENV CHRONOGRAF_VERSION=1.8.10
# Wed, 24 Jun 2026 01:45:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 24 Jun 2026 01:45:17 GMT
VOLUME [/var/lib/chronograf]
# Wed, 24 Jun 2026 01:45:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 01:45:17 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:58009b48fe731a10341c4f5f98dfa280afd10fa34cc71961411d37e306120dd0`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 28.7 MB (28746926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c412a718ce558783cfff0fb4b872ca521b9e2dea8057d1bf7fbf2d92d59f04c4`  
		Last Modified: Wed, 24 Jun 2026 01:45:26 GMT  
		Size: 5.2 MB (5229749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec7a953bec4a496f38b8ab972f4f22285b1f2b8b75e0a90478cfb02ca38c889`  
		Last Modified: Wed, 24 Jun 2026 01:45:27 GMT  
		Size: 32.4 MB (32429549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab649cc4b339fba4b8a9c37b12419d4060327e82fda39f449a41537e085e8e6`  
		Last Modified: Wed, 24 Jun 2026 01:45:26 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ff45f09c880d1f2bbba7451cd0f01dcef553591c901cfd3efb1924835eefa3e`  
		Last Modified: Wed, 24 Jun 2026 01:45:26 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b921404ed4e85e3dbd7dd2b1f8a28addd75c8c0f9b25598252e2c9b19695570`  
		Last Modified: Wed, 24 Jun 2026 01:45:27 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.8` - unknown; unknown

```console
$ docker pull chronograf@sha256:76f39f4395bcbbe1c51d7dabdda391a9a5e412292ddc6c7e9635ad94d5e92505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3129053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbefebb8edad3ecdbdb2b6040be3f53c9bddb0e0d87c89a18490bef79a27d696`

```dockerfile
```

-	Layers:
	-	`sha256:84259fbcab47c3cece07c8604ebe41b08413797c9c775b12595a07ee3abdcea0`  
		Last Modified: Wed, 24 Jun 2026 01:45:26 GMT  
		Size: 3.1 MB (3113184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a7f8eb5d949126e121b9b82dd8086e16e294aeeb20b7951a783553bc23401d8`  
		Last Modified: Wed, 24 Jun 2026 01:45:26 GMT  
		Size: 15.9 KB (15869 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.8-alpine`

```console
$ docker pull chronograf@sha256:a04ddb5aa8a08101f1c16ed3a397ee4c00dcd1ed76208f0bb50c429653294520
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.8-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:ede13c1b68d5428c626bce6c59f200e2d2f72711e9e1b8d337bf08d17699af43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23147985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1664c3e0943c41cb0fbb18db90fb8ff72cabbfa2721d8832c2b45834ec9ce934`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:26 GMT
ADD alpine-minirootfs-3.20.10-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:26 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:23:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Fri, 17 Apr 2026 00:23:28 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates # buildkit
# Fri, 17 Apr 2026 00:23:32 GMT
ENV CHRONOGRAF_VERSION=1.8.10
# Fri, 17 Apr 2026 00:23:32 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps # buildkit
# Fri, 17 Apr 2026 00:23:32 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Fri, 17 Apr 2026 00:23:32 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Fri, 17 Apr 2026 00:23:32 GMT
EXPOSE map[8888/tcp:{}]
# Fri, 17 Apr 2026 00:23:32 GMT
VOLUME [/var/lib/chronograf]
# Fri, 17 Apr 2026 00:23:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 17 Apr 2026 00:23:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 17 Apr 2026 00:23:32 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:25f1d6b1951ac8eb3740558fe94cb83d377bdadf95fd9f98b50d2e1b96130471`  
		Last Modified: Thu, 16 Apr 2026 23:53:31 GMT  
		Size: 3.6 MB (3630321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16e69077797f1a90c5b8946765d6547bd0bbe62c5edf87016fc687d8691b62a`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a582e81c7ed2cd8d0c8d79c49ea73d52bfddf13469c4d924f55b6970462df01`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 289.1 KB (289074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa13e0a8fa89698c9691e91370f5c5da3380b44b6ac29319a4e90a09eefbe8e`  
		Last Modified: Fri, 17 Apr 2026 00:23:40 GMT  
		Size: 19.2 MB (19203941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782461697da8106fc90296b3ce4a6a407db932533ecd9a4da24a10753acdcf1e`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e74b1d522539dce72171cebaa3d6dd0ca9ca821e4a34e4b76dc19daa0169a5c3`  
		Last Modified: Fri, 17 Apr 2026 00:23:40 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce8f5e2ebfd8736864ace9d37094fa3ee04d93d2ae268e430ca56f87eec508a5`  
		Last Modified: Fri, 17 Apr 2026 00:23:40 GMT  
		Size: 238.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.8-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:84b7bdc8d23f218c2fe980ddfdeac820e2627fc7d91f2c4202a8f26deb5e9db1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 KB (244523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983e28495a7b578fd93bcd0c3b0e98c83deddb61c866fc1c2f690ba762da5922`

```dockerfile
```

-	Layers:
	-	`sha256:365c42781b673303c2c41d46ccc50ac379917ed1053135d373385311589519d1`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 227.7 KB (227654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8bfb7d23b735a7cd84710b5948163b988bb486b65c2263456936b73344a8c85`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 16.9 KB (16869 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.8.10`

```console
$ docker pull chronograf@sha256:9a4d389d8daab0ec9ab12e00f9c0ce9277fa70f9c04e2fabcf9c7e8cbb1350e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.8.10` - linux; amd64

```console
$ docker pull chronograf@sha256:bc243ea7847ada9559fb7abfcc4f6594e24020f0686f89adf503c48330614312
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.9 MB (69889748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:047e5de72e54f867345283029a1d746d453103028037b083cf2aef783368e374`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:41:45 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 01:41:50 GMT
ENV CHRONOGRAF_VERSION=1.8.10
# Wed, 24 Jun 2026 01:41:50 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:41:50 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 24 Jun 2026 01:41:50 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 24 Jun 2026 01:41:50 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 24 Jun 2026 01:41:50 GMT
VOLUME [/var/lib/chronograf]
# Wed, 24 Jun 2026 01:41:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 01:41:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 01:41:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:0251c4232e4025b51352f0bb7119fd866d4a6a62861f09baea6fe5af4c6eee59`  
		Last Modified: Wed, 24 Jun 2026 00:28:14 GMT  
		Size: 30.3 MB (30259447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6703672631488c60e66a3e5c2d91748b53f6cc9376f6991148a5db85e817ecfe`  
		Last Modified: Wed, 24 Jun 2026 01:42:00 GMT  
		Size: 5.2 MB (5241717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9be1af923e79a422117ac884d1f99dabd89db398129c211836c9aae00dc92de`  
		Last Modified: Wed, 24 Jun 2026 01:42:01 GMT  
		Size: 34.4 MB (34364196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5df1efd5be422e9a47f87b42a5fd7ce117bc9d6c8c7e04b0b1843c5a852a12`  
		Last Modified: Wed, 24 Jun 2026 01:42:00 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d42d350146b5d66e8dfbb616ecae1b3c22ace524b049a05c46c6d30d0a06fd7d`  
		Last Modified: Wed, 24 Jun 2026 01:42:00 GMT  
		Size: 11.9 KB (11903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3876efcb3825698c7898e5a01c4310f507c1f3b85307b5a80a76d454d1bbb623`  
		Last Modified: Wed, 24 Jun 2026 01:42:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.8.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:6f54586e8e111455962c73b1c7267db06472891a7582f97e059878a27f92481a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3128709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c00db286bbd753c228b967a689ac23bfd2540421f628be2f673cfde6754a63`

```dockerfile
```

-	Layers:
	-	`sha256:65aef326e033a8f0f6048b80661e07f4c3e4f96991e05d3f3750108682c9c087`  
		Last Modified: Wed, 24 Jun 2026 01:42:00 GMT  
		Size: 3.1 MB (3112935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:135d51056e42a4f0b4b6a5c6fea7a6b85c8384469d08f1979694d4eee58231f5`  
		Last Modified: Wed, 24 Jun 2026 01:42:00 GMT  
		Size: 15.8 KB (15774 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.8.10` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:a9ee0244a2446acde342f0e94a95a4a6799a57faf77af7a5da2bbd1b820669b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62622097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d06a78906a7f3a5ca7672fa368b7708b5ae405c1b374c2fa4a88418079bf8e9c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 02:25:35 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 02:25:41 GMT
ENV CHRONOGRAF_VERSION=1.8.10
# Wed, 24 Jun 2026 02:25:41 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 02:25:41 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 24 Jun 2026 02:25:41 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 24 Jun 2026 02:25:41 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 24 Jun 2026 02:25:41 GMT
VOLUME [/var/lib/chronograf]
# Wed, 24 Jun 2026 02:25:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 02:25:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 02:25:41 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:8ec7789c331459e48d19f428fbcbbcb0b3cc1497798c19c3025d746ad6b457af`  
		Last Modified: Wed, 24 Jun 2026 00:27:55 GMT  
		Size: 25.6 MB (25552772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8d2d4e9f2178971803dd5aef3d0fa0d2dc93e913fcca7a5bee96f01866f342`  
		Last Modified: Wed, 24 Jun 2026 02:25:50 GMT  
		Size: 4.5 MB (4509995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:412ba35fe14b460ad4abaca1649c635cf4782b8f4ab24bb4e81f0b5b9888cac8`  
		Last Modified: Wed, 24 Jun 2026 02:25:51 GMT  
		Size: 32.5 MB (32534933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a5553e2c5e42c6f59ec7163a375c14145e2a1b77b562cb2692531805a4c5104`  
		Last Modified: Wed, 24 Jun 2026 02:25:50 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cf523abfe322411777bc4f9f1eda45cb450dcee20c2c2bbaba1249fca4703aa`  
		Last Modified: Wed, 24 Jun 2026 02:25:50 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f92f6741ecd4d0c86c0acffd7a7923967e6d7a19a4281c04c2702f3df49ce07`  
		Last Modified: Wed, 24 Jun 2026 02:25:51 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.8.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:38c3d958c014c2117692798ee3b5b9323691baada71934d842f5d3fa8d855666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3131057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:335c91c0cd3dc3a21dde465b54676aa879b98462fe09ad1171d88b31216fe3a1`

```dockerfile
```

-	Layers:
	-	`sha256:9aa064cada674aeed8ab316e340233d98b52b6042b206e08b3c183f97a1db7c0`  
		Last Modified: Wed, 24 Jun 2026 02:25:50 GMT  
		Size: 3.1 MB (3115206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faa5cff5a19551ec30b50fc840a3113bb9729442fc0b37dbc42efe13f8bac7c6`  
		Last Modified: Wed, 24 Jun 2026 02:25:50 GMT  
		Size: 15.9 KB (15851 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.8.10` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:2b0883a649a3f9c7c08163c5561b48341e5b4452f6dae3bb248c4f53b20833ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.4 MB (66430624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87503724fba1b672382af5e2fca98430c5d2a7f7324243568896d2323c1d3871`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:45:11 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
ENV CHRONOGRAF_VERSION=1.8.10
# Wed, 24 Jun 2026 01:45:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 24 Jun 2026 01:45:17 GMT
VOLUME [/var/lib/chronograf]
# Wed, 24 Jun 2026 01:45:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 01:45:17 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:58009b48fe731a10341c4f5f98dfa280afd10fa34cc71961411d37e306120dd0`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 28.7 MB (28746926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c412a718ce558783cfff0fb4b872ca521b9e2dea8057d1bf7fbf2d92d59f04c4`  
		Last Modified: Wed, 24 Jun 2026 01:45:26 GMT  
		Size: 5.2 MB (5229749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec7a953bec4a496f38b8ab972f4f22285b1f2b8b75e0a90478cfb02ca38c889`  
		Last Modified: Wed, 24 Jun 2026 01:45:27 GMT  
		Size: 32.4 MB (32429549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab649cc4b339fba4b8a9c37b12419d4060327e82fda39f449a41537e085e8e6`  
		Last Modified: Wed, 24 Jun 2026 01:45:26 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ff45f09c880d1f2bbba7451cd0f01dcef553591c901cfd3efb1924835eefa3e`  
		Last Modified: Wed, 24 Jun 2026 01:45:26 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b921404ed4e85e3dbd7dd2b1f8a28addd75c8c0f9b25598252e2c9b19695570`  
		Last Modified: Wed, 24 Jun 2026 01:45:27 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.8.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:76f39f4395bcbbe1c51d7dabdda391a9a5e412292ddc6c7e9635ad94d5e92505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3129053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbefebb8edad3ecdbdb2b6040be3f53c9bddb0e0d87c89a18490bef79a27d696`

```dockerfile
```

-	Layers:
	-	`sha256:84259fbcab47c3cece07c8604ebe41b08413797c9c775b12595a07ee3abdcea0`  
		Last Modified: Wed, 24 Jun 2026 01:45:26 GMT  
		Size: 3.1 MB (3113184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a7f8eb5d949126e121b9b82dd8086e16e294aeeb20b7951a783553bc23401d8`  
		Last Modified: Wed, 24 Jun 2026 01:45:26 GMT  
		Size: 15.9 KB (15869 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.8.10-alpine`

```console
$ docker pull chronograf@sha256:a04ddb5aa8a08101f1c16ed3a397ee4c00dcd1ed76208f0bb50c429653294520
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.8.10-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:ede13c1b68d5428c626bce6c59f200e2d2f72711e9e1b8d337bf08d17699af43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23147985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1664c3e0943c41cb0fbb18db90fb8ff72cabbfa2721d8832c2b45834ec9ce934`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:26 GMT
ADD alpine-minirootfs-3.20.10-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:26 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:23:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Fri, 17 Apr 2026 00:23:28 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates # buildkit
# Fri, 17 Apr 2026 00:23:32 GMT
ENV CHRONOGRAF_VERSION=1.8.10
# Fri, 17 Apr 2026 00:23:32 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps # buildkit
# Fri, 17 Apr 2026 00:23:32 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Fri, 17 Apr 2026 00:23:32 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Fri, 17 Apr 2026 00:23:32 GMT
EXPOSE map[8888/tcp:{}]
# Fri, 17 Apr 2026 00:23:32 GMT
VOLUME [/var/lib/chronograf]
# Fri, 17 Apr 2026 00:23:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 17 Apr 2026 00:23:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 17 Apr 2026 00:23:32 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:25f1d6b1951ac8eb3740558fe94cb83d377bdadf95fd9f98b50d2e1b96130471`  
		Last Modified: Thu, 16 Apr 2026 23:53:31 GMT  
		Size: 3.6 MB (3630321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16e69077797f1a90c5b8946765d6547bd0bbe62c5edf87016fc687d8691b62a`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a582e81c7ed2cd8d0c8d79c49ea73d52bfddf13469c4d924f55b6970462df01`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 289.1 KB (289074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa13e0a8fa89698c9691e91370f5c5da3380b44b6ac29319a4e90a09eefbe8e`  
		Last Modified: Fri, 17 Apr 2026 00:23:40 GMT  
		Size: 19.2 MB (19203941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782461697da8106fc90296b3ce4a6a407db932533ecd9a4da24a10753acdcf1e`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e74b1d522539dce72171cebaa3d6dd0ca9ca821e4a34e4b76dc19daa0169a5c3`  
		Last Modified: Fri, 17 Apr 2026 00:23:40 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce8f5e2ebfd8736864ace9d37094fa3ee04d93d2ae268e430ca56f87eec508a5`  
		Last Modified: Fri, 17 Apr 2026 00:23:40 GMT  
		Size: 238.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.8.10-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:84b7bdc8d23f218c2fe980ddfdeac820e2627fc7d91f2c4202a8f26deb5e9db1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 KB (244523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983e28495a7b578fd93bcd0c3b0e98c83deddb61c866fc1c2f690ba762da5922`

```dockerfile
```

-	Layers:
	-	`sha256:365c42781b673303c2c41d46ccc50ac379917ed1053135d373385311589519d1`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 227.7 KB (227654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8bfb7d23b735a7cd84710b5948163b988bb486b65c2263456936b73344a8c85`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 16.9 KB (16869 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.9`

```console
$ docker pull chronograf@sha256:34800b121718767f3bdfb3d80d01d8204e1ec17fae5a2d185267c7f0e27c56f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.9` - linux; amd64

```console
$ docker pull chronograf@sha256:b2d7bc5319633aa2f1d9c8a3aad56b650bfbecea6a2ae0687193a826adf8fddf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70537285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6660d4a19ac2d8b508765675bf4e546ad844c71e4d506efdef9ef9065635a34b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:41:48 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 01:41:52 GMT
ENV CHRONOGRAF_VERSION=1.9.4
# Wed, 24 Jun 2026 01:41:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:41:52 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 24 Jun 2026 01:41:52 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 24 Jun 2026 01:41:52 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 24 Jun 2026 01:41:52 GMT
VOLUME [/var/lib/chronograf]
# Wed, 24 Jun 2026 01:41:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 01:41:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 01:41:52 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:0251c4232e4025b51352f0bb7119fd866d4a6a62861f09baea6fe5af4c6eee59`  
		Last Modified: Wed, 24 Jun 2026 00:28:14 GMT  
		Size: 30.3 MB (30259447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e7e68a8d7bd9c814ba640af642e8897f9532518683818262903d9246b4f1839`  
		Last Modified: Wed, 24 Jun 2026 01:42:02 GMT  
		Size: 5.2 MB (5241713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60adcccd6925cb91fcd96e19663b705392f4cabc41b217c8dc765bfdeb1eaa93`  
		Last Modified: Wed, 24 Jun 2026 01:42:03 GMT  
		Size: 35.0 MB (35011728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4aabcefec14c8e36dfc6bfdebd1c0181dbb4bb2c31101f9eff05d1fa6b86de2`  
		Last Modified: Wed, 24 Jun 2026 01:42:02 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0741ce9cf99a1809ab7cb58332532944f2e4bd74f202e01f9b6aa95a0363737`  
		Last Modified: Wed, 24 Jun 2026 01:42:02 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:876eb662c6fd4ce4ab3cab7f8a3e5a2c6490dfb7d0d7be5e95f5a1c7393e4f0e`  
		Last Modified: Wed, 24 Jun 2026 01:42:03 GMT  
		Size: 239.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:c66f95369c54e18b08726babd64b0fd580629ef263b2538251aea9a933feccd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3133911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea6e32f3158613891a16cce56a5f852dfdf3706e396367afd6846d8061a7d448`

```dockerfile
```

-	Layers:
	-	`sha256:09df7f30feacdaa7d171886beb6b49ad53238a2a9e6030d36314a13c8d9a6fd2`  
		Last Modified: Wed, 24 Jun 2026 01:42:02 GMT  
		Size: 3.1 MB (3118145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab9354a33d26ee1a0ddf0a0740d796cf0c6df42bbdae69a47ca30c706ef7d40c`  
		Last Modified: Wed, 24 Jun 2026 01:42:02 GMT  
		Size: 15.8 KB (15766 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.9` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:65c9ddabf6fc6fbc747a9c6b064b62715c59cbe023d1afe51975f787b381e4fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63398693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36c6073dbe5271a40c1faba59e8ed4031e297d8c5acb961c229f1ac776663f7c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 02:26:20 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 02:26:25 GMT
ENV CHRONOGRAF_VERSION=1.9.4
# Wed, 24 Jun 2026 02:26:25 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 02:26:25 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 24 Jun 2026 02:26:25 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 24 Jun 2026 02:26:25 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 24 Jun 2026 02:26:25 GMT
VOLUME [/var/lib/chronograf]
# Wed, 24 Jun 2026 02:26:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 02:26:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 02:26:25 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:8ec7789c331459e48d19f428fbcbbcb0b3cc1497798c19c3025d746ad6b457af`  
		Last Modified: Wed, 24 Jun 2026 00:27:55 GMT  
		Size: 25.6 MB (25552772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dc5eb5b0d81c410fb133df03526fb3495d00c229216254441e8f1cb4bfab069`  
		Last Modified: Wed, 24 Jun 2026 02:26:36 GMT  
		Size: 4.5 MB (4509950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5463d06cacfa16b1f23277a077c5312dac889ff2b5c828d6ce7ecc9864e9564f`  
		Last Modified: Wed, 24 Jun 2026 02:26:35 GMT  
		Size: 33.3 MB (33311585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5a939c511b0129138e6d34975fe44136a7989dcce7e88d3ddb4b5af685008a`  
		Last Modified: Wed, 24 Jun 2026 02:26:34 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1aac99afdb33d4f1716374999f653accb04d3023792171a65091f5d00f645f`  
		Last Modified: Wed, 24 Jun 2026 02:26:34 GMT  
		Size: 11.9 KB (11903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f420d286266b7d4eeab7ec3a8906e9a37d6f8c5b987cd670fda5e2e15824cf2`  
		Last Modified: Wed, 24 Jun 2026 02:26:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:1836e2b215b86f844b7535d3d5fdc021fc91c6c5cedec79bb37b6821a13b41e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3136260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc9f9a237d3fde0f4cc01d51b058c39d99fd0d0e9e55d8626e1a0a36bd1fb52`

```dockerfile
```

-	Layers:
	-	`sha256:f7e9676a4cc38fbaafed6334f0fc59010eb5d85b1408714328e5337db566f3b4`  
		Last Modified: Wed, 24 Jun 2026 02:26:35 GMT  
		Size: 3.1 MB (3120416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8777902545279ec5637a2aa34750747757df63e8913843a6becfb831a14cf8dc`  
		Last Modified: Wed, 24 Jun 2026 02:26:34 GMT  
		Size: 15.8 KB (15844 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.9` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:9fc9cf0f13d506fc65a6954994adf3be4d4b6f6f67f52c47a5f0b0c6d7d11210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67183522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b82535e236ce737733436fcc5026064c96dab6e798efee964aa75c6075046eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:45:13 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 01:45:18 GMT
ENV CHRONOGRAF_VERSION=1.9.4
# Wed, 24 Jun 2026 01:45:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:45:18 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 24 Jun 2026 01:45:18 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 24 Jun 2026 01:45:18 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 24 Jun 2026 01:45:18 GMT
VOLUME [/var/lib/chronograf]
# Wed, 24 Jun 2026 01:45:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 01:45:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 01:45:18 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:58009b48fe731a10341c4f5f98dfa280afd10fa34cc71961411d37e306120dd0`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 28.7 MB (28746926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29a7d54c0e4a95d006643e10bb57bfcb37ff168acb221d7ef260a6f7e0d58732`  
		Last Modified: Wed, 24 Jun 2026 01:45:27 GMT  
		Size: 5.2 MB (5229799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c5908072ec1cd6a0ff78ebab9bd46bb59feff0a1888f16ad583a8eab72fc28`  
		Last Modified: Wed, 24 Jun 2026 01:45:28 GMT  
		Size: 33.2 MB (33182414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b19d75d49e722ebe52bcdb4080e0fdc0bcb656fce726515bc302817cc35b170`  
		Last Modified: Wed, 24 Jun 2026 01:45:27 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d49303fd84aae8781c684e7611537190f6c857fd6b754f40443c7147c70ab50`  
		Last Modified: Wed, 24 Jun 2026 01:45:27 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409b20961978a3801b0b4d1bcb4ac9118fb4cca10f28ae72ffe671c559e6b4ad`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:5b06c2be82db64ed1897fa5aa2964985016f8e837e31b5533b48bf5c5adb1bca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3134256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24da3b19ef979f76378384a62feb2e3365c20778ad062db691c806644b84ed55`

```dockerfile
```

-	Layers:
	-	`sha256:523932b9c250e538c39fb1cef37ac306433e91b5af43bdc8274553c4bdadb9e9`  
		Last Modified: Wed, 24 Jun 2026 01:45:27 GMT  
		Size: 3.1 MB (3118394 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d218e219596628b34f4ab326ba2399aff5c4437f8b90ee72c3e6c2b5d8c96250`  
		Last Modified: Wed, 24 Jun 2026 01:45:27 GMT  
		Size: 15.9 KB (15862 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.9-alpine`

```console
$ docker pull chronograf@sha256:0f80cd3823ff72714fb0be9429588b58a6cd474733e0369bc7f9181346b1d5cd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.9-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:f621eed42ec67e2c0af874c13b22cf7c5eca4a2f92496e0e777e83e0d0e54a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23616085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d4f080ba353421341131d427d195e080f057481b2369a3ddd4db288e7a49570`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:26 GMT
ADD alpine-minirootfs-3.20.10-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:26 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:23:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Fri, 17 Apr 2026 00:23:28 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates # buildkit
# Fri, 17 Apr 2026 00:23:32 GMT
ENV CHRONOGRAF_VERSION=1.9.4
# Fri, 17 Apr 2026 00:23:32 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps # buildkit
# Fri, 17 Apr 2026 00:23:32 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Fri, 17 Apr 2026 00:23:32 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Fri, 17 Apr 2026 00:23:32 GMT
EXPOSE map[8888/tcp:{}]
# Fri, 17 Apr 2026 00:23:32 GMT
VOLUME [/var/lib/chronograf]
# Fri, 17 Apr 2026 00:23:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 17 Apr 2026 00:23:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 17 Apr 2026 00:23:32 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:25f1d6b1951ac8eb3740558fe94cb83d377bdadf95fd9f98b50d2e1b96130471`  
		Last Modified: Thu, 16 Apr 2026 23:53:31 GMT  
		Size: 3.6 MB (3630321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16e69077797f1a90c5b8946765d6547bd0bbe62c5edf87016fc687d8691b62a`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a582e81c7ed2cd8d0c8d79c49ea73d52bfddf13469c4d924f55b6970462df01`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 289.1 KB (289074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaea6127a47f8ad745d11f7e8ea7511652ab602293817f95bee9cac7032fc393`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 19.7 MB (19672041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782461697da8106fc90296b3ce4a6a407db932533ecd9a4da24a10753acdcf1e`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e74b1d522539dce72171cebaa3d6dd0ca9ca821e4a34e4b76dc19daa0169a5c3`  
		Last Modified: Fri, 17 Apr 2026 00:23:40 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce8f5e2ebfd8736864ace9d37094fa3ee04d93d2ae268e430ca56f87eec508a5`  
		Last Modified: Fri, 17 Apr 2026 00:23:40 GMT  
		Size: 238.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.9-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:4be611f408b68b71f2ce6e27bd942207676513556d3d2d9ec7df73b913fb49b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.7 KB (249732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8b7b7e44d247f14c51737c4557d3e8bdc7e3cc786d83a99199fb64c7df6355c`

```dockerfile
```

-	Layers:
	-	`sha256:6c6b091fcc28e6afcad2a5fe2faed4c1dcff63c11868d95adf1b2056b7bbcae1`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 232.9 KB (232866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d10cb23e42c41cf8502d564e4146e704991853b11b9b54a94f89af55f1264769`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 16.9 KB (16866 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.9.4`

```console
$ docker pull chronograf@sha256:34800b121718767f3bdfb3d80d01d8204e1ec17fae5a2d185267c7f0e27c56f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.9.4` - linux; amd64

```console
$ docker pull chronograf@sha256:b2d7bc5319633aa2f1d9c8a3aad56b650bfbecea6a2ae0687193a826adf8fddf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70537285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6660d4a19ac2d8b508765675bf4e546ad844c71e4d506efdef9ef9065635a34b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:41:48 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 01:41:52 GMT
ENV CHRONOGRAF_VERSION=1.9.4
# Wed, 24 Jun 2026 01:41:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:41:52 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 24 Jun 2026 01:41:52 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 24 Jun 2026 01:41:52 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 24 Jun 2026 01:41:52 GMT
VOLUME [/var/lib/chronograf]
# Wed, 24 Jun 2026 01:41:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 01:41:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 01:41:52 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:0251c4232e4025b51352f0bb7119fd866d4a6a62861f09baea6fe5af4c6eee59`  
		Last Modified: Wed, 24 Jun 2026 00:28:14 GMT  
		Size: 30.3 MB (30259447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e7e68a8d7bd9c814ba640af642e8897f9532518683818262903d9246b4f1839`  
		Last Modified: Wed, 24 Jun 2026 01:42:02 GMT  
		Size: 5.2 MB (5241713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60adcccd6925cb91fcd96e19663b705392f4cabc41b217c8dc765bfdeb1eaa93`  
		Last Modified: Wed, 24 Jun 2026 01:42:03 GMT  
		Size: 35.0 MB (35011728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4aabcefec14c8e36dfc6bfdebd1c0181dbb4bb2c31101f9eff05d1fa6b86de2`  
		Last Modified: Wed, 24 Jun 2026 01:42:02 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0741ce9cf99a1809ab7cb58332532944f2e4bd74f202e01f9b6aa95a0363737`  
		Last Modified: Wed, 24 Jun 2026 01:42:02 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:876eb662c6fd4ce4ab3cab7f8a3e5a2c6490dfb7d0d7be5e95f5a1c7393e4f0e`  
		Last Modified: Wed, 24 Jun 2026 01:42:03 GMT  
		Size: 239.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.9.4` - unknown; unknown

```console
$ docker pull chronograf@sha256:c66f95369c54e18b08726babd64b0fd580629ef263b2538251aea9a933feccd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3133911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea6e32f3158613891a16cce56a5f852dfdf3706e396367afd6846d8061a7d448`

```dockerfile
```

-	Layers:
	-	`sha256:09df7f30feacdaa7d171886beb6b49ad53238a2a9e6030d36314a13c8d9a6fd2`  
		Last Modified: Wed, 24 Jun 2026 01:42:02 GMT  
		Size: 3.1 MB (3118145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab9354a33d26ee1a0ddf0a0740d796cf0c6df42bbdae69a47ca30c706ef7d40c`  
		Last Modified: Wed, 24 Jun 2026 01:42:02 GMT  
		Size: 15.8 KB (15766 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.9.4` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:65c9ddabf6fc6fbc747a9c6b064b62715c59cbe023d1afe51975f787b381e4fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63398693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36c6073dbe5271a40c1faba59e8ed4031e297d8c5acb961c229f1ac776663f7c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 02:26:20 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 02:26:25 GMT
ENV CHRONOGRAF_VERSION=1.9.4
# Wed, 24 Jun 2026 02:26:25 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 02:26:25 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 24 Jun 2026 02:26:25 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 24 Jun 2026 02:26:25 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 24 Jun 2026 02:26:25 GMT
VOLUME [/var/lib/chronograf]
# Wed, 24 Jun 2026 02:26:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 02:26:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 02:26:25 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:8ec7789c331459e48d19f428fbcbbcb0b3cc1497798c19c3025d746ad6b457af`  
		Last Modified: Wed, 24 Jun 2026 00:27:55 GMT  
		Size: 25.6 MB (25552772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dc5eb5b0d81c410fb133df03526fb3495d00c229216254441e8f1cb4bfab069`  
		Last Modified: Wed, 24 Jun 2026 02:26:36 GMT  
		Size: 4.5 MB (4509950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5463d06cacfa16b1f23277a077c5312dac889ff2b5c828d6ce7ecc9864e9564f`  
		Last Modified: Wed, 24 Jun 2026 02:26:35 GMT  
		Size: 33.3 MB (33311585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5a939c511b0129138e6d34975fe44136a7989dcce7e88d3ddb4b5af685008a`  
		Last Modified: Wed, 24 Jun 2026 02:26:34 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1aac99afdb33d4f1716374999f653accb04d3023792171a65091f5d00f645f`  
		Last Modified: Wed, 24 Jun 2026 02:26:34 GMT  
		Size: 11.9 KB (11903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f420d286266b7d4eeab7ec3a8906e9a37d6f8c5b987cd670fda5e2e15824cf2`  
		Last Modified: Wed, 24 Jun 2026 02:26:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.9.4` - unknown; unknown

```console
$ docker pull chronograf@sha256:1836e2b215b86f844b7535d3d5fdc021fc91c6c5cedec79bb37b6821a13b41e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3136260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc9f9a237d3fde0f4cc01d51b058c39d99fd0d0e9e55d8626e1a0a36bd1fb52`

```dockerfile
```

-	Layers:
	-	`sha256:f7e9676a4cc38fbaafed6334f0fc59010eb5d85b1408714328e5337db566f3b4`  
		Last Modified: Wed, 24 Jun 2026 02:26:35 GMT  
		Size: 3.1 MB (3120416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8777902545279ec5637a2aa34750747757df63e8913843a6becfb831a14cf8dc`  
		Last Modified: Wed, 24 Jun 2026 02:26:34 GMT  
		Size: 15.8 KB (15844 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.9.4` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:9fc9cf0f13d506fc65a6954994adf3be4d4b6f6f67f52c47a5f0b0c6d7d11210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67183522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b82535e236ce737733436fcc5026064c96dab6e798efee964aa75c6075046eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:45:13 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 01:45:18 GMT
ENV CHRONOGRAF_VERSION=1.9.4
# Wed, 24 Jun 2026 01:45:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:45:18 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 24 Jun 2026 01:45:18 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 24 Jun 2026 01:45:18 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 24 Jun 2026 01:45:18 GMT
VOLUME [/var/lib/chronograf]
# Wed, 24 Jun 2026 01:45:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 01:45:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 01:45:18 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:58009b48fe731a10341c4f5f98dfa280afd10fa34cc71961411d37e306120dd0`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 28.7 MB (28746926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29a7d54c0e4a95d006643e10bb57bfcb37ff168acb221d7ef260a6f7e0d58732`  
		Last Modified: Wed, 24 Jun 2026 01:45:27 GMT  
		Size: 5.2 MB (5229799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c5908072ec1cd6a0ff78ebab9bd46bb59feff0a1888f16ad583a8eab72fc28`  
		Last Modified: Wed, 24 Jun 2026 01:45:28 GMT  
		Size: 33.2 MB (33182414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b19d75d49e722ebe52bcdb4080e0fdc0bcb656fce726515bc302817cc35b170`  
		Last Modified: Wed, 24 Jun 2026 01:45:27 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d49303fd84aae8781c684e7611537190f6c857fd6b754f40443c7147c70ab50`  
		Last Modified: Wed, 24 Jun 2026 01:45:27 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409b20961978a3801b0b4d1bcb4ac9118fb4cca10f28ae72ffe671c559e6b4ad`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.9.4` - unknown; unknown

```console
$ docker pull chronograf@sha256:5b06c2be82db64ed1897fa5aa2964985016f8e837e31b5533b48bf5c5adb1bca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3134256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24da3b19ef979f76378384a62feb2e3365c20778ad062db691c806644b84ed55`

```dockerfile
```

-	Layers:
	-	`sha256:523932b9c250e538c39fb1cef37ac306433e91b5af43bdc8274553c4bdadb9e9`  
		Last Modified: Wed, 24 Jun 2026 01:45:27 GMT  
		Size: 3.1 MB (3118394 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d218e219596628b34f4ab326ba2399aff5c4437f8b90ee72c3e6c2b5d8c96250`  
		Last Modified: Wed, 24 Jun 2026 01:45:27 GMT  
		Size: 15.9 KB (15862 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.9.4-alpine`

```console
$ docker pull chronograf@sha256:0f80cd3823ff72714fb0be9429588b58a6cd474733e0369bc7f9181346b1d5cd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.9.4-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:f621eed42ec67e2c0af874c13b22cf7c5eca4a2f92496e0e777e83e0d0e54a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23616085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d4f080ba353421341131d427d195e080f057481b2369a3ddd4db288e7a49570`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:26 GMT
ADD alpine-minirootfs-3.20.10-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:26 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:23:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Fri, 17 Apr 2026 00:23:28 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates # buildkit
# Fri, 17 Apr 2026 00:23:32 GMT
ENV CHRONOGRAF_VERSION=1.9.4
# Fri, 17 Apr 2026 00:23:32 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps # buildkit
# Fri, 17 Apr 2026 00:23:32 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Fri, 17 Apr 2026 00:23:32 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Fri, 17 Apr 2026 00:23:32 GMT
EXPOSE map[8888/tcp:{}]
# Fri, 17 Apr 2026 00:23:32 GMT
VOLUME [/var/lib/chronograf]
# Fri, 17 Apr 2026 00:23:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 17 Apr 2026 00:23:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 17 Apr 2026 00:23:32 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:25f1d6b1951ac8eb3740558fe94cb83d377bdadf95fd9f98b50d2e1b96130471`  
		Last Modified: Thu, 16 Apr 2026 23:53:31 GMT  
		Size: 3.6 MB (3630321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16e69077797f1a90c5b8946765d6547bd0bbe62c5edf87016fc687d8691b62a`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a582e81c7ed2cd8d0c8d79c49ea73d52bfddf13469c4d924f55b6970462df01`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 289.1 KB (289074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaea6127a47f8ad745d11f7e8ea7511652ab602293817f95bee9cac7032fc393`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 19.7 MB (19672041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782461697da8106fc90296b3ce4a6a407db932533ecd9a4da24a10753acdcf1e`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e74b1d522539dce72171cebaa3d6dd0ca9ca821e4a34e4b76dc19daa0169a5c3`  
		Last Modified: Fri, 17 Apr 2026 00:23:40 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce8f5e2ebfd8736864ace9d37094fa3ee04d93d2ae268e430ca56f87eec508a5`  
		Last Modified: Fri, 17 Apr 2026 00:23:40 GMT  
		Size: 238.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.9.4-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:4be611f408b68b71f2ce6e27bd942207676513556d3d2d9ec7df73b913fb49b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.7 KB (249732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8b7b7e44d247f14c51737c4557d3e8bdc7e3cc786d83a99199fb64c7df6355c`

```dockerfile
```

-	Layers:
	-	`sha256:6c6b091fcc28e6afcad2a5fe2faed4c1dcff63c11868d95adf1b2056b7bbcae1`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 232.9 KB (232866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d10cb23e42c41cf8502d564e4146e704991853b11b9b54a94f89af55f1264769`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 16.9 KB (16866 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:3a4d1bdde45637be9b012855ab2ecf9847c9bca2629e5895ceff0f08525cd1ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:52a00a974fa31ab104f5615656f1f1ba19124d9dae74d1e3e19095da738ba4cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62242533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3562034250a9e0cf4501b816388ce00db408d02585ac8df9a5f1c9eef9387bd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:56:11 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 19:56:11 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 19:56:16 GMT
ENV CHRONOGRAF_VERSION=1.11.3
# Mon, 22 Jun 2026 19:56:16 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Mon, 22 Jun 2026 19:56:16 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Mon, 22 Jun 2026 19:56:16 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Mon, 22 Jun 2026 19:56:16 GMT
EXPOSE map[8888/tcp:{}]
# Mon, 22 Jun 2026 19:56:16 GMT
VOLUME [/var/lib/chronograf]
# Mon, 22 Jun 2026 19:56:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 19:56:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 19:56:16 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5117c3486ea43e29efca00448cabc535b8f239d757c2ea33ef0320285384ab97`  
		Last Modified: Mon, 22 Jun 2026 19:56:22 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c138ad4109725f9ac144c7b23085967f20ab7006fd27272598882e140227af`  
		Last Modified: Mon, 22 Jun 2026 19:56:23 GMT  
		Size: 268.0 KB (268025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c7d0596ef7237fc88fb03d77af3d61b002a1e42ded225a97f9fc69ee2fe95d`  
		Last Modified: Mon, 22 Jun 2026 19:56:30 GMT  
		Size: 58.2 MB (58162177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:881dc26ef020f0cad884e72944ebec73a1f795973e8bfb6c6db1e41060f44516`  
		Last Modified: Mon, 22 Jun 2026 19:56:28 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0292f8295b205f521c6f751540b266d56de9079017576ebe9221ceff52b54b42`  
		Last Modified: Mon, 22 Jun 2026 19:56:28 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c48ef1b877e834580c226ecf1161f71b15017d2168d2f2546ee3982dd9be936a`  
		Last Modified: Mon, 22 Jun 2026 19:56:28 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:53d0c74f55399512e8bcbaf8564c4bdef51e154b5945714c13c0cf04a9fd1873
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 KB (270191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43529a8845f8039709e8625c631ae8596244bc3cb3a04816f708e98ea86e12e4`

```dockerfile
```

-	Layers:
	-	`sha256:240b9e5d786fcf925327de71a60eb8944708565e23237bec28592aba486cbeee`  
		Last Modified: Mon, 22 Jun 2026 19:56:28 GMT  
		Size: 252.4 KB (252427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b290ab107110c261f7aeca24b0147ea4138218fee2d23ddf55b64e55f42ae82c`  
		Last Modified: Mon, 22 Jun 2026 19:56:28 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:d203c11a72e04d07f3d956911e4e7a32d8f631c28710423111aa929638c33d6d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:8244e3ea048b4fde1f9e12d94a0509de26fd99b1a7f5f00bc5938fd312c11598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96342769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30f995551b3ab79c16b3f723149400f238cdae86bee1b604b0c539112bc05a0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:41:51 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 01:41:56 GMT
ENV CHRONOGRAF_VERSION=1.11.3
# Wed, 24 Jun 2026 01:41:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:41:56 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 24 Jun 2026 01:41:57 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 24 Jun 2026 01:41:57 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 24 Jun 2026 01:41:57 GMT
VOLUME [/var/lib/chronograf]
# Wed, 24 Jun 2026 01:41:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 01:41:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 01:41:57 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d09057baea755ac0454cfb11b1cbe0e9e1ee4c38e6db6bcff0c6d1706474099f`  
		Last Modified: Wed, 24 Jun 2026 01:42:10 GMT  
		Size: 7.9 MB (7883310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4c1db69649af63e96f1f9596c9d402c419fd6b1258206ccb75b166f8c55c8c0`  
		Last Modified: Wed, 24 Jun 2026 01:42:12 GMT  
		Size: 60.2 MB (60197364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253c238d92e7c394e6dce7f48ca9801825b04a5123d6ad52aae3b30cf3ec0da4`  
		Last Modified: Wed, 24 Jun 2026 01:42:10 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aed7269e10cd63b75152047377d0e91c04a74e437a15d134b6601eee8d847e64`  
		Last Modified: Wed, 24 Jun 2026 01:42:10 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19cec0470799078f9b4a5ba9726c523181626073d67fd3deb8741546b543278c`  
		Last Modified: Wed, 24 Jun 2026 01:42:11 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:199e5ba81ac53da34a2d4381f892a2360c303375e5cc6aed0388735f46cd48cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef92ce94472cea9eddfe7cd53deafc158a2ab8b0a7e71001cce45bbe2589867`

```dockerfile
```

-	Layers:
	-	`sha256:78447c64b7e7446c5e81d601b23f9ed334863c04c65cf9738e067b3e425e54aa`  
		Last Modified: Wed, 24 Jun 2026 01:42:10 GMT  
		Size: 2.9 MB (2873738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c47b24d3754b049fd9ff19912a131b706a53ab2e91eb5a6d6d141bd1de9417d`  
		Last Modified: Wed, 24 Jun 2026 01:42:10 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:7f6ba8a05e8752787341b7fe2a6a74810b06aa9fa70a1a0228f775cc695b037a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76798073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:930d1c377ac04e3da986523b9e03970d9aff20f8036670f211d374ae5e6e562c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 06 Apr 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1775433600'
# Tue, 07 Apr 2026 02:04:31 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 07 Apr 2026 02:04:39 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 07 Apr 2026 02:04:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 07 Apr 2026 02:04:39 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 07 Apr 2026 02:04:39 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 07 Apr 2026 02:04:39 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 07 Apr 2026 02:04:39 GMT
VOLUME [/var/lib/chronograf]
# Tue, 07 Apr 2026 02:04:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 07 Apr 2026 02:04:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 07 Apr 2026 02:04:39 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:dabf2c04988ff47a9777c2e6aee85c1e347525704928c5c1a366fae1fb63fea2`  
		Last Modified: Tue, 07 Apr 2026 00:58:55 GMT  
		Size: 23.9 MB (23941461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bde4224141eb326416434e57e6985960fa0299c171636ec51c978d7483ded221`  
		Last Modified: Tue, 07 Apr 2026 02:04:50 GMT  
		Size: 6.5 MB (6512130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39644797429280d1790a41b83be262964fe685b66a13098f85a2830ef136af23`  
		Last Modified: Tue, 07 Apr 2026 02:04:51 GMT  
		Size: 46.3 MB (46320009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a038716dc519bd0d53565ee9d170bb27389cee982f799ed02c5b30bb400da63b`  
		Last Modified: Tue, 07 Apr 2026 02:04:49 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2857e0024941e8431e0d2e7288ff873bb60af2b99250a6c109fb700e616232c`  
		Last Modified: Tue, 07 Apr 2026 02:04:49 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac7ccabd4f0e669d232e23f27536a4797faec571f1d5b385e8d37e9543ad1d4`  
		Last Modified: Tue, 07 Apr 2026 02:04:50 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:d033ac4c98bc3deb3c46315bff42913e431c32321890ec7914cd6b43bf0a4454
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2874197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a769173f691e7dbe1bbac685b1b6d2cf8af5e40c11a7536386e603ca5e558e45`

```dockerfile
```

-	Layers:
	-	`sha256:dff92a3ce28b58e918bb8a1b393141f0d15f0a7436d538d1b53bafdf3cd2f3f0`  
		Last Modified: Tue, 07 Apr 2026 02:04:49 GMT  
		Size: 2.9 MB (2858027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29723eb32c4a4046b83b01b8e97bd5b93cfc334f24c3dcc9145d178038a36230`  
		Last Modified: Tue, 07 Apr 2026 02:04:49 GMT  
		Size: 16.2 KB (16170 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:7add699c4a7b07602f1670ed50c8395d7601ff70c3c4e8dc2b88ec58d413929c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93055638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69d36673acad971874f98100764952943e92b385547cc163234e2bd2abe5bcb3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:45:12 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 01:45:18 GMT
ENV CHRONOGRAF_VERSION=1.11.3
# Wed, 24 Jun 2026 01:45:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:45:18 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 24 Jun 2026 01:45:18 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 24 Jun 2026 01:45:18 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 24 Jun 2026 01:45:18 GMT
VOLUME [/var/lib/chronograf]
# Wed, 24 Jun 2026 01:45:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 01:45:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 01:45:18 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:482c8ec9e5064e38c4628ad068c825d45bcf5602ee4ce7f41ee8a1f7658873d2`  
		Last Modified: Wed, 24 Jun 2026 01:45:32 GMT  
		Size: 7.7 MB (7699866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062bed99a11d6f486d2bba154ff7966b1cdfc997776e2a3fe24f9aed7d7a6645`  
		Last Modified: Wed, 24 Jun 2026 01:45:34 GMT  
		Size: 57.2 MB (57208893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:779dd9d2c6600c643e47752381374fc95ab8663debcda4fa05cbad9c3acd4348`  
		Last Modified: Wed, 24 Jun 2026 01:45:32 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ee5191ce20166ef95999ed64334cc5f4fecd188b4cd3dff441f979f36b19d1`  
		Last Modified: Wed, 24 Jun 2026 01:45:32 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca4f83b958dc67246560c4aed4a1ac91e679520743685fee6f5271bdea05b1e1`  
		Last Modified: Wed, 24 Jun 2026 01:45:31 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:90d42c3a9e9da4b66a265810a45ed8df5cee9e2233e598999cb31f188463bfea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53cc8d94fdfd958c5753895184004ca46a290bad2eb35d4f89f5e117cb0a18d4`

```dockerfile
```

-	Layers:
	-	`sha256:db206cf02d8b2ed5038e9672c0e9ed4833679c36e47db1837d6455e521d1853a`  
		Last Modified: Wed, 24 Jun 2026 01:45:32 GMT  
		Size: 2.9 MB (2872952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:408ebe58e9c9f25d15ce4c6ef868e5b396082ac2084af80a50d09b88f3fc273d`  
		Last Modified: Wed, 24 Jun 2026 01:45:32 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json
