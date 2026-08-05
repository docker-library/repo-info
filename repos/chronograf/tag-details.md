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
$ docker pull chronograf@sha256:d33652c379ad99acf8e89552eb4c39b5be5a8dbbdf1617b14f49e8a6bd52dfa4
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
$ docker pull chronograf@sha256:99aefdd8d956b3612aa33edfdbdcf18a58fefd91944d5ac21efe79ba77429e59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85008280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303421dffcfaac998f44832a1c07f5d5d7e3a73eeab09a106acf2842f9680c8c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 00:45:09 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 05 Aug 2026 00:45:09 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:45:09 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 05 Aug 2026 00:45:09 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 05 Aug 2026 00:45:09 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 05 Aug 2026 00:45:09 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Aug 2026 00:45:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:45:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:45:09 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9c9406f2cfbbe6e984b89ec5bb298a84eafadabf4fe7afbbb3a9174c98ff569`  
		Last Modified: Wed, 05 Aug 2026 00:45:20 GMT  
		Size: 7.9 MB (7883327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eef0ca7e4fe5bedf7b72a7c192078a6b8db14ddfc756c3d68be09974908c2f2`  
		Last Modified: Wed, 05 Aug 2026 00:45:21 GMT  
		Size: 48.9 MB (48867899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d282e2d2dd62629ad090773b498a81baecc54f884bcf2a56aa987452a90b2e2`  
		Last Modified: Wed, 05 Aug 2026 00:45:20 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be93c18d739705928ba5502f92c763fa4d32fc3c2c8370fca350bd7790e2b45`  
		Last Modified: Wed, 05 Aug 2026 00:45:20 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7ea595c5232882537bc5e387c47ebfcf95a7e090366033b371596c626603186`  
		Last Modified: Wed, 05 Aug 2026 00:45:21 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:25d1beb91a1f1e439e40d54bcbe75d8a166d2a91e4b4b54a24ceea670b28209d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2871275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b92292f9907a8004c78de8bfb016e39bb1463907cfb5682923120b34c01929e`

```dockerfile
```

-	Layers:
	-	`sha256:63ac8f0e904f0ae378a45f54dd469fb4753176e84ed258a5b5734e169ee46683`  
		Last Modified: Wed, 05 Aug 2026 00:45:20 GMT  
		Size: 2.9 MB (2855496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0c1f72b9181b0e2f48e7d41331cb05559121898df8eb3b526c894b3fbf35e49`  
		Last Modified: Wed, 05 Aug 2026 00:45:20 GMT  
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
$ docker pull chronograf@sha256:ec38f6a6a3b1ec86cd02d811aff1527cb7ea4dd914912b12ab648f0dddf3f1ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81851019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f0b25446fcca30f7eff29396c5b69f8b2b69ba2859935e404d96fe9de5a522`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:23 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 00:47:29 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 05 Aug 2026 00:47:29 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:47:29 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 05 Aug 2026 00:47:29 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 05 Aug 2026 00:47:29 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 05 Aug 2026 00:47:29 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Aug 2026 00:47:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:47:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:47:29 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aba496366feffa519e24092593968c253f2738dd1d1307821fd98f773cf5033`  
		Last Modified: Wed, 05 Aug 2026 00:47:40 GMT  
		Size: 7.7 MB (7699843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5129b1e1f114243d111ec8b3d4e185886390e08463cf36eb71f08a6def26ffc`  
		Last Modified: Wed, 05 Aug 2026 00:47:41 GMT  
		Size: 46.0 MB (46009516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781ca1dcdc9f06f644460b11eb8489020474dc1d06de1f501309eb480f9ab0ae`  
		Last Modified: Wed, 05 Aug 2026 00:47:40 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d678ff89674077a8361133123a56bc8700c830b7c339108423efa0d30e6ff02`  
		Last Modified: Wed, 05 Aug 2026 00:47:40 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54136181f03cd43c36e50d3f7883080befe5c80df21b172c4ff48fd8d3d87b91`  
		Last Modified: Wed, 05 Aug 2026 00:47:41 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:22c723f0246b27447734f3dd4aafbb7b38ca40fcb1d1eff75373be3db87cad37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2871631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eba8519f2fd46ffd48a522739fc47203da476cf2de23033ace1be8db8a00d0a`

```dockerfile
```

-	Layers:
	-	`sha256:f55820ec338756c58378e1e102efeb9129c5ae3d71ce02a1b446e6c0d04cb575`  
		Last Modified: Wed, 05 Aug 2026 00:47:40 GMT  
		Size: 2.9 MB (2855757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdb6a1c79e34c19541d502b0daa0356ee71b3d01396f66f3ced1e42c62219dab`  
		Last Modified: Wed, 05 Aug 2026 00:47:40 GMT  
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
$ docker pull chronograf@sha256:d33652c379ad99acf8e89552eb4c39b5be5a8dbbdf1617b14f49e8a6bd52dfa4
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
$ docker pull chronograf@sha256:99aefdd8d956b3612aa33edfdbdcf18a58fefd91944d5ac21efe79ba77429e59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85008280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303421dffcfaac998f44832a1c07f5d5d7e3a73eeab09a106acf2842f9680c8c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 00:45:09 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 05 Aug 2026 00:45:09 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:45:09 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 05 Aug 2026 00:45:09 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 05 Aug 2026 00:45:09 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 05 Aug 2026 00:45:09 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Aug 2026 00:45:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:45:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:45:09 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9c9406f2cfbbe6e984b89ec5bb298a84eafadabf4fe7afbbb3a9174c98ff569`  
		Last Modified: Wed, 05 Aug 2026 00:45:20 GMT  
		Size: 7.9 MB (7883327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eef0ca7e4fe5bedf7b72a7c192078a6b8db14ddfc756c3d68be09974908c2f2`  
		Last Modified: Wed, 05 Aug 2026 00:45:21 GMT  
		Size: 48.9 MB (48867899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d282e2d2dd62629ad090773b498a81baecc54f884bcf2a56aa987452a90b2e2`  
		Last Modified: Wed, 05 Aug 2026 00:45:20 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be93c18d739705928ba5502f92c763fa4d32fc3c2c8370fca350bd7790e2b45`  
		Last Modified: Wed, 05 Aug 2026 00:45:20 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7ea595c5232882537bc5e387c47ebfcf95a7e090366033b371596c626603186`  
		Last Modified: Wed, 05 Aug 2026 00:45:21 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:25d1beb91a1f1e439e40d54bcbe75d8a166d2a91e4b4b54a24ceea670b28209d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2871275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b92292f9907a8004c78de8bfb016e39bb1463907cfb5682923120b34c01929e`

```dockerfile
```

-	Layers:
	-	`sha256:63ac8f0e904f0ae378a45f54dd469fb4753176e84ed258a5b5734e169ee46683`  
		Last Modified: Wed, 05 Aug 2026 00:45:20 GMT  
		Size: 2.9 MB (2855496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0c1f72b9181b0e2f48e7d41331cb05559121898df8eb3b526c894b3fbf35e49`  
		Last Modified: Wed, 05 Aug 2026 00:45:20 GMT  
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
$ docker pull chronograf@sha256:ec38f6a6a3b1ec86cd02d811aff1527cb7ea4dd914912b12ab648f0dddf3f1ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81851019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f0b25446fcca30f7eff29396c5b69f8b2b69ba2859935e404d96fe9de5a522`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:23 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 00:47:29 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 05 Aug 2026 00:47:29 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:47:29 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 05 Aug 2026 00:47:29 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 05 Aug 2026 00:47:29 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 05 Aug 2026 00:47:29 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Aug 2026 00:47:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:47:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:47:29 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aba496366feffa519e24092593968c253f2738dd1d1307821fd98f773cf5033`  
		Last Modified: Wed, 05 Aug 2026 00:47:40 GMT  
		Size: 7.7 MB (7699843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5129b1e1f114243d111ec8b3d4e185886390e08463cf36eb71f08a6def26ffc`  
		Last Modified: Wed, 05 Aug 2026 00:47:41 GMT  
		Size: 46.0 MB (46009516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781ca1dcdc9f06f644460b11eb8489020474dc1d06de1f501309eb480f9ab0ae`  
		Last Modified: Wed, 05 Aug 2026 00:47:40 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d678ff89674077a8361133123a56bc8700c830b7c339108423efa0d30e6ff02`  
		Last Modified: Wed, 05 Aug 2026 00:47:40 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54136181f03cd43c36e50d3f7883080befe5c80df21b172c4ff48fd8d3d87b91`  
		Last Modified: Wed, 05 Aug 2026 00:47:41 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:22c723f0246b27447734f3dd4aafbb7b38ca40fcb1d1eff75373be3db87cad37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2871631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eba8519f2fd46ffd48a522739fc47203da476cf2de23033ace1be8db8a00d0a`

```dockerfile
```

-	Layers:
	-	`sha256:f55820ec338756c58378e1e102efeb9129c5ae3d71ce02a1b446e6c0d04cb575`  
		Last Modified: Wed, 05 Aug 2026 00:47:40 GMT  
		Size: 2.9 MB (2855757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdb6a1c79e34c19541d502b0daa0356ee71b3d01396f66f3ced1e42c62219dab`  
		Last Modified: Wed, 05 Aug 2026 00:47:40 GMT  
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
$ docker pull chronograf@sha256:d24d9916c0ed0a1e518cf6c2ea0547272b0542f4ab366dd20c9268e2ddd8babe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11` - linux; amd64

```console
$ docker pull chronograf@sha256:000159d63d299af411d652c73c117a5e8c9829b9ac2e2332d72aaadb3c56e9ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96337319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1681030e8041c5d200f91b106ac697f8a25a3bd0aa8f9da2699b4024b34d9b5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:45:07 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 00:45:13 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Wed, 05 Aug 2026 00:45:13 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:45:13 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 05 Aug 2026 00:45:13 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 05 Aug 2026 00:45:13 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 05 Aug 2026 00:45:13 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Aug 2026 00:45:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:45:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:45:13 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a754127ba88fde1156049affac3bfb5eb26ce6f7db88ffba0a2abd20bc20dae`  
		Last Modified: Wed, 05 Aug 2026 00:45:28 GMT  
		Size: 7.9 MB (7883370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4899e682b562cd848504519328c18508833a532f3e1ea8be053d1b5048862e33`  
		Last Modified: Wed, 05 Aug 2026 00:45:29 GMT  
		Size: 60.2 MB (60196897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58c936bf5a3357dd2ea34f493ad3a22f50d042bf69b965397bc3d32eec1eccde`  
		Last Modified: Wed, 05 Aug 2026 00:45:27 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35efd783094c2a9e5a54031dec4373217bd5d47e70615bba04bab7b25b9d81eb`  
		Last Modified: Wed, 05 Aug 2026 00:45:27 GMT  
		Size: 11.9 KB (11903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12406125645cf44b14440a9048b85643d253b1c0df42187c08a951fadea102f3`  
		Last Modified: Wed, 05 Aug 2026 00:45:29 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:ffc1997b25f50f7d2b1a6dff3cb7c817e85e7cb4d2857d3ed88ccacd5aa34d61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093ebe6331717a2b6860b174c863fd19524aaaed3c9add749ad609f05ada78cf`

```dockerfile
```

-	Layers:
	-	`sha256:336dd9eef5cad1b4d584c73be7bc20c5e246acf66737e3ed729944608c0b2b28`  
		Last Modified: Wed, 05 Aug 2026 00:45:28 GMT  
		Size: 2.9 MB (2873774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:947e31408b94680bb597afdfd9e6176ec2cd6ba0471cba07b38bc81b9b405590`  
		Last Modified: Wed, 05 Aug 2026 00:45:27 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:6b6b5b5494817b2c28767ba9b56be145224c395870293ebc4314e1d9048115d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93051998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3adf8cafc3b9b4c10c5bfc614eb451e9face92293cf7e38d120713bd01c0162a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:27 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 00:47:34 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Wed, 05 Aug 2026 00:47:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:47:34 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 05 Aug 2026 00:47:34 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 05 Aug 2026 00:47:34 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 05 Aug 2026 00:47:34 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Aug 2026 00:47:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:47:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:47:34 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e5e28f6b808c9ebbfc289e2f368196731a609ec6f0d4a578e65dd4d73acb85`  
		Last Modified: Wed, 05 Aug 2026 00:47:47 GMT  
		Size: 7.7 MB (7699826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2dcf029d4444ee7efd06abd59fb649226ba122d1b817450770ef3ac6df9e32`  
		Last Modified: Wed, 05 Aug 2026 00:47:49 GMT  
		Size: 57.2 MB (57210497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2955069a9f826f780e013364d10d38e1580d46e65ebf2f235b734c6f6c05af3`  
		Last Modified: Wed, 05 Aug 2026 00:47:47 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a40d236f326e946f252982fe35f29e835f31cc634e7ac1c2ccf75b5731e8cb0f`  
		Last Modified: Wed, 05 Aug 2026 00:47:47 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba4695cd33170f3a2e9d55d12bae4bbac095542f8718cec8bd9da540e5b9c033`  
		Last Modified: Wed, 05 Aug 2026 00:47:48 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:916afd666d1a1371560bf12fd34a9d6e8ae61f7b11aa6a73fc67bb2bf150b672
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f18a8b466bfa97e6435f4728db3caf3d85e88ae54b4627a22d0cd6ad73c7f254`

```dockerfile
```

-	Layers:
	-	`sha256:ed939430ccb1d2aac0387940577a3b06c8577fe00c3a70833bd98631dc3c2bb9`  
		Last Modified: Wed, 05 Aug 2026 00:47:47 GMT  
		Size: 2.9 MB (2872988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16bb7b888e92d79d70f930d505d3970ef8b033673c1dda25c4f1f28f5b0b1f4b`  
		Last Modified: Wed, 05 Aug 2026 00:47:47 GMT  
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
$ docker pull chronograf@sha256:d24d9916c0ed0a1e518cf6c2ea0547272b0542f4ab366dd20c9268e2ddd8babe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11.4` - linux; amd64

```console
$ docker pull chronograf@sha256:000159d63d299af411d652c73c117a5e8c9829b9ac2e2332d72aaadb3c56e9ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96337319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1681030e8041c5d200f91b106ac697f8a25a3bd0aa8f9da2699b4024b34d9b5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:45:07 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 00:45:13 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Wed, 05 Aug 2026 00:45:13 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:45:13 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 05 Aug 2026 00:45:13 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 05 Aug 2026 00:45:13 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 05 Aug 2026 00:45:13 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Aug 2026 00:45:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:45:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:45:13 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a754127ba88fde1156049affac3bfb5eb26ce6f7db88ffba0a2abd20bc20dae`  
		Last Modified: Wed, 05 Aug 2026 00:45:28 GMT  
		Size: 7.9 MB (7883370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4899e682b562cd848504519328c18508833a532f3e1ea8be053d1b5048862e33`  
		Last Modified: Wed, 05 Aug 2026 00:45:29 GMT  
		Size: 60.2 MB (60196897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58c936bf5a3357dd2ea34f493ad3a22f50d042bf69b965397bc3d32eec1eccde`  
		Last Modified: Wed, 05 Aug 2026 00:45:27 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35efd783094c2a9e5a54031dec4373217bd5d47e70615bba04bab7b25b9d81eb`  
		Last Modified: Wed, 05 Aug 2026 00:45:27 GMT  
		Size: 11.9 KB (11903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12406125645cf44b14440a9048b85643d253b1c0df42187c08a951fadea102f3`  
		Last Modified: Wed, 05 Aug 2026 00:45:29 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.4` - unknown; unknown

```console
$ docker pull chronograf@sha256:ffc1997b25f50f7d2b1a6dff3cb7c817e85e7cb4d2857d3ed88ccacd5aa34d61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093ebe6331717a2b6860b174c863fd19524aaaed3c9add749ad609f05ada78cf`

```dockerfile
```

-	Layers:
	-	`sha256:336dd9eef5cad1b4d584c73be7bc20c5e246acf66737e3ed729944608c0b2b28`  
		Last Modified: Wed, 05 Aug 2026 00:45:28 GMT  
		Size: 2.9 MB (2873774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:947e31408b94680bb597afdfd9e6176ec2cd6ba0471cba07b38bc81b9b405590`  
		Last Modified: Wed, 05 Aug 2026 00:45:27 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11.4` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:6b6b5b5494817b2c28767ba9b56be145224c395870293ebc4314e1d9048115d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93051998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3adf8cafc3b9b4c10c5bfc614eb451e9face92293cf7e38d120713bd01c0162a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:27 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 00:47:34 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Wed, 05 Aug 2026 00:47:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:47:34 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 05 Aug 2026 00:47:34 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 05 Aug 2026 00:47:34 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 05 Aug 2026 00:47:34 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Aug 2026 00:47:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:47:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:47:34 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e5e28f6b808c9ebbfc289e2f368196731a609ec6f0d4a578e65dd4d73acb85`  
		Last Modified: Wed, 05 Aug 2026 00:47:47 GMT  
		Size: 7.7 MB (7699826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2dcf029d4444ee7efd06abd59fb649226ba122d1b817450770ef3ac6df9e32`  
		Last Modified: Wed, 05 Aug 2026 00:47:49 GMT  
		Size: 57.2 MB (57210497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2955069a9f826f780e013364d10d38e1580d46e65ebf2f235b734c6f6c05af3`  
		Last Modified: Wed, 05 Aug 2026 00:47:47 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a40d236f326e946f252982fe35f29e835f31cc634e7ac1c2ccf75b5731e8cb0f`  
		Last Modified: Wed, 05 Aug 2026 00:47:47 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba4695cd33170f3a2e9d55d12bae4bbac095542f8718cec8bd9da540e5b9c033`  
		Last Modified: Wed, 05 Aug 2026 00:47:48 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.4` - unknown; unknown

```console
$ docker pull chronograf@sha256:916afd666d1a1371560bf12fd34a9d6e8ae61f7b11aa6a73fc67bb2bf150b672
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f18a8b466bfa97e6435f4728db3caf3d85e88ae54b4627a22d0cd6ad73c7f254`

```dockerfile
```

-	Layers:
	-	`sha256:ed939430ccb1d2aac0387940577a3b06c8577fe00c3a70833bd98631dc3c2bb9`  
		Last Modified: Wed, 05 Aug 2026 00:47:47 GMT  
		Size: 2.9 MB (2872988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16bb7b888e92d79d70f930d505d3970ef8b033673c1dda25c4f1f28f5b0b1f4b`  
		Last Modified: Wed, 05 Aug 2026 00:47:47 GMT  
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
$ docker pull chronograf@sha256:d24d9916c0ed0a1e518cf6c2ea0547272b0542f4ab366dd20c9268e2ddd8babe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:000159d63d299af411d652c73c117a5e8c9829b9ac2e2332d72aaadb3c56e9ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96337319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1681030e8041c5d200f91b106ac697f8a25a3bd0aa8f9da2699b4024b34d9b5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:45:07 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 00:45:13 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Wed, 05 Aug 2026 00:45:13 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:45:13 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 05 Aug 2026 00:45:13 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 05 Aug 2026 00:45:13 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 05 Aug 2026 00:45:13 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Aug 2026 00:45:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:45:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:45:13 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a754127ba88fde1156049affac3bfb5eb26ce6f7db88ffba0a2abd20bc20dae`  
		Last Modified: Wed, 05 Aug 2026 00:45:28 GMT  
		Size: 7.9 MB (7883370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4899e682b562cd848504519328c18508833a532f3e1ea8be053d1b5048862e33`  
		Last Modified: Wed, 05 Aug 2026 00:45:29 GMT  
		Size: 60.2 MB (60196897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58c936bf5a3357dd2ea34f493ad3a22f50d042bf69b965397bc3d32eec1eccde`  
		Last Modified: Wed, 05 Aug 2026 00:45:27 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35efd783094c2a9e5a54031dec4373217bd5d47e70615bba04bab7b25b9d81eb`  
		Last Modified: Wed, 05 Aug 2026 00:45:27 GMT  
		Size: 11.9 KB (11903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12406125645cf44b14440a9048b85643d253b1c0df42187c08a951fadea102f3`  
		Last Modified: Wed, 05 Aug 2026 00:45:29 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:ffc1997b25f50f7d2b1a6dff3cb7c817e85e7cb4d2857d3ed88ccacd5aa34d61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093ebe6331717a2b6860b174c863fd19524aaaed3c9add749ad609f05ada78cf`

```dockerfile
```

-	Layers:
	-	`sha256:336dd9eef5cad1b4d584c73be7bc20c5e246acf66737e3ed729944608c0b2b28`  
		Last Modified: Wed, 05 Aug 2026 00:45:28 GMT  
		Size: 2.9 MB (2873774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:947e31408b94680bb597afdfd9e6176ec2cd6ba0471cba07b38bc81b9b405590`  
		Last Modified: Wed, 05 Aug 2026 00:45:27 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:6b6b5b5494817b2c28767ba9b56be145224c395870293ebc4314e1d9048115d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93051998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3adf8cafc3b9b4c10c5bfc614eb451e9face92293cf7e38d120713bd01c0162a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:27 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 00:47:34 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Wed, 05 Aug 2026 00:47:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:47:34 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 05 Aug 2026 00:47:34 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 05 Aug 2026 00:47:34 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 05 Aug 2026 00:47:34 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Aug 2026 00:47:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:47:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:47:34 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e5e28f6b808c9ebbfc289e2f368196731a609ec6f0d4a578e65dd4d73acb85`  
		Last Modified: Wed, 05 Aug 2026 00:47:47 GMT  
		Size: 7.7 MB (7699826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2dcf029d4444ee7efd06abd59fb649226ba122d1b817450770ef3ac6df9e32`  
		Last Modified: Wed, 05 Aug 2026 00:47:49 GMT  
		Size: 57.2 MB (57210497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2955069a9f826f780e013364d10d38e1580d46e65ebf2f235b734c6f6c05af3`  
		Last Modified: Wed, 05 Aug 2026 00:47:47 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a40d236f326e946f252982fe35f29e835f31cc634e7ac1c2ccf75b5731e8cb0f`  
		Last Modified: Wed, 05 Aug 2026 00:47:47 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba4695cd33170f3a2e9d55d12bae4bbac095542f8718cec8bd9da540e5b9c033`  
		Last Modified: Wed, 05 Aug 2026 00:47:48 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:916afd666d1a1371560bf12fd34a9d6e8ae61f7b11aa6a73fc67bb2bf150b672
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f18a8b466bfa97e6435f4728db3caf3d85e88ae54b4627a22d0cd6ad73c7f254`

```dockerfile
```

-	Layers:
	-	`sha256:ed939430ccb1d2aac0387940577a3b06c8577fe00c3a70833bd98631dc3c2bb9`  
		Last Modified: Wed, 05 Aug 2026 00:47:47 GMT  
		Size: 2.9 MB (2872988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16bb7b888e92d79d70f930d505d3970ef8b033673c1dda25c4f1f28f5b0b1f4b`  
		Last Modified: Wed, 05 Aug 2026 00:47:47 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json
