<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.10`](#chronograf110)
-	[`chronograf:1.10-alpine`](#chronograf110-alpine)
-	[`chronograf:1.10.9`](#chronograf1109)
-	[`chronograf:1.10.9-alpine`](#chronograf1109-alpine)
-	[`chronograf:1.11`](#chronograf111)
-	[`chronograf:1.11-alpine`](#chronograf111-alpine)
-	[`chronograf:1.11.5`](#chronograf1115)
-	[`chronograf:1.11.5-alpine`](#chronograf1115-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.10`

```console
$ docker pull chronograf@sha256:5c79b4e8cbc943c06b804b985100752e2cf0eed66fbbd5b0d6dbbe21a05ebf7b
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
$ docker pull chronograf@sha256:87705348c68397f18a552000eac856c935ff848e200a932ccafdfbc0c2da9e5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76811409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:388d284551a5565055629013f71c0b31aab5b63df45b661d425c50f1bf139eb2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:28:40 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 01:28:47 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Sat, 19 Sep 2026 01:28:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 01:28:47 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Sat, 19 Sep 2026 01:28:47 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Sat, 19 Sep 2026 01:28:47 GMT
EXPOSE map[8888/tcp:{}]
# Sat, 19 Sep 2026 01:28:47 GMT
VOLUME [/var/lib/chronograf]
# Sat, 19 Sep 2026 01:28:47 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:28:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 01:28:47 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:390d219e15de66c9843be9563a7348611f63d1a94d9acf6795787d10027e79fe`  
		Last Modified: Sat, 19 Sep 2026 01:28:58 GMT  
		Size: 6.5 MB (6524347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e027a6c38db738b86fb5f045532372f331e6844985be272c44a7f0268cf7c78a`  
		Last Modified: Sat, 19 Sep 2026 01:28:59 GMT  
		Size: 46.3 MB (46319490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:302d2d2501af4d224e17d4c7c27f2e43139ef77026ec3ad822b8ec7064e1e7f4`  
		Last Modified: Sat, 19 Sep 2026 01:28:58 GMT  
		Size: 12.2 KB (12239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6847bc15f24f9f698b0224dc403ef7f7facb69e0e025ace7d04625c5135a5ca`  
		Last Modified: Sat, 19 Sep 2026 01:28:58 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7293f529ddd3d3989c5079fe60b14beb86b4288229e9fd498d5337853440b96f`  
		Last Modified: Sat, 19 Sep 2026 01:28:59 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:d4862d6083544b4702bf952a5fcdea8334bf4000668c6c09f4e6391d2c17bdcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2878908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b10388a85ac9d4219908f2f02ef5178ae75a5d36d01fd8d8ceeaff9b26c6ca48`

```dockerfile
```

-	Layers:
	-	`sha256:b9c9eb40fd5ab4190a020ea70a33f55205089cf7fbd59ac751fef9723b534421`  
		Last Modified: Sat, 19 Sep 2026 01:28:58 GMT  
		Size: 2.9 MB (2863052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8038ba6a0ff3bd87bc64be218add76cc60cc0982ba7062ca066e1e3a1e8da93a`  
		Last Modified: Sat, 19 Sep 2026 01:28:57 GMT  
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
$ docker pull chronograf@sha256:5c79b4e8cbc943c06b804b985100752e2cf0eed66fbbd5b0d6dbbe21a05ebf7b
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
$ docker pull chronograf@sha256:87705348c68397f18a552000eac856c935ff848e200a932ccafdfbc0c2da9e5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76811409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:388d284551a5565055629013f71c0b31aab5b63df45b661d425c50f1bf139eb2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:28:40 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 01:28:47 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Sat, 19 Sep 2026 01:28:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 01:28:47 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Sat, 19 Sep 2026 01:28:47 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Sat, 19 Sep 2026 01:28:47 GMT
EXPOSE map[8888/tcp:{}]
# Sat, 19 Sep 2026 01:28:47 GMT
VOLUME [/var/lib/chronograf]
# Sat, 19 Sep 2026 01:28:47 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:28:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 01:28:47 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:390d219e15de66c9843be9563a7348611f63d1a94d9acf6795787d10027e79fe`  
		Last Modified: Sat, 19 Sep 2026 01:28:58 GMT  
		Size: 6.5 MB (6524347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e027a6c38db738b86fb5f045532372f331e6844985be272c44a7f0268cf7c78a`  
		Last Modified: Sat, 19 Sep 2026 01:28:59 GMT  
		Size: 46.3 MB (46319490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:302d2d2501af4d224e17d4c7c27f2e43139ef77026ec3ad822b8ec7064e1e7f4`  
		Last Modified: Sat, 19 Sep 2026 01:28:58 GMT  
		Size: 12.2 KB (12239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6847bc15f24f9f698b0224dc403ef7f7facb69e0e025ace7d04625c5135a5ca`  
		Last Modified: Sat, 19 Sep 2026 01:28:58 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7293f529ddd3d3989c5079fe60b14beb86b4288229e9fd498d5337853440b96f`  
		Last Modified: Sat, 19 Sep 2026 01:28:59 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:d4862d6083544b4702bf952a5fcdea8334bf4000668c6c09f4e6391d2c17bdcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2878908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b10388a85ac9d4219908f2f02ef5178ae75a5d36d01fd8d8ceeaff9b26c6ca48`

```dockerfile
```

-	Layers:
	-	`sha256:b9c9eb40fd5ab4190a020ea70a33f55205089cf7fbd59ac751fef9723b534421`  
		Last Modified: Sat, 19 Sep 2026 01:28:58 GMT  
		Size: 2.9 MB (2863052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8038ba6a0ff3bd87bc64be218add76cc60cc0982ba7062ca066e1e3a1e8da93a`  
		Last Modified: Sat, 19 Sep 2026 01:28:57 GMT  
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
$ docker pull chronograf@sha256:d9329ae9770c57cf501cbc51f86bb38eb7f219de4c41a17c2c0cf6297ecab543
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11` - linux; amd64

```console
$ docker pull chronograf@sha256:23c94ef75d5193875b51951edc20e3083356cec28a91c9052ce0b967e2b59ab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.1 MB (97132688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f431fa7cbbb79dd1e97f564809e702da93c5a105c10333ccb0a781453fce6dba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Tue, 22 Sep 2026 18:47:58 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 22 Sep 2026 18:48:03 GMT
ENV CHRONOGRAF_VERSION=1.11.5
# Tue, 22 Sep 2026 18:48:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 22 Sep 2026 18:48:03 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 22 Sep 2026 18:48:03 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 22 Sep 2026 18:48:03 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 22 Sep 2026 18:48:03 GMT
VOLUME [/var/lib/chronograf]
# Tue, 22 Sep 2026 18:48:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:48:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:48:03 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51b47ae94c047d9e105a39ddfba2d7fc27e581c68c09e3de6468e906e8961141`  
		Last Modified: Tue, 22 Sep 2026 18:48:17 GMT  
		Size: 7.9 MB (7900816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fd2aadbe3cbaba1d6f57e9658dc8cc123c3d652500f9f7773fd13a972fcd24`  
		Last Modified: Tue, 22 Sep 2026 18:48:19 GMT  
		Size: 61.0 MB (60968964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384828d0602df9a8538e122a3eb673e02fedebdb17db403bfe24fb539472269a`  
		Last Modified: Tue, 22 Sep 2026 18:48:17 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92432dcf4276164e47b85e0246e569e41c3c3fb7c7b0f12e58b8647448b84a8`  
		Last Modified: Tue, 22 Sep 2026 18:48:17 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8254a41b36c33170d8ef43667c5d8cf211248f3c1bbb140260644bc0b8aff3f8`  
		Last Modified: Tue, 22 Sep 2026 18:48:18 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:beed566211776d8e46848de80227979a5f363921e0c2d2396c47978d8d236520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2895126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7becdc490fd7164f522961b5c7571523b5d5ceca57db7d9a6063ecf98355b9f6`

```dockerfile
```

-	Layers:
	-	`sha256:bfa2b17e646dcc89f295280ee488eb8b7b25a461072f0106898d26bdb718d098`  
		Last Modified: Tue, 22 Sep 2026 18:48:17 GMT  
		Size: 2.9 MB (2879041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9869b1ee17a87e8fb957efb047b77473873dd1181d267fad375edb376de1d9b7`  
		Last Modified: Tue, 22 Sep 2026 18:48:17 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:642469df9dc02ec2268601aee045dea3c238dfc33102e83d9fe23efc72818c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.8 MB (93767422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d853d7649ca5b4da4c2ad66df019bce64e5a60c62834e1b99d2a535143ee11fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Tue, 22 Sep 2026 18:45:31 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 22 Sep 2026 18:45:37 GMT
ENV CHRONOGRAF_VERSION=1.11.5
# Tue, 22 Sep 2026 18:45:37 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 22 Sep 2026 18:45:37 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 22 Sep 2026 18:45:37 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 22 Sep 2026 18:45:37 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 22 Sep 2026 18:45:37 GMT
VOLUME [/var/lib/chronograf]
# Tue, 22 Sep 2026 18:45:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:45:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:45:37 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86788e79e5183b841fc329c2207f3150370f2c9458ab557daee75eb6b70d66ce`  
		Last Modified: Tue, 22 Sep 2026 18:45:52 GMT  
		Size: 7.7 MB (7709685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c0aa77a9ef7efddb032a0a5bf8998e0cce0e7aa963e5ed232cb4fb9d96d2ac`  
		Last Modified: Tue, 22 Sep 2026 18:45:53 GMT  
		Size: 57.9 MB (57909588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1ff14a3743fdffc91505275d7adf6cd9e88fefc4aadd3478332418834a672f`  
		Last Modified: Tue, 22 Sep 2026 18:45:52 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2da31bbd7babbe74954bcfd27d55dc4513ede99b76c3dd8047c4af2fb129687`  
		Last Modified: Tue, 22 Sep 2026 18:45:52 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba4d53382e73a2382498743fd081f952ab699050ea5867bb81267f5254f346f`  
		Last Modified: Tue, 22 Sep 2026 18:45:53 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:ffffd528821bd1f55bd75d11e56cf31f789011cde6cdbbe6d78728b05c816598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df20b51b1326e9270fbf7027f5582f0baff0618449a404ba7c530ccc58d2edb1`

```dockerfile
```

-	Layers:
	-	`sha256:bd4164084af627effa31f78e0086ac499087ccf4317a3a8bad08a6ec96f50175`  
		Last Modified: Tue, 22 Sep 2026 18:45:52 GMT  
		Size: 2.9 MB (2878255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2e6b66ed7b4098ddc690bba1d2027084b908dbd3a86a4a299e441be4a2123b3`  
		Last Modified: Tue, 22 Sep 2026 18:45:52 GMT  
		Size: 16.2 KB (16191 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11-alpine`

```console
$ docker pull chronograf@sha256:e5df978c5b0590a543c3494a6b89ec2976c7d204243f94a2b6f39c449f57a3fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.11-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:5ff92461e0484536e809d4c123bb2239c1ff2b401e291ec7eb76ad21164e28df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66160627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7c26504244453a8adcabf30e3a3a6da8a31f4961ea11ebd7f566c1b9c5eaa0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:47:51 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 22 Sep 2026 18:47:51 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
ENV CHRONOGRAF_VERSION=1.11.5
# Tue, 22 Sep 2026 18:47:56 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 22 Sep 2026 18:47:56 GMT
VOLUME [/var/lib/chronograf]
# Tue, 22 Sep 2026 18:47:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:47:56 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721b3dbc726778d574440f78d681d7345e322ee039b9e8dee5408c75a4209f61`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2896334095505ad18e90c71517143758129ce213eabdc60bdd0fbd79aad01236`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 296.7 KB (296651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f23cf772b6a98ae64a050b6dabf808924339c3b74020f8a7b926f9538e18b33c`  
		Last Modified: Tue, 22 Sep 2026 18:48:10 GMT  
		Size: 62.0 MB (61989500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b30e64e2c4e4a5cf2bf1b96eb255eb101acaed9d939a415d2169b221b58fe1d`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc45c001416d64e916262251fab65fd3c68dcbf1050c0b89278dc13e2a76668`  
		Last Modified: Tue, 22 Sep 2026 18:48:09 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b281c5448f40396f6237e658353a90d4883b5c3ce8257dd4695faa19839c0a06`  
		Last Modified: Tue, 22 Sep 2026 18:48:09 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:8bc169bf72ec0a6f7e154ae9993ff36ec6f575196e39a9d1c3c7449d9c6669e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 KB (272412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3669b93a06e3e805ecea883e3abf6c0f072d9a6488a02594a0053e1aa316bc9a`

```dockerfile
```

-	Layers:
	-	`sha256:946e882fc6e31ab6c34d0b91fea3fe8e0a3610065ea015f7eece408adebe0890`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 254.6 KB (254648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d0f9d8967ff3b872b7725afc7f5d543f61912a09a38e823d61b09d4f4484838`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11.5`

```console
$ docker pull chronograf@sha256:d9329ae9770c57cf501cbc51f86bb38eb7f219de4c41a17c2c0cf6297ecab543
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11.5` - linux; amd64

```console
$ docker pull chronograf@sha256:23c94ef75d5193875b51951edc20e3083356cec28a91c9052ce0b967e2b59ab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.1 MB (97132688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f431fa7cbbb79dd1e97f564809e702da93c5a105c10333ccb0a781453fce6dba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Tue, 22 Sep 2026 18:47:58 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 22 Sep 2026 18:48:03 GMT
ENV CHRONOGRAF_VERSION=1.11.5
# Tue, 22 Sep 2026 18:48:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 22 Sep 2026 18:48:03 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 22 Sep 2026 18:48:03 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 22 Sep 2026 18:48:03 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 22 Sep 2026 18:48:03 GMT
VOLUME [/var/lib/chronograf]
# Tue, 22 Sep 2026 18:48:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:48:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:48:03 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51b47ae94c047d9e105a39ddfba2d7fc27e581c68c09e3de6468e906e8961141`  
		Last Modified: Tue, 22 Sep 2026 18:48:17 GMT  
		Size: 7.9 MB (7900816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fd2aadbe3cbaba1d6f57e9658dc8cc123c3d652500f9f7773fd13a972fcd24`  
		Last Modified: Tue, 22 Sep 2026 18:48:19 GMT  
		Size: 61.0 MB (60968964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384828d0602df9a8538e122a3eb673e02fedebdb17db403bfe24fb539472269a`  
		Last Modified: Tue, 22 Sep 2026 18:48:17 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92432dcf4276164e47b85e0246e569e41c3c3fb7c7b0f12e58b8647448b84a8`  
		Last Modified: Tue, 22 Sep 2026 18:48:17 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8254a41b36c33170d8ef43667c5d8cf211248f3c1bbb140260644bc0b8aff3f8`  
		Last Modified: Tue, 22 Sep 2026 18:48:18 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.5` - unknown; unknown

```console
$ docker pull chronograf@sha256:beed566211776d8e46848de80227979a5f363921e0c2d2396c47978d8d236520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2895126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7becdc490fd7164f522961b5c7571523b5d5ceca57db7d9a6063ecf98355b9f6`

```dockerfile
```

-	Layers:
	-	`sha256:bfa2b17e646dcc89f295280ee488eb8b7b25a461072f0106898d26bdb718d098`  
		Last Modified: Tue, 22 Sep 2026 18:48:17 GMT  
		Size: 2.9 MB (2879041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9869b1ee17a87e8fb957efb047b77473873dd1181d267fad375edb376de1d9b7`  
		Last Modified: Tue, 22 Sep 2026 18:48:17 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11.5` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:642469df9dc02ec2268601aee045dea3c238dfc33102e83d9fe23efc72818c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.8 MB (93767422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d853d7649ca5b4da4c2ad66df019bce64e5a60c62834e1b99d2a535143ee11fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Tue, 22 Sep 2026 18:45:31 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 22 Sep 2026 18:45:37 GMT
ENV CHRONOGRAF_VERSION=1.11.5
# Tue, 22 Sep 2026 18:45:37 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 22 Sep 2026 18:45:37 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 22 Sep 2026 18:45:37 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 22 Sep 2026 18:45:37 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 22 Sep 2026 18:45:37 GMT
VOLUME [/var/lib/chronograf]
# Tue, 22 Sep 2026 18:45:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:45:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:45:37 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86788e79e5183b841fc329c2207f3150370f2c9458ab557daee75eb6b70d66ce`  
		Last Modified: Tue, 22 Sep 2026 18:45:52 GMT  
		Size: 7.7 MB (7709685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c0aa77a9ef7efddb032a0a5bf8998e0cce0e7aa963e5ed232cb4fb9d96d2ac`  
		Last Modified: Tue, 22 Sep 2026 18:45:53 GMT  
		Size: 57.9 MB (57909588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1ff14a3743fdffc91505275d7adf6cd9e88fefc4aadd3478332418834a672f`  
		Last Modified: Tue, 22 Sep 2026 18:45:52 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2da31bbd7babbe74954bcfd27d55dc4513ede99b76c3dd8047c4af2fb129687`  
		Last Modified: Tue, 22 Sep 2026 18:45:52 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba4d53382e73a2382498743fd081f952ab699050ea5867bb81267f5254f346f`  
		Last Modified: Tue, 22 Sep 2026 18:45:53 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.5` - unknown; unknown

```console
$ docker pull chronograf@sha256:ffffd528821bd1f55bd75d11e56cf31f789011cde6cdbbe6d78728b05c816598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df20b51b1326e9270fbf7027f5582f0baff0618449a404ba7c530ccc58d2edb1`

```dockerfile
```

-	Layers:
	-	`sha256:bd4164084af627effa31f78e0086ac499087ccf4317a3a8bad08a6ec96f50175`  
		Last Modified: Tue, 22 Sep 2026 18:45:52 GMT  
		Size: 2.9 MB (2878255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2e6b66ed7b4098ddc690bba1d2027084b908dbd3a86a4a299e441be4a2123b3`  
		Last Modified: Tue, 22 Sep 2026 18:45:52 GMT  
		Size: 16.2 KB (16191 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11.5-alpine`

```console
$ docker pull chronograf@sha256:e5df978c5b0590a543c3494a6b89ec2976c7d204243f94a2b6f39c449f57a3fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.11.5-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:5ff92461e0484536e809d4c123bb2239c1ff2b401e291ec7eb76ad21164e28df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66160627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7c26504244453a8adcabf30e3a3a6da8a31f4961ea11ebd7f566c1b9c5eaa0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:47:51 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 22 Sep 2026 18:47:51 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
ENV CHRONOGRAF_VERSION=1.11.5
# Tue, 22 Sep 2026 18:47:56 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 22 Sep 2026 18:47:56 GMT
VOLUME [/var/lib/chronograf]
# Tue, 22 Sep 2026 18:47:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:47:56 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721b3dbc726778d574440f78d681d7345e322ee039b9e8dee5408c75a4209f61`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2896334095505ad18e90c71517143758129ce213eabdc60bdd0fbd79aad01236`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 296.7 KB (296651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f23cf772b6a98ae64a050b6dabf808924339c3b74020f8a7b926f9538e18b33c`  
		Last Modified: Tue, 22 Sep 2026 18:48:10 GMT  
		Size: 62.0 MB (61989500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b30e64e2c4e4a5cf2bf1b96eb255eb101acaed9d939a415d2169b221b58fe1d`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc45c001416d64e916262251fab65fd3c68dcbf1050c0b89278dc13e2a76668`  
		Last Modified: Tue, 22 Sep 2026 18:48:09 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b281c5448f40396f6237e658353a90d4883b5c3ce8257dd4695faa19839c0a06`  
		Last Modified: Tue, 22 Sep 2026 18:48:09 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.5-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:8bc169bf72ec0a6f7e154ae9993ff36ec6f575196e39a9d1c3c7449d9c6669e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 KB (272412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3669b93a06e3e805ecea883e3abf6c0f072d9a6488a02594a0053e1aa316bc9a`

```dockerfile
```

-	Layers:
	-	`sha256:946e882fc6e31ab6c34d0b91fea3fe8e0a3610065ea015f7eece408adebe0890`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 254.6 KB (254648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d0f9d8967ff3b872b7725afc7f5d543f61912a09a38e823d61b09d4f4484838`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:e5df978c5b0590a543c3494a6b89ec2976c7d204243f94a2b6f39c449f57a3fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:5ff92461e0484536e809d4c123bb2239c1ff2b401e291ec7eb76ad21164e28df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66160627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7c26504244453a8adcabf30e3a3a6da8a31f4961ea11ebd7f566c1b9c5eaa0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:47:51 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 22 Sep 2026 18:47:51 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
ENV CHRONOGRAF_VERSION=1.11.5
# Tue, 22 Sep 2026 18:47:56 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 22 Sep 2026 18:47:56 GMT
VOLUME [/var/lib/chronograf]
# Tue, 22 Sep 2026 18:47:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:47:56 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721b3dbc726778d574440f78d681d7345e322ee039b9e8dee5408c75a4209f61`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2896334095505ad18e90c71517143758129ce213eabdc60bdd0fbd79aad01236`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 296.7 KB (296651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f23cf772b6a98ae64a050b6dabf808924339c3b74020f8a7b926f9538e18b33c`  
		Last Modified: Tue, 22 Sep 2026 18:48:10 GMT  
		Size: 62.0 MB (61989500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b30e64e2c4e4a5cf2bf1b96eb255eb101acaed9d939a415d2169b221b58fe1d`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc45c001416d64e916262251fab65fd3c68dcbf1050c0b89278dc13e2a76668`  
		Last Modified: Tue, 22 Sep 2026 18:48:09 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b281c5448f40396f6237e658353a90d4883b5c3ce8257dd4695faa19839c0a06`  
		Last Modified: Tue, 22 Sep 2026 18:48:09 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:8bc169bf72ec0a6f7e154ae9993ff36ec6f575196e39a9d1c3c7449d9c6669e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 KB (272412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3669b93a06e3e805ecea883e3abf6c0f072d9a6488a02594a0053e1aa316bc9a`

```dockerfile
```

-	Layers:
	-	`sha256:946e882fc6e31ab6c34d0b91fea3fe8e0a3610065ea015f7eece408adebe0890`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 254.6 KB (254648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d0f9d8967ff3b872b7725afc7f5d543f61912a09a38e823d61b09d4f4484838`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:d9329ae9770c57cf501cbc51f86bb38eb7f219de4c41a17c2c0cf6297ecab543
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:23c94ef75d5193875b51951edc20e3083356cec28a91c9052ce0b967e2b59ab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.1 MB (97132688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f431fa7cbbb79dd1e97f564809e702da93c5a105c10333ccb0a781453fce6dba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Tue, 22 Sep 2026 18:47:58 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 22 Sep 2026 18:48:03 GMT
ENV CHRONOGRAF_VERSION=1.11.5
# Tue, 22 Sep 2026 18:48:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 22 Sep 2026 18:48:03 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 22 Sep 2026 18:48:03 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 22 Sep 2026 18:48:03 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 22 Sep 2026 18:48:03 GMT
VOLUME [/var/lib/chronograf]
# Tue, 22 Sep 2026 18:48:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:48:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:48:03 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51b47ae94c047d9e105a39ddfba2d7fc27e581c68c09e3de6468e906e8961141`  
		Last Modified: Tue, 22 Sep 2026 18:48:17 GMT  
		Size: 7.9 MB (7900816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fd2aadbe3cbaba1d6f57e9658dc8cc123c3d652500f9f7773fd13a972fcd24`  
		Last Modified: Tue, 22 Sep 2026 18:48:19 GMT  
		Size: 61.0 MB (60968964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384828d0602df9a8538e122a3eb673e02fedebdb17db403bfe24fb539472269a`  
		Last Modified: Tue, 22 Sep 2026 18:48:17 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92432dcf4276164e47b85e0246e569e41c3c3fb7c7b0f12e58b8647448b84a8`  
		Last Modified: Tue, 22 Sep 2026 18:48:17 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8254a41b36c33170d8ef43667c5d8cf211248f3c1bbb140260644bc0b8aff3f8`  
		Last Modified: Tue, 22 Sep 2026 18:48:18 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:beed566211776d8e46848de80227979a5f363921e0c2d2396c47978d8d236520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2895126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7becdc490fd7164f522961b5c7571523b5d5ceca57db7d9a6063ecf98355b9f6`

```dockerfile
```

-	Layers:
	-	`sha256:bfa2b17e646dcc89f295280ee488eb8b7b25a461072f0106898d26bdb718d098`  
		Last Modified: Tue, 22 Sep 2026 18:48:17 GMT  
		Size: 2.9 MB (2879041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9869b1ee17a87e8fb957efb047b77473873dd1181d267fad375edb376de1d9b7`  
		Last Modified: Tue, 22 Sep 2026 18:48:17 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:642469df9dc02ec2268601aee045dea3c238dfc33102e83d9fe23efc72818c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.8 MB (93767422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d853d7649ca5b4da4c2ad66df019bce64e5a60c62834e1b99d2a535143ee11fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Tue, 22 Sep 2026 18:45:31 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 22 Sep 2026 18:45:37 GMT
ENV CHRONOGRAF_VERSION=1.11.5
# Tue, 22 Sep 2026 18:45:37 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 22 Sep 2026 18:45:37 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 22 Sep 2026 18:45:37 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 22 Sep 2026 18:45:37 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 22 Sep 2026 18:45:37 GMT
VOLUME [/var/lib/chronograf]
# Tue, 22 Sep 2026 18:45:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:45:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:45:37 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86788e79e5183b841fc329c2207f3150370f2c9458ab557daee75eb6b70d66ce`  
		Last Modified: Tue, 22 Sep 2026 18:45:52 GMT  
		Size: 7.7 MB (7709685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c0aa77a9ef7efddb032a0a5bf8998e0cce0e7aa963e5ed232cb4fb9d96d2ac`  
		Last Modified: Tue, 22 Sep 2026 18:45:53 GMT  
		Size: 57.9 MB (57909588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1ff14a3743fdffc91505275d7adf6cd9e88fefc4aadd3478332418834a672f`  
		Last Modified: Tue, 22 Sep 2026 18:45:52 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2da31bbd7babbe74954bcfd27d55dc4513ede99b76c3dd8047c4af2fb129687`  
		Last Modified: Tue, 22 Sep 2026 18:45:52 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba4d53382e73a2382498743fd081f952ab699050ea5867bb81267f5254f346f`  
		Last Modified: Tue, 22 Sep 2026 18:45:53 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:ffffd528821bd1f55bd75d11e56cf31f789011cde6cdbbe6d78728b05c816598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df20b51b1326e9270fbf7027f5582f0baff0618449a404ba7c530ccc58d2edb1`

```dockerfile
```

-	Layers:
	-	`sha256:bd4164084af627effa31f78e0086ac499087ccf4317a3a8bad08a6ec96f50175`  
		Last Modified: Tue, 22 Sep 2026 18:45:52 GMT  
		Size: 2.9 MB (2878255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2e6b66ed7b4098ddc690bba1d2027084b908dbd3a86a4a299e441be4a2123b3`  
		Last Modified: Tue, 22 Sep 2026 18:45:52 GMT  
		Size: 16.2 KB (16191 bytes)  
		MIME: application/vnd.in-toto+json
