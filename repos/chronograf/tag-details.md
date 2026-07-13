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
$ docker pull chronograf@sha256:9db4228eb9a44bf52c14d0ec0d2477f0bf6be8b6c788ee6c3cb7cf027c17a808
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
$ docker pull chronograf@sha256:819fe6bceec81a5f3a18338f8e9a81a8dbd6bbe5e0b99b1d3f844537fad35a2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85013256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1ffbafd2b98dafcaf44ada24457989ee288aef1525287038c587f01b6cca707`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Mon, 13 Jul 2026 17:38:40 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 13 Jul 2026 17:38:44 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Mon, 13 Jul 2026 17:38:44 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 13 Jul 2026 17:38:44 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Mon, 13 Jul 2026 17:38:44 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Mon, 13 Jul 2026 17:38:44 GMT
EXPOSE map[8888/tcp:{}]
# Mon, 13 Jul 2026 17:38:44 GMT
VOLUME [/var/lib/chronograf]
# Mon, 13 Jul 2026 17:38:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 13 Jul 2026 17:38:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 13 Jul 2026 17:38:44 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49275cfd50c1b71ca7d7eeb81170c9c815ad3211ff517b52c0a05f26bc8e1125`  
		Last Modified: Mon, 13 Jul 2026 17:38:55 GMT  
		Size: 7.9 MB (7883264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae728d038e91aeb392091246e0cf8e287415561a9bddd5102f990548d59f8e5`  
		Last Modified: Mon, 13 Jul 2026 17:38:56 GMT  
		Size: 48.9 MB (48867887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3a9cb923a146e107c2a67685b0162a4604f4ebda4e26298c71b3802f96ea8d1`  
		Last Modified: Mon, 13 Jul 2026 17:38:55 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4269f0fcfa8263a092d93932a170f665af1e9b0cb84e4a2a015d3505d230af40`  
		Last Modified: Mon, 13 Jul 2026 17:38:55 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac152bcf45916a2a09c69b001bd45f1b1c41144b79a5d2db300837a06be7700e`  
		Last Modified: Mon, 13 Jul 2026 17:38:56 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:325628b2cbdc14a4d09e038f138d7c80c006c20011c85a08657c71e40a3d3d7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2871239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b4fffc462f4dda59ae2fa590e911c9e9c76605019bcc37b01a0f38ac559a45`

```dockerfile
```

-	Layers:
	-	`sha256:4e065dfbe93654e6f03c1b46a52931714677e6f7ac5f3f21c23699e3a134e13a`  
		Last Modified: Mon, 13 Jul 2026 17:38:55 GMT  
		Size: 2.9 MB (2855460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e53e66e204932b6f1611b318a74771c70a53f4dca46d243f88978cd8c6f94bb`  
		Last Modified: Mon, 13 Jul 2026 17:38:54 GMT  
		Size: 15.8 KB (15779 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:568e0ec2da688ea5ad2fd57c6fe5ff614108b52c74c982252951791d20ed102d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76803688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:603c44c5bb7993ed46024e4f20c5513997e366b3289c2cd65c3d3d7d19727f0a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Mon, 13 Jul 2026 17:44:07 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 13 Jul 2026 17:44:14 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Mon, 13 Jul 2026 17:44:14 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 13 Jul 2026 17:44:14 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Mon, 13 Jul 2026 17:44:14 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Mon, 13 Jul 2026 17:44:14 GMT
EXPOSE map[8888/tcp:{}]
# Mon, 13 Jul 2026 17:44:14 GMT
VOLUME [/var/lib/chronograf]
# Mon, 13 Jul 2026 17:44:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 13 Jul 2026 17:44:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 13 Jul 2026 17:44:14 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99848efb8e89a7aa7752e680f50c697de88483b253afdf6bd8509bf97be4f419`  
		Last Modified: Mon, 13 Jul 2026 17:44:25 GMT  
		Size: 6.5 MB (6514517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e5497ae60377c42c4a81328b4745a6b4e1d6ef197eeb6567e111ef68f4decf9`  
		Last Modified: Mon, 13 Jul 2026 17:44:26 GMT  
		Size: 46.3 MB (46320174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de3ae138d0739b0623889cc962818610d7b7466adaa8c3ad2d044a7c6701c286`  
		Last Modified: Mon, 13 Jul 2026 17:44:24 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c44b978e599a77b4d36bdeeb53c52df55546b35a74987933badc19c0bbdd0ea`  
		Last Modified: Mon, 13 Jul 2026 17:44:25 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d7f605a0bc31532f903dd36a6e8668d1c294d51927d7679c061f758c1a5a27`  
		Last Modified: Mon, 13 Jul 2026 17:44:26 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:1541202b361a2dee01099236f3c066e9a466dcdcd3bd50ffd8f6946429529497
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2873604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c8b6527a2cefd3a0fe1ce3bb99f399802cfc8ab3d912bae47d5f2656704131d`

```dockerfile
```

-	Layers:
	-	`sha256:cde463fe8c8686dbda792d50e5fdd152c7ce447b0cb9db43e68be10ac96c362b`  
		Last Modified: Mon, 13 Jul 2026 17:44:25 GMT  
		Size: 2.9 MB (2857749 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59b8685c420ff693ca251c08de32be09d14123e3ebfd1300378a9e7e64f5735c`  
		Last Modified: Mon, 13 Jul 2026 17:44:24 GMT  
		Size: 15.9 KB (15855 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:34fb9eb6a8ae4df386dfd40771210e69cda905787d41f3ddd96e8fae74d78b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81856178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caad9eadde2daff0bd40655f34271c7e5697b21d538b645c6e97c7b0bf025137`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Mon, 13 Jul 2026 17:39:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 13 Jul 2026 17:39:11 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Mon, 13 Jul 2026 17:39:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 13 Jul 2026 17:39:11 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Mon, 13 Jul 2026 17:39:11 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Mon, 13 Jul 2026 17:39:11 GMT
EXPOSE map[8888/tcp:{}]
# Mon, 13 Jul 2026 17:39:11 GMT
VOLUME [/var/lib/chronograf]
# Mon, 13 Jul 2026 17:39:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 13 Jul 2026 17:39:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 13 Jul 2026 17:39:11 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed6623e6ee322ce1023e69138340648d7c64b3a09778e41b0068710121eac65`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
		Size: 7.7 MB (7699862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4e6d93c52a6c5a373808aa2767fe99c0c92b32bb6773d77a214bb2c5efaaa8`  
		Last Modified: Mon, 13 Jul 2026 17:39:25 GMT  
		Size: 46.0 MB (46009437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d908786da7e4f23b46b86a19f574be9aaa6e8f6f5751f9cfc7c16abd5e87f530`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8be7448e468504b24802627de14cbd551a178b551953effe6277c2d7b9f5497`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45d6923e605ef6d7eda770fb96ca8b7bfef02fab0b85e0db01f832b8a32ea6a3`  
		Last Modified: Mon, 13 Jul 2026 17:39:24 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:17bbfaa3bed8255eae592e54f30a57d2b656853dfb0568ab8fb12b14712372ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2871595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35eb6d8905140cc0bd19676aa70fa717ef00a618e783996a60547628bdd1aafe`

```dockerfile
```

-	Layers:
	-	`sha256:89dad5ba00cad92eb4ccbfe5e86c13e3ff84b113023a94b30e7f52b402bffe0e`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
		Size: 2.9 MB (2855721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cfd2cbaa73e58a6df30075eed799364c6edb645b0f34f862a383c7a580113a3`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
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
$ docker pull chronograf@sha256:9db4228eb9a44bf52c14d0ec0d2477f0bf6be8b6c788ee6c3cb7cf027c17a808
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
$ docker pull chronograf@sha256:819fe6bceec81a5f3a18338f8e9a81a8dbd6bbe5e0b99b1d3f844537fad35a2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85013256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1ffbafd2b98dafcaf44ada24457989ee288aef1525287038c587f01b6cca707`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Mon, 13 Jul 2026 17:38:40 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 13 Jul 2026 17:38:44 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Mon, 13 Jul 2026 17:38:44 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 13 Jul 2026 17:38:44 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Mon, 13 Jul 2026 17:38:44 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Mon, 13 Jul 2026 17:38:44 GMT
EXPOSE map[8888/tcp:{}]
# Mon, 13 Jul 2026 17:38:44 GMT
VOLUME [/var/lib/chronograf]
# Mon, 13 Jul 2026 17:38:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 13 Jul 2026 17:38:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 13 Jul 2026 17:38:44 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49275cfd50c1b71ca7d7eeb81170c9c815ad3211ff517b52c0a05f26bc8e1125`  
		Last Modified: Mon, 13 Jul 2026 17:38:55 GMT  
		Size: 7.9 MB (7883264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae728d038e91aeb392091246e0cf8e287415561a9bddd5102f990548d59f8e5`  
		Last Modified: Mon, 13 Jul 2026 17:38:56 GMT  
		Size: 48.9 MB (48867887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3a9cb923a146e107c2a67685b0162a4604f4ebda4e26298c71b3802f96ea8d1`  
		Last Modified: Mon, 13 Jul 2026 17:38:55 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4269f0fcfa8263a092d93932a170f665af1e9b0cb84e4a2a015d3505d230af40`  
		Last Modified: Mon, 13 Jul 2026 17:38:55 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac152bcf45916a2a09c69b001bd45f1b1c41144b79a5d2db300837a06be7700e`  
		Last Modified: Mon, 13 Jul 2026 17:38:56 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:325628b2cbdc14a4d09e038f138d7c80c006c20011c85a08657c71e40a3d3d7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2871239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b4fffc462f4dda59ae2fa590e911c9e9c76605019bcc37b01a0f38ac559a45`

```dockerfile
```

-	Layers:
	-	`sha256:4e065dfbe93654e6f03c1b46a52931714677e6f7ac5f3f21c23699e3a134e13a`  
		Last Modified: Mon, 13 Jul 2026 17:38:55 GMT  
		Size: 2.9 MB (2855460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e53e66e204932b6f1611b318a74771c70a53f4dca46d243f88978cd8c6f94bb`  
		Last Modified: Mon, 13 Jul 2026 17:38:54 GMT  
		Size: 15.8 KB (15779 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10.9` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:568e0ec2da688ea5ad2fd57c6fe5ff614108b52c74c982252951791d20ed102d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76803688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:603c44c5bb7993ed46024e4f20c5513997e366b3289c2cd65c3d3d7d19727f0a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Mon, 13 Jul 2026 17:44:07 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 13 Jul 2026 17:44:14 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Mon, 13 Jul 2026 17:44:14 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 13 Jul 2026 17:44:14 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Mon, 13 Jul 2026 17:44:14 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Mon, 13 Jul 2026 17:44:14 GMT
EXPOSE map[8888/tcp:{}]
# Mon, 13 Jul 2026 17:44:14 GMT
VOLUME [/var/lib/chronograf]
# Mon, 13 Jul 2026 17:44:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 13 Jul 2026 17:44:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 13 Jul 2026 17:44:14 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99848efb8e89a7aa7752e680f50c697de88483b253afdf6bd8509bf97be4f419`  
		Last Modified: Mon, 13 Jul 2026 17:44:25 GMT  
		Size: 6.5 MB (6514517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e5497ae60377c42c4a81328b4745a6b4e1d6ef197eeb6567e111ef68f4decf9`  
		Last Modified: Mon, 13 Jul 2026 17:44:26 GMT  
		Size: 46.3 MB (46320174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de3ae138d0739b0623889cc962818610d7b7466adaa8c3ad2d044a7c6701c286`  
		Last Modified: Mon, 13 Jul 2026 17:44:24 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c44b978e599a77b4d36bdeeb53c52df55546b35a74987933badc19c0bbdd0ea`  
		Last Modified: Mon, 13 Jul 2026 17:44:25 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d7f605a0bc31532f903dd36a6e8668d1c294d51927d7679c061f758c1a5a27`  
		Last Modified: Mon, 13 Jul 2026 17:44:26 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:1541202b361a2dee01099236f3c066e9a466dcdcd3bd50ffd8f6946429529497
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2873604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c8b6527a2cefd3a0fe1ce3bb99f399802cfc8ab3d912bae47d5f2656704131d`

```dockerfile
```

-	Layers:
	-	`sha256:cde463fe8c8686dbda792d50e5fdd152c7ce447b0cb9db43e68be10ac96c362b`  
		Last Modified: Mon, 13 Jul 2026 17:44:25 GMT  
		Size: 2.9 MB (2857749 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59b8685c420ff693ca251c08de32be09d14123e3ebfd1300378a9e7e64f5735c`  
		Last Modified: Mon, 13 Jul 2026 17:44:24 GMT  
		Size: 15.9 KB (15855 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10.9` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:34fb9eb6a8ae4df386dfd40771210e69cda905787d41f3ddd96e8fae74d78b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81856178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caad9eadde2daff0bd40655f34271c7e5697b21d538b645c6e97c7b0bf025137`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Mon, 13 Jul 2026 17:39:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 13 Jul 2026 17:39:11 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Mon, 13 Jul 2026 17:39:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 13 Jul 2026 17:39:11 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Mon, 13 Jul 2026 17:39:11 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Mon, 13 Jul 2026 17:39:11 GMT
EXPOSE map[8888/tcp:{}]
# Mon, 13 Jul 2026 17:39:11 GMT
VOLUME [/var/lib/chronograf]
# Mon, 13 Jul 2026 17:39:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 13 Jul 2026 17:39:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 13 Jul 2026 17:39:11 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed6623e6ee322ce1023e69138340648d7c64b3a09778e41b0068710121eac65`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
		Size: 7.7 MB (7699862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4e6d93c52a6c5a373808aa2767fe99c0c92b32bb6773d77a214bb2c5efaaa8`  
		Last Modified: Mon, 13 Jul 2026 17:39:25 GMT  
		Size: 46.0 MB (46009437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d908786da7e4f23b46b86a19f574be9aaa6e8f6f5751f9cfc7c16abd5e87f530`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8be7448e468504b24802627de14cbd551a178b551953effe6277c2d7b9f5497`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45d6923e605ef6d7eda770fb96ca8b7bfef02fab0b85e0db01f832b8a32ea6a3`  
		Last Modified: Mon, 13 Jul 2026 17:39:24 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:17bbfaa3bed8255eae592e54f30a57d2b656853dfb0568ab8fb12b14712372ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2871595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35eb6d8905140cc0bd19676aa70fa717ef00a618e783996a60547628bdd1aafe`

```dockerfile
```

-	Layers:
	-	`sha256:89dad5ba00cad92eb4ccbfe5e86c13e3ff84b113023a94b30e7f52b402bffe0e`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
		Size: 2.9 MB (2855721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cfd2cbaa73e58a6df30075eed799364c6edb645b0f34f862a383c7a580113a3`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
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
$ docker pull chronograf@sha256:6705e94ed796d80ea9140f76c6e0e06a181ea4ad5030e67dd176d69731ddb635
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11` - linux; amd64

```console
$ docker pull chronograf@sha256:5e57b521f7226a82969319ab52cf0d11a5593b6454d2e1f014f54a91d6b526b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96342306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:149a79a4729fcd81d42bdded4db4a7a5fe2b6aee23e39cdf281c86aeb546b3d5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Mon, 13 Jul 2026 17:39:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 13 Jul 2026 17:39:08 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Mon, 13 Jul 2026 17:39:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 13 Jul 2026 17:39:08 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Mon, 13 Jul 2026 17:39:08 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Mon, 13 Jul 2026 17:39:08 GMT
EXPOSE map[8888/tcp:{}]
# Mon, 13 Jul 2026 17:39:08 GMT
VOLUME [/var/lib/chronograf]
# Mon, 13 Jul 2026 17:39:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 13 Jul 2026 17:39:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 13 Jul 2026 17:39:09 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c48c916b42a52d3e34f83a93529ede1f5a301e55d13d6a555d1ea0612b6fbeb`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
		Size: 7.9 MB (7883325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5562cf79bf07a6576e67cf8ede3bb67509ec242028ffb4db9162a4781d728ccf`  
		Last Modified: Mon, 13 Jul 2026 17:39:25 GMT  
		Size: 60.2 MB (60196875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4c1c95ac76e4c1b3b20be3130d9ab504b3f8e27d11f4502b59d69e1c59757d0`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a7a5f05938d9a464269b370e79a1610fdd471c18ade6d1447bf9cd6b4ac360d`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d3aecee8b437a68d03809f41cb343babe5ab4419973bfcc53c551c06176408`  
		Last Modified: Mon, 13 Jul 2026 17:39:24 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:ae7d9d128c12e8cffe617eb14bfd7ea37e5e3e9ffd548e3306d1b6e2667361af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1dd497d807d0cac6eea5d5d21fc9ea01b84e7971a3f88d2243072b6f05c46c`

```dockerfile
```

-	Layers:
	-	`sha256:9658cca1117bdfe44e6dd964d09ff941183d8a6f5412ca69eabcec4d4aabd7cb`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
		Size: 2.9 MB (2873738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd85ce79ff7d6084226bcc1039811e1bbfe1f6c80d8786b3de7299610fcc0bf9`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:89399c77e8a803f685dd64b5bd2cfdeb56fc273ed25e6ad3c0073925f62f44d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93057283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4e136bdc6cb150c1c24451bcccc2b73bd671cb4a3c8cc407a870796c048d04`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Mon, 13 Jul 2026 17:39:30 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 13 Jul 2026 17:39:36 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Mon, 13 Jul 2026 17:39:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 13 Jul 2026 17:39:36 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Mon, 13 Jul 2026 17:39:36 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Mon, 13 Jul 2026 17:39:36 GMT
EXPOSE map[8888/tcp:{}]
# Mon, 13 Jul 2026 17:39:36 GMT
VOLUME [/var/lib/chronograf]
# Mon, 13 Jul 2026 17:39:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 13 Jul 2026 17:39:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 13 Jul 2026 17:39:36 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f802edba41b1070d7c47ec359b49e16e267cc5223b333b7b9a36b0b48edb3a6`  
		Last Modified: Mon, 13 Jul 2026 17:39:51 GMT  
		Size: 7.7 MB (7699871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b48e7e136693bb1e78a4d1ac9e9262533ed2c4be625b9b955a9988327fa7adf`  
		Last Modified: Mon, 13 Jul 2026 17:39:52 GMT  
		Size: 57.2 MB (57210522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa4d661c091e0febac10f179fd1dc159e9871994763750b78d2ba34feff1866`  
		Last Modified: Mon, 13 Jul 2026 17:39:50 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66dbecd4ad321184e96ec6a874c788f0ca34c3c9dcc2d99c635728ee82bc9548`  
		Last Modified: Mon, 13 Jul 2026 17:39:50 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:371b5a505276ae024a2ab689d8b0447de4ae1c01cf36e20840e11769495dde00`  
		Last Modified: Mon, 13 Jul 2026 17:39:51 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:057944704c9832a9d3fa1cc255dcbf1f2a2fe52b36c860683b82ea62e7f2ae22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23410e47522a7fd83b49938c20d689001d10a6a9cae4ad20cb895f50724f1a35`

```dockerfile
```

-	Layers:
	-	`sha256:d755071ddf64850cf1753202755b1dca95fca1b1c10d69ae9864cb1a3f5c7236`  
		Last Modified: Mon, 13 Jul 2026 17:39:50 GMT  
		Size: 2.9 MB (2872952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2225ba02b135bd03920eafca8995e0c9491cf74216ea7c449cb670442992093`  
		Last Modified: Mon, 13 Jul 2026 17:39:50 GMT  
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
$ docker pull chronograf@sha256:6705e94ed796d80ea9140f76c6e0e06a181ea4ad5030e67dd176d69731ddb635
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11.4` - linux; amd64

```console
$ docker pull chronograf@sha256:5e57b521f7226a82969319ab52cf0d11a5593b6454d2e1f014f54a91d6b526b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96342306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:149a79a4729fcd81d42bdded4db4a7a5fe2b6aee23e39cdf281c86aeb546b3d5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Mon, 13 Jul 2026 17:39:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 13 Jul 2026 17:39:08 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Mon, 13 Jul 2026 17:39:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 13 Jul 2026 17:39:08 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Mon, 13 Jul 2026 17:39:08 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Mon, 13 Jul 2026 17:39:08 GMT
EXPOSE map[8888/tcp:{}]
# Mon, 13 Jul 2026 17:39:08 GMT
VOLUME [/var/lib/chronograf]
# Mon, 13 Jul 2026 17:39:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 13 Jul 2026 17:39:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 13 Jul 2026 17:39:09 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c48c916b42a52d3e34f83a93529ede1f5a301e55d13d6a555d1ea0612b6fbeb`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
		Size: 7.9 MB (7883325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5562cf79bf07a6576e67cf8ede3bb67509ec242028ffb4db9162a4781d728ccf`  
		Last Modified: Mon, 13 Jul 2026 17:39:25 GMT  
		Size: 60.2 MB (60196875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4c1c95ac76e4c1b3b20be3130d9ab504b3f8e27d11f4502b59d69e1c59757d0`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a7a5f05938d9a464269b370e79a1610fdd471c18ade6d1447bf9cd6b4ac360d`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d3aecee8b437a68d03809f41cb343babe5ab4419973bfcc53c551c06176408`  
		Last Modified: Mon, 13 Jul 2026 17:39:24 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.4` - unknown; unknown

```console
$ docker pull chronograf@sha256:ae7d9d128c12e8cffe617eb14bfd7ea37e5e3e9ffd548e3306d1b6e2667361af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1dd497d807d0cac6eea5d5d21fc9ea01b84e7971a3f88d2243072b6f05c46c`

```dockerfile
```

-	Layers:
	-	`sha256:9658cca1117bdfe44e6dd964d09ff941183d8a6f5412ca69eabcec4d4aabd7cb`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
		Size: 2.9 MB (2873738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd85ce79ff7d6084226bcc1039811e1bbfe1f6c80d8786b3de7299610fcc0bf9`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11.4` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:89399c77e8a803f685dd64b5bd2cfdeb56fc273ed25e6ad3c0073925f62f44d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93057283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4e136bdc6cb150c1c24451bcccc2b73bd671cb4a3c8cc407a870796c048d04`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Mon, 13 Jul 2026 17:39:30 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 13 Jul 2026 17:39:36 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Mon, 13 Jul 2026 17:39:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 13 Jul 2026 17:39:36 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Mon, 13 Jul 2026 17:39:36 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Mon, 13 Jul 2026 17:39:36 GMT
EXPOSE map[8888/tcp:{}]
# Mon, 13 Jul 2026 17:39:36 GMT
VOLUME [/var/lib/chronograf]
# Mon, 13 Jul 2026 17:39:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 13 Jul 2026 17:39:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 13 Jul 2026 17:39:36 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f802edba41b1070d7c47ec359b49e16e267cc5223b333b7b9a36b0b48edb3a6`  
		Last Modified: Mon, 13 Jul 2026 17:39:51 GMT  
		Size: 7.7 MB (7699871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b48e7e136693bb1e78a4d1ac9e9262533ed2c4be625b9b955a9988327fa7adf`  
		Last Modified: Mon, 13 Jul 2026 17:39:52 GMT  
		Size: 57.2 MB (57210522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa4d661c091e0febac10f179fd1dc159e9871994763750b78d2ba34feff1866`  
		Last Modified: Mon, 13 Jul 2026 17:39:50 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66dbecd4ad321184e96ec6a874c788f0ca34c3c9dcc2d99c635728ee82bc9548`  
		Last Modified: Mon, 13 Jul 2026 17:39:50 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:371b5a505276ae024a2ab689d8b0447de4ae1c01cf36e20840e11769495dde00`  
		Last Modified: Mon, 13 Jul 2026 17:39:51 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.4` - unknown; unknown

```console
$ docker pull chronograf@sha256:057944704c9832a9d3fa1cc255dcbf1f2a2fe52b36c860683b82ea62e7f2ae22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23410e47522a7fd83b49938c20d689001d10a6a9cae4ad20cb895f50724f1a35`

```dockerfile
```

-	Layers:
	-	`sha256:d755071ddf64850cf1753202755b1dca95fca1b1c10d69ae9864cb1a3f5c7236`  
		Last Modified: Mon, 13 Jul 2026 17:39:50 GMT  
		Size: 2.9 MB (2872952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2225ba02b135bd03920eafca8995e0c9491cf74216ea7c449cb670442992093`  
		Last Modified: Mon, 13 Jul 2026 17:39:50 GMT  
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
$ docker pull chronograf@sha256:602b0d2d9f0eec7c39b45a705f8aa2ca5b9bf2de1d1e7238f511033a26647e26
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
$ docker pull chronograf@sha256:5e57b521f7226a82969319ab52cf0d11a5593b6454d2e1f014f54a91d6b526b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96342306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:149a79a4729fcd81d42bdded4db4a7a5fe2b6aee23e39cdf281c86aeb546b3d5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Mon, 13 Jul 2026 17:39:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 13 Jul 2026 17:39:08 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Mon, 13 Jul 2026 17:39:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 13 Jul 2026 17:39:08 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Mon, 13 Jul 2026 17:39:08 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Mon, 13 Jul 2026 17:39:08 GMT
EXPOSE map[8888/tcp:{}]
# Mon, 13 Jul 2026 17:39:08 GMT
VOLUME [/var/lib/chronograf]
# Mon, 13 Jul 2026 17:39:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 13 Jul 2026 17:39:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 13 Jul 2026 17:39:09 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c48c916b42a52d3e34f83a93529ede1f5a301e55d13d6a555d1ea0612b6fbeb`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
		Size: 7.9 MB (7883325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5562cf79bf07a6576e67cf8ede3bb67509ec242028ffb4db9162a4781d728ccf`  
		Last Modified: Mon, 13 Jul 2026 17:39:25 GMT  
		Size: 60.2 MB (60196875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4c1c95ac76e4c1b3b20be3130d9ab504b3f8e27d11f4502b59d69e1c59757d0`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a7a5f05938d9a464269b370e79a1610fdd471c18ade6d1447bf9cd6b4ac360d`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d3aecee8b437a68d03809f41cb343babe5ab4419973bfcc53c551c06176408`  
		Last Modified: Mon, 13 Jul 2026 17:39:24 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:ae7d9d128c12e8cffe617eb14bfd7ea37e5e3e9ffd548e3306d1b6e2667361af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1dd497d807d0cac6eea5d5d21fc9ea01b84e7971a3f88d2243072b6f05c46c`

```dockerfile
```

-	Layers:
	-	`sha256:9658cca1117bdfe44e6dd964d09ff941183d8a6f5412ca69eabcec4d4aabd7cb`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
		Size: 2.9 MB (2873738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd85ce79ff7d6084226bcc1039811e1bbfe1f6c80d8786b3de7299610fcc0bf9`  
		Last Modified: Mon, 13 Jul 2026 17:39:23 GMT  
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
$ docker pull chronograf@sha256:89399c77e8a803f685dd64b5bd2cfdeb56fc273ed25e6ad3c0073925f62f44d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93057283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4e136bdc6cb150c1c24451bcccc2b73bd671cb4a3c8cc407a870796c048d04`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Mon, 13 Jul 2026 17:39:30 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 13 Jul 2026 17:39:36 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Mon, 13 Jul 2026 17:39:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 13 Jul 2026 17:39:36 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Mon, 13 Jul 2026 17:39:36 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Mon, 13 Jul 2026 17:39:36 GMT
EXPOSE map[8888/tcp:{}]
# Mon, 13 Jul 2026 17:39:36 GMT
VOLUME [/var/lib/chronograf]
# Mon, 13 Jul 2026 17:39:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 13 Jul 2026 17:39:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 13 Jul 2026 17:39:36 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f802edba41b1070d7c47ec359b49e16e267cc5223b333b7b9a36b0b48edb3a6`  
		Last Modified: Mon, 13 Jul 2026 17:39:51 GMT  
		Size: 7.7 MB (7699871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b48e7e136693bb1e78a4d1ac9e9262533ed2c4be625b9b955a9988327fa7adf`  
		Last Modified: Mon, 13 Jul 2026 17:39:52 GMT  
		Size: 57.2 MB (57210522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa4d661c091e0febac10f179fd1dc159e9871994763750b78d2ba34feff1866`  
		Last Modified: Mon, 13 Jul 2026 17:39:50 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66dbecd4ad321184e96ec6a874c788f0ca34c3c9dcc2d99c635728ee82bc9548`  
		Last Modified: Mon, 13 Jul 2026 17:39:50 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:371b5a505276ae024a2ab689d8b0447de4ae1c01cf36e20840e11769495dde00`  
		Last Modified: Mon, 13 Jul 2026 17:39:51 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:057944704c9832a9d3fa1cc255dcbf1f2a2fe52b36c860683b82ea62e7f2ae22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23410e47522a7fd83b49938c20d689001d10a6a9cae4ad20cb895f50724f1a35`

```dockerfile
```

-	Layers:
	-	`sha256:d755071ddf64850cf1753202755b1dca95fca1b1c10d69ae9864cb1a3f5c7236`  
		Last Modified: Mon, 13 Jul 2026 17:39:50 GMT  
		Size: 2.9 MB (2872952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2225ba02b135bd03920eafca8995e0c9491cf74216ea7c449cb670442992093`  
		Last Modified: Mon, 13 Jul 2026 17:39:50 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json
