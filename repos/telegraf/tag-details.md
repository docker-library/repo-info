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
$ docker pull telegraf@sha256:0c49f0d4523b488b3eeb1f41f35e98b2a26017d8a5ea9e9dc2a5684c2819e9da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.38-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:02047de9d4c354c91cba7748978f2ed36ef00fb959e29c77e13417c37dbfc02e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92633670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c079819d2b13d0f3a6a69cb5a8f817fece16d84b323738b3efd7f552487e6f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:58:05 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:58:06 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:58:12 GMT
ENV TELEGRAF_VERSION=1.38.4
# Thu, 17 Sep 2026 21:58:12 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 17 Sep 2026 21:58:12 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 17 Sep 2026 21:58:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:58:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:58:12 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37062f3d7f4494d0f1fb4c84fd15083e0653e8665f30a0717655ab4dba860ba9`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b503078cc287f740e8e108c22804d142ecfdd1fe44ce92f419ca543812d8b9a9`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 2.6 MB (2575216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f058f951d704e806e710a831f0d324fb923c8f199463c883aa8eee1fe0959099`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 86.2 MB (86209033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b31287f8530496c7fa0988a35e8bc3b0a5f990b1744549a81c00b494a2b80c8`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:463b34443d943b9304051a25cc047b740abe96528028c6ebffbc11fd1ccc6335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1158973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00ad80c9f84b87adbc880826d98e6e82d8893620e14f6873a7be9145d83d92cf`

```dockerfile
```

-	Layers:
	-	`sha256:cb669b233389d979b3f54200f5ee6c329f2faa134d6d8a5f5c6028adf3ac33ca`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 1.1 MB (1143524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27164b8edcff966282b8929e220dbd553e1050772093dba4e49a37db502ebd42`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:d4383971539dd172a076faa2e3b807653b9f456e790dc9eeada055f58f3bf108
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83975970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:016aba70052b9c7320f93d75619b311c8883df6e989baffe406786bcce224b6b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:16:08 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 22:16:09 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 22:16:15 GMT
ENV TELEGRAF_VERSION=1.38.4
# Thu, 17 Sep 2026 22:16:15 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 17 Sep 2026 22:16:15 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 17 Sep 2026 22:16:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 22:16:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 22:16:15 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb5d6680e146417887650d67af43b5203667227ce40ab4168d949835ea5bfe6`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679b3990ac25e94994c746a5bb75845d66e26a0c433ea6856c8cf043c791d0f6`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
		Size: 2.6 MB (2621794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eea738a53d379261f2ce1e0d2678c9982c1615a584fff4040d4282f2ce2be79`  
		Last Modified: Thu, 17 Sep 2026 22:16:31 GMT  
		Size: 77.2 MB (77167205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f941911e1c54b6138a2dc7e35c62ec8f84af42eb15f0b825da74f24ab84865`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:350754f44be034b24b49b5eaaf5da0b94814db82cdf3e67f9db769425f5dd0b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1154060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18ea681a96928f08d425954d27e2af0d4a9e8a7e59863201e529fbb7aea709fb`

```dockerfile
```

-	Layers:
	-	`sha256:a96b0d65902b2a4e66cd58f579da4213e3ed44dfcffd825b7c4cc3349ce5e9be`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
		Size: 1.1 MB (1138501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d33abab6a9fcbfd6fb47953b40c9ae2e0ec150d780d71553b95e2990e6017748`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
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
$ docker pull telegraf@sha256:0c49f0d4523b488b3eeb1f41f35e98b2a26017d8a5ea9e9dc2a5684c2819e9da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.38.4-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:02047de9d4c354c91cba7748978f2ed36ef00fb959e29c77e13417c37dbfc02e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92633670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c079819d2b13d0f3a6a69cb5a8f817fece16d84b323738b3efd7f552487e6f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:58:05 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:58:06 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:58:12 GMT
ENV TELEGRAF_VERSION=1.38.4
# Thu, 17 Sep 2026 21:58:12 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 17 Sep 2026 21:58:12 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 17 Sep 2026 21:58:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:58:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:58:12 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37062f3d7f4494d0f1fb4c84fd15083e0653e8665f30a0717655ab4dba860ba9`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b503078cc287f740e8e108c22804d142ecfdd1fe44ce92f419ca543812d8b9a9`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 2.6 MB (2575216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f058f951d704e806e710a831f0d324fb923c8f199463c883aa8eee1fe0959099`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 86.2 MB (86209033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b31287f8530496c7fa0988a35e8bc3b0a5f990b1744549a81c00b494a2b80c8`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:463b34443d943b9304051a25cc047b740abe96528028c6ebffbc11fd1ccc6335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1158973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00ad80c9f84b87adbc880826d98e6e82d8893620e14f6873a7be9145d83d92cf`

```dockerfile
```

-	Layers:
	-	`sha256:cb669b233389d979b3f54200f5ee6c329f2faa134d6d8a5f5c6028adf3ac33ca`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 1.1 MB (1143524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27164b8edcff966282b8929e220dbd553e1050772093dba4e49a37db502ebd42`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:d4383971539dd172a076faa2e3b807653b9f456e790dc9eeada055f58f3bf108
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83975970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:016aba70052b9c7320f93d75619b311c8883df6e989baffe406786bcce224b6b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:16:08 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 22:16:09 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 22:16:15 GMT
ENV TELEGRAF_VERSION=1.38.4
# Thu, 17 Sep 2026 22:16:15 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 17 Sep 2026 22:16:15 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 17 Sep 2026 22:16:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 22:16:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 22:16:15 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb5d6680e146417887650d67af43b5203667227ce40ab4168d949835ea5bfe6`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679b3990ac25e94994c746a5bb75845d66e26a0c433ea6856c8cf043c791d0f6`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
		Size: 2.6 MB (2621794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eea738a53d379261f2ce1e0d2678c9982c1615a584fff4040d4282f2ce2be79`  
		Last Modified: Thu, 17 Sep 2026 22:16:31 GMT  
		Size: 77.2 MB (77167205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f941911e1c54b6138a2dc7e35c62ec8f84af42eb15f0b825da74f24ab84865`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:350754f44be034b24b49b5eaaf5da0b94814db82cdf3e67f9db769425f5dd0b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1154060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18ea681a96928f08d425954d27e2af0d4a9e8a7e59863201e529fbb7aea709fb`

```dockerfile
```

-	Layers:
	-	`sha256:a96b0d65902b2a4e66cd58f579da4213e3ed44dfcffd825b7c4cc3349ce5e9be`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
		Size: 1.1 MB (1138501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d33abab6a9fcbfd6fb47953b40c9ae2e0ec150d780d71553b95e2990e6017748`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
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
$ docker pull telegraf@sha256:f11f13d46f6a778ae1fc733b059fc1a3e63a4e7b471f66df125090564e92fb60
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:fb699cc64d65165d123ba154586d2830eeb51584be9779ca6833e92a65527be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.0 MB (95036152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c7f20890af10fcc126bb9abe9f080a5128f31a4717eb1a13c290a0222d0c87`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:58:08 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:58:09 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:58:16 GMT
ENV TELEGRAF_VERSION=1.39.3
# Thu, 17 Sep 2026 21:58:16 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 17 Sep 2026 21:58:16 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 17 Sep 2026 21:58:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:58:16 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 17 Sep 2026 21:58:16 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d472d16438d99f15408700eeaef23e1f795649e518e79dfe676676923f0d0aa`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea9bed35a66fa4fa87118c41f37f6328994bb9f6008fa11ebaeb140bedf76a11`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 2.6 MB (2581362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba386ff1343c61d2710ade335242b642e9cf6eea0e27ac71588acb1d43022ca5`  
		Last Modified: Thu, 17 Sep 2026 21:58:32 GMT  
		Size: 88.6 MB (88605368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59347b4e7efd3f78e865c5b4fed4766fb83625b4bbcec35e6a92f9354b167ea3`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:3c31a06866df835636171081c45c85d48247fbb21cde64355a593991990b19da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1164534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93741ab06395437a6083a07a01d8e7bba11700be99ed7e3b4408a8c538b57efb`

```dockerfile
```

-	Layers:
	-	`sha256:ed5b7a799481ec6eafeb6039e44cc32184df74963fc2a0587118c5a97856b92f`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 1.1 MB (1149048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43d45bb771e083a3224dcdeacedc3193c00560c47ce136d3054ce6057937af18`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 15.5 KB (15486 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:8c20042f0506449f05d829c27a4c977034c6099f2a5d60bce39efd9f1f7f41b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86257775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea31c2429c959cbaa8dd81a393d7484d519daa9441e33551f35227359d3d8d3e`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:16:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 22:16:37 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 22:16:44 GMT
ENV TELEGRAF_VERSION=1.39.3
# Thu, 17 Sep 2026 22:16:44 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 17 Sep 2026 22:16:44 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 17 Sep 2026 22:16:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 22:16:44 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 17 Sep 2026 22:16:44 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf758dfc87f7eb3c41a2b9f20f89c957f7bde5c4a247d25b241a6171697543b`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7029b3a99c4c124292618966f7855976645b3fcfb410641cb68b9359dde64698`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 2.6 MB (2633285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4917cd7c778879499932421191785a40cedf780fe923385a5cd960e0051ed6a3`  
		Last Modified: Thu, 17 Sep 2026 22:17:00 GMT  
		Size: 79.4 MB (79437519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5a4f0323af06191941f3690de85a84b4870c842482733abe8bf4a3955d2b31`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:bcbd94e74cbc656d40724f07cb5b84a8d680006fde563a804055f9025a61dfc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1159621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96c7798c48155e3da76990b10889ac73f85f44637a2eaaba6700fa20d840379d`

```dockerfile
```

-	Layers:
	-	`sha256:e0ce145e2f7eaaaebdc61e57c74f48bfbf542d66dae582c3407ac4fa3aca97ee`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 1.1 MB (1144025 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffdb57330391c0d5382894e216c0d21e4a963f5b2ce213581a48f9874e6c82f2`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 15.6 KB (15596 bytes)  
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
$ docker pull telegraf@sha256:f11f13d46f6a778ae1fc733b059fc1a3e63a4e7b471f66df125090564e92fb60
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39.3-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:fb699cc64d65165d123ba154586d2830eeb51584be9779ca6833e92a65527be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.0 MB (95036152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c7f20890af10fcc126bb9abe9f080a5128f31a4717eb1a13c290a0222d0c87`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:58:08 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:58:09 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:58:16 GMT
ENV TELEGRAF_VERSION=1.39.3
# Thu, 17 Sep 2026 21:58:16 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 17 Sep 2026 21:58:16 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 17 Sep 2026 21:58:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:58:16 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 17 Sep 2026 21:58:16 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d472d16438d99f15408700eeaef23e1f795649e518e79dfe676676923f0d0aa`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea9bed35a66fa4fa87118c41f37f6328994bb9f6008fa11ebaeb140bedf76a11`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 2.6 MB (2581362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba386ff1343c61d2710ade335242b642e9cf6eea0e27ac71588acb1d43022ca5`  
		Last Modified: Thu, 17 Sep 2026 21:58:32 GMT  
		Size: 88.6 MB (88605368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59347b4e7efd3f78e865c5b4fed4766fb83625b4bbcec35e6a92f9354b167ea3`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:3c31a06866df835636171081c45c85d48247fbb21cde64355a593991990b19da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1164534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93741ab06395437a6083a07a01d8e7bba11700be99ed7e3b4408a8c538b57efb`

```dockerfile
```

-	Layers:
	-	`sha256:ed5b7a799481ec6eafeb6039e44cc32184df74963fc2a0587118c5a97856b92f`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 1.1 MB (1149048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43d45bb771e083a3224dcdeacedc3193c00560c47ce136d3054ce6057937af18`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 15.5 KB (15486 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.3-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:8c20042f0506449f05d829c27a4c977034c6099f2a5d60bce39efd9f1f7f41b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86257775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea31c2429c959cbaa8dd81a393d7484d519daa9441e33551f35227359d3d8d3e`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:16:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 22:16:37 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 22:16:44 GMT
ENV TELEGRAF_VERSION=1.39.3
# Thu, 17 Sep 2026 22:16:44 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 17 Sep 2026 22:16:44 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 17 Sep 2026 22:16:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 22:16:44 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 17 Sep 2026 22:16:44 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf758dfc87f7eb3c41a2b9f20f89c957f7bde5c4a247d25b241a6171697543b`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7029b3a99c4c124292618966f7855976645b3fcfb410641cb68b9359dde64698`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 2.6 MB (2633285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4917cd7c778879499932421191785a40cedf780fe923385a5cd960e0051ed6a3`  
		Last Modified: Thu, 17 Sep 2026 22:17:00 GMT  
		Size: 79.4 MB (79437519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5a4f0323af06191941f3690de85a84b4870c842482733abe8bf4a3955d2b31`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:bcbd94e74cbc656d40724f07cb5b84a8d680006fde563a804055f9025a61dfc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1159621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96c7798c48155e3da76990b10889ac73f85f44637a2eaaba6700fa20d840379d`

```dockerfile
```

-	Layers:
	-	`sha256:e0ce145e2f7eaaaebdc61e57c74f48bfbf542d66dae582c3407ac4fa3aca97ee`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 1.1 MB (1144025 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffdb57330391c0d5382894e216c0d21e4a963f5b2ce213581a48f9874e6c82f2`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 15.6 KB (15596 bytes)  
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
$ docker pull telegraf@sha256:d3b22c2bd211fd613e4a87b0ca0f74f20b9a7f2b1be3c6e867e98a6d4a51545e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:c451b6dad2ff32e689fe97750f404703baa6d00122c5ebda90e4caf02f8bb484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97825989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6f250f10eb8b613a94db2a149b68522f274f1b47d91ddb3ce83bd13774aafb3`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 18:24:09 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 12 Oct 2026 18:24:10 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Mon, 12 Oct 2026 18:24:17 GMT
ENV TELEGRAF_VERSION=1.40.2
# Mon, 12 Oct 2026 18:24:17 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Mon, 12 Oct 2026 18:24:17 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 12 Oct 2026 18:24:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 18:24:17 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Mon, 12 Oct 2026 18:24:17 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42db7f4f8bcf0b6bf59c021bd9f33c214ac2d4a484b71c5eda8a706ba77b1803`  
		Last Modified: Mon, 12 Oct 2026 18:24:33 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3279d007c8630098683e96b1d68f1bb52fe1ceb67d1c4fc3f9aa035ab06b5da7`  
		Last Modified: Mon, 12 Oct 2026 18:24:33 GMT  
		Size: 2.6 MB (2581447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b97780c56342d37bc2aeadac2016cc9d4d196657f50047d22b7a03cb2cc4e6de`  
		Last Modified: Mon, 12 Oct 2026 18:24:35 GMT  
		Size: 91.4 MB (91395120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83e2c017306eb1ee1bbec4cb1b6586796bc1645f841bfe7c19718d7eaf608f95`  
		Last Modified: Mon, 12 Oct 2026 18:24:33 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:328b70a44d5fc547e494b884a7910bf950be3f6c3a9cc0ffe5c8eb9581c82655
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1167461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac059d66aa2473d1e6f77d699e89bd6dee824d34417ca6965adfa2ca407bfc5b`

```dockerfile
```

-	Layers:
	-	`sha256:b656e6cdc4cbdcf0353a74824e06c18c045bfb73b9fe2fef25134324b742c3b8`  
		Last Modified: Mon, 12 Oct 2026 18:24:33 GMT  
		Size: 1.2 MB (1151673 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03be15e1ccd7faf1e99d151176b3617d728670ad8f398b496878697f5f6c7c36`  
		Last Modified: Mon, 12 Oct 2026 18:24:33 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:7edd9949d7dd10d2e3da373b6bd15d6dff3743f759df710872591d1fd5b836a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88731003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccda4c414f985d6eec9cf03b2c8ff90c3d67aa5ac422eb35b5ccfda18b26897b`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 18:26:07 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 12 Oct 2026 18:26:08 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Mon, 12 Oct 2026 18:26:15 GMT
ENV TELEGRAF_VERSION=1.40.2
# Mon, 12 Oct 2026 18:26:15 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Mon, 12 Oct 2026 18:26:15 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 12 Oct 2026 18:26:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 18:26:15 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Mon, 12 Oct 2026 18:26:15 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98cb36cd1f9f6f5a940733110aa73dbab483aeffddc2d4e350e66c692f0fbb3`  
		Last Modified: Mon, 12 Oct 2026 18:26:29 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b900e5bccb3929e63e49d3a97dea8fa05f7994a5cc919baa639ad52b766cf3`  
		Last Modified: Mon, 12 Oct 2026 18:26:29 GMT  
		Size: 2.6 MB (2633241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e9016b76e015b40936fbd0040257e01f45bcd159b1a91a5dd2bd09a144a824e`  
		Last Modified: Mon, 12 Oct 2026 18:26:31 GMT  
		Size: 81.9 MB (81910790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:517f00f0b6ccf594d28232a4e27bcfb0ccc5b93109525de92424d5792d09452d`  
		Last Modified: Mon, 12 Oct 2026 18:26:29 GMT  
		Size: 636.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:fef0209cdeb59578de19415cb8293c90ae37f3adca755f16a17956575a1e74c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1162571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d212ad69ee7aa0baaf8cb468b26d0615bc64db56973133e6c9aa2f885a0470b`

```dockerfile
```

-	Layers:
	-	`sha256:3f27011c85c043fcdbe720bc5e56292b17758aa77d80451d839599819cbe439b`  
		Last Modified: Mon, 12 Oct 2026 18:26:29 GMT  
		Size: 1.1 MB (1146662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52e08c2185b27fae232c66a420bff1a77e0c10a73e6863c5d892653cefc43406`  
		Last Modified: Mon, 12 Oct 2026 18:26:29 GMT  
		Size: 15.9 KB (15909 bytes)  
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
$ docker pull telegraf@sha256:d3b22c2bd211fd613e4a87b0ca0f74f20b9a7f2b1be3c6e867e98a6d4a51545e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40.2-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:c451b6dad2ff32e689fe97750f404703baa6d00122c5ebda90e4caf02f8bb484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97825989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6f250f10eb8b613a94db2a149b68522f274f1b47d91ddb3ce83bd13774aafb3`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 18:24:09 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 12 Oct 2026 18:24:10 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Mon, 12 Oct 2026 18:24:17 GMT
ENV TELEGRAF_VERSION=1.40.2
# Mon, 12 Oct 2026 18:24:17 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Mon, 12 Oct 2026 18:24:17 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 12 Oct 2026 18:24:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 18:24:17 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Mon, 12 Oct 2026 18:24:17 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42db7f4f8bcf0b6bf59c021bd9f33c214ac2d4a484b71c5eda8a706ba77b1803`  
		Last Modified: Mon, 12 Oct 2026 18:24:33 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3279d007c8630098683e96b1d68f1bb52fe1ceb67d1c4fc3f9aa035ab06b5da7`  
		Last Modified: Mon, 12 Oct 2026 18:24:33 GMT  
		Size: 2.6 MB (2581447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b97780c56342d37bc2aeadac2016cc9d4d196657f50047d22b7a03cb2cc4e6de`  
		Last Modified: Mon, 12 Oct 2026 18:24:35 GMT  
		Size: 91.4 MB (91395120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83e2c017306eb1ee1bbec4cb1b6586796bc1645f841bfe7c19718d7eaf608f95`  
		Last Modified: Mon, 12 Oct 2026 18:24:33 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.2-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:328b70a44d5fc547e494b884a7910bf950be3f6c3a9cc0ffe5c8eb9581c82655
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1167461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac059d66aa2473d1e6f77d699e89bd6dee824d34417ca6965adfa2ca407bfc5b`

```dockerfile
```

-	Layers:
	-	`sha256:b656e6cdc4cbdcf0353a74824e06c18c045bfb73b9fe2fef25134324b742c3b8`  
		Last Modified: Mon, 12 Oct 2026 18:24:33 GMT  
		Size: 1.2 MB (1151673 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03be15e1ccd7faf1e99d151176b3617d728670ad8f398b496878697f5f6c7c36`  
		Last Modified: Mon, 12 Oct 2026 18:24:33 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.2-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:7edd9949d7dd10d2e3da373b6bd15d6dff3743f759df710872591d1fd5b836a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88731003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccda4c414f985d6eec9cf03b2c8ff90c3d67aa5ac422eb35b5ccfda18b26897b`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 18:26:07 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 12 Oct 2026 18:26:08 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Mon, 12 Oct 2026 18:26:15 GMT
ENV TELEGRAF_VERSION=1.40.2
# Mon, 12 Oct 2026 18:26:15 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Mon, 12 Oct 2026 18:26:15 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 12 Oct 2026 18:26:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 18:26:15 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Mon, 12 Oct 2026 18:26:15 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98cb36cd1f9f6f5a940733110aa73dbab483aeffddc2d4e350e66c692f0fbb3`  
		Last Modified: Mon, 12 Oct 2026 18:26:29 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b900e5bccb3929e63e49d3a97dea8fa05f7994a5cc919baa639ad52b766cf3`  
		Last Modified: Mon, 12 Oct 2026 18:26:29 GMT  
		Size: 2.6 MB (2633241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e9016b76e015b40936fbd0040257e01f45bcd159b1a91a5dd2bd09a144a824e`  
		Last Modified: Mon, 12 Oct 2026 18:26:31 GMT  
		Size: 81.9 MB (81910790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:517f00f0b6ccf594d28232a4e27bcfb0ccc5b93109525de92424d5792d09452d`  
		Last Modified: Mon, 12 Oct 2026 18:26:29 GMT  
		Size: 636.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.2-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:fef0209cdeb59578de19415cb8293c90ae37f3adca755f16a17956575a1e74c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1162571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d212ad69ee7aa0baaf8cb468b26d0615bc64db56973133e6c9aa2f885a0470b`

```dockerfile
```

-	Layers:
	-	`sha256:3f27011c85c043fcdbe720bc5e56292b17758aa77d80451d839599819cbe439b`  
		Last Modified: Mon, 12 Oct 2026 18:26:29 GMT  
		Size: 1.1 MB (1146662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52e08c2185b27fae232c66a420bff1a77e0c10a73e6863c5d892653cefc43406`  
		Last Modified: Mon, 12 Oct 2026 18:26:29 GMT  
		Size: 15.9 KB (15909 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:d3b22c2bd211fd613e4a87b0ca0f74f20b9a7f2b1be3c6e867e98a6d4a51545e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:c451b6dad2ff32e689fe97750f404703baa6d00122c5ebda90e4caf02f8bb484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97825989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6f250f10eb8b613a94db2a149b68522f274f1b47d91ddb3ce83bd13774aafb3`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 18:24:09 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 12 Oct 2026 18:24:10 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Mon, 12 Oct 2026 18:24:17 GMT
ENV TELEGRAF_VERSION=1.40.2
# Mon, 12 Oct 2026 18:24:17 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Mon, 12 Oct 2026 18:24:17 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 12 Oct 2026 18:24:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 18:24:17 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Mon, 12 Oct 2026 18:24:17 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42db7f4f8bcf0b6bf59c021bd9f33c214ac2d4a484b71c5eda8a706ba77b1803`  
		Last Modified: Mon, 12 Oct 2026 18:24:33 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3279d007c8630098683e96b1d68f1bb52fe1ceb67d1c4fc3f9aa035ab06b5da7`  
		Last Modified: Mon, 12 Oct 2026 18:24:33 GMT  
		Size: 2.6 MB (2581447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b97780c56342d37bc2aeadac2016cc9d4d196657f50047d22b7a03cb2cc4e6de`  
		Last Modified: Mon, 12 Oct 2026 18:24:35 GMT  
		Size: 91.4 MB (91395120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83e2c017306eb1ee1bbec4cb1b6586796bc1645f841bfe7c19718d7eaf608f95`  
		Last Modified: Mon, 12 Oct 2026 18:24:33 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:328b70a44d5fc547e494b884a7910bf950be3f6c3a9cc0ffe5c8eb9581c82655
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1167461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac059d66aa2473d1e6f77d699e89bd6dee824d34417ca6965adfa2ca407bfc5b`

```dockerfile
```

-	Layers:
	-	`sha256:b656e6cdc4cbdcf0353a74824e06c18c045bfb73b9fe2fef25134324b742c3b8`  
		Last Modified: Mon, 12 Oct 2026 18:24:33 GMT  
		Size: 1.2 MB (1151673 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03be15e1ccd7faf1e99d151176b3617d728670ad8f398b496878697f5f6c7c36`  
		Last Modified: Mon, 12 Oct 2026 18:24:33 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:7edd9949d7dd10d2e3da373b6bd15d6dff3743f759df710872591d1fd5b836a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88731003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccda4c414f985d6eec9cf03b2c8ff90c3d67aa5ac422eb35b5ccfda18b26897b`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 18:26:07 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 12 Oct 2026 18:26:08 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Mon, 12 Oct 2026 18:26:15 GMT
ENV TELEGRAF_VERSION=1.40.2
# Mon, 12 Oct 2026 18:26:15 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Mon, 12 Oct 2026 18:26:15 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 12 Oct 2026 18:26:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 18:26:15 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Mon, 12 Oct 2026 18:26:15 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98cb36cd1f9f6f5a940733110aa73dbab483aeffddc2d4e350e66c692f0fbb3`  
		Last Modified: Mon, 12 Oct 2026 18:26:29 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b900e5bccb3929e63e49d3a97dea8fa05f7994a5cc919baa639ad52b766cf3`  
		Last Modified: Mon, 12 Oct 2026 18:26:29 GMT  
		Size: 2.6 MB (2633241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e9016b76e015b40936fbd0040257e01f45bcd159b1a91a5dd2bd09a144a824e`  
		Last Modified: Mon, 12 Oct 2026 18:26:31 GMT  
		Size: 81.9 MB (81910790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:517f00f0b6ccf594d28232a4e27bcfb0ccc5b93109525de92424d5792d09452d`  
		Last Modified: Mon, 12 Oct 2026 18:26:29 GMT  
		Size: 636.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:fef0209cdeb59578de19415cb8293c90ae37f3adca755f16a17956575a1e74c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1162571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d212ad69ee7aa0baaf8cb468b26d0615bc64db56973133e6c9aa2f885a0470b`

```dockerfile
```

-	Layers:
	-	`sha256:3f27011c85c043fcdbe720bc5e56292b17758aa77d80451d839599819cbe439b`  
		Last Modified: Mon, 12 Oct 2026 18:26:29 GMT  
		Size: 1.1 MB (1146662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52e08c2185b27fae232c66a420bff1a77e0c10a73e6863c5d892653cefc43406`  
		Last Modified: Mon, 12 Oct 2026 18:26:29 GMT  
		Size: 15.9 KB (15909 bytes)  
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
