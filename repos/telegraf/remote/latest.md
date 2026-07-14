## `telegraf:latest`

```console
$ docker pull telegraf@sha256:ecfa9c4c4c390040fd8df3bf22157c2de9e31de3572daa89e00a7ad790b630d2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:latest` - linux; amd64

```console
$ docker pull telegraf@sha256:3f328a5e0d7b3201bb1ae02558d39ac76cbc26ca3db0c3832430e3909957596e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.0 MB (176047866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b11ef7ced0e64f7d01e75aa563f95ff89781b981f99c9f26e232dcc7da55b484`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:41:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 29 Jun 2026 20:50:01 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 29 Jun 2026 20:50:02 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 29 Jun 2026 20:50:06 GMT
ENV TELEGRAF_VERSION=1.39.1
# Mon, 29 Jun 2026 20:50:06 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 29 Jun 2026 20:50:06 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 29 Jun 2026 20:50:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 29 Jun 2026 20:50:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 29 Jun 2026 20:50:06 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:425befdf76e52426879d2abe42093a00dca59a893e7b4fa2a7679b0180b71d4b`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 48.5 MB (48502210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fd7bf6f6036613e20f62549df75ed694b99118002358bea5a81baf3929d1ff`  
		Last Modified: Wed, 24 Jun 2026 01:41:33 GMT  
		Size: 24.0 MB (24044046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1fb0a7d83f63be7c562982cff66f6c8b17130748a65abe6a617d8105eea69c6`  
		Last Modified: Mon, 29 Jun 2026 20:50:25 GMT  
		Size: 18.9 MB (18944442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a79e5d205acb49c7a293767f6ce3ca527b578130a7f4256b7402b4010c400c`  
		Last Modified: Mon, 29 Jun 2026 20:50:24 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f271db62f3bce8ddd1bccb0ae8979501573d6856dbf1d488d05c4abf5d1ccaa0`  
		Last Modified: Mon, 29 Jun 2026 20:50:27 GMT  
		Size: 84.6 MB (84551475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3f68e7e092faab6b0544be6277d453657ab4b19e3e757fcf635ac5ca623a906`  
		Last Modified: Mon, 29 Jun 2026 20:50:24 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:8b4ff08b9887b635058fcd2937c28c8e36e32ec851ccdf8235b1f9a96c2b691a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6700584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f243d06d54e1ecdf39b6a28c20ae272be4b5102fb4ee3659390267d295e1aa6`

```dockerfile
```

-	Layers:
	-	`sha256:aae6cb5af1ca412336c2a09db62d8070c68ea03970507b526cfbec247ee9b11b`  
		Last Modified: Mon, 29 Jun 2026 20:50:25 GMT  
		Size: 6.7 MB (6685855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6e871304c7220333e5cd23e181d0ecb2bf0b11331031dbecbd73f4122b7866f`  
		Last Modified: Mon, 29 Jun 2026 20:50:24 GMT  
		Size: 14.7 KB (14729 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:2c003c268b9c304ec45aa185eca5379c88b95b0a7d5f625e1fadb62022a5ae10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.2 MB (162248555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15df5d3475f88eb80d6dbcb618408ee25aebdd3133a086283d9c97ebdea92259`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:22:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 29 Jun 2026 20:50:01 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 29 Jun 2026 20:50:01 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 29 Jun 2026 20:50:06 GMT
ENV TELEGRAF_VERSION=1.39.1
# Mon, 29 Jun 2026 20:50:06 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 29 Jun 2026 20:50:06 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 29 Jun 2026 20:50:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 29 Jun 2026 20:50:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 29 Jun 2026 20:50:06 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:3622debffba3838b917703fb6dd9c161a4d93d9fd97c61d3e8400a2245f93c67`  
		Last Modified: Wed, 24 Jun 2026 00:27:30 GMT  
		Size: 44.2 MB (44208145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0df8de55f365d832099cabf27409104999d59b26292d91202ca6e160c4b513`  
		Last Modified: Wed, 24 Jun 2026 02:22:52 GMT  
		Size: 21.9 MB (21949935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd77f82d72701851dbaa42cbfe088283af5455144459b2d1ba7fd5bf40db269`  
		Last Modified: Mon, 29 Jun 2026 20:50:24 GMT  
		Size: 17.7 MB (17699576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:257424f1f851e3f4b7b7408636a2e9a127c62bdb746d92e65beb00277f8fcd59`  
		Last Modified: Mon, 29 Jun 2026 20:50:23 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7a2100b37e5241fe69de3e2b35aa1eaffc5710e2cc3287e9d293682b51d657b`  
		Last Modified: Mon, 29 Jun 2026 20:50:26 GMT  
		Size: 78.4 MB (78385220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3f68e7e092faab6b0544be6277d453657ab4b19e3e757fcf635ac5ca623a906`  
		Last Modified: Mon, 29 Jun 2026 20:50:24 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:d5f8179516eaffc03e55d7531314a464cc254fd2c02a903e8d01efcd4cb0ce8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6696092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71706be05f9314e753c683d4bdf9207b97c65988719d9ff74ae1475788cdec7a`

```dockerfile
```

-	Layers:
	-	`sha256:4805e2e7cd299f9ef959de350238962928c91968f81475e416de84c6f1466b71`  
		Last Modified: Mon, 29 Jun 2026 20:50:24 GMT  
		Size: 6.7 MB (6681265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6faf02e0a31140df8500449bcf18aa15b5ec80e3d0315f1c9d497b07bb262179`  
		Last Modified: Mon, 29 Jun 2026 20:50:23 GMT  
		Size: 14.8 KB (14827 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:cde967905f416411b83c1533c6211691f6ae11a79885aec032579b72b5d81660
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166375450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc85ec993ea6ead9a1bf73cdc18aa94e0fc3dc058f55cdd10235ba8bc6480865`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:50:08 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:50:08 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 02:50:42 GMT
ENV TELEGRAF_VERSION=1.39.1
# Tue, 14 Jul 2026 02:50:42 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 14 Jul 2026 02:50:42 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 14 Jul 2026 02:50:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:50:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:50:42 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3bfe7e3c6a92e1bda6d3ddde9de882610239eba4323fd75d10ba1bccee7876`  
		Last Modified: Tue, 14 Jul 2026 01:46:42 GMT  
		Size: 23.6 MB (23612703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29eb801b8caa3a6582b7f4fa443f1bb5001b1ef0516d45fee049aa1c8d3add48`  
		Last Modified: Tue, 14 Jul 2026 02:50:31 GMT  
		Size: 18.9 MB (18885918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24e85f3cdadf09c6f1ad7327734e8135f9e8b6b06eb9beb64453c351e19ee7a`  
		Last Modified: Tue, 14 Jul 2026 02:50:30 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b9f37a3683510976dcc8f4044ab7999efb9a10b9780ac7c4e74979b7ae4fda9`  
		Last Modified: Tue, 14 Jul 2026 02:51:01 GMT  
		Size: 75.5 MB (75487459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a992336854c7d78c86ece8e0705d00303dc9b0404cc176ac9b8c97ac0fcb9541`  
		Last Modified: Tue, 14 Jul 2026 02:50:59 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:47492d6621908a245ae2963e7eb182496986cd0f017740c3b79270d8bbdb2754
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d79c66baf7859c6ccada06cfbe9cf49e31b2671450a169949a8ba5df7bb964db`

```dockerfile
```

-	Layers:
	-	`sha256:62426f4630328eee2367cb93a5c5dc801e9ab4e5d2799ef57228a1105fb83d8f`  
		Last Modified: Tue, 14 Jul 2026 02:50:59 GMT  
		Size: 6.7 MB (6686579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27ea2d4f0d3a6de7c600dc5cde7a3ad3a9b70f133331793d3ae74ce644cb61fe`  
		Last Modified: Tue, 14 Jul 2026 02:50:59 GMT  
		Size: 14.9 KB (14851 bytes)  
		MIME: application/vnd.in-toto+json
