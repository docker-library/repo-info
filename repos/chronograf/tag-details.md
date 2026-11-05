<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.10`](#chronograf110)
-	[`chronograf:1.10-alpine`](#chronograf110-alpine)
-	[`chronograf:1.10.9`](#chronograf1109)
-	[`chronograf:1.10.9-alpine`](#chronograf1109-alpine)
-	[`chronograf:1.11`](#chronograf111)
-	[`chronograf:1.11-alpine`](#chronograf111-alpine)
-	[`chronograf:1.11.7`](#chronograf1117)
-	[`chronograf:1.11.7-alpine`](#chronograf1117-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.10`

```console
$ docker pull chronograf@sha256:143b10aaf07549f092e91eefdd8998019638277606d904a50667fb985787ea83
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
$ docker pull chronograf@sha256:1b32945a2e2fddf258570ce1bc19991a1e6cfe363d09ca21ad80103dd2edd96f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81693469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6faa8520a71b68977f204916d7cf7f308855f688c5a1c36cb57404dbd7eda1f5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:42:08 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 07:42:14 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Thu, 05 Nov 2026 07:42:14 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:42:14 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 05 Nov 2026 07:42:14 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 05 Nov 2026 07:42:14 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 05 Nov 2026 07:42:14 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Nov 2026 07:42:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 07:42:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 07:42:14 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64343e78ac27a2afdec45e8b7c7593bbbed2045dde9a1b7f4381c7ac711ec119`  
		Last Modified: Thu, 05 Nov 2026 07:42:27 GMT  
		Size: 7.5 MB (7515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d3f271e12262dac194883b992ca8698ccee02eb7800a1adb9786cf796c39c3`  
		Last Modified: Thu, 05 Nov 2026 07:42:28 GMT  
		Size: 46.0 MB (46009422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d753f79771da7b0e4d257a45c81007bf7fb43229a9a4e263af50ab84050d6e`  
		Last Modified: Thu, 05 Nov 2026 07:42:27 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:101c79628fd5fe53221460adc56e455c8b6244465f09ffe2d0ab83d1a2c199e2`  
		Last Modified: Thu, 05 Nov 2026 07:42:27 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf823f3a78d82ef1fa6ea00a151ff8ca9a6af7c28ad58bcbab7adce2ffa16c7e`  
		Last Modified: Thu, 05 Nov 2026 07:42:28 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:a0a6549de9cb25fd5ffc527907757af9d24e4d863ad49549538f05f8e8a7844c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8f147357bc75523347ec618770ef97aee0f597d77719abc7ce2d178b7b113e3`

```dockerfile
```

-	Layers:
	-	`sha256:cc186a48603695bbdc65849ec495963dd578f1fdd5c3900bfc547117af9f1f21`  
		Last Modified: Thu, 05 Nov 2026 07:42:27 GMT  
		Size: 2.9 MB (2859811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8438a29ada1dc8ae53718ba06f3c66ec663924c51fa6cef776e5a12b3f77a898`  
		Last Modified: Thu, 05 Nov 2026 07:42:27 GMT  
		Size: 15.9 KB (15873 bytes)  
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
$ docker pull chronograf@sha256:b4adc0d477013e42740427a06e0242f67515a02fab3c5c2bd1f52b68fb7fcc53
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11` - linux; amd64

```console
$ docker pull chronograf@sha256:881641b63421c1f7cdbdf2cb872babb8d316cd334e2824dc34876857d1dd681b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96990506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f582b31838b40ff1d9a4bc02e4cd77cae87db7c8ee5121d4b4cc50f0271f0a0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 04 Nov 2026 23:49:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 04 Nov 2026 23:49:29 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Wed, 04 Nov 2026 23:49:29 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 04 Nov 2026 23:49:29 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 04 Nov 2026 23:49:29 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 04 Nov 2026 23:49:29 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 04 Nov 2026 23:49:29 GMT
VOLUME [/var/lib/chronograf]
# Wed, 04 Nov 2026 23:49:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 04 Nov 2026 23:49:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Nov 2026 23:49:29 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498994bddcdac367ff7000f4220e1e11738321104beab7d6bd1fe4b3e953b33a`  
		Last Modified: Wed, 04 Nov 2026 23:49:42 GMT  
		Size: 7.7 MB (7704242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bdd76d201d663b7420c8fb9847c964d8ab6d9ecb1a083fbf7cea51586e1c7b4`  
		Last Modified: Wed, 04 Nov 2026 23:49:44 GMT  
		Size: 61.0 MB (61014353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a33397a03da55360324d658157236d4b41e1596f48fd7e4a83a14441577356`  
		Last Modified: Wed, 04 Nov 2026 23:49:42 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fa9adb19474b8d14b0ebae986057d403085da12a45f7b5813cfdf57d868f30`  
		Last Modified: Wed, 04 Nov 2026 23:49:42 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a690caf1aa241ad33876a922cfcdd62190b13b187a6386fb8c8d74ab0f2b15`  
		Last Modified: Wed, 04 Nov 2026 23:49:43 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:b12e10fb08870b510924b685ff5d83a4b571a79bd1f0aa1a71ca0eec00124b63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83c0a18d4441cf35de86d69c7a8d02961ee102d2a7af18b476c19614dfc09e52`

```dockerfile
```

-	Layers:
	-	`sha256:5a2da10af72727d2015696a98e6b44f76586d4f5c373242b72d298e147b678d0`  
		Last Modified: Wed, 04 Nov 2026 23:49:42 GMT  
		Size: 2.9 MB (2877830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc9793840d517d7c1690211882f5e444a470da9e07b9d8ec64fe925bf5ec43a6`  
		Last Modified: Wed, 04 Nov 2026 23:49:42 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:36f9a907db13d2d7d3a7c226492827b8b251506b553648286b640698d1855848
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93644768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37de168d3d76b3948854f6579beaecc6c59d05d211ec96d321e866751088b06d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:42:11 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Thu, 05 Nov 2026 07:42:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 05 Nov 2026 07:42:17 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Nov 2026 07:42:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 07:42:17 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa3dff3e4dd2eb87795bc7d1650dc371bc26d339d431a5fa5a7f1814250cf61`  
		Last Modified: Thu, 05 Nov 2026 07:42:31 GMT  
		Size: 7.5 MB (7515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4261004e4abfd13a9a05eb4d247bb4a0cf360aa9080f2386044112c42b8b16f`  
		Last Modified: Thu, 05 Nov 2026 07:42:33 GMT  
		Size: 58.0 MB (57960731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c14d80e92825c69ec6c9de24d42dec22d8ad2ef80d58d379ddcd3934877ff8eb`  
		Last Modified: Thu, 05 Nov 2026 07:42:31 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9f613d51f7db4db9c35603d2daa0fb668a1892e1434775d5b4f9341e7abe07e`  
		Last Modified: Thu, 05 Nov 2026 07:42:31 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:087ddc2c1268b729635e4326c2ebcc252bf92c0ed1761744a46f01cf0b9444ee`  
		Last Modified: Thu, 05 Nov 2026 07:42:32 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:ed53013356553dd653b70c1e281bb4fe9875f58afeaa0fb6b8c0967e242b0867
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d3bda35b93d787713b40c49f81c21772de2030ab6f0bc2f8734fd793b15cc03`

```dockerfile
```

-	Layers:
	-	`sha256:5d788f675e0c98b4e1ffcef0ac420ad7630f7e20daa0a1912de21c892efaa19b`  
		Last Modified: Thu, 05 Nov 2026 07:42:31 GMT  
		Size: 2.9 MB (2877044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ba89e76cc9851c9da5150f5f6c5cb9b352d6cc00612c42625820bfe7a47fcc5`  
		Last Modified: Thu, 05 Nov 2026 07:42:31 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11-alpine`

```console
$ docker pull chronograf@sha256:026461fd180629108386fe76a257613ed708589a0b7a886dc94cb06707f3d64a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.11-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:3a91d1b91cb6eea2bdebc3afc3a16694616a22dcbdb966f9c74d3a329c8bcd8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66210807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef8ca560dc6d21b8196fee1b59f2081673c2f4752e70d847cd4ba903de2e425`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 23:49:16 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 04 Nov 2026 23:49:17 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Wed, 04 Nov 2026 23:49:23 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Wed, 04 Nov 2026 23:49:23 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Wed, 04 Nov 2026 23:49:23 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 04 Nov 2026 23:49:23 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 04 Nov 2026 23:49:23 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 04 Nov 2026 23:49:23 GMT
VOLUME [/var/lib/chronograf]
# Wed, 04 Nov 2026 23:49:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 04 Nov 2026 23:49:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Nov 2026 23:49:23 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c3abc62a5b76334335a0427a6c3253467a1c5638d28d3875107044d2fa8d0d`  
		Last Modified: Wed, 04 Nov 2026 23:49:36 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da3d6a49ba7ed46120119c2fb04362cd162d7bcbd35ace7ef07dd58add4fd3a`  
		Last Modified: Wed, 04 Nov 2026 23:49:36 GMT  
		Size: 293.9 KB (293860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c34c82ea376d0f69e357ee600c9b8236696c84589d9e9d3c4fc45d1b57eb5c88`  
		Last Modified: Wed, 04 Nov 2026 23:49:38 GMT  
		Size: 62.0 MB (62039114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee3740b20bf0e260689f3bf5f92aaf22b224ead0d0485849ac5305959131eb26`  
		Last Modified: Wed, 04 Nov 2026 23:49:36 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d2b9aab7ab689610c83fdd3e118e30ec3c235205f645d1724d44dff1c424f1`  
		Last Modified: Wed, 04 Nov 2026 23:49:37 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082747012989df2451167f14d7eeeb083b707b22d190938ff3f6f9e50b4b8d7f`  
		Last Modified: Wed, 04 Nov 2026 23:49:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:a636130d903129ac6d1cc73a8cd15300fb4af5aef903ac3aebe0e70616229d27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 KB (270477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68cdc9d4b359b0585cce5ff7f836a142497e55b219eb878f0bc94beeebf4bd2e`

```dockerfile
```

-	Layers:
	-	`sha256:f8c1a78a1d9683f17552cf5250b73b12196d9b36b541cbfcddd00c68b7651cc6`  
		Last Modified: Wed, 04 Nov 2026 23:49:36 GMT  
		Size: 252.7 KB (252713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8df6e034f2e8a45c8793bea2f28ce70b84a9a0f12342655b8a399950dddbbdde`  
		Last Modified: Wed, 04 Nov 2026 23:49:36 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11.7`

```console
$ docker pull chronograf@sha256:b4adc0d477013e42740427a06e0242f67515a02fab3c5c2bd1f52b68fb7fcc53
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11.7` - linux; amd64

```console
$ docker pull chronograf@sha256:881641b63421c1f7cdbdf2cb872babb8d316cd334e2824dc34876857d1dd681b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96990506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f582b31838b40ff1d9a4bc02e4cd77cae87db7c8ee5121d4b4cc50f0271f0a0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 04 Nov 2026 23:49:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 04 Nov 2026 23:49:29 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Wed, 04 Nov 2026 23:49:29 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 04 Nov 2026 23:49:29 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 04 Nov 2026 23:49:29 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 04 Nov 2026 23:49:29 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 04 Nov 2026 23:49:29 GMT
VOLUME [/var/lib/chronograf]
# Wed, 04 Nov 2026 23:49:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 04 Nov 2026 23:49:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Nov 2026 23:49:29 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498994bddcdac367ff7000f4220e1e11738321104beab7d6bd1fe4b3e953b33a`  
		Last Modified: Wed, 04 Nov 2026 23:49:42 GMT  
		Size: 7.7 MB (7704242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bdd76d201d663b7420c8fb9847c964d8ab6d9ecb1a083fbf7cea51586e1c7b4`  
		Last Modified: Wed, 04 Nov 2026 23:49:44 GMT  
		Size: 61.0 MB (61014353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a33397a03da55360324d658157236d4b41e1596f48fd7e4a83a14441577356`  
		Last Modified: Wed, 04 Nov 2026 23:49:42 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fa9adb19474b8d14b0ebae986057d403085da12a45f7b5813cfdf57d868f30`  
		Last Modified: Wed, 04 Nov 2026 23:49:42 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a690caf1aa241ad33876a922cfcdd62190b13b187a6386fb8c8d74ab0f2b15`  
		Last Modified: Wed, 04 Nov 2026 23:49:43 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.7` - unknown; unknown

```console
$ docker pull chronograf@sha256:b12e10fb08870b510924b685ff5d83a4b571a79bd1f0aa1a71ca0eec00124b63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83c0a18d4441cf35de86d69c7a8d02961ee102d2a7af18b476c19614dfc09e52`

```dockerfile
```

-	Layers:
	-	`sha256:5a2da10af72727d2015696a98e6b44f76586d4f5c373242b72d298e147b678d0`  
		Last Modified: Wed, 04 Nov 2026 23:49:42 GMT  
		Size: 2.9 MB (2877830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc9793840d517d7c1690211882f5e444a470da9e07b9d8ec64fe925bf5ec43a6`  
		Last Modified: Wed, 04 Nov 2026 23:49:42 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11.7` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:36f9a907db13d2d7d3a7c226492827b8b251506b553648286b640698d1855848
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93644768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37de168d3d76b3948854f6579beaecc6c59d05d211ec96d321e866751088b06d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:42:11 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Thu, 05 Nov 2026 07:42:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 05 Nov 2026 07:42:17 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Nov 2026 07:42:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 07:42:17 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa3dff3e4dd2eb87795bc7d1650dc371bc26d339d431a5fa5a7f1814250cf61`  
		Last Modified: Thu, 05 Nov 2026 07:42:31 GMT  
		Size: 7.5 MB (7515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4261004e4abfd13a9a05eb4d247bb4a0cf360aa9080f2386044112c42b8b16f`  
		Last Modified: Thu, 05 Nov 2026 07:42:33 GMT  
		Size: 58.0 MB (57960731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c14d80e92825c69ec6c9de24d42dec22d8ad2ef80d58d379ddcd3934877ff8eb`  
		Last Modified: Thu, 05 Nov 2026 07:42:31 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9f613d51f7db4db9c35603d2daa0fb668a1892e1434775d5b4f9341e7abe07e`  
		Last Modified: Thu, 05 Nov 2026 07:42:31 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:087ddc2c1268b729635e4326c2ebcc252bf92c0ed1761744a46f01cf0b9444ee`  
		Last Modified: Thu, 05 Nov 2026 07:42:32 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.7` - unknown; unknown

```console
$ docker pull chronograf@sha256:ed53013356553dd653b70c1e281bb4fe9875f58afeaa0fb6b8c0967e242b0867
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d3bda35b93d787713b40c49f81c21772de2030ab6f0bc2f8734fd793b15cc03`

```dockerfile
```

-	Layers:
	-	`sha256:5d788f675e0c98b4e1ffcef0ac420ad7630f7e20daa0a1912de21c892efaa19b`  
		Last Modified: Thu, 05 Nov 2026 07:42:31 GMT  
		Size: 2.9 MB (2877044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ba89e76cc9851c9da5150f5f6c5cb9b352d6cc00612c42625820bfe7a47fcc5`  
		Last Modified: Thu, 05 Nov 2026 07:42:31 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11.7-alpine`

```console
$ docker pull chronograf@sha256:026461fd180629108386fe76a257613ed708589a0b7a886dc94cb06707f3d64a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.11.7-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:3a91d1b91cb6eea2bdebc3afc3a16694616a22dcbdb966f9c74d3a329c8bcd8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66210807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef8ca560dc6d21b8196fee1b59f2081673c2f4752e70d847cd4ba903de2e425`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 23:49:16 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 04 Nov 2026 23:49:17 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Wed, 04 Nov 2026 23:49:23 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Wed, 04 Nov 2026 23:49:23 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Wed, 04 Nov 2026 23:49:23 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 04 Nov 2026 23:49:23 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 04 Nov 2026 23:49:23 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 04 Nov 2026 23:49:23 GMT
VOLUME [/var/lib/chronograf]
# Wed, 04 Nov 2026 23:49:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 04 Nov 2026 23:49:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Nov 2026 23:49:23 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c3abc62a5b76334335a0427a6c3253467a1c5638d28d3875107044d2fa8d0d`  
		Last Modified: Wed, 04 Nov 2026 23:49:36 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da3d6a49ba7ed46120119c2fb04362cd162d7bcbd35ace7ef07dd58add4fd3a`  
		Last Modified: Wed, 04 Nov 2026 23:49:36 GMT  
		Size: 293.9 KB (293860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c34c82ea376d0f69e357ee600c9b8236696c84589d9e9d3c4fc45d1b57eb5c88`  
		Last Modified: Wed, 04 Nov 2026 23:49:38 GMT  
		Size: 62.0 MB (62039114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee3740b20bf0e260689f3bf5f92aaf22b224ead0d0485849ac5305959131eb26`  
		Last Modified: Wed, 04 Nov 2026 23:49:36 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d2b9aab7ab689610c83fdd3e118e30ec3c235205f645d1724d44dff1c424f1`  
		Last Modified: Wed, 04 Nov 2026 23:49:37 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082747012989df2451167f14d7eeeb083b707b22d190938ff3f6f9e50b4b8d7f`  
		Last Modified: Wed, 04 Nov 2026 23:49:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.7-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:a636130d903129ac6d1cc73a8cd15300fb4af5aef903ac3aebe0e70616229d27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 KB (270477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68cdc9d4b359b0585cce5ff7f836a142497e55b219eb878f0bc94beeebf4bd2e`

```dockerfile
```

-	Layers:
	-	`sha256:f8c1a78a1d9683f17552cf5250b73b12196d9b36b541cbfcddd00c68b7651cc6`  
		Last Modified: Wed, 04 Nov 2026 23:49:36 GMT  
		Size: 252.7 KB (252713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8df6e034f2e8a45c8793bea2f28ce70b84a9a0f12342655b8a399950dddbbdde`  
		Last Modified: Wed, 04 Nov 2026 23:49:36 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:026461fd180629108386fe76a257613ed708589a0b7a886dc94cb06707f3d64a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:3a91d1b91cb6eea2bdebc3afc3a16694616a22dcbdb966f9c74d3a329c8bcd8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66210807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef8ca560dc6d21b8196fee1b59f2081673c2f4752e70d847cd4ba903de2e425`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 23:49:16 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 04 Nov 2026 23:49:17 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Wed, 04 Nov 2026 23:49:23 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Wed, 04 Nov 2026 23:49:23 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Wed, 04 Nov 2026 23:49:23 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 04 Nov 2026 23:49:23 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 04 Nov 2026 23:49:23 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 04 Nov 2026 23:49:23 GMT
VOLUME [/var/lib/chronograf]
# Wed, 04 Nov 2026 23:49:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 04 Nov 2026 23:49:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Nov 2026 23:49:23 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c3abc62a5b76334335a0427a6c3253467a1c5638d28d3875107044d2fa8d0d`  
		Last Modified: Wed, 04 Nov 2026 23:49:36 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da3d6a49ba7ed46120119c2fb04362cd162d7bcbd35ace7ef07dd58add4fd3a`  
		Last Modified: Wed, 04 Nov 2026 23:49:36 GMT  
		Size: 293.9 KB (293860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c34c82ea376d0f69e357ee600c9b8236696c84589d9e9d3c4fc45d1b57eb5c88`  
		Last Modified: Wed, 04 Nov 2026 23:49:38 GMT  
		Size: 62.0 MB (62039114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee3740b20bf0e260689f3bf5f92aaf22b224ead0d0485849ac5305959131eb26`  
		Last Modified: Wed, 04 Nov 2026 23:49:36 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d2b9aab7ab689610c83fdd3e118e30ec3c235205f645d1724d44dff1c424f1`  
		Last Modified: Wed, 04 Nov 2026 23:49:37 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082747012989df2451167f14d7eeeb083b707b22d190938ff3f6f9e50b4b8d7f`  
		Last Modified: Wed, 04 Nov 2026 23:49:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:a636130d903129ac6d1cc73a8cd15300fb4af5aef903ac3aebe0e70616229d27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 KB (270477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68cdc9d4b359b0585cce5ff7f836a142497e55b219eb878f0bc94beeebf4bd2e`

```dockerfile
```

-	Layers:
	-	`sha256:f8c1a78a1d9683f17552cf5250b73b12196d9b36b541cbfcddd00c68b7651cc6`  
		Last Modified: Wed, 04 Nov 2026 23:49:36 GMT  
		Size: 252.7 KB (252713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8df6e034f2e8a45c8793bea2f28ce70b84a9a0f12342655b8a399950dddbbdde`  
		Last Modified: Wed, 04 Nov 2026 23:49:36 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:d4d6e01c51f2e40602be882ac6c9550da1e4dfa1f5359f0c05d409bc05ce4b8a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:881641b63421c1f7cdbdf2cb872babb8d316cd334e2824dc34876857d1dd681b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96990506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f582b31838b40ff1d9a4bc02e4cd77cae87db7c8ee5121d4b4cc50f0271f0a0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 04 Nov 2026 23:49:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 04 Nov 2026 23:49:29 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Wed, 04 Nov 2026 23:49:29 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 04 Nov 2026 23:49:29 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 04 Nov 2026 23:49:29 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 04 Nov 2026 23:49:29 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 04 Nov 2026 23:49:29 GMT
VOLUME [/var/lib/chronograf]
# Wed, 04 Nov 2026 23:49:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 04 Nov 2026 23:49:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Nov 2026 23:49:29 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498994bddcdac367ff7000f4220e1e11738321104beab7d6bd1fe4b3e953b33a`  
		Last Modified: Wed, 04 Nov 2026 23:49:42 GMT  
		Size: 7.7 MB (7704242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bdd76d201d663b7420c8fb9847c964d8ab6d9ecb1a083fbf7cea51586e1c7b4`  
		Last Modified: Wed, 04 Nov 2026 23:49:44 GMT  
		Size: 61.0 MB (61014353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a33397a03da55360324d658157236d4b41e1596f48fd7e4a83a14441577356`  
		Last Modified: Wed, 04 Nov 2026 23:49:42 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fa9adb19474b8d14b0ebae986057d403085da12a45f7b5813cfdf57d868f30`  
		Last Modified: Wed, 04 Nov 2026 23:49:42 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a690caf1aa241ad33876a922cfcdd62190b13b187a6386fb8c8d74ab0f2b15`  
		Last Modified: Wed, 04 Nov 2026 23:49:43 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:b12e10fb08870b510924b685ff5d83a4b571a79bd1f0aa1a71ca0eec00124b63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83c0a18d4441cf35de86d69c7a8d02961ee102d2a7af18b476c19614dfc09e52`

```dockerfile
```

-	Layers:
	-	`sha256:5a2da10af72727d2015696a98e6b44f76586d4f5c373242b72d298e147b678d0`  
		Last Modified: Wed, 04 Nov 2026 23:49:42 GMT  
		Size: 2.9 MB (2877830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc9793840d517d7c1690211882f5e444a470da9e07b9d8ec64fe925bf5ec43a6`  
		Last Modified: Wed, 04 Nov 2026 23:49:42 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:43f62158ffb7a266da2b698c10691c11ec1320e42de31c4195294668dd263346
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93638359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a86b513bc9f76b4f0d0bbf28480e9402e44cb586878ac1f65c6cd128304d2142`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 04 Nov 2026 23:49:29 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 04 Nov 2026 23:49:36 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Wed, 04 Nov 2026 23:49:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 04 Nov 2026 23:49:36 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 04 Nov 2026 23:49:36 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 04 Nov 2026 23:49:36 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 04 Nov 2026 23:49:36 GMT
VOLUME [/var/lib/chronograf]
# Wed, 04 Nov 2026 23:49:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 04 Nov 2026 23:49:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Nov 2026 23:49:36 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:024dd3cb7686fa142367ac9d21cf95282d7921887a71f903c176ec343191a250`  
		Last Modified: Wed, 04 Nov 2026 23:49:50 GMT  
		Size: 7.5 MB (7515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cefe2aaf043e616bd8f30c2ada562cb6dc139dd4c77e9af2c518e2511022aad`  
		Last Modified: Wed, 04 Nov 2026 23:49:51 GMT  
		Size: 58.0 MB (57960728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50e3795651baaadc34fbd678240db68afcab08ae45f79d720830f37ef8c97f3d`  
		Last Modified: Wed, 04 Nov 2026 23:49:50 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b3e2f7c195bda78b3d135fcd181b2838b5f2645ab35086d077bc5c93b6d994`  
		Last Modified: Wed, 04 Nov 2026 23:49:50 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea3a1f2c9bf140ac1bbc128228a02981d6fcc4f41c4a30c1221554ac313b4075`  
		Last Modified: Wed, 04 Nov 2026 23:49:51 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:71b858e159a5c000d2bf970b9cb22dfd2caefca010c03d158035cae4106965ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a530854ff88c86011e05762a5df78f0c820b9fc1220d6975182790a26fd01d9`

```dockerfile
```

-	Layers:
	-	`sha256:e59ce0d038c4a9332c11c5cfb2bd5ef9aa666440317faf6aef8f072e7da9f6da`  
		Last Modified: Wed, 04 Nov 2026 23:49:50 GMT  
		Size: 2.9 MB (2877044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45cdad36594dcddc52d11a5a7ba6af06e098604f070be67d983aa2d8aa1d2dc4`  
		Last Modified: Wed, 04 Nov 2026 23:49:50 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json
