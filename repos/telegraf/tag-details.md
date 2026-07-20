<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `telegraf`

-	[`telegraf:1.37`](#telegraf137)
-	[`telegraf:1.37-alpine`](#telegraf137-alpine)
-	[`telegraf:1.37.3`](#telegraf1373)
-	[`telegraf:1.37.3-alpine`](#telegraf1373-alpine)
-	[`telegraf:1.38`](#telegraf138)
-	[`telegraf:1.38-alpine`](#telegraf138-alpine)
-	[`telegraf:1.38.4`](#telegraf1384)
-	[`telegraf:1.38.4-alpine`](#telegraf1384-alpine)
-	[`telegraf:1.39`](#telegraf139)
-	[`telegraf:1.39-alpine`](#telegraf139-alpine)
-	[`telegraf:1.39.2`](#telegraf1392)
-	[`telegraf:1.39.2-alpine`](#telegraf1392-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)

## `telegraf:1.37`

```console
$ docker pull telegraf@sha256:c46120cf42229a8840785c36bc55d19eb3bbec21b6c98d00eaeb9f83d6c247df
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.37` - linux; amd64

```console
$ docker pull telegraf@sha256:838e5a467555bd8d48c261b2141e68d6c375ee2d1247cd223e88414c4a4ce446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172274662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fdcc5b07abe8e611e33486d084d0e49a1fe9b57fb0e1700aa7700de1f3bc555`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:43:21 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:43:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 02:43:26 GMT
ENV TELEGRAF_VERSION=1.37.3
# Tue, 14 Jul 2026 02:43:26 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 14 Jul 2026 02:43:26 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 14 Jul 2026 02:43:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:43:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:43:26 GMT
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
	-	`sha256:7ebceda44ba1443cd4d8ae9437c64b557e19e5c5a1523f1417c56be636d96649`  
		Last Modified: Tue, 14 Jul 2026 02:43:45 GMT  
		Size: 18.9 MB (18944299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b21b76cca0fb6fd5dd225c7337435aafa460e9cdea9c98fd43f56366dfde3783`  
		Last Modified: Tue, 14 Jul 2026 02:43:44 GMT  
		Size: 5.1 KB (5068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719de34d441d3cf6d94b9d9c4784d51b52608eed16ab0260e045f7db6ac7e681`  
		Last Modified: Tue, 14 Jul 2026 02:43:47 GMT  
		Size: 80.8 MB (80783167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2e78e61708b5a8afa078f7f025f7cbf0320a7620e396808b8c7f1e08be0a30f`  
		Last Modified: Tue, 14 Jul 2026 02:43:45 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37` - unknown; unknown

```console
$ docker pull telegraf@sha256:4b5d626f8203754739746ef5268a31a85ab9166bbacd734e90144255830d315f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6681457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6305a7292467378304001446e850e54bd2fb1bd83a82c0a7ca164ecdf0ad741`

```dockerfile
```

-	Layers:
	-	`sha256:45ca05eee385a67aefe945ecf0de8ba9ab120b8a5874266564b1ee7657d9b5bf`  
		Last Modified: Tue, 14 Jul 2026 02:43:45 GMT  
		Size: 6.7 MB (6667030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78690882ab1921db803161cb4a924af9080a480267d5672714213de7ebc73335`  
		Last Modified: Tue, 14 Jul 2026 02:43:44 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.37` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:1974cafd582bd8ca7e943f453022736e978103a4a1cb0d963b0f5717d928c4a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158476148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f96556e68ba3de48c0fd057f851e41ad6bb5a07608b9120afc66b7e378911e`
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
# Tue, 14 Jul 2026 04:28:05 GMT
ENV TELEGRAF_VERSION=1.37.3
# Tue, 14 Jul 2026 04:28:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 14 Jul 2026 04:28:05 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 14 Jul 2026 04:28:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 04:28:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 04:28:05 GMT
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
	-	`sha256:261e3c39e72cca78d33ac5c0a9d2e7f3662b683f7904db37e0c15c4595cb16f6`  
		Last Modified: Tue, 14 Jul 2026 04:28:24 GMT  
		Size: 74.6 MB (74617476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d9732f9b535e688f7b43c85e7903c137b46655ba32aab7788a5542ee111950`  
		Last Modified: Tue, 14 Jul 2026 04:28:22 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37` - unknown; unknown

```console
$ docker pull telegraf@sha256:abfca977dee52f48baafdbea263dde5c7c27a051cfb73734912c9af09958d1c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6676144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdeb1289c3b6c853cf781928482ad23ca3ae6feb996939fb9f3526e03f29321b`

```dockerfile
```

-	Layers:
	-	`sha256:340390f22f14d00ba5298d06b62de07ae5b31814c33fe477b2a1f8a4e24f51ef`  
		Last Modified: Tue, 14 Jul 2026 04:28:22 GMT  
		Size: 6.7 MB (6661627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f7cd717f8ce50db300450161398a135308e743daa2c191bc83f8815f9ae3c24`  
		Last Modified: Tue, 14 Jul 2026 04:28:22 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.37` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:f951bca4156b97a4ca11980d91d38a018ab4ab52671199aa186f24512acc925e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.1 MB (163059015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85bf399889826562d02882a51170971ce73d63ff61be5243ef79787f3655363`
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
# Tue, 14 Jul 2026 02:50:12 GMT
ENV TELEGRAF_VERSION=1.37.3
# Tue, 14 Jul 2026 02:50:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 14 Jul 2026 02:50:12 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 14 Jul 2026 02:50:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:50:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:50:12 GMT
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
	-	`sha256:ab43279cc40476024692c3cdb5c8261a99b6135a72a461716c9198e4dc82164d`  
		Last Modified: Tue, 14 Jul 2026 02:50:33 GMT  
		Size: 72.2 MB (72171024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd94e0987dbc9d7e28f7a65b42d0f72c0da98e8fccd167c5eb26a4ec18c7e8f`  
		Last Modified: Tue, 14 Jul 2026 02:50:30 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37` - unknown; unknown

```console
$ docker pull telegraf@sha256:986b3844c1a0556fb6df212a9541c79a32de32f9469d870a2c8ad27f06829902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6682243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e91cdcb0179b52d0c56a9250f4dd9d5373d3fd44f39b1c3f84d02fad78c0ce6`

```dockerfile
```

-	Layers:
	-	`sha256:bd720a38cfffeea6b2dc698f072e1bf1789643f50c28b00b995ddad4d8b31054`  
		Last Modified: Tue, 14 Jul 2026 02:50:30 GMT  
		Size: 6.7 MB (6667706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa9e48d756c847a2896a4e8db4b7d391663950723839795fb58e9582663e019d`  
		Last Modified: Tue, 14 Jul 2026 02:50:30 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.37-alpine`

```console
$ docker pull telegraf@sha256:2bbb518d69f0544eaca2a54322908c2b5800f5ba094a12f152676935afb5ce8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.37-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:a611cb34739d2b4944daa6255a16a37ef417c0c3a8670c4396b6453142b039ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86877437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:781c36361ea2743eeb299620557502c98eebed9a491e1d1f7e8ed29eda9f78f1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:08:45 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:08:45 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:08:52 GMT
ENV TELEGRAF_VERSION=1.37.3
# Mon, 22 Jun 2026 20:08:52 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 22 Jun 2026 20:08:52 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 22 Jun 2026 20:08:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:08:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:08:52 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:194bf597cb6f9f4e4ac14e4ecf923d10e5f506b6e56f7d36244ae5aa7b4137fb`  
		Last Modified: Mon, 22 Jun 2026 20:09:08 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc140e323b3c5cdd121b5bb99e0cbeb114b2117b30604c681f930de579c8dec6`  
		Last Modified: Mon, 22 Jun 2026 20:09:08 GMT  
		Size: 2.5 MB (2511659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f3a3b505e51075e6e4ace592478ffa3d4bb1306ca571430a868d519ee70a85`  
		Last Modified: Mon, 22 Jun 2026 20:09:10 GMT  
		Size: 80.6 MB (80577284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a466e97127874af7e9e330b007efc7af4b2d5de51bdf5504bf6edf3000fc0a73`  
		Last Modified: Mon, 22 Jun 2026 20:09:08 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:4bd9ca2af5efc00299c2d45a14020605d7d285e089ef5dc25ddcf5ebc47abbb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1150507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:929ea6ff1a7b9b094747d55d3d207695de2b76a7151c71574b1de382f608299f`

```dockerfile
```

-	Layers:
	-	`sha256:4d7effe956778f7847bccdfb2116149fc770a87375a1e6ce4d5c63dd263bed69`  
		Last Modified: Mon, 22 Jun 2026 20:09:08 GMT  
		Size: 1.1 MB (1135589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c831f4e59e5363ebfabb7f9bcbb224e7615234783f6c66486165309d8a46664d`  
		Last Modified: Mon, 22 Jun 2026 20:09:08 GMT  
		Size: 14.9 KB (14918 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.37-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:0887d7caa6a0d0793771cb0f50ee42fae77a52d44736cba379e061e303fd0319
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78658383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7a4baac8ce2ece31f1e506d7a476b40720f2b38575e5e2c6cab55ea423e65c4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:11:44 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:11:46 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:11:53 GMT
ENV TELEGRAF_VERSION=1.37.3
# Mon, 22 Jun 2026 20:11:53 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 22 Jun 2026 20:11:53 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 22 Jun 2026 20:11:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:11:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:11:53 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27a4f7541d79b95fdb40d40de6cf09fa31effe5b94d8521a343228a0bf34b18`  
		Last Modified: Mon, 22 Jun 2026 20:12:06 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5066e9f898666ad4d3312ea3082d02c8580d05a81548755066346d9a21026c34`  
		Last Modified: Mon, 22 Jun 2026 20:12:07 GMT  
		Size: 2.6 MB (2578489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ccabcf6b51d35af2690ca16078ef4ef71447698089e7915fbd37a9c40eb4d68`  
		Last Modified: Mon, 22 Jun 2026 20:12:09 GMT  
		Size: 72.0 MB (71958511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9063ba0c9c7ede43c226489650abd815b2fcfa721543a4c1163a7f8e19a4d16`  
		Last Modified: Mon, 22 Jun 2026 20:12:07 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:716edec7cf8b33075af528e6cd778d056a4ee41817e2fa9eef2c48838d691e3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1146244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6b7b9cfe54b8471c66db97423164fb2581e59ee5003becadd4a29543488a02c`

```dockerfile
```

-	Layers:
	-	`sha256:a5c5501e40490dacbc0f2959d8f3c8a4fe98477b60d967901613442adeed2730`  
		Last Modified: Mon, 22 Jun 2026 20:12:07 GMT  
		Size: 1.1 MB (1131216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7496bbc9b77326bbe891e9993d8bf5cf35b7b7802ec20e08addad69dd65e0cfc`  
		Last Modified: Mon, 22 Jun 2026 20:12:07 GMT  
		Size: 15.0 KB (15028 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.37.3`

```console
$ docker pull telegraf@sha256:c46120cf42229a8840785c36bc55d19eb3bbec21b6c98d00eaeb9f83d6c247df
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.37.3` - linux; amd64

```console
$ docker pull telegraf@sha256:838e5a467555bd8d48c261b2141e68d6c375ee2d1247cd223e88414c4a4ce446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172274662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fdcc5b07abe8e611e33486d084d0e49a1fe9b57fb0e1700aa7700de1f3bc555`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:43:21 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:43:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 02:43:26 GMT
ENV TELEGRAF_VERSION=1.37.3
# Tue, 14 Jul 2026 02:43:26 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 14 Jul 2026 02:43:26 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 14 Jul 2026 02:43:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:43:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:43:26 GMT
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
	-	`sha256:7ebceda44ba1443cd4d8ae9437c64b557e19e5c5a1523f1417c56be636d96649`  
		Last Modified: Tue, 14 Jul 2026 02:43:45 GMT  
		Size: 18.9 MB (18944299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b21b76cca0fb6fd5dd225c7337435aafa460e9cdea9c98fd43f56366dfde3783`  
		Last Modified: Tue, 14 Jul 2026 02:43:44 GMT  
		Size: 5.1 KB (5068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719de34d441d3cf6d94b9d9c4784d51b52608eed16ab0260e045f7db6ac7e681`  
		Last Modified: Tue, 14 Jul 2026 02:43:47 GMT  
		Size: 80.8 MB (80783167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2e78e61708b5a8afa078f7f025f7cbf0320a7620e396808b8c7f1e08be0a30f`  
		Last Modified: Tue, 14 Jul 2026 02:43:45 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:4b5d626f8203754739746ef5268a31a85ab9166bbacd734e90144255830d315f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6681457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6305a7292467378304001446e850e54bd2fb1bd83a82c0a7ca164ecdf0ad741`

```dockerfile
```

-	Layers:
	-	`sha256:45ca05eee385a67aefe945ecf0de8ba9ab120b8a5874266564b1ee7657d9b5bf`  
		Last Modified: Tue, 14 Jul 2026 02:43:45 GMT  
		Size: 6.7 MB (6667030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78690882ab1921db803161cb4a924af9080a480267d5672714213de7ebc73335`  
		Last Modified: Tue, 14 Jul 2026 02:43:44 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.37.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:1974cafd582bd8ca7e943f453022736e978103a4a1cb0d963b0f5717d928c4a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158476148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f96556e68ba3de48c0fd057f851e41ad6bb5a07608b9120afc66b7e378911e`
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
# Tue, 14 Jul 2026 04:28:05 GMT
ENV TELEGRAF_VERSION=1.37.3
# Tue, 14 Jul 2026 04:28:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 14 Jul 2026 04:28:05 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 14 Jul 2026 04:28:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 04:28:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 04:28:05 GMT
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
	-	`sha256:261e3c39e72cca78d33ac5c0a9d2e7f3662b683f7904db37e0c15c4595cb16f6`  
		Last Modified: Tue, 14 Jul 2026 04:28:24 GMT  
		Size: 74.6 MB (74617476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d9732f9b535e688f7b43c85e7903c137b46655ba32aab7788a5542ee111950`  
		Last Modified: Tue, 14 Jul 2026 04:28:22 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:abfca977dee52f48baafdbea263dde5c7c27a051cfb73734912c9af09958d1c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6676144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdeb1289c3b6c853cf781928482ad23ca3ae6feb996939fb9f3526e03f29321b`

```dockerfile
```

-	Layers:
	-	`sha256:340390f22f14d00ba5298d06b62de07ae5b31814c33fe477b2a1f8a4e24f51ef`  
		Last Modified: Tue, 14 Jul 2026 04:28:22 GMT  
		Size: 6.7 MB (6661627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f7cd717f8ce50db300450161398a135308e743daa2c191bc83f8815f9ae3c24`  
		Last Modified: Tue, 14 Jul 2026 04:28:22 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.37.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:f951bca4156b97a4ca11980d91d38a018ab4ab52671199aa186f24512acc925e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.1 MB (163059015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85bf399889826562d02882a51170971ce73d63ff61be5243ef79787f3655363`
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
# Tue, 14 Jul 2026 02:50:12 GMT
ENV TELEGRAF_VERSION=1.37.3
# Tue, 14 Jul 2026 02:50:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 14 Jul 2026 02:50:12 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 14 Jul 2026 02:50:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:50:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:50:12 GMT
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
	-	`sha256:ab43279cc40476024692c3cdb5c8261a99b6135a72a461716c9198e4dc82164d`  
		Last Modified: Tue, 14 Jul 2026 02:50:33 GMT  
		Size: 72.2 MB (72171024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd94e0987dbc9d7e28f7a65b42d0f72c0da98e8fccd167c5eb26a4ec18c7e8f`  
		Last Modified: Tue, 14 Jul 2026 02:50:30 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:986b3844c1a0556fb6df212a9541c79a32de32f9469d870a2c8ad27f06829902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6682243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e91cdcb0179b52d0c56a9250f4dd9d5373d3fd44f39b1c3f84d02fad78c0ce6`

```dockerfile
```

-	Layers:
	-	`sha256:bd720a38cfffeea6b2dc698f072e1bf1789643f50c28b00b995ddad4d8b31054`  
		Last Modified: Tue, 14 Jul 2026 02:50:30 GMT  
		Size: 6.7 MB (6667706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa9e48d756c847a2896a4e8db4b7d391663950723839795fb58e9582663e019d`  
		Last Modified: Tue, 14 Jul 2026 02:50:30 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.37.3-alpine`

```console
$ docker pull telegraf@sha256:2bbb518d69f0544eaca2a54322908c2b5800f5ba094a12f152676935afb5ce8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.37.3-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:a611cb34739d2b4944daa6255a16a37ef417c0c3a8670c4396b6453142b039ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86877437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:781c36361ea2743eeb299620557502c98eebed9a491e1d1f7e8ed29eda9f78f1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:08:45 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:08:45 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:08:52 GMT
ENV TELEGRAF_VERSION=1.37.3
# Mon, 22 Jun 2026 20:08:52 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 22 Jun 2026 20:08:52 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 22 Jun 2026 20:08:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:08:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:08:52 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:194bf597cb6f9f4e4ac14e4ecf923d10e5f506b6e56f7d36244ae5aa7b4137fb`  
		Last Modified: Mon, 22 Jun 2026 20:09:08 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc140e323b3c5cdd121b5bb99e0cbeb114b2117b30604c681f930de579c8dec6`  
		Last Modified: Mon, 22 Jun 2026 20:09:08 GMT  
		Size: 2.5 MB (2511659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f3a3b505e51075e6e4ace592478ffa3d4bb1306ca571430a868d519ee70a85`  
		Last Modified: Mon, 22 Jun 2026 20:09:10 GMT  
		Size: 80.6 MB (80577284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a466e97127874af7e9e330b007efc7af4b2d5de51bdf5504bf6edf3000fc0a73`  
		Last Modified: Mon, 22 Jun 2026 20:09:08 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37.3-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:4bd9ca2af5efc00299c2d45a14020605d7d285e089ef5dc25ddcf5ebc47abbb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1150507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:929ea6ff1a7b9b094747d55d3d207695de2b76a7151c71574b1de382f608299f`

```dockerfile
```

-	Layers:
	-	`sha256:4d7effe956778f7847bccdfb2116149fc770a87375a1e6ce4d5c63dd263bed69`  
		Last Modified: Mon, 22 Jun 2026 20:09:08 GMT  
		Size: 1.1 MB (1135589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c831f4e59e5363ebfabb7f9bcbb224e7615234783f6c66486165309d8a46664d`  
		Last Modified: Mon, 22 Jun 2026 20:09:08 GMT  
		Size: 14.9 KB (14918 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.37.3-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:0887d7caa6a0d0793771cb0f50ee42fae77a52d44736cba379e061e303fd0319
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78658383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7a4baac8ce2ece31f1e506d7a476b40720f2b38575e5e2c6cab55ea423e65c4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:11:44 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:11:46 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:11:53 GMT
ENV TELEGRAF_VERSION=1.37.3
# Mon, 22 Jun 2026 20:11:53 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 22 Jun 2026 20:11:53 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 22 Jun 2026 20:11:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:11:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:11:53 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27a4f7541d79b95fdb40d40de6cf09fa31effe5b94d8521a343228a0bf34b18`  
		Last Modified: Mon, 22 Jun 2026 20:12:06 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5066e9f898666ad4d3312ea3082d02c8580d05a81548755066346d9a21026c34`  
		Last Modified: Mon, 22 Jun 2026 20:12:07 GMT  
		Size: 2.6 MB (2578489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ccabcf6b51d35af2690ca16078ef4ef71447698089e7915fbd37a9c40eb4d68`  
		Last Modified: Mon, 22 Jun 2026 20:12:09 GMT  
		Size: 72.0 MB (71958511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9063ba0c9c7ede43c226489650abd815b2fcfa721543a4c1163a7f8e19a4d16`  
		Last Modified: Mon, 22 Jun 2026 20:12:07 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37.3-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:716edec7cf8b33075af528e6cd778d056a4ee41817e2fa9eef2c48838d691e3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1146244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6b7b9cfe54b8471c66db97423164fb2581e59ee5003becadd4a29543488a02c`

```dockerfile
```

-	Layers:
	-	`sha256:a5c5501e40490dacbc0f2959d8f3c8a4fe98477b60d967901613442adeed2730`  
		Last Modified: Mon, 22 Jun 2026 20:12:07 GMT  
		Size: 1.1 MB (1131216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7496bbc9b77326bbe891e9993d8bf5cf35b7b7802ec20e08addad69dd65e0cfc`  
		Last Modified: Mon, 22 Jun 2026 20:12:07 GMT  
		Size: 15.0 KB (15028 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38`

```console
$ docker pull telegraf@sha256:a662fddfab78578c8412fecae472b485d3c0b2786ec29b7c566e7def324a6455
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
$ docker pull telegraf@sha256:8fdcdcfeab0ad97514e5c0ee4f475d3bad90599a16f2e72a53341518ad8e693e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (175002645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0cae692e86a57335ddb49214ea3859f92fac5fd325edf43d0db7d93b17ffd6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:43:31 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:43:31 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 02:43:35 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 14 Jul 2026 02:43:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 14 Jul 2026 02:43:35 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 14 Jul 2026 02:43:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:43:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:43:35 GMT
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
	-	`sha256:0a67c074b25f941b53611832456fae135d7b10e4daf52666a623f1fbbcdb14a1`  
		Last Modified: Tue, 14 Jul 2026 02:43:55 GMT  
		Size: 18.9 MB (18944380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a6d96df02eef9960c9fad7bca3b7df2d9d9af64711e6ab0ea06dd8c7ddb510`  
		Last Modified: Tue, 14 Jul 2026 02:43:54 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362fd21aca1df2f3e990895988c0d3bd6d6eb3b50d24fe19133b300cab6d4eec`  
		Last Modified: Tue, 14 Jul 2026 02:43:57 GMT  
		Size: 83.5 MB (83511083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac06a32f9497c48d1bdf3d148ff4b7fffd4b198c8a0b229d177477de42732edf`  
		Last Modified: Tue, 14 Jul 2026 02:43:55 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:cfeeef2f40f2d9296dc3fdf95c78dc69722820ac933760f092256873f5aa2fb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6688762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5968155aebfec6451646d3bfa53ecbc637907713e8b0ca7c7ff018b05f8fb916`

```dockerfile
```

-	Layers:
	-	`sha256:64a69669c451681e0ecb5b15a07d2085eafb2c5ceea3f8c3c069d38f5eeb111c`  
		Last Modified: Tue, 14 Jul 2026 02:43:55 GMT  
		Size: 6.7 MB (6674335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27c6388249a5f62e9d3e699065ceae14849003906ed585f82a5afea43c3ab5a3`  
		Last Modified: Tue, 14 Jul 2026 02:43:54 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:9854fc5e2aef95259c971f7319cf500a1c0dbd7c8b348cc1f8fa8f2f8ab01d27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161286489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0b63fc5f17a5f3dbbabb0e9d5478f8abcb1b7203f121de8d8ce53ce1cf8f37f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:28:07 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:28:08 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 04:28:13 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 14 Jul 2026 04:28:13 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 14 Jul 2026 04:28:13 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 14 Jul 2026 04:28:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 04:28:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 04:28:13 GMT
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
	-	`sha256:0a30ddb48cf5955cf92fe69e0db27f42dfd35079300c01241656b3df19873546`  
		Last Modified: Tue, 14 Jul 2026 04:28:31 GMT  
		Size: 17.7 MB (17699710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313e983b6232b6f7212fe1f7886c39ce17d4c214904dd8382a6525b9019be2e7`  
		Last Modified: Tue, 14 Jul 2026 04:28:30 GMT  
		Size: 5.1 KB (5073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acf3f9f2d3567fcaf3b2f974b998a8414bb02643a733260929c7a47672a3374b`  
		Last Modified: Tue, 14 Jul 2026 04:28:32 GMT  
		Size: 77.4 MB (77427894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc893754ba23ee28d8beaf3620190b583e325bec0c64398c75d586295a18678f`  
		Last Modified: Tue, 14 Jul 2026 04:28:30 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:ab4b8a1fc5532f0e0abc4fe5fc975a129c5c2b350877ab7968d72daefc5a5484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6683449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d7138cfcff442b8f48308ccfcd0fca7dcfb46f64893cddec469084fda8d284c`

```dockerfile
```

-	Layers:
	-	`sha256:39068a55bed25b41727e48ac77f172c2d1d5c5ec49014b810c78432b211db564`  
		Last Modified: Tue, 14 Jul 2026 04:28:30 GMT  
		Size: 6.7 MB (6668932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a34d98f9a14b7bb84af98a33ba398c2698e14313d80f775df5222ba3039069b9`  
		Last Modified: Tue, 14 Jul 2026 04:28:30 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:e1284ccb76e412cdb2528937085ad4da4219340f6faafc84062e290869469967
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165364716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3777c8b5ffa9c09398666d679185bc4cafb331cc5ba3cff4b5f95b637c17db4c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:50:18 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:50:19 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 02:50:22 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 14 Jul 2026 02:50:22 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 14 Jul 2026 02:50:22 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 14 Jul 2026 02:50:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:50:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:50:22 GMT
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
	-	`sha256:7bf63de15f61710c12f82f4836590b8e7caf75872349d9f4ae262e78d5fb7f30`  
		Last Modified: Tue, 14 Jul 2026 02:50:42 GMT  
		Size: 18.9 MB (18885877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c482eaf467c0004c18e2fe5af8585b8f196112148e7d8579aa81802506df22a6`  
		Last Modified: Tue, 14 Jul 2026 02:50:41 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e282373a322a09b14237e51a4f90d8ad96758420b1d68f9d881cf49fbf2b5356`  
		Last Modified: Tue, 14 Jul 2026 02:50:43 GMT  
		Size: 74.5 MB (74476766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a0d98f77060bc17aeed438bbd54f9bb245c09fb1498872e4d62a6b0df522936`  
		Last Modified: Tue, 14 Jul 2026 02:50:41 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:f1998c77255f9c30d5e5c5f842bf750fda1cc6284bdabadd512781ee0be4173f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6689548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fffb01ad27a42217a9b5f39100143363601829b28b1e9eb5e18c3905f80dbde`

```dockerfile
```

-	Layers:
	-	`sha256:6bc90d01c95ede6d4c72c780fff5dc154bbad22dcdc9920babd72e73921c8cc1`  
		Last Modified: Tue, 14 Jul 2026 02:50:41 GMT  
		Size: 6.7 MB (6675011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3b62003b99cc84792ee6c5d3fe18e6e1f784c396a60ed66a98cbaef535b2c9b`  
		Last Modified: Tue, 14 Jul 2026 02:50:41 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38-alpine`

```console
$ docker pull telegraf@sha256:195e52e7d20d068fb8b9c39819faeb8e21cdbad8f3c09fa63a11f56246357e6b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.38-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:e714eb35acf3e70a6c5c0395873efb12938755e4eb05083598e733b7580b868a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.7 MB (89713960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c544a94ed8d187df1edeaff3534091f47ed584f404e0c5504ee8968e04e4f63d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:08:53 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:08:54 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:09:00 GMT
ENV TELEGRAF_VERSION=1.38.4
# Mon, 22 Jun 2026 20:09:00 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 22 Jun 2026 20:09:00 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 22 Jun 2026 20:09:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:09:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:09:00 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64fc2418181e2eec37d366a16fdf647689738a6020b7a9aa004befedaebdf330`  
		Last Modified: Mon, 22 Jun 2026 20:09:16 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3001d3f012409e7632fda470c52eff60f5aa560f1ea5367f93dfc06532c1053`  
		Last Modified: Mon, 22 Jun 2026 20:09:16 GMT  
		Size: 2.6 MB (2568205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1aa8791fc292f7d715a4ec73e28141e5fdce58d6d0acc7866acae05116d1b36`  
		Last Modified: Mon, 22 Jun 2026 20:09:18 GMT  
		Size: 83.3 MB (83300435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01abc246ffe1478dcf3a2bd1812fc4e8949f57c9ff2249fecbdc8c816cdec3af`  
		Last Modified: Mon, 22 Jun 2026 20:09:16 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:673e2db49e3dd88251e19cbc6e90c71f72b432f70de8f58e326ae44345a1a123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1157149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d2a80d8197aeec533c3c498c604a652d379d56145d0e382ea40ba095833f9a`

```dockerfile
```

-	Layers:
	-	`sha256:b8d6c72ba4ffd10a10267f5086eb16853021305ea507556e5a8b955280d6c14e`  
		Last Modified: Mon, 22 Jun 2026 20:09:16 GMT  
		Size: 1.1 MB (1142231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebcc7662e79e84caec4978dd6b0e238196da14464bbfa781ca7e3019280ebddc`  
		Last Modified: Mon, 22 Jun 2026 20:09:16 GMT  
		Size: 14.9 KB (14918 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:bafa9618a020524cbfbd857f1deac3c84719b4ecbd3ece82f0804282c627f96d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81078772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab6c25df0f302fa5a43cddb6400eb075d4d0fca9cb5b701b83b9b94279f0151c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:11:49 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:11:50 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:11:56 GMT
ENV TELEGRAF_VERSION=1.38.4
# Mon, 22 Jun 2026 20:11:56 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 22 Jun 2026 20:11:56 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 22 Jun 2026 20:11:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:11:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:11:56 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e63818f95bde7c4203c7b17d236bdd8fbe58b523e900944dd984825b444178`  
		Last Modified: Mon, 22 Jun 2026 20:12:09 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e896fb6b98964848b90f3ce6fffdd5bd5dbe42fd6b83e3808eeae74cdd9f21`  
		Last Modified: Mon, 22 Jun 2026 20:12:10 GMT  
		Size: 2.6 MB (2617155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:389345b38b3eafc6c6a9f0747acfd3a2aa0a8d9aade6c1c1dc7f2a80e29705d0`  
		Last Modified: Mon, 22 Jun 2026 20:12:13 GMT  
		Size: 74.3 MB (74278857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3878046ed96bb17cd231ce52d24084c7672b3e6656a5fffce3e1f56862a4181f`  
		Last Modified: Mon, 22 Jun 2026 20:12:09 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:398da6c1ebd5e0e6d5e78ebc1c33661011cbb95f205870e7be0148740fb67b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1152236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c710771442252de84c28d14e92594bd71e872a6a5ee49f0c3eefd1e88f59164b`

```dockerfile
```

-	Layers:
	-	`sha256:5535a38bbb2f840db9bd10171484871e039b62f3cb936db054e65fc808b054a8`  
		Last Modified: Mon, 22 Jun 2026 20:12:09 GMT  
		Size: 1.1 MB (1137208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b1e9b3a8d8cef361603d71fc431dd83123a292edcea9d593307e0274b79b322`  
		Last Modified: Mon, 22 Jun 2026 20:12:09 GMT  
		Size: 15.0 KB (15028 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38.4`

```console
$ docker pull telegraf@sha256:a662fddfab78578c8412fecae472b485d3c0b2786ec29b7c566e7def324a6455
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
$ docker pull telegraf@sha256:8fdcdcfeab0ad97514e5c0ee4f475d3bad90599a16f2e72a53341518ad8e693e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (175002645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0cae692e86a57335ddb49214ea3859f92fac5fd325edf43d0db7d93b17ffd6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:43:31 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:43:31 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 02:43:35 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 14 Jul 2026 02:43:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 14 Jul 2026 02:43:35 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 14 Jul 2026 02:43:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:43:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:43:35 GMT
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
	-	`sha256:0a67c074b25f941b53611832456fae135d7b10e4daf52666a623f1fbbcdb14a1`  
		Last Modified: Tue, 14 Jul 2026 02:43:55 GMT  
		Size: 18.9 MB (18944380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a6d96df02eef9960c9fad7bca3b7df2d9d9af64711e6ab0ea06dd8c7ddb510`  
		Last Modified: Tue, 14 Jul 2026 02:43:54 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362fd21aca1df2f3e990895988c0d3bd6d6eb3b50d24fe19133b300cab6d4eec`  
		Last Modified: Tue, 14 Jul 2026 02:43:57 GMT  
		Size: 83.5 MB (83511083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac06a32f9497c48d1bdf3d148ff4b7fffd4b198c8a0b229d177477de42732edf`  
		Last Modified: Tue, 14 Jul 2026 02:43:55 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:cfeeef2f40f2d9296dc3fdf95c78dc69722820ac933760f092256873f5aa2fb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6688762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5968155aebfec6451646d3bfa53ecbc637907713e8b0ca7c7ff018b05f8fb916`

```dockerfile
```

-	Layers:
	-	`sha256:64a69669c451681e0ecb5b15a07d2085eafb2c5ceea3f8c3c069d38f5eeb111c`  
		Last Modified: Tue, 14 Jul 2026 02:43:55 GMT  
		Size: 6.7 MB (6674335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27c6388249a5f62e9d3e699065ceae14849003906ed585f82a5afea43c3ab5a3`  
		Last Modified: Tue, 14 Jul 2026 02:43:54 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:9854fc5e2aef95259c971f7319cf500a1c0dbd7c8b348cc1f8fa8f2f8ab01d27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161286489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0b63fc5f17a5f3dbbabb0e9d5478f8abcb1b7203f121de8d8ce53ce1cf8f37f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:28:07 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:28:08 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 04:28:13 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 14 Jul 2026 04:28:13 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 14 Jul 2026 04:28:13 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 14 Jul 2026 04:28:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 04:28:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 04:28:13 GMT
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
	-	`sha256:0a30ddb48cf5955cf92fe69e0db27f42dfd35079300c01241656b3df19873546`  
		Last Modified: Tue, 14 Jul 2026 04:28:31 GMT  
		Size: 17.7 MB (17699710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313e983b6232b6f7212fe1f7886c39ce17d4c214904dd8382a6525b9019be2e7`  
		Last Modified: Tue, 14 Jul 2026 04:28:30 GMT  
		Size: 5.1 KB (5073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acf3f9f2d3567fcaf3b2f974b998a8414bb02643a733260929c7a47672a3374b`  
		Last Modified: Tue, 14 Jul 2026 04:28:32 GMT  
		Size: 77.4 MB (77427894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc893754ba23ee28d8beaf3620190b583e325bec0c64398c75d586295a18678f`  
		Last Modified: Tue, 14 Jul 2026 04:28:30 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:ab4b8a1fc5532f0e0abc4fe5fc975a129c5c2b350877ab7968d72daefc5a5484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6683449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d7138cfcff442b8f48308ccfcd0fca7dcfb46f64893cddec469084fda8d284c`

```dockerfile
```

-	Layers:
	-	`sha256:39068a55bed25b41727e48ac77f172c2d1d5c5ec49014b810c78432b211db564`  
		Last Modified: Tue, 14 Jul 2026 04:28:30 GMT  
		Size: 6.7 MB (6668932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a34d98f9a14b7bb84af98a33ba398c2698e14313d80f775df5222ba3039069b9`  
		Last Modified: Tue, 14 Jul 2026 04:28:30 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:e1284ccb76e412cdb2528937085ad4da4219340f6faafc84062e290869469967
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165364716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3777c8b5ffa9c09398666d679185bc4cafb331cc5ba3cff4b5f95b637c17db4c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:50:18 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:50:19 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 02:50:22 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 14 Jul 2026 02:50:22 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 14 Jul 2026 02:50:22 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 14 Jul 2026 02:50:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:50:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:50:22 GMT
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
	-	`sha256:7bf63de15f61710c12f82f4836590b8e7caf75872349d9f4ae262e78d5fb7f30`  
		Last Modified: Tue, 14 Jul 2026 02:50:42 GMT  
		Size: 18.9 MB (18885877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c482eaf467c0004c18e2fe5af8585b8f196112148e7d8579aa81802506df22a6`  
		Last Modified: Tue, 14 Jul 2026 02:50:41 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e282373a322a09b14237e51a4f90d8ad96758420b1d68f9d881cf49fbf2b5356`  
		Last Modified: Tue, 14 Jul 2026 02:50:43 GMT  
		Size: 74.5 MB (74476766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a0d98f77060bc17aeed438bbd54f9bb245c09fb1498872e4d62a6b0df522936`  
		Last Modified: Tue, 14 Jul 2026 02:50:41 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:f1998c77255f9c30d5e5c5f842bf750fda1cc6284bdabadd512781ee0be4173f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6689548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fffb01ad27a42217a9b5f39100143363601829b28b1e9eb5e18c3905f80dbde`

```dockerfile
```

-	Layers:
	-	`sha256:6bc90d01c95ede6d4c72c780fff5dc154bbad22dcdc9920babd72e73921c8cc1`  
		Last Modified: Tue, 14 Jul 2026 02:50:41 GMT  
		Size: 6.7 MB (6675011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3b62003b99cc84792ee6c5d3fe18e6e1f784c396a60ed66a98cbaef535b2c9b`  
		Last Modified: Tue, 14 Jul 2026 02:50:41 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38.4-alpine`

```console
$ docker pull telegraf@sha256:195e52e7d20d068fb8b9c39819faeb8e21cdbad8f3c09fa63a11f56246357e6b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.38.4-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:e714eb35acf3e70a6c5c0395873efb12938755e4eb05083598e733b7580b868a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.7 MB (89713960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c544a94ed8d187df1edeaff3534091f47ed584f404e0c5504ee8968e04e4f63d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:08:53 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:08:54 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:09:00 GMT
ENV TELEGRAF_VERSION=1.38.4
# Mon, 22 Jun 2026 20:09:00 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 22 Jun 2026 20:09:00 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 22 Jun 2026 20:09:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:09:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:09:00 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64fc2418181e2eec37d366a16fdf647689738a6020b7a9aa004befedaebdf330`  
		Last Modified: Mon, 22 Jun 2026 20:09:16 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3001d3f012409e7632fda470c52eff60f5aa560f1ea5367f93dfc06532c1053`  
		Last Modified: Mon, 22 Jun 2026 20:09:16 GMT  
		Size: 2.6 MB (2568205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1aa8791fc292f7d715a4ec73e28141e5fdce58d6d0acc7866acae05116d1b36`  
		Last Modified: Mon, 22 Jun 2026 20:09:18 GMT  
		Size: 83.3 MB (83300435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01abc246ffe1478dcf3a2bd1812fc4e8949f57c9ff2249fecbdc8c816cdec3af`  
		Last Modified: Mon, 22 Jun 2026 20:09:16 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:673e2db49e3dd88251e19cbc6e90c71f72b432f70de8f58e326ae44345a1a123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1157149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d2a80d8197aeec533c3c498c604a652d379d56145d0e382ea40ba095833f9a`

```dockerfile
```

-	Layers:
	-	`sha256:b8d6c72ba4ffd10a10267f5086eb16853021305ea507556e5a8b955280d6c14e`  
		Last Modified: Mon, 22 Jun 2026 20:09:16 GMT  
		Size: 1.1 MB (1142231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebcc7662e79e84caec4978dd6b0e238196da14464bbfa781ca7e3019280ebddc`  
		Last Modified: Mon, 22 Jun 2026 20:09:16 GMT  
		Size: 14.9 KB (14918 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:bafa9618a020524cbfbd857f1deac3c84719b4ecbd3ece82f0804282c627f96d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81078772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab6c25df0f302fa5a43cddb6400eb075d4d0fca9cb5b701b83b9b94279f0151c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:11:49 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:11:50 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:11:56 GMT
ENV TELEGRAF_VERSION=1.38.4
# Mon, 22 Jun 2026 20:11:56 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 22 Jun 2026 20:11:56 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 22 Jun 2026 20:11:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:11:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:11:56 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e63818f95bde7c4203c7b17d236bdd8fbe58b523e900944dd984825b444178`  
		Last Modified: Mon, 22 Jun 2026 20:12:09 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e896fb6b98964848b90f3ce6fffdd5bd5dbe42fd6b83e3808eeae74cdd9f21`  
		Last Modified: Mon, 22 Jun 2026 20:12:10 GMT  
		Size: 2.6 MB (2617155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:389345b38b3eafc6c6a9f0747acfd3a2aa0a8d9aade6c1c1dc7f2a80e29705d0`  
		Last Modified: Mon, 22 Jun 2026 20:12:13 GMT  
		Size: 74.3 MB (74278857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3878046ed96bb17cd231ce52d24084c7672b3e6656a5fffce3e1f56862a4181f`  
		Last Modified: Mon, 22 Jun 2026 20:12:09 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:398da6c1ebd5e0e6d5e78ebc1c33661011cbb95f205870e7be0148740fb67b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1152236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c710771442252de84c28d14e92594bd71e872a6a5ee49f0c3eefd1e88f59164b`

```dockerfile
```

-	Layers:
	-	`sha256:5535a38bbb2f840db9bd10171484871e039b62f3cb936db054e65fc808b054a8`  
		Last Modified: Mon, 22 Jun 2026 20:12:09 GMT  
		Size: 1.1 MB (1137208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b1e9b3a8d8cef361603d71fc431dd83123a292edcea9d593307e0274b79b322`  
		Last Modified: Mon, 22 Jun 2026 20:12:09 GMT  
		Size: 15.0 KB (15028 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39`

```console
$ docker pull telegraf@sha256:49899960eccad39415b91cf654324f0bb7efddaef8f1aa3ec24e2d8c6e19618e
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
$ docker pull telegraf@sha256:a4ed235aa676a0d930630285d2ef68ee0abf138849c78b73429f182600dd3eb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175553054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75f3ac10114f632ad9e42c4c86c7f46d1abecc609b154ba429553d4f405b03d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:45:51 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:45:52 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 20 Jul 2026 22:45:56 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 22:45:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 20 Jul 2026 22:45:56 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 22:45:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 22:45:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 22:45:56 GMT
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
	-	`sha256:dcf1ccd6ca564b5311f8953c779659dbec09957236b14008fb2b8b9a4eddfef9`  
		Last Modified: Mon, 20 Jul 2026 22:46:16 GMT  
		Size: 18.9 MB (18944472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26bd4857163c57c4e24a397e05f73944909171ea8c98128d516cbac4b2dfff6b`  
		Last Modified: Mon, 20 Jul 2026 22:46:15 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec44f0db8184c447f8e2aa477430e9c291d32e91f546df7c22574d94893b2c29`  
		Last Modified: Mon, 20 Jul 2026 22:46:18 GMT  
		Size: 84.1 MB (84061399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab4566a99a7002edf55fc873eefcd1be35417fc980ffbdb270939d4efd45dd8b`  
		Last Modified: Mon, 20 Jul 2026 22:46:15 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:28aa3fa31b0d608a14ea93f0de4beb6da7b6578a53f52c052828ed2c210a1c88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59603b8648481fe3480a1c7d26055e59142a57935d3bdcde582a6b8972d1af3f`

```dockerfile
```

-	Layers:
	-	`sha256:907862c13cd59df3e57829bbd824041871553d6859f5b33f44b41f6ee5b7f7de`  
		Last Modified: Mon, 20 Jul 2026 22:46:16 GMT  
		Size: 6.7 MB (6686640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6e8bbe8e27cbe30be3c6990ec8ca8f2b01e30e52db2f123d6741be63fecc95f`  
		Last Modified: Mon, 20 Jul 2026 22:46:15 GMT  
		Size: 14.7 KB (14729 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:2811ebbf700b3ae2d70ceb031d24db2d34ff8d08a05101ee6db67eebca2c421c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (162025353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e54b0e9c5e2623eb3b5786eb4a6593a527bce022c96050a3d54dd15945dbc52`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 23:01:12 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 23:01:13 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 20 Jul 2026 23:01:18 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 23:01:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 20 Jul 2026 23:01:18 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 23:01:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 23:01:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 23:01:18 GMT
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
	-	`sha256:40d3e7ef9f1fe2d663384997fe637dcb4b0d5e17cb6e20862de7a3371b382da8`  
		Last Modified: Mon, 20 Jul 2026 23:01:35 GMT  
		Size: 17.7 MB (17699643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:340dbd8e1c7899805f9ac81ecc1c1bb145815371b394c9b4cf1d71c6854edbde`  
		Last Modified: Mon, 20 Jul 2026 23:01:35 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2057b91bbc43910f82ac22a0289c348fda341bbb0ed5eee5a73d19c83d5f1eeb`  
		Last Modified: Mon, 20 Jul 2026 23:01:37 GMT  
		Size: 78.2 MB (78166831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa96691afbed8dbdf99559cfff22934b948165902fc1a676b3578909d601680`  
		Last Modified: Mon, 20 Jul 2026 23:01:35 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:f883890629c0e5127e6e2e0aa1f0d5e402e474ef44b816106e0451e340acb832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6696877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c93f6c1d833c812ac3b72851eb8d1049c8a100e42c054870edd2eb34ed790ac9`

```dockerfile
```

-	Layers:
	-	`sha256:49f03933f83b179234ceb72f31e6bf2484d9bdd70a7dcc28b651a5cf7a6c2cfe`  
		Last Modified: Mon, 20 Jul 2026 23:01:35 GMT  
		Size: 6.7 MB (6682050 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81c4d2fc2b5f9a5cbe017a37d3cf9a837344fd28344d7da917ee14c6754885ec`  
		Last Modified: Mon, 20 Jul 2026 23:01:35 GMT  
		Size: 14.8 KB (14827 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:0ee8da854462a66e1fbec6cb4807c17800f62f533b9b4ab69928ed64ec51908c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (166018961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290fc055b7387ec3366c1512593f371ca5f0ff2fc0145e97bed7e09d6f64f8cf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:48:15 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:48:16 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 20 Jul 2026 22:48:19 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 22:48:19 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 20 Jul 2026 22:48:19 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 22:48:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 22:48:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 22:48:19 GMT
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
	-	`sha256:28dd63374dfdf84fd2496671ef85589c28022b7623b482018289ce5c0422aa13`  
		Last Modified: Mon, 20 Jul 2026 22:48:38 GMT  
		Size: 18.9 MB (18885811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75143be5ec235865e8078754d3a95ae38e5932f41bd459a936a632ed8372138`  
		Last Modified: Mon, 20 Jul 2026 22:48:37 GMT  
		Size: 5.1 KB (5074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d459756aa161004e37d8684132d7b86928c63ff479d27013099f20678c66c33`  
		Last Modified: Mon, 20 Jul 2026 22:48:39 GMT  
		Size: 75.1 MB (75131060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f1c09c137418452ad267d0085f9b3c4fbf12e75476453d96ebfea83c2335e81`  
		Last Modified: Mon, 20 Jul 2026 22:48:37 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:63a4ee319c8113d725fbe1d3d638149c3f3f7631e9a7593fb1337526394aa1ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6702179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac5b48c173f602a773fe2ed60fb9a726c24556037661dc626356c98c879c7568`

```dockerfile
```

-	Layers:
	-	`sha256:769272838885da2612c1373b350466a9a48c48321753b53d2af6d0e65c071a06`  
		Last Modified: Mon, 20 Jul 2026 22:48:37 GMT  
		Size: 6.7 MB (6687328 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e36ee595c1984bb4c227c957c4610dcbc40f6667577dd0adae83d9667e391165`  
		Last Modified: Mon, 20 Jul 2026 22:48:37 GMT  
		Size: 14.9 KB (14851 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39-alpine`

```console
$ docker pull telegraf@sha256:cd926aecf11809ffe1b6125a752dd22a4336e150f061bcc202f74b46b785817d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:088aca5e52342053d32f9ca07bbfae07bf6be09c9b17a798fb3342350a7d91e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90270042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b18f975e8292043c05b0cb03082c37f7665a64d3b9ff990a1a92d5b74543ef7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:45:55 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 22:45:56 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 22:46:02 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 22:46:02 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 20 Jul 2026 22:46:02 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 22:46:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 22:46:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 22:46:02 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5950408526ad141259bf206603c4f7d544c3772142eb231964c7175afcd3e655`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:083df7ecc2cfb53a924c2916a995584f12d9b95d1c7badf84a2e6d2868c644c8`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 2.6 MB (2567510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ae38ee38583326101645f9e20629b31d27cd4cf59285f7f45c4c561dd2a241`  
		Last Modified: Mon, 20 Jul 2026 22:46:19 GMT  
		Size: 83.9 MB (83857214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f438d1484e07b133778bdb76fae32a71c15928c801b145aa798811754e9201e`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:03aa2c72690592071f3008b1f6b983caf066609ae405cc595bf24c902d6d2fee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1169756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e0ebe5d16f1f7f4589f37cadb02c948f6fc4b62a9ff60cb69343a35f56a40a`

```dockerfile
```

-	Layers:
	-	`sha256:8af4b6b7c4b13928957d4546454969b13b2bd69b8563b5fdd6278a8a5a578614`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 1.2 MB (1154536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c79fb96e4644a0e7d0afbf778fee3fc37ab2598fa04b4a5df0a5e5f207d26736`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 15.2 KB (15220 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:f53fcaccaf6173146605515332406d34fa66fb01a666bda2c673ca2015fd8027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81717398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f348efe2bc8b5e61f77bb6ce3c35b2434b1be11259b83a004fd6c43d4e08552`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:48:15 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 22:48:16 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 22:48:22 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 22:48:22 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 20 Jul 2026 22:48:22 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 22:48:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 22:48:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 22:48:22 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82240a925d08347c57376e74756c2aba9759436eaabc5dc9d5ac9b69653f8426`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e3b3d2d83bc5bc9c9baa538181c5d70a4920b8f3055eeea4dacea9130b4545d`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 2.6 MB (2616530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4cfec44b4cb32f088e979fa1274d13265210e5f6107fb438aeba7205c6b8908`  
		Last Modified: Mon, 20 Jul 2026 22:48:38 GMT  
		Size: 74.9 MB (74918108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a0e002568cc3d617d80c5fbed5c2d9f6fafec97a934fcf5d6c8a2bdc96d070`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:c6fbc4aacab17a143a3177d9f001729c1d3d29572e32f82c8148586a174b305e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1164867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de5db4e043f30f69552ecbb512902c0bc4b0a8a494d14924df66e0076921ec21`

```dockerfile
```

-	Layers:
	-	`sha256:50470fd28ca7a74663731e9e1ed3e3968b1811aeaeaa5f4f8d4a9f2c0ceeb30a`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 1.1 MB (1149525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:063bfd09947f1d1387b7dc4c876482f759945e2b69ffc9dd4db630cd0b89dbc4`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 15.3 KB (15342 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39.2`

```console
$ docker pull telegraf@sha256:49899960eccad39415b91cf654324f0bb7efddaef8f1aa3ec24e2d8c6e19618e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39.2` - linux; amd64

```console
$ docker pull telegraf@sha256:a4ed235aa676a0d930630285d2ef68ee0abf138849c78b73429f182600dd3eb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175553054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75f3ac10114f632ad9e42c4c86c7f46d1abecc609b154ba429553d4f405b03d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:45:51 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:45:52 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 20 Jul 2026 22:45:56 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 22:45:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 20 Jul 2026 22:45:56 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 22:45:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 22:45:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 22:45:56 GMT
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
	-	`sha256:dcf1ccd6ca564b5311f8953c779659dbec09957236b14008fb2b8b9a4eddfef9`  
		Last Modified: Mon, 20 Jul 2026 22:46:16 GMT  
		Size: 18.9 MB (18944472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26bd4857163c57c4e24a397e05f73944909171ea8c98128d516cbac4b2dfff6b`  
		Last Modified: Mon, 20 Jul 2026 22:46:15 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec44f0db8184c447f8e2aa477430e9c291d32e91f546df7c22574d94893b2c29`  
		Last Modified: Mon, 20 Jul 2026 22:46:18 GMT  
		Size: 84.1 MB (84061399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab4566a99a7002edf55fc873eefcd1be35417fc980ffbdb270939d4efd45dd8b`  
		Last Modified: Mon, 20 Jul 2026 22:46:15 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.2` - unknown; unknown

```console
$ docker pull telegraf@sha256:28aa3fa31b0d608a14ea93f0de4beb6da7b6578a53f52c052828ed2c210a1c88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59603b8648481fe3480a1c7d26055e59142a57935d3bdcde582a6b8972d1af3f`

```dockerfile
```

-	Layers:
	-	`sha256:907862c13cd59df3e57829bbd824041871553d6859f5b33f44b41f6ee5b7f7de`  
		Last Modified: Mon, 20 Jul 2026 22:46:16 GMT  
		Size: 6.7 MB (6686640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6e8bbe8e27cbe30be3c6990ec8ca8f2b01e30e52db2f123d6741be63fecc95f`  
		Last Modified: Mon, 20 Jul 2026 22:46:15 GMT  
		Size: 14.7 KB (14729 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.2` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:2811ebbf700b3ae2d70ceb031d24db2d34ff8d08a05101ee6db67eebca2c421c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (162025353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e54b0e9c5e2623eb3b5786eb4a6593a527bce022c96050a3d54dd15945dbc52`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 23:01:12 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 23:01:13 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 20 Jul 2026 23:01:18 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 23:01:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 20 Jul 2026 23:01:18 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 23:01:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 23:01:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 23:01:18 GMT
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
	-	`sha256:40d3e7ef9f1fe2d663384997fe637dcb4b0d5e17cb6e20862de7a3371b382da8`  
		Last Modified: Mon, 20 Jul 2026 23:01:35 GMT  
		Size: 17.7 MB (17699643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:340dbd8e1c7899805f9ac81ecc1c1bb145815371b394c9b4cf1d71c6854edbde`  
		Last Modified: Mon, 20 Jul 2026 23:01:35 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2057b91bbc43910f82ac22a0289c348fda341bbb0ed5eee5a73d19c83d5f1eeb`  
		Last Modified: Mon, 20 Jul 2026 23:01:37 GMT  
		Size: 78.2 MB (78166831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa96691afbed8dbdf99559cfff22934b948165902fc1a676b3578909d601680`  
		Last Modified: Mon, 20 Jul 2026 23:01:35 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.2` - unknown; unknown

```console
$ docker pull telegraf@sha256:f883890629c0e5127e6e2e0aa1f0d5e402e474ef44b816106e0451e340acb832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6696877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c93f6c1d833c812ac3b72851eb8d1049c8a100e42c054870edd2eb34ed790ac9`

```dockerfile
```

-	Layers:
	-	`sha256:49f03933f83b179234ceb72f31e6bf2484d9bdd70a7dcc28b651a5cf7a6c2cfe`  
		Last Modified: Mon, 20 Jul 2026 23:01:35 GMT  
		Size: 6.7 MB (6682050 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81c4d2fc2b5f9a5cbe017a37d3cf9a837344fd28344d7da917ee14c6754885ec`  
		Last Modified: Mon, 20 Jul 2026 23:01:35 GMT  
		Size: 14.8 KB (14827 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.2` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:0ee8da854462a66e1fbec6cb4807c17800f62f533b9b4ab69928ed64ec51908c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (166018961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290fc055b7387ec3366c1512593f371ca5f0ff2fc0145e97bed7e09d6f64f8cf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:48:15 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:48:16 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 20 Jul 2026 22:48:19 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 22:48:19 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 20 Jul 2026 22:48:19 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 22:48:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 22:48:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 22:48:19 GMT
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
	-	`sha256:28dd63374dfdf84fd2496671ef85589c28022b7623b482018289ce5c0422aa13`  
		Last Modified: Mon, 20 Jul 2026 22:48:38 GMT  
		Size: 18.9 MB (18885811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75143be5ec235865e8078754d3a95ae38e5932f41bd459a936a632ed8372138`  
		Last Modified: Mon, 20 Jul 2026 22:48:37 GMT  
		Size: 5.1 KB (5074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d459756aa161004e37d8684132d7b86928c63ff479d27013099f20678c66c33`  
		Last Modified: Mon, 20 Jul 2026 22:48:39 GMT  
		Size: 75.1 MB (75131060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f1c09c137418452ad267d0085f9b3c4fbf12e75476453d96ebfea83c2335e81`  
		Last Modified: Mon, 20 Jul 2026 22:48:37 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.2` - unknown; unknown

```console
$ docker pull telegraf@sha256:63a4ee319c8113d725fbe1d3d638149c3f3f7631e9a7593fb1337526394aa1ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6702179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac5b48c173f602a773fe2ed60fb9a726c24556037661dc626356c98c879c7568`

```dockerfile
```

-	Layers:
	-	`sha256:769272838885da2612c1373b350466a9a48c48321753b53d2af6d0e65c071a06`  
		Last Modified: Mon, 20 Jul 2026 22:48:37 GMT  
		Size: 6.7 MB (6687328 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e36ee595c1984bb4c227c957c4610dcbc40f6667577dd0adae83d9667e391165`  
		Last Modified: Mon, 20 Jul 2026 22:48:37 GMT  
		Size: 14.9 KB (14851 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39.2-alpine`

```console
$ docker pull telegraf@sha256:cd926aecf11809ffe1b6125a752dd22a4336e150f061bcc202f74b46b785817d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39.2-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:088aca5e52342053d32f9ca07bbfae07bf6be09c9b17a798fb3342350a7d91e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90270042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b18f975e8292043c05b0cb03082c37f7665a64d3b9ff990a1a92d5b74543ef7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:45:55 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 22:45:56 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 22:46:02 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 22:46:02 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 20 Jul 2026 22:46:02 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 22:46:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 22:46:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 22:46:02 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5950408526ad141259bf206603c4f7d544c3772142eb231964c7175afcd3e655`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:083df7ecc2cfb53a924c2916a995584f12d9b95d1c7badf84a2e6d2868c644c8`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 2.6 MB (2567510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ae38ee38583326101645f9e20629b31d27cd4cf59285f7f45c4c561dd2a241`  
		Last Modified: Mon, 20 Jul 2026 22:46:19 GMT  
		Size: 83.9 MB (83857214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f438d1484e07b133778bdb76fae32a71c15928c801b145aa798811754e9201e`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.2-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:03aa2c72690592071f3008b1f6b983caf066609ae405cc595bf24c902d6d2fee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1169756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e0ebe5d16f1f7f4589f37cadb02c948f6fc4b62a9ff60cb69343a35f56a40a`

```dockerfile
```

-	Layers:
	-	`sha256:8af4b6b7c4b13928957d4546454969b13b2bd69b8563b5fdd6278a8a5a578614`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 1.2 MB (1154536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c79fb96e4644a0e7d0afbf778fee3fc37ab2598fa04b4a5df0a5e5f207d26736`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 15.2 KB (15220 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.2-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:f53fcaccaf6173146605515332406d34fa66fb01a666bda2c673ca2015fd8027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81717398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f348efe2bc8b5e61f77bb6ce3c35b2434b1be11259b83a004fd6c43d4e08552`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:48:15 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 22:48:16 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 22:48:22 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 22:48:22 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 20 Jul 2026 22:48:22 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 22:48:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 22:48:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 22:48:22 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82240a925d08347c57376e74756c2aba9759436eaabc5dc9d5ac9b69653f8426`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e3b3d2d83bc5bc9c9baa538181c5d70a4920b8f3055eeea4dacea9130b4545d`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 2.6 MB (2616530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4cfec44b4cb32f088e979fa1274d13265210e5f6107fb438aeba7205c6b8908`  
		Last Modified: Mon, 20 Jul 2026 22:48:38 GMT  
		Size: 74.9 MB (74918108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a0e002568cc3d617d80c5fbed5c2d9f6fafec97a934fcf5d6c8a2bdc96d070`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.2-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:c6fbc4aacab17a143a3177d9f001729c1d3d29572e32f82c8148586a174b305e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1164867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de5db4e043f30f69552ecbb512902c0bc4b0a8a494d14924df66e0076921ec21`

```dockerfile
```

-	Layers:
	-	`sha256:50470fd28ca7a74663731e9e1ed3e3968b1811aeaeaa5f4f8d4a9f2c0ceeb30a`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 1.1 MB (1149525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:063bfd09947f1d1387b7dc4c876482f759945e2b69ffc9dd4db630cd0b89dbc4`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 15.3 KB (15342 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:cd926aecf11809ffe1b6125a752dd22a4336e150f061bcc202f74b46b785817d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:088aca5e52342053d32f9ca07bbfae07bf6be09c9b17a798fb3342350a7d91e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90270042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b18f975e8292043c05b0cb03082c37f7665a64d3b9ff990a1a92d5b74543ef7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:45:55 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 22:45:56 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 22:46:02 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 22:46:02 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 20 Jul 2026 22:46:02 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 22:46:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 22:46:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 22:46:02 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5950408526ad141259bf206603c4f7d544c3772142eb231964c7175afcd3e655`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:083df7ecc2cfb53a924c2916a995584f12d9b95d1c7badf84a2e6d2868c644c8`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 2.6 MB (2567510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ae38ee38583326101645f9e20629b31d27cd4cf59285f7f45c4c561dd2a241`  
		Last Modified: Mon, 20 Jul 2026 22:46:19 GMT  
		Size: 83.9 MB (83857214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f438d1484e07b133778bdb76fae32a71c15928c801b145aa798811754e9201e`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:03aa2c72690592071f3008b1f6b983caf066609ae405cc595bf24c902d6d2fee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1169756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e0ebe5d16f1f7f4589f37cadb02c948f6fc4b62a9ff60cb69343a35f56a40a`

```dockerfile
```

-	Layers:
	-	`sha256:8af4b6b7c4b13928957d4546454969b13b2bd69b8563b5fdd6278a8a5a578614`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 1.2 MB (1154536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c79fb96e4644a0e7d0afbf778fee3fc37ab2598fa04b4a5df0a5e5f207d26736`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 15.2 KB (15220 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:f53fcaccaf6173146605515332406d34fa66fb01a666bda2c673ca2015fd8027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81717398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f348efe2bc8b5e61f77bb6ce3c35b2434b1be11259b83a004fd6c43d4e08552`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:48:15 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 22:48:16 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 22:48:22 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 22:48:22 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 20 Jul 2026 22:48:22 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 22:48:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 22:48:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 22:48:22 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82240a925d08347c57376e74756c2aba9759436eaabc5dc9d5ac9b69653f8426`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e3b3d2d83bc5bc9c9baa538181c5d70a4920b8f3055eeea4dacea9130b4545d`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 2.6 MB (2616530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4cfec44b4cb32f088e979fa1274d13265210e5f6107fb438aeba7205c6b8908`  
		Last Modified: Mon, 20 Jul 2026 22:48:38 GMT  
		Size: 74.9 MB (74918108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a0e002568cc3d617d80c5fbed5c2d9f6fafec97a934fcf5d6c8a2bdc96d070`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:c6fbc4aacab17a143a3177d9f001729c1d3d29572e32f82c8148586a174b305e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1164867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de5db4e043f30f69552ecbb512902c0bc4b0a8a494d14924df66e0076921ec21`

```dockerfile
```

-	Layers:
	-	`sha256:50470fd28ca7a74663731e9e1ed3e3968b1811aeaeaa5f4f8d4a9f2c0ceeb30a`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 1.1 MB (1149525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:063bfd09947f1d1387b7dc4c876482f759945e2b69ffc9dd4db630cd0b89dbc4`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 15.3 KB (15342 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:49899960eccad39415b91cf654324f0bb7efddaef8f1aa3ec24e2d8c6e19618e
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
$ docker pull telegraf@sha256:a4ed235aa676a0d930630285d2ef68ee0abf138849c78b73429f182600dd3eb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175553054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75f3ac10114f632ad9e42c4c86c7f46d1abecc609b154ba429553d4f405b03d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:45:51 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:45:52 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 20 Jul 2026 22:45:56 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 22:45:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 20 Jul 2026 22:45:56 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 22:45:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 22:45:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 22:45:56 GMT
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
	-	`sha256:dcf1ccd6ca564b5311f8953c779659dbec09957236b14008fb2b8b9a4eddfef9`  
		Last Modified: Mon, 20 Jul 2026 22:46:16 GMT  
		Size: 18.9 MB (18944472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26bd4857163c57c4e24a397e05f73944909171ea8c98128d516cbac4b2dfff6b`  
		Last Modified: Mon, 20 Jul 2026 22:46:15 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec44f0db8184c447f8e2aa477430e9c291d32e91f546df7c22574d94893b2c29`  
		Last Modified: Mon, 20 Jul 2026 22:46:18 GMT  
		Size: 84.1 MB (84061399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab4566a99a7002edf55fc873eefcd1be35417fc980ffbdb270939d4efd45dd8b`  
		Last Modified: Mon, 20 Jul 2026 22:46:15 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:28aa3fa31b0d608a14ea93f0de4beb6da7b6578a53f52c052828ed2c210a1c88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59603b8648481fe3480a1c7d26055e59142a57935d3bdcde582a6b8972d1af3f`

```dockerfile
```

-	Layers:
	-	`sha256:907862c13cd59df3e57829bbd824041871553d6859f5b33f44b41f6ee5b7f7de`  
		Last Modified: Mon, 20 Jul 2026 22:46:16 GMT  
		Size: 6.7 MB (6686640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6e8bbe8e27cbe30be3c6990ec8ca8f2b01e30e52db2f123d6741be63fecc95f`  
		Last Modified: Mon, 20 Jul 2026 22:46:15 GMT  
		Size: 14.7 KB (14729 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:2811ebbf700b3ae2d70ceb031d24db2d34ff8d08a05101ee6db67eebca2c421c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (162025353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e54b0e9c5e2623eb3b5786eb4a6593a527bce022c96050a3d54dd15945dbc52`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 23:01:12 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 23:01:13 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 20 Jul 2026 23:01:18 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 23:01:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 20 Jul 2026 23:01:18 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 23:01:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 23:01:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 23:01:18 GMT
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
	-	`sha256:40d3e7ef9f1fe2d663384997fe637dcb4b0d5e17cb6e20862de7a3371b382da8`  
		Last Modified: Mon, 20 Jul 2026 23:01:35 GMT  
		Size: 17.7 MB (17699643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:340dbd8e1c7899805f9ac81ecc1c1bb145815371b394c9b4cf1d71c6854edbde`  
		Last Modified: Mon, 20 Jul 2026 23:01:35 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2057b91bbc43910f82ac22a0289c348fda341bbb0ed5eee5a73d19c83d5f1eeb`  
		Last Modified: Mon, 20 Jul 2026 23:01:37 GMT  
		Size: 78.2 MB (78166831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa96691afbed8dbdf99559cfff22934b948165902fc1a676b3578909d601680`  
		Last Modified: Mon, 20 Jul 2026 23:01:35 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:f883890629c0e5127e6e2e0aa1f0d5e402e474ef44b816106e0451e340acb832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6696877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c93f6c1d833c812ac3b72851eb8d1049c8a100e42c054870edd2eb34ed790ac9`

```dockerfile
```

-	Layers:
	-	`sha256:49f03933f83b179234ceb72f31e6bf2484d9bdd70a7dcc28b651a5cf7a6c2cfe`  
		Last Modified: Mon, 20 Jul 2026 23:01:35 GMT  
		Size: 6.7 MB (6682050 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81c4d2fc2b5f9a5cbe017a37d3cf9a837344fd28344d7da917ee14c6754885ec`  
		Last Modified: Mon, 20 Jul 2026 23:01:35 GMT  
		Size: 14.8 KB (14827 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:0ee8da854462a66e1fbec6cb4807c17800f62f533b9b4ab69928ed64ec51908c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (166018961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290fc055b7387ec3366c1512593f371ca5f0ff2fc0145e97bed7e09d6f64f8cf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:48:15 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:48:16 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 20 Jul 2026 22:48:19 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 22:48:19 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 20 Jul 2026 22:48:19 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 22:48:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 22:48:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 22:48:19 GMT
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
	-	`sha256:28dd63374dfdf84fd2496671ef85589c28022b7623b482018289ce5c0422aa13`  
		Last Modified: Mon, 20 Jul 2026 22:48:38 GMT  
		Size: 18.9 MB (18885811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75143be5ec235865e8078754d3a95ae38e5932f41bd459a936a632ed8372138`  
		Last Modified: Mon, 20 Jul 2026 22:48:37 GMT  
		Size: 5.1 KB (5074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d459756aa161004e37d8684132d7b86928c63ff479d27013099f20678c66c33`  
		Last Modified: Mon, 20 Jul 2026 22:48:39 GMT  
		Size: 75.1 MB (75131060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f1c09c137418452ad267d0085f9b3c4fbf12e75476453d96ebfea83c2335e81`  
		Last Modified: Mon, 20 Jul 2026 22:48:37 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:63a4ee319c8113d725fbe1d3d638149c3f3f7631e9a7593fb1337526394aa1ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6702179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac5b48c173f602a773fe2ed60fb9a726c24556037661dc626356c98c879c7568`

```dockerfile
```

-	Layers:
	-	`sha256:769272838885da2612c1373b350466a9a48c48321753b53d2af6d0e65c071a06`  
		Last Modified: Mon, 20 Jul 2026 22:48:37 GMT  
		Size: 6.7 MB (6687328 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e36ee595c1984bb4c227c957c4610dcbc40f6667577dd0adae83d9667e391165`  
		Last Modified: Mon, 20 Jul 2026 22:48:37 GMT  
		Size: 14.9 KB (14851 bytes)  
		MIME: application/vnd.in-toto+json
