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
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.10`

```console
$ docker pull chronograf@sha256:9cc2728cbf875a6e83a378b3f744ec7f6890d041267101706aa06ca5be3ba604
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
$ docker pull chronograf@sha256:3622511f479961380472ca43697b305e2885b2fc919ea1dd26f608245fa480fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85031681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42981956f9f3f2eed832eb2137be70dffaad2114e3195e8d60446f1115b7912d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:59 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 00:45:05 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Sat, 19 Sep 2026 00:45:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:45:05 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Sat, 19 Sep 2026 00:45:05 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Sat, 19 Sep 2026 00:45:05 GMT
EXPOSE map[8888/tcp:{}]
# Sat, 19 Sep 2026 00:45:05 GMT
VOLUME [/var/lib/chronograf]
# Sat, 19 Sep 2026 00:45:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 00:45:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 00:45:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1939e6c1922236572db4469c388f6ee11e3182c9701cef28d8b6d140b02ca78`  
		Last Modified: Sat, 19 Sep 2026 00:45:15 GMT  
		Size: 7.9 MB (7900772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7e7bfbc38cd150aad1213023164c1fdb77ce7ca11f7eb40486c7ccf19d66cd0`  
		Last Modified: Sat, 19 Sep 2026 00:45:16 GMT  
		Size: 48.9 MB (48867997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c6cf2e5de4eaaf5c4ff965e69c3844bb2a13104c39da1c5b2d82aee9b0ac6f`  
		Last Modified: Sat, 19 Sep 2026 00:45:14 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91dc36a415de810c3ffdbb3a11d4d1e3d1335240477133b07ae8baf9c7a26de9`  
		Last Modified: Sat, 19 Sep 2026 00:45:15 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d167b85daf07c5d04a546e43c854d011d711376a395e80c8dd26c4cb0b0de987`  
		Last Modified: Sat, 19 Sep 2026 00:45:16 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:51682060a22062f0feddd9a6e7326b9ce9338624d454c8ecd7e6a7c33c500719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2876542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c492928c096f44ee2ae9458d1e56c171a1c29ec98829df7200a82ce2ccd2d1d`

```dockerfile
```

-	Layers:
	-	`sha256:4efd8a66a9ddf194fb8a7c862e2384e25e877c4dd9a9a9d602661713bca36432`  
		Last Modified: Sat, 19 Sep 2026 00:45:15 GMT  
		Size: 2.9 MB (2860763 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d64f21b836df4f38dc3dade77daca538f1885d8a809e06bb40995f909ce46c29`  
		Last Modified: Sat, 19 Sep 2026 00:45:15 GMT  
		Size: 15.8 KB (15779 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:edc82d78a48c0800b162d55d1c2250c39624ce6dd4c0d164cd0268cf23263a0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76809105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c0fd801f39629de9bfa7391a0de2e45deb4b23a4cdc51df08af4cf1384235b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:33:02 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 01:33:09 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 25 Aug 2026 01:33:09 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 01:33:09 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 25 Aug 2026 01:33:09 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 25 Aug 2026 01:33:09 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 25 Aug 2026 01:33:09 GMT
VOLUME [/var/lib/chronograf]
# Tue, 25 Aug 2026 01:33:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:33:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:33:09 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3446bb54bc9a88ece9f8a749043cf653107276ed844ddbea16a14fd32595375`  
		Last Modified: Tue, 25 Aug 2026 01:33:20 GMT  
		Size: 6.5 MB (6524503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5baa1397976c9f385869d00bd98ccbff8e15e4e492cd965547e8495628e3b7df`  
		Last Modified: Tue, 25 Aug 2026 01:33:21 GMT  
		Size: 46.3 MB (46320290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea24164a75fd0d6479fe993ac52c55891175cca60118bf7c97293e8b033c311`  
		Last Modified: Tue, 25 Aug 2026 01:33:19 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1347745f3f1cf1334ab83ca723aad908fee66f21df6a53cc270e514aa518a49`  
		Last Modified: Tue, 25 Aug 2026 01:33:20 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb670a560ce495a686f0d4791b01cab97cc2baa6167cb01dad4fd099303b83c`  
		Last Modified: Tue, 25 Aug 2026 01:33:21 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:e92a4a9fcb3f3424199eaa521a0b67ab0b46d1548e490cc07e40597cb3b77b16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2878844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e0eb7aac6ee15d8b0136ac919ae93ddf4b1507cef7643e93d8ef9073d0370e4`

```dockerfile
```

-	Layers:
	-	`sha256:180c984d0cdb2782be6694590732c7654dc28077f45e46334e6cd18bb92be886`  
		Last Modified: Tue, 25 Aug 2026 01:33:20 GMT  
		Size: 2.9 MB (2862988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e283064da6b25dc862e5ea5ca4def7ca69fb247acc4f3d0d04562ab56c8b3ce7`  
		Last Modified: Tue, 25 Aug 2026 01:33:19 GMT  
		Size: 15.9 KB (15856 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:12081dc965b2e34acbcf5526398f16da89bf1ab151d31a2b8dc2a736f85b6406
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81867532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fc66cef1e3d63ff349cfce00541c37d54afbc6a38e5dccf5e7f25969d108833`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:35 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 00:47:40 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Sat, 19 Sep 2026 00:47:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:47:40 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Sat, 19 Sep 2026 00:47:40 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Sat, 19 Sep 2026 00:47:40 GMT
EXPOSE map[8888/tcp:{}]
# Sat, 19 Sep 2026 00:47:40 GMT
VOLUME [/var/lib/chronograf]
# Sat, 19 Sep 2026 00:47:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 00:47:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 00:47:40 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da5635e4a466eea3cfcd7bb23faaa1ff67058a7d04791e780577e609de8ed968`  
		Last Modified: Sat, 19 Sep 2026 00:47:51 GMT  
		Size: 7.7 MB (7709737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62b8a64732d2f9a078057f16703e8bf266b027c3f401218661dfc7a8138c1844`  
		Last Modified: Sat, 19 Sep 2026 00:47:52 GMT  
		Size: 46.0 MB (46009651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9230e853b62fe1f46ef29cebedea6c33d8620c231cb821d78853e25af67ace91`  
		Last Modified: Sat, 19 Sep 2026 00:47:50 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8ffc68b3bc9aaf062b6a971dc534dd49c226f17256ca3d43535ffdb8a06b758`  
		Last Modified: Sat, 19 Sep 2026 00:47:51 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc7eaf68003d3cc3a6ec7357c7e730bdc56efc5707ef0ca8044209cb58468071`  
		Last Modified: Sat, 19 Sep 2026 00:47:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:69da2c0d8b1561bfb4675d51d4fd374a096b5876c817c9008c9dd895caf1e348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2876898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abf8f1dc46753c78219c96d2a1488aa463c67f4af51400dbe3f0f56e2713e47e`

```dockerfile
```

-	Layers:
	-	`sha256:22bd082b2b387224a8e1c85ea913bb56c2787a095e37559b8af3e0f572ec95dc`  
		Last Modified: Sat, 19 Sep 2026 00:47:51 GMT  
		Size: 2.9 MB (2861024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e8002dfe1da1aaef7ebb34c694c9e8ad70f4f0d9deb08fa8b9ae8ac748ca21c`  
		Last Modified: Sat, 19 Sep 2026 00:47:50 GMT  
		Size: 15.9 KB (15874 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.10-alpine`

```console
$ docker pull chronograf@sha256:21d2e90048aed1c85c4d54de8a784311a314b26ae9d53356612de0d93dbc0315
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.10-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:30a25b30e8965e5911a10db2fd7a15c5344fd623a13235429f03b6d24e50a8b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36356198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43a00352e02bbbd8965e459a3df2da772af9dbca280564c9a2952fb8157166da`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:39:34 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:39:37 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Thu, 17 Sep 2026 21:39:37 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Thu, 17 Sep 2026 21:39:37 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 17 Sep 2026 21:39:38 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 17 Sep 2026 21:39:38 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 17 Sep 2026 21:39:38 GMT
VOLUME [/var/lib/chronograf]
# Thu, 17 Sep 2026 21:39:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:39:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:39:38 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6d0c4e427f32bf21afd2b6c2d031b25f530e3018c5bb252e4ec10a48442eda`  
		Last Modified: Thu, 17 Sep 2026 21:39:45 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c47513e774fb5506355da2fa000cab088a245fcaae530e61f4ec508e084ffa3`  
		Last Modified: Thu, 17 Sep 2026 21:39:45 GMT  
		Size: 296.6 KB (296648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af7545193e43999a675c8c7de875ce8e6f15ef21dc6de888cfa57014ac5b786`  
		Last Modified: Thu, 17 Sep 2026 21:39:46 GMT  
		Size: 32.2 MB (32185081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8022eda9846f8a45cafe8829a7512f867331fc2ec449df1dd5620dff040e6f82`  
		Last Modified: Thu, 17 Sep 2026 21:39:45 GMT  
		Size: 12.2 KB (12236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263d20e741a567fab4d4aca5c648b433269ec9e43f9004861975cf843d2f3481`  
		Last Modified: Thu, 17 Sep 2026 21:39:46 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2c91a95ed0650a267fb45d2fa4226e3afe3e092117b4eb27c9c10e7a455bc7b`  
		Last Modified: Thu, 17 Sep 2026 21:39:46 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:15a5c71380b8bb50feaa3f7b905912456b414336d3aa5ab601ad2ea87b8d9141
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.9 KB (253876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ef10d903b86cc1c702742e1fd37261682ed4236a1252c1f792af1668d752190`

```dockerfile
```

-	Layers:
	-	`sha256:bc653c584975527212dc3be57b103da93cd31d9983d33d993079bc937226f002`  
		Last Modified: Thu, 17 Sep 2026 21:39:45 GMT  
		Size: 236.4 KB (236370 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3287a437e43f349b40f59edfa341098146ef977f25903e6ea179218acd06bd93`  
		Last Modified: Thu, 17 Sep 2026 21:39:45 GMT  
		Size: 17.5 KB (17506 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.10.9`

```console
$ docker pull chronograf@sha256:9cc2728cbf875a6e83a378b3f744ec7f6890d041267101706aa06ca5be3ba604
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
$ docker pull chronograf@sha256:3622511f479961380472ca43697b305e2885b2fc919ea1dd26f608245fa480fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85031681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42981956f9f3f2eed832eb2137be70dffaad2114e3195e8d60446f1115b7912d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:59 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 00:45:05 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Sat, 19 Sep 2026 00:45:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:45:05 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Sat, 19 Sep 2026 00:45:05 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Sat, 19 Sep 2026 00:45:05 GMT
EXPOSE map[8888/tcp:{}]
# Sat, 19 Sep 2026 00:45:05 GMT
VOLUME [/var/lib/chronograf]
# Sat, 19 Sep 2026 00:45:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 00:45:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 00:45:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1939e6c1922236572db4469c388f6ee11e3182c9701cef28d8b6d140b02ca78`  
		Last Modified: Sat, 19 Sep 2026 00:45:15 GMT  
		Size: 7.9 MB (7900772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7e7bfbc38cd150aad1213023164c1fdb77ce7ca11f7eb40486c7ccf19d66cd0`  
		Last Modified: Sat, 19 Sep 2026 00:45:16 GMT  
		Size: 48.9 MB (48867997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c6cf2e5de4eaaf5c4ff965e69c3844bb2a13104c39da1c5b2d82aee9b0ac6f`  
		Last Modified: Sat, 19 Sep 2026 00:45:14 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91dc36a415de810c3ffdbb3a11d4d1e3d1335240477133b07ae8baf9c7a26de9`  
		Last Modified: Sat, 19 Sep 2026 00:45:15 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d167b85daf07c5d04a546e43c854d011d711376a395e80c8dd26c4cb0b0de987`  
		Last Modified: Sat, 19 Sep 2026 00:45:16 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:51682060a22062f0feddd9a6e7326b9ce9338624d454c8ecd7e6a7c33c500719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2876542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c492928c096f44ee2ae9458d1e56c171a1c29ec98829df7200a82ce2ccd2d1d`

```dockerfile
```

-	Layers:
	-	`sha256:4efd8a66a9ddf194fb8a7c862e2384e25e877c4dd9a9a9d602661713bca36432`  
		Last Modified: Sat, 19 Sep 2026 00:45:15 GMT  
		Size: 2.9 MB (2860763 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d64f21b836df4f38dc3dade77daca538f1885d8a809e06bb40995f909ce46c29`  
		Last Modified: Sat, 19 Sep 2026 00:45:15 GMT  
		Size: 15.8 KB (15779 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10.9` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:edc82d78a48c0800b162d55d1c2250c39624ce6dd4c0d164cd0268cf23263a0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76809105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c0fd801f39629de9bfa7391a0de2e45deb4b23a4cdc51df08af4cf1384235b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:33:02 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 01:33:09 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 25 Aug 2026 01:33:09 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 01:33:09 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 25 Aug 2026 01:33:09 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 25 Aug 2026 01:33:09 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 25 Aug 2026 01:33:09 GMT
VOLUME [/var/lib/chronograf]
# Tue, 25 Aug 2026 01:33:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:33:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:33:09 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3446bb54bc9a88ece9f8a749043cf653107276ed844ddbea16a14fd32595375`  
		Last Modified: Tue, 25 Aug 2026 01:33:20 GMT  
		Size: 6.5 MB (6524503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5baa1397976c9f385869d00bd98ccbff8e15e4e492cd965547e8495628e3b7df`  
		Last Modified: Tue, 25 Aug 2026 01:33:21 GMT  
		Size: 46.3 MB (46320290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea24164a75fd0d6479fe993ac52c55891175cca60118bf7c97293e8b033c311`  
		Last Modified: Tue, 25 Aug 2026 01:33:19 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1347745f3f1cf1334ab83ca723aad908fee66f21df6a53cc270e514aa518a49`  
		Last Modified: Tue, 25 Aug 2026 01:33:20 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb670a560ce495a686f0d4791b01cab97cc2baa6167cb01dad4fd099303b83c`  
		Last Modified: Tue, 25 Aug 2026 01:33:21 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:e92a4a9fcb3f3424199eaa521a0b67ab0b46d1548e490cc07e40597cb3b77b16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2878844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e0eb7aac6ee15d8b0136ac919ae93ddf4b1507cef7643e93d8ef9073d0370e4`

```dockerfile
```

-	Layers:
	-	`sha256:180c984d0cdb2782be6694590732c7654dc28077f45e46334e6cd18bb92be886`  
		Last Modified: Tue, 25 Aug 2026 01:33:20 GMT  
		Size: 2.9 MB (2862988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e283064da6b25dc862e5ea5ca4def7ca69fb247acc4f3d0d04562ab56c8b3ce7`  
		Last Modified: Tue, 25 Aug 2026 01:33:19 GMT  
		Size: 15.9 KB (15856 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10.9` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:12081dc965b2e34acbcf5526398f16da89bf1ab151d31a2b8dc2a736f85b6406
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81867532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fc66cef1e3d63ff349cfce00541c37d54afbc6a38e5dccf5e7f25969d108833`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:35 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 00:47:40 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Sat, 19 Sep 2026 00:47:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:47:40 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Sat, 19 Sep 2026 00:47:40 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Sat, 19 Sep 2026 00:47:40 GMT
EXPOSE map[8888/tcp:{}]
# Sat, 19 Sep 2026 00:47:40 GMT
VOLUME [/var/lib/chronograf]
# Sat, 19 Sep 2026 00:47:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 00:47:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 00:47:40 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da5635e4a466eea3cfcd7bb23faaa1ff67058a7d04791e780577e609de8ed968`  
		Last Modified: Sat, 19 Sep 2026 00:47:51 GMT  
		Size: 7.7 MB (7709737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62b8a64732d2f9a078057f16703e8bf266b027c3f401218661dfc7a8138c1844`  
		Last Modified: Sat, 19 Sep 2026 00:47:52 GMT  
		Size: 46.0 MB (46009651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9230e853b62fe1f46ef29cebedea6c33d8620c231cb821d78853e25af67ace91`  
		Last Modified: Sat, 19 Sep 2026 00:47:50 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8ffc68b3bc9aaf062b6a971dc534dd49c226f17256ca3d43535ffdb8a06b758`  
		Last Modified: Sat, 19 Sep 2026 00:47:51 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc7eaf68003d3cc3a6ec7357c7e730bdc56efc5707ef0ca8044209cb58468071`  
		Last Modified: Sat, 19 Sep 2026 00:47:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:69da2c0d8b1561bfb4675d51d4fd374a096b5876c817c9008c9dd895caf1e348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2876898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abf8f1dc46753c78219c96d2a1488aa463c67f4af51400dbe3f0f56e2713e47e`

```dockerfile
```

-	Layers:
	-	`sha256:22bd082b2b387224a8e1c85ea913bb56c2787a095e37559b8af3e0f572ec95dc`  
		Last Modified: Sat, 19 Sep 2026 00:47:51 GMT  
		Size: 2.9 MB (2861024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e8002dfe1da1aaef7ebb34c694c9e8ad70f4f0d9deb08fa8b9ae8ac748ca21c`  
		Last Modified: Sat, 19 Sep 2026 00:47:50 GMT  
		Size: 15.9 KB (15874 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.10.9-alpine`

```console
$ docker pull chronograf@sha256:21d2e90048aed1c85c4d54de8a784311a314b26ae9d53356612de0d93dbc0315
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.10.9-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:30a25b30e8965e5911a10db2fd7a15c5344fd623a13235429f03b6d24e50a8b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36356198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43a00352e02bbbd8965e459a3df2da772af9dbca280564c9a2952fb8157166da`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:39:34 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:39:37 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Thu, 17 Sep 2026 21:39:37 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Thu, 17 Sep 2026 21:39:37 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 17 Sep 2026 21:39:38 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 17 Sep 2026 21:39:38 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 17 Sep 2026 21:39:38 GMT
VOLUME [/var/lib/chronograf]
# Thu, 17 Sep 2026 21:39:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:39:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:39:38 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6d0c4e427f32bf21afd2b6c2d031b25f530e3018c5bb252e4ec10a48442eda`  
		Last Modified: Thu, 17 Sep 2026 21:39:45 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c47513e774fb5506355da2fa000cab088a245fcaae530e61f4ec508e084ffa3`  
		Last Modified: Thu, 17 Sep 2026 21:39:45 GMT  
		Size: 296.6 KB (296648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af7545193e43999a675c8c7de875ce8e6f15ef21dc6de888cfa57014ac5b786`  
		Last Modified: Thu, 17 Sep 2026 21:39:46 GMT  
		Size: 32.2 MB (32185081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8022eda9846f8a45cafe8829a7512f867331fc2ec449df1dd5620dff040e6f82`  
		Last Modified: Thu, 17 Sep 2026 21:39:45 GMT  
		Size: 12.2 KB (12236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263d20e741a567fab4d4aca5c648b433269ec9e43f9004861975cf843d2f3481`  
		Last Modified: Thu, 17 Sep 2026 21:39:46 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2c91a95ed0650a267fb45d2fa4226e3afe3e092117b4eb27c9c10e7a455bc7b`  
		Last Modified: Thu, 17 Sep 2026 21:39:46 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:15a5c71380b8bb50feaa3f7b905912456b414336d3aa5ab601ad2ea87b8d9141
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.9 KB (253876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ef10d903b86cc1c702742e1fd37261682ed4236a1252c1f792af1668d752190`

```dockerfile
```

-	Layers:
	-	`sha256:bc653c584975527212dc3be57b103da93cd31d9983d33d993079bc937226f002`  
		Last Modified: Thu, 17 Sep 2026 21:39:45 GMT  
		Size: 236.4 KB (236370 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3287a437e43f349b40f59edfa341098146ef977f25903e6ea179218acd06bd93`  
		Last Modified: Thu, 17 Sep 2026 21:39:45 GMT  
		Size: 17.5 KB (17506 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11`

```console
$ docker pull chronograf@sha256:8028ae80a984c5b85f40789c7d7ebc16e490fde55baf2f6742fff925f0e4c2ff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11` - linux; amd64

```console
$ docker pull chronograf@sha256:6cff79993699c54a068915d0988a505fd255e859fd1fda007c3e029f130b1e25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.4 MB (96360618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:976f6d0a1012cca05d70d8fd7360a0a5c699f2e087dee4d4f79ca6d4f14f4581`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:45:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 00:45:09 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Sat, 19 Sep 2026 00:45:09 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:45:09 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Sat, 19 Sep 2026 00:45:09 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Sat, 19 Sep 2026 00:45:09 GMT
EXPOSE map[8888/tcp:{}]
# Sat, 19 Sep 2026 00:45:09 GMT
VOLUME [/var/lib/chronograf]
# Sat, 19 Sep 2026 00:45:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 00:45:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 00:45:09 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a09c8001ef6373e10a9477eef5a4007d99ebd8540ccf6f0a5053a27076318ea2`  
		Last Modified: Sat, 19 Sep 2026 00:45:23 GMT  
		Size: 7.9 MB (7900795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6ae8e7fbf94c9e55dfaf5e0ed2774a33d2528e5a3caf7b90a3bf9951a2c8a82`  
		Last Modified: Sat, 19 Sep 2026 00:45:25 GMT  
		Size: 60.2 MB (60196913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d1694659507fbf6a7a13f7d936c786dee6d74d7402968c3d82bebfca962cc6`  
		Last Modified: Sat, 19 Sep 2026 00:45:23 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a87eaf084446a28268ad9a6cc6e21e8c92451d472aebd92e3cc69b8cefc4261`  
		Last Modified: Sat, 19 Sep 2026 00:45:23 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a9f6489cd39981e3554144182b9685801e0c8627a8ffdaea2f5936e3af07e7`  
		Last Modified: Sat, 19 Sep 2026 00:45:24 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:d6bc83d11f7ab2dcdec495b2da99d88a58cb37c9b44350905a03bbfdc602b27f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2895125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:921721a92241650a68d517b1528921477fa99533f155ed5a12cb50817105c80e`

```dockerfile
```

-	Layers:
	-	`sha256:c84325d44512b3bfb667049afb81225f58e166fba99ad213a53b698133430426`  
		Last Modified: Sat, 19 Sep 2026 00:45:23 GMT  
		Size: 2.9 MB (2879041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df01ac20e5ccf5ab08848fe7f270bf02f0e7b2cbefb99bb61ed391cbc28ccb6f`  
		Last Modified: Sat, 19 Sep 2026 00:45:23 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:9ff29e3beb843d0506981e32601352b5c46897556478b834a7fad36eddbfd9cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93068644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1afffecb22d5cca2529a5195df783585a84414fa29bb742863160d81e931297f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:40 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 00:47:46 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Sat, 19 Sep 2026 00:47:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:47:46 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Sat, 19 Sep 2026 00:47:46 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Sat, 19 Sep 2026 00:47:46 GMT
EXPOSE map[8888/tcp:{}]
# Sat, 19 Sep 2026 00:47:46 GMT
VOLUME [/var/lib/chronograf]
# Sat, 19 Sep 2026 00:47:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 00:47:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 00:47:46 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a3cbb1168cb555730c6f1147e29b232995fbcc36cc0a3ee827a7ee7809a9575`  
		Last Modified: Sat, 19 Sep 2026 00:48:00 GMT  
		Size: 7.7 MB (7709733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d52961b793b5c1a84a5615dd82160290a64e6c6dcaeab572dc63efe2792e8ff`  
		Last Modified: Sat, 19 Sep 2026 00:48:01 GMT  
		Size: 57.2 MB (57210756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22de5067971c79a1261327ea2f373912c061e46a7b5641872613c1ab8fafcbc9`  
		Last Modified: Sat, 19 Sep 2026 00:47:59 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129754da93628c6400a159fb002c6a56e43eadf5a78f3b2c26a02f0e3c21b3ec`  
		Last Modified: Sat, 19 Sep 2026 00:48:00 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112b6f361250cf34ca996078b523ed5b65f57c4d0e2bc1d3b74548ff3fd46147`  
		Last Modified: Sat, 19 Sep 2026 00:48:01 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:c6a9a0b061a68db1a7302dd7e71939eb37879a2d172c931714983c990cfb65a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989f197dc3771c82ac89b5a022e52bb7912054bc87dd7be6162716c214abd325`

```dockerfile
```

-	Layers:
	-	`sha256:7bf3283239dd07e27ec6bf521c0f7ed900fa4639683275d196113db2a48ff076`  
		Last Modified: Sat, 19 Sep 2026 00:48:00 GMT  
		Size: 2.9 MB (2878255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:770e0d79aa431631b6362023b8b46ebec681abbecdd2fc807d8be1893c6319a4`  
		Last Modified: Sat, 19 Sep 2026 00:47:59 GMT  
		Size: 16.2 KB (16191 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11-alpine`

```console
$ docker pull chronograf@sha256:6963e320df3dbe27723be02589b3e7f314f82d485071cce86f73e649861233fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.11-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:3e17d6887e2a19d924e25d2ff427df33a719fc82d367413ce1f09c6040b87621
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.4 MB (65382904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff2af5d90ca1fc44143d945773b0ee1a823cd204394e60da99c36b18802cb98`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:39:36 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:39:41 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Thu, 17 Sep 2026 21:39:41 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Thu, 17 Sep 2026 21:39:41 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 17 Sep 2026 21:39:41 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 17 Sep 2026 21:39:41 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 17 Sep 2026 21:39:41 GMT
VOLUME [/var/lib/chronograf]
# Thu, 17 Sep 2026 21:39:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:39:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:39:42 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d50e3fd511a7d2c74212813e90f4e1319640de782176e2c3cf4aef845d68a37b`  
		Last Modified: Thu, 17 Sep 2026 21:39:53 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d97f95609d764155ac30a2a43a358cb651335cf6383831515676a27a1712dde3`  
		Last Modified: Thu, 17 Sep 2026 21:39:53 GMT  
		Size: 296.6 KB (296650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7432bb003548b0adc55095d008c82c3bb13ad5893a7182a6428fb3ce39e12bda`  
		Last Modified: Thu, 17 Sep 2026 21:39:55 GMT  
		Size: 61.2 MB (61211794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd65713d89a12ef95516aebd99f9850f59eb3171a87358e018926d076644ab70`  
		Last Modified: Thu, 17 Sep 2026 21:39:53 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129d851ecadf6df9c8249a383a9f9918219616eec5019c57c6e998b3dfa5dd12`  
		Last Modified: Thu, 17 Sep 2026 21:39:54 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5382939ba56e90326307e0936e1cd280ac28866af090392583cc2625f8d349b`  
		Last Modified: Thu, 17 Sep 2026 21:39:54 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:4dcab8027941e5c7e69238516c57844b87449c68bcb44baec280b23b32bf7f90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 KB (272412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3efc43745369e4622b53e74c3a0896cbf46dd8c0e0b05a78b88910c09e85699`

```dockerfile
```

-	Layers:
	-	`sha256:916d99ea9aeab2edebc1f294ea130b35864e15280010d9c3582d73a9598d924d`  
		Last Modified: Thu, 17 Sep 2026 21:39:53 GMT  
		Size: 254.6 KB (254648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e75b15974262b3b370ca51149aa6a2141e22dee2213d3d3c989214eae8a8f2ce`  
		Last Modified: Thu, 17 Sep 2026 21:39:53 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11.4`

```console
$ docker pull chronograf@sha256:8028ae80a984c5b85f40789c7d7ebc16e490fde55baf2f6742fff925f0e4c2ff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11.4` - linux; amd64

```console
$ docker pull chronograf@sha256:6cff79993699c54a068915d0988a505fd255e859fd1fda007c3e029f130b1e25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.4 MB (96360618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:976f6d0a1012cca05d70d8fd7360a0a5c699f2e087dee4d4f79ca6d4f14f4581`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:45:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 00:45:09 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Sat, 19 Sep 2026 00:45:09 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:45:09 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Sat, 19 Sep 2026 00:45:09 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Sat, 19 Sep 2026 00:45:09 GMT
EXPOSE map[8888/tcp:{}]
# Sat, 19 Sep 2026 00:45:09 GMT
VOLUME [/var/lib/chronograf]
# Sat, 19 Sep 2026 00:45:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 00:45:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 00:45:09 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a09c8001ef6373e10a9477eef5a4007d99ebd8540ccf6f0a5053a27076318ea2`  
		Last Modified: Sat, 19 Sep 2026 00:45:23 GMT  
		Size: 7.9 MB (7900795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6ae8e7fbf94c9e55dfaf5e0ed2774a33d2528e5a3caf7b90a3bf9951a2c8a82`  
		Last Modified: Sat, 19 Sep 2026 00:45:25 GMT  
		Size: 60.2 MB (60196913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d1694659507fbf6a7a13f7d936c786dee6d74d7402968c3d82bebfca962cc6`  
		Last Modified: Sat, 19 Sep 2026 00:45:23 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a87eaf084446a28268ad9a6cc6e21e8c92451d472aebd92e3cc69b8cefc4261`  
		Last Modified: Sat, 19 Sep 2026 00:45:23 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a9f6489cd39981e3554144182b9685801e0c8627a8ffdaea2f5936e3af07e7`  
		Last Modified: Sat, 19 Sep 2026 00:45:24 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.4` - unknown; unknown

```console
$ docker pull chronograf@sha256:d6bc83d11f7ab2dcdec495b2da99d88a58cb37c9b44350905a03bbfdc602b27f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2895125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:921721a92241650a68d517b1528921477fa99533f155ed5a12cb50817105c80e`

```dockerfile
```

-	Layers:
	-	`sha256:c84325d44512b3bfb667049afb81225f58e166fba99ad213a53b698133430426`  
		Last Modified: Sat, 19 Sep 2026 00:45:23 GMT  
		Size: 2.9 MB (2879041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df01ac20e5ccf5ab08848fe7f270bf02f0e7b2cbefb99bb61ed391cbc28ccb6f`  
		Last Modified: Sat, 19 Sep 2026 00:45:23 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11.4` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:9ff29e3beb843d0506981e32601352b5c46897556478b834a7fad36eddbfd9cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93068644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1afffecb22d5cca2529a5195df783585a84414fa29bb742863160d81e931297f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:40 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 00:47:46 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Sat, 19 Sep 2026 00:47:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:47:46 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Sat, 19 Sep 2026 00:47:46 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Sat, 19 Sep 2026 00:47:46 GMT
EXPOSE map[8888/tcp:{}]
# Sat, 19 Sep 2026 00:47:46 GMT
VOLUME [/var/lib/chronograf]
# Sat, 19 Sep 2026 00:47:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 00:47:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 00:47:46 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a3cbb1168cb555730c6f1147e29b232995fbcc36cc0a3ee827a7ee7809a9575`  
		Last Modified: Sat, 19 Sep 2026 00:48:00 GMT  
		Size: 7.7 MB (7709733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d52961b793b5c1a84a5615dd82160290a64e6c6dcaeab572dc63efe2792e8ff`  
		Last Modified: Sat, 19 Sep 2026 00:48:01 GMT  
		Size: 57.2 MB (57210756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22de5067971c79a1261327ea2f373912c061e46a7b5641872613c1ab8fafcbc9`  
		Last Modified: Sat, 19 Sep 2026 00:47:59 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129754da93628c6400a159fb002c6a56e43eadf5a78f3b2c26a02f0e3c21b3ec`  
		Last Modified: Sat, 19 Sep 2026 00:48:00 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112b6f361250cf34ca996078b523ed5b65f57c4d0e2bc1d3b74548ff3fd46147`  
		Last Modified: Sat, 19 Sep 2026 00:48:01 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.4` - unknown; unknown

```console
$ docker pull chronograf@sha256:c6a9a0b061a68db1a7302dd7e71939eb37879a2d172c931714983c990cfb65a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989f197dc3771c82ac89b5a022e52bb7912054bc87dd7be6162716c214abd325`

```dockerfile
```

-	Layers:
	-	`sha256:7bf3283239dd07e27ec6bf521c0f7ed900fa4639683275d196113db2a48ff076`  
		Last Modified: Sat, 19 Sep 2026 00:48:00 GMT  
		Size: 2.9 MB (2878255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:770e0d79aa431631b6362023b8b46ebec681abbecdd2fc807d8be1893c6319a4`  
		Last Modified: Sat, 19 Sep 2026 00:47:59 GMT  
		Size: 16.2 KB (16191 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11.4-alpine`

```console
$ docker pull chronograf@sha256:6963e320df3dbe27723be02589b3e7f314f82d485071cce86f73e649861233fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.11.4-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:3e17d6887e2a19d924e25d2ff427df33a719fc82d367413ce1f09c6040b87621
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.4 MB (65382904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff2af5d90ca1fc44143d945773b0ee1a823cd204394e60da99c36b18802cb98`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:39:36 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:39:41 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Thu, 17 Sep 2026 21:39:41 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Thu, 17 Sep 2026 21:39:41 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 17 Sep 2026 21:39:41 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 17 Sep 2026 21:39:41 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 17 Sep 2026 21:39:41 GMT
VOLUME [/var/lib/chronograf]
# Thu, 17 Sep 2026 21:39:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:39:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:39:42 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d50e3fd511a7d2c74212813e90f4e1319640de782176e2c3cf4aef845d68a37b`  
		Last Modified: Thu, 17 Sep 2026 21:39:53 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d97f95609d764155ac30a2a43a358cb651335cf6383831515676a27a1712dde3`  
		Last Modified: Thu, 17 Sep 2026 21:39:53 GMT  
		Size: 296.6 KB (296650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7432bb003548b0adc55095d008c82c3bb13ad5893a7182a6428fb3ce39e12bda`  
		Last Modified: Thu, 17 Sep 2026 21:39:55 GMT  
		Size: 61.2 MB (61211794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd65713d89a12ef95516aebd99f9850f59eb3171a87358e018926d076644ab70`  
		Last Modified: Thu, 17 Sep 2026 21:39:53 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129d851ecadf6df9c8249a383a9f9918219616eec5019c57c6e998b3dfa5dd12`  
		Last Modified: Thu, 17 Sep 2026 21:39:54 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5382939ba56e90326307e0936e1cd280ac28866af090392583cc2625f8d349b`  
		Last Modified: Thu, 17 Sep 2026 21:39:54 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.4-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:4dcab8027941e5c7e69238516c57844b87449c68bcb44baec280b23b32bf7f90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 KB (272412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3efc43745369e4622b53e74c3a0896cbf46dd8c0e0b05a78b88910c09e85699`

```dockerfile
```

-	Layers:
	-	`sha256:916d99ea9aeab2edebc1f294ea130b35864e15280010d9c3582d73a9598d924d`  
		Last Modified: Thu, 17 Sep 2026 21:39:53 GMT  
		Size: 254.6 KB (254648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e75b15974262b3b370ca51149aa6a2141e22dee2213d3d3c989214eae8a8f2ce`  
		Last Modified: Thu, 17 Sep 2026 21:39:53 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:6963e320df3dbe27723be02589b3e7f314f82d485071cce86f73e649861233fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:3e17d6887e2a19d924e25d2ff427df33a719fc82d367413ce1f09c6040b87621
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.4 MB (65382904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff2af5d90ca1fc44143d945773b0ee1a823cd204394e60da99c36b18802cb98`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:39:36 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:39:41 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Thu, 17 Sep 2026 21:39:41 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Thu, 17 Sep 2026 21:39:41 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 17 Sep 2026 21:39:41 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 17 Sep 2026 21:39:41 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 17 Sep 2026 21:39:41 GMT
VOLUME [/var/lib/chronograf]
# Thu, 17 Sep 2026 21:39:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:39:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:39:42 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d50e3fd511a7d2c74212813e90f4e1319640de782176e2c3cf4aef845d68a37b`  
		Last Modified: Thu, 17 Sep 2026 21:39:53 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d97f95609d764155ac30a2a43a358cb651335cf6383831515676a27a1712dde3`  
		Last Modified: Thu, 17 Sep 2026 21:39:53 GMT  
		Size: 296.6 KB (296650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7432bb003548b0adc55095d008c82c3bb13ad5893a7182a6428fb3ce39e12bda`  
		Last Modified: Thu, 17 Sep 2026 21:39:55 GMT  
		Size: 61.2 MB (61211794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd65713d89a12ef95516aebd99f9850f59eb3171a87358e018926d076644ab70`  
		Last Modified: Thu, 17 Sep 2026 21:39:53 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129d851ecadf6df9c8249a383a9f9918219616eec5019c57c6e998b3dfa5dd12`  
		Last Modified: Thu, 17 Sep 2026 21:39:54 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5382939ba56e90326307e0936e1cd280ac28866af090392583cc2625f8d349b`  
		Last Modified: Thu, 17 Sep 2026 21:39:54 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:4dcab8027941e5c7e69238516c57844b87449c68bcb44baec280b23b32bf7f90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 KB (272412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3efc43745369e4622b53e74c3a0896cbf46dd8c0e0b05a78b88910c09e85699`

```dockerfile
```

-	Layers:
	-	`sha256:916d99ea9aeab2edebc1f294ea130b35864e15280010d9c3582d73a9598d924d`  
		Last Modified: Thu, 17 Sep 2026 21:39:53 GMT  
		Size: 254.6 KB (254648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e75b15974262b3b370ca51149aa6a2141e22dee2213d3d3c989214eae8a8f2ce`  
		Last Modified: Thu, 17 Sep 2026 21:39:53 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:8028ae80a984c5b85f40789c7d7ebc16e490fde55baf2f6742fff925f0e4c2ff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:6cff79993699c54a068915d0988a505fd255e859fd1fda007c3e029f130b1e25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.4 MB (96360618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:976f6d0a1012cca05d70d8fd7360a0a5c699f2e087dee4d4f79ca6d4f14f4581`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:45:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 00:45:09 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Sat, 19 Sep 2026 00:45:09 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:45:09 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Sat, 19 Sep 2026 00:45:09 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Sat, 19 Sep 2026 00:45:09 GMT
EXPOSE map[8888/tcp:{}]
# Sat, 19 Sep 2026 00:45:09 GMT
VOLUME [/var/lib/chronograf]
# Sat, 19 Sep 2026 00:45:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 00:45:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 00:45:09 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a09c8001ef6373e10a9477eef5a4007d99ebd8540ccf6f0a5053a27076318ea2`  
		Last Modified: Sat, 19 Sep 2026 00:45:23 GMT  
		Size: 7.9 MB (7900795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6ae8e7fbf94c9e55dfaf5e0ed2774a33d2528e5a3caf7b90a3bf9951a2c8a82`  
		Last Modified: Sat, 19 Sep 2026 00:45:25 GMT  
		Size: 60.2 MB (60196913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d1694659507fbf6a7a13f7d936c786dee6d74d7402968c3d82bebfca962cc6`  
		Last Modified: Sat, 19 Sep 2026 00:45:23 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a87eaf084446a28268ad9a6cc6e21e8c92451d472aebd92e3cc69b8cefc4261`  
		Last Modified: Sat, 19 Sep 2026 00:45:23 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a9f6489cd39981e3554144182b9685801e0c8627a8ffdaea2f5936e3af07e7`  
		Last Modified: Sat, 19 Sep 2026 00:45:24 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:d6bc83d11f7ab2dcdec495b2da99d88a58cb37c9b44350905a03bbfdc602b27f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2895125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:921721a92241650a68d517b1528921477fa99533f155ed5a12cb50817105c80e`

```dockerfile
```

-	Layers:
	-	`sha256:c84325d44512b3bfb667049afb81225f58e166fba99ad213a53b698133430426`  
		Last Modified: Sat, 19 Sep 2026 00:45:23 GMT  
		Size: 2.9 MB (2879041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df01ac20e5ccf5ab08848fe7f270bf02f0e7b2cbefb99bb61ed391cbc28ccb6f`  
		Last Modified: Sat, 19 Sep 2026 00:45:23 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:9ff29e3beb843d0506981e32601352b5c46897556478b834a7fad36eddbfd9cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93068644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1afffecb22d5cca2529a5195df783585a84414fa29bb742863160d81e931297f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:40 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 00:47:46 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Sat, 19 Sep 2026 00:47:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:47:46 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Sat, 19 Sep 2026 00:47:46 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Sat, 19 Sep 2026 00:47:46 GMT
EXPOSE map[8888/tcp:{}]
# Sat, 19 Sep 2026 00:47:46 GMT
VOLUME [/var/lib/chronograf]
# Sat, 19 Sep 2026 00:47:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 00:47:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 00:47:46 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a3cbb1168cb555730c6f1147e29b232995fbcc36cc0a3ee827a7ee7809a9575`  
		Last Modified: Sat, 19 Sep 2026 00:48:00 GMT  
		Size: 7.7 MB (7709733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d52961b793b5c1a84a5615dd82160290a64e6c6dcaeab572dc63efe2792e8ff`  
		Last Modified: Sat, 19 Sep 2026 00:48:01 GMT  
		Size: 57.2 MB (57210756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22de5067971c79a1261327ea2f373912c061e46a7b5641872613c1ab8fafcbc9`  
		Last Modified: Sat, 19 Sep 2026 00:47:59 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129754da93628c6400a159fb002c6a56e43eadf5a78f3b2c26a02f0e3c21b3ec`  
		Last Modified: Sat, 19 Sep 2026 00:48:00 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112b6f361250cf34ca996078b523ed5b65f57c4d0e2bc1d3b74548ff3fd46147`  
		Last Modified: Sat, 19 Sep 2026 00:48:01 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:c6a9a0b061a68db1a7302dd7e71939eb37879a2d172c931714983c990cfb65a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989f197dc3771c82ac89b5a022e52bb7912054bc87dd7be6162716c214abd325`

```dockerfile
```

-	Layers:
	-	`sha256:7bf3283239dd07e27ec6bf521c0f7ed900fa4639683275d196113db2a48ff076`  
		Last Modified: Sat, 19 Sep 2026 00:48:00 GMT  
		Size: 2.9 MB (2878255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:770e0d79aa431631b6362023b8b46ebec681abbecdd2fc807d8be1893c6319a4`  
		Last Modified: Sat, 19 Sep 2026 00:47:59 GMT  
		Size: 16.2 KB (16191 bytes)  
		MIME: application/vnd.in-toto+json
