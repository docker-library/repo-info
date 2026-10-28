<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.10`](#chronograf110)
-	[`chronograf:1.10-alpine`](#chronograf110-alpine)
-	[`chronograf:1.10.9`](#chronograf1109)
-	[`chronograf:1.10.9-alpine`](#chronograf1109-alpine)
-	[`chronograf:1.11`](#chronograf111)
-	[`chronograf:1.11-alpine`](#chronograf111-alpine)
-	[`chronograf:1.11.6`](#chronograf1116)
-	[`chronograf:1.11.6-alpine`](#chronograf1116-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.10`

```console
$ docker pull chronograf@sha256:b1ba514b3e5f4b8d25958962db7f3102fdb625208708233ad2d6d292729f69ad
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
$ docker pull chronograf@sha256:c102740bb2a32b3f9deceadf8b08d825392cde17af604d7a82aa576fa5e17456
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84844195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f84aeed2a70fd6658bbfa1de6817876aad05485db32f226a9e68d37debb8467`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:39:52 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 01:40:00 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 28 Oct 2026 01:40:00 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:40:00 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 28 Oct 2026 01:40:00 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 28 Oct 2026 01:40:00 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 28 Oct 2026 01:40:00 GMT
VOLUME [/var/lib/chronograf]
# Wed, 28 Oct 2026 01:40:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 01:40:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Oct 2026 01:40:00 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58aaeea5c38eec41c80a6c10a19a25253be738b15e101c6e5d596a6e87841fb8`  
		Last Modified: Wed, 28 Oct 2026 01:40:12 GMT  
		Size: 7.7 MB (7704285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34609ebedffab6c4988d90c7db89fe304d351477c071b5d1bd2fcdf7707179b7`  
		Last Modified: Wed, 28 Oct 2026 01:40:13 GMT  
		Size: 48.9 MB (48868011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea899133b2dac12fed8e3acd79cc1dfd1f5dd738a8adfebca42c2961e112f857`  
		Last Modified: Wed, 28 Oct 2026 01:40:11 GMT  
		Size: 12.2 KB (12243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a08f8d43d007631d31681b49f612404864ff87b01e4e597e82ff9e6fe57839`  
		Last Modified: Wed, 28 Oct 2026 01:40:11 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0e435550c2dbf4c8b49ab4d797ae6d6a57856733f74a8ef0cf85405d7be86e`  
		Last Modified: Wed, 28 Oct 2026 01:40:12 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:1197f887fce1d42e031c28264f2d4fd4dd0acf243529738fcf2b21202af52db5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7176067bd820197cdefb8d88a9d594a8109c7d6fc114161e57a3e289cc93a4bc`

```dockerfile
```

-	Layers:
	-	`sha256:6672f5af8be6be6ffc48b1eb96b431112bd6b66232ca934220750594085c1443`  
		Last Modified: Wed, 28 Oct 2026 01:40:12 GMT  
		Size: 2.9 MB (2859496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fd99a807a54bfa368c854235fd14f020419373076141c12469e48dc401fd4c6`  
		Last Modified: Wed, 28 Oct 2026 01:40:11 GMT  
		Size: 15.8 KB (15779 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:cb88980b0deb52bcf286c681ed26d8dd46cc833d8e1daa298a4a5ff0394483d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76636914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b8f7c3c1594441c617f0387415f517b29db2c30573d8461e41adef6d4003ef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:41 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 02:21:51 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 28 Oct 2026 02:21:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 02:21:51 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 28 Oct 2026 02:21:51 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 28 Oct 2026 02:21:51 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 28 Oct 2026 02:21:51 GMT
VOLUME [/var/lib/chronograf]
# Wed, 28 Oct 2026 02:21:51 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 02:21:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Oct 2026 02:21:51 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9038ad1d3d2fc125eb77ea5f4d76c7092d39cc74c9a59fa72afa0fa7571bf3b`  
		Last Modified: Wed, 28 Oct 2026 02:22:01 GMT  
		Size: 6.3 MB (6331982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af966ba8d373797f14fecd76da1b0b3486e19fef43e4acf07d5942574933c17f`  
		Last Modified: Wed, 28 Oct 2026 02:22:02 GMT  
		Size: 46.3 MB (46319510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfbeaa5e4333f5823d5849ce4f3ce32eb848ca5b4c41eb8dd85650fe1019ca29`  
		Last Modified: Wed, 28 Oct 2026 02:22:01 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661624d223172f3c48c9ca873eede610068c53c14b651d2d5b3631d37d50ea98`  
		Last Modified: Wed, 28 Oct 2026 02:22:01 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb5d72ec19a711beb17fce7c5fd7bfd0633dc6b92428a0757b3d1aac5a02588e`  
		Last Modified: Wed, 28 Oct 2026 02:22:02 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:0ea811242373d92c4c1334d2066470eed8383bd0881912555761c07b29ae6379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:999ce3a0279e4d1c22a3d38dbaa23ed32ae5353c176e094eebcb9bc94a5c75d8`

```dockerfile
```

-	Layers:
	-	`sha256:42876c88e1cefa77e4b9293175742ca2b65ba2fb28129cddb05093589b445f9e`  
		Last Modified: Wed, 28 Oct 2026 02:22:01 GMT  
		Size: 2.9 MB (2861785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f9f3788a295bf69f4dcfef849aabb447eec6886e994c316a0f4fe131374f30e`  
		Last Modified: Wed, 28 Oct 2026 02:22:01 GMT  
		Size: 15.9 KB (15856 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:72ef14e2aefe7d7fe9fa8b04f785f4ed977b24aa1a9c869f4d5af0b7bb01aa7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81686987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fea786587417ddd6b8cd236a5baa79ac34ccea9857d7a5d502d624201090ac3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:16 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 01:43:23 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 28 Oct 2026 01:43:23 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:43:23 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 28 Oct 2026 01:43:23 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 28 Oct 2026 01:43:23 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 28 Oct 2026 01:43:23 GMT
VOLUME [/var/lib/chronograf]
# Wed, 28 Oct 2026 01:43:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 01:43:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Oct 2026 01:43:23 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcbda8f7394da8b4d1a6191bf06c2f5c41d6e6bcf24d8caec515d35369674331`  
		Last Modified: Wed, 28 Oct 2026 01:43:34 GMT  
		Size: 7.5 MB (7515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3381c35a8e6079480bd9f37eae8b88e736f5a9214796d2065a83f72dacb417`  
		Last Modified: Wed, 28 Oct 2026 01:43:35 GMT  
		Size: 46.0 MB (46009362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b1ca2735e134fef0b5b84dc2fef0e477f59d100015e72297d11b0a2e619540e`  
		Last Modified: Wed, 28 Oct 2026 01:43:34 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bcaf62c08c80068b9fd2fcdd1e8372ea425700a4ebc4fe11948c311f77b2caa`  
		Last Modified: Wed, 28 Oct 2026 01:43:34 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2725ce888412f74a306b2bc232d44058a9f542eb956867785563e536e0c3454`  
		Last Modified: Wed, 28 Oct 2026 01:43:35 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:b3f1c3b570a1673fdb3bfb4762b511e7fd07fe661149239760d925191659889a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69ce2141e2635f714323266e174c95e0139f41ba18b2a9ba9ca9124ac006a165`

```dockerfile
```

-	Layers:
	-	`sha256:4d46354fd22bc8df46e4f0529ea6ab2a41b6ea0ac6dc500f5060c64c9b01157a`  
		Last Modified: Wed, 28 Oct 2026 01:43:34 GMT  
		Size: 2.9 MB (2859757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8a4fb8d1114b8323e803a36997be5cb95ba101c3622e26e6a7226157f527a8f`  
		Last Modified: Wed, 28 Oct 2026 01:43:34 GMT  
		Size: 15.9 KB (15874 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.10-alpine`

```console
$ docker pull chronograf@sha256:8ecb8d9958f1684618dbde43f481735bb1c76feb4d336073a528497e3087f70c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.10-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:774e693bba0cc83d1157f1611ed0661d1096d53805b11e8cd008d02af640f6b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36359781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:580f9bbf9f02632ebe940d44cc7a25cdea4e08a5a5805fd20d850f149ce949e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:56:42 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 22:56:42 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 22:56:46 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 21 Oct 2026 22:56:46 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Wed, 21 Oct 2026 22:56:46 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 21 Oct 2026 22:56:46 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 21 Oct 2026 22:56:46 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 21 Oct 2026 22:56:46 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Oct 2026 22:56:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:56:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 22:56:46 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f27d2d9cf4f1430155a6ce8026ee386edff95e39bfe3085b2bde3fad01d3e5e`  
		Last Modified: Wed, 21 Oct 2026 22:56:54 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d98748497c86e91f95d57715423fd012e42199db9ab6f1e1db3de96695bb4672`  
		Last Modified: Wed, 21 Oct 2026 22:56:54 GMT  
		Size: 293.8 KB (293841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b676390b54a4a3501cd25c044e6052ad9e1e3f41fa33653d7e52469dfc8b79d7`  
		Last Modified: Wed, 21 Oct 2026 22:56:55 GMT  
		Size: 32.2 MB (32188106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4298eab6f7f883868588438148032daa8c65c96cdaa12f4597bbebfa57a0f6dd`  
		Last Modified: Wed, 21 Oct 2026 22:56:54 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64beabf5cf9137f51607502438fd072a17c353d652a242606c2f64ed6c9e963`  
		Last Modified: Wed, 21 Oct 2026 22:56:55 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0673a7f2e39f046433c201ffe2c811525c90cc2101c02c3c078b2e0c1f4939e2`  
		Last Modified: Wed, 21 Oct 2026 22:56:55 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:2a3df6153821a32666ca1a52d086ae626e64417befc0b65ae1d9192c178720de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 KB (251939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d17bd78802b63540e22e4698497ab294ed2432e02d8222a539cd012b458cc4a`

```dockerfile
```

-	Layers:
	-	`sha256:f2e116c154063039bba0735e0cf03bb9e4b70141a79102b95bdc1b240e08f233`  
		Last Modified: Wed, 21 Oct 2026 22:56:54 GMT  
		Size: 234.4 KB (234433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6527f1d15a165cfd8594ec4ce3ff950c9bb98422c873e45f6378eaf287bbe0f9`  
		Last Modified: Wed, 21 Oct 2026 22:56:54 GMT  
		Size: 17.5 KB (17506 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.10.9`

```console
$ docker pull chronograf@sha256:b1ba514b3e5f4b8d25958962db7f3102fdb625208708233ad2d6d292729f69ad
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
$ docker pull chronograf@sha256:c102740bb2a32b3f9deceadf8b08d825392cde17af604d7a82aa576fa5e17456
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84844195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f84aeed2a70fd6658bbfa1de6817876aad05485db32f226a9e68d37debb8467`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:39:52 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 01:40:00 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 28 Oct 2026 01:40:00 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:40:00 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 28 Oct 2026 01:40:00 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 28 Oct 2026 01:40:00 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 28 Oct 2026 01:40:00 GMT
VOLUME [/var/lib/chronograf]
# Wed, 28 Oct 2026 01:40:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 01:40:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Oct 2026 01:40:00 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58aaeea5c38eec41c80a6c10a19a25253be738b15e101c6e5d596a6e87841fb8`  
		Last Modified: Wed, 28 Oct 2026 01:40:12 GMT  
		Size: 7.7 MB (7704285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34609ebedffab6c4988d90c7db89fe304d351477c071b5d1bd2fcdf7707179b7`  
		Last Modified: Wed, 28 Oct 2026 01:40:13 GMT  
		Size: 48.9 MB (48868011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea899133b2dac12fed8e3acd79cc1dfd1f5dd738a8adfebca42c2961e112f857`  
		Last Modified: Wed, 28 Oct 2026 01:40:11 GMT  
		Size: 12.2 KB (12243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a08f8d43d007631d31681b49f612404864ff87b01e4e597e82ff9e6fe57839`  
		Last Modified: Wed, 28 Oct 2026 01:40:11 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0e435550c2dbf4c8b49ab4d797ae6d6a57856733f74a8ef0cf85405d7be86e`  
		Last Modified: Wed, 28 Oct 2026 01:40:12 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:1197f887fce1d42e031c28264f2d4fd4dd0acf243529738fcf2b21202af52db5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7176067bd820197cdefb8d88a9d594a8109c7d6fc114161e57a3e289cc93a4bc`

```dockerfile
```

-	Layers:
	-	`sha256:6672f5af8be6be6ffc48b1eb96b431112bd6b66232ca934220750594085c1443`  
		Last Modified: Wed, 28 Oct 2026 01:40:12 GMT  
		Size: 2.9 MB (2859496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fd99a807a54bfa368c854235fd14f020419373076141c12469e48dc401fd4c6`  
		Last Modified: Wed, 28 Oct 2026 01:40:11 GMT  
		Size: 15.8 KB (15779 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10.9` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:cb88980b0deb52bcf286c681ed26d8dd46cc833d8e1daa298a4a5ff0394483d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76636914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b8f7c3c1594441c617f0387415f517b29db2c30573d8461e41adef6d4003ef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:41 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 02:21:51 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 28 Oct 2026 02:21:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 02:21:51 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 28 Oct 2026 02:21:51 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 28 Oct 2026 02:21:51 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 28 Oct 2026 02:21:51 GMT
VOLUME [/var/lib/chronograf]
# Wed, 28 Oct 2026 02:21:51 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 02:21:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Oct 2026 02:21:51 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9038ad1d3d2fc125eb77ea5f4d76c7092d39cc74c9a59fa72afa0fa7571bf3b`  
		Last Modified: Wed, 28 Oct 2026 02:22:01 GMT  
		Size: 6.3 MB (6331982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af966ba8d373797f14fecd76da1b0b3486e19fef43e4acf07d5942574933c17f`  
		Last Modified: Wed, 28 Oct 2026 02:22:02 GMT  
		Size: 46.3 MB (46319510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfbeaa5e4333f5823d5849ce4f3ce32eb848ca5b4c41eb8dd85650fe1019ca29`  
		Last Modified: Wed, 28 Oct 2026 02:22:01 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661624d223172f3c48c9ca873eede610068c53c14b651d2d5b3631d37d50ea98`  
		Last Modified: Wed, 28 Oct 2026 02:22:01 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb5d72ec19a711beb17fce7c5fd7bfd0633dc6b92428a0757b3d1aac5a02588e`  
		Last Modified: Wed, 28 Oct 2026 02:22:02 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:0ea811242373d92c4c1334d2066470eed8383bd0881912555761c07b29ae6379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:999ce3a0279e4d1c22a3d38dbaa23ed32ae5353c176e094eebcb9bc94a5c75d8`

```dockerfile
```

-	Layers:
	-	`sha256:42876c88e1cefa77e4b9293175742ca2b65ba2fb28129cddb05093589b445f9e`  
		Last Modified: Wed, 28 Oct 2026 02:22:01 GMT  
		Size: 2.9 MB (2861785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f9f3788a295bf69f4dcfef849aabb447eec6886e994c316a0f4fe131374f30e`  
		Last Modified: Wed, 28 Oct 2026 02:22:01 GMT  
		Size: 15.9 KB (15856 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10.9` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:72ef14e2aefe7d7fe9fa8b04f785f4ed977b24aa1a9c869f4d5af0b7bb01aa7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81686987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fea786587417ddd6b8cd236a5baa79ac34ccea9857d7a5d502d624201090ac3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:16 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 01:43:23 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 28 Oct 2026 01:43:23 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:43:23 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 28 Oct 2026 01:43:23 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 28 Oct 2026 01:43:23 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 28 Oct 2026 01:43:23 GMT
VOLUME [/var/lib/chronograf]
# Wed, 28 Oct 2026 01:43:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 01:43:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Oct 2026 01:43:23 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcbda8f7394da8b4d1a6191bf06c2f5c41d6e6bcf24d8caec515d35369674331`  
		Last Modified: Wed, 28 Oct 2026 01:43:34 GMT  
		Size: 7.5 MB (7515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3381c35a8e6079480bd9f37eae8b88e736f5a9214796d2065a83f72dacb417`  
		Last Modified: Wed, 28 Oct 2026 01:43:35 GMT  
		Size: 46.0 MB (46009362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b1ca2735e134fef0b5b84dc2fef0e477f59d100015e72297d11b0a2e619540e`  
		Last Modified: Wed, 28 Oct 2026 01:43:34 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bcaf62c08c80068b9fd2fcdd1e8372ea425700a4ebc4fe11948c311f77b2caa`  
		Last Modified: Wed, 28 Oct 2026 01:43:34 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2725ce888412f74a306b2bc232d44058a9f542eb956867785563e536e0c3454`  
		Last Modified: Wed, 28 Oct 2026 01:43:35 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:b3f1c3b570a1673fdb3bfb4762b511e7fd07fe661149239760d925191659889a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69ce2141e2635f714323266e174c95e0139f41ba18b2a9ba9ca9124ac006a165`

```dockerfile
```

-	Layers:
	-	`sha256:4d46354fd22bc8df46e4f0529ea6ab2a41b6ea0ac6dc500f5060c64c9b01157a`  
		Last Modified: Wed, 28 Oct 2026 01:43:34 GMT  
		Size: 2.9 MB (2859757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8a4fb8d1114b8323e803a36997be5cb95ba101c3622e26e6a7226157f527a8f`  
		Last Modified: Wed, 28 Oct 2026 01:43:34 GMT  
		Size: 15.9 KB (15874 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.10.9-alpine`

```console
$ docker pull chronograf@sha256:8ecb8d9958f1684618dbde43f481735bb1c76feb4d336073a528497e3087f70c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.10.9-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:774e693bba0cc83d1157f1611ed0661d1096d53805b11e8cd008d02af640f6b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36359781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:580f9bbf9f02632ebe940d44cc7a25cdea4e08a5a5805fd20d850f149ce949e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:56:42 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 22:56:42 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 22:56:46 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 21 Oct 2026 22:56:46 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Wed, 21 Oct 2026 22:56:46 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 21 Oct 2026 22:56:46 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 21 Oct 2026 22:56:46 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 21 Oct 2026 22:56:46 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Oct 2026 22:56:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:56:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 22:56:46 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f27d2d9cf4f1430155a6ce8026ee386edff95e39bfe3085b2bde3fad01d3e5e`  
		Last Modified: Wed, 21 Oct 2026 22:56:54 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d98748497c86e91f95d57715423fd012e42199db9ab6f1e1db3de96695bb4672`  
		Last Modified: Wed, 21 Oct 2026 22:56:54 GMT  
		Size: 293.8 KB (293841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b676390b54a4a3501cd25c044e6052ad9e1e3f41fa33653d7e52469dfc8b79d7`  
		Last Modified: Wed, 21 Oct 2026 22:56:55 GMT  
		Size: 32.2 MB (32188106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4298eab6f7f883868588438148032daa8c65c96cdaa12f4597bbebfa57a0f6dd`  
		Last Modified: Wed, 21 Oct 2026 22:56:54 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64beabf5cf9137f51607502438fd072a17c353d652a242606c2f64ed6c9e963`  
		Last Modified: Wed, 21 Oct 2026 22:56:55 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0673a7f2e39f046433c201ffe2c811525c90cc2101c02c3c078b2e0c1f4939e2`  
		Last Modified: Wed, 21 Oct 2026 22:56:55 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:2a3df6153821a32666ca1a52d086ae626e64417befc0b65ae1d9192c178720de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 KB (251939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d17bd78802b63540e22e4698497ab294ed2432e02d8222a539cd012b458cc4a`

```dockerfile
```

-	Layers:
	-	`sha256:f2e116c154063039bba0735e0cf03bb9e4b70141a79102b95bdc1b240e08f233`  
		Last Modified: Wed, 21 Oct 2026 22:56:54 GMT  
		Size: 234.4 KB (234433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6527f1d15a165cfd8594ec4ce3ff950c9bb98422c873e45f6378eaf287bbe0f9`  
		Last Modified: Wed, 21 Oct 2026 22:56:54 GMT  
		Size: 17.5 KB (17506 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11`

```console
$ docker pull chronograf@sha256:dfa77a168c72a0f85bda050a6c4c5ca67b42ad5eb6c42049eee2ea85beedb42c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11` - linux; amd64

```console
$ docker pull chronograf@sha256:4598386819f4cd893aadeb71d6b5009ce57ba4eebffa6261712dcae562c7a986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96971559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:879fcd6e17df0eb006ef0df2200dfdde2ec42984fbb739da470788624aed6746`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:39:56 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 01:40:05 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Wed, 28 Oct 2026 01:40:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:40:05 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 28 Oct 2026 01:40:05 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 28 Oct 2026 01:40:05 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 28 Oct 2026 01:40:05 GMT
VOLUME [/var/lib/chronograf]
# Wed, 28 Oct 2026 01:40:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 01:40:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Oct 2026 01:40:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17ad586fbf6bfed9b516d3f279346388ce3453a0e05b9bbe59c4ea5bc731ff3`  
		Last Modified: Wed, 28 Oct 2026 01:40:19 GMT  
		Size: 7.7 MB (7704176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08e24d9055f271059cfd020e1f1aee2f2265f142f321f4892e66e5abc42d071d`  
		Last Modified: Wed, 28 Oct 2026 01:40:20 GMT  
		Size: 61.0 MB (60995487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da4e0319e1629bb083f9a7cfd8757aa9d59202dc34f24308c974ec1e2dddc666`  
		Last Modified: Wed, 28 Oct 2026 01:40:18 GMT  
		Size: 12.2 KB (12243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69566dc90d3bec17c115ca24969c06779f807fc6dd6ae8883ca03fde70f2a714`  
		Last Modified: Wed, 28 Oct 2026 01:40:19 GMT  
		Size: 11.9 KB (11903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62033cd4878877bd75bc579874f742e07f70ddf2da557f56c380b3d57ad3be53`  
		Last Modified: Wed, 28 Oct 2026 01:40:19 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:b4a759b45d518d1b6a97a3303aeb0798bbb6dabed347d476b4d96f5c5024d145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6945a0537715f41f45d2eb8ccaa6a90045e4576150988402ad8bab36d3d19c80`

```dockerfile
```

-	Layers:
	-	`sha256:4224e67f967322188ea24880e99482dd64c63e5ada65402dbc93413c5ec6bc71`  
		Last Modified: Wed, 28 Oct 2026 01:40:19 GMT  
		Size: 2.9 MB (2877774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e22ddfc456ad4ba076bbfa94c86e262bee4524c34b6853a81261d2f585508f3`  
		Last Modified: Wed, 28 Oct 2026 01:40:18 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:dc372dd877c30664f466fc87a21b44797710d00382c7553c363e34b8a1b24694
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93631427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5742516b046fafd212e0bce0f5122d0593b93ecb72f863d4a6d6b493b5d5079`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 01:43:31 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Wed, 28 Oct 2026 01:43:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:43:31 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 28 Oct 2026 01:43:31 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 28 Oct 2026 01:43:31 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 28 Oct 2026 01:43:31 GMT
VOLUME [/var/lib/chronograf]
# Wed, 28 Oct 2026 01:43:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 01:43:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Oct 2026 01:43:31 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10454286592a06616b72416efc67593030eb01c9b659b7426d8b177c87ffa4cb`  
		Last Modified: Wed, 28 Oct 2026 01:43:45 GMT  
		Size: 7.5 MB (7515251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de0783e20b6b181d4be5783b5115c151a6e134dec4d1b5d8806a98cdd0c55776`  
		Last Modified: Wed, 28 Oct 2026 01:43:47 GMT  
		Size: 58.0 MB (57953752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c2a1a2b98ee9d93e03737ae5dd583721804748112af103011d54cc2d6c1afb`  
		Last Modified: Wed, 28 Oct 2026 01:43:45 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae56068259dad3b1e08edd13c2b5f8d3d5948e08fe8b4051ffba981f43446b2`  
		Last Modified: Wed, 28 Oct 2026 01:43:45 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f805c574381877b2883297f01831aa3d925ae758102f4dba4e7e329cf235611`  
		Last Modified: Wed, 28 Oct 2026 01:43:46 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:a840348d353c924cdab809eca6f1521320d4ebae5a040924ea436eceb49e4987
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b4f5597f1d78c5617dd07336f8c10f42baf412147d3078c3f0636526a3a32de`

```dockerfile
```

-	Layers:
	-	`sha256:7b87814a079e3d98934f05d336abf877ff6f48f9ca977279e9d99b58f2770410`  
		Last Modified: Wed, 28 Oct 2026 01:43:45 GMT  
		Size: 2.9 MB (2876988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff4ab0ce179160503512557fead908a50a7dac841ab00d24738758eea3a525fb`  
		Last Modified: Wed, 28 Oct 2026 01:43:45 GMT  
		Size: 16.2 KB (16191 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11-alpine`

```console
$ docker pull chronograf@sha256:ab0f2c10c833bd3d1eba6b8b605168eea0549f4d0f2f7f54c445dd4632bc7d73
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.11-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:4628202217ac36a39fcb5e88969f6bad9127427a20b1fddfd94e67c92d1f6329
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66188394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e6fba14772d5d1eb1a744f8ae96cfc0b0b023aa365ad7b124d49d25ff267d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:56:43 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 22:56:43 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 22:56:48 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Wed, 21 Oct 2026 22:56:48 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Wed, 21 Oct 2026 22:56:48 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 21 Oct 2026 22:56:48 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 21 Oct 2026 22:56:48 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 21 Oct 2026 22:56:48 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Oct 2026 22:56:48 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:56:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 22:56:48 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9759ba25c76d4818b89976f2e4d251e89986804c2e7cb1c6deb0fcd0d0ff89eb`  
		Last Modified: Wed, 21 Oct 2026 22:57:00 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8382c7b4ff3d64984f58a522f404991b65aee9f9e25f04223e120ce9dd1cb6a`  
		Last Modified: Wed, 21 Oct 2026 22:57:00 GMT  
		Size: 293.8 KB (293838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a9d4b0ab166c75ea0910b256238ce16d5e4865744a2030fa422a41c6fe8e30f`  
		Last Modified: Wed, 21 Oct 2026 22:57:02 GMT  
		Size: 62.0 MB (62016712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69309e6b5ce93c7b458ec1d8ca0f48b52ed688bfaefe86367cad0e975a461fdb`  
		Last Modified: Wed, 21 Oct 2026 22:57:00 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d53fc750e080a5551080dc2e29d1a43ceb074261a7d822b9e5a38967d72a6cc`  
		Last Modified: Wed, 21 Oct 2026 22:57:01 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2206c738c2f1cb70eb925eadd588b0abca5d09743ec259d9bd9553099ee26560`  
		Last Modified: Wed, 21 Oct 2026 22:57:01 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:398c76d5c1c79f5ae364ed1b8ce018181852ceef50d5710df7722a7c61f8db12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 KB (270475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395a136efda5e2d7a6a8f7f67e9df4af475f9342b9365aa978f3ab9e77592795`

```dockerfile
```

-	Layers:
	-	`sha256:b66e9fc3f9849c3e1b1e76cb1afdf7518d88a356fd65c9b6cf1ca058b6cf4695`  
		Last Modified: Wed, 21 Oct 2026 22:57:00 GMT  
		Size: 252.7 KB (252711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c348fda07fa4b0e60ccae22ba5c09ef2b076e41ab784431c8d91b0a1751cab89`  
		Last Modified: Wed, 21 Oct 2026 22:57:00 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11.6`

```console
$ docker pull chronograf@sha256:dfa77a168c72a0f85bda050a6c4c5ca67b42ad5eb6c42049eee2ea85beedb42c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11.6` - linux; amd64

```console
$ docker pull chronograf@sha256:4598386819f4cd893aadeb71d6b5009ce57ba4eebffa6261712dcae562c7a986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96971559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:879fcd6e17df0eb006ef0df2200dfdde2ec42984fbb739da470788624aed6746`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:39:56 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 01:40:05 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Wed, 28 Oct 2026 01:40:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:40:05 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 28 Oct 2026 01:40:05 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 28 Oct 2026 01:40:05 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 28 Oct 2026 01:40:05 GMT
VOLUME [/var/lib/chronograf]
# Wed, 28 Oct 2026 01:40:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 01:40:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Oct 2026 01:40:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17ad586fbf6bfed9b516d3f279346388ce3453a0e05b9bbe59c4ea5bc731ff3`  
		Last Modified: Wed, 28 Oct 2026 01:40:19 GMT  
		Size: 7.7 MB (7704176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08e24d9055f271059cfd020e1f1aee2f2265f142f321f4892e66e5abc42d071d`  
		Last Modified: Wed, 28 Oct 2026 01:40:20 GMT  
		Size: 61.0 MB (60995487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da4e0319e1629bb083f9a7cfd8757aa9d59202dc34f24308c974ec1e2dddc666`  
		Last Modified: Wed, 28 Oct 2026 01:40:18 GMT  
		Size: 12.2 KB (12243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69566dc90d3bec17c115ca24969c06779f807fc6dd6ae8883ca03fde70f2a714`  
		Last Modified: Wed, 28 Oct 2026 01:40:19 GMT  
		Size: 11.9 KB (11903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62033cd4878877bd75bc579874f742e07f70ddf2da557f56c380b3d57ad3be53`  
		Last Modified: Wed, 28 Oct 2026 01:40:19 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.6` - unknown; unknown

```console
$ docker pull chronograf@sha256:b4a759b45d518d1b6a97a3303aeb0798bbb6dabed347d476b4d96f5c5024d145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6945a0537715f41f45d2eb8ccaa6a90045e4576150988402ad8bab36d3d19c80`

```dockerfile
```

-	Layers:
	-	`sha256:4224e67f967322188ea24880e99482dd64c63e5ada65402dbc93413c5ec6bc71`  
		Last Modified: Wed, 28 Oct 2026 01:40:19 GMT  
		Size: 2.9 MB (2877774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e22ddfc456ad4ba076bbfa94c86e262bee4524c34b6853a81261d2f585508f3`  
		Last Modified: Wed, 28 Oct 2026 01:40:18 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11.6` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:dc372dd877c30664f466fc87a21b44797710d00382c7553c363e34b8a1b24694
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93631427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5742516b046fafd212e0bce0f5122d0593b93ecb72f863d4a6d6b493b5d5079`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 01:43:31 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Wed, 28 Oct 2026 01:43:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:43:31 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 28 Oct 2026 01:43:31 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 28 Oct 2026 01:43:31 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 28 Oct 2026 01:43:31 GMT
VOLUME [/var/lib/chronograf]
# Wed, 28 Oct 2026 01:43:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 01:43:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Oct 2026 01:43:31 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10454286592a06616b72416efc67593030eb01c9b659b7426d8b177c87ffa4cb`  
		Last Modified: Wed, 28 Oct 2026 01:43:45 GMT  
		Size: 7.5 MB (7515251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de0783e20b6b181d4be5783b5115c151a6e134dec4d1b5d8806a98cdd0c55776`  
		Last Modified: Wed, 28 Oct 2026 01:43:47 GMT  
		Size: 58.0 MB (57953752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c2a1a2b98ee9d93e03737ae5dd583721804748112af103011d54cc2d6c1afb`  
		Last Modified: Wed, 28 Oct 2026 01:43:45 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae56068259dad3b1e08edd13c2b5f8d3d5948e08fe8b4051ffba981f43446b2`  
		Last Modified: Wed, 28 Oct 2026 01:43:45 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f805c574381877b2883297f01831aa3d925ae758102f4dba4e7e329cf235611`  
		Last Modified: Wed, 28 Oct 2026 01:43:46 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.6` - unknown; unknown

```console
$ docker pull chronograf@sha256:a840348d353c924cdab809eca6f1521320d4ebae5a040924ea436eceb49e4987
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b4f5597f1d78c5617dd07336f8c10f42baf412147d3078c3f0636526a3a32de`

```dockerfile
```

-	Layers:
	-	`sha256:7b87814a079e3d98934f05d336abf877ff6f48f9ca977279e9d99b58f2770410`  
		Last Modified: Wed, 28 Oct 2026 01:43:45 GMT  
		Size: 2.9 MB (2876988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff4ab0ce179160503512557fead908a50a7dac841ab00d24738758eea3a525fb`  
		Last Modified: Wed, 28 Oct 2026 01:43:45 GMT  
		Size: 16.2 KB (16191 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11.6-alpine`

```console
$ docker pull chronograf@sha256:ab0f2c10c833bd3d1eba6b8b605168eea0549f4d0f2f7f54c445dd4632bc7d73
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.11.6-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:4628202217ac36a39fcb5e88969f6bad9127427a20b1fddfd94e67c92d1f6329
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66188394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e6fba14772d5d1eb1a744f8ae96cfc0b0b023aa365ad7b124d49d25ff267d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:56:43 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 22:56:43 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 22:56:48 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Wed, 21 Oct 2026 22:56:48 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Wed, 21 Oct 2026 22:56:48 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 21 Oct 2026 22:56:48 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 21 Oct 2026 22:56:48 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 21 Oct 2026 22:56:48 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Oct 2026 22:56:48 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:56:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 22:56:48 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9759ba25c76d4818b89976f2e4d251e89986804c2e7cb1c6deb0fcd0d0ff89eb`  
		Last Modified: Wed, 21 Oct 2026 22:57:00 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8382c7b4ff3d64984f58a522f404991b65aee9f9e25f04223e120ce9dd1cb6a`  
		Last Modified: Wed, 21 Oct 2026 22:57:00 GMT  
		Size: 293.8 KB (293838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a9d4b0ab166c75ea0910b256238ce16d5e4865744a2030fa422a41c6fe8e30f`  
		Last Modified: Wed, 21 Oct 2026 22:57:02 GMT  
		Size: 62.0 MB (62016712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69309e6b5ce93c7b458ec1d8ca0f48b52ed688bfaefe86367cad0e975a461fdb`  
		Last Modified: Wed, 21 Oct 2026 22:57:00 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d53fc750e080a5551080dc2e29d1a43ceb074261a7d822b9e5a38967d72a6cc`  
		Last Modified: Wed, 21 Oct 2026 22:57:01 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2206c738c2f1cb70eb925eadd588b0abca5d09743ec259d9bd9553099ee26560`  
		Last Modified: Wed, 21 Oct 2026 22:57:01 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.6-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:398c76d5c1c79f5ae364ed1b8ce018181852ceef50d5710df7722a7c61f8db12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 KB (270475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395a136efda5e2d7a6a8f7f67e9df4af475f9342b9365aa978f3ab9e77592795`

```dockerfile
```

-	Layers:
	-	`sha256:b66e9fc3f9849c3e1b1e76cb1afdf7518d88a356fd65c9b6cf1ca058b6cf4695`  
		Last Modified: Wed, 21 Oct 2026 22:57:00 GMT  
		Size: 252.7 KB (252711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c348fda07fa4b0e60ccae22ba5c09ef2b076e41ab784431c8d91b0a1751cab89`  
		Last Modified: Wed, 21 Oct 2026 22:57:00 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:ab0f2c10c833bd3d1eba6b8b605168eea0549f4d0f2f7f54c445dd4632bc7d73
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:4628202217ac36a39fcb5e88969f6bad9127427a20b1fddfd94e67c92d1f6329
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66188394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e6fba14772d5d1eb1a744f8ae96cfc0b0b023aa365ad7b124d49d25ff267d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:56:43 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 22:56:43 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 22:56:48 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Wed, 21 Oct 2026 22:56:48 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Wed, 21 Oct 2026 22:56:48 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 21 Oct 2026 22:56:48 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 21 Oct 2026 22:56:48 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 21 Oct 2026 22:56:48 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Oct 2026 22:56:48 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:56:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 22:56:48 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9759ba25c76d4818b89976f2e4d251e89986804c2e7cb1c6deb0fcd0d0ff89eb`  
		Last Modified: Wed, 21 Oct 2026 22:57:00 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8382c7b4ff3d64984f58a522f404991b65aee9f9e25f04223e120ce9dd1cb6a`  
		Last Modified: Wed, 21 Oct 2026 22:57:00 GMT  
		Size: 293.8 KB (293838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a9d4b0ab166c75ea0910b256238ce16d5e4865744a2030fa422a41c6fe8e30f`  
		Last Modified: Wed, 21 Oct 2026 22:57:02 GMT  
		Size: 62.0 MB (62016712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69309e6b5ce93c7b458ec1d8ca0f48b52ed688bfaefe86367cad0e975a461fdb`  
		Last Modified: Wed, 21 Oct 2026 22:57:00 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d53fc750e080a5551080dc2e29d1a43ceb074261a7d822b9e5a38967d72a6cc`  
		Last Modified: Wed, 21 Oct 2026 22:57:01 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2206c738c2f1cb70eb925eadd588b0abca5d09743ec259d9bd9553099ee26560`  
		Last Modified: Wed, 21 Oct 2026 22:57:01 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:398c76d5c1c79f5ae364ed1b8ce018181852ceef50d5710df7722a7c61f8db12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 KB (270475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395a136efda5e2d7a6a8f7f67e9df4af475f9342b9365aa978f3ab9e77592795`

```dockerfile
```

-	Layers:
	-	`sha256:b66e9fc3f9849c3e1b1e76cb1afdf7518d88a356fd65c9b6cf1ca058b6cf4695`  
		Last Modified: Wed, 21 Oct 2026 22:57:00 GMT  
		Size: 252.7 KB (252711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c348fda07fa4b0e60ccae22ba5c09ef2b076e41ab784431c8d91b0a1751cab89`  
		Last Modified: Wed, 21 Oct 2026 22:57:00 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:dfa77a168c72a0f85bda050a6c4c5ca67b42ad5eb6c42049eee2ea85beedb42c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:4598386819f4cd893aadeb71d6b5009ce57ba4eebffa6261712dcae562c7a986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96971559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:879fcd6e17df0eb006ef0df2200dfdde2ec42984fbb739da470788624aed6746`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:39:56 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 01:40:05 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Wed, 28 Oct 2026 01:40:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:40:05 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 28 Oct 2026 01:40:05 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 28 Oct 2026 01:40:05 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 28 Oct 2026 01:40:05 GMT
VOLUME [/var/lib/chronograf]
# Wed, 28 Oct 2026 01:40:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 01:40:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Oct 2026 01:40:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17ad586fbf6bfed9b516d3f279346388ce3453a0e05b9bbe59c4ea5bc731ff3`  
		Last Modified: Wed, 28 Oct 2026 01:40:19 GMT  
		Size: 7.7 MB (7704176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08e24d9055f271059cfd020e1f1aee2f2265f142f321f4892e66e5abc42d071d`  
		Last Modified: Wed, 28 Oct 2026 01:40:20 GMT  
		Size: 61.0 MB (60995487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da4e0319e1629bb083f9a7cfd8757aa9d59202dc34f24308c974ec1e2dddc666`  
		Last Modified: Wed, 28 Oct 2026 01:40:18 GMT  
		Size: 12.2 KB (12243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69566dc90d3bec17c115ca24969c06779f807fc6dd6ae8883ca03fde70f2a714`  
		Last Modified: Wed, 28 Oct 2026 01:40:19 GMT  
		Size: 11.9 KB (11903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62033cd4878877bd75bc579874f742e07f70ddf2da557f56c380b3d57ad3be53`  
		Last Modified: Wed, 28 Oct 2026 01:40:19 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:b4a759b45d518d1b6a97a3303aeb0798bbb6dabed347d476b4d96f5c5024d145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6945a0537715f41f45d2eb8ccaa6a90045e4576150988402ad8bab36d3d19c80`

```dockerfile
```

-	Layers:
	-	`sha256:4224e67f967322188ea24880e99482dd64c63e5ada65402dbc93413c5ec6bc71`  
		Last Modified: Wed, 28 Oct 2026 01:40:19 GMT  
		Size: 2.9 MB (2877774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e22ddfc456ad4ba076bbfa94c86e262bee4524c34b6853a81261d2f585508f3`  
		Last Modified: Wed, 28 Oct 2026 01:40:18 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:dc372dd877c30664f466fc87a21b44797710d00382c7553c363e34b8a1b24694
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93631427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5742516b046fafd212e0bce0f5122d0593b93ecb72f863d4a6d6b493b5d5079`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 01:43:31 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Wed, 28 Oct 2026 01:43:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:43:31 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 28 Oct 2026 01:43:31 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 28 Oct 2026 01:43:31 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 28 Oct 2026 01:43:31 GMT
VOLUME [/var/lib/chronograf]
# Wed, 28 Oct 2026 01:43:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 01:43:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Oct 2026 01:43:31 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10454286592a06616b72416efc67593030eb01c9b659b7426d8b177c87ffa4cb`  
		Last Modified: Wed, 28 Oct 2026 01:43:45 GMT  
		Size: 7.5 MB (7515251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de0783e20b6b181d4be5783b5115c151a6e134dec4d1b5d8806a98cdd0c55776`  
		Last Modified: Wed, 28 Oct 2026 01:43:47 GMT  
		Size: 58.0 MB (57953752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c2a1a2b98ee9d93e03737ae5dd583721804748112af103011d54cc2d6c1afb`  
		Last Modified: Wed, 28 Oct 2026 01:43:45 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae56068259dad3b1e08edd13c2b5f8d3d5948e08fe8b4051ffba981f43446b2`  
		Last Modified: Wed, 28 Oct 2026 01:43:45 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f805c574381877b2883297f01831aa3d925ae758102f4dba4e7e329cf235611`  
		Last Modified: Wed, 28 Oct 2026 01:43:46 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:a840348d353c924cdab809eca6f1521320d4ebae5a040924ea436eceb49e4987
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b4f5597f1d78c5617dd07336f8c10f42baf412147d3078c3f0636526a3a32de`

```dockerfile
```

-	Layers:
	-	`sha256:7b87814a079e3d98934f05d336abf877ff6f48f9ca977279e9d99b58f2770410`  
		Last Modified: Wed, 28 Oct 2026 01:43:45 GMT  
		Size: 2.9 MB (2876988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff4ab0ce179160503512557fead908a50a7dac841ab00d24738758eea3a525fb`  
		Last Modified: Wed, 28 Oct 2026 01:43:45 GMT  
		Size: 16.2 KB (16191 bytes)  
		MIME: application/vnd.in-toto+json
