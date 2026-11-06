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
$ docker pull chronograf@sha256:473734d31787098cb8797346169fe546109e0c932254518b70185b7a129956d0
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
$ docker pull chronograf@sha256:d4f683066a3752dbbb4522274d4c8ab2cbb45a8e3ce78bd4dea1a63f0986291e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84844915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6004b98de3e372b2d0cd394f7699f27b80f63f240ae3ffefa3831775d5efcdb3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Thu, 05 Nov 2026 07:38:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 05 Nov 2026 07:38:28 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Nov 2026 07:38:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 07:38:28 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b1f5dbd797991f061e9f08282d937602da31c532e849e480d91c1bb3821a63`  
		Last Modified: Thu, 05 Nov 2026 07:38:39 GMT  
		Size: 7.7 MB (7704446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69fae62e9e63b35821c6f71edbb1812a3a4d39ce69a9d86e76fdfe61db81b328`  
		Last Modified: Thu, 05 Nov 2026 07:38:40 GMT  
		Size: 48.9 MB (48868019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4377436f5a40e157cc79934de263303128024abdcae7f03c799d517e9db452`  
		Last Modified: Thu, 05 Nov 2026 07:38:39 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b5865ba400fa4929f875640b212477139b126262cc43a160331052d162a566a`  
		Last Modified: Thu, 05 Nov 2026 07:38:39 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf99f7e1e34b607709145001acfe321a8bba5a2a2cd7019a17c009924c83736b`  
		Last Modified: Thu, 05 Nov 2026 07:38:40 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:d1d711c86c2547cdc0223e4b087eda3dfef239f5344ec1b7669d0a948990d7df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f903a38142836d417e019c4b9ca9fa337b958c36b9042b3ee21b0886969fa28d`

```dockerfile
```

-	Layers:
	-	`sha256:0fccb632aad3def05c1e7d6a98d972866a3769170ed2db8cc1d8c4586e3280f8`  
		Last Modified: Thu, 05 Nov 2026 07:38:39 GMT  
		Size: 2.9 MB (2859550 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35427c00bf32dde47e5fe19a631e287e2660bbaf96d57bc29caeac77e319795f`  
		Last Modified: Thu, 05 Nov 2026 07:38:39 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:46fde7426f03125105a467c6563c0c0c9788b664a6f5530ac347069b5ea7d28b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76637016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2cb71d755a261ad4a2172cdf3bfb3fa84ccb172a9536d87776953300544dea3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:51 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 08:18:59 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Thu, 05 Nov 2026 08:18:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 08:18:59 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 05 Nov 2026 08:18:59 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 05 Nov 2026 08:18:59 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 05 Nov 2026 08:18:59 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Nov 2026 08:18:59 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:18:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:18:59 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb870be0eab8d5d9297e3f8c1ae5e8c177095a0fa605ff8bcaabc7a06949f8c`  
		Last Modified: Thu, 05 Nov 2026 08:19:10 GMT  
		Size: 6.3 MB (6331777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e71576cffdde8545d73741ba12e426d3c411c271d83ca682b6f7f0360510b5`  
		Last Modified: Thu, 05 Nov 2026 08:19:11 GMT  
		Size: 46.3 MB (46319424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:222ace8c1bdc5681ec0db00f2ab5c15586199e2388f7c74e332ab10271800069`  
		Last Modified: Thu, 05 Nov 2026 08:19:09 GMT  
		Size: 12.2 KB (12243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de17b7789fb14feafd88393ca39608dd40f25998e60c760182c0a5ebc044f61b`  
		Last Modified: Thu, 05 Nov 2026 08:19:10 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a02dafdef26b6079a9076f36121f286086f2d4e4689066d3138b3ee22ca11a`  
		Last Modified: Thu, 05 Nov 2026 08:19:11 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:7a32c7648e154754f20dd11a3a0f3ccd258ee68fe2943819be1cf8a32723838e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd52a71a4448fc32caa3f43fe3e8ea85e81502d7829f146078dfa657892bfa19`

```dockerfile
```

-	Layers:
	-	`sha256:93a5b98fb6eea367a87852358db08b4ad93fca872588a5e8bfd98de72f7fd6ad`  
		Last Modified: Thu, 05 Nov 2026 08:19:10 GMT  
		Size: 2.9 MB (2861839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1356d35ad181072cd664e1bc0aca58dcd7a611e269a4302a45618868e0003c3a`  
		Last Modified: Thu, 05 Nov 2026 08:19:09 GMT  
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
$ docker pull chronograf@sha256:b4cd9a0e90f7b5af40fadb67b9c1b9d72522316456d6b58428ae3e3534fa9b40
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.10-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:d73b93f7cef1f02ae244964898627538904fd6ae65ca94bb55f5997ea16e343a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36361089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0ffb216d4bda8b42da0dfa48c243db50ccf424754ccfb9f8d0fff8c54a229f1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:16:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:16:57 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Thu, 05 Nov 2026 19:17:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 05 Nov 2026 19:17:03 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Nov 2026 19:17:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:17:03 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8d0b430127862f02e871c296054998ef40b26a469b15eaae2018b23d2f6d22d`  
		Last Modified: Thu, 05 Nov 2026 19:17:12 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8526706d0ae0ec8d1772520d6d093c4b9cea9cba72cd63ee4d4e7f83292b86`  
		Last Modified: Thu, 05 Nov 2026 19:17:12 GMT  
		Size: 293.8 KB (293839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e040aec9df10a353cd84090cd082c07aa2ab66ce42934e0c443eef25dce6705a`  
		Last Modified: Thu, 05 Nov 2026 19:17:13 GMT  
		Size: 32.2 MB (32188860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3389750953ff8e626b7f36363878efecf575957dfaf9cd4b1cae9ab0666407b`  
		Last Modified: Thu, 05 Nov 2026 19:17:12 GMT  
		Size: 12.2 KB (12231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c5a2cc4df0e2e04a74b498986e38001cf5ee8d9efe1116ed71ae559c1ffbce`  
		Last Modified: Thu, 05 Nov 2026 19:17:13 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:326912d7e0da03ea6a5dfb9b4dd064fdc70c3bed680e5947e17be4149f775404`  
		Last Modified: Thu, 05 Nov 2026 19:17:13 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:13d24eb02dff4f6c73c9599a678533f74f5d7fae1c0c1e6e27799b4b57a9f5ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 KB (251939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df16e5befe3dc11b81406754dedc3afff2f5d6223bb47447baf986ece658ba28`

```dockerfile
```

-	Layers:
	-	`sha256:914a46ae8fcfcb42e7a11b859b87637f427f618a6e0164b8fa82fc0adf8b6057`  
		Last Modified: Thu, 05 Nov 2026 19:17:12 GMT  
		Size: 234.4 KB (234433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f68adfe934afe58bd6ac08cb1efb15365726433d82eb8cc992e3b4064e93690`  
		Last Modified: Thu, 05 Nov 2026 19:17:12 GMT  
		Size: 17.5 KB (17506 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.10.9`

```console
$ docker pull chronograf@sha256:473734d31787098cb8797346169fe546109e0c932254518b70185b7a129956d0
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
$ docker pull chronograf@sha256:d4f683066a3752dbbb4522274d4c8ab2cbb45a8e3ce78bd4dea1a63f0986291e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84844915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6004b98de3e372b2d0cd394f7699f27b80f63f240ae3ffefa3831775d5efcdb3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Thu, 05 Nov 2026 07:38:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 05 Nov 2026 07:38:28 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Nov 2026 07:38:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 07:38:28 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b1f5dbd797991f061e9f08282d937602da31c532e849e480d91c1bb3821a63`  
		Last Modified: Thu, 05 Nov 2026 07:38:39 GMT  
		Size: 7.7 MB (7704446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69fae62e9e63b35821c6f71edbb1812a3a4d39ce69a9d86e76fdfe61db81b328`  
		Last Modified: Thu, 05 Nov 2026 07:38:40 GMT  
		Size: 48.9 MB (48868019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4377436f5a40e157cc79934de263303128024abdcae7f03c799d517e9db452`  
		Last Modified: Thu, 05 Nov 2026 07:38:39 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b5865ba400fa4929f875640b212477139b126262cc43a160331052d162a566a`  
		Last Modified: Thu, 05 Nov 2026 07:38:39 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf99f7e1e34b607709145001acfe321a8bba5a2a2cd7019a17c009924c83736b`  
		Last Modified: Thu, 05 Nov 2026 07:38:40 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:d1d711c86c2547cdc0223e4b087eda3dfef239f5344ec1b7669d0a948990d7df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f903a38142836d417e019c4b9ca9fa337b958c36b9042b3ee21b0886969fa28d`

```dockerfile
```

-	Layers:
	-	`sha256:0fccb632aad3def05c1e7d6a98d972866a3769170ed2db8cc1d8c4586e3280f8`  
		Last Modified: Thu, 05 Nov 2026 07:38:39 GMT  
		Size: 2.9 MB (2859550 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35427c00bf32dde47e5fe19a631e287e2660bbaf96d57bc29caeac77e319795f`  
		Last Modified: Thu, 05 Nov 2026 07:38:39 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10.9` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:46fde7426f03125105a467c6563c0c0c9788b664a6f5530ac347069b5ea7d28b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76637016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2cb71d755a261ad4a2172cdf3bfb3fa84ccb172a9536d87776953300544dea3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:51 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 08:18:59 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Thu, 05 Nov 2026 08:18:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 08:18:59 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 05 Nov 2026 08:18:59 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 05 Nov 2026 08:18:59 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 05 Nov 2026 08:18:59 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Nov 2026 08:18:59 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:18:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:18:59 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb870be0eab8d5d9297e3f8c1ae5e8c177095a0fa605ff8bcaabc7a06949f8c`  
		Last Modified: Thu, 05 Nov 2026 08:19:10 GMT  
		Size: 6.3 MB (6331777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e71576cffdde8545d73741ba12e426d3c411c271d83ca682b6f7f0360510b5`  
		Last Modified: Thu, 05 Nov 2026 08:19:11 GMT  
		Size: 46.3 MB (46319424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:222ace8c1bdc5681ec0db00f2ab5c15586199e2388f7c74e332ab10271800069`  
		Last Modified: Thu, 05 Nov 2026 08:19:09 GMT  
		Size: 12.2 KB (12243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de17b7789fb14feafd88393ca39608dd40f25998e60c760182c0a5ebc044f61b`  
		Last Modified: Thu, 05 Nov 2026 08:19:10 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a02dafdef26b6079a9076f36121f286086f2d4e4689066d3138b3ee22ca11a`  
		Last Modified: Thu, 05 Nov 2026 08:19:11 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:7a32c7648e154754f20dd11a3a0f3ccd258ee68fe2943819be1cf8a32723838e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd52a71a4448fc32caa3f43fe3e8ea85e81502d7829f146078dfa657892bfa19`

```dockerfile
```

-	Layers:
	-	`sha256:93a5b98fb6eea367a87852358db08b4ad93fca872588a5e8bfd98de72f7fd6ad`  
		Last Modified: Thu, 05 Nov 2026 08:19:10 GMT  
		Size: 2.9 MB (2861839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1356d35ad181072cd664e1bc0aca58dcd7a611e269a4302a45618868e0003c3a`  
		Last Modified: Thu, 05 Nov 2026 08:19:09 GMT  
		Size: 15.9 KB (15856 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10.9` - linux; arm64 variant v8

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

### `chronograf:1.10.9` - unknown; unknown

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

## `chronograf:1.10.9-alpine`

```console
$ docker pull chronograf@sha256:b4cd9a0e90f7b5af40fadb67b9c1b9d72522316456d6b58428ae3e3534fa9b40
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.10.9-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:d73b93f7cef1f02ae244964898627538904fd6ae65ca94bb55f5997ea16e343a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36361089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0ffb216d4bda8b42da0dfa48c243db50ccf424754ccfb9f8d0fff8c54a229f1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:16:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:16:57 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Thu, 05 Nov 2026 19:17:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 05 Nov 2026 19:17:03 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Nov 2026 19:17:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:17:03 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8d0b430127862f02e871c296054998ef40b26a469b15eaae2018b23d2f6d22d`  
		Last Modified: Thu, 05 Nov 2026 19:17:12 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8526706d0ae0ec8d1772520d6d093c4b9cea9cba72cd63ee4d4e7f83292b86`  
		Last Modified: Thu, 05 Nov 2026 19:17:12 GMT  
		Size: 293.8 KB (293839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e040aec9df10a353cd84090cd082c07aa2ab66ce42934e0c443eef25dce6705a`  
		Last Modified: Thu, 05 Nov 2026 19:17:13 GMT  
		Size: 32.2 MB (32188860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3389750953ff8e626b7f36363878efecf575957dfaf9cd4b1cae9ab0666407b`  
		Last Modified: Thu, 05 Nov 2026 19:17:12 GMT  
		Size: 12.2 KB (12231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c5a2cc4df0e2e04a74b498986e38001cf5ee8d9efe1116ed71ae559c1ffbce`  
		Last Modified: Thu, 05 Nov 2026 19:17:13 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:326912d7e0da03ea6a5dfb9b4dd064fdc70c3bed680e5947e17be4149f775404`  
		Last Modified: Thu, 05 Nov 2026 19:17:13 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:13d24eb02dff4f6c73c9599a678533f74f5d7fae1c0c1e6e27799b4b57a9f5ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 KB (251939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df16e5befe3dc11b81406754dedc3afff2f5d6223bb47447baf986ece658ba28`

```dockerfile
```

-	Layers:
	-	`sha256:914a46ae8fcfcb42e7a11b859b87637f427f618a6e0164b8fa82fc0adf8b6057`  
		Last Modified: Thu, 05 Nov 2026 19:17:12 GMT  
		Size: 234.4 KB (234433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f68adfe934afe58bd6ac08cb1efb15365726433d82eb8cc992e3b4064e93690`  
		Last Modified: Thu, 05 Nov 2026 19:17:12 GMT  
		Size: 17.5 KB (17506 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11`

```console
$ docker pull chronograf@sha256:973b10204ba70249c4f778611d398d47f861984be037ee52c8320a953c7a4956
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11` - linux; amd64

```console
$ docker pull chronograf@sha256:ae7140d4e18b8f10d6316c33c528fb7cb6ac1e4be4b90ef1d9bec16903762969
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96991070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde4fe78ff58e235861f708b43f8a7ce71042cbc4c90a47553eba66e58529bd1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Thu, 05 Nov 2026 07:38:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 05 Nov 2026 07:38:28 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Nov 2026 07:38:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 07:38:28 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b8dc02bdf8fcf4df48d6811119e805f58d3a335dcd0472d80fc7b5b950dbdf`  
		Last Modified: Thu, 05 Nov 2026 07:38:41 GMT  
		Size: 7.7 MB (7704270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f037355c33208b4748f99b0c5ca358722293ccda960ea042d42781dfb463f525`  
		Last Modified: Thu, 05 Nov 2026 07:38:43 GMT  
		Size: 61.0 MB (61014351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:284071b39bd099250a0ec3ccc71beca1ffac5e3130c5ef37356b6ff5cb5212f2`  
		Last Modified: Thu, 05 Nov 2026 07:38:41 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fac9aa9b54f026435ee802b1d8fe136f1a41319b0fe06022b0ea920d96012fbb`  
		Last Modified: Thu, 05 Nov 2026 07:38:41 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fc69b4109c7cd1e3a430176b76eac8dcd807726b551087e153ef48a1c161599`  
		Last Modified: Thu, 05 Nov 2026 07:38:42 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:f42cfa5eafecade0ba9ede3c2b9dcf0a619b5dd7693ed8751da84f09a196976f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83f66418b7f568c0af6e80466c81adbb129de4be69905f86633c49e7400bbea2`

```dockerfile
```

-	Layers:
	-	`sha256:75d7d0d60fa680aaad2a99a901703135a5348ddb0fb4a70410fc37f98e8812bf`  
		Last Modified: Thu, 05 Nov 2026 07:38:41 GMT  
		Size: 2.9 MB (2877830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db8b956fa10270d190db7790d010d58657e549c973affc117cdd726dc7a29658`  
		Last Modified: Thu, 05 Nov 2026 07:38:41 GMT  
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
$ docker pull chronograf@sha256:2aeb1fa854ade074e0921ababfab1bd6077dde00da4e9b1fddd70623d18af266
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.11-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:0a529f031a63376965580a28f5d7bdfae459484e20f806637df671d9c0cbe01b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66211433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5fa740f46c075c92f1b32cecc9cd69c04115e5b9174d9a613f297f0d4922692`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:03 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Thu, 05 Nov 2026 19:17:09 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 05 Nov 2026 19:17:09 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Nov 2026 19:17:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:17:09 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a283f45868feeae563b34b2046ad3956d7e0f7c1f00280d305e096fdf0258e`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4d511e6f26babe2884595be43c448bd606f436b013a8a0e485c3e6d3063aee`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 293.8 KB (293835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146676637ed781dfb0bfbed3409d6e207676cf1c054cfd904169845e740271d5`  
		Last Modified: Thu, 05 Nov 2026 19:17:23 GMT  
		Size: 62.0 MB (62039198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80096eafdb90dffa24cfee53e27ce5b8e0ade65f02b1eabf303786c7103e5989`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d464ba74ab32f1c69c64710ae83d9f5137432b96b69522c112dfa0929ad19ad`  
		Last Modified: Thu, 05 Nov 2026 19:17:22 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8404b83a4e57b7c36cd56123e322208763dc681a3b2f0230795e15c25065c9e`  
		Last Modified: Thu, 05 Nov 2026 19:17:22 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:85b1101701266273c908b201635dcf545f926deaf1112aa8b635a7f327e95052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 KB (270477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:090e908771499aebeefdbb47620bb7ac0b484c5c0412a0101f942d27963376ae`

```dockerfile
```

-	Layers:
	-	`sha256:0908f3c2f203a82ce357dc8a24995fc5387c1563aa5da3aaf5c09d22497645d4`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 252.7 KB (252713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:047384138aae8d9e7f3933b7d36fd719041c8ed5462e62b9df74fe4bfe86cf39`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11.7`

```console
$ docker pull chronograf@sha256:973b10204ba70249c4f778611d398d47f861984be037ee52c8320a953c7a4956
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11.7` - linux; amd64

```console
$ docker pull chronograf@sha256:ae7140d4e18b8f10d6316c33c528fb7cb6ac1e4be4b90ef1d9bec16903762969
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96991070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde4fe78ff58e235861f708b43f8a7ce71042cbc4c90a47553eba66e58529bd1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Thu, 05 Nov 2026 07:38:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 05 Nov 2026 07:38:28 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Nov 2026 07:38:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 07:38:28 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b8dc02bdf8fcf4df48d6811119e805f58d3a335dcd0472d80fc7b5b950dbdf`  
		Last Modified: Thu, 05 Nov 2026 07:38:41 GMT  
		Size: 7.7 MB (7704270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f037355c33208b4748f99b0c5ca358722293ccda960ea042d42781dfb463f525`  
		Last Modified: Thu, 05 Nov 2026 07:38:43 GMT  
		Size: 61.0 MB (61014351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:284071b39bd099250a0ec3ccc71beca1ffac5e3130c5ef37356b6ff5cb5212f2`  
		Last Modified: Thu, 05 Nov 2026 07:38:41 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fac9aa9b54f026435ee802b1d8fe136f1a41319b0fe06022b0ea920d96012fbb`  
		Last Modified: Thu, 05 Nov 2026 07:38:41 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fc69b4109c7cd1e3a430176b76eac8dcd807726b551087e153ef48a1c161599`  
		Last Modified: Thu, 05 Nov 2026 07:38:42 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.7` - unknown; unknown

```console
$ docker pull chronograf@sha256:f42cfa5eafecade0ba9ede3c2b9dcf0a619b5dd7693ed8751da84f09a196976f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83f66418b7f568c0af6e80466c81adbb129de4be69905f86633c49e7400bbea2`

```dockerfile
```

-	Layers:
	-	`sha256:75d7d0d60fa680aaad2a99a901703135a5348ddb0fb4a70410fc37f98e8812bf`  
		Last Modified: Thu, 05 Nov 2026 07:38:41 GMT  
		Size: 2.9 MB (2877830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db8b956fa10270d190db7790d010d58657e549c973affc117cdd726dc7a29658`  
		Last Modified: Thu, 05 Nov 2026 07:38:41 GMT  
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
$ docker pull chronograf@sha256:2aeb1fa854ade074e0921ababfab1bd6077dde00da4e9b1fddd70623d18af266
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.11.7-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:0a529f031a63376965580a28f5d7bdfae459484e20f806637df671d9c0cbe01b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66211433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5fa740f46c075c92f1b32cecc9cd69c04115e5b9174d9a613f297f0d4922692`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:03 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Thu, 05 Nov 2026 19:17:09 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 05 Nov 2026 19:17:09 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Nov 2026 19:17:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:17:09 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a283f45868feeae563b34b2046ad3956d7e0f7c1f00280d305e096fdf0258e`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4d511e6f26babe2884595be43c448bd606f436b013a8a0e485c3e6d3063aee`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 293.8 KB (293835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146676637ed781dfb0bfbed3409d6e207676cf1c054cfd904169845e740271d5`  
		Last Modified: Thu, 05 Nov 2026 19:17:23 GMT  
		Size: 62.0 MB (62039198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80096eafdb90dffa24cfee53e27ce5b8e0ade65f02b1eabf303786c7103e5989`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d464ba74ab32f1c69c64710ae83d9f5137432b96b69522c112dfa0929ad19ad`  
		Last Modified: Thu, 05 Nov 2026 19:17:22 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8404b83a4e57b7c36cd56123e322208763dc681a3b2f0230795e15c25065c9e`  
		Last Modified: Thu, 05 Nov 2026 19:17:22 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.7-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:85b1101701266273c908b201635dcf545f926deaf1112aa8b635a7f327e95052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 KB (270477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:090e908771499aebeefdbb47620bb7ac0b484c5c0412a0101f942d27963376ae`

```dockerfile
```

-	Layers:
	-	`sha256:0908f3c2f203a82ce357dc8a24995fc5387c1563aa5da3aaf5c09d22497645d4`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 252.7 KB (252713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:047384138aae8d9e7f3933b7d36fd719041c8ed5462e62b9df74fe4bfe86cf39`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:2aeb1fa854ade074e0921ababfab1bd6077dde00da4e9b1fddd70623d18af266
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:0a529f031a63376965580a28f5d7bdfae459484e20f806637df671d9c0cbe01b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66211433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5fa740f46c075c92f1b32cecc9cd69c04115e5b9174d9a613f297f0d4922692`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:03 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Thu, 05 Nov 2026 19:17:09 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 05 Nov 2026 19:17:09 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Nov 2026 19:17:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:17:09 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a283f45868feeae563b34b2046ad3956d7e0f7c1f00280d305e096fdf0258e`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4d511e6f26babe2884595be43c448bd606f436b013a8a0e485c3e6d3063aee`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 293.8 KB (293835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146676637ed781dfb0bfbed3409d6e207676cf1c054cfd904169845e740271d5`  
		Last Modified: Thu, 05 Nov 2026 19:17:23 GMT  
		Size: 62.0 MB (62039198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80096eafdb90dffa24cfee53e27ce5b8e0ade65f02b1eabf303786c7103e5989`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d464ba74ab32f1c69c64710ae83d9f5137432b96b69522c112dfa0929ad19ad`  
		Last Modified: Thu, 05 Nov 2026 19:17:22 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8404b83a4e57b7c36cd56123e322208763dc681a3b2f0230795e15c25065c9e`  
		Last Modified: Thu, 05 Nov 2026 19:17:22 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:85b1101701266273c908b201635dcf545f926deaf1112aa8b635a7f327e95052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 KB (270477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:090e908771499aebeefdbb47620bb7ac0b484c5c0412a0101f942d27963376ae`

```dockerfile
```

-	Layers:
	-	`sha256:0908f3c2f203a82ce357dc8a24995fc5387c1563aa5da3aaf5c09d22497645d4`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 252.7 KB (252713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:047384138aae8d9e7f3933b7d36fd719041c8ed5462e62b9df74fe4bfe86cf39`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:973b10204ba70249c4f778611d398d47f861984be037ee52c8320a953c7a4956
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:ae7140d4e18b8f10d6316c33c528fb7cb6ac1e4be4b90ef1d9bec16903762969
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96991070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde4fe78ff58e235861f708b43f8a7ce71042cbc4c90a47553eba66e58529bd1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Thu, 05 Nov 2026 07:38:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 05 Nov 2026 07:38:28 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Nov 2026 07:38:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 07:38:28 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b8dc02bdf8fcf4df48d6811119e805f58d3a335dcd0472d80fc7b5b950dbdf`  
		Last Modified: Thu, 05 Nov 2026 07:38:41 GMT  
		Size: 7.7 MB (7704270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f037355c33208b4748f99b0c5ca358722293ccda960ea042d42781dfb463f525`  
		Last Modified: Thu, 05 Nov 2026 07:38:43 GMT  
		Size: 61.0 MB (61014351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:284071b39bd099250a0ec3ccc71beca1ffac5e3130c5ef37356b6ff5cb5212f2`  
		Last Modified: Thu, 05 Nov 2026 07:38:41 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fac9aa9b54f026435ee802b1d8fe136f1a41319b0fe06022b0ea920d96012fbb`  
		Last Modified: Thu, 05 Nov 2026 07:38:41 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fc69b4109c7cd1e3a430176b76eac8dcd807726b551087e153ef48a1c161599`  
		Last Modified: Thu, 05 Nov 2026 07:38:42 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:f42cfa5eafecade0ba9ede3c2b9dcf0a619b5dd7693ed8751da84f09a196976f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83f66418b7f568c0af6e80466c81adbb129de4be69905f86633c49e7400bbea2`

```dockerfile
```

-	Layers:
	-	`sha256:75d7d0d60fa680aaad2a99a901703135a5348ddb0fb4a70410fc37f98e8812bf`  
		Last Modified: Thu, 05 Nov 2026 07:38:41 GMT  
		Size: 2.9 MB (2877830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db8b956fa10270d190db7790d010d58657e549c973affc117cdd726dc7a29658`  
		Last Modified: Thu, 05 Nov 2026 07:38:41 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm64 variant v8

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

### `chronograf:latest` - unknown; unknown

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
