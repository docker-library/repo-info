## `telegraf:latest`

```console
$ docker pull telegraf@sha256:8c1bc372ffa128be2febfe25f1fe092333d3d6c2293cf5e57176582179ba358a
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
$ docker pull telegraf@sha256:79827d526040bd01441368b56159b2d9eb092f57b88d5a748374a37f8c376e2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.0 MB (176043086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b09fa09ef774aa21e5413f1fae7d9ab1bbfcc766a860375b92bcda2768b6ee70`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:43:35 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:43:35 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 02:43:39 GMT
ENV TELEGRAF_VERSION=1.39.1
# Tue, 14 Jul 2026 02:43:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 14 Jul 2026 02:43:39 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 14 Jul 2026 02:43:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:43:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:43:39 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199b7f5c7f2dfe639b7a85d7a15592bb224b96e7d779a85899bad31b8180cb5c`  
		Last Modified: Tue, 14 Jul 2026 02:43:58 GMT  
		Size: 18.9 MB (18944516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2fe60e2417a2d2e56aa674fbc3723877820ee21a401b0a19b221d7a1cc8c068`  
		Last Modified: Tue, 14 Jul 2026 02:43:57 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da90e0f9801c527b36e0de10f8a436e1ee8dd4a56f3806d62e810c28fb65aa9c`  
		Last Modified: Tue, 14 Jul 2026 02:44:00 GMT  
		Size: 84.6 MB (84551388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b240b1bd8717b19919e3ac764c02b9c0ffe50b6b24f29cac93694f8294e1ccb5`  
		Last Modified: Tue, 14 Jul 2026 02:43:58 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:cee5c9acc939afa6a46fd0af292193bb52f160d5de8123ddd4b2470013df2d67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6700620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3866aae6066ac53653ce2a8186a28f2197cbc06e349060e1753bbe32b8505d24`

```dockerfile
```

-	Layers:
	-	`sha256:df44e4d70e9bdefb92e685969169f368d2afd8e172c64f81d7a0dc2283de19cb`  
		Last Modified: Tue, 14 Jul 2026 02:43:58 GMT  
		Size: 6.7 MB (6685891 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45c13ee35483154d9c10dc50540ea00f6430ef053e330747fc53e189fc3c354e`  
		Last Modified: Tue, 14 Jul 2026 02:43:58 GMT  
		Size: 14.7 KB (14729 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:aa97688d381bf3e16cd1f6a4d7fb872a115a11de77e844dc99bd5b5f170a7aba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.2 MB (162243851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29fb62b98b2b694bfe94cbcf54bd5d1b25db3fd37746f48e8b017a72ddb6b2c6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:28:00 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:28:00 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 04:28:36 GMT
ENV TELEGRAF_VERSION=1.39.1
# Tue, 14 Jul 2026 04:28:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 14 Jul 2026 04:28:36 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 14 Jul 2026 04:28:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 04:28:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 04:28:36 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f08ce4a309195cc7b461516684fc0628d56fd465c538e7c129a9eecab47df45a`  
		Last Modified: Tue, 14 Jul 2026 00:13:47 GMT  
		Size: 44.2 MB (44203181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1132f9cb1292797584a716d4e35906092ffde6a92ac73ad7e53bf2011c37fd7c`  
		Last Modified: Tue, 14 Jul 2026 02:29:25 GMT  
		Size: 22.0 MB (21950005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dcd8d983de44c9f051a06e8133738b3074e263b0d6de2ac6aeceb559442e93e`  
		Last Modified: Tue, 14 Jul 2026 04:28:23 GMT  
		Size: 17.7 MB (17699806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f683ba530b5524c80a9e05b40023d9c678460d45d2106fa1898948d8dbe2f7`  
		Last Modified: Tue, 14 Jul 2026 04:28:22 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a22c1ce8837d0a16fe56d7bdac920614905ae9be0c328606a7dc4178579ea10`  
		Last Modified: Tue, 14 Jul 2026 04:28:54 GMT  
		Size: 78.4 MB (78385181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f39cd29246f530ae5c4caa3dfa39bf58b64c32c593839ec012447d0fd6e90c4`  
		Last Modified: Tue, 14 Jul 2026 04:28:52 GMT  
		Size: 623.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:3b5b4fa68b890eb196604226fad108ebfd6b46510e4a0ef1a3b9463b71b53769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6696128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91cc42eef9c1b468fa2a99560e110a0a80ca6f4094c1c574997807f6fe48e50f`

```dockerfile
```

-	Layers:
	-	`sha256:d9eb107d65d73037eaaa6497ae873e0162e47ca35a007eefff61e8f7586e3fb7`  
		Last Modified: Tue, 14 Jul 2026 04:28:53 GMT  
		Size: 6.7 MB (6681301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4de6b633393535a6bdc34bc897c855dd9d7c741aefb1f9ee00db4f75df589a44`  
		Last Modified: Tue, 14 Jul 2026 04:28:53 GMT  
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
