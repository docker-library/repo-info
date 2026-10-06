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
-	[`telegraf:1.40.1`](#telegraf1401)
-	[`telegraf:1.40.1-alpine`](#telegraf1401-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)

## `telegraf:1.38`

```console
$ docker pull telegraf@sha256:c974da7068ae8ac90052cc9527d12fdeb67b625ee1230050560faebb555a8d4a
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
$ docker pull telegraf@sha256:062b801925707de4fbe4dc65ad933b5854b9991404edb22673561cc1d50b6ff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.2 MB (177158216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672f3cb8f6ce5c599b2477676bcbe92bf9484bba07c2f947fe25db86ad1ecfe7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:48:12 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:48:12 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 02:48:16 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 06 Oct 2026 02:48:16 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 06 Oct 2026 02:48:16 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 06 Oct 2026 02:48:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 02:48:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 02:48:16 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4edf9c328e814bd91b20c8e2211065489ebf15a16c7663d68a880660dfc897d`  
		Last Modified: Tue, 06 Oct 2026 01:41:13 GMT  
		Size: 23.9 MB (23872252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7c91bf149d0d7db3daeaed320e4619d478be1fe40c5128fc68beddcf70de00`  
		Last Modified: Tue, 06 Oct 2026 02:48:34 GMT  
		Size: 21.3 MB (21251071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15def8e39b8bff70f9a88319a433fcd2ccb0e8dda4093afcb05dc1361e2abe9b`  
		Last Modified: Tue, 06 Oct 2026 02:48:33 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50b7fb47a1e0ed6f9fa3d6594fc588d6d73e18671b16c21290a4e05c1cbe4789`  
		Last Modified: Tue, 06 Oct 2026 02:48:36 GMT  
		Size: 83.5 MB (83511175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99691447d430b2cee1c996eeedf5b4f9f664eedfa71a57004b26aafe0c8874a9`  
		Last Modified: Tue, 06 Oct 2026 02:48:33 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:e09e239651adf351f71969843ad16d84fe916c1964ecad11d17476ffa8d9a483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6693226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4360e3a78c7987e57df608b2c5d04fe4e9f78ae1f7b3de5a8a120a6b4a84993`

```dockerfile
```

-	Layers:
	-	`sha256:d46f3d7e24b8ca08e281ba4a9b4799c10ffdc1ee71c10cd98b6967862ed60cea`  
		Last Modified: Tue, 06 Oct 2026 02:48:34 GMT  
		Size: 6.7 MB (6678799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53eba6695cdae8cfa2d6fb4129bebc816db5b7c3b1b85b62064094f1ead61f55`  
		Last Modified: Tue, 06 Oct 2026 02:48:33 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:2acc1ea453ec6bacbbcee859b661104417780041bdca303a26520fd18fb5fd12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.2 MB (163229750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a99b2dc58af04d52cf3180f3b50ca3e80115d5ede68678e8a2fa725a35641db5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:23:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:40:45 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:40:46 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 03:40:51 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 06 Oct 2026 03:40:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 06 Oct 2026 03:40:51 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 06 Oct 2026 03:40:51 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 03:40:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 03:40:51 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:54b36b054c7cd92d990fdbe776041bda41bca67549e7f2f5b71aa81632707ced`  
		Last Modified: Tue, 06 Oct 2026 00:13:12 GMT  
		Size: 44.2 MB (44213912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6b6172c735529bdb9ddec421bbd50381be57cbdde9600e8834517a79e2dbd5`  
		Last Modified: Tue, 06 Oct 2026 02:24:08 GMT  
		Size: 21.8 MB (21774996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e812068ba523f5ef127f665e15a89a66912c7bb54de64bfe7afad4599d6fd94f`  
		Last Modified: Tue, 06 Oct 2026 03:41:08 GMT  
		Size: 19.8 MB (19807154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b248f78477f0fa4ec684601e5faf31300499c892007513ad95ef945421ed9f39`  
		Last Modified: Tue, 06 Oct 2026 03:41:08 GMT  
		Size: 5.1 KB (5072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d82fd76bdbd7b97b7629b7b6889e8dc009a3bd628136cbdc2d29a456cb43d43f`  
		Last Modified: Tue, 06 Oct 2026 03:41:10 GMT  
		Size: 77.4 MB (77427975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1977710862156b39036328b156cb3203233d1337ac56682d89038dfbb5cfdef9`  
		Last Modified: Tue, 06 Oct 2026 03:41:08 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:328205df74f841378e13ec743b6a45f41f3c8783d881353d01ec074d5d787d82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6687913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f5c33d43c386d1223a205700f5e3a87287ee05b80ba26724538c4d246fedeed`

```dockerfile
```

-	Layers:
	-	`sha256:be64b942a6abf349f86e764f0c5fec6b1430342fe7213ea064effb08fa0db88f`  
		Last Modified: Tue, 06 Oct 2026 03:41:08 GMT  
		Size: 6.7 MB (6673396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bc55bea6c8432ce0af73777405089f25f2d1b9e15f612d58f25b82eb770385f`  
		Last Modified: Tue, 06 Oct 2026 03:41:08 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:95feeb53a1a8c895249ff360703cb24e573e3b8976a118543409dbaeee069dfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167474174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee3e9660e093bdd9408d394fef25e21503b73884f2b90f900e356f41f8f3807`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:40:17 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:40:18 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 02:40:22 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 06 Oct 2026 02:40:22 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 06 Oct 2026 02:40:22 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 06 Oct 2026 02:40:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 02:40:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 02:40:22 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc7363672c63abfefdedaf5e03be8e39cb662841d4f31237c4b7d7e3729f65c`  
		Last Modified: Tue, 06 Oct 2026 01:44:28 GMT  
		Size: 23.4 MB (23442412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2449be8e2eeb0a5330e745dfb0bd993cb49930affc95b3955eca2558fff2f77d`  
		Last Modified: Tue, 06 Oct 2026 02:40:42 GMT  
		Size: 21.1 MB (21147637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2df58832f064dddb18f1633d9add343ca462b0588dacc4a70bda16824e4818ea`  
		Last Modified: Tue, 06 Oct 2026 02:40:41 GMT  
		Size: 5.1 KB (5071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d664e2b6ae0c16fabcfd8a231e0d56853ee2b519e1b93fcd475c40a7dffa9891`  
		Last Modified: Tue, 06 Oct 2026 02:40:43 GMT  
		Size: 74.5 MB (74476858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a92bb9013474d5db0263b19a09288c585263fc9bc25cc7fe9bb034b6435281`  
		Last Modified: Tue, 06 Oct 2026 02:40:41 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:dc5bd0c59546b59d43701c46f4611414dc0ff9d8db6ce63b905ecd31c31dea6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6694010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14bfda1a2ae299d36c139df75124367496f8b862cf5669506ebe52f1cc630d7f`

```dockerfile
```

-	Layers:
	-	`sha256:4661860c01a9b4529d0cf7834c62b70a3c3283372f442a84b251ab035d07bbec`  
		Last Modified: Tue, 06 Oct 2026 02:40:41 GMT  
		Size: 6.7 MB (6679475 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d84865ab6eefe86836e0b593fc06659d4eaed611e865f9ad46a2a31e793c7a45`  
		Last Modified: Tue, 06 Oct 2026 02:40:40 GMT  
		Size: 14.5 KB (14535 bytes)  
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
$ docker pull telegraf@sha256:c974da7068ae8ac90052cc9527d12fdeb67b625ee1230050560faebb555a8d4a
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
$ docker pull telegraf@sha256:062b801925707de4fbe4dc65ad933b5854b9991404edb22673561cc1d50b6ff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.2 MB (177158216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672f3cb8f6ce5c599b2477676bcbe92bf9484bba07c2f947fe25db86ad1ecfe7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:48:12 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:48:12 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 02:48:16 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 06 Oct 2026 02:48:16 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 06 Oct 2026 02:48:16 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 06 Oct 2026 02:48:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 02:48:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 02:48:16 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4edf9c328e814bd91b20c8e2211065489ebf15a16c7663d68a880660dfc897d`  
		Last Modified: Tue, 06 Oct 2026 01:41:13 GMT  
		Size: 23.9 MB (23872252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7c91bf149d0d7db3daeaed320e4619d478be1fe40c5128fc68beddcf70de00`  
		Last Modified: Tue, 06 Oct 2026 02:48:34 GMT  
		Size: 21.3 MB (21251071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15def8e39b8bff70f9a88319a433fcd2ccb0e8dda4093afcb05dc1361e2abe9b`  
		Last Modified: Tue, 06 Oct 2026 02:48:33 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50b7fb47a1e0ed6f9fa3d6594fc588d6d73e18671b16c21290a4e05c1cbe4789`  
		Last Modified: Tue, 06 Oct 2026 02:48:36 GMT  
		Size: 83.5 MB (83511175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99691447d430b2cee1c996eeedf5b4f9f664eedfa71a57004b26aafe0c8874a9`  
		Last Modified: Tue, 06 Oct 2026 02:48:33 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:e09e239651adf351f71969843ad16d84fe916c1964ecad11d17476ffa8d9a483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6693226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4360e3a78c7987e57df608b2c5d04fe4e9f78ae1f7b3de5a8a120a6b4a84993`

```dockerfile
```

-	Layers:
	-	`sha256:d46f3d7e24b8ca08e281ba4a9b4799c10ffdc1ee71c10cd98b6967862ed60cea`  
		Last Modified: Tue, 06 Oct 2026 02:48:34 GMT  
		Size: 6.7 MB (6678799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53eba6695cdae8cfa2d6fb4129bebc816db5b7c3b1b85b62064094f1ead61f55`  
		Last Modified: Tue, 06 Oct 2026 02:48:33 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:2acc1ea453ec6bacbbcee859b661104417780041bdca303a26520fd18fb5fd12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.2 MB (163229750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a99b2dc58af04d52cf3180f3b50ca3e80115d5ede68678e8a2fa725a35641db5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:23:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:40:45 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:40:46 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 03:40:51 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 06 Oct 2026 03:40:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 06 Oct 2026 03:40:51 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 06 Oct 2026 03:40:51 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 03:40:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 03:40:51 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:54b36b054c7cd92d990fdbe776041bda41bca67549e7f2f5b71aa81632707ced`  
		Last Modified: Tue, 06 Oct 2026 00:13:12 GMT  
		Size: 44.2 MB (44213912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6b6172c735529bdb9ddec421bbd50381be57cbdde9600e8834517a79e2dbd5`  
		Last Modified: Tue, 06 Oct 2026 02:24:08 GMT  
		Size: 21.8 MB (21774996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e812068ba523f5ef127f665e15a89a66912c7bb54de64bfe7afad4599d6fd94f`  
		Last Modified: Tue, 06 Oct 2026 03:41:08 GMT  
		Size: 19.8 MB (19807154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b248f78477f0fa4ec684601e5faf31300499c892007513ad95ef945421ed9f39`  
		Last Modified: Tue, 06 Oct 2026 03:41:08 GMT  
		Size: 5.1 KB (5072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d82fd76bdbd7b97b7629b7b6889e8dc009a3bd628136cbdc2d29a456cb43d43f`  
		Last Modified: Tue, 06 Oct 2026 03:41:10 GMT  
		Size: 77.4 MB (77427975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1977710862156b39036328b156cb3203233d1337ac56682d89038dfbb5cfdef9`  
		Last Modified: Tue, 06 Oct 2026 03:41:08 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:328205df74f841378e13ec743b6a45f41f3c8783d881353d01ec074d5d787d82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6687913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f5c33d43c386d1223a205700f5e3a87287ee05b80ba26724538c4d246fedeed`

```dockerfile
```

-	Layers:
	-	`sha256:be64b942a6abf349f86e764f0c5fec6b1430342fe7213ea064effb08fa0db88f`  
		Last Modified: Tue, 06 Oct 2026 03:41:08 GMT  
		Size: 6.7 MB (6673396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bc55bea6c8432ce0af73777405089f25f2d1b9e15f612d58f25b82eb770385f`  
		Last Modified: Tue, 06 Oct 2026 03:41:08 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:95feeb53a1a8c895249ff360703cb24e573e3b8976a118543409dbaeee069dfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167474174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee3e9660e093bdd9408d394fef25e21503b73884f2b90f900e356f41f8f3807`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:40:17 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:40:18 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 02:40:22 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 06 Oct 2026 02:40:22 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 06 Oct 2026 02:40:22 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 06 Oct 2026 02:40:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 02:40:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 02:40:22 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc7363672c63abfefdedaf5e03be8e39cb662841d4f31237c4b7d7e3729f65c`  
		Last Modified: Tue, 06 Oct 2026 01:44:28 GMT  
		Size: 23.4 MB (23442412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2449be8e2eeb0a5330e745dfb0bd993cb49930affc95b3955eca2558fff2f77d`  
		Last Modified: Tue, 06 Oct 2026 02:40:42 GMT  
		Size: 21.1 MB (21147637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2df58832f064dddb18f1633d9add343ca462b0588dacc4a70bda16824e4818ea`  
		Last Modified: Tue, 06 Oct 2026 02:40:41 GMT  
		Size: 5.1 KB (5071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d664e2b6ae0c16fabcfd8a231e0d56853ee2b519e1b93fcd475c40a7dffa9891`  
		Last Modified: Tue, 06 Oct 2026 02:40:43 GMT  
		Size: 74.5 MB (74476858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a92bb9013474d5db0263b19a09288c585263fc9bc25cc7fe9bb034b6435281`  
		Last Modified: Tue, 06 Oct 2026 02:40:41 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:dc5bd0c59546b59d43701c46f4611414dc0ff9d8db6ce63b905ecd31c31dea6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6694010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14bfda1a2ae299d36c139df75124367496f8b862cf5669506ebe52f1cc630d7f`

```dockerfile
```

-	Layers:
	-	`sha256:4661860c01a9b4529d0cf7834c62b70a3c3283372f442a84b251ab035d07bbec`  
		Last Modified: Tue, 06 Oct 2026 02:40:41 GMT  
		Size: 6.7 MB (6679475 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d84865ab6eefe86836e0b593fc06659d4eaed611e865f9ad46a2a31e793c7a45`  
		Last Modified: Tue, 06 Oct 2026 02:40:40 GMT  
		Size: 14.5 KB (14535 bytes)  
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
$ docker pull telegraf@sha256:1e9c51b75451e6cb9ed455bc21991eebcab1fe505f44fbb3fd727a3466b92601
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
$ docker pull telegraf@sha256:07fa64f462d129daa58614320f45ce93d31ee3d64de1593ee314ee63f9b04f51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.9 MB (179902422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10d33bc84ffbc7c50854ffc33cf0e15d5e39f47d51e7811adc60a92bf10a828e`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:48:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:48:33 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 02:48:38 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 06 Oct 2026 02:48:38 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 06 Oct 2026 02:48:38 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 06 Oct 2026 02:48:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 02:48:38 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 06 Oct 2026 02:48:38 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4edf9c328e814bd91b20c8e2211065489ebf15a16c7663d68a880660dfc897d`  
		Last Modified: Tue, 06 Oct 2026 01:41:13 GMT  
		Size: 23.9 MB (23872252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9edf41f0f83a107b0de5f85978146bf0c7e2ff71182e0c7a97d259009bd8b468`  
		Last Modified: Tue, 06 Oct 2026 02:49:00 GMT  
		Size: 21.6 MB (21591164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2eadcf117913f2849cff282b2da7f2f05ba12b583d8a87b834d3cb2e3fb5aee`  
		Last Modified: Tue, 06 Oct 2026 02:49:00 GMT  
		Size: 5.1 KB (5053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142d63aa81136b8560a9bb5c1b8e25f4dd38561129c8a02a9cdcff2820d20079`  
		Last Modified: Tue, 06 Oct 2026 02:49:02 GMT  
		Size: 85.9 MB (85915290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84df5c340ef2a782d09c36d255f742e71f058d59aa69c5cc77289d5ea986fdda`  
		Last Modified: Tue, 06 Oct 2026 02:49:00 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:37ae64d89e5b35e612679a500b04168e36291d57669850185d095505626e2813
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6703149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28eb9ed73982362c7c226742ffaf5cc3afde7fcbae0d8ab2ff26defb8cfa38b2`

```dockerfile
```

-	Layers:
	-	`sha256:e77f5b02b2af550abbac89424eea859e79a2886ebcf45a8acb820bba4c4b5fe0`  
		Last Modified: Tue, 06 Oct 2026 02:49:00 GMT  
		Size: 6.7 MB (6688682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a66e90ec517cd211efdfbb063ec77653ce78c117efc08720fb8c31a21b8efdd4`  
		Last Modified: Tue, 06 Oct 2026 02:49:00 GMT  
		Size: 14.5 KB (14467 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:2492cf70fdbb4b3160248caf401e7f01ea6ce1c5d7cbfd81f48fc78a5ad238fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.9 MB (165906986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7882b6dedfe7ffab5dc27e505a311228f62e05bd9b4db094f7bd599a91d75f0c`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:23:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:40:51 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:40:52 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 03:40:57 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 06 Oct 2026 03:40:57 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 06 Oct 2026 03:40:57 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 06 Oct 2026 03:40:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 03:40:57 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 06 Oct 2026 03:40:57 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:54b36b054c7cd92d990fdbe776041bda41bca67549e7f2f5b71aa81632707ced`  
		Last Modified: Tue, 06 Oct 2026 00:13:12 GMT  
		Size: 44.2 MB (44213912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6b6172c735529bdb9ddec421bbd50381be57cbdde9600e8834517a79e2dbd5`  
		Last Modified: Tue, 06 Oct 2026 02:24:08 GMT  
		Size: 21.8 MB (21774996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95fbbf5665d6e1ec62aedbe349c7961ccdfacfac998589c58b2a02b570e72cc6`  
		Last Modified: Tue, 06 Oct 2026 03:41:16 GMT  
		Size: 20.0 MB (20049488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de47b8ad8120725814e35b217998adf534c31f61a94a8497ed34f716392412e4`  
		Last Modified: Tue, 06 Oct 2026 03:41:15 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f1671e5ee7a87350a4e93a6a0243e63af25442c7943730303626787ea6cf9d`  
		Last Modified: Tue, 06 Oct 2026 03:41:18 GMT  
		Size: 79.9 MB (79862894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cf326326754fb9ffc958c48e76ef28f4072d5525f429b3c5908042ebdba3ce`  
		Last Modified: Tue, 06 Oct 2026 03:41:15 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:0c3d5c6c72b6f887ee81eb7aa4453e9bff66ec6c33c71c5dc6dbb9f45cae7c5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6698642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb13d8479c1a8b86bae9e1b4fbfe3523f36216363f4491295230f1355b7446f`

```dockerfile
```

-	Layers:
	-	`sha256:dd74908e048d099a50a5e948c2a1a8a2d81fdd37fc5f31e8932948e3412c51fe`  
		Last Modified: Tue, 06 Oct 2026 03:41:16 GMT  
		Size: 6.7 MB (6684084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27b8624fdb64c901d03bbb636dbdeb514fda5d3bab5c410696732cec1ff681fb`  
		Last Modified: Tue, 06 Oct 2026 03:41:15 GMT  
		Size: 14.6 KB (14558 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:6f74e9f4ffd9d489165c364da2983e801cd27974f88b6aa4d57137ec173bf357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.1 MB (170057582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e30f926dc644294dfe44db7df75c137045707ca108c61bed5c3cbc917b481f0`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:40:56 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:40:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 02:41:01 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 06 Oct 2026 02:41:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 06 Oct 2026 02:41:01 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 06 Oct 2026 02:41:01 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 02:41:01 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 06 Oct 2026 02:41:01 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc7363672c63abfefdedaf5e03be8e39cb662841d4f31237c4b7d7e3729f65c`  
		Last Modified: Tue, 06 Oct 2026 01:44:28 GMT  
		Size: 23.4 MB (23442412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcaa2ad11b9fb44d1df3613902a94a5cbb26824781e860f84513a1de501aaa02`  
		Last Modified: Tue, 06 Oct 2026 02:41:20 GMT  
		Size: 21.5 MB (21454168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca9dab26ed35c6927c3307e6fc4c0b039e7408690f27eaae3b553feed6093b3`  
		Last Modified: Tue, 06 Oct 2026 02:41:19 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad7a9f5d152c6be3c9c8b134362fe8a4f9d3f2d516388424335d11cfa157ff86`  
		Last Modified: Tue, 06 Oct 2026 02:41:22 GMT  
		Size: 76.8 MB (76753736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4fb1feaa0b6b0694b5c85d10f0a0890e09ffeed57e3b6fe661fced905a76583`  
		Last Modified: Tue, 06 Oct 2026 02:41:19 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:04388d8f529183c110d0ff7af86f222bcdf2f0d30755622057be8382f6529a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6703936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed764b31e4d76f00f38ced82b7a7dfaffd2566378a131015f9c11d11b4b6f097`

```dockerfile
```

-	Layers:
	-	`sha256:0b1bdf98a38edfba02c2e7a69e3bb598838fb426d5f24272ab808c79c8861fc9`  
		Last Modified: Tue, 06 Oct 2026 02:41:20 GMT  
		Size: 6.7 MB (6689358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc5290d471ae07794bf962ef4efda443422fd6f95f193d8c00aab9eb7d0d2a02`  
		Last Modified: Tue, 06 Oct 2026 02:41:19 GMT  
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
$ docker pull telegraf@sha256:1e9c51b75451e6cb9ed455bc21991eebcab1fe505f44fbb3fd727a3466b92601
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
$ docker pull telegraf@sha256:07fa64f462d129daa58614320f45ce93d31ee3d64de1593ee314ee63f9b04f51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.9 MB (179902422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10d33bc84ffbc7c50854ffc33cf0e15d5e39f47d51e7811adc60a92bf10a828e`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:48:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:48:33 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 02:48:38 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 06 Oct 2026 02:48:38 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 06 Oct 2026 02:48:38 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 06 Oct 2026 02:48:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 02:48:38 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 06 Oct 2026 02:48:38 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4edf9c328e814bd91b20c8e2211065489ebf15a16c7663d68a880660dfc897d`  
		Last Modified: Tue, 06 Oct 2026 01:41:13 GMT  
		Size: 23.9 MB (23872252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9edf41f0f83a107b0de5f85978146bf0c7e2ff71182e0c7a97d259009bd8b468`  
		Last Modified: Tue, 06 Oct 2026 02:49:00 GMT  
		Size: 21.6 MB (21591164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2eadcf117913f2849cff282b2da7f2f05ba12b583d8a87b834d3cb2e3fb5aee`  
		Last Modified: Tue, 06 Oct 2026 02:49:00 GMT  
		Size: 5.1 KB (5053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142d63aa81136b8560a9bb5c1b8e25f4dd38561129c8a02a9cdcff2820d20079`  
		Last Modified: Tue, 06 Oct 2026 02:49:02 GMT  
		Size: 85.9 MB (85915290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84df5c340ef2a782d09c36d255f742e71f058d59aa69c5cc77289d5ea986fdda`  
		Last Modified: Tue, 06 Oct 2026 02:49:00 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:37ae64d89e5b35e612679a500b04168e36291d57669850185d095505626e2813
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6703149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28eb9ed73982362c7c226742ffaf5cc3afde7fcbae0d8ab2ff26defb8cfa38b2`

```dockerfile
```

-	Layers:
	-	`sha256:e77f5b02b2af550abbac89424eea859e79a2886ebcf45a8acb820bba4c4b5fe0`  
		Last Modified: Tue, 06 Oct 2026 02:49:00 GMT  
		Size: 6.7 MB (6688682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a66e90ec517cd211efdfbb063ec77653ce78c117efc08720fb8c31a21b8efdd4`  
		Last Modified: Tue, 06 Oct 2026 02:49:00 GMT  
		Size: 14.5 KB (14467 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:2492cf70fdbb4b3160248caf401e7f01ea6ce1c5d7cbfd81f48fc78a5ad238fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.9 MB (165906986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7882b6dedfe7ffab5dc27e505a311228f62e05bd9b4db094f7bd599a91d75f0c`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:23:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:40:51 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:40:52 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 03:40:57 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 06 Oct 2026 03:40:57 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 06 Oct 2026 03:40:57 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 06 Oct 2026 03:40:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 03:40:57 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 06 Oct 2026 03:40:57 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:54b36b054c7cd92d990fdbe776041bda41bca67549e7f2f5b71aa81632707ced`  
		Last Modified: Tue, 06 Oct 2026 00:13:12 GMT  
		Size: 44.2 MB (44213912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6b6172c735529bdb9ddec421bbd50381be57cbdde9600e8834517a79e2dbd5`  
		Last Modified: Tue, 06 Oct 2026 02:24:08 GMT  
		Size: 21.8 MB (21774996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95fbbf5665d6e1ec62aedbe349c7961ccdfacfac998589c58b2a02b570e72cc6`  
		Last Modified: Tue, 06 Oct 2026 03:41:16 GMT  
		Size: 20.0 MB (20049488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de47b8ad8120725814e35b217998adf534c31f61a94a8497ed34f716392412e4`  
		Last Modified: Tue, 06 Oct 2026 03:41:15 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f1671e5ee7a87350a4e93a6a0243e63af25442c7943730303626787ea6cf9d`  
		Last Modified: Tue, 06 Oct 2026 03:41:18 GMT  
		Size: 79.9 MB (79862894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cf326326754fb9ffc958c48e76ef28f4072d5525f429b3c5908042ebdba3ce`  
		Last Modified: Tue, 06 Oct 2026 03:41:15 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:0c3d5c6c72b6f887ee81eb7aa4453e9bff66ec6c33c71c5dc6dbb9f45cae7c5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6698642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb13d8479c1a8b86bae9e1b4fbfe3523f36216363f4491295230f1355b7446f`

```dockerfile
```

-	Layers:
	-	`sha256:dd74908e048d099a50a5e948c2a1a8a2d81fdd37fc5f31e8932948e3412c51fe`  
		Last Modified: Tue, 06 Oct 2026 03:41:16 GMT  
		Size: 6.7 MB (6684084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27b8624fdb64c901d03bbb636dbdeb514fda5d3bab5c410696732cec1ff681fb`  
		Last Modified: Tue, 06 Oct 2026 03:41:15 GMT  
		Size: 14.6 KB (14558 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:6f74e9f4ffd9d489165c364da2983e801cd27974f88b6aa4d57137ec173bf357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.1 MB (170057582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e30f926dc644294dfe44db7df75c137045707ca108c61bed5c3cbc917b481f0`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:40:56 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:40:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 02:41:01 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 06 Oct 2026 02:41:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 06 Oct 2026 02:41:01 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 06 Oct 2026 02:41:01 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 02:41:01 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 06 Oct 2026 02:41:01 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc7363672c63abfefdedaf5e03be8e39cb662841d4f31237c4b7d7e3729f65c`  
		Last Modified: Tue, 06 Oct 2026 01:44:28 GMT  
		Size: 23.4 MB (23442412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcaa2ad11b9fb44d1df3613902a94a5cbb26824781e860f84513a1de501aaa02`  
		Last Modified: Tue, 06 Oct 2026 02:41:20 GMT  
		Size: 21.5 MB (21454168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca9dab26ed35c6927c3307e6fc4c0b039e7408690f27eaae3b553feed6093b3`  
		Last Modified: Tue, 06 Oct 2026 02:41:19 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad7a9f5d152c6be3c9c8b134362fe8a4f9d3f2d516388424335d11cfa157ff86`  
		Last Modified: Tue, 06 Oct 2026 02:41:22 GMT  
		Size: 76.8 MB (76753736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4fb1feaa0b6b0694b5c85d10f0a0890e09ffeed57e3b6fe661fced905a76583`  
		Last Modified: Tue, 06 Oct 2026 02:41:19 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:04388d8f529183c110d0ff7af86f222bcdf2f0d30755622057be8382f6529a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6703936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed764b31e4d76f00f38ced82b7a7dfaffd2566378a131015f9c11d11b4b6f097`

```dockerfile
```

-	Layers:
	-	`sha256:0b1bdf98a38edfba02c2e7a69e3bb598838fb426d5f24272ab808c79c8861fc9`  
		Last Modified: Tue, 06 Oct 2026 02:41:20 GMT  
		Size: 6.7 MB (6689358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc5290d471ae07794bf962ef4efda443422fd6f95f193d8c00aab9eb7d0d2a02`  
		Last Modified: Tue, 06 Oct 2026 02:41:19 GMT  
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
$ docker pull telegraf@sha256:e91237482edcb054c81571923c6b7cf64f06ed6087a2f9cf0bd3bc2cd8c0ed61
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
$ docker pull telegraf@sha256:09c3f2a6e39801ba85112d2d891590527c78c3f9a50cad61bce649d09e2dd7f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.7 MB (182710398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b06095d881978339c0ff68d30051bd462c340fc80d797094a2b43036708ab259`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:48:49 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:48:49 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 02:48:54 GMT
ENV TELEGRAF_VERSION=1.40.1
# Tue, 06 Oct 2026 02:48:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 06 Oct 2026 02:48:54 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 06 Oct 2026 02:48:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 02:48:54 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 06 Oct 2026 02:48:54 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4edf9c328e814bd91b20c8e2211065489ebf15a16c7663d68a880660dfc897d`  
		Last Modified: Tue, 06 Oct 2026 01:41:13 GMT  
		Size: 23.9 MB (23872252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f10cb9ca7faf76eebcccb77e113eb681f69cc442f8da9dca4cc8a007635a22`  
		Last Modified: Tue, 06 Oct 2026 02:49:11 GMT  
		Size: 21.6 MB (21591314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449dba150e107d3f2f7fa8048f487a302e776f4f4f24ca63514fb0c8a1736b6a`  
		Last Modified: Tue, 06 Oct 2026 02:49:10 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61615a570269c9f30c61e07b2538391de766f3bf4af854f2c94f13ba4853104d`  
		Last Modified: Tue, 06 Oct 2026 02:49:13 GMT  
		Size: 88.7 MB (88723114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d856b9df2ff0a8f77bf787045999798800f813b368f8a60e312c85d85ddd3c`  
		Last Modified: Tue, 06 Oct 2026 02:49:11 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:894c7d5ee87c758bf4cbd67c6f8a2418cb4244e0ae3bb2a28ac1bdbe1f287b20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90b2bcd0777f59595df124e75cb1aee85713f5c360d0a3b69869f3b5f67da3f4`

```dockerfile
```

-	Layers:
	-	`sha256:aea2dd0edfca79fcee29203b24f692ddd1a5be3ff93ef0308a5c6249cdbe06d7`  
		Last Modified: Tue, 06 Oct 2026 02:49:11 GMT  
		Size: 6.7 MB (6691309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:840fc3af838868b7483c10d284bccba9ba6be16ec6cae966281a53b9e320769e`  
		Last Modified: Tue, 06 Oct 2026 02:49:11 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:a776ef157b7e4f270ac47cb37177f1df8fbf3d25864c2deb3a285ff7192c22b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168523698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d1efd0ebefe5dff9a23f9c606c541866d74a69399495a9e0256bf0b72ced6b1`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:23:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:41:05 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:41:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 03:41:11 GMT
ENV TELEGRAF_VERSION=1.40.1
# Tue, 06 Oct 2026 03:41:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 06 Oct 2026 03:41:11 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 06 Oct 2026 03:41:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 03:41:11 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 06 Oct 2026 03:41:11 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:54b36b054c7cd92d990fdbe776041bda41bca67549e7f2f5b71aa81632707ced`  
		Last Modified: Tue, 06 Oct 2026 00:13:12 GMT  
		Size: 44.2 MB (44213912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6b6172c735529bdb9ddec421bbd50381be57cbdde9600e8834517a79e2dbd5`  
		Last Modified: Tue, 06 Oct 2026 02:24:08 GMT  
		Size: 21.8 MB (21774996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a6f6dea538818643c9542d387f1360431270a8b79e12080b26bc38fef5c582`  
		Last Modified: Tue, 06 Oct 2026 03:41:32 GMT  
		Size: 20.0 MB (20049652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9384c543107d0f3ec676d4539b5f83b72df0fb462b6f7191395811725d9282b1`  
		Last Modified: Tue, 06 Oct 2026 03:41:31 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02edeb79ef43043994e7996b46ed91ba727e97757754690e35cfbf4694ed3860`  
		Last Modified: Tue, 06 Oct 2026 03:41:34 GMT  
		Size: 82.5 MB (82479441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14d5ba9cbf20c52ece2ab74392b2ccd8e27936cf7d29b104895230fb3beb26b5`  
		Last Modified: Tue, 06 Oct 2026 03:41:31 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:65b9f52bcbc8fa261580956a5f25140f7cbc60d8384c866d424e6ef89c0b6654
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0275376e461108d27f625d9f531f8a5ac77ce67127ba4b45b730edfa9e05be`

```dockerfile
```

-	Layers:
	-	`sha256:fbd0a40a63142e956a299297f8210a597e74530b115fd9ee8c6e2e67c489cf4f`  
		Last Modified: Tue, 06 Oct 2026 03:41:31 GMT  
		Size: 6.7 MB (6686719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e058c146bf558c4522b2afb272081533913100d717c22189b6b78d6c188c9254`  
		Last Modified: Tue, 06 Oct 2026 03:41:31 GMT  
		Size: 14.9 KB (14866 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:a98c93ea941cc5e6c41af46588c17e472d917746249a8c89e5f6d068d65424d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.5 MB (172537041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb7e2a095680a0cfac7c76ffd9a877a97982383e2af5e07b628f6317e516d76e`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:41:03 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:41:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 02:41:07 GMT
ENV TELEGRAF_VERSION=1.40.1
# Tue, 06 Oct 2026 02:41:07 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 06 Oct 2026 02:41:07 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 06 Oct 2026 02:41:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 02:41:07 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 06 Oct 2026 02:41:07 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc7363672c63abfefdedaf5e03be8e39cb662841d4f31237c4b7d7e3729f65c`  
		Last Modified: Tue, 06 Oct 2026 01:44:28 GMT  
		Size: 23.4 MB (23442412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bcf888fddaf876fbed8775c525c8224c067bbaf6f3478b10293a236f78ba66e`  
		Last Modified: Tue, 06 Oct 2026 02:41:27 GMT  
		Size: 21.5 MB (21454200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c273cc52438b3193840814647a88fbaf2dbe2c3093198b9efe506da077a8d0eb`  
		Last Modified: Tue, 06 Oct 2026 02:41:26 GMT  
		Size: 5.1 KB (5057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a04693c0ae1ac4b904df6a1676458ae2070c41b67046f4aad56b37672bd1d7ab`  
		Last Modified: Tue, 06 Oct 2026 02:41:29 GMT  
		Size: 79.2 MB (79233178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e55ecd32d03752e446c5fbeb9962a3bfae796ad5b51d48bd8520b616b355379`  
		Last Modified: Tue, 06 Oct 2026 02:41:27 GMT  
		Size: 639.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:6761e05cc50a4a4378e1f92d84d5560409af7ff85031e0c6490a43ad2b189f7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:125bfde64109fe8c937799a7acae8fed7a27a65d6967f169446ac033beaf2bc3`

```dockerfile
```

-	Layers:
	-	`sha256:6cfab19192e4c469bf15e5c68fd0ec695318db41982764ecc1c715ece80e07f0`  
		Last Modified: Tue, 06 Oct 2026 02:41:27 GMT  
		Size: 6.7 MB (6691997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ce80cf7b7ce33f97833947c9d35db87c932ae54bbb8471348cb32ae8346d4ae`  
		Last Modified: Tue, 06 Oct 2026 02:41:27 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40-alpine`

```console
$ docker pull telegraf@sha256:6606553b5019151de171984e9ce938eac859d6987aa5329c420597737bf1a9a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:d31c27d1a23449f8eb6a1c91e15922e4f2ab504732edfd0e40285185dc1a50f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.9 MB (97852500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee789146baac8629f7f091ac3a794e17f635d6ca98941f3ef868d2eca136712`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 22:10:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 21 Sep 2026 22:10:59 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Mon, 21 Sep 2026 22:11:05 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:11:05 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Mon, 21 Sep 2026 22:11:05 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:11:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:11:05 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:11:05 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c23bf1f65139176a78ebb8b12587c7f784dcf0d13c795898b44f150f681dabf3`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31047b02db8eb56bf66f90b2a6bb724279f6644e479b57d9cc5fabb0f857c672`  
		Last Modified: Mon, 21 Sep 2026 22:11:21 GMT  
		Size: 2.6 MB (2581404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44a23e26818f8cea73af8bda7b9e1869bd3727ae83b8e78d03e6fcbf5d93bdb`  
		Last Modified: Mon, 21 Sep 2026 22:11:23 GMT  
		Size: 91.4 MB (91421675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8a8b3142946f40b51395f1eb07a221236e7e2afc2b9314535fc967d9faf4ce3`  
		Last Modified: Mon, 21 Sep 2026 22:11:21 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:df3ba53b03b6ac31f50108f6a68cf1c7b51e23660ccc415c8cfa11ae7e66219d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1167463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c3b9f1c0b43c941d536b04a177e4413a712cfd3c66f5823ee3691ef745c891d`

```dockerfile
```

-	Layers:
	-	`sha256:548d839a14fe2ca7828c4bed39eff96c9da7a66d697f2d708f9edf3d66a3c010`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 1.2 MB (1151675 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b899dd03eb712db1dcc67fcc86e69cd15d6fb5c61bd21fda9e5d37f8486e1e0c`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:c11707fed8fc36baa257509ddee6e1f339e5dc1925e9c6ab9256e7a90859007c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88720948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33766bd902152f6589fd59ba8ac61ef50bacc255f2ed8186898c6d88819f3086`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 22:10:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 21 Sep 2026 22:10:38 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Mon, 21 Sep 2026 22:10:45 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:10:45 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Mon, 21 Sep 2026 22:10:45 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:10:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:10:45 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:10:45 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090cebccf81accf2e95200898dcf5c31040cb8b81337e67edeaccd1cb9b6ed22`  
		Last Modified: Mon, 21 Sep 2026 22:10:59 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d0439ba2dd85468f4dd6d01176ea9e58be100350c0bce54e37a057c5becd0aa`  
		Last Modified: Mon, 21 Sep 2026 22:11:00 GMT  
		Size: 2.6 MB (2633299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee89747a1681cd8663e9ee42fc1bf24ca2efd32d1451b3f9137e81d60f043cb`  
		Last Modified: Mon, 21 Sep 2026 22:11:02 GMT  
		Size: 81.9 MB (81900680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc992e601cbe1fd91b51bdd37b703db5bda888a0ce30e7ec81f93f114894577b`  
		Last Modified: Mon, 21 Sep 2026 22:11:00 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:81bb6a5b0e69700bf6c93dcde552f5492a8a74992e2ded673ffb3cbf01750467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1162574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56124e6ac670d3a13f1834bbdd8f9836689035eaa5b1b8d174282f0366fd1697`

```dockerfile
```

-	Layers:
	-	`sha256:6749cbb1a69e974d4b0313fb6c3b38703f359b95aea0bb8f5416a3a89bc3517c`  
		Last Modified: Mon, 21 Sep 2026 22:11:00 GMT  
		Size: 1.1 MB (1146664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d9f0e566f6b46059281fee8380dd076d486706df29eea7b536e4f1794e7d46d`  
		Last Modified: Mon, 21 Sep 2026 22:10:59 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40.1`

```console
$ docker pull telegraf@sha256:e91237482edcb054c81571923c6b7cf64f06ed6087a2f9cf0bd3bc2cd8c0ed61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40.1` - linux; amd64

```console
$ docker pull telegraf@sha256:09c3f2a6e39801ba85112d2d891590527c78c3f9a50cad61bce649d09e2dd7f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.7 MB (182710398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b06095d881978339c0ff68d30051bd462c340fc80d797094a2b43036708ab259`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:48:49 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:48:49 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 02:48:54 GMT
ENV TELEGRAF_VERSION=1.40.1
# Tue, 06 Oct 2026 02:48:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 06 Oct 2026 02:48:54 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 06 Oct 2026 02:48:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 02:48:54 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 06 Oct 2026 02:48:54 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4edf9c328e814bd91b20c8e2211065489ebf15a16c7663d68a880660dfc897d`  
		Last Modified: Tue, 06 Oct 2026 01:41:13 GMT  
		Size: 23.9 MB (23872252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f10cb9ca7faf76eebcccb77e113eb681f69cc442f8da9dca4cc8a007635a22`  
		Last Modified: Tue, 06 Oct 2026 02:49:11 GMT  
		Size: 21.6 MB (21591314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449dba150e107d3f2f7fa8048f487a302e776f4f4f24ca63514fb0c8a1736b6a`  
		Last Modified: Tue, 06 Oct 2026 02:49:10 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61615a570269c9f30c61e07b2538391de766f3bf4af854f2c94f13ba4853104d`  
		Last Modified: Tue, 06 Oct 2026 02:49:13 GMT  
		Size: 88.7 MB (88723114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d856b9df2ff0a8f77bf787045999798800f813b368f8a60e312c85d85ddd3c`  
		Last Modified: Tue, 06 Oct 2026 02:49:11 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.1` - unknown; unknown

```console
$ docker pull telegraf@sha256:894c7d5ee87c758bf4cbd67c6f8a2418cb4244e0ae3bb2a28ac1bdbe1f287b20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90b2bcd0777f59595df124e75cb1aee85713f5c360d0a3b69869f3b5f67da3f4`

```dockerfile
```

-	Layers:
	-	`sha256:aea2dd0edfca79fcee29203b24f692ddd1a5be3ff93ef0308a5c6249cdbe06d7`  
		Last Modified: Tue, 06 Oct 2026 02:49:11 GMT  
		Size: 6.7 MB (6691309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:840fc3af838868b7483c10d284bccba9ba6be16ec6cae966281a53b9e320769e`  
		Last Modified: Tue, 06 Oct 2026 02:49:11 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.1` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:a776ef157b7e4f270ac47cb37177f1df8fbf3d25864c2deb3a285ff7192c22b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168523698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d1efd0ebefe5dff9a23f9c606c541866d74a69399495a9e0256bf0b72ced6b1`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:23:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:41:05 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:41:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 03:41:11 GMT
ENV TELEGRAF_VERSION=1.40.1
# Tue, 06 Oct 2026 03:41:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 06 Oct 2026 03:41:11 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 06 Oct 2026 03:41:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 03:41:11 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 06 Oct 2026 03:41:11 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:54b36b054c7cd92d990fdbe776041bda41bca67549e7f2f5b71aa81632707ced`  
		Last Modified: Tue, 06 Oct 2026 00:13:12 GMT  
		Size: 44.2 MB (44213912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6b6172c735529bdb9ddec421bbd50381be57cbdde9600e8834517a79e2dbd5`  
		Last Modified: Tue, 06 Oct 2026 02:24:08 GMT  
		Size: 21.8 MB (21774996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a6f6dea538818643c9542d387f1360431270a8b79e12080b26bc38fef5c582`  
		Last Modified: Tue, 06 Oct 2026 03:41:32 GMT  
		Size: 20.0 MB (20049652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9384c543107d0f3ec676d4539b5f83b72df0fb462b6f7191395811725d9282b1`  
		Last Modified: Tue, 06 Oct 2026 03:41:31 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02edeb79ef43043994e7996b46ed91ba727e97757754690e35cfbf4694ed3860`  
		Last Modified: Tue, 06 Oct 2026 03:41:34 GMT  
		Size: 82.5 MB (82479441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14d5ba9cbf20c52ece2ab74392b2ccd8e27936cf7d29b104895230fb3beb26b5`  
		Last Modified: Tue, 06 Oct 2026 03:41:31 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.1` - unknown; unknown

```console
$ docker pull telegraf@sha256:65b9f52bcbc8fa261580956a5f25140f7cbc60d8384c866d424e6ef89c0b6654
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0275376e461108d27f625d9f531f8a5ac77ce67127ba4b45b730edfa9e05be`

```dockerfile
```

-	Layers:
	-	`sha256:fbd0a40a63142e956a299297f8210a597e74530b115fd9ee8c6e2e67c489cf4f`  
		Last Modified: Tue, 06 Oct 2026 03:41:31 GMT  
		Size: 6.7 MB (6686719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e058c146bf558c4522b2afb272081533913100d717c22189b6b78d6c188c9254`  
		Last Modified: Tue, 06 Oct 2026 03:41:31 GMT  
		Size: 14.9 KB (14866 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.1` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:a98c93ea941cc5e6c41af46588c17e472d917746249a8c89e5f6d068d65424d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.5 MB (172537041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb7e2a095680a0cfac7c76ffd9a877a97982383e2af5e07b628f6317e516d76e`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:41:03 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:41:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 02:41:07 GMT
ENV TELEGRAF_VERSION=1.40.1
# Tue, 06 Oct 2026 02:41:07 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 06 Oct 2026 02:41:07 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 06 Oct 2026 02:41:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 02:41:07 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 06 Oct 2026 02:41:07 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc7363672c63abfefdedaf5e03be8e39cb662841d4f31237c4b7d7e3729f65c`  
		Last Modified: Tue, 06 Oct 2026 01:44:28 GMT  
		Size: 23.4 MB (23442412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bcf888fddaf876fbed8775c525c8224c067bbaf6f3478b10293a236f78ba66e`  
		Last Modified: Tue, 06 Oct 2026 02:41:27 GMT  
		Size: 21.5 MB (21454200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c273cc52438b3193840814647a88fbaf2dbe2c3093198b9efe506da077a8d0eb`  
		Last Modified: Tue, 06 Oct 2026 02:41:26 GMT  
		Size: 5.1 KB (5057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a04693c0ae1ac4b904df6a1676458ae2070c41b67046f4aad56b37672bd1d7ab`  
		Last Modified: Tue, 06 Oct 2026 02:41:29 GMT  
		Size: 79.2 MB (79233178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e55ecd32d03752e446c5fbeb9962a3bfae796ad5b51d48bd8520b616b355379`  
		Last Modified: Tue, 06 Oct 2026 02:41:27 GMT  
		Size: 639.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.1` - unknown; unknown

```console
$ docker pull telegraf@sha256:6761e05cc50a4a4378e1f92d84d5560409af7ff85031e0c6490a43ad2b189f7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:125bfde64109fe8c937799a7acae8fed7a27a65d6967f169446ac033beaf2bc3`

```dockerfile
```

-	Layers:
	-	`sha256:6cfab19192e4c469bf15e5c68fd0ec695318db41982764ecc1c715ece80e07f0`  
		Last Modified: Tue, 06 Oct 2026 02:41:27 GMT  
		Size: 6.7 MB (6691997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ce80cf7b7ce33f97833947c9d35db87c932ae54bbb8471348cb32ae8346d4ae`  
		Last Modified: Tue, 06 Oct 2026 02:41:27 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40.1-alpine`

```console
$ docker pull telegraf@sha256:6606553b5019151de171984e9ce938eac859d6987aa5329c420597737bf1a9a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40.1-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:d31c27d1a23449f8eb6a1c91e15922e4f2ab504732edfd0e40285185dc1a50f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.9 MB (97852500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee789146baac8629f7f091ac3a794e17f635d6ca98941f3ef868d2eca136712`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 22:10:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 21 Sep 2026 22:10:59 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Mon, 21 Sep 2026 22:11:05 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:11:05 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Mon, 21 Sep 2026 22:11:05 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:11:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:11:05 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:11:05 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c23bf1f65139176a78ebb8b12587c7f784dcf0d13c795898b44f150f681dabf3`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31047b02db8eb56bf66f90b2a6bb724279f6644e479b57d9cc5fabb0f857c672`  
		Last Modified: Mon, 21 Sep 2026 22:11:21 GMT  
		Size: 2.6 MB (2581404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44a23e26818f8cea73af8bda7b9e1869bd3727ae83b8e78d03e6fcbf5d93bdb`  
		Last Modified: Mon, 21 Sep 2026 22:11:23 GMT  
		Size: 91.4 MB (91421675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8a8b3142946f40b51395f1eb07a221236e7e2afc2b9314535fc967d9faf4ce3`  
		Last Modified: Mon, 21 Sep 2026 22:11:21 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.1-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:df3ba53b03b6ac31f50108f6a68cf1c7b51e23660ccc415c8cfa11ae7e66219d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1167463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c3b9f1c0b43c941d536b04a177e4413a712cfd3c66f5823ee3691ef745c891d`

```dockerfile
```

-	Layers:
	-	`sha256:548d839a14fe2ca7828c4bed39eff96c9da7a66d697f2d708f9edf3d66a3c010`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 1.2 MB (1151675 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b899dd03eb712db1dcc67fcc86e69cd15d6fb5c61bd21fda9e5d37f8486e1e0c`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.1-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:c11707fed8fc36baa257509ddee6e1f339e5dc1925e9c6ab9256e7a90859007c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88720948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33766bd902152f6589fd59ba8ac61ef50bacc255f2ed8186898c6d88819f3086`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 22:10:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 21 Sep 2026 22:10:38 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Mon, 21 Sep 2026 22:10:45 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:10:45 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Mon, 21 Sep 2026 22:10:45 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:10:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:10:45 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:10:45 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090cebccf81accf2e95200898dcf5c31040cb8b81337e67edeaccd1cb9b6ed22`  
		Last Modified: Mon, 21 Sep 2026 22:10:59 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d0439ba2dd85468f4dd6d01176ea9e58be100350c0bce54e37a057c5becd0aa`  
		Last Modified: Mon, 21 Sep 2026 22:11:00 GMT  
		Size: 2.6 MB (2633299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee89747a1681cd8663e9ee42fc1bf24ca2efd32d1451b3f9137e81d60f043cb`  
		Last Modified: Mon, 21 Sep 2026 22:11:02 GMT  
		Size: 81.9 MB (81900680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc992e601cbe1fd91b51bdd37b703db5bda888a0ce30e7ec81f93f114894577b`  
		Last Modified: Mon, 21 Sep 2026 22:11:00 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.1-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:81bb6a5b0e69700bf6c93dcde552f5492a8a74992e2ded673ffb3cbf01750467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1162574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56124e6ac670d3a13f1834bbdd8f9836689035eaa5b1b8d174282f0366fd1697`

```dockerfile
```

-	Layers:
	-	`sha256:6749cbb1a69e974d4b0313fb6c3b38703f359b95aea0bb8f5416a3a89bc3517c`  
		Last Modified: Mon, 21 Sep 2026 22:11:00 GMT  
		Size: 1.1 MB (1146664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d9f0e566f6b46059281fee8380dd076d486706df29eea7b536e4f1794e7d46d`  
		Last Modified: Mon, 21 Sep 2026 22:10:59 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:6606553b5019151de171984e9ce938eac859d6987aa5329c420597737bf1a9a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:d31c27d1a23449f8eb6a1c91e15922e4f2ab504732edfd0e40285185dc1a50f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.9 MB (97852500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee789146baac8629f7f091ac3a794e17f635d6ca98941f3ef868d2eca136712`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 22:10:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 21 Sep 2026 22:10:59 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Mon, 21 Sep 2026 22:11:05 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:11:05 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Mon, 21 Sep 2026 22:11:05 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:11:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:11:05 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:11:05 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c23bf1f65139176a78ebb8b12587c7f784dcf0d13c795898b44f150f681dabf3`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31047b02db8eb56bf66f90b2a6bb724279f6644e479b57d9cc5fabb0f857c672`  
		Last Modified: Mon, 21 Sep 2026 22:11:21 GMT  
		Size: 2.6 MB (2581404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44a23e26818f8cea73af8bda7b9e1869bd3727ae83b8e78d03e6fcbf5d93bdb`  
		Last Modified: Mon, 21 Sep 2026 22:11:23 GMT  
		Size: 91.4 MB (91421675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8a8b3142946f40b51395f1eb07a221236e7e2afc2b9314535fc967d9faf4ce3`  
		Last Modified: Mon, 21 Sep 2026 22:11:21 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:df3ba53b03b6ac31f50108f6a68cf1c7b51e23660ccc415c8cfa11ae7e66219d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1167463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c3b9f1c0b43c941d536b04a177e4413a712cfd3c66f5823ee3691ef745c891d`

```dockerfile
```

-	Layers:
	-	`sha256:548d839a14fe2ca7828c4bed39eff96c9da7a66d697f2d708f9edf3d66a3c010`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 1.2 MB (1151675 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b899dd03eb712db1dcc67fcc86e69cd15d6fb5c61bd21fda9e5d37f8486e1e0c`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:c11707fed8fc36baa257509ddee6e1f339e5dc1925e9c6ab9256e7a90859007c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88720948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33766bd902152f6589fd59ba8ac61ef50bacc255f2ed8186898c6d88819f3086`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 22:10:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 21 Sep 2026 22:10:38 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Mon, 21 Sep 2026 22:10:45 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:10:45 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Mon, 21 Sep 2026 22:10:45 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:10:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:10:45 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:10:45 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090cebccf81accf2e95200898dcf5c31040cb8b81337e67edeaccd1cb9b6ed22`  
		Last Modified: Mon, 21 Sep 2026 22:10:59 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d0439ba2dd85468f4dd6d01176ea9e58be100350c0bce54e37a057c5becd0aa`  
		Last Modified: Mon, 21 Sep 2026 22:11:00 GMT  
		Size: 2.6 MB (2633299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee89747a1681cd8663e9ee42fc1bf24ca2efd32d1451b3f9137e81d60f043cb`  
		Last Modified: Mon, 21 Sep 2026 22:11:02 GMT  
		Size: 81.9 MB (81900680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc992e601cbe1fd91b51bdd37b703db5bda888a0ce30e7ec81f93f114894577b`  
		Last Modified: Mon, 21 Sep 2026 22:11:00 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:81bb6a5b0e69700bf6c93dcde552f5492a8a74992e2ded673ffb3cbf01750467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1162574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56124e6ac670d3a13f1834bbdd8f9836689035eaa5b1b8d174282f0366fd1697`

```dockerfile
```

-	Layers:
	-	`sha256:6749cbb1a69e974d4b0313fb6c3b38703f359b95aea0bb8f5416a3a89bc3517c`  
		Last Modified: Mon, 21 Sep 2026 22:11:00 GMT  
		Size: 1.1 MB (1146664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d9f0e566f6b46059281fee8380dd076d486706df29eea7b536e4f1794e7d46d`  
		Last Modified: Mon, 21 Sep 2026 22:10:59 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:e91237482edcb054c81571923c6b7cf64f06ed6087a2f9cf0bd3bc2cd8c0ed61
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
$ docker pull telegraf@sha256:09c3f2a6e39801ba85112d2d891590527c78c3f9a50cad61bce649d09e2dd7f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.7 MB (182710398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b06095d881978339c0ff68d30051bd462c340fc80d797094a2b43036708ab259`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:48:49 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:48:49 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 02:48:54 GMT
ENV TELEGRAF_VERSION=1.40.1
# Tue, 06 Oct 2026 02:48:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 06 Oct 2026 02:48:54 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 06 Oct 2026 02:48:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 02:48:54 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 06 Oct 2026 02:48:54 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4edf9c328e814bd91b20c8e2211065489ebf15a16c7663d68a880660dfc897d`  
		Last Modified: Tue, 06 Oct 2026 01:41:13 GMT  
		Size: 23.9 MB (23872252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f10cb9ca7faf76eebcccb77e113eb681f69cc442f8da9dca4cc8a007635a22`  
		Last Modified: Tue, 06 Oct 2026 02:49:11 GMT  
		Size: 21.6 MB (21591314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449dba150e107d3f2f7fa8048f487a302e776f4f4f24ca63514fb0c8a1736b6a`  
		Last Modified: Tue, 06 Oct 2026 02:49:10 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61615a570269c9f30c61e07b2538391de766f3bf4af854f2c94f13ba4853104d`  
		Last Modified: Tue, 06 Oct 2026 02:49:13 GMT  
		Size: 88.7 MB (88723114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d856b9df2ff0a8f77bf787045999798800f813b368f8a60e312c85d85ddd3c`  
		Last Modified: Tue, 06 Oct 2026 02:49:11 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:894c7d5ee87c758bf4cbd67c6f8a2418cb4244e0ae3bb2a28ac1bdbe1f287b20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90b2bcd0777f59595df124e75cb1aee85713f5c360d0a3b69869f3b5f67da3f4`

```dockerfile
```

-	Layers:
	-	`sha256:aea2dd0edfca79fcee29203b24f692ddd1a5be3ff93ef0308a5c6249cdbe06d7`  
		Last Modified: Tue, 06 Oct 2026 02:49:11 GMT  
		Size: 6.7 MB (6691309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:840fc3af838868b7483c10d284bccba9ba6be16ec6cae966281a53b9e320769e`  
		Last Modified: Tue, 06 Oct 2026 02:49:11 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:a776ef157b7e4f270ac47cb37177f1df8fbf3d25864c2deb3a285ff7192c22b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168523698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d1efd0ebefe5dff9a23f9c606c541866d74a69399495a9e0256bf0b72ced6b1`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:23:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:41:05 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:41:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 03:41:11 GMT
ENV TELEGRAF_VERSION=1.40.1
# Tue, 06 Oct 2026 03:41:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 06 Oct 2026 03:41:11 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 06 Oct 2026 03:41:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 03:41:11 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 06 Oct 2026 03:41:11 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:54b36b054c7cd92d990fdbe776041bda41bca67549e7f2f5b71aa81632707ced`  
		Last Modified: Tue, 06 Oct 2026 00:13:12 GMT  
		Size: 44.2 MB (44213912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6b6172c735529bdb9ddec421bbd50381be57cbdde9600e8834517a79e2dbd5`  
		Last Modified: Tue, 06 Oct 2026 02:24:08 GMT  
		Size: 21.8 MB (21774996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a6f6dea538818643c9542d387f1360431270a8b79e12080b26bc38fef5c582`  
		Last Modified: Tue, 06 Oct 2026 03:41:32 GMT  
		Size: 20.0 MB (20049652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9384c543107d0f3ec676d4539b5f83b72df0fb462b6f7191395811725d9282b1`  
		Last Modified: Tue, 06 Oct 2026 03:41:31 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02edeb79ef43043994e7996b46ed91ba727e97757754690e35cfbf4694ed3860`  
		Last Modified: Tue, 06 Oct 2026 03:41:34 GMT  
		Size: 82.5 MB (82479441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14d5ba9cbf20c52ece2ab74392b2ccd8e27936cf7d29b104895230fb3beb26b5`  
		Last Modified: Tue, 06 Oct 2026 03:41:31 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:65b9f52bcbc8fa261580956a5f25140f7cbc60d8384c866d424e6ef89c0b6654
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0275376e461108d27f625d9f531f8a5ac77ce67127ba4b45b730edfa9e05be`

```dockerfile
```

-	Layers:
	-	`sha256:fbd0a40a63142e956a299297f8210a597e74530b115fd9ee8c6e2e67c489cf4f`  
		Last Modified: Tue, 06 Oct 2026 03:41:31 GMT  
		Size: 6.7 MB (6686719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e058c146bf558c4522b2afb272081533913100d717c22189b6b78d6c188c9254`  
		Last Modified: Tue, 06 Oct 2026 03:41:31 GMT  
		Size: 14.9 KB (14866 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:a98c93ea941cc5e6c41af46588c17e472d917746249a8c89e5f6d068d65424d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.5 MB (172537041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb7e2a095680a0cfac7c76ffd9a877a97982383e2af5e07b628f6317e516d76e`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:41:03 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:41:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 02:41:07 GMT
ENV TELEGRAF_VERSION=1.40.1
# Tue, 06 Oct 2026 02:41:07 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 06 Oct 2026 02:41:07 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 06 Oct 2026 02:41:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 02:41:07 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 06 Oct 2026 02:41:07 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc7363672c63abfefdedaf5e03be8e39cb662841d4f31237c4b7d7e3729f65c`  
		Last Modified: Tue, 06 Oct 2026 01:44:28 GMT  
		Size: 23.4 MB (23442412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bcf888fddaf876fbed8775c525c8224c067bbaf6f3478b10293a236f78ba66e`  
		Last Modified: Tue, 06 Oct 2026 02:41:27 GMT  
		Size: 21.5 MB (21454200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c273cc52438b3193840814647a88fbaf2dbe2c3093198b9efe506da077a8d0eb`  
		Last Modified: Tue, 06 Oct 2026 02:41:26 GMT  
		Size: 5.1 KB (5057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a04693c0ae1ac4b904df6a1676458ae2070c41b67046f4aad56b37672bd1d7ab`  
		Last Modified: Tue, 06 Oct 2026 02:41:29 GMT  
		Size: 79.2 MB (79233178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e55ecd32d03752e446c5fbeb9962a3bfae796ad5b51d48bd8520b616b355379`  
		Last Modified: Tue, 06 Oct 2026 02:41:27 GMT  
		Size: 639.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:6761e05cc50a4a4378e1f92d84d5560409af7ff85031e0c6490a43ad2b189f7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:125bfde64109fe8c937799a7acae8fed7a27a65d6967f169446ac033beaf2bc3`

```dockerfile
```

-	Layers:
	-	`sha256:6cfab19192e4c469bf15e5c68fd0ec695318db41982764ecc1c715ece80e07f0`  
		Last Modified: Tue, 06 Oct 2026 02:41:27 GMT  
		Size: 6.7 MB (6691997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ce80cf7b7ce33f97833947c9d35db87c932ae54bbb8471348cb32ae8346d4ae`  
		Last Modified: Tue, 06 Oct 2026 02:41:27 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json
