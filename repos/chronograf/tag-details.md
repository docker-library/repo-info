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
$ docker pull chronograf@sha256:ec18b70eb92bc35d3b4ea478a7c9a257560c3c7a24314db1428765e4f49e22f7
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
$ docker pull chronograf@sha256:f072bb5d93888ed091da9099a56746a356938a028ecb11edb63600718b49f800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85025778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22c80f5ca8ec29e6b74e7be0a28c881b6275d4e058768d8d3dc080cbbe6ef5ef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:50:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 00:51:02 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 25 Aug 2026 00:51:02 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:51:02 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 25 Aug 2026 00:51:02 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 25 Aug 2026 00:51:02 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 25 Aug 2026 00:51:02 GMT
VOLUME [/var/lib/chronograf]
# Tue, 25 Aug 2026 00:51:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:51:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:51:02 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d315e64cacb109bdbd384e4705c80ebce21e792b82cafaa109d303424c7f7576`  
		Last Modified: Tue, 25 Aug 2026 00:51:14 GMT  
		Size: 7.9 MB (7900736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c63d6a627037acdbd5e0fec1e86813e761ed8f9183bacf5a0c0d5c96d68cba0e`  
		Last Modified: Tue, 25 Aug 2026 00:51:15 GMT  
		Size: 48.9 MB (48867923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bbad87fc8d94a2b186859d6d3d062bf65b6a52b0fd0f83cf79e81663dbad863`  
		Last Modified: Tue, 25 Aug 2026 00:51:13 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2a0b9128f285902c8ca85295484b28cefdc4c33391a7ef44dbac1ce0b33bca2`  
		Last Modified: Tue, 25 Aug 2026 00:51:13 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63b723c37dc86f12fa66d0cbc37d3604951e1341ae9ded13b7db53e95e70ae43`  
		Last Modified: Tue, 25 Aug 2026 00:51:15 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:5769b802afdb0553d291742de214fb29dd489580589f77663088e2236eb4d5e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2876478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21a0a2242f8feb424cd40057e184bbadfd4eaaf9e74a2c9220f8d72aa47f1f92`

```dockerfile
```

-	Layers:
	-	`sha256:3452682632c4ef9f508c438947c6b98cf839eee035124a6dc0f0cd7627eab794`  
		Last Modified: Tue, 25 Aug 2026 00:51:14 GMT  
		Size: 2.9 MB (2860699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3095b9fb24f609ce59edf5fd361f956595b704055eedddf213c78a8df99edc17`  
		Last Modified: Tue, 25 Aug 2026 00:51:13 GMT  
		Size: 15.8 KB (15779 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:678d1f08122688f8f9c0c8f4ec6b527536ae9b0edc395959a7af66fc0a62b10e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76798985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:666d740ef470bed2c0793942fc26cfe92908e1693ffffdfb441e1827b68eb354`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:24 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 01:20:31 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 05 Aug 2026 01:20:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 01:20:31 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 05 Aug 2026 01:20:31 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 05 Aug 2026 01:20:31 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 05 Aug 2026 01:20:31 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Aug 2026 01:20:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:20:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:20:31 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19cf1c62448caf18b39efb21336805e2b619e9110b66e0542769752b895cb52c`  
		Last Modified: Wed, 05 Aug 2026 01:20:42 GMT  
		Size: 6.5 MB (6514505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d687a710ea37b1854b84b3c2a244e43167ebb171f583468a21b2b0e339137dd6`  
		Last Modified: Wed, 05 Aug 2026 01:20:43 GMT  
		Size: 46.3 MB (46320271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b2ae5cc297c84191af18c5e37fe2b266cf484126f1d7153713f1849bd42a27f`  
		Last Modified: Wed, 05 Aug 2026 01:20:42 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37832f5bb69adc45c283d08ab906c1ab42358d587e4e4256a0720a7bf32d4e6e`  
		Last Modified: Wed, 05 Aug 2026 01:20:42 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313bcba26d2a1586a580c85af15221601903a886f686a94f0bcd226362d5b146`  
		Last Modified: Wed, 05 Aug 2026 01:20:43 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:790feb6c342a5a9b3809265a99a95fda5b2472d7ee03c03305df5e73ef278805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2873641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6ce8c606207fc420e6df311ea1e4ecdaba126bddb7e6399feb3f7725446c64`

```dockerfile
```

-	Layers:
	-	`sha256:30db78b34260437b1c26f06f19c70525b8d538ae1960f1dd7e4090c29af67937`  
		Last Modified: Wed, 05 Aug 2026 01:20:42 GMT  
		Size: 2.9 MB (2857785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:259d51f81a1768430ccb8c975bed8fe970fdc878c6a197e600f4863d36662802`  
		Last Modified: Wed, 05 Aug 2026 01:20:42 GMT  
		Size: 15.9 KB (15856 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:b367eabfe806844c0ddbcb7ca423872e42f73d548b21edc173f83cd31c24557f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81860893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4862d2eb7213560db712da79b7c40302a768d5ba935d321a07195de9157d7f1a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:53:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 00:53:11 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 25 Aug 2026 00:53:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:53:11 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 25 Aug 2026 00:53:11 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 25 Aug 2026 00:53:11 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 25 Aug 2026 00:53:11 GMT
VOLUME [/var/lib/chronograf]
# Tue, 25 Aug 2026 00:53:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:53:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:53:12 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae839ab7a29872de6afafe4b5e394e0f7f70a7424fe8cb1c3f45aa3a9d9702a`  
		Last Modified: Tue, 25 Aug 2026 00:53:22 GMT  
		Size: 7.7 MB (7709755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6dbbab4f33d0a744df6bc114ae8e496b07c8978ec6787e12731320649511a12`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 46.0 MB (46009382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b7c4861938d5be1b16a7879517b5758079b1cf76e7cf2c22cfb315ac0bb5e91`  
		Last Modified: Tue, 25 Aug 2026 00:53:22 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ebf48cfe9333ab66e6cddf968b241fe31edc3fc2be539862d6c0dff1b393e71`  
		Last Modified: Tue, 25 Aug 2026 00:53:22 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee19e93e48d315e59e815765130045585e5c8a5e63423e5d7292574a6d109b35`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:a3dbdae1947470eae7398c82cf35504e2381f02e1651fb0861cb4a6fd20fe73b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2876833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7b54c17f50b74d9f54b30ddb011d1807728a30949a3e8b24d338d9b774598be`

```dockerfile
```

-	Layers:
	-	`sha256:0e11685446c59567b859a160d887b03c06c881e42fa1bdf438c318076bf020e3`  
		Last Modified: Tue, 25 Aug 2026 00:53:22 GMT  
		Size: 2.9 MB (2860960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a3c07e7804d4a52a07a2daa0039252d4e30af78e5158ba35df5d907b560cfed`  
		Last Modified: Tue, 25 Aug 2026 00:53:22 GMT  
		Size: 15.9 KB (15873 bytes)  
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
$ docker pull chronograf@sha256:ec18b70eb92bc35d3b4ea478a7c9a257560c3c7a24314db1428765e4f49e22f7
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
$ docker pull chronograf@sha256:f072bb5d93888ed091da9099a56746a356938a028ecb11edb63600718b49f800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85025778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22c80f5ca8ec29e6b74e7be0a28c881b6275d4e058768d8d3dc080cbbe6ef5ef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:50:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 00:51:02 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 25 Aug 2026 00:51:02 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:51:02 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 25 Aug 2026 00:51:02 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 25 Aug 2026 00:51:02 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 25 Aug 2026 00:51:02 GMT
VOLUME [/var/lib/chronograf]
# Tue, 25 Aug 2026 00:51:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:51:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:51:02 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d315e64cacb109bdbd384e4705c80ebce21e792b82cafaa109d303424c7f7576`  
		Last Modified: Tue, 25 Aug 2026 00:51:14 GMT  
		Size: 7.9 MB (7900736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c63d6a627037acdbd5e0fec1e86813e761ed8f9183bacf5a0c0d5c96d68cba0e`  
		Last Modified: Tue, 25 Aug 2026 00:51:15 GMT  
		Size: 48.9 MB (48867923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bbad87fc8d94a2b186859d6d3d062bf65b6a52b0fd0f83cf79e81663dbad863`  
		Last Modified: Tue, 25 Aug 2026 00:51:13 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2a0b9128f285902c8ca85295484b28cefdc4c33391a7ef44dbac1ce0b33bca2`  
		Last Modified: Tue, 25 Aug 2026 00:51:13 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63b723c37dc86f12fa66d0cbc37d3604951e1341ae9ded13b7db53e95e70ae43`  
		Last Modified: Tue, 25 Aug 2026 00:51:15 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:5769b802afdb0553d291742de214fb29dd489580589f77663088e2236eb4d5e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2876478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21a0a2242f8feb424cd40057e184bbadfd4eaaf9e74a2c9220f8d72aa47f1f92`

```dockerfile
```

-	Layers:
	-	`sha256:3452682632c4ef9f508c438947c6b98cf839eee035124a6dc0f0cd7627eab794`  
		Last Modified: Tue, 25 Aug 2026 00:51:14 GMT  
		Size: 2.9 MB (2860699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3095b9fb24f609ce59edf5fd361f956595b704055eedddf213c78a8df99edc17`  
		Last Modified: Tue, 25 Aug 2026 00:51:13 GMT  
		Size: 15.8 KB (15779 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10.9` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:678d1f08122688f8f9c0c8f4ec6b527536ae9b0edc395959a7af66fc0a62b10e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76798985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:666d740ef470bed2c0793942fc26cfe92908e1693ffffdfb441e1827b68eb354`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:24 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 01:20:31 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 05 Aug 2026 01:20:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 01:20:31 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 05 Aug 2026 01:20:31 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 05 Aug 2026 01:20:31 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 05 Aug 2026 01:20:31 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Aug 2026 01:20:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:20:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:20:31 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19cf1c62448caf18b39efb21336805e2b619e9110b66e0542769752b895cb52c`  
		Last Modified: Wed, 05 Aug 2026 01:20:42 GMT  
		Size: 6.5 MB (6514505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d687a710ea37b1854b84b3c2a244e43167ebb171f583468a21b2b0e339137dd6`  
		Last Modified: Wed, 05 Aug 2026 01:20:43 GMT  
		Size: 46.3 MB (46320271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b2ae5cc297c84191af18c5e37fe2b266cf484126f1d7153713f1849bd42a27f`  
		Last Modified: Wed, 05 Aug 2026 01:20:42 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37832f5bb69adc45c283d08ab906c1ab42358d587e4e4256a0720a7bf32d4e6e`  
		Last Modified: Wed, 05 Aug 2026 01:20:42 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313bcba26d2a1586a580c85af15221601903a886f686a94f0bcd226362d5b146`  
		Last Modified: Wed, 05 Aug 2026 01:20:43 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:790feb6c342a5a9b3809265a99a95fda5b2472d7ee03c03305df5e73ef278805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2873641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6ce8c606207fc420e6df311ea1e4ecdaba126bddb7e6399feb3f7725446c64`

```dockerfile
```

-	Layers:
	-	`sha256:30db78b34260437b1c26f06f19c70525b8d538ae1960f1dd7e4090c29af67937`  
		Last Modified: Wed, 05 Aug 2026 01:20:42 GMT  
		Size: 2.9 MB (2857785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:259d51f81a1768430ccb8c975bed8fe970fdc878c6a197e600f4863d36662802`  
		Last Modified: Wed, 05 Aug 2026 01:20:42 GMT  
		Size: 15.9 KB (15856 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10.9` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:b367eabfe806844c0ddbcb7ca423872e42f73d548b21edc173f83cd31c24557f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81860893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4862d2eb7213560db712da79b7c40302a768d5ba935d321a07195de9157d7f1a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:53:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 00:53:11 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 25 Aug 2026 00:53:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:53:11 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 25 Aug 2026 00:53:11 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 25 Aug 2026 00:53:11 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 25 Aug 2026 00:53:11 GMT
VOLUME [/var/lib/chronograf]
# Tue, 25 Aug 2026 00:53:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:53:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:53:12 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae839ab7a29872de6afafe4b5e394e0f7f70a7424fe8cb1c3f45aa3a9d9702a`  
		Last Modified: Tue, 25 Aug 2026 00:53:22 GMT  
		Size: 7.7 MB (7709755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6dbbab4f33d0a744df6bc114ae8e496b07c8978ec6787e12731320649511a12`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 46.0 MB (46009382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b7c4861938d5be1b16a7879517b5758079b1cf76e7cf2c22cfb315ac0bb5e91`  
		Last Modified: Tue, 25 Aug 2026 00:53:22 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ebf48cfe9333ab66e6cddf968b241fe31edc3fc2be539862d6c0dff1b393e71`  
		Last Modified: Tue, 25 Aug 2026 00:53:22 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee19e93e48d315e59e815765130045585e5c8a5e63423e5d7292574a6d109b35`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:a3dbdae1947470eae7398c82cf35504e2381f02e1651fb0861cb4a6fd20fe73b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2876833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7b54c17f50b74d9f54b30ddb011d1807728a30949a3e8b24d338d9b774598be`

```dockerfile
```

-	Layers:
	-	`sha256:0e11685446c59567b859a160d887b03c06c881e42fa1bdf438c318076bf020e3`  
		Last Modified: Tue, 25 Aug 2026 00:53:22 GMT  
		Size: 2.9 MB (2860960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a3c07e7804d4a52a07a2daa0039252d4e30af78e5158ba35df5d907b560cfed`  
		Last Modified: Tue, 25 Aug 2026 00:53:22 GMT  
		Size: 15.9 KB (15873 bytes)  
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
$ docker pull chronograf@sha256:1aa585346868ef0859c507b2c8544a175ad308024765929f5df5b64a9679031d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11` - linux; amd64

```console
$ docker pull chronograf@sha256:91d1bc450462e134e8c9c745deef90897c3076ec955a822db729ac04748e783b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.4 MB (96354678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495f3ac7b07bf66dfc73e8f2cdf0d7739a2620f1dd4af250b73ba4dc80c535ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:04 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 00:51:10 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Tue, 25 Aug 2026 00:51:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:51:10 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 25 Aug 2026 00:51:10 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 25 Aug 2026 00:51:10 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 25 Aug 2026 00:51:10 GMT
VOLUME [/var/lib/chronograf]
# Tue, 25 Aug 2026 00:51:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:51:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:51:10 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3407de91a6aa469bca4f509206c4c4bc419dc732b28c0a9a4aa6075c59d62f6`  
		Last Modified: Tue, 25 Aug 2026 00:51:24 GMT  
		Size: 7.9 MB (7900684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d8ee441e11d1644cf498327aacb33a2d382375c64149760f36cfbed64a6677`  
		Last Modified: Tue, 25 Aug 2026 00:51:25 GMT  
		Size: 60.2 MB (60196862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a64a7c91a85dac550dbc649871b901a1b57255b2ba5811404f3961c253b77ace`  
		Last Modified: Tue, 25 Aug 2026 00:51:23 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f36886e803c796e78956eb2455d94c7904e50cf1f9ba60bf5f3e444fc66239e`  
		Last Modified: Tue, 25 Aug 2026 00:51:24 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7288857c3358e4a5d3be86ab58bccdd66c489e05c1ec02646e82cb27d4f66421`  
		Last Modified: Tue, 25 Aug 2026 00:51:25 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:cf3cbcb3ff000aea81db4844eec0d106cfd238047d727885af6b2958c9e33816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2895062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bcb81677cc8cfa36725d0ec7bd7d6e42e9b9c4707df9d056fcbc98e70c33d2e`

```dockerfile
```

-	Layers:
	-	`sha256:7d243252cab205fe4f05765306d4e4dad995ba54ead350621576e961c3c2bc27`  
		Last Modified: Tue, 25 Aug 2026 00:51:24 GMT  
		Size: 2.9 MB (2878977 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:381d2f854a5bf1f8995c05065b6dc2bd374decc45ec827bfd5be4ea7e11bdfb7`  
		Last Modified: Tue, 25 Aug 2026 00:51:24 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:ffb3334aef51cf13f37536723764c428be116bacdfe65a600e4d0146e69ca47f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93061771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eae633872acdc3ca6d1392cbde02bd759b7af9d63d4170cd3c30b5978b1a3be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:53:07 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 00:53:13 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Tue, 25 Aug 2026 00:53:13 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:53:13 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 25 Aug 2026 00:53:13 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 25 Aug 2026 00:53:13 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 25 Aug 2026 00:53:13 GMT
VOLUME [/var/lib/chronograf]
# Tue, 25 Aug 2026 00:53:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:53:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:53:13 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99297681e0dd07f2ba0f1f39207553743f8a841b33b7d3c651a287209d3676d`  
		Last Modified: Tue, 25 Aug 2026 00:53:27 GMT  
		Size: 7.7 MB (7709528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a3896a5ecafd661a446eb6f6273c43caaac1ff710b1efb83c5984dfe20bc73`  
		Last Modified: Tue, 25 Aug 2026 00:53:28 GMT  
		Size: 57.2 MB (57210492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89d1433aec05ae7a5402425be26aa8932f97a5555b2bbcad701dcffc6688369f`  
		Last Modified: Tue, 25 Aug 2026 00:53:26 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a05482c4550e31f974518ae4f00b9cee27371c946106e76b62296d63d0d26571`  
		Last Modified: Tue, 25 Aug 2026 00:53:26 GMT  
		Size: 11.9 KB (11903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde8d6ccdedb1b2d2cd137654b84342eb52d06305d1db58ead20fc7f5d99d2d6`  
		Last Modified: Tue, 25 Aug 2026 00:53:28 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:4c81879ced2234c6a0999e30c3a4aec512fd55dda0d53a18fb6b66dbf8b67da3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1964fb9fbb6def69c9635029b69d9436d651bcb5c5e53a6cf3aaee3f9488fe2`

```dockerfile
```

-	Layers:
	-	`sha256:d1867608325e7748778db383de5da5acff7f324a3b049a60ac75d3ddb0200a9e`  
		Last Modified: Tue, 25 Aug 2026 00:53:27 GMT  
		Size: 2.9 MB (2878191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c2f264265152b0cf3871e7be0258882e6aeaa83e06d78e574b5258f72bf043f`  
		Last Modified: Tue, 25 Aug 2026 00:53:27 GMT  
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
$ docker pull chronograf@sha256:1aa585346868ef0859c507b2c8544a175ad308024765929f5df5b64a9679031d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11.4` - linux; amd64

```console
$ docker pull chronograf@sha256:91d1bc450462e134e8c9c745deef90897c3076ec955a822db729ac04748e783b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.4 MB (96354678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495f3ac7b07bf66dfc73e8f2cdf0d7739a2620f1dd4af250b73ba4dc80c535ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:04 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 00:51:10 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Tue, 25 Aug 2026 00:51:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:51:10 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 25 Aug 2026 00:51:10 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 25 Aug 2026 00:51:10 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 25 Aug 2026 00:51:10 GMT
VOLUME [/var/lib/chronograf]
# Tue, 25 Aug 2026 00:51:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:51:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:51:10 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3407de91a6aa469bca4f509206c4c4bc419dc732b28c0a9a4aa6075c59d62f6`  
		Last Modified: Tue, 25 Aug 2026 00:51:24 GMT  
		Size: 7.9 MB (7900684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d8ee441e11d1644cf498327aacb33a2d382375c64149760f36cfbed64a6677`  
		Last Modified: Tue, 25 Aug 2026 00:51:25 GMT  
		Size: 60.2 MB (60196862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a64a7c91a85dac550dbc649871b901a1b57255b2ba5811404f3961c253b77ace`  
		Last Modified: Tue, 25 Aug 2026 00:51:23 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f36886e803c796e78956eb2455d94c7904e50cf1f9ba60bf5f3e444fc66239e`  
		Last Modified: Tue, 25 Aug 2026 00:51:24 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7288857c3358e4a5d3be86ab58bccdd66c489e05c1ec02646e82cb27d4f66421`  
		Last Modified: Tue, 25 Aug 2026 00:51:25 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.4` - unknown; unknown

```console
$ docker pull chronograf@sha256:cf3cbcb3ff000aea81db4844eec0d106cfd238047d727885af6b2958c9e33816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2895062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bcb81677cc8cfa36725d0ec7bd7d6e42e9b9c4707df9d056fcbc98e70c33d2e`

```dockerfile
```

-	Layers:
	-	`sha256:7d243252cab205fe4f05765306d4e4dad995ba54ead350621576e961c3c2bc27`  
		Last Modified: Tue, 25 Aug 2026 00:51:24 GMT  
		Size: 2.9 MB (2878977 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:381d2f854a5bf1f8995c05065b6dc2bd374decc45ec827bfd5be4ea7e11bdfb7`  
		Last Modified: Tue, 25 Aug 2026 00:51:24 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11.4` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:ffb3334aef51cf13f37536723764c428be116bacdfe65a600e4d0146e69ca47f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93061771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eae633872acdc3ca6d1392cbde02bd759b7af9d63d4170cd3c30b5978b1a3be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:53:07 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 00:53:13 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Tue, 25 Aug 2026 00:53:13 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:53:13 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 25 Aug 2026 00:53:13 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 25 Aug 2026 00:53:13 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 25 Aug 2026 00:53:13 GMT
VOLUME [/var/lib/chronograf]
# Tue, 25 Aug 2026 00:53:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:53:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:53:13 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99297681e0dd07f2ba0f1f39207553743f8a841b33b7d3c651a287209d3676d`  
		Last Modified: Tue, 25 Aug 2026 00:53:27 GMT  
		Size: 7.7 MB (7709528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a3896a5ecafd661a446eb6f6273c43caaac1ff710b1efb83c5984dfe20bc73`  
		Last Modified: Tue, 25 Aug 2026 00:53:28 GMT  
		Size: 57.2 MB (57210492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89d1433aec05ae7a5402425be26aa8932f97a5555b2bbcad701dcffc6688369f`  
		Last Modified: Tue, 25 Aug 2026 00:53:26 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a05482c4550e31f974518ae4f00b9cee27371c946106e76b62296d63d0d26571`  
		Last Modified: Tue, 25 Aug 2026 00:53:26 GMT  
		Size: 11.9 KB (11903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde8d6ccdedb1b2d2cd137654b84342eb52d06305d1db58ead20fc7f5d99d2d6`  
		Last Modified: Tue, 25 Aug 2026 00:53:28 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.4` - unknown; unknown

```console
$ docker pull chronograf@sha256:4c81879ced2234c6a0999e30c3a4aec512fd55dda0d53a18fb6b66dbf8b67da3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1964fb9fbb6def69c9635029b69d9436d651bcb5c5e53a6cf3aaee3f9488fe2`

```dockerfile
```

-	Layers:
	-	`sha256:d1867608325e7748778db383de5da5acff7f324a3b049a60ac75d3ddb0200a9e`  
		Last Modified: Tue, 25 Aug 2026 00:53:27 GMT  
		Size: 2.9 MB (2878191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c2f264265152b0cf3871e7be0258882e6aeaa83e06d78e574b5258f72bf043f`  
		Last Modified: Tue, 25 Aug 2026 00:53:27 GMT  
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
$ docker pull chronograf@sha256:1aa585346868ef0859c507b2c8544a175ad308024765929f5df5b64a9679031d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:91d1bc450462e134e8c9c745deef90897c3076ec955a822db729ac04748e783b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.4 MB (96354678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495f3ac7b07bf66dfc73e8f2cdf0d7739a2620f1dd4af250b73ba4dc80c535ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:04 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 00:51:10 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Tue, 25 Aug 2026 00:51:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:51:10 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 25 Aug 2026 00:51:10 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 25 Aug 2026 00:51:10 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 25 Aug 2026 00:51:10 GMT
VOLUME [/var/lib/chronograf]
# Tue, 25 Aug 2026 00:51:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:51:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:51:10 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3407de91a6aa469bca4f509206c4c4bc419dc732b28c0a9a4aa6075c59d62f6`  
		Last Modified: Tue, 25 Aug 2026 00:51:24 GMT  
		Size: 7.9 MB (7900684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d8ee441e11d1644cf498327aacb33a2d382375c64149760f36cfbed64a6677`  
		Last Modified: Tue, 25 Aug 2026 00:51:25 GMT  
		Size: 60.2 MB (60196862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a64a7c91a85dac550dbc649871b901a1b57255b2ba5811404f3961c253b77ace`  
		Last Modified: Tue, 25 Aug 2026 00:51:23 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f36886e803c796e78956eb2455d94c7904e50cf1f9ba60bf5f3e444fc66239e`  
		Last Modified: Tue, 25 Aug 2026 00:51:24 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7288857c3358e4a5d3be86ab58bccdd66c489e05c1ec02646e82cb27d4f66421`  
		Last Modified: Tue, 25 Aug 2026 00:51:25 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:cf3cbcb3ff000aea81db4844eec0d106cfd238047d727885af6b2958c9e33816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2895062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bcb81677cc8cfa36725d0ec7bd7d6e42e9b9c4707df9d056fcbc98e70c33d2e`

```dockerfile
```

-	Layers:
	-	`sha256:7d243252cab205fe4f05765306d4e4dad995ba54ead350621576e961c3c2bc27`  
		Last Modified: Tue, 25 Aug 2026 00:51:24 GMT  
		Size: 2.9 MB (2878977 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:381d2f854a5bf1f8995c05065b6dc2bd374decc45ec827bfd5be4ea7e11bdfb7`  
		Last Modified: Tue, 25 Aug 2026 00:51:24 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:ffb3334aef51cf13f37536723764c428be116bacdfe65a600e4d0146e69ca47f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93061771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eae633872acdc3ca6d1392cbde02bd759b7af9d63d4170cd3c30b5978b1a3be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:53:07 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 00:53:13 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Tue, 25 Aug 2026 00:53:13 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:53:13 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 25 Aug 2026 00:53:13 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 25 Aug 2026 00:53:13 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 25 Aug 2026 00:53:13 GMT
VOLUME [/var/lib/chronograf]
# Tue, 25 Aug 2026 00:53:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:53:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:53:13 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99297681e0dd07f2ba0f1f39207553743f8a841b33b7d3c651a287209d3676d`  
		Last Modified: Tue, 25 Aug 2026 00:53:27 GMT  
		Size: 7.7 MB (7709528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a3896a5ecafd661a446eb6f6273c43caaac1ff710b1efb83c5984dfe20bc73`  
		Last Modified: Tue, 25 Aug 2026 00:53:28 GMT  
		Size: 57.2 MB (57210492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89d1433aec05ae7a5402425be26aa8932f97a5555b2bbcad701dcffc6688369f`  
		Last Modified: Tue, 25 Aug 2026 00:53:26 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a05482c4550e31f974518ae4f00b9cee27371c946106e76b62296d63d0d26571`  
		Last Modified: Tue, 25 Aug 2026 00:53:26 GMT  
		Size: 11.9 KB (11903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde8d6ccdedb1b2d2cd137654b84342eb52d06305d1db58ead20fc7f5d99d2d6`  
		Last Modified: Tue, 25 Aug 2026 00:53:28 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:4c81879ced2234c6a0999e30c3a4aec512fd55dda0d53a18fb6b66dbf8b67da3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1964fb9fbb6def69c9635029b69d9436d651bcb5c5e53a6cf3aaee3f9488fe2`

```dockerfile
```

-	Layers:
	-	`sha256:d1867608325e7748778db383de5da5acff7f324a3b049a60ac75d3ddb0200a9e`  
		Last Modified: Tue, 25 Aug 2026 00:53:27 GMT  
		Size: 2.9 MB (2878191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c2f264265152b0cf3871e7be0258882e6aeaa83e06d78e574b5258f72bf043f`  
		Last Modified: Tue, 25 Aug 2026 00:53:27 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json
