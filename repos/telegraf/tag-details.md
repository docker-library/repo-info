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
-	[`telegraf:1.39.1`](#telegraf1391)
-	[`telegraf:1.39.1-alpine`](#telegraf1391-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)

## `telegraf:1.37`

```console
$ docker pull telegraf@sha256:92b672ff115cc91e9e1872e914eab56bd99af97c8389ed302bba5a852eb3773e
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
$ docker pull telegraf@sha256:1df943aa9d8af0f02967719a22cfca8d20616f35a15d9c70f485a598fb13059d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172279634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a321638dc03fff6c186130c0f19b73bb7c771faac527c8ba9d7ba5fc24490f9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:41:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:43:05 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:43:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 02:43:10 GMT
ENV TELEGRAF_VERSION=1.37.3
# Wed, 24 Jun 2026 02:43:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 24 Jun 2026 02:43:10 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 24 Jun 2026 02:43:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 02:43:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 02:43:10 GMT
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
	-	`sha256:24f567d79aa2c44063038fbe8e6424c7ec1eda6de0d7c5cf0349ca80c9248e77`  
		Last Modified: Wed, 24 Jun 2026 02:43:33 GMT  
		Size: 18.9 MB (18944514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9068372f1f68b07187fbec0a738998c876fd979101f432273a9b31bc20abef9e`  
		Last Modified: Wed, 24 Jun 2026 02:43:32 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8703b8d99ed3fcc71c65b4ae662b7ae550d2c3a8eba746e5d0edf3f9a844d391`  
		Last Modified: Wed, 24 Jun 2026 02:43:35 GMT  
		Size: 80.8 MB (80783170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:864568c06a577756f59e2626546f53d3fa08cc55c4650e5b8e8cbc199c0aa57f`  
		Last Modified: Wed, 24 Jun 2026 02:43:32 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37` - unknown; unknown

```console
$ docker pull telegraf@sha256:c9150a86dd5d91ee84686e08cebf0edc03eef1cde5bbca5f2bc538d07a78f2f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6681420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e040310b329f0ca061307de1a03d76794451cd89bb7764549c2556e6e1fa7d6`

```dockerfile
```

-	Layers:
	-	`sha256:143cca1a84b65ef8ade7e0643e9acef96d5c305f6c0e84ef90c4c8893c1c0807`  
		Last Modified: Wed, 24 Jun 2026 02:43:33 GMT  
		Size: 6.7 MB (6666994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1fbe9bef3aaa3e6333e979ba2dc07ceff4570132d23fda3674f1a67cd5aa6ee`  
		Last Modified: Wed, 24 Jun 2026 02:43:32 GMT  
		Size: 14.4 KB (14426 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.37` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:7136dba78f7c528e2e4bd17d38caa7eaf7e650b9d65030e1ce00c19761942b96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158480928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a047488edaebea418fd00ee49c484b22c11938732af59f544d1198fc475d9c6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:22:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:09:24 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:09:25 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 04:09:30 GMT
ENV TELEGRAF_VERSION=1.37.3
# Wed, 24 Jun 2026 04:09:30 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 24 Jun 2026 04:09:30 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 24 Jun 2026 04:09:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 04:09:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 04:09:30 GMT
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
	-	`sha256:d4dc2f3f0ffe794db7094ffda2ac9d800213e95c7898ad51bde27db77acee273`  
		Last Modified: Wed, 24 Jun 2026 04:09:47 GMT  
		Size: 17.7 MB (17699719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed0ca1090d974b7fa72e1ce28bc0321fb25fd3f4fe3fc2068830868249cb91f`  
		Last Modified: Wed, 24 Jun 2026 04:09:46 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba61752fc5dabc1f7896e468edcc545acfaf02ff8e28f45bc5eab3f28745e1c`  
		Last Modified: Wed, 24 Jun 2026 04:09:49 GMT  
		Size: 74.6 MB (74617448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c6430f83bdebcbefa0aaf888f36d0bbf9e1a998f17cff2c292dc81d75e46011`  
		Last Modified: Wed, 24 Jun 2026 04:09:46 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37` - unknown; unknown

```console
$ docker pull telegraf@sha256:637fe64ddbc1138c45353cc3e6211a5b54fa8d1a496a73dfce7c6b4b7ce81bcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6676108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c2e1599feeb7efcd2b810701bc9666d912dabecaecb69d64b623692c5c77c41`

```dockerfile
```

-	Layers:
	-	`sha256:bbb3b094db6743cab858344498f72d7a049a17accdb338b8221a009a51f09585`  
		Last Modified: Wed, 24 Jun 2026 04:09:47 GMT  
		Size: 6.7 MB (6661591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e090ac907871ae50cd72fbf7c62c8ff80772fc2c0e3a5475dfe9316aa9ff5d65`  
		Last Modified: Wed, 24 Jun 2026 04:09:46 GMT  
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
$ docker pull telegraf@sha256:92b672ff115cc91e9e1872e914eab56bd99af97c8389ed302bba5a852eb3773e
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
$ docker pull telegraf@sha256:1df943aa9d8af0f02967719a22cfca8d20616f35a15d9c70f485a598fb13059d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172279634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a321638dc03fff6c186130c0f19b73bb7c771faac527c8ba9d7ba5fc24490f9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:41:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:43:05 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:43:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 02:43:10 GMT
ENV TELEGRAF_VERSION=1.37.3
# Wed, 24 Jun 2026 02:43:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 24 Jun 2026 02:43:10 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 24 Jun 2026 02:43:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 02:43:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 02:43:10 GMT
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
	-	`sha256:24f567d79aa2c44063038fbe8e6424c7ec1eda6de0d7c5cf0349ca80c9248e77`  
		Last Modified: Wed, 24 Jun 2026 02:43:33 GMT  
		Size: 18.9 MB (18944514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9068372f1f68b07187fbec0a738998c876fd979101f432273a9b31bc20abef9e`  
		Last Modified: Wed, 24 Jun 2026 02:43:32 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8703b8d99ed3fcc71c65b4ae662b7ae550d2c3a8eba746e5d0edf3f9a844d391`  
		Last Modified: Wed, 24 Jun 2026 02:43:35 GMT  
		Size: 80.8 MB (80783170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:864568c06a577756f59e2626546f53d3fa08cc55c4650e5b8e8cbc199c0aa57f`  
		Last Modified: Wed, 24 Jun 2026 02:43:32 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:c9150a86dd5d91ee84686e08cebf0edc03eef1cde5bbca5f2bc538d07a78f2f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6681420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e040310b329f0ca061307de1a03d76794451cd89bb7764549c2556e6e1fa7d6`

```dockerfile
```

-	Layers:
	-	`sha256:143cca1a84b65ef8ade7e0643e9acef96d5c305f6c0e84ef90c4c8893c1c0807`  
		Last Modified: Wed, 24 Jun 2026 02:43:33 GMT  
		Size: 6.7 MB (6666994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1fbe9bef3aaa3e6333e979ba2dc07ceff4570132d23fda3674f1a67cd5aa6ee`  
		Last Modified: Wed, 24 Jun 2026 02:43:32 GMT  
		Size: 14.4 KB (14426 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.37.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:7136dba78f7c528e2e4bd17d38caa7eaf7e650b9d65030e1ce00c19761942b96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158480928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a047488edaebea418fd00ee49c484b22c11938732af59f544d1198fc475d9c6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:22:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:09:24 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:09:25 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 04:09:30 GMT
ENV TELEGRAF_VERSION=1.37.3
# Wed, 24 Jun 2026 04:09:30 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 24 Jun 2026 04:09:30 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 24 Jun 2026 04:09:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 04:09:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 04:09:30 GMT
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
	-	`sha256:d4dc2f3f0ffe794db7094ffda2ac9d800213e95c7898ad51bde27db77acee273`  
		Last Modified: Wed, 24 Jun 2026 04:09:47 GMT  
		Size: 17.7 MB (17699719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed0ca1090d974b7fa72e1ce28bc0321fb25fd3f4fe3fc2068830868249cb91f`  
		Last Modified: Wed, 24 Jun 2026 04:09:46 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba61752fc5dabc1f7896e468edcc545acfaf02ff8e28f45bc5eab3f28745e1c`  
		Last Modified: Wed, 24 Jun 2026 04:09:49 GMT  
		Size: 74.6 MB (74617448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c6430f83bdebcbefa0aaf888f36d0bbf9e1a998f17cff2c292dc81d75e46011`  
		Last Modified: Wed, 24 Jun 2026 04:09:46 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:637fe64ddbc1138c45353cc3e6211a5b54fa8d1a496a73dfce7c6b4b7ce81bcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6676108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c2e1599feeb7efcd2b810701bc9666d912dabecaecb69d64b623692c5c77c41`

```dockerfile
```

-	Layers:
	-	`sha256:bbb3b094db6743cab858344498f72d7a049a17accdb338b8221a009a51f09585`  
		Last Modified: Wed, 24 Jun 2026 04:09:47 GMT  
		Size: 6.7 MB (6661591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e090ac907871ae50cd72fbf7c62c8ff80772fc2c0e3a5475dfe9316aa9ff5d65`  
		Last Modified: Wed, 24 Jun 2026 04:09:46 GMT  
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
$ docker pull telegraf@sha256:ced5546117c1006510cb8beafb1161722d80f525fd6a35e4647d8b3bf7078044
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
$ docker pull telegraf@sha256:59da8220c2a58e884f094a2447f56610d84415513cf960d08a9c6e530d833b6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (175007518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e64175056e0bf3aa839ea1ef53f98d933b51402a76caa2e8f6cc2f9f5f7f1aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:41:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:43:51 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:43:52 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 02:43:56 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 24 Jun 2026 02:43:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 24 Jun 2026 02:43:56 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 24 Jun 2026 02:43:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 02:43:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 02:43:56 GMT
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
	-	`sha256:930fc536aa77c78b663b3a15272ade59be76e83b5d14495fb396300201cd53d6`  
		Last Modified: Wed, 24 Jun 2026 02:44:16 GMT  
		Size: 18.9 MB (18944473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81279ff6ff0a42a088250109e205bf2084a825edcb3dc56555e331b351de3e04`  
		Last Modified: Wed, 24 Jun 2026 02:44:15 GMT  
		Size: 5.1 KB (5074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:775b0b3c72d0eea333835c67e6016a11af7b54d335a41a895012b436e095cea3`  
		Last Modified: Wed, 24 Jun 2026 02:44:18 GMT  
		Size: 83.5 MB (83511090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7d2945ab71300f118e61a33a783586b80e26381783fb23e0f8a5be433505a58`  
		Last Modified: Wed, 24 Jun 2026 02:44:15 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:3babc6086cbbb533ba410884bf1ae63bf293cffb884e75cc02697f5bdda0980f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6688726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4259794ed17d54120e78131f674fa2067f057c05bb48b31b8ab9a0aa0fda63a`

```dockerfile
```

-	Layers:
	-	`sha256:9f7e6949cc675a059e798f4a0480576c004a9a50afc1bcdd7287562aa85ab6dc`  
		Last Modified: Wed, 24 Jun 2026 02:44:15 GMT  
		Size: 6.7 MB (6674299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e9276e01a7cae42ae8581cca5f55c95c887be0b7197ab52f253aa2b6c880eb5`  
		Last Modified: Wed, 24 Jun 2026 02:44:15 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:ca75c94464cf0969ff7688efd39a9838ccb694f385a478ffd3128ec2155ee534
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161291341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79f1d2a1e5e5005fdcf8af95eb60ca96738d6ac0555d3232262684d117845c63`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:22:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:09:44 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:09:45 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 04:09:50 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 24 Jun 2026 04:09:50 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 24 Jun 2026 04:09:50 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 24 Jun 2026 04:09:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 04:09:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 04:09:50 GMT
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
	-	`sha256:4e889418ce7771c5cfd98bf1c1883c425b44a6901d3ae427323d6e2ba21a02e4`  
		Last Modified: Wed, 24 Jun 2026 04:10:08 GMT  
		Size: 17.7 MB (17699642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae177152c76fe8c8f8466b1f96fe7a6ed8ef32ba80ae0f1906c903733b056545`  
		Last Modified: Wed, 24 Jun 2026 04:10:07 GMT  
		Size: 5.1 KB (5072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ee6b846bba8efdfe083d4c7cb2b68c10c74661b10425d928d2873f98e1d9222`  
		Last Modified: Wed, 24 Jun 2026 04:10:09 GMT  
		Size: 77.4 MB (77427923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c443b2b0c1ef100c97604f72957517b0a78033061ffc3a9a501c5bcadc776b7`  
		Last Modified: Wed, 24 Jun 2026 04:10:07 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:a6886fc1453d7beb0942542ca11c001c85c0598a21622e363c7d16a03344fcb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6683413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:715ed1332da41dd36ec85f7ab6aa1573ecfb285860c69a983ff71c851b597e09`

```dockerfile
```

-	Layers:
	-	`sha256:f3efeeb877e26e0949211fc225a432f7569d151b2563923b50f0bfe379b23bb8`  
		Last Modified: Wed, 24 Jun 2026 04:10:08 GMT  
		Size: 6.7 MB (6668896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:106ed99b87efd8f93643c082e9a087db62fb9f2197ece6b447942209c6bc4ce2`  
		Last Modified: Wed, 24 Jun 2026 04:10:07 GMT  
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
$ docker pull telegraf@sha256:ced5546117c1006510cb8beafb1161722d80f525fd6a35e4647d8b3bf7078044
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
$ docker pull telegraf@sha256:59da8220c2a58e884f094a2447f56610d84415513cf960d08a9c6e530d833b6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (175007518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e64175056e0bf3aa839ea1ef53f98d933b51402a76caa2e8f6cc2f9f5f7f1aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:41:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:43:51 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:43:52 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 02:43:56 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 24 Jun 2026 02:43:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 24 Jun 2026 02:43:56 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 24 Jun 2026 02:43:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 02:43:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 02:43:56 GMT
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
	-	`sha256:930fc536aa77c78b663b3a15272ade59be76e83b5d14495fb396300201cd53d6`  
		Last Modified: Wed, 24 Jun 2026 02:44:16 GMT  
		Size: 18.9 MB (18944473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81279ff6ff0a42a088250109e205bf2084a825edcb3dc56555e331b351de3e04`  
		Last Modified: Wed, 24 Jun 2026 02:44:15 GMT  
		Size: 5.1 KB (5074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:775b0b3c72d0eea333835c67e6016a11af7b54d335a41a895012b436e095cea3`  
		Last Modified: Wed, 24 Jun 2026 02:44:18 GMT  
		Size: 83.5 MB (83511090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7d2945ab71300f118e61a33a783586b80e26381783fb23e0f8a5be433505a58`  
		Last Modified: Wed, 24 Jun 2026 02:44:15 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:3babc6086cbbb533ba410884bf1ae63bf293cffb884e75cc02697f5bdda0980f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6688726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4259794ed17d54120e78131f674fa2067f057c05bb48b31b8ab9a0aa0fda63a`

```dockerfile
```

-	Layers:
	-	`sha256:9f7e6949cc675a059e798f4a0480576c004a9a50afc1bcdd7287562aa85ab6dc`  
		Last Modified: Wed, 24 Jun 2026 02:44:15 GMT  
		Size: 6.7 MB (6674299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e9276e01a7cae42ae8581cca5f55c95c887be0b7197ab52f253aa2b6c880eb5`  
		Last Modified: Wed, 24 Jun 2026 02:44:15 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:ca75c94464cf0969ff7688efd39a9838ccb694f385a478ffd3128ec2155ee534
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161291341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79f1d2a1e5e5005fdcf8af95eb60ca96738d6ac0555d3232262684d117845c63`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:22:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:09:44 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:09:45 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 24 Jun 2026 04:09:50 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 24 Jun 2026 04:09:50 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 24 Jun 2026 04:09:50 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 24 Jun 2026 04:09:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 04:09:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 04:09:50 GMT
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
	-	`sha256:4e889418ce7771c5cfd98bf1c1883c425b44a6901d3ae427323d6e2ba21a02e4`  
		Last Modified: Wed, 24 Jun 2026 04:10:08 GMT  
		Size: 17.7 MB (17699642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae177152c76fe8c8f8466b1f96fe7a6ed8ef32ba80ae0f1906c903733b056545`  
		Last Modified: Wed, 24 Jun 2026 04:10:07 GMT  
		Size: 5.1 KB (5072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ee6b846bba8efdfe083d4c7cb2b68c10c74661b10425d928d2873f98e1d9222`  
		Last Modified: Wed, 24 Jun 2026 04:10:09 GMT  
		Size: 77.4 MB (77427923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c443b2b0c1ef100c97604f72957517b0a78033061ffc3a9a501c5bcadc776b7`  
		Last Modified: Wed, 24 Jun 2026 04:10:07 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:a6886fc1453d7beb0942542ca11c001c85c0598a21622e363c7d16a03344fcb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6683413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:715ed1332da41dd36ec85f7ab6aa1573ecfb285860c69a983ff71c851b597e09`

```dockerfile
```

-	Layers:
	-	`sha256:f3efeeb877e26e0949211fc225a432f7569d151b2563923b50f0bfe379b23bb8`  
		Last Modified: Wed, 24 Jun 2026 04:10:08 GMT  
		Size: 6.7 MB (6668896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:106ed99b87efd8f93643c082e9a087db62fb9f2197ece6b447942209c6bc4ce2`  
		Last Modified: Wed, 24 Jun 2026 04:10:07 GMT  
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

### `telegraf:1.39` - linux; amd64

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

### `telegraf:1.39` - unknown; unknown

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

### `telegraf:1.39` - linux; arm variant v7

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

### `telegraf:1.39` - unknown; unknown

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

### `telegraf:1.39` - linux; arm64 variant v8

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

### `telegraf:1.39` - unknown; unknown

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

## `telegraf:1.39-alpine`

```console
$ docker pull telegraf@sha256:4ab2541742661448a279287f41e3660e528b2083a7a46cccdf559a3094b8fd8f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:57332205f6585766cb89a5bdef225c0f3ed2b21978b2a84a98253ec92f6b396b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.8 MB (90752352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f4bd85179846b2017929654e1dcbf125adf4eddd48dec97db0689f08a4f71c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 20:50:33 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 29 Jun 2026 20:50:34 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 29 Jun 2026 20:50:40 GMT
ENV TELEGRAF_VERSION=1.39.1
# Mon, 29 Jun 2026 20:50:40 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 29 Jun 2026 20:50:40 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 29 Jun 2026 20:50:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 29 Jun 2026 20:50:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 29 Jun 2026 20:50:40 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:578919e246e1ce8850b88e157c9b1e425a63c45e8a4419580c14f6b0789c6fcc`  
		Last Modified: Mon, 29 Jun 2026 20:50:55 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f023cf1d26c3a3212f3e328f697f6520492c833cb88aad74ee3e1a5db98e2c6`  
		Last Modified: Mon, 29 Jun 2026 20:50:55 GMT  
		Size: 2.6 MB (2568182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758d7a941c12529e184c9b776d50de028d681e1b0c449ea76f620cc1d1af5947`  
		Last Modified: Mon, 29 Jun 2026 20:50:58 GMT  
		Size: 84.3 MB (84338849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b767314499da405da4d32aa091df7022b47b92daf6138f9cc548336717e351d5`  
		Last Modified: Mon, 29 Jun 2026 20:50:55 GMT  
		Size: 621.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:e8167b2cd9f313ebcf56b7059b3042a64862391862450d9187d3b64a9c591deb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1169007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bb30f06e6463b5b6bb3d71ec07e2a905c9dbc66820eca35bd9ff85d9f8215d5`

```dockerfile
```

-	Layers:
	-	`sha256:dfc880e0ea012f031e840dbd9b1a6c4eec72a233c4cada60bb8ca1813a1382c7`  
		Last Modified: Mon, 29 Jun 2026 20:50:55 GMT  
		Size: 1.2 MB (1153787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:511395aec5586a97ae46f49158af5554efc75700b5ae445a48862204c95d4329`  
		Last Modified: Mon, 29 Jun 2026 20:50:55 GMT  
		Size: 15.2 KB (15220 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:929b6200645052dde3b27700e6cdb5d5e7546e7f1634bbc1f7f1933ba6d09eee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.1 MB (82080093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbffc0f704f613c3a28a9d603b33399d5243d377b1f95814645c26991206507a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 20:50:42 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 29 Jun 2026 20:50:43 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 29 Jun 2026 20:50:49 GMT
ENV TELEGRAF_VERSION=1.39.1
# Mon, 29 Jun 2026 20:50:49 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 29 Jun 2026 20:50:49 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 29 Jun 2026 20:50:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 29 Jun 2026 20:50:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 29 Jun 2026 20:50:49 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd1b0aac0dafe3bea90e300c781479fafc400dbcdb5688b9c867655a5cc7506`  
		Last Modified: Mon, 29 Jun 2026 20:51:04 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc5e4f8be2e8ca407fc724357e2ad3091d0194d3f6a9d91cb017ef9112e3b101`  
		Last Modified: Mon, 29 Jun 2026 20:51:04 GMT  
		Size: 2.6 MB (2617136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00ebc3c18f0035117f8c268ba511d7424a5ddca6c21eaf0d5355926600988c9a`  
		Last Modified: Mon, 29 Jun 2026 20:51:06 GMT  
		Size: 75.3 MB (75280200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9212b828e7194e70ddafbac715e571762b3596143d30c44dfae62c5733203531`  
		Last Modified: Mon, 29 Jun 2026 20:51:04 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:e670dba7aa43ce4d5149b3bd60f95e1d52f44c0c0c0130f9606b986501b0b6d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1164118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a5bae9c496c8949e7486fb1494e34a10eb37a675dd4cdf49c107f8bfbec3f1c`

```dockerfile
```

-	Layers:
	-	`sha256:63543dd7760e9c2a94c639b2bf62a5985f11fe3fd514810d86b13618b5e7da54`  
		Last Modified: Mon, 29 Jun 2026 20:51:04 GMT  
		Size: 1.1 MB (1148776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7b4f8081cb6ca7f2d396bfa8838bd70463e254e8bb687233965f76fd285f7ee`  
		Last Modified: Mon, 29 Jun 2026 20:51:04 GMT  
		Size: 15.3 KB (15342 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39.1`

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

### `telegraf:1.39.1` - linux; amd64

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

### `telegraf:1.39.1` - unknown; unknown

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

### `telegraf:1.39.1` - linux; arm variant v7

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

### `telegraf:1.39.1` - unknown; unknown

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

### `telegraf:1.39.1` - linux; arm64 variant v8

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

### `telegraf:1.39.1` - unknown; unknown

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

## `telegraf:1.39.1-alpine`

```console
$ docker pull telegraf@sha256:4ab2541742661448a279287f41e3660e528b2083a7a46cccdf559a3094b8fd8f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39.1-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:57332205f6585766cb89a5bdef225c0f3ed2b21978b2a84a98253ec92f6b396b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.8 MB (90752352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f4bd85179846b2017929654e1dcbf125adf4eddd48dec97db0689f08a4f71c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 20:50:33 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 29 Jun 2026 20:50:34 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 29 Jun 2026 20:50:40 GMT
ENV TELEGRAF_VERSION=1.39.1
# Mon, 29 Jun 2026 20:50:40 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 29 Jun 2026 20:50:40 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 29 Jun 2026 20:50:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 29 Jun 2026 20:50:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 29 Jun 2026 20:50:40 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:578919e246e1ce8850b88e157c9b1e425a63c45e8a4419580c14f6b0789c6fcc`  
		Last Modified: Mon, 29 Jun 2026 20:50:55 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f023cf1d26c3a3212f3e328f697f6520492c833cb88aad74ee3e1a5db98e2c6`  
		Last Modified: Mon, 29 Jun 2026 20:50:55 GMT  
		Size: 2.6 MB (2568182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758d7a941c12529e184c9b776d50de028d681e1b0c449ea76f620cc1d1af5947`  
		Last Modified: Mon, 29 Jun 2026 20:50:58 GMT  
		Size: 84.3 MB (84338849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b767314499da405da4d32aa091df7022b47b92daf6138f9cc548336717e351d5`  
		Last Modified: Mon, 29 Jun 2026 20:50:55 GMT  
		Size: 621.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.1-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:e8167b2cd9f313ebcf56b7059b3042a64862391862450d9187d3b64a9c591deb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1169007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bb30f06e6463b5b6bb3d71ec07e2a905c9dbc66820eca35bd9ff85d9f8215d5`

```dockerfile
```

-	Layers:
	-	`sha256:dfc880e0ea012f031e840dbd9b1a6c4eec72a233c4cada60bb8ca1813a1382c7`  
		Last Modified: Mon, 29 Jun 2026 20:50:55 GMT  
		Size: 1.2 MB (1153787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:511395aec5586a97ae46f49158af5554efc75700b5ae445a48862204c95d4329`  
		Last Modified: Mon, 29 Jun 2026 20:50:55 GMT  
		Size: 15.2 KB (15220 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.1-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:929b6200645052dde3b27700e6cdb5d5e7546e7f1634bbc1f7f1933ba6d09eee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.1 MB (82080093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbffc0f704f613c3a28a9d603b33399d5243d377b1f95814645c26991206507a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 20:50:42 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 29 Jun 2026 20:50:43 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 29 Jun 2026 20:50:49 GMT
ENV TELEGRAF_VERSION=1.39.1
# Mon, 29 Jun 2026 20:50:49 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 29 Jun 2026 20:50:49 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 29 Jun 2026 20:50:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 29 Jun 2026 20:50:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 29 Jun 2026 20:50:49 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd1b0aac0dafe3bea90e300c781479fafc400dbcdb5688b9c867655a5cc7506`  
		Last Modified: Mon, 29 Jun 2026 20:51:04 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc5e4f8be2e8ca407fc724357e2ad3091d0194d3f6a9d91cb017ef9112e3b101`  
		Last Modified: Mon, 29 Jun 2026 20:51:04 GMT  
		Size: 2.6 MB (2617136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00ebc3c18f0035117f8c268ba511d7424a5ddca6c21eaf0d5355926600988c9a`  
		Last Modified: Mon, 29 Jun 2026 20:51:06 GMT  
		Size: 75.3 MB (75280200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9212b828e7194e70ddafbac715e571762b3596143d30c44dfae62c5733203531`  
		Last Modified: Mon, 29 Jun 2026 20:51:04 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.1-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:e670dba7aa43ce4d5149b3bd60f95e1d52f44c0c0c0130f9606b986501b0b6d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1164118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a5bae9c496c8949e7486fb1494e34a10eb37a675dd4cdf49c107f8bfbec3f1c`

```dockerfile
```

-	Layers:
	-	`sha256:63543dd7760e9c2a94c639b2bf62a5985f11fe3fd514810d86b13618b5e7da54`  
		Last Modified: Mon, 29 Jun 2026 20:51:04 GMT  
		Size: 1.1 MB (1148776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7b4f8081cb6ca7f2d396bfa8838bd70463e254e8bb687233965f76fd285f7ee`  
		Last Modified: Mon, 29 Jun 2026 20:51:04 GMT  
		Size: 15.3 KB (15342 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:4ab2541742661448a279287f41e3660e528b2083a7a46cccdf559a3094b8fd8f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:57332205f6585766cb89a5bdef225c0f3ed2b21978b2a84a98253ec92f6b396b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.8 MB (90752352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f4bd85179846b2017929654e1dcbf125adf4eddd48dec97db0689f08a4f71c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 20:50:33 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 29 Jun 2026 20:50:34 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 29 Jun 2026 20:50:40 GMT
ENV TELEGRAF_VERSION=1.39.1
# Mon, 29 Jun 2026 20:50:40 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 29 Jun 2026 20:50:40 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 29 Jun 2026 20:50:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 29 Jun 2026 20:50:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 29 Jun 2026 20:50:40 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:578919e246e1ce8850b88e157c9b1e425a63c45e8a4419580c14f6b0789c6fcc`  
		Last Modified: Mon, 29 Jun 2026 20:50:55 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f023cf1d26c3a3212f3e328f697f6520492c833cb88aad74ee3e1a5db98e2c6`  
		Last Modified: Mon, 29 Jun 2026 20:50:55 GMT  
		Size: 2.6 MB (2568182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758d7a941c12529e184c9b776d50de028d681e1b0c449ea76f620cc1d1af5947`  
		Last Modified: Mon, 29 Jun 2026 20:50:58 GMT  
		Size: 84.3 MB (84338849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b767314499da405da4d32aa091df7022b47b92daf6138f9cc548336717e351d5`  
		Last Modified: Mon, 29 Jun 2026 20:50:55 GMT  
		Size: 621.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:e8167b2cd9f313ebcf56b7059b3042a64862391862450d9187d3b64a9c591deb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1169007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bb30f06e6463b5b6bb3d71ec07e2a905c9dbc66820eca35bd9ff85d9f8215d5`

```dockerfile
```

-	Layers:
	-	`sha256:dfc880e0ea012f031e840dbd9b1a6c4eec72a233c4cada60bb8ca1813a1382c7`  
		Last Modified: Mon, 29 Jun 2026 20:50:55 GMT  
		Size: 1.2 MB (1153787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:511395aec5586a97ae46f49158af5554efc75700b5ae445a48862204c95d4329`  
		Last Modified: Mon, 29 Jun 2026 20:50:55 GMT  
		Size: 15.2 KB (15220 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:929b6200645052dde3b27700e6cdb5d5e7546e7f1634bbc1f7f1933ba6d09eee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.1 MB (82080093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbffc0f704f613c3a28a9d603b33399d5243d377b1f95814645c26991206507a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 20:50:42 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 29 Jun 2026 20:50:43 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 29 Jun 2026 20:50:49 GMT
ENV TELEGRAF_VERSION=1.39.1
# Mon, 29 Jun 2026 20:50:49 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 29 Jun 2026 20:50:49 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 29 Jun 2026 20:50:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 29 Jun 2026 20:50:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 29 Jun 2026 20:50:49 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd1b0aac0dafe3bea90e300c781479fafc400dbcdb5688b9c867655a5cc7506`  
		Last Modified: Mon, 29 Jun 2026 20:51:04 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc5e4f8be2e8ca407fc724357e2ad3091d0194d3f6a9d91cb017ef9112e3b101`  
		Last Modified: Mon, 29 Jun 2026 20:51:04 GMT  
		Size: 2.6 MB (2617136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00ebc3c18f0035117f8c268ba511d7424a5ddca6c21eaf0d5355926600988c9a`  
		Last Modified: Mon, 29 Jun 2026 20:51:06 GMT  
		Size: 75.3 MB (75280200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9212b828e7194e70ddafbac715e571762b3596143d30c44dfae62c5733203531`  
		Last Modified: Mon, 29 Jun 2026 20:51:04 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:e670dba7aa43ce4d5149b3bd60f95e1d52f44c0c0c0130f9606b986501b0b6d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1164118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a5bae9c496c8949e7486fb1494e34a10eb37a675dd4cdf49c107f8bfbec3f1c`

```dockerfile
```

-	Layers:
	-	`sha256:63543dd7760e9c2a94c639b2bf62a5985f11fe3fd514810d86b13618b5e7da54`  
		Last Modified: Mon, 29 Jun 2026 20:51:04 GMT  
		Size: 1.1 MB (1148776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7b4f8081cb6ca7f2d396bfa8838bd70463e254e8bb687233965f76fd285f7ee`  
		Last Modified: Mon, 29 Jun 2026 20:51:04 GMT  
		Size: 15.3 KB (15342 bytes)  
		MIME: application/vnd.in-toto+json

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
