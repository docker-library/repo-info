<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `telegraf`

-	[`telegraf:1.38`](#telegraf138)
-	[`telegraf:1.38-alpine`](#telegraf138-alpine)
-	[`telegraf:1.38.4`](#telegraf1384)
-	[`telegraf:1.38.4-alpine`](#telegraf1384-alpine)
-	[`telegraf:1.39`](#telegraf139)
-	[`telegraf:1.39-alpine`](#telegraf139-alpine)
-	[`telegraf:1.39.3`](#telegraf1393)
-	[`telegraf:1.39.3-alpine`](#telegraf1393-alpine)
-	[`telegraf:1.40`](#telegraf140)
-	[`telegraf:1.40-alpine`](#telegraf140-alpine)
-	[`telegraf:1.40.2`](#telegraf1402)
-	[`telegraf:1.40.2-alpine`](#telegraf1402-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)

## `telegraf:1.38`

```console
$ docker pull telegraf@sha256:c4b77f902ab3080c1f0b63aefc0cd01ac3273a0fd08b84e698b48b6d12aab659
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.38` - linux; amd64

```console
$ docker pull telegraf@sha256:18f12c6bdd81c98956965d76440c30e7424da451f5bba02d91186883901fbd4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174861094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59be41c93c373bc4852d607e85570393ea4a091058717a02429874eee194636b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:06 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:07 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:41:11 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 21 Oct 2026 01:41:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:41:11 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:41:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:41:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:11 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f3510f14ae1203443980e2b03e3c4adb950f89becd0189ad5032562ef49ea0`  
		Last Modified: Wed, 21 Oct 2026 00:46:13 GMT  
		Size: 23.9 MB (23871736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcdf3d73237192cb7c3a26f0c3a1ae2b2f95c991bbae4655d47475d8780cb2ff`  
		Last Modified: Wed, 21 Oct 2026 01:41:31 GMT  
		Size: 19.0 MB (18950470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ad6234031bae42e8f33a2cfcef2fbb7dcc2d36ef2e4ef392d71d118fbf17c3`  
		Last Modified: Wed, 21 Oct 2026 01:41:30 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7101b5cc2f68c57ed65310bc6b9cf3bbc3ce82c1c557c0850f127b80179616`  
		Last Modified: Wed, 21 Oct 2026 01:41:33 GMT  
		Size: 83.5 MB (83511107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8dd6d0501e4d5533b519dfdc71d7181e5badcf0da58bd4819305cb10b795530`  
		Last Modified: Wed, 21 Oct 2026 01:41:30 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:ca51e7176d8e5c1deed31d5cae9796707cb2c1f2019d6290344026bb63b1f958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6691931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ef8fbe54075a78a37b78a89f6082770afebd717525d3cefa44192f83690500`

```dockerfile
```

-	Layers:
	-	`sha256:0cbc1080766b221f9594eebeb69adaac723bebb65882d9ee5ac2fdbd0e0f019c`  
		Last Modified: Wed, 21 Oct 2026 01:41:30 GMT  
		Size: 6.7 MB (6677504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41cacd11c94b8faafb70ab7d798c7c0baef580c90cac7da0509cf4099a12bd80`  
		Last Modified: Wed, 21 Oct 2026 01:41:30 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:6b95af5e66f8ccecc9d0c8a86ed8523cd77ef2eeb6de67dcdff4efa286c12939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161125705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820b25aaeba4d577014f938efe23ac8f494209074c08382d6221ddd6fb92bbb5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:28:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:49:02 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:49:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 02:49:08 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 21 Oct 2026 02:49:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 02:49:08 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 02:49:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 02:49:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 02:49:08 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0e6c3aa2596e24d9a17b151f95f8e195e564ddb757b91b91b71a17fcb3d66860`  
		Last Modified: Tue, 20 Oct 2026 23:29:51 GMT  
		Size: 44.2 MB (44219795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad4f19b42174763c21417798727f47dfa19a991678ae80c71f307fc6d78c84e`  
		Last Modified: Wed, 21 Oct 2026 01:28:56 GMT  
		Size: 21.8 MB (21768455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:555d5bee2edb7dd57e05eea93fee6e2fd68276f486e0b41d74ad33c76b370d8c`  
		Last Modified: Wed, 21 Oct 2026 02:49:29 GMT  
		Size: 17.7 MB (17703830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90e6d14db78c18f6c162c8913878f5b92324ef01a9db622218a0cb8da10502ab`  
		Last Modified: Wed, 21 Oct 2026 02:49:28 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5335edf552f6e543a369c130258facf8232e63bec6a7dec0fb4eca16051f9710`  
		Last Modified: Wed, 21 Oct 2026 02:49:31 GMT  
		Size: 77.4 MB (77427913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de4ce2e8b5d1de60abece351b3d0f8bbeb701c585bb6daccb576877d467e2529`  
		Last Modified: Wed, 21 Oct 2026 02:49:28 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:e106c18c29b55ab3ff907de5bd347e5a20875e87b4d2ea6de4d37f2d5518b956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6686618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5493bc5248539082fc4e8198925b893eb700c0e9ee966dcc0d70fdd04fccfd`

```dockerfile
```

-	Layers:
	-	`sha256:a8b49d1974dcfd14d263cc58824e9bf4ccaa18236215817a43307852f2cf849b`  
		Last Modified: Wed, 21 Oct 2026 02:49:29 GMT  
		Size: 6.7 MB (6672101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b7a9d5aec8f18007f2833738e424750943aacb20773dc2dde0f705732638771`  
		Last Modified: Wed, 21 Oct 2026 02:49:28 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:8efa33c74e833d1ea06d7f51b66f6eb261db20e2abbfe5faf12c5cbbd0abc6ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165214761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93d6f4a02b83aa16421c9ce24e4b162c89151559766bd4fa992fed361fa91838`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:48:40 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:48:41 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:48:46 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 21 Oct 2026 01:48:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:48:46 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:48:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:48:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 01:48:46 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaeb1b620bf2b62e66c0d3dc56c355947e95ede0e1f00fd7c3c9d37e3db15a29`  
		Last Modified: Wed, 21 Oct 2026 00:49:43 GMT  
		Size: 23.4 MB (23438928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2de27686d11dd70b01664c00df9413bb417c5f17349e77d6f9210d56b00cbe5`  
		Last Modified: Wed, 21 Oct 2026 01:49:05 GMT  
		Size: 18.9 MB (18890210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cab7d33eda075779603dde6435c500d146e1a9ca3a765fbf1a0188e07b0b24ce`  
		Last Modified: Wed, 21 Oct 2026 01:49:04 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa77329ecf52d9097f526e296d9ff73840fe8c88b69374490ce29d00aa3d1be`  
		Last Modified: Wed, 21 Oct 2026 01:49:07 GMT  
		Size: 74.5 MB (74476803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f3963825c11b3bbd5851b96dffd2c1a582a25f5fa2ccd839584925633f0ebd3`  
		Last Modified: Wed, 21 Oct 2026 01:49:04 GMT  
		Size: 640.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:92ff91b43119e4a5419a8d92bbc1da81b15072024eb22f30c07c4a3c23fe090b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6692717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38936088074fbcc79bc5b6c96875f9acd5b95928bf7a0975b50867f65ba011ae`

```dockerfile
```

-	Layers:
	-	`sha256:2fad8450d9d2113057911ee8fd8d6045a40c2642c29944c6685013f24c3e90c4`  
		Last Modified: Wed, 21 Oct 2026 01:49:05 GMT  
		Size: 6.7 MB (6678180 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eff0dfc1ab7f1f83eb2fd8047273f6523594d1c5d5bef251d03d70db31e3ebd1`  
		Last Modified: Wed, 21 Oct 2026 01:49:04 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38-alpine`

```console
$ docker pull telegraf@sha256:c4e265b36ae5167cdf740a4f3b7a51f8443cc1cfd330d12898f01c47bbd593f3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.38-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:7b63f204a94fa974e3549b575569f0bb279c1c7612a8a73372f08e4dff7b0204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92633499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bda4ca9ce5ca12e8c8fb7548d52e0cb49c24546033443e95112dbd20c5176a33`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:32:17 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:32:18 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:32:25 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 21 Oct 2026 21:32:25 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:32:25 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:32:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:32:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 21:32:25 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f54c01ca88a578b98f242e09363ae934159a7de560ae3e966e06d44f8a7dee`  
		Last Modified: Wed, 21 Oct 2026 21:32:41 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7cad50e7af710ee2c087aa12b217a6b798def01e48e651f7fbf52030f8ef0d`  
		Last Modified: Wed, 21 Oct 2026 21:32:42 GMT  
		Size: 2.6 MB (2571261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:590d3184e03e1f747798d5d232140efe49fff92932900a447a248919fcd8473c`  
		Last Modified: Wed, 21 Oct 2026 21:32:44 GMT  
		Size: 86.2 MB (86209096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facda3821d439f2b9abe0da5afd7e25f0a674c3cfed79b90b7c5b83dea57c8ed`  
		Last Modified: Wed, 21 Oct 2026 21:32:42 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:7fe6c82d94e10f7bd14ef680148a1496c841e47115f6d651706aebdbd16d9a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1157035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce7fbf892b6c7a99d1110072005ae18f01a512df780db889bad204d6e097ce2b`

```dockerfile
```

-	Layers:
	-	`sha256:24846957553e70de1f66610cf963abb28b9b0c413651447b5fad4132730c6f93`  
		Last Modified: Wed, 21 Oct 2026 21:32:42 GMT  
		Size: 1.1 MB (1141587 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d705f78270233b9f187cd9a2983b09ee7a27135cf38e2477eea0b398d00a0fd5`  
		Last Modified: Wed, 21 Oct 2026 21:32:42 GMT  
		Size: 15.4 KB (15448 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:51c8cf38226e3cd20c7f9c8741062cf20f9ba023ec855f43f72ffed5c13ee28b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83978446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:772346d1a668c9cbb6c4bdabde160333efddef3e324241c8dda22256eae4ec39`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:34:11 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:34:13 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:34:21 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 21 Oct 2026 21:34:21 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:34:21 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:34:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:34:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 21:34:21 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc371f4d882a9afa867b442d9555685492083bba48c45c4bfd1bbde6939508b3`  
		Last Modified: Wed, 21 Oct 2026 21:34:35 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b97a42c8e22c7aaf90ea030a7a3049044395e98879cce3c9a85a86a2c0456a`  
		Last Modified: Wed, 21 Oct 2026 21:34:35 GMT  
		Size: 2.6 MB (2620273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33237e4b2d30d05b6ce96484a879c3aec0f559edcc4d41c1df594fad01d2651d`  
		Last Modified: Wed, 21 Oct 2026 21:34:38 GMT  
		Size: 77.2 MB (77167764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bfbbbcf30af9d4dff99f8a91af5edc6839fef5268d598018fc330fd829bd6f7`  
		Last Modified: Wed, 21 Oct 2026 21:34:35 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:73f81daf4cc3deb53a112530dea15308fdd6063e22180f04093299bcd64d526a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1152123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d057ab2a063ff579b03f1a1c733eb8bdbe7159a5fcfb393bbd675ac647f9d11a`

```dockerfile
```

-	Layers:
	-	`sha256:6f375cb7e5a6005a1999b5f8dfa1956c2c77f96b3188719a89ff79e75c970ab5`  
		Last Modified: Wed, 21 Oct 2026 21:34:35 GMT  
		Size: 1.1 MB (1136564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba9da05f46028141e5819f147aa836dca6b657cdaa7d980a8bc86ff555076f2a`  
		Last Modified: Wed, 21 Oct 2026 21:34:35 GMT  
		Size: 15.6 KB (15559 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38.4`

```console
$ docker pull telegraf@sha256:c4b77f902ab3080c1f0b63aefc0cd01ac3273a0fd08b84e698b48b6d12aab659
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.38.4` - linux; amd64

```console
$ docker pull telegraf@sha256:18f12c6bdd81c98956965d76440c30e7424da451f5bba02d91186883901fbd4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174861094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59be41c93c373bc4852d607e85570393ea4a091058717a02429874eee194636b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:06 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:07 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:41:11 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 21 Oct 2026 01:41:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:41:11 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:41:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:41:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:11 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f3510f14ae1203443980e2b03e3c4adb950f89becd0189ad5032562ef49ea0`  
		Last Modified: Wed, 21 Oct 2026 00:46:13 GMT  
		Size: 23.9 MB (23871736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcdf3d73237192cb7c3a26f0c3a1ae2b2f95c991bbae4655d47475d8780cb2ff`  
		Last Modified: Wed, 21 Oct 2026 01:41:31 GMT  
		Size: 19.0 MB (18950470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ad6234031bae42e8f33a2cfcef2fbb7dcc2d36ef2e4ef392d71d118fbf17c3`  
		Last Modified: Wed, 21 Oct 2026 01:41:30 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7101b5cc2f68c57ed65310bc6b9cf3bbc3ce82c1c557c0850f127b80179616`  
		Last Modified: Wed, 21 Oct 2026 01:41:33 GMT  
		Size: 83.5 MB (83511107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8dd6d0501e4d5533b519dfdc71d7181e5badcf0da58bd4819305cb10b795530`  
		Last Modified: Wed, 21 Oct 2026 01:41:30 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:ca51e7176d8e5c1deed31d5cae9796707cb2c1f2019d6290344026bb63b1f958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6691931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ef8fbe54075a78a37b78a89f6082770afebd717525d3cefa44192f83690500`

```dockerfile
```

-	Layers:
	-	`sha256:0cbc1080766b221f9594eebeb69adaac723bebb65882d9ee5ac2fdbd0e0f019c`  
		Last Modified: Wed, 21 Oct 2026 01:41:30 GMT  
		Size: 6.7 MB (6677504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41cacd11c94b8faafb70ab7d798c7c0baef580c90cac7da0509cf4099a12bd80`  
		Last Modified: Wed, 21 Oct 2026 01:41:30 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:6b95af5e66f8ccecc9d0c8a86ed8523cd77ef2eeb6de67dcdff4efa286c12939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161125705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820b25aaeba4d577014f938efe23ac8f494209074c08382d6221ddd6fb92bbb5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:28:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:49:02 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:49:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 02:49:08 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 21 Oct 2026 02:49:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 02:49:08 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 02:49:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 02:49:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 02:49:08 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0e6c3aa2596e24d9a17b151f95f8e195e564ddb757b91b91b71a17fcb3d66860`  
		Last Modified: Tue, 20 Oct 2026 23:29:51 GMT  
		Size: 44.2 MB (44219795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad4f19b42174763c21417798727f47dfa19a991678ae80c71f307fc6d78c84e`  
		Last Modified: Wed, 21 Oct 2026 01:28:56 GMT  
		Size: 21.8 MB (21768455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:555d5bee2edb7dd57e05eea93fee6e2fd68276f486e0b41d74ad33c76b370d8c`  
		Last Modified: Wed, 21 Oct 2026 02:49:29 GMT  
		Size: 17.7 MB (17703830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90e6d14db78c18f6c162c8913878f5b92324ef01a9db622218a0cb8da10502ab`  
		Last Modified: Wed, 21 Oct 2026 02:49:28 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5335edf552f6e543a369c130258facf8232e63bec6a7dec0fb4eca16051f9710`  
		Last Modified: Wed, 21 Oct 2026 02:49:31 GMT  
		Size: 77.4 MB (77427913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de4ce2e8b5d1de60abece351b3d0f8bbeb701c585bb6daccb576877d467e2529`  
		Last Modified: Wed, 21 Oct 2026 02:49:28 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:e106c18c29b55ab3ff907de5bd347e5a20875e87b4d2ea6de4d37f2d5518b956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6686618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5493bc5248539082fc4e8198925b893eb700c0e9ee966dcc0d70fdd04fccfd`

```dockerfile
```

-	Layers:
	-	`sha256:a8b49d1974dcfd14d263cc58824e9bf4ccaa18236215817a43307852f2cf849b`  
		Last Modified: Wed, 21 Oct 2026 02:49:29 GMT  
		Size: 6.7 MB (6672101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b7a9d5aec8f18007f2833738e424750943aacb20773dc2dde0f705732638771`  
		Last Modified: Wed, 21 Oct 2026 02:49:28 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:8efa33c74e833d1ea06d7f51b66f6eb261db20e2abbfe5faf12c5cbbd0abc6ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165214761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93d6f4a02b83aa16421c9ce24e4b162c89151559766bd4fa992fed361fa91838`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:48:40 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:48:41 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:48:46 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 21 Oct 2026 01:48:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:48:46 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:48:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:48:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 01:48:46 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaeb1b620bf2b62e66c0d3dc56c355947e95ede0e1f00fd7c3c9d37e3db15a29`  
		Last Modified: Wed, 21 Oct 2026 00:49:43 GMT  
		Size: 23.4 MB (23438928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2de27686d11dd70b01664c00df9413bb417c5f17349e77d6f9210d56b00cbe5`  
		Last Modified: Wed, 21 Oct 2026 01:49:05 GMT  
		Size: 18.9 MB (18890210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cab7d33eda075779603dde6435c500d146e1a9ca3a765fbf1a0188e07b0b24ce`  
		Last Modified: Wed, 21 Oct 2026 01:49:04 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa77329ecf52d9097f526e296d9ff73840fe8c88b69374490ce29d00aa3d1be`  
		Last Modified: Wed, 21 Oct 2026 01:49:07 GMT  
		Size: 74.5 MB (74476803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f3963825c11b3bbd5851b96dffd2c1a582a25f5fa2ccd839584925633f0ebd3`  
		Last Modified: Wed, 21 Oct 2026 01:49:04 GMT  
		Size: 640.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:92ff91b43119e4a5419a8d92bbc1da81b15072024eb22f30c07c4a3c23fe090b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6692717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38936088074fbcc79bc5b6c96875f9acd5b95928bf7a0975b50867f65ba011ae`

```dockerfile
```

-	Layers:
	-	`sha256:2fad8450d9d2113057911ee8fd8d6045a40c2642c29944c6685013f24c3e90c4`  
		Last Modified: Wed, 21 Oct 2026 01:49:05 GMT  
		Size: 6.7 MB (6678180 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eff0dfc1ab7f1f83eb2fd8047273f6523594d1c5d5bef251d03d70db31e3ebd1`  
		Last Modified: Wed, 21 Oct 2026 01:49:04 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38.4-alpine`

```console
$ docker pull telegraf@sha256:c4e265b36ae5167cdf740a4f3b7a51f8443cc1cfd330d12898f01c47bbd593f3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.38.4-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:7b63f204a94fa974e3549b575569f0bb279c1c7612a8a73372f08e4dff7b0204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92633499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bda4ca9ce5ca12e8c8fb7548d52e0cb49c24546033443e95112dbd20c5176a33`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:32:17 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:32:18 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:32:25 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 21 Oct 2026 21:32:25 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:32:25 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:32:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:32:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 21:32:25 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f54c01ca88a578b98f242e09363ae934159a7de560ae3e966e06d44f8a7dee`  
		Last Modified: Wed, 21 Oct 2026 21:32:41 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7cad50e7af710ee2c087aa12b217a6b798def01e48e651f7fbf52030f8ef0d`  
		Last Modified: Wed, 21 Oct 2026 21:32:42 GMT  
		Size: 2.6 MB (2571261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:590d3184e03e1f747798d5d232140efe49fff92932900a447a248919fcd8473c`  
		Last Modified: Wed, 21 Oct 2026 21:32:44 GMT  
		Size: 86.2 MB (86209096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facda3821d439f2b9abe0da5afd7e25f0a674c3cfed79b90b7c5b83dea57c8ed`  
		Last Modified: Wed, 21 Oct 2026 21:32:42 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:7fe6c82d94e10f7bd14ef680148a1496c841e47115f6d651706aebdbd16d9a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1157035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce7fbf892b6c7a99d1110072005ae18f01a512df780db889bad204d6e097ce2b`

```dockerfile
```

-	Layers:
	-	`sha256:24846957553e70de1f66610cf963abb28b9b0c413651447b5fad4132730c6f93`  
		Last Modified: Wed, 21 Oct 2026 21:32:42 GMT  
		Size: 1.1 MB (1141587 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d705f78270233b9f187cd9a2983b09ee7a27135cf38e2477eea0b398d00a0fd5`  
		Last Modified: Wed, 21 Oct 2026 21:32:42 GMT  
		Size: 15.4 KB (15448 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:51c8cf38226e3cd20c7f9c8741062cf20f9ba023ec855f43f72ffed5c13ee28b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83978446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:772346d1a668c9cbb6c4bdabde160333efddef3e324241c8dda22256eae4ec39`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:34:11 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:34:13 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:34:21 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 21 Oct 2026 21:34:21 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:34:21 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:34:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:34:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 21:34:21 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc371f4d882a9afa867b442d9555685492083bba48c45c4bfd1bbde6939508b3`  
		Last Modified: Wed, 21 Oct 2026 21:34:35 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b97a42c8e22c7aaf90ea030a7a3049044395e98879cce3c9a85a86a2c0456a`  
		Last Modified: Wed, 21 Oct 2026 21:34:35 GMT  
		Size: 2.6 MB (2620273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33237e4b2d30d05b6ce96484a879c3aec0f559edcc4d41c1df594fad01d2651d`  
		Last Modified: Wed, 21 Oct 2026 21:34:38 GMT  
		Size: 77.2 MB (77167764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bfbbbcf30af9d4dff99f8a91af5edc6839fef5268d598018fc330fd829bd6f7`  
		Last Modified: Wed, 21 Oct 2026 21:34:35 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:73f81daf4cc3deb53a112530dea15308fdd6063e22180f04093299bcd64d526a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1152123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d057ab2a063ff579b03f1a1c733eb8bdbe7159a5fcfb393bbd675ac647f9d11a`

```dockerfile
```

-	Layers:
	-	`sha256:6f375cb7e5a6005a1999b5f8dfa1956c2c77f96b3188719a89ff79e75c970ab5`  
		Last Modified: Wed, 21 Oct 2026 21:34:35 GMT  
		Size: 1.1 MB (1136564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba9da05f46028141e5819f147aa836dca6b657cdaa7d980a8bc86ff555076f2a`  
		Last Modified: Wed, 21 Oct 2026 21:34:35 GMT  
		Size: 15.6 KB (15559 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39`

```console
$ docker pull telegraf@sha256:7eea6f5201bc307794831441f9e523969eb45ae36545509a00ed147c2d3e5d58
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39` - linux; amd64

```console
$ docker pull telegraf@sha256:d34cad09bc6b5b7a3c20132b831b0ddc32578194b24a8eecf935d0b6acc14002
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177605496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4452b43260fd48445c53ba51b4256ee4dc75e765a1e4247c31a931067bd45e`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:31 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:32 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:41:36 GMT
ENV TELEGRAF_VERSION=1.39.3
# Wed, 21 Oct 2026 01:41:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:41:36 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:41:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:41:36 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:36 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f3510f14ae1203443980e2b03e3c4adb950f89becd0189ad5032562ef49ea0`  
		Last Modified: Wed, 21 Oct 2026 00:46:13 GMT  
		Size: 23.9 MB (23871736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ea1168e36d59ada92de015f36a13ad152ad0715f3e5db23c1365b9edac586be`  
		Last Modified: Wed, 21 Oct 2026 01:41:55 GMT  
		Size: 19.3 MB (19290718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4dd83ff6f7fa462907928672cb328bd50dd97d2f2c596f8261f6925c3e3f91`  
		Last Modified: Wed, 21 Oct 2026 01:41:53 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03cd2f24d8cda20d13f3f7ffcdb602ba25619f06b1252fc96ef608e3ad4a4d24`  
		Last Modified: Wed, 21 Oct 2026 01:41:56 GMT  
		Size: 85.9 MB (85915247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca1d90af8f90e287bb61b0974b36432a53bdac35711c48662181d35376ec235`  
		Last Modified: Wed, 21 Oct 2026 01:41:54 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:475911c842fdd9f4dfc693bdab8fc038fb1af2cc998a858536682f9204465195
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a134dfcded0a259236b4e36f2a9509bd088cfbf6e155e32b26ef413bdb6fe5ad`

```dockerfile
```

-	Layers:
	-	`sha256:341495d699a627cf2e84733329bb2f95bc2faee22277fb0f036c1db946b79611`  
		Last Modified: Wed, 21 Oct 2026 01:41:54 GMT  
		Size: 6.7 MB (6687387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9a35b767640cd74957e5751e15ecc94c009481a912e5a57d7b1e40deef67f89`  
		Last Modified: Wed, 21 Oct 2026 01:41:53 GMT  
		Size: 14.5 KB (14468 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:4d763c18b4b9e27c15695e229783103aecbc1af6713d4b5f86e02a1bf8c326af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.8 MB (163818116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88cc5eccfdef9578a5914a2bf8d46a0cf22feeb8e03b08fc123ea52cc59c55e6`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:28:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:49:05 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:49:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 02:49:14 GMT
ENV TELEGRAF_VERSION=1.39.3
# Wed, 21 Oct 2026 02:49:14 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 02:49:14 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 02:49:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 02:49:14 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 02:49:14 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0e6c3aa2596e24d9a17b151f95f8e195e564ddb757b91b91b71a17fcb3d66860`  
		Last Modified: Tue, 20 Oct 2026 23:29:51 GMT  
		Size: 44.2 MB (44219795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad4f19b42174763c21417798727f47dfa19a991678ae80c71f307fc6d78c84e`  
		Last Modified: Wed, 21 Oct 2026 01:28:56 GMT  
		Size: 21.8 MB (21768455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f476998668e25f8864ca78d18120d6bcfcdde92a5654efece42133f352fe0e`  
		Last Modified: Wed, 21 Oct 2026 02:49:35 GMT  
		Size: 18.0 MB (17961328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5ac8d86407d716887c082e0b6b56af56061a8c80c3f1fd01e6b41c5e2d9b42f`  
		Last Modified: Wed, 21 Oct 2026 02:49:34 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13633cfd59d020478b9ca79c8dfb141386827fb2daa3a26ef91ee6ea4ea4d77f`  
		Last Modified: Wed, 21 Oct 2026 02:49:36 GMT  
		Size: 79.9 MB (79862828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e06b7b5c2182f7e24c18de37520c43f88cee01f4389443f406faa32cde83ef19`  
		Last Modified: Wed, 21 Oct 2026 02:49:34 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:442848297c32cc516031dfcb83eead3099d2a2427952f8daec184fe49d87fbc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6697347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a4e3141c44d225c5b44aafda8150df53976e3f59e8c4f12bd13038297b7db68`

```dockerfile
```

-	Layers:
	-	`sha256:73ff7755fd317deca53239798686bf8d65e0fbfda4a9a6ead0be31b3d072800b`  
		Last Modified: Wed, 21 Oct 2026 02:49:34 GMT  
		Size: 6.7 MB (6682789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a34ed133e78cfedafa61c8f9f7c571c719c4c389a8c801fc27109362f68d7032`  
		Last Modified: Wed, 21 Oct 2026 02:49:33 GMT  
		Size: 14.6 KB (14558 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:d20f5c5b27d437faa86a5f9405e3f8ec292ebc4ea44bb13ddadd1f04cda9ee9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167795718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:530a42a0ddf8c14a48ea728e2d808fdfc326ee4096968be8bf51994195b2d525`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:49:18 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:49:19 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:49:23 GMT
ENV TELEGRAF_VERSION=1.39.3
# Wed, 21 Oct 2026 01:49:23 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:49:23 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:49:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:49:23 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 01:49:23 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaeb1b620bf2b62e66c0d3dc56c355947e95ede0e1f00fd7c3c9d37e3db15a29`  
		Last Modified: Wed, 21 Oct 2026 00:49:43 GMT  
		Size: 23.4 MB (23438928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee447eaaf9c7a1234609e41baec1c0ae59924917e29d637b63b7dbc56135d32f`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 19.2 MB (19194232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e90b74760596bf6a87e0d5d647ccc1916662b38fe5336d9355aa0a3519ff4cdd`  
		Last Modified: Wed, 21 Oct 2026 01:49:40 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe7c811e744c33da2ee893524cdde29a32e41c63076ae35ed431ef69256356e`  
		Last Modified: Wed, 21 Oct 2026 01:49:43 GMT  
		Size: 76.8 MB (76753736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84e258aec575888974775289306023fc2fc53d91213f43eeb8d42b4f6f3854a`  
		Last Modified: Wed, 21 Oct 2026 01:49:41 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:154d7063996f70c03473717291e55acb897481a7c4c1c77195da9e4ebe275cff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6702641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dded445bedc36c05486c2debb5bd4386cd522722fcec42348fda58acfef096e6`

```dockerfile
```

-	Layers:
	-	`sha256:e676b0849ce7742833a300e7e55104a8851ff9386df9e8a8ed5298fb1af5e429`  
		Last Modified: Wed, 21 Oct 2026 01:49:41 GMT  
		Size: 6.7 MB (6688063 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7dec5201204cada4bb6a5137d4106a6af555f231849bf572d04926c492146340`  
		Last Modified: Wed, 21 Oct 2026 01:49:40 GMT  
		Size: 14.6 KB (14578 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39-alpine`

```console
$ docker pull telegraf@sha256:941df79bae0c0667ed051941e0a7f1af6d98a2cc70b1a11757dbf37ee169d88a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:514de8e25c406216b9adb898cc758218e62d848e6fb96040103ac7cd3de72f0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.0 MB (95036482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a73b8dad6a3456b460d3b5f01c03cb051e69f5224760731982addc9d04111ee`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:32:25 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:32:26 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:32:33 GMT
ENV TELEGRAF_VERSION=1.39.3
# Wed, 21 Oct 2026 21:32:33 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:32:33 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:32:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:32:33 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 21:32:33 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d916a8b8fe65166e5b60f899247dd866095a1607d2b31388dff9c172c7336928`  
		Last Modified: Wed, 21 Oct 2026 21:32:49 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90299dbb2777d242670a98994b40f4ac4bc5219c94d006139b86df09e744659`  
		Last Modified: Wed, 21 Oct 2026 21:32:49 GMT  
		Size: 2.6 MB (2578264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f348c360cbd734bc32ea58080b1557f0fb38d0e062264fca22cf5c110a56e1e`  
		Last Modified: Wed, 21 Oct 2026 21:32:51 GMT  
		Size: 88.6 MB (88605076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4f754bdc473dfdf59efa06b762fe822a65d9fb1ce79e3e7ff4a05216c0df668`  
		Last Modified: Wed, 21 Oct 2026 21:32:48 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:5ee221c213afab92234bc16af5c55293e5d1c959ab47f5ce95061c81682bb8b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1162597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a101a7881c02e646dab6cfdbaea6dd5c98766cbd9c8ee41532ce277dbb0f5c4`

```dockerfile
```

-	Layers:
	-	`sha256:e2177db46370d9b86ef42f0e5f4f90326fba1018aa2978c2eb763271fb70e8be`  
		Last Modified: Wed, 21 Oct 2026 21:32:49 GMT  
		Size: 1.1 MB (1147111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0325025da6f832c2213375c7981efa3e103f6206d1c5db0c2b5f40410499719`  
		Last Modified: Wed, 21 Oct 2026 21:32:48 GMT  
		Size: 15.5 KB (15486 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:4a50e5abee1afd285d612ca3e63b9573be1992e207d5285da1fa9d1443cec92d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86256719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d09ce48f74904a3481e2ffc0ec1b7783b75c478b21a3d12b37b275799a5f4de1`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:34:16 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:34:17 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:34:24 GMT
ENV TELEGRAF_VERSION=1.39.3
# Wed, 21 Oct 2026 21:34:24 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:34:24 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:34:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:34:24 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 21:34:24 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c78fb1e4d220f9a201120e098ac3b14e41cd011ff79385c4874696e3cc5c1d`  
		Last Modified: Wed, 21 Oct 2026 21:34:38 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:373a53d8093f43d06fb8e15aa8d7dd259fa9e1fd9ab2da6854c4b68334d18c97`  
		Last Modified: Wed, 21 Oct 2026 21:34:39 GMT  
		Size: 2.6 MB (2628552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48e8921e1ccd84a8064f3eb7cfb095eb6be3f8a9d8663b802cc28de386e6680`  
		Last Modified: Wed, 21 Oct 2026 21:34:40 GMT  
		Size: 79.4 MB (79437759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77b9a97a99f3a92b8b06a4b676d52fc3851899a6d90d4b4c761c3d815116a754`  
		Last Modified: Wed, 21 Oct 2026 21:34:38 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:5eec1ac10fcd009cf76a17ce47513bda5c428a2e590236e35c08740c777534be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1157683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844a31c5e185f6523460e30c2186ec094a190a29ca2f9daf4cbbcfaa64471ef9`

```dockerfile
```

-	Layers:
	-	`sha256:641f4ecb5a9033d1bf6a272bdeca41d10e0e8dd40ef7f6ce3c28195592f34ed0`  
		Last Modified: Wed, 21 Oct 2026 21:34:38 GMT  
		Size: 1.1 MB (1142088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c490e3bb6edf2ecc55c301ff6ef67dfa5936c537ff5cd7bca713f7f0861d7fd`  
		Last Modified: Wed, 21 Oct 2026 21:34:38 GMT  
		Size: 15.6 KB (15595 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39.3`

```console
$ docker pull telegraf@sha256:7eea6f5201bc307794831441f9e523969eb45ae36545509a00ed147c2d3e5d58
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39.3` - linux; amd64

```console
$ docker pull telegraf@sha256:d34cad09bc6b5b7a3c20132b831b0ddc32578194b24a8eecf935d0b6acc14002
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177605496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4452b43260fd48445c53ba51b4256ee4dc75e765a1e4247c31a931067bd45e`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:31 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:32 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:41:36 GMT
ENV TELEGRAF_VERSION=1.39.3
# Wed, 21 Oct 2026 01:41:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:41:36 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:41:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:41:36 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:36 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f3510f14ae1203443980e2b03e3c4adb950f89becd0189ad5032562ef49ea0`  
		Last Modified: Wed, 21 Oct 2026 00:46:13 GMT  
		Size: 23.9 MB (23871736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ea1168e36d59ada92de015f36a13ad152ad0715f3e5db23c1365b9edac586be`  
		Last Modified: Wed, 21 Oct 2026 01:41:55 GMT  
		Size: 19.3 MB (19290718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4dd83ff6f7fa462907928672cb328bd50dd97d2f2c596f8261f6925c3e3f91`  
		Last Modified: Wed, 21 Oct 2026 01:41:53 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03cd2f24d8cda20d13f3f7ffcdb602ba25619f06b1252fc96ef608e3ad4a4d24`  
		Last Modified: Wed, 21 Oct 2026 01:41:56 GMT  
		Size: 85.9 MB (85915247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca1d90af8f90e287bb61b0974b36432a53bdac35711c48662181d35376ec235`  
		Last Modified: Wed, 21 Oct 2026 01:41:54 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:475911c842fdd9f4dfc693bdab8fc038fb1af2cc998a858536682f9204465195
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a134dfcded0a259236b4e36f2a9509bd088cfbf6e155e32b26ef413bdb6fe5ad`

```dockerfile
```

-	Layers:
	-	`sha256:341495d699a627cf2e84733329bb2f95bc2faee22277fb0f036c1db946b79611`  
		Last Modified: Wed, 21 Oct 2026 01:41:54 GMT  
		Size: 6.7 MB (6687387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9a35b767640cd74957e5751e15ecc94c009481a912e5a57d7b1e40deef67f89`  
		Last Modified: Wed, 21 Oct 2026 01:41:53 GMT  
		Size: 14.5 KB (14468 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:4d763c18b4b9e27c15695e229783103aecbc1af6713d4b5f86e02a1bf8c326af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.8 MB (163818116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88cc5eccfdef9578a5914a2bf8d46a0cf22feeb8e03b08fc123ea52cc59c55e6`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:28:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:49:05 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:49:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 02:49:14 GMT
ENV TELEGRAF_VERSION=1.39.3
# Wed, 21 Oct 2026 02:49:14 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 02:49:14 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 02:49:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 02:49:14 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 02:49:14 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0e6c3aa2596e24d9a17b151f95f8e195e564ddb757b91b91b71a17fcb3d66860`  
		Last Modified: Tue, 20 Oct 2026 23:29:51 GMT  
		Size: 44.2 MB (44219795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad4f19b42174763c21417798727f47dfa19a991678ae80c71f307fc6d78c84e`  
		Last Modified: Wed, 21 Oct 2026 01:28:56 GMT  
		Size: 21.8 MB (21768455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f476998668e25f8864ca78d18120d6bcfcdde92a5654efece42133f352fe0e`  
		Last Modified: Wed, 21 Oct 2026 02:49:35 GMT  
		Size: 18.0 MB (17961328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5ac8d86407d716887c082e0b6b56af56061a8c80c3f1fd01e6b41c5e2d9b42f`  
		Last Modified: Wed, 21 Oct 2026 02:49:34 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13633cfd59d020478b9ca79c8dfb141386827fb2daa3a26ef91ee6ea4ea4d77f`  
		Last Modified: Wed, 21 Oct 2026 02:49:36 GMT  
		Size: 79.9 MB (79862828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e06b7b5c2182f7e24c18de37520c43f88cee01f4389443f406faa32cde83ef19`  
		Last Modified: Wed, 21 Oct 2026 02:49:34 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:442848297c32cc516031dfcb83eead3099d2a2427952f8daec184fe49d87fbc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6697347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a4e3141c44d225c5b44aafda8150df53976e3f59e8c4f12bd13038297b7db68`

```dockerfile
```

-	Layers:
	-	`sha256:73ff7755fd317deca53239798686bf8d65e0fbfda4a9a6ead0be31b3d072800b`  
		Last Modified: Wed, 21 Oct 2026 02:49:34 GMT  
		Size: 6.7 MB (6682789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a34ed133e78cfedafa61c8f9f7c571c719c4c389a8c801fc27109362f68d7032`  
		Last Modified: Wed, 21 Oct 2026 02:49:33 GMT  
		Size: 14.6 KB (14558 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:d20f5c5b27d437faa86a5f9405e3f8ec292ebc4ea44bb13ddadd1f04cda9ee9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167795718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:530a42a0ddf8c14a48ea728e2d808fdfc326ee4096968be8bf51994195b2d525`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:49:18 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:49:19 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:49:23 GMT
ENV TELEGRAF_VERSION=1.39.3
# Wed, 21 Oct 2026 01:49:23 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:49:23 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:49:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:49:23 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 01:49:23 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaeb1b620bf2b62e66c0d3dc56c355947e95ede0e1f00fd7c3c9d37e3db15a29`  
		Last Modified: Wed, 21 Oct 2026 00:49:43 GMT  
		Size: 23.4 MB (23438928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee447eaaf9c7a1234609e41baec1c0ae59924917e29d637b63b7dbc56135d32f`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 19.2 MB (19194232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e90b74760596bf6a87e0d5d647ccc1916662b38fe5336d9355aa0a3519ff4cdd`  
		Last Modified: Wed, 21 Oct 2026 01:49:40 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe7c811e744c33da2ee893524cdde29a32e41c63076ae35ed431ef69256356e`  
		Last Modified: Wed, 21 Oct 2026 01:49:43 GMT  
		Size: 76.8 MB (76753736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84e258aec575888974775289306023fc2fc53d91213f43eeb8d42b4f6f3854a`  
		Last Modified: Wed, 21 Oct 2026 01:49:41 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:154d7063996f70c03473717291e55acb897481a7c4c1c77195da9e4ebe275cff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6702641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dded445bedc36c05486c2debb5bd4386cd522722fcec42348fda58acfef096e6`

```dockerfile
```

-	Layers:
	-	`sha256:e676b0849ce7742833a300e7e55104a8851ff9386df9e8a8ed5298fb1af5e429`  
		Last Modified: Wed, 21 Oct 2026 01:49:41 GMT  
		Size: 6.7 MB (6688063 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7dec5201204cada4bb6a5137d4106a6af555f231849bf572d04926c492146340`  
		Last Modified: Wed, 21 Oct 2026 01:49:40 GMT  
		Size: 14.6 KB (14578 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39.3-alpine`

```console
$ docker pull telegraf@sha256:941df79bae0c0667ed051941e0a7f1af6d98a2cc70b1a11757dbf37ee169d88a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39.3-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:514de8e25c406216b9adb898cc758218e62d848e6fb96040103ac7cd3de72f0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.0 MB (95036482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a73b8dad6a3456b460d3b5f01c03cb051e69f5224760731982addc9d04111ee`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:32:25 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:32:26 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:32:33 GMT
ENV TELEGRAF_VERSION=1.39.3
# Wed, 21 Oct 2026 21:32:33 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:32:33 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:32:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:32:33 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 21:32:33 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d916a8b8fe65166e5b60f899247dd866095a1607d2b31388dff9c172c7336928`  
		Last Modified: Wed, 21 Oct 2026 21:32:49 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90299dbb2777d242670a98994b40f4ac4bc5219c94d006139b86df09e744659`  
		Last Modified: Wed, 21 Oct 2026 21:32:49 GMT  
		Size: 2.6 MB (2578264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f348c360cbd734bc32ea58080b1557f0fb38d0e062264fca22cf5c110a56e1e`  
		Last Modified: Wed, 21 Oct 2026 21:32:51 GMT  
		Size: 88.6 MB (88605076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4f754bdc473dfdf59efa06b762fe822a65d9fb1ce79e3e7ff4a05216c0df668`  
		Last Modified: Wed, 21 Oct 2026 21:32:48 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:5ee221c213afab92234bc16af5c55293e5d1c959ab47f5ce95061c81682bb8b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1162597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a101a7881c02e646dab6cfdbaea6dd5c98766cbd9c8ee41532ce277dbb0f5c4`

```dockerfile
```

-	Layers:
	-	`sha256:e2177db46370d9b86ef42f0e5f4f90326fba1018aa2978c2eb763271fb70e8be`  
		Last Modified: Wed, 21 Oct 2026 21:32:49 GMT  
		Size: 1.1 MB (1147111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0325025da6f832c2213375c7981efa3e103f6206d1c5db0c2b5f40410499719`  
		Last Modified: Wed, 21 Oct 2026 21:32:48 GMT  
		Size: 15.5 KB (15486 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.3-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:4a50e5abee1afd285d612ca3e63b9573be1992e207d5285da1fa9d1443cec92d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86256719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d09ce48f74904a3481e2ffc0ec1b7783b75c478b21a3d12b37b275799a5f4de1`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:34:16 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:34:17 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:34:24 GMT
ENV TELEGRAF_VERSION=1.39.3
# Wed, 21 Oct 2026 21:34:24 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:34:24 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:34:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:34:24 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 21:34:24 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c78fb1e4d220f9a201120e098ac3b14e41cd011ff79385c4874696e3cc5c1d`  
		Last Modified: Wed, 21 Oct 2026 21:34:38 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:373a53d8093f43d06fb8e15aa8d7dd259fa9e1fd9ab2da6854c4b68334d18c97`  
		Last Modified: Wed, 21 Oct 2026 21:34:39 GMT  
		Size: 2.6 MB (2628552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48e8921e1ccd84a8064f3eb7cfb095eb6be3f8a9d8663b802cc28de386e6680`  
		Last Modified: Wed, 21 Oct 2026 21:34:40 GMT  
		Size: 79.4 MB (79437759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77b9a97a99f3a92b8b06a4b676d52fc3851899a6d90d4b4c761c3d815116a754`  
		Last Modified: Wed, 21 Oct 2026 21:34:38 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:5eec1ac10fcd009cf76a17ce47513bda5c428a2e590236e35c08740c777534be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1157683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844a31c5e185f6523460e30c2186ec094a190a29ca2f9daf4cbbcfaa64471ef9`

```dockerfile
```

-	Layers:
	-	`sha256:641f4ecb5a9033d1bf6a272bdeca41d10e0e8dd40ef7f6ce3c28195592f34ed0`  
		Last Modified: Wed, 21 Oct 2026 21:34:38 GMT  
		Size: 1.1 MB (1142088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c490e3bb6edf2ecc55c301ff6ef67dfa5936c537ff5cd7bca713f7f0861d7fd`  
		Last Modified: Wed, 21 Oct 2026 21:34:38 GMT  
		Size: 15.6 KB (15595 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40`

```console
$ docker pull telegraf@sha256:074419740e5b702f2f358262c1e3036ec1e9c09e0d0eef388dff7ed838dea202
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40` - linux; amd64

```console
$ docker pull telegraf@sha256:bacd6eaed5f6586e095101a2533bb06fcee37bd842d2c645fdc9265844ab825e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.4 MB (180392107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd76b77a421ae0174a6eeed9794bbfa2add6b76056ed9cb655a97ff84449443`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:47 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:47 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:41:52 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 01:41:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:41:52 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:41:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:41:52 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:52 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f3510f14ae1203443980e2b03e3c4adb950f89becd0189ad5032562ef49ea0`  
		Last Modified: Wed, 21 Oct 2026 00:46:13 GMT  
		Size: 23.9 MB (23871736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a3b580249d83ee0b51bb931b3342de6f62d58ed6defa5dc81bc219ebbc21e9`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 19.3 MB (19290731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8991750fb0796f258d020a1b8d2e0579b17cb80e7abb5eac893147bd54ee0972`  
		Last Modified: Wed, 21 Oct 2026 01:42:14 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcec5d7aaa9cb7549e35d7a26b0fdbd6a8e590b0f8ecadfdc402f083e8da2233`  
		Last Modified: Wed, 21 Oct 2026 01:42:17 GMT  
		Size: 88.7 MB (88701859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ca0e093695b8a3b0a9c779023d3b22fe7ba7ba7d195dc9fcee4c26cf1cf9ee`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:306527f0a14becbdeb375b23444222c5d72cebb1d9cea7af08c9bfb3cd10d5a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7dc7beaf133efaeb506bb6740a9d37af31e0b173f785ca23af248b03bd69860`

```dockerfile
```

-	Layers:
	-	`sha256:6f96b081c091a08d0097eabae205e557f75b12b74a144f2a37a3badc5175fa6a`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 6.7 MB (6690012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9f3b3c568e560d3417b7afd9de5bbdc9de4aa2c9d23b8f2a3b8ba1bd400c418`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:09c93336e2b1a70d8f6d76a964f4cbc0fa762c462c0f2453d1c7e41401b544cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166483004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6451cc7191e0d8f6915bdc8439374211e8336934c106a070b2c9d345c1d10bfe`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:28:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:49:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:49:10 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 02:49:17 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 02:49:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 02:49:17 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 02:49:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 02:49:17 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 02:49:17 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0e6c3aa2596e24d9a17b151f95f8e195e564ddb757b91b91b71a17fcb3d66860`  
		Last Modified: Tue, 20 Oct 2026 23:29:51 GMT  
		Size: 44.2 MB (44219795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad4f19b42174763c21417798727f47dfa19a991678ae80c71f307fc6d78c84e`  
		Last Modified: Wed, 21 Oct 2026 01:28:56 GMT  
		Size: 21.8 MB (21768455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:839d137ca8838be9eb428c3ae923b8553bd8832b0d93f04f9d9c1fa024ba35f5`  
		Last Modified: Wed, 21 Oct 2026 02:49:39 GMT  
		Size: 18.0 MB (17961296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde9e36c07e06747134cf12319f134df5cdf2f9b84a2637b811140c0c4a199a8`  
		Last Modified: Wed, 21 Oct 2026 02:49:38 GMT  
		Size: 5.1 KB (5071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ce2775a7bc5ee0ee205d3be697ce781ff756e850f41c907b23152ed25e9efe3`  
		Last Modified: Wed, 21 Oct 2026 02:49:40 GMT  
		Size: 82.5 MB (82527745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eafdc6c4f53f5a1e48936ca54066a442145272755eb92967d01c2bb3436c1d0`  
		Last Modified: Wed, 21 Oct 2026 02:49:38 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:287cd98f6f8c94645af19f3e72f4908590d813dda2f335b9d8a1eb74c999b35e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6700290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:155a8adc175c9de794a4bee2d84bb90a8b65566b702c73abbcb3511977724c87`

```dockerfile
```

-	Layers:
	-	`sha256:c66e782135b56157f893d20dc3ae076d539ef6010ffff0700a8920aae928de56`  
		Last Modified: Wed, 21 Oct 2026 02:49:38 GMT  
		Size: 6.7 MB (6685422 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc7eedb0213deaa00f061702dc89d6a222d049af556d6dc64285e3a3cdd7bb5e`  
		Last Modified: Wed, 21 Oct 2026 02:49:38 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:51bc07a5af5f71bd3ca37933038edccadde838357841c55775b4cf3280d7db2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.3 MB (170284116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d23b26453edae2f9288f320cffd2d1f32175ea83689c461eb8e5c9d5f82e898`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:49:18 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:49:19 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:49:58 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 01:49:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:49:58 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:49:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:49:58 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 01:49:58 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaeb1b620bf2b62e66c0d3dc56c355947e95ede0e1f00fd7c3c9d37e3db15a29`  
		Last Modified: Wed, 21 Oct 2026 00:49:43 GMT  
		Size: 23.4 MB (23438928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee447eaaf9c7a1234609e41baec1c0ae59924917e29d637b63b7dbc56135d32f`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 19.2 MB (19194232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e90b74760596bf6a87e0d5d647ccc1916662b38fe5336d9355aa0a3519ff4cdd`  
		Last Modified: Wed, 21 Oct 2026 01:49:40 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f9b81d1588f45e8100f08d44a151edf411beee445f4f606a7f25534ae883f1`  
		Last Modified: Wed, 21 Oct 2026 01:50:17 GMT  
		Size: 79.2 MB (79242134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f068efaa6ef9104ac1316678acf258cb7bec27476641476480800e656893fa61`  
		Last Modified: Wed, 21 Oct 2026 01:50:15 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:ae2d4378077edc935418fb68a8768f6e2d3679e18ba75785115a4a580f67e197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6705592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9e9f45286c4b65c5de8c8a96922c1f7f2b2ca008b8bf61a6d56416666fe5a6`

```dockerfile
```

-	Layers:
	-	`sha256:42bddf15dfa63ba33fb2a95e70efbdb539259afd1a467df68e38693edfcea1ac`  
		Last Modified: Wed, 21 Oct 2026 01:50:15 GMT  
		Size: 6.7 MB (6690700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:022ad264279c7f297147040b5f1d4c9612e5cd245e1e4e1405293615dd883b27`  
		Last Modified: Wed, 21 Oct 2026 01:50:15 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40-alpine`

```console
$ docker pull telegraf@sha256:4a62bd294bf2f4c1e3781194fe7b625b7e527244eeb31afd5758227914a16229
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:ee80b97dbc73e75928b23bb44f9d37dc3c24c04d103a267391d57bbf0c715ba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97826055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc0d37fa5bccd21fc4cf4cd070eaeab6a4cb44b5c3b06928fec4e455f5a7fec`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:32:31 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:32:32 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:32:39 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 21:32:39 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:32:39 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:32:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:32:39 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 21:32:39 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfdd54f6f4e59c174324eef02571a6fff31e5408c96e950ff1a42c6d235670ea`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e931821e2cc8c823c295ba8d489b41179d43630c8091db45f32effed5b738bc`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 2.6 MB (2578264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61121e35107c11d0b1abbe121f15b57b5ed18de214095f46dfd4658b6a7a3255`  
		Last Modified: Wed, 21 Oct 2026 21:32:58 GMT  
		Size: 91.4 MB (91394651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed113135fee29685855d1d12b379a3ff0865e9e4e2af4eb37a0308b94d6e3682`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 634.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:24370ef8ec3af16c68e7dbdb589c3c68c4cfd5204e7e41dcb3de582848765ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1165524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:374408f3e19a4f55646a2c989fe7ba6261884fe7a75c06d9580fba85911025eb`

```dockerfile
```

-	Layers:
	-	`sha256:234de45d5bd34b8d5f400a2ce4dd0d707c98f73e92e256951f00fc6883243470`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 1.1 MB (1149736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03ab44257c63fde9552a3d1b6eb26ee1f634311eaec002b2ea452a902bd798bf`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:794fa91887f5927901ec362681fdbd16f2d4fb64b96e6fbb14804edacd1c57e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88729512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:886a355101435218d399e322d16467b264d85f1b8bedb6ac6c52638e06681563`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:34:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:34:35 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:34:42 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 21:34:42 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:34:42 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:34:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:34:42 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 21:34:42 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31b3ba44e1545643b0259d257983328bc9ec4bea27ccd4789ea8da8c5a2d6d2`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d14b83e01daa841bd6a6a638b9f776432f0f34b855c0ecbca9f320ff10452bf`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 2.6 MB (2628536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a09036a9a31093b38070c389fc413ab77ed61441d82ba90e997281bfc6fbcc14`  
		Last Modified: Wed, 21 Oct 2026 21:34:59 GMT  
		Size: 81.9 MB (81910568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c95b4db8b97f0744721fc8b5fef69b671779fd3a42a1032855a35c7ab6064f6d`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:a5c45baf758c848dc2b67cc63a910e60bc111deb52d22fa8435f134e929efbe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1160635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c53580f871d71641d71f8835553c19809c672e908a7425b16a9bcddfa8a6ea6`

```dockerfile
```

-	Layers:
	-	`sha256:c838e8f58a91f2204f082e8411cfaa2dca41a9b976a3267f6141ed8041f5f045`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 1.1 MB (1144725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f8d0f0d7a708eff68fc77e009cc1622b08722750937d0069d56a552f26ff246`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40.2`

```console
$ docker pull telegraf@sha256:074419740e5b702f2f358262c1e3036ec1e9c09e0d0eef388dff7ed838dea202
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40.2` - linux; amd64

```console
$ docker pull telegraf@sha256:bacd6eaed5f6586e095101a2533bb06fcee37bd842d2c645fdc9265844ab825e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.4 MB (180392107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd76b77a421ae0174a6eeed9794bbfa2add6b76056ed9cb655a97ff84449443`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:47 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:47 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:41:52 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 01:41:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:41:52 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:41:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:41:52 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:52 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f3510f14ae1203443980e2b03e3c4adb950f89becd0189ad5032562ef49ea0`  
		Last Modified: Wed, 21 Oct 2026 00:46:13 GMT  
		Size: 23.9 MB (23871736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a3b580249d83ee0b51bb931b3342de6f62d58ed6defa5dc81bc219ebbc21e9`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 19.3 MB (19290731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8991750fb0796f258d020a1b8d2e0579b17cb80e7abb5eac893147bd54ee0972`  
		Last Modified: Wed, 21 Oct 2026 01:42:14 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcec5d7aaa9cb7549e35d7a26b0fdbd6a8e590b0f8ecadfdc402f083e8da2233`  
		Last Modified: Wed, 21 Oct 2026 01:42:17 GMT  
		Size: 88.7 MB (88701859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ca0e093695b8a3b0a9c779023d3b22fe7ba7ba7d195dc9fcee4c26cf1cf9ee`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.2` - unknown; unknown

```console
$ docker pull telegraf@sha256:306527f0a14becbdeb375b23444222c5d72cebb1d9cea7af08c9bfb3cd10d5a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7dc7beaf133efaeb506bb6740a9d37af31e0b173f785ca23af248b03bd69860`

```dockerfile
```

-	Layers:
	-	`sha256:6f96b081c091a08d0097eabae205e557f75b12b74a144f2a37a3badc5175fa6a`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 6.7 MB (6690012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9f3b3c568e560d3417b7afd9de5bbdc9de4aa2c9d23b8f2a3b8ba1bd400c418`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.2` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:09c93336e2b1a70d8f6d76a964f4cbc0fa762c462c0f2453d1c7e41401b544cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166483004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6451cc7191e0d8f6915bdc8439374211e8336934c106a070b2c9d345c1d10bfe`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:28:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:49:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:49:10 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 02:49:17 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 02:49:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 02:49:17 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 02:49:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 02:49:17 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 02:49:17 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0e6c3aa2596e24d9a17b151f95f8e195e564ddb757b91b91b71a17fcb3d66860`  
		Last Modified: Tue, 20 Oct 2026 23:29:51 GMT  
		Size: 44.2 MB (44219795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad4f19b42174763c21417798727f47dfa19a991678ae80c71f307fc6d78c84e`  
		Last Modified: Wed, 21 Oct 2026 01:28:56 GMT  
		Size: 21.8 MB (21768455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:839d137ca8838be9eb428c3ae923b8553bd8832b0d93f04f9d9c1fa024ba35f5`  
		Last Modified: Wed, 21 Oct 2026 02:49:39 GMT  
		Size: 18.0 MB (17961296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde9e36c07e06747134cf12319f134df5cdf2f9b84a2637b811140c0c4a199a8`  
		Last Modified: Wed, 21 Oct 2026 02:49:38 GMT  
		Size: 5.1 KB (5071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ce2775a7bc5ee0ee205d3be697ce781ff756e850f41c907b23152ed25e9efe3`  
		Last Modified: Wed, 21 Oct 2026 02:49:40 GMT  
		Size: 82.5 MB (82527745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eafdc6c4f53f5a1e48936ca54066a442145272755eb92967d01c2bb3436c1d0`  
		Last Modified: Wed, 21 Oct 2026 02:49:38 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.2` - unknown; unknown

```console
$ docker pull telegraf@sha256:287cd98f6f8c94645af19f3e72f4908590d813dda2f335b9d8a1eb74c999b35e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6700290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:155a8adc175c9de794a4bee2d84bb90a8b65566b702c73abbcb3511977724c87`

```dockerfile
```

-	Layers:
	-	`sha256:c66e782135b56157f893d20dc3ae076d539ef6010ffff0700a8920aae928de56`  
		Last Modified: Wed, 21 Oct 2026 02:49:38 GMT  
		Size: 6.7 MB (6685422 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc7eedb0213deaa00f061702dc89d6a222d049af556d6dc64285e3a3cdd7bb5e`  
		Last Modified: Wed, 21 Oct 2026 02:49:38 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.2` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:51bc07a5af5f71bd3ca37933038edccadde838357841c55775b4cf3280d7db2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.3 MB (170284116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d23b26453edae2f9288f320cffd2d1f32175ea83689c461eb8e5c9d5f82e898`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:49:18 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:49:19 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:49:58 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 01:49:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:49:58 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:49:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:49:58 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 01:49:58 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaeb1b620bf2b62e66c0d3dc56c355947e95ede0e1f00fd7c3c9d37e3db15a29`  
		Last Modified: Wed, 21 Oct 2026 00:49:43 GMT  
		Size: 23.4 MB (23438928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee447eaaf9c7a1234609e41baec1c0ae59924917e29d637b63b7dbc56135d32f`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 19.2 MB (19194232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e90b74760596bf6a87e0d5d647ccc1916662b38fe5336d9355aa0a3519ff4cdd`  
		Last Modified: Wed, 21 Oct 2026 01:49:40 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f9b81d1588f45e8100f08d44a151edf411beee445f4f606a7f25534ae883f1`  
		Last Modified: Wed, 21 Oct 2026 01:50:17 GMT  
		Size: 79.2 MB (79242134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f068efaa6ef9104ac1316678acf258cb7bec27476641476480800e656893fa61`  
		Last Modified: Wed, 21 Oct 2026 01:50:15 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.2` - unknown; unknown

```console
$ docker pull telegraf@sha256:ae2d4378077edc935418fb68a8768f6e2d3679e18ba75785115a4a580f67e197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6705592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9e9f45286c4b65c5de8c8a96922c1f7f2b2ca008b8bf61a6d56416666fe5a6`

```dockerfile
```

-	Layers:
	-	`sha256:42bddf15dfa63ba33fb2a95e70efbdb539259afd1a467df68e38693edfcea1ac`  
		Last Modified: Wed, 21 Oct 2026 01:50:15 GMT  
		Size: 6.7 MB (6690700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:022ad264279c7f297147040b5f1d4c9612e5cd245e1e4e1405293615dd883b27`  
		Last Modified: Wed, 21 Oct 2026 01:50:15 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40.2-alpine`

```console
$ docker pull telegraf@sha256:4a62bd294bf2f4c1e3781194fe7b625b7e527244eeb31afd5758227914a16229
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40.2-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:ee80b97dbc73e75928b23bb44f9d37dc3c24c04d103a267391d57bbf0c715ba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97826055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc0d37fa5bccd21fc4cf4cd070eaeab6a4cb44b5c3b06928fec4e455f5a7fec`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:32:31 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:32:32 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:32:39 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 21:32:39 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:32:39 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:32:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:32:39 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 21:32:39 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfdd54f6f4e59c174324eef02571a6fff31e5408c96e950ff1a42c6d235670ea`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e931821e2cc8c823c295ba8d489b41179d43630c8091db45f32effed5b738bc`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 2.6 MB (2578264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61121e35107c11d0b1abbe121f15b57b5ed18de214095f46dfd4658b6a7a3255`  
		Last Modified: Wed, 21 Oct 2026 21:32:58 GMT  
		Size: 91.4 MB (91394651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed113135fee29685855d1d12b379a3ff0865e9e4e2af4eb37a0308b94d6e3682`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 634.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.2-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:24370ef8ec3af16c68e7dbdb589c3c68c4cfd5204e7e41dcb3de582848765ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1165524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:374408f3e19a4f55646a2c989fe7ba6261884fe7a75c06d9580fba85911025eb`

```dockerfile
```

-	Layers:
	-	`sha256:234de45d5bd34b8d5f400a2ce4dd0d707c98f73e92e256951f00fc6883243470`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 1.1 MB (1149736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03ab44257c63fde9552a3d1b6eb26ee1f634311eaec002b2ea452a902bd798bf`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.2-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:794fa91887f5927901ec362681fdbd16f2d4fb64b96e6fbb14804edacd1c57e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88729512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:886a355101435218d399e322d16467b264d85f1b8bedb6ac6c52638e06681563`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:34:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:34:35 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:34:42 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 21:34:42 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:34:42 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:34:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:34:42 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 21:34:42 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31b3ba44e1545643b0259d257983328bc9ec4bea27ccd4789ea8da8c5a2d6d2`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d14b83e01daa841bd6a6a638b9f776432f0f34b855c0ecbca9f320ff10452bf`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 2.6 MB (2628536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a09036a9a31093b38070c389fc413ab77ed61441d82ba90e997281bfc6fbcc14`  
		Last Modified: Wed, 21 Oct 2026 21:34:59 GMT  
		Size: 81.9 MB (81910568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c95b4db8b97f0744721fc8b5fef69b671779fd3a42a1032855a35c7ab6064f6d`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.2-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:a5c45baf758c848dc2b67cc63a910e60bc111deb52d22fa8435f134e929efbe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1160635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c53580f871d71641d71f8835553c19809c672e908a7425b16a9bcddfa8a6ea6`

```dockerfile
```

-	Layers:
	-	`sha256:c838e8f58a91f2204f082e8411cfaa2dca41a9b976a3267f6141ed8041f5f045`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 1.1 MB (1144725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f8d0f0d7a708eff68fc77e009cc1622b08722750937d0069d56a552f26ff246`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:4a62bd294bf2f4c1e3781194fe7b625b7e527244eeb31afd5758227914a16229
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:ee80b97dbc73e75928b23bb44f9d37dc3c24c04d103a267391d57bbf0c715ba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97826055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc0d37fa5bccd21fc4cf4cd070eaeab6a4cb44b5c3b06928fec4e455f5a7fec`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:32:31 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:32:32 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:32:39 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 21:32:39 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:32:39 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:32:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:32:39 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 21:32:39 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfdd54f6f4e59c174324eef02571a6fff31e5408c96e950ff1a42c6d235670ea`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e931821e2cc8c823c295ba8d489b41179d43630c8091db45f32effed5b738bc`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 2.6 MB (2578264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61121e35107c11d0b1abbe121f15b57b5ed18de214095f46dfd4658b6a7a3255`  
		Last Modified: Wed, 21 Oct 2026 21:32:58 GMT  
		Size: 91.4 MB (91394651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed113135fee29685855d1d12b379a3ff0865e9e4e2af4eb37a0308b94d6e3682`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 634.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:24370ef8ec3af16c68e7dbdb589c3c68c4cfd5204e7e41dcb3de582848765ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1165524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:374408f3e19a4f55646a2c989fe7ba6261884fe7a75c06d9580fba85911025eb`

```dockerfile
```

-	Layers:
	-	`sha256:234de45d5bd34b8d5f400a2ce4dd0d707c98f73e92e256951f00fc6883243470`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 1.1 MB (1149736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03ab44257c63fde9552a3d1b6eb26ee1f634311eaec002b2ea452a902bd798bf`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:794fa91887f5927901ec362681fdbd16f2d4fb64b96e6fbb14804edacd1c57e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88729512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:886a355101435218d399e322d16467b264d85f1b8bedb6ac6c52638e06681563`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:34:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:34:35 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:34:42 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 21:34:42 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:34:42 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:34:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:34:42 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 21:34:42 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31b3ba44e1545643b0259d257983328bc9ec4bea27ccd4789ea8da8c5a2d6d2`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d14b83e01daa841bd6a6a638b9f776432f0f34b855c0ecbca9f320ff10452bf`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 2.6 MB (2628536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a09036a9a31093b38070c389fc413ab77ed61441d82ba90e997281bfc6fbcc14`  
		Last Modified: Wed, 21 Oct 2026 21:34:59 GMT  
		Size: 81.9 MB (81910568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c95b4db8b97f0744721fc8b5fef69b671779fd3a42a1032855a35c7ab6064f6d`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:a5c45baf758c848dc2b67cc63a910e60bc111deb52d22fa8435f134e929efbe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1160635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c53580f871d71641d71f8835553c19809c672e908a7425b16a9bcddfa8a6ea6`

```dockerfile
```

-	Layers:
	-	`sha256:c838e8f58a91f2204f082e8411cfaa2dca41a9b976a3267f6141ed8041f5f045`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 1.1 MB (1144725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f8d0f0d7a708eff68fc77e009cc1622b08722750937d0069d56a552f26ff246`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:074419740e5b702f2f358262c1e3036ec1e9c09e0d0eef388dff7ed838dea202
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
$ docker pull telegraf@sha256:bacd6eaed5f6586e095101a2533bb06fcee37bd842d2c645fdc9265844ab825e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.4 MB (180392107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd76b77a421ae0174a6eeed9794bbfa2add6b76056ed9cb655a97ff84449443`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:47 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:47 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:41:52 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 01:41:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:41:52 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:41:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:41:52 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:52 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f3510f14ae1203443980e2b03e3c4adb950f89becd0189ad5032562ef49ea0`  
		Last Modified: Wed, 21 Oct 2026 00:46:13 GMT  
		Size: 23.9 MB (23871736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a3b580249d83ee0b51bb931b3342de6f62d58ed6defa5dc81bc219ebbc21e9`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 19.3 MB (19290731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8991750fb0796f258d020a1b8d2e0579b17cb80e7abb5eac893147bd54ee0972`  
		Last Modified: Wed, 21 Oct 2026 01:42:14 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcec5d7aaa9cb7549e35d7a26b0fdbd6a8e590b0f8ecadfdc402f083e8da2233`  
		Last Modified: Wed, 21 Oct 2026 01:42:17 GMT  
		Size: 88.7 MB (88701859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ca0e093695b8a3b0a9c779023d3b22fe7ba7ba7d195dc9fcee4c26cf1cf9ee`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:306527f0a14becbdeb375b23444222c5d72cebb1d9cea7af08c9bfb3cd10d5a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7dc7beaf133efaeb506bb6740a9d37af31e0b173f785ca23af248b03bd69860`

```dockerfile
```

-	Layers:
	-	`sha256:6f96b081c091a08d0097eabae205e557f75b12b74a144f2a37a3badc5175fa6a`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 6.7 MB (6690012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9f3b3c568e560d3417b7afd9de5bbdc9de4aa2c9d23b8f2a3b8ba1bd400c418`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:09c93336e2b1a70d8f6d76a964f4cbc0fa762c462c0f2453d1c7e41401b544cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166483004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6451cc7191e0d8f6915bdc8439374211e8336934c106a070b2c9d345c1d10bfe`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:28:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:49:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:49:10 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 02:49:17 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 02:49:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 02:49:17 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 02:49:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 02:49:17 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 02:49:17 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0e6c3aa2596e24d9a17b151f95f8e195e564ddb757b91b91b71a17fcb3d66860`  
		Last Modified: Tue, 20 Oct 2026 23:29:51 GMT  
		Size: 44.2 MB (44219795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad4f19b42174763c21417798727f47dfa19a991678ae80c71f307fc6d78c84e`  
		Last Modified: Wed, 21 Oct 2026 01:28:56 GMT  
		Size: 21.8 MB (21768455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:839d137ca8838be9eb428c3ae923b8553bd8832b0d93f04f9d9c1fa024ba35f5`  
		Last Modified: Wed, 21 Oct 2026 02:49:39 GMT  
		Size: 18.0 MB (17961296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde9e36c07e06747134cf12319f134df5cdf2f9b84a2637b811140c0c4a199a8`  
		Last Modified: Wed, 21 Oct 2026 02:49:38 GMT  
		Size: 5.1 KB (5071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ce2775a7bc5ee0ee205d3be697ce781ff756e850f41c907b23152ed25e9efe3`  
		Last Modified: Wed, 21 Oct 2026 02:49:40 GMT  
		Size: 82.5 MB (82527745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eafdc6c4f53f5a1e48936ca54066a442145272755eb92967d01c2bb3436c1d0`  
		Last Modified: Wed, 21 Oct 2026 02:49:38 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:287cd98f6f8c94645af19f3e72f4908590d813dda2f335b9d8a1eb74c999b35e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6700290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:155a8adc175c9de794a4bee2d84bb90a8b65566b702c73abbcb3511977724c87`

```dockerfile
```

-	Layers:
	-	`sha256:c66e782135b56157f893d20dc3ae076d539ef6010ffff0700a8920aae928de56`  
		Last Modified: Wed, 21 Oct 2026 02:49:38 GMT  
		Size: 6.7 MB (6685422 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc7eedb0213deaa00f061702dc89d6a222d049af556d6dc64285e3a3cdd7bb5e`  
		Last Modified: Wed, 21 Oct 2026 02:49:38 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:51bc07a5af5f71bd3ca37933038edccadde838357841c55775b4cf3280d7db2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.3 MB (170284116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d23b26453edae2f9288f320cffd2d1f32175ea83689c461eb8e5c9d5f82e898`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:49:18 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:49:19 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:49:58 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 01:49:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:49:58 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:49:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:49:58 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 01:49:58 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaeb1b620bf2b62e66c0d3dc56c355947e95ede0e1f00fd7c3c9d37e3db15a29`  
		Last Modified: Wed, 21 Oct 2026 00:49:43 GMT  
		Size: 23.4 MB (23438928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee447eaaf9c7a1234609e41baec1c0ae59924917e29d637b63b7dbc56135d32f`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 19.2 MB (19194232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e90b74760596bf6a87e0d5d647ccc1916662b38fe5336d9355aa0a3519ff4cdd`  
		Last Modified: Wed, 21 Oct 2026 01:49:40 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f9b81d1588f45e8100f08d44a151edf411beee445f4f606a7f25534ae883f1`  
		Last Modified: Wed, 21 Oct 2026 01:50:17 GMT  
		Size: 79.2 MB (79242134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f068efaa6ef9104ac1316678acf258cb7bec27476641476480800e656893fa61`  
		Last Modified: Wed, 21 Oct 2026 01:50:15 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:ae2d4378077edc935418fb68a8768f6e2d3679e18ba75785115a4a580f67e197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6705592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9e9f45286c4b65c5de8c8a96922c1f7f2b2ca008b8bf61a6d56416666fe5a6`

```dockerfile
```

-	Layers:
	-	`sha256:42bddf15dfa63ba33fb2a95e70efbdb539259afd1a467df68e38693edfcea1ac`  
		Last Modified: Wed, 21 Oct 2026 01:50:15 GMT  
		Size: 6.7 MB (6690700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:022ad264279c7f297147040b5f1d4c9612e5cd245e1e4e1405293615dd883b27`  
		Last Modified: Wed, 21 Oct 2026 01:50:15 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json
