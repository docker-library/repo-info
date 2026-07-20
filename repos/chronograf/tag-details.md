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
$ docker pull chronograf@sha256:0df4b54d28c2cb2bd23670f13f32404f01ff00dc4eca6eb94347a86ab686b39e
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
$ docker pull chronograf@sha256:97c42078f595ca496a0612849bdec9fce48a4a33ecbb54e92aec393d00ab7dcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85008351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d5b69df0b2773e589a24008b4bfb4c3ea6c88bf74986c9a63b9519ed7fcc2d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:58 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 14 Jul 2026 01:44:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 14 Jul 2026 01:44:03 GMT
VOLUME [/var/lib/chronograf]
# Tue, 14 Jul 2026 01:44:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:44:03 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a615d6294409ab19835151af13f25119734ed462d3878326c53cd91cffc6003c`  
		Last Modified: Tue, 14 Jul 2026 01:44:15 GMT  
		Size: 7.9 MB (7883284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71f6de8497ebd162f38e31899d2a7147c52919da0d798c5cfb4c524675d3d3d0`  
		Last Modified: Tue, 14 Jul 2026 01:44:16 GMT  
		Size: 48.9 MB (48867955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d4525b805c704582e0439e4b5d7a3676718d80d415c7e15494e3bb824412b4`  
		Last Modified: Tue, 14 Jul 2026 01:44:14 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abeb387cce431da4a379b3e006d64c721346e75e012b3d13a617869c3f6ba4f5`  
		Last Modified: Tue, 14 Jul 2026 01:44:14 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c5fd46d8502fef2bab3c61eae47ca6fb0d5536d00268a7d3ec40276aa628a3e`  
		Last Modified: Tue, 14 Jul 2026 01:44:15 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:0dfe6d0ead4a595b0040fdf6e5f6b70aeb1aa205541a8478075aff98418503f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2871275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46531b9e3a3068658bc78a3e8f0b47a307d775bf0d67314088eee56e73396390`

```dockerfile
```

-	Layers:
	-	`sha256:d6932a50a98e36d2e5b78d5fda931342b604c707c619cc736b4d5e8c2b92c9df`  
		Last Modified: Tue, 14 Jul 2026 01:44:14 GMT  
		Size: 2.9 MB (2855496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbebd1d49a19db847c752b077c8a6808fb95e24a8c10668aaf02599c58fc53ff`  
		Last Modified: Tue, 14 Jul 2026 01:44:14 GMT  
		Size: 15.8 KB (15779 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:3ce4024e5651197cbb50651e46d52ceb4de4b0620a43691aca690ace46015694
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76798891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11b302f716af552eb4294128c9c17499653b487c3114709aca98b8db2eb6ddf7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:31:53 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 02:32:00 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 14 Jul 2026 02:32:00 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 02:32:00 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 14 Jul 2026 02:32:00 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 14 Jul 2026 02:32:00 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 14 Jul 2026 02:32:00 GMT
VOLUME [/var/lib/chronograf]
# Tue, 14 Jul 2026 02:32:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:32:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:32:00 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c220e74ec4205f31c08fea18ac2ed6c1c8f92f03cd7c471b161a479c7677198a`  
		Last Modified: Tue, 14 Jul 2026 02:32:11 GMT  
		Size: 6.5 MB (6514508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172d06f98930e0f5c44c3ef76c49238f5360aa7a6b6e914cdcb7d106599560d1`  
		Last Modified: Tue, 14 Jul 2026 02:32:12 GMT  
		Size: 46.3 MB (46320131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a250f81c56e5980f41c9d922e209467b7cc0800f338acf7e3bbde9a0be7416a`  
		Last Modified: Tue, 14 Jul 2026 02:32:10 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808e2f6fe7f47c519d0b4164a2268430a7afad488671548dcae6d894355e87e5`  
		Last Modified: Tue, 14 Jul 2026 02:32:10 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f18f7c70daa0d6d661645b886cbb79ec6980ea079aa198be1bb3facee3cf1f4`  
		Last Modified: Tue, 14 Jul 2026 02:32:12 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:aba29470ba5b39dc720e00284e25dc8dceb1349851d48b0cb0308797f94ddd35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2873641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a751fbcd8c6843c6aa48af8cf1bb63e50b94584f577a9b6c3ea12a3cac850d90`

```dockerfile
```

-	Layers:
	-	`sha256:af5a9a8c00e2803c700bbcff0196b3d5562565d5ef14bd548a5670ecdd5ca0ae`  
		Last Modified: Tue, 14 Jul 2026 02:32:11 GMT  
		Size: 2.9 MB (2857785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c183a88bdf5a41769f152aaf1dd7765666554cb8906861bc1deea4e069f40d92`  
		Last Modified: Tue, 14 Jul 2026 02:32:10 GMT  
		Size: 15.9 KB (15856 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:22e0d92610782bc41b2ab1fce8031ae6843e07597ed878023812c35b4676548a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81851019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cfdd319e1a374242c432b1bd5a05e08a0cfce491ac3b7e7e5ab4f32ac9165c3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:47:10 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 01:47:15 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 14 Jul 2026 01:47:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:47:15 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 14 Jul 2026 01:47:15 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 14 Jul 2026 01:47:15 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 14 Jul 2026 01:47:15 GMT
VOLUME [/var/lib/chronograf]
# Tue, 14 Jul 2026 01:47:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:47:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:47:15 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ac4f3e29934465da8ae6cb1bf73dbc64da94a2a5d208766dfc5aef751891d0`  
		Last Modified: Tue, 14 Jul 2026 01:47:27 GMT  
		Size: 7.7 MB (7699815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4efcc1bd46826c1f48794a580ce4f509272982c2e9dd310f404680f324cb33f7`  
		Last Modified: Tue, 14 Jul 2026 01:47:28 GMT  
		Size: 46.0 MB (46009493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7852f80601e61146873b7fba5ed70caed62ee4632f4ce7106851ad7371b249a6`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417c2e19ae90c8d02d21959a63913d451b6633e778565fecfe3e3a83b815636f`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e0923e6fa292ddf973ed134c27e29b606c7e4fccac6ed1b0328653027bb29d`  
		Last Modified: Tue, 14 Jul 2026 01:47:28 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:f5221e4f4135d3ea41d8875feec9c21d95bb71f70736f3a851e2bf9252680a61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2871631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2350aa7eabb10eb555ecb97d4a50eafbd01462a0e9328772e3ff50cf5f42190`

```dockerfile
```

-	Layers:
	-	`sha256:9a33816663109c10fa3422085050ee01748a01b38b978a28c9fe8d26d852a424`  
		Last Modified: Tue, 14 Jul 2026 01:47:27 GMT  
		Size: 2.9 MB (2855757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37631ea2a2165a52cc9b39a7331915e212646f7d838470e18b83ff9d4fee6ccd`  
		Last Modified: Tue, 14 Jul 2026 01:47:27 GMT  
		Size: 15.9 KB (15874 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.10-alpine`

```console
$ docker pull chronograf@sha256:73b3d2bc114bf4289b5904ad9bbd4c29e73f3e1a80aa848aadb1387794157212
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.10-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:8af678009382c9eb2196c9f15fec317b05124744288da01b970285e73de53ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33303647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae1a3392dfa0ce081c1ca0385ca8ac73790bbe17557ea061c292b81ca184eede`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 13 Jul 2026 17:38:18 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 13 Jul 2026 17:38:36 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Mon, 13 Jul 2026 17:38:39 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Mon, 13 Jul 2026 17:38:39 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Mon, 13 Jul 2026 17:38:39 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Mon, 13 Jul 2026 17:38:39 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Mon, 13 Jul 2026 17:38:39 GMT
EXPOSE map[8888/tcp:{}]
# Mon, 13 Jul 2026 17:38:39 GMT
VOLUME [/var/lib/chronograf]
# Mon, 13 Jul 2026 17:38:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 13 Jul 2026 17:38:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 13 Jul 2026 17:38:40 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58989b487182b76c05cea7d9bffedf7c35276a48c6296bffa183acf6cd3152f`  
		Last Modified: Mon, 13 Jul 2026 17:38:29 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca9bc28aada7b437968464da2756e94a427a2ffd72bcc6b7063de68a3e008fe`  
		Last Modified: Mon, 13 Jul 2026 17:38:48 GMT  
		Size: 294.3 KB (294329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a844fba4d95408670cf45e177e39057ffdf349a4d94e44f07675b4d15ac0941`  
		Last Modified: Mon, 13 Jul 2026 17:38:49 GMT  
		Size: 29.1 MB (29138204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d7bf3d0a2c87eb58d672daa342af7784dfe9c228961e54a59a70e80d3c2a2c9`  
		Last Modified: Mon, 13 Jul 2026 17:38:48 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e63b1b5ebae3a420a934c656c0565b8c3b53876e0bc06c5a9c223ae2d3505305`  
		Last Modified: Mon, 13 Jul 2026 17:38:48 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0c2d3de07d7e3c1b6d9944346519211ad6e1ce52202f7e22f6c8941283b580f`  
		Last Modified: Mon, 13 Jul 2026 17:38:50 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:054fb7cee2ff8389296334102ece866b038c469fca3b087d39d3b1ea8d1c884b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 KB (252582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13c210eba28015419b6dd09824937ecc579dd40b2f8213c821557766e2d5310b`

```dockerfile
```

-	Layers:
	-	`sha256:94230b24d203c82e3c186bab77991337c050ca4eb57a30414678cbcc2d7d6c04`  
		Last Modified: Mon, 13 Jul 2026 17:38:49 GMT  
		Size: 235.1 KB (235077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13eaa55f86a0af0eed50fdd7d319db05534cfab16480d13abf5574bc32594833`  
		Last Modified: Mon, 13 Jul 2026 17:38:48 GMT  
		Size: 17.5 KB (17505 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.10.9`

```console
$ docker pull chronograf@sha256:0df4b54d28c2cb2bd23670f13f32404f01ff00dc4eca6eb94347a86ab686b39e
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
$ docker pull chronograf@sha256:97c42078f595ca496a0612849bdec9fce48a4a33ecbb54e92aec393d00ab7dcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85008351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d5b69df0b2773e589a24008b4bfb4c3ea6c88bf74986c9a63b9519ed7fcc2d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:58 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 14 Jul 2026 01:44:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 14 Jul 2026 01:44:03 GMT
VOLUME [/var/lib/chronograf]
# Tue, 14 Jul 2026 01:44:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:44:03 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a615d6294409ab19835151af13f25119734ed462d3878326c53cd91cffc6003c`  
		Last Modified: Tue, 14 Jul 2026 01:44:15 GMT  
		Size: 7.9 MB (7883284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71f6de8497ebd162f38e31899d2a7147c52919da0d798c5cfb4c524675d3d3d0`  
		Last Modified: Tue, 14 Jul 2026 01:44:16 GMT  
		Size: 48.9 MB (48867955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d4525b805c704582e0439e4b5d7a3676718d80d415c7e15494e3bb824412b4`  
		Last Modified: Tue, 14 Jul 2026 01:44:14 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abeb387cce431da4a379b3e006d64c721346e75e012b3d13a617869c3f6ba4f5`  
		Last Modified: Tue, 14 Jul 2026 01:44:14 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c5fd46d8502fef2bab3c61eae47ca6fb0d5536d00268a7d3ec40276aa628a3e`  
		Last Modified: Tue, 14 Jul 2026 01:44:15 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:0dfe6d0ead4a595b0040fdf6e5f6b70aeb1aa205541a8478075aff98418503f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2871275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46531b9e3a3068658bc78a3e8f0b47a307d775bf0d67314088eee56e73396390`

```dockerfile
```

-	Layers:
	-	`sha256:d6932a50a98e36d2e5b78d5fda931342b604c707c619cc736b4d5e8c2b92c9df`  
		Last Modified: Tue, 14 Jul 2026 01:44:14 GMT  
		Size: 2.9 MB (2855496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbebd1d49a19db847c752b077c8a6808fb95e24a8c10668aaf02599c58fc53ff`  
		Last Modified: Tue, 14 Jul 2026 01:44:14 GMT  
		Size: 15.8 KB (15779 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10.9` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:3ce4024e5651197cbb50651e46d52ceb4de4b0620a43691aca690ace46015694
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76798891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11b302f716af552eb4294128c9c17499653b487c3114709aca98b8db2eb6ddf7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:31:53 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 02:32:00 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 14 Jul 2026 02:32:00 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 02:32:00 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 14 Jul 2026 02:32:00 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 14 Jul 2026 02:32:00 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 14 Jul 2026 02:32:00 GMT
VOLUME [/var/lib/chronograf]
# Tue, 14 Jul 2026 02:32:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:32:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:32:00 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c220e74ec4205f31c08fea18ac2ed6c1c8f92f03cd7c471b161a479c7677198a`  
		Last Modified: Tue, 14 Jul 2026 02:32:11 GMT  
		Size: 6.5 MB (6514508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172d06f98930e0f5c44c3ef76c49238f5360aa7a6b6e914cdcb7d106599560d1`  
		Last Modified: Tue, 14 Jul 2026 02:32:12 GMT  
		Size: 46.3 MB (46320131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a250f81c56e5980f41c9d922e209467b7cc0800f338acf7e3bbde9a0be7416a`  
		Last Modified: Tue, 14 Jul 2026 02:32:10 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808e2f6fe7f47c519d0b4164a2268430a7afad488671548dcae6d894355e87e5`  
		Last Modified: Tue, 14 Jul 2026 02:32:10 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f18f7c70daa0d6d661645b886cbb79ec6980ea079aa198be1bb3facee3cf1f4`  
		Last Modified: Tue, 14 Jul 2026 02:32:12 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:aba29470ba5b39dc720e00284e25dc8dceb1349851d48b0cb0308797f94ddd35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2873641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a751fbcd8c6843c6aa48af8cf1bb63e50b94584f577a9b6c3ea12a3cac850d90`

```dockerfile
```

-	Layers:
	-	`sha256:af5a9a8c00e2803c700bbcff0196b3d5562565d5ef14bd548a5670ecdd5ca0ae`  
		Last Modified: Tue, 14 Jul 2026 02:32:11 GMT  
		Size: 2.9 MB (2857785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c183a88bdf5a41769f152aaf1dd7765666554cb8906861bc1deea4e069f40d92`  
		Last Modified: Tue, 14 Jul 2026 02:32:10 GMT  
		Size: 15.9 KB (15856 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10.9` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:22e0d92610782bc41b2ab1fce8031ae6843e07597ed878023812c35b4676548a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81851019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cfdd319e1a374242c432b1bd5a05e08a0cfce491ac3b7e7e5ab4f32ac9165c3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:47:10 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 01:47:15 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 14 Jul 2026 01:47:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:47:15 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 14 Jul 2026 01:47:15 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 14 Jul 2026 01:47:15 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 14 Jul 2026 01:47:15 GMT
VOLUME [/var/lib/chronograf]
# Tue, 14 Jul 2026 01:47:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:47:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:47:15 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ac4f3e29934465da8ae6cb1bf73dbc64da94a2a5d208766dfc5aef751891d0`  
		Last Modified: Tue, 14 Jul 2026 01:47:27 GMT  
		Size: 7.7 MB (7699815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4efcc1bd46826c1f48794a580ce4f509272982c2e9dd310f404680f324cb33f7`  
		Last Modified: Tue, 14 Jul 2026 01:47:28 GMT  
		Size: 46.0 MB (46009493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7852f80601e61146873b7fba5ed70caed62ee4632f4ce7106851ad7371b249a6`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417c2e19ae90c8d02d21959a63913d451b6633e778565fecfe3e3a83b815636f`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e0923e6fa292ddf973ed134c27e29b606c7e4fccac6ed1b0328653027bb29d`  
		Last Modified: Tue, 14 Jul 2026 01:47:28 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:f5221e4f4135d3ea41d8875feec9c21d95bb71f70736f3a851e2bf9252680a61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2871631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2350aa7eabb10eb555ecb97d4a50eafbd01462a0e9328772e3ff50cf5f42190`

```dockerfile
```

-	Layers:
	-	`sha256:9a33816663109c10fa3422085050ee01748a01b38b978a28c9fe8d26d852a424`  
		Last Modified: Tue, 14 Jul 2026 01:47:27 GMT  
		Size: 2.9 MB (2855757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37631ea2a2165a52cc9b39a7331915e212646f7d838470e18b83ff9d4fee6ccd`  
		Last Modified: Tue, 14 Jul 2026 01:47:27 GMT  
		Size: 15.9 KB (15874 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.10.9-alpine`

```console
$ docker pull chronograf@sha256:73b3d2bc114bf4289b5904ad9bbd4c29e73f3e1a80aa848aadb1387794157212
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.10.9-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:8af678009382c9eb2196c9f15fec317b05124744288da01b970285e73de53ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33303647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae1a3392dfa0ce081c1ca0385ca8ac73790bbe17557ea061c292b81ca184eede`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 13 Jul 2026 17:38:18 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 13 Jul 2026 17:38:36 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Mon, 13 Jul 2026 17:38:39 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Mon, 13 Jul 2026 17:38:39 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Mon, 13 Jul 2026 17:38:39 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Mon, 13 Jul 2026 17:38:39 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Mon, 13 Jul 2026 17:38:39 GMT
EXPOSE map[8888/tcp:{}]
# Mon, 13 Jul 2026 17:38:39 GMT
VOLUME [/var/lib/chronograf]
# Mon, 13 Jul 2026 17:38:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 13 Jul 2026 17:38:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 13 Jul 2026 17:38:40 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58989b487182b76c05cea7d9bffedf7c35276a48c6296bffa183acf6cd3152f`  
		Last Modified: Mon, 13 Jul 2026 17:38:29 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca9bc28aada7b437968464da2756e94a427a2ffd72bcc6b7063de68a3e008fe`  
		Last Modified: Mon, 13 Jul 2026 17:38:48 GMT  
		Size: 294.3 KB (294329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a844fba4d95408670cf45e177e39057ffdf349a4d94e44f07675b4d15ac0941`  
		Last Modified: Mon, 13 Jul 2026 17:38:49 GMT  
		Size: 29.1 MB (29138204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d7bf3d0a2c87eb58d672daa342af7784dfe9c228961e54a59a70e80d3c2a2c9`  
		Last Modified: Mon, 13 Jul 2026 17:38:48 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e63b1b5ebae3a420a934c656c0565b8c3b53876e0bc06c5a9c223ae2d3505305`  
		Last Modified: Mon, 13 Jul 2026 17:38:48 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0c2d3de07d7e3c1b6d9944346519211ad6e1ce52202f7e22f6c8941283b580f`  
		Last Modified: Mon, 13 Jul 2026 17:38:50 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:054fb7cee2ff8389296334102ece866b038c469fca3b087d39d3b1ea8d1c884b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 KB (252582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13c210eba28015419b6dd09824937ecc579dd40b2f8213c821557766e2d5310b`

```dockerfile
```

-	Layers:
	-	`sha256:94230b24d203c82e3c186bab77991337c050ca4eb57a30414678cbcc2d7d6c04`  
		Last Modified: Mon, 13 Jul 2026 17:38:49 GMT  
		Size: 235.1 KB (235077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13eaa55f86a0af0eed50fdd7d319db05534cfab16480d13abf5574bc32594833`  
		Last Modified: Mon, 13 Jul 2026 17:38:48 GMT  
		Size: 17.5 KB (17505 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11`

```console
$ docker pull chronograf@sha256:3a90f3658d62dcc0462dd8e1b925ca920a224a4bd509886036fef12b06ac1298
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11` - linux; amd64

```console
$ docker pull chronograf@sha256:76834b984d78b7c7510fe458c698e56ca9ce5040f78b0c6ff930fc53410f9086
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96337293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e498c911cb39ede88c83942091d936210cd9f4f92875a6f6f9991c7afa48e85`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:58 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Tue, 14 Jul 2026 01:44:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 14 Jul 2026 01:44:03 GMT
VOLUME [/var/lib/chronograf]
# Tue, 14 Jul 2026 01:44:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:44:03 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb7164261e72f39c972719171bd6a1099601ef877ba7c7be3cbd326db44e31d`  
		Last Modified: Tue, 14 Jul 2026 01:44:18 GMT  
		Size: 7.9 MB (7883311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5914fb6318c0a6e2b80794ab8d2fd89aed201a9ea38927b8a01f14e840dc6edf`  
		Last Modified: Tue, 14 Jul 2026 01:44:19 GMT  
		Size: 60.2 MB (60196866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2748683ee668b95119d9719837f7b5a4053c250f7e5f262b94f50df7ea2bcafb`  
		Last Modified: Tue, 14 Jul 2026 01:44:17 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1750a0c7e8025a12964111a62f4768d80065ae9eea7ca8d7088b32441fea090`  
		Last Modified: Tue, 14 Jul 2026 01:44:17 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e272e5c878618418e805e39843e5ff18c6470c1ed82beb6274aedf1353d5b921`  
		Last Modified: Tue, 14 Jul 2026 01:44:18 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:98cf64da1897f10d4a48100cb10db72c5fc0e6bff48c424ce89bf8486c69cc1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8fc15e63a47c4fd7909e14165ab638b31989f21cfce1460b9ab4bc06a7c56e`

```dockerfile
```

-	Layers:
	-	`sha256:c3b1c804523968c666abb7655a2b85cbeeed1797f4f470682b36ecefae933a28`  
		Last Modified: Tue, 14 Jul 2026 01:44:17 GMT  
		Size: 2.9 MB (2873774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc5de58d5f70edf24ed39f44be3b0f4c8dbd3ab396f049aaf25a06fe590c3ad4`  
		Last Modified: Tue, 14 Jul 2026 01:44:17 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:8c42014d262f8cca0879d903acb1d11c99ebb673620d98bb61c632422ee8080c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93052018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc1b852f573d90d2a4ca3648910eabe32823fa2760a05389c28e9c68abdf32e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:47:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Tue, 14 Jul 2026 01:47:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 14 Jul 2026 01:47:12 GMT
VOLUME [/var/lib/chronograf]
# Tue, 14 Jul 2026 01:47:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:47:12 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:574d254d2f32853d66b676f4a3c89d35655acc293b780d081bc56eda622198f6`  
		Last Modified: Tue, 14 Jul 2026 01:47:25 GMT  
		Size: 7.7 MB (7699834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:494c5ec699cd0cdc85a245013f1fdb2db1ba65385896fde16606f7632b668171`  
		Last Modified: Tue, 14 Jul 2026 01:47:27 GMT  
		Size: 57.2 MB (57210457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:594ebb7e2a394f4338f375b309381ac789c2a406fd064d8311b72ba201a180b8`  
		Last Modified: Tue, 14 Jul 2026 01:47:25 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ea2416bdb9f1a53b50fd31ce19b1ba1c0904fe1337dadef7679d13c802ff81`  
		Last Modified: Tue, 14 Jul 2026 01:47:25 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fab15242d6815ef56bf3a7091483d167f5e81d7f4d9a634d54a54831e245171`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:fe20408e1f94e0612640b9ca4136f672105eed6d0b352b004d671ca4f3488ed3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de81ea03bfa47c4293ac626ec2ae94b6a4137974e17e33bb08ff5856f4af503d`

```dockerfile
```

-	Layers:
	-	`sha256:d6159231959434c1e2bad79434df6b0e5904d885fa7d8acc335b1344d1626c43`  
		Last Modified: Tue, 14 Jul 2026 01:47:25 GMT  
		Size: 2.9 MB (2872988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:deb30901d6e09b87d2fffa76590d8e8120c9312f70d0731081211512006efc6c`  
		Last Modified: Tue, 14 Jul 2026 01:47:25 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11-alpine`

```console
$ docker pull chronograf@sha256:ee90c06ab74ccc8ccd8a2a5caf100a948ea59038aa1f8a464adcc0b7f96b8531
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.11-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:aa186d2544c34a424fd533a284450fbe44976d35ea044fcdb6967c1652a07dfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62330118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eae8645ee84807e28be099dec5cf7ea67ff34a99f8e2be52981c4dbf9d89a51a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 13 Jul 2026 17:37:50 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 13 Jul 2026 17:39:03 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Mon, 13 Jul 2026 17:39:07 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Mon, 13 Jul 2026 17:39:07 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Mon, 13 Jul 2026 17:39:07 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Mon, 13 Jul 2026 17:39:07 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Mon, 13 Jul 2026 17:39:07 GMT
EXPOSE map[8888/tcp:{}]
# Mon, 13 Jul 2026 17:39:07 GMT
VOLUME [/var/lib/chronograf]
# Mon, 13 Jul 2026 17:39:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 13 Jul 2026 17:39:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 13 Jul 2026 17:39:07 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:609126f4ac46192e806b289ac04726dfd0c5869c1803bd267c0ebd9a4e790591`  
		Last Modified: Mon, 13 Jul 2026 17:38:00 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8188195ca7657fe97d0c436d34a50f4209e60e5fd22fd7b57cb87d5431041f8d`  
		Last Modified: Mon, 13 Jul 2026 17:39:19 GMT  
		Size: 294.3 KB (294337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a3d8452138da30733bda26d6b0ba0a5a998647ab8ca248b0a7866b43006af9`  
		Last Modified: Mon, 13 Jul 2026 17:39:21 GMT  
		Size: 58.2 MB (58164657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25e35df59db815156f57119ba2c4d223d3a032b959a698af95273fafcbf75f3`  
		Last Modified: Mon, 13 Jul 2026 17:39:19 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:140cb0dd8760d164bd0bc1b93c702d78b3dfa3dc3474eb8cc34fac7d913165ea`  
		Last Modified: Mon, 13 Jul 2026 17:39:19 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1998bb798143ddd9353757810cd8808b37b1a4696e5b7f595441a357e76ce8`  
		Last Modified: Mon, 13 Jul 2026 17:39:20 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:5622fe23042bf8483e5ffc07475aad3d688bfd07d8bd07c0af95dbab939cffd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.1 KB (271119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fa388f001babc63f89585a0a3a900f0ebe2c50a17316d8fd2ef60314b6586dc`

```dockerfile
```

-	Layers:
	-	`sha256:bf8caccabe0a8d134eefb49ae780fef58c10609197b2fb351fec9b8152ccc347`  
		Last Modified: Mon, 13 Jul 2026 17:39:19 GMT  
		Size: 253.4 KB (253355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f67712f49437d9f9ddd1008260f17f8830e67848577f775c34464b1ae2f73a1a`  
		Last Modified: Mon, 13 Jul 2026 17:39:18 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11.4`

```console
$ docker pull chronograf@sha256:3a90f3658d62dcc0462dd8e1b925ca920a224a4bd509886036fef12b06ac1298
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11.4` - linux; amd64

```console
$ docker pull chronograf@sha256:76834b984d78b7c7510fe458c698e56ca9ce5040f78b0c6ff930fc53410f9086
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96337293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e498c911cb39ede88c83942091d936210cd9f4f92875a6f6f9991c7afa48e85`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:58 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Tue, 14 Jul 2026 01:44:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 14 Jul 2026 01:44:03 GMT
VOLUME [/var/lib/chronograf]
# Tue, 14 Jul 2026 01:44:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:44:03 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb7164261e72f39c972719171bd6a1099601ef877ba7c7be3cbd326db44e31d`  
		Last Modified: Tue, 14 Jul 2026 01:44:18 GMT  
		Size: 7.9 MB (7883311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5914fb6318c0a6e2b80794ab8d2fd89aed201a9ea38927b8a01f14e840dc6edf`  
		Last Modified: Tue, 14 Jul 2026 01:44:19 GMT  
		Size: 60.2 MB (60196866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2748683ee668b95119d9719837f7b5a4053c250f7e5f262b94f50df7ea2bcafb`  
		Last Modified: Tue, 14 Jul 2026 01:44:17 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1750a0c7e8025a12964111a62f4768d80065ae9eea7ca8d7088b32441fea090`  
		Last Modified: Tue, 14 Jul 2026 01:44:17 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e272e5c878618418e805e39843e5ff18c6470c1ed82beb6274aedf1353d5b921`  
		Last Modified: Tue, 14 Jul 2026 01:44:18 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.4` - unknown; unknown

```console
$ docker pull chronograf@sha256:98cf64da1897f10d4a48100cb10db72c5fc0e6bff48c424ce89bf8486c69cc1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8fc15e63a47c4fd7909e14165ab638b31989f21cfce1460b9ab4bc06a7c56e`

```dockerfile
```

-	Layers:
	-	`sha256:c3b1c804523968c666abb7655a2b85cbeeed1797f4f470682b36ecefae933a28`  
		Last Modified: Tue, 14 Jul 2026 01:44:17 GMT  
		Size: 2.9 MB (2873774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc5de58d5f70edf24ed39f44be3b0f4c8dbd3ab396f049aaf25a06fe590c3ad4`  
		Last Modified: Tue, 14 Jul 2026 01:44:17 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11.4` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:8c42014d262f8cca0879d903acb1d11c99ebb673620d98bb61c632422ee8080c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93052018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc1b852f573d90d2a4ca3648910eabe32823fa2760a05389c28e9c68abdf32e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:47:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Tue, 14 Jul 2026 01:47:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 14 Jul 2026 01:47:12 GMT
VOLUME [/var/lib/chronograf]
# Tue, 14 Jul 2026 01:47:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:47:12 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:574d254d2f32853d66b676f4a3c89d35655acc293b780d081bc56eda622198f6`  
		Last Modified: Tue, 14 Jul 2026 01:47:25 GMT  
		Size: 7.7 MB (7699834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:494c5ec699cd0cdc85a245013f1fdb2db1ba65385896fde16606f7632b668171`  
		Last Modified: Tue, 14 Jul 2026 01:47:27 GMT  
		Size: 57.2 MB (57210457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:594ebb7e2a394f4338f375b309381ac789c2a406fd064d8311b72ba201a180b8`  
		Last Modified: Tue, 14 Jul 2026 01:47:25 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ea2416bdb9f1a53b50fd31ce19b1ba1c0904fe1337dadef7679d13c802ff81`  
		Last Modified: Tue, 14 Jul 2026 01:47:25 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fab15242d6815ef56bf3a7091483d167f5e81d7f4d9a634d54a54831e245171`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.4` - unknown; unknown

```console
$ docker pull chronograf@sha256:fe20408e1f94e0612640b9ca4136f672105eed6d0b352b004d671ca4f3488ed3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de81ea03bfa47c4293ac626ec2ae94b6a4137974e17e33bb08ff5856f4af503d`

```dockerfile
```

-	Layers:
	-	`sha256:d6159231959434c1e2bad79434df6b0e5904d885fa7d8acc335b1344d1626c43`  
		Last Modified: Tue, 14 Jul 2026 01:47:25 GMT  
		Size: 2.9 MB (2872988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:deb30901d6e09b87d2fffa76590d8e8120c9312f70d0731081211512006efc6c`  
		Last Modified: Tue, 14 Jul 2026 01:47:25 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11.4-alpine`

```console
$ docker pull chronograf@sha256:ee90c06ab74ccc8ccd8a2a5caf100a948ea59038aa1f8a464adcc0b7f96b8531
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.11.4-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:aa186d2544c34a424fd533a284450fbe44976d35ea044fcdb6967c1652a07dfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62330118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eae8645ee84807e28be099dec5cf7ea67ff34a99f8e2be52981c4dbf9d89a51a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 13 Jul 2026 17:37:50 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 13 Jul 2026 17:39:03 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Mon, 13 Jul 2026 17:39:07 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Mon, 13 Jul 2026 17:39:07 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Mon, 13 Jul 2026 17:39:07 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Mon, 13 Jul 2026 17:39:07 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Mon, 13 Jul 2026 17:39:07 GMT
EXPOSE map[8888/tcp:{}]
# Mon, 13 Jul 2026 17:39:07 GMT
VOLUME [/var/lib/chronograf]
# Mon, 13 Jul 2026 17:39:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 13 Jul 2026 17:39:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 13 Jul 2026 17:39:07 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:609126f4ac46192e806b289ac04726dfd0c5869c1803bd267c0ebd9a4e790591`  
		Last Modified: Mon, 13 Jul 2026 17:38:00 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8188195ca7657fe97d0c436d34a50f4209e60e5fd22fd7b57cb87d5431041f8d`  
		Last Modified: Mon, 13 Jul 2026 17:39:19 GMT  
		Size: 294.3 KB (294337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a3d8452138da30733bda26d6b0ba0a5a998647ab8ca248b0a7866b43006af9`  
		Last Modified: Mon, 13 Jul 2026 17:39:21 GMT  
		Size: 58.2 MB (58164657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25e35df59db815156f57119ba2c4d223d3a032b959a698af95273fafcbf75f3`  
		Last Modified: Mon, 13 Jul 2026 17:39:19 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:140cb0dd8760d164bd0bc1b93c702d78b3dfa3dc3474eb8cc34fac7d913165ea`  
		Last Modified: Mon, 13 Jul 2026 17:39:19 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1998bb798143ddd9353757810cd8808b37b1a4696e5b7f595441a357e76ce8`  
		Last Modified: Mon, 13 Jul 2026 17:39:20 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.4-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:5622fe23042bf8483e5ffc07475aad3d688bfd07d8bd07c0af95dbab939cffd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.1 KB (271119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fa388f001babc63f89585a0a3a900f0ebe2c50a17316d8fd2ef60314b6586dc`

```dockerfile
```

-	Layers:
	-	`sha256:bf8caccabe0a8d134eefb49ae780fef58c10609197b2fb351fec9b8152ccc347`  
		Last Modified: Mon, 13 Jul 2026 17:39:19 GMT  
		Size: 253.4 KB (253355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f67712f49437d9f9ddd1008260f17f8830e67848577f775c34464b1ae2f73a1a`  
		Last Modified: Mon, 13 Jul 2026 17:39:18 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:ee90c06ab74ccc8ccd8a2a5caf100a948ea59038aa1f8a464adcc0b7f96b8531
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:aa186d2544c34a424fd533a284450fbe44976d35ea044fcdb6967c1652a07dfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62330118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eae8645ee84807e28be099dec5cf7ea67ff34a99f8e2be52981c4dbf9d89a51a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 13 Jul 2026 17:37:50 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 13 Jul 2026 17:39:03 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Mon, 13 Jul 2026 17:39:07 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Mon, 13 Jul 2026 17:39:07 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Mon, 13 Jul 2026 17:39:07 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Mon, 13 Jul 2026 17:39:07 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Mon, 13 Jul 2026 17:39:07 GMT
EXPOSE map[8888/tcp:{}]
# Mon, 13 Jul 2026 17:39:07 GMT
VOLUME [/var/lib/chronograf]
# Mon, 13 Jul 2026 17:39:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 13 Jul 2026 17:39:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 13 Jul 2026 17:39:07 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:609126f4ac46192e806b289ac04726dfd0c5869c1803bd267c0ebd9a4e790591`  
		Last Modified: Mon, 13 Jul 2026 17:38:00 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8188195ca7657fe97d0c436d34a50f4209e60e5fd22fd7b57cb87d5431041f8d`  
		Last Modified: Mon, 13 Jul 2026 17:39:19 GMT  
		Size: 294.3 KB (294337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a3d8452138da30733bda26d6b0ba0a5a998647ab8ca248b0a7866b43006af9`  
		Last Modified: Mon, 13 Jul 2026 17:39:21 GMT  
		Size: 58.2 MB (58164657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25e35df59db815156f57119ba2c4d223d3a032b959a698af95273fafcbf75f3`  
		Last Modified: Mon, 13 Jul 2026 17:39:19 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:140cb0dd8760d164bd0bc1b93c702d78b3dfa3dc3474eb8cc34fac7d913165ea`  
		Last Modified: Mon, 13 Jul 2026 17:39:19 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1998bb798143ddd9353757810cd8808b37b1a4696e5b7f595441a357e76ce8`  
		Last Modified: Mon, 13 Jul 2026 17:39:20 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:5622fe23042bf8483e5ffc07475aad3d688bfd07d8bd07c0af95dbab939cffd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.1 KB (271119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fa388f001babc63f89585a0a3a900f0ebe2c50a17316d8fd2ef60314b6586dc`

```dockerfile
```

-	Layers:
	-	`sha256:bf8caccabe0a8d134eefb49ae780fef58c10609197b2fb351fec9b8152ccc347`  
		Last Modified: Mon, 13 Jul 2026 17:39:19 GMT  
		Size: 253.4 KB (253355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f67712f49437d9f9ddd1008260f17f8830e67848577f775c34464b1ae2f73a1a`  
		Last Modified: Mon, 13 Jul 2026 17:39:18 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:3a90f3658d62dcc0462dd8e1b925ca920a224a4bd509886036fef12b06ac1298
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:76834b984d78b7c7510fe458c698e56ca9ce5040f78b0c6ff930fc53410f9086
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96337293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e498c911cb39ede88c83942091d936210cd9f4f92875a6f6f9991c7afa48e85`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:58 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Tue, 14 Jul 2026 01:44:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 14 Jul 2026 01:44:03 GMT
VOLUME [/var/lib/chronograf]
# Tue, 14 Jul 2026 01:44:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:44:03 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb7164261e72f39c972719171bd6a1099601ef877ba7c7be3cbd326db44e31d`  
		Last Modified: Tue, 14 Jul 2026 01:44:18 GMT  
		Size: 7.9 MB (7883311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5914fb6318c0a6e2b80794ab8d2fd89aed201a9ea38927b8a01f14e840dc6edf`  
		Last Modified: Tue, 14 Jul 2026 01:44:19 GMT  
		Size: 60.2 MB (60196866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2748683ee668b95119d9719837f7b5a4053c250f7e5f262b94f50df7ea2bcafb`  
		Last Modified: Tue, 14 Jul 2026 01:44:17 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1750a0c7e8025a12964111a62f4768d80065ae9eea7ca8d7088b32441fea090`  
		Last Modified: Tue, 14 Jul 2026 01:44:17 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e272e5c878618418e805e39843e5ff18c6470c1ed82beb6274aedf1353d5b921`  
		Last Modified: Tue, 14 Jul 2026 01:44:18 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:98cf64da1897f10d4a48100cb10db72c5fc0e6bff48c424ce89bf8486c69cc1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8fc15e63a47c4fd7909e14165ab638b31989f21cfce1460b9ab4bc06a7c56e`

```dockerfile
```

-	Layers:
	-	`sha256:c3b1c804523968c666abb7655a2b85cbeeed1797f4f470682b36ecefae933a28`  
		Last Modified: Tue, 14 Jul 2026 01:44:17 GMT  
		Size: 2.9 MB (2873774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc5de58d5f70edf24ed39f44be3b0f4c8dbd3ab396f049aaf25a06fe590c3ad4`  
		Last Modified: Tue, 14 Jul 2026 01:44:17 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:8c42014d262f8cca0879d903acb1d11c99ebb673620d98bb61c632422ee8080c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93052018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc1b852f573d90d2a4ca3648910eabe32823fa2760a05389c28e9c68abdf32e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:47:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Tue, 14 Jul 2026 01:47:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 14 Jul 2026 01:47:12 GMT
VOLUME [/var/lib/chronograf]
# Tue, 14 Jul 2026 01:47:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:47:12 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:574d254d2f32853d66b676f4a3c89d35655acc293b780d081bc56eda622198f6`  
		Last Modified: Tue, 14 Jul 2026 01:47:25 GMT  
		Size: 7.7 MB (7699834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:494c5ec699cd0cdc85a245013f1fdb2db1ba65385896fde16606f7632b668171`  
		Last Modified: Tue, 14 Jul 2026 01:47:27 GMT  
		Size: 57.2 MB (57210457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:594ebb7e2a394f4338f375b309381ac789c2a406fd064d8311b72ba201a180b8`  
		Last Modified: Tue, 14 Jul 2026 01:47:25 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ea2416bdb9f1a53b50fd31ce19b1ba1c0904fe1337dadef7679d13c802ff81`  
		Last Modified: Tue, 14 Jul 2026 01:47:25 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fab15242d6815ef56bf3a7091483d167f5e81d7f4d9a634d54a54831e245171`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:fe20408e1f94e0612640b9ca4136f672105eed6d0b352b004d671ca4f3488ed3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de81ea03bfa47c4293ac626ec2ae94b6a4137974e17e33bb08ff5856f4af503d`

```dockerfile
```

-	Layers:
	-	`sha256:d6159231959434c1e2bad79434df6b0e5904d885fa7d8acc335b1344d1626c43`  
		Last Modified: Tue, 14 Jul 2026 01:47:25 GMT  
		Size: 2.9 MB (2872988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:deb30901d6e09b87d2fffa76590d8e8120c9312f70d0731081211512006efc6c`  
		Last Modified: Tue, 14 Jul 2026 01:47:25 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json
