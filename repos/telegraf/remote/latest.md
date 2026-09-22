## `telegraf:latest`

```console
$ docker pull telegraf@sha256:90da3a5b81426230ed677f00823de0d55ce198ad7b5c2e099afc417ebc744642
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
$ docker pull telegraf@sha256:c80f3a417a48b27dcfd92114707c088913a1f7e24f06d9191b474e6ee6c2f838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.6 MB (180572853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2711454e94b6dbc2d2c5aa9d41be8ac807481f0ad2bbd93fe7bb199313e9b00`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:26 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:27 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 21 Sep 2026 22:10:31 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:10:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 21 Sep 2026 22:10:31 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:10:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:10:31 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:10:31 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2de2423ebd9d3290883175c0e46dccd6de955b08e6e9a5bd20909e3face240`  
		Last Modified: Sat, 19 Sep 2026 00:44:47 GMT  
		Size: 24.1 MB (24056077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2a628b3065c4626dc1dac2ee6e9f634e29f071e81c7d63aa7a1dba589fa8163`  
		Last Modified: Mon, 21 Sep 2026 22:10:50 GMT  
		Size: 19.3 MB (19284615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050572f7246aa44556a59a92d338e847ceae28ef7c989c985f597cb2fc8e3360`  
		Last Modified: Mon, 21 Sep 2026 22:10:49 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b6d6592bc30dc43c452c781c0f56a91afb8403343d7f7131754d7584f8fb5f9`  
		Last Modified: Mon, 21 Sep 2026 22:10:52 GMT  
		Size: 88.7 MB (88723009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13935813bb746bf40e87aeca006564245e3bb834dce903b3f68a0bff22dc1121`  
		Last Modified: Mon, 21 Sep 2026 22:10:49 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:77e52da2dd659201c1b90507ef242b99e390a2f0bdfb5d5d143af40dc5100c70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6144221c7767bf224e4f6a72793a33f49b20dd62019fb60ba5327cbace5fc38`

```dockerfile
```

-	Layers:
	-	`sha256:5dee121086ec7050beeeec8e08f2c929c4a01a30a2087a4c26eed2ddf4992ee5`  
		Last Modified: Mon, 21 Sep 2026 22:10:49 GMT  
		Size: 6.7 MB (6691309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b154f3fe8b4083b2b07ac7b2dbaf0a17dc104142d5400b2c60694f877218492`  
		Last Modified: Mon, 21 Sep 2026 22:10:49 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:51875efa48b3c29101c64b3df141a83fba5a6be34d350eb00a2c54c29b96a409
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.6 MB (166596135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1d1cd1779b3bcc9c4b45fbe2526f7e202aaf8ac3cf4da7f0b51419580d53f6`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:27:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:56 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 21 Sep 2026 22:11:02 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:11:02 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 21 Sep 2026 22:11:02 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:11:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:11:02 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:11:02 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a6c5079853e28bf683246929969c9815b5fe2309ca7008420ffa4f3b69991189`  
		Last Modified: Sat, 19 Sep 2026 00:02:43 GMT  
		Size: 44.2 MB (44202209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8a5fc11ebbfafa0cb2b3f94f30ae822f4f3c68b9cc1fc076c7fac3bd1a4e8f`  
		Last Modified: Sat, 19 Sep 2026 01:28:07 GMT  
		Size: 22.0 MB (21959053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39eee8cb088f20ece866f54371865dcd3ceeb8086a800fc6488dba8c70b0b948`  
		Last Modified: Mon, 21 Sep 2026 22:11:21 GMT  
		Size: 17.9 MB (17949820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ea36ffaa5d5f7aa416eaf88f0dd4335c61d1150368bf6984f917ac1b9e9900`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 5.1 KB (5071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db9796f6606693943eb326f51ce128108e804447ce4b10275b7e36d537c81b2e`  
		Last Modified: Mon, 21 Sep 2026 22:11:22 GMT  
		Size: 82.5 MB (82479340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed67ef952f3a403d8c8fb66911f69e6ba523af9363da1e9c2e29de3d286c005f`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:543907c6e9bc73b5f03c67eb66775f73f8ca0ddee005761f473203a99fdd3dfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfde341961c5cab7397b0572cfe07bead6758f850ddf88f47a7c5c374a1a6235`

```dockerfile
```

-	Layers:
	-	`sha256:7109de704b8cf8cc2016caff85cd8cab08b2c612712698a52d76562ffb25b980`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 6.7 MB (6686719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d56ad07f9e1adeee3fe2f5e81527793a49985686f8c789e83645a3c6e923bc5b`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 14.9 KB (14865 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:3d96cadeaeeba3b027f6a58e262e0076b42e6e3b5dfd616054e6efd1c168c08a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170451200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cc442660dad5dfdc2b55ccd917158d66bf01a991ad9a8a9afbccf9139494209`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:06 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 21 Sep 2026 22:10:10 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:10:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 21 Sep 2026 22:10:10 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:10:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:10:10 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:10:10 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e528fa46febdafdfec8e02c978fc9de14e76dd532505c33472d8f915ac27a2f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:27 GMT  
		Size: 23.6 MB (23627721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf208331b80aac46c2a3a543e91f22114cea815e5fd03a6f55d458ad28f480c`  
		Last Modified: Mon, 21 Sep 2026 22:10:29 GMT  
		Size: 19.2 MB (19194874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a00f1ed5f5da38c148e11cf269fdaec4bda5b9f06c8a8b0f3309cdb226d1d7d`  
		Last Modified: Mon, 21 Sep 2026 22:10:28 GMT  
		Size: 5.1 KB (5058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b440ef37a369b0a5795be5cafab5a56c58f6c41f9f11527448bae40d6c8fa5cf`  
		Last Modified: Mon, 21 Sep 2026 22:10:30 GMT  
		Size: 79.2 MB (79232997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b1e60a657189b8331ede57f41dc91ca5ce7b727af2cf6c89dc59a855a6fcec`  
		Last Modified: Mon, 21 Sep 2026 22:10:28 GMT  
		Size: 640.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:be41412aaa9e6deb304f3351988c5d759d4ea773b348b427c6eb1ea2bf81421d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb797f81983552bcf3462fe495620f004bb5c11abb2bba9cadce382543744025`

```dockerfile
```

-	Layers:
	-	`sha256:fd0f06a579969cc78a263ef32b87d1d6a45642b56f559c1256e89bbe1234e634`  
		Last Modified: Mon, 21 Sep 2026 22:10:28 GMT  
		Size: 6.7 MB (6691997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b69ae06cd4b00e517cf20ab564eaff91ab53d85a1abdf2855dfaa7473b0f65d6`  
		Last Modified: Mon, 21 Sep 2026 22:10:28 GMT  
		Size: 14.9 KB (14891 bytes)  
		MIME: application/vnd.in-toto+json
