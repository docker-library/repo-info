<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:1.5`](#kapacitor15)
-	[`kapacitor:1.5-alpine`](#kapacitor15-alpine)
-	[`kapacitor:1.5.9`](#kapacitor159)
-	[`kapacitor:1.5.9-alpine`](#kapacitor159-alpine)
-	[`kapacitor:1.6`](#kapacitor16)
-	[`kapacitor:1.6-alpine`](#kapacitor16-alpine)
-	[`kapacitor:1.6.5`](#kapacitor165)
-	[`kapacitor:1.6.5-alpine`](#kapacitor165-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)
-	[`kapacitor:latest`](#kapacitorlatest)

## `kapacitor:1.5`

```console
$ docker pull kapacitor@sha256:35201623bdb82092c25a4f8c408de8a1ef2ea07ff738aac93d213b44cf550c80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.5` - linux; amd64

```console
$ docker pull kapacitor@sha256:d69918dde8206b8093ebf4232f85cd3e2cf38db0f848b26e6005bb932a667011
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111735184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc00b6e833611385f4ceb08786c82eb15567465e1a82839a32e1f010206afe22`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 23 Jun 2022 00:22:10 GMT
ADD file:4c5e0bec5f780d9c6bfbafcb9e6ed641781dd7f7c2853a0c49d6613e9fef9516 in / 
# Thu, 23 Jun 2022 00:22:10 GMT
CMD ["bash"]
# Thu, 23 Jun 2022 00:54:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		apt-transport-https 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Jun 2022 00:54:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 23 Jun 2022 15:23:12 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 23 Jun 2022 15:23:16 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Thu, 23 Jun 2022 15:23:16 GMT
ENV KAPACITOR_VERSION=1.5.9
# Thu, 23 Jun 2022 15:23:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb*
# Thu, 23 Jun 2022 15:23:21 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Thu, 23 Jun 2022 15:23:21 GMT
EXPOSE 9092
# Thu, 23 Jun 2022 15:23:22 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 23 Jun 2022 15:23:22 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Thu, 23 Jun 2022 15:23:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 23 Jun 2022 15:23:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:8372a04f222be82bf67eb0010a59644b1e52f1246b3da9034edaa98f3d591cae`  
		Last Modified: Thu, 23 Jun 2022 00:29:36 GMT  
		Size: 45.4 MB (45430020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1728fee80d376293a9ef5fdcc0acd3f6398fc4159b12064ce4c1e66f67e7e9d`  
		Last Modified: Thu, 23 Jun 2022 01:02:01 GMT  
		Size: 11.3 MB (11302923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6cf50aa0a4b80b39d1bf4be232d404da0b1ad38cdd3bb1a017b727947b5f4bb`  
		Last Modified: Thu, 23 Jun 2022 01:02:00 GMT  
		Size: 4.3 MB (4342926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ca30eaa3f2e4a14053445907d290c9e29fe087a4cd7f7607ea7ced493a2405`  
		Last Modified: Thu, 23 Jun 2022 15:23:51 GMT  
		Size: 13.4 MB (13436157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88da6edad4b4d98978e4fd397110c9d2f14f317fd3846dc196f8d8c95d1ba632`  
		Last Modified: Thu, 23 Jun 2022 15:23:50 GMT  
		Size: 2.9 KB (2854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99eb7eb8e6acbbca57e804e463d57e0e255e32445eeaaddc76c8e5a910ee927e`  
		Last Modified: Thu, 23 Jun 2022 15:23:54 GMT  
		Size: 37.2 MB (37219849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed57900e7789f09136c4dbf3c3848e6f4ddf2d4cc4d75afe52c633a40c72470`  
		Last Modified: Thu, 23 Jun 2022 15:23:50 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a2e325e760c8c507dfb8d86f51accfe003b032a99742ef67b8816a676277c6`  
		Last Modified: Thu, 23 Jun 2022 15:23:50 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.5` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:d29dd39b2509a274e47e34def46e91d08c25011757dbfcf420e2080f83964ad4
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104444245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:680ab7c21ef4f4b0085727d6799e65396319c9fc49ffcb3efd5ce1f7bd29275b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 23 Jun 2022 01:05:04 GMT
ADD file:4f45aa06c6a1c011e41ff7e4685f05d91970973768fc88ff3e825c5ac4fd6058 in / 
# Thu, 23 Jun 2022 01:05:05 GMT
CMD ["bash"]
# Thu, 23 Jun 2022 01:58:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		apt-transport-https 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Jun 2022 01:58:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 03 Nov 2022 02:05:49 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 03 Nov 2022 02:05:52 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Thu, 03 Nov 2022 02:05:52 GMT
ENV KAPACITOR_VERSION=1.5.9
# Thu, 03 Nov 2022 02:05:57 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb*
# Thu, 03 Nov 2022 02:05:57 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Thu, 03 Nov 2022 02:05:57 GMT
EXPOSE 9092
# Thu, 03 Nov 2022 02:05:57 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 03 Nov 2022 02:05:57 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Thu, 03 Nov 2022 02:05:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 Nov 2022 02:05:57 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:cf35481e5c316d184dac1873898948d1e8108de590a2a940c32cda34173fe7c1`  
		Last Modified: Thu, 23 Jun 2022 01:22:04 GMT  
		Size: 42.2 MB (42150850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b740b174e94fb77095522004355bb6f430f0b25308acd5fc66d325f04f99c6`  
		Last Modified: Thu, 23 Jun 2022 02:21:27 GMT  
		Size: 10.0 MB (9957097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf98bd2fdfbc26a0f8c12d47c32e612d01389ff5e4aafc52aa04b72381a6c823`  
		Last Modified: Thu, 23 Jun 2022 02:21:24 GMT  
		Size: 3.9 MB (3921761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b221501dcc1cbba3a57c72c6665204f7bd3633b4569913bd2e8813c3edb7e2a3`  
		Last Modified: Thu, 03 Nov 2022 02:06:15 GMT  
		Size: 13.6 MB (13624191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598da3f44ca1db3c0b3f8df98044d7a44573979648831775f61d39679227e956`  
		Last Modified: Thu, 03 Nov 2022 02:06:14 GMT  
		Size: 2.8 KB (2824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969be022826da8731ee8be86e2d9e1fc3cfd162ceda3d1f77b409715824c9692`  
		Last Modified: Thu, 03 Nov 2022 02:06:19 GMT  
		Size: 34.8 MB (34787064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d90a9f00436060d3345b2b7a656647b21bcbef1a32961636921667347ffddb0b`  
		Last Modified: Thu, 03 Nov 2022 02:06:14 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ebbe9546bb850a732deee548f071230cbe7a3c0bdcd1261b89b6205db38846`  
		Last Modified: Thu, 03 Nov 2022 02:06:14 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.5` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:3b3c78b8b4beb18b11602334a681eb1cb7a77830f0ec005de66c2a4684069631
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (105016315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fde7e90a39afe526533c8d43e1cdc16449875fcf799ba44022eff7821345917`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 23 Jun 2022 00:42:45 GMT
ADD file:3d8b1da94fcec5d068e3e6465fac70cce404c331bb52e30a5bf7cbd950baa5fe in / 
# Thu, 23 Jun 2022 00:42:45 GMT
CMD ["bash"]
# Thu, 23 Jun 2022 01:15:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		apt-transport-https 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Jun 2022 01:16:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Oct 2022 09:32:16 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 26 Oct 2022 09:32:19 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Wed, 26 Oct 2022 09:32:19 GMT
ENV KAPACITOR_VERSION=1.5.9
# Wed, 26 Oct 2022 09:32:23 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb*
# Wed, 26 Oct 2022 09:32:23 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Wed, 26 Oct 2022 09:32:23 GMT
EXPOSE 9092
# Wed, 26 Oct 2022 09:32:23 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 26 Oct 2022 09:32:23 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Wed, 26 Oct 2022 09:32:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Oct 2022 09:32:23 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:d8ccec8a513f896fedd1d9765f3f2abf98bc8264f61cecf17919c80c9aa7ddbc`  
		Last Modified: Thu, 23 Jun 2022 00:51:18 GMT  
		Size: 43.2 MB (43213121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b40625a6bb21cb2cd6b19ef7592951f90da9ea1d8abf359196bf48300c448b2`  
		Last Modified: Thu, 23 Jun 2022 01:25:28 GMT  
		Size: 10.2 MB (10218617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414226169d0f92fdcd77314cbd06ba7613675d62a3afd63aa88afbf0072c44c2`  
		Last Modified: Thu, 23 Jun 2022 01:25:27 GMT  
		Size: 3.9 MB (3874558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e91e2ccc056ea41305b36e42a264023057da389f2a2587e6ab2b12ee209a82fd`  
		Last Modified: Wed, 26 Oct 2022 09:33:01 GMT  
		Size: 13.1 MB (13145056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c77f85e8621dc2475281878b1bea96078e265e411253c2b3a238aa0333a701`  
		Last Modified: Wed, 26 Oct 2022 09:33:00 GMT  
		Size: 2.9 KB (2855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17792d61932724fad60cec861dde378e6452226f1942e4f8faae22141dbafdbb`  
		Last Modified: Wed, 26 Oct 2022 09:33:03 GMT  
		Size: 34.6 MB (34561653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d03aec48eac8c13081a87c9626c4df2b24913ccbfee52365c12fa9ef157a28`  
		Last Modified: Wed, 26 Oct 2022 09:33:00 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92518b99b158a694fccdfad0381c809c1def182c78badbf86e2642cd0cf253b`  
		Last Modified: Wed, 26 Oct 2022 09:33:00 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.5-alpine`

```console
$ docker pull kapacitor@sha256:f0f31429af6264e22af1e8775ee4f5b068f8c252dbb12a18dc7ca8bca6021e17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `kapacitor:1.5-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:19babd50485107fc60c68c5575e10fcfcaab84a061f1f8d33c8777f89a83f67e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22653543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff4c0dc3fc30734367b70939eab1f65f2b9415e94acb5a2a30ddbcd7cd9ff4a6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 20:15:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 06 Oct 2022 22:59:26 GMT
ENV KAPACITOR_VERSION=1.5.9
# Thu, 06 Oct 2022 22:59:31 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 06 Oct 2022 22:59:32 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Thu, 06 Oct 2022 22:59:32 GMT
EXPOSE 9092
# Thu, 06 Oct 2022 22:59:32 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 06 Oct 2022 22:59:32 GMT
COPY file:a64543022a380a96e18ddc4e841e034238df340064743d570fa109d5086b123a in /entrypoint.sh 
# Thu, 06 Oct 2022 22:59:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2022 22:59:32 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed07ae854e5b9e7d93d0c5eb8bbcfb2d6e5eddeb00720efe7b55766ce5bfbab`  
		Last Modified: Thu, 06 Oct 2022 20:16:41 GMT  
		Size: 284.6 KB (284583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae6d710af90b1b33cb522971dfe089e2211f3ab1ca3fd49c413a6abb65bca3`  
		Last Modified: Thu, 06 Oct 2022 23:00:14 GMT  
		Size: 19.5 MB (19540837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824abcf1a6f5277dc3c036fcbd7fd7fe396a7e46833634600dd503e0dbb06cff`  
		Last Modified: Thu, 06 Oct 2022 23:00:11 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b85cbf909734bf9f5784fa910bb4cd8b7b1dd2121001a8a1a34362ba54ae46e`  
		Last Modified: Thu, 06 Oct 2022 23:00:11 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.5.9`

```console
$ docker pull kapacitor@sha256:35201623bdb82092c25a4f8c408de8a1ef2ea07ff738aac93d213b44cf550c80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.5.9` - linux; amd64

```console
$ docker pull kapacitor@sha256:d69918dde8206b8093ebf4232f85cd3e2cf38db0f848b26e6005bb932a667011
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111735184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc00b6e833611385f4ceb08786c82eb15567465e1a82839a32e1f010206afe22`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 23 Jun 2022 00:22:10 GMT
ADD file:4c5e0bec5f780d9c6bfbafcb9e6ed641781dd7f7c2853a0c49d6613e9fef9516 in / 
# Thu, 23 Jun 2022 00:22:10 GMT
CMD ["bash"]
# Thu, 23 Jun 2022 00:54:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		apt-transport-https 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Jun 2022 00:54:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 23 Jun 2022 15:23:12 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 23 Jun 2022 15:23:16 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Thu, 23 Jun 2022 15:23:16 GMT
ENV KAPACITOR_VERSION=1.5.9
# Thu, 23 Jun 2022 15:23:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb*
# Thu, 23 Jun 2022 15:23:21 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Thu, 23 Jun 2022 15:23:21 GMT
EXPOSE 9092
# Thu, 23 Jun 2022 15:23:22 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 23 Jun 2022 15:23:22 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Thu, 23 Jun 2022 15:23:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 23 Jun 2022 15:23:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:8372a04f222be82bf67eb0010a59644b1e52f1246b3da9034edaa98f3d591cae`  
		Last Modified: Thu, 23 Jun 2022 00:29:36 GMT  
		Size: 45.4 MB (45430020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1728fee80d376293a9ef5fdcc0acd3f6398fc4159b12064ce4c1e66f67e7e9d`  
		Last Modified: Thu, 23 Jun 2022 01:02:01 GMT  
		Size: 11.3 MB (11302923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6cf50aa0a4b80b39d1bf4be232d404da0b1ad38cdd3bb1a017b727947b5f4bb`  
		Last Modified: Thu, 23 Jun 2022 01:02:00 GMT  
		Size: 4.3 MB (4342926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ca30eaa3f2e4a14053445907d290c9e29fe087a4cd7f7607ea7ced493a2405`  
		Last Modified: Thu, 23 Jun 2022 15:23:51 GMT  
		Size: 13.4 MB (13436157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88da6edad4b4d98978e4fd397110c9d2f14f317fd3846dc196f8d8c95d1ba632`  
		Last Modified: Thu, 23 Jun 2022 15:23:50 GMT  
		Size: 2.9 KB (2854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99eb7eb8e6acbbca57e804e463d57e0e255e32445eeaaddc76c8e5a910ee927e`  
		Last Modified: Thu, 23 Jun 2022 15:23:54 GMT  
		Size: 37.2 MB (37219849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed57900e7789f09136c4dbf3c3848e6f4ddf2d4cc4d75afe52c633a40c72470`  
		Last Modified: Thu, 23 Jun 2022 15:23:50 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a2e325e760c8c507dfb8d86f51accfe003b032a99742ef67b8816a676277c6`  
		Last Modified: Thu, 23 Jun 2022 15:23:50 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.5.9` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:d29dd39b2509a274e47e34def46e91d08c25011757dbfcf420e2080f83964ad4
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104444245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:680ab7c21ef4f4b0085727d6799e65396319c9fc49ffcb3efd5ce1f7bd29275b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 23 Jun 2022 01:05:04 GMT
ADD file:4f45aa06c6a1c011e41ff7e4685f05d91970973768fc88ff3e825c5ac4fd6058 in / 
# Thu, 23 Jun 2022 01:05:05 GMT
CMD ["bash"]
# Thu, 23 Jun 2022 01:58:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		apt-transport-https 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Jun 2022 01:58:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 03 Nov 2022 02:05:49 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 03 Nov 2022 02:05:52 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Thu, 03 Nov 2022 02:05:52 GMT
ENV KAPACITOR_VERSION=1.5.9
# Thu, 03 Nov 2022 02:05:57 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb*
# Thu, 03 Nov 2022 02:05:57 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Thu, 03 Nov 2022 02:05:57 GMT
EXPOSE 9092
# Thu, 03 Nov 2022 02:05:57 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 03 Nov 2022 02:05:57 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Thu, 03 Nov 2022 02:05:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 Nov 2022 02:05:57 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:cf35481e5c316d184dac1873898948d1e8108de590a2a940c32cda34173fe7c1`  
		Last Modified: Thu, 23 Jun 2022 01:22:04 GMT  
		Size: 42.2 MB (42150850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b740b174e94fb77095522004355bb6f430f0b25308acd5fc66d325f04f99c6`  
		Last Modified: Thu, 23 Jun 2022 02:21:27 GMT  
		Size: 10.0 MB (9957097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf98bd2fdfbc26a0f8c12d47c32e612d01389ff5e4aafc52aa04b72381a6c823`  
		Last Modified: Thu, 23 Jun 2022 02:21:24 GMT  
		Size: 3.9 MB (3921761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b221501dcc1cbba3a57c72c6665204f7bd3633b4569913bd2e8813c3edb7e2a3`  
		Last Modified: Thu, 03 Nov 2022 02:06:15 GMT  
		Size: 13.6 MB (13624191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598da3f44ca1db3c0b3f8df98044d7a44573979648831775f61d39679227e956`  
		Last Modified: Thu, 03 Nov 2022 02:06:14 GMT  
		Size: 2.8 KB (2824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969be022826da8731ee8be86e2d9e1fc3cfd162ceda3d1f77b409715824c9692`  
		Last Modified: Thu, 03 Nov 2022 02:06:19 GMT  
		Size: 34.8 MB (34787064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d90a9f00436060d3345b2b7a656647b21bcbef1a32961636921667347ffddb0b`  
		Last Modified: Thu, 03 Nov 2022 02:06:14 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ebbe9546bb850a732deee548f071230cbe7a3c0bdcd1261b89b6205db38846`  
		Last Modified: Thu, 03 Nov 2022 02:06:14 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.5.9` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:3b3c78b8b4beb18b11602334a681eb1cb7a77830f0ec005de66c2a4684069631
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (105016315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fde7e90a39afe526533c8d43e1cdc16449875fcf799ba44022eff7821345917`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 23 Jun 2022 00:42:45 GMT
ADD file:3d8b1da94fcec5d068e3e6465fac70cce404c331bb52e30a5bf7cbd950baa5fe in / 
# Thu, 23 Jun 2022 00:42:45 GMT
CMD ["bash"]
# Thu, 23 Jun 2022 01:15:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		apt-transport-https 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Jun 2022 01:16:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Oct 2022 09:32:16 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 26 Oct 2022 09:32:19 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Wed, 26 Oct 2022 09:32:19 GMT
ENV KAPACITOR_VERSION=1.5.9
# Wed, 26 Oct 2022 09:32:23 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb*
# Wed, 26 Oct 2022 09:32:23 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Wed, 26 Oct 2022 09:32:23 GMT
EXPOSE 9092
# Wed, 26 Oct 2022 09:32:23 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 26 Oct 2022 09:32:23 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Wed, 26 Oct 2022 09:32:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Oct 2022 09:32:23 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:d8ccec8a513f896fedd1d9765f3f2abf98bc8264f61cecf17919c80c9aa7ddbc`  
		Last Modified: Thu, 23 Jun 2022 00:51:18 GMT  
		Size: 43.2 MB (43213121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b40625a6bb21cb2cd6b19ef7592951f90da9ea1d8abf359196bf48300c448b2`  
		Last Modified: Thu, 23 Jun 2022 01:25:28 GMT  
		Size: 10.2 MB (10218617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414226169d0f92fdcd77314cbd06ba7613675d62a3afd63aa88afbf0072c44c2`  
		Last Modified: Thu, 23 Jun 2022 01:25:27 GMT  
		Size: 3.9 MB (3874558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e91e2ccc056ea41305b36e42a264023057da389f2a2587e6ab2b12ee209a82fd`  
		Last Modified: Wed, 26 Oct 2022 09:33:01 GMT  
		Size: 13.1 MB (13145056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c77f85e8621dc2475281878b1bea96078e265e411253c2b3a238aa0333a701`  
		Last Modified: Wed, 26 Oct 2022 09:33:00 GMT  
		Size: 2.9 KB (2855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17792d61932724fad60cec861dde378e6452226f1942e4f8faae22141dbafdbb`  
		Last Modified: Wed, 26 Oct 2022 09:33:03 GMT  
		Size: 34.6 MB (34561653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d03aec48eac8c13081a87c9626c4df2b24913ccbfee52365c12fa9ef157a28`  
		Last Modified: Wed, 26 Oct 2022 09:33:00 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92518b99b158a694fccdfad0381c809c1def182c78badbf86e2642cd0cf253b`  
		Last Modified: Wed, 26 Oct 2022 09:33:00 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.5.9-alpine`

```console
$ docker pull kapacitor@sha256:f0f31429af6264e22af1e8775ee4f5b068f8c252dbb12a18dc7ca8bca6021e17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `kapacitor:1.5.9-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:19babd50485107fc60c68c5575e10fcfcaab84a061f1f8d33c8777f89a83f67e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22653543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff4c0dc3fc30734367b70939eab1f65f2b9415e94acb5a2a30ddbcd7cd9ff4a6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 20:15:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 06 Oct 2022 22:59:26 GMT
ENV KAPACITOR_VERSION=1.5.9
# Thu, 06 Oct 2022 22:59:31 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 06 Oct 2022 22:59:32 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Thu, 06 Oct 2022 22:59:32 GMT
EXPOSE 9092
# Thu, 06 Oct 2022 22:59:32 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 06 Oct 2022 22:59:32 GMT
COPY file:a64543022a380a96e18ddc4e841e034238df340064743d570fa109d5086b123a in /entrypoint.sh 
# Thu, 06 Oct 2022 22:59:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2022 22:59:32 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed07ae854e5b9e7d93d0c5eb8bbcfb2d6e5eddeb00720efe7b55766ce5bfbab`  
		Last Modified: Thu, 06 Oct 2022 20:16:41 GMT  
		Size: 284.6 KB (284583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae6d710af90b1b33cb522971dfe089e2211f3ab1ca3fd49c413a6abb65bca3`  
		Last Modified: Thu, 06 Oct 2022 23:00:14 GMT  
		Size: 19.5 MB (19540837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824abcf1a6f5277dc3c036fcbd7fd7fe396a7e46833634600dd503e0dbb06cff`  
		Last Modified: Thu, 06 Oct 2022 23:00:11 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b85cbf909734bf9f5784fa910bb4cd8b7b1dd2121001a8a1a34362ba54ae46e`  
		Last Modified: Thu, 06 Oct 2022 23:00:11 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.6`

```console
$ docker pull kapacitor@sha256:9b5d97af6fbfd6c9d10c5b3e0e17015b87f510d5bb07d64bc31c369770bc25a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `kapacitor:1.6` - linux; amd64

```console
$ docker pull kapacitor@sha256:8cec39c7e37b50b3be9dc84f2ba9f9f5576d12f783831f36ba1e4710e30d4ee1
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.1 MB (131079997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a6b621879d2018577667232c282eacf43111abe9574cd0c092135248997054`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:30 GMT
ADD file:481dd2da6de71525248eba186feeeafcc73cc956ade0a196a4e8b0c2424e74b9 in / 
# Fri, 09 Dec 2022 01:20:31 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 03:59:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 03:59:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 09 Dec 2022 10:19:59 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Fri, 09 Dec 2022 10:20:00 GMT
ENV KAPACITOR_VERSION=1.6.5
# Fri, 09 Dec 2022 10:20:06 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb*
# Fri, 09 Dec 2022 10:20:07 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Fri, 09 Dec 2022 10:20:07 GMT
EXPOSE 9092
# Fri, 09 Dec 2022 10:20:07 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 09 Dec 2022 10:20:07 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Fri, 09 Dec 2022 10:20:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Dec 2022 10:20:07 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:6e3729cf69e0ce2de9e779575a1fec8b7fb5efdfa822829290ab6d5d1bc3e797`  
		Last Modified: Thu, 08 Dec 2022 14:10:00 GMT  
		Size: 30.4 MB (30428708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c825b7c3eae2da575dfc0111b7abc127cac7fcabaad79f8ca7857c9ad282bda`  
		Last Modified: Fri, 09 Dec 2022 04:09:36 GMT  
		Size: 3.8 MB (3787753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a67ff2d29bee7f9b37c848edd6de7d644c3af0844afa2acaa3f8a4964957db`  
		Last Modified: Fri, 09 Dec 2022 04:09:36 GMT  
		Size: 3.6 MB (3561295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7efe91e59e7ddb3a591370ed7071dc5b5afb7f277f5f35ce15086f7f6ba868`  
		Last Modified: Fri, 09 Dec 2022 10:20:30 GMT  
		Size: 28.9 MB (28885453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47588d010403f158218c7513ca34204143423f5d934d01d643213de5880d5d58`  
		Last Modified: Fri, 09 Dec 2022 10:20:35 GMT  
		Size: 64.4 MB (64416332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd480ac8c32b0176fa2af5ea1409428d27f906be92425d4340b275b71c183e31`  
		Last Modified: Fri, 09 Dec 2022 10:20:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf53978fddf30b6e6718c3606c522fa381182e0f3a7fd7f485049f175874d04`  
		Last Modified: Fri, 09 Dec 2022 10:20:28 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.6` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:dff8ca446927f04768f4a24eea1113abc20694b64216e7949720d3f8827baba5
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123679419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86ed9f9c78b170f08027621f5b19abb3054b22051491ae64ea8c2a1d6ce748d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:57 GMT
ADD file:429a55a11d4bcd15647d1316d9debd9ead4b4ab5c0b9146894d07c39aa814290 in / 
# Fri, 09 Dec 2022 01:46:57 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 04:31:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 04:31:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 09 Dec 2022 08:04:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Fri, 09 Dec 2022 08:04:10 GMT
ENV KAPACITOR_VERSION=1.6.5
# Fri, 09 Dec 2022 08:04:15 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb*
# Fri, 09 Dec 2022 08:04:16 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Fri, 09 Dec 2022 08:04:16 GMT
EXPOSE 9092
# Fri, 09 Dec 2022 08:04:16 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 09 Dec 2022 08:04:16 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Fri, 09 Dec 2022 08:04:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Dec 2022 08:04:16 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:10175de2f0c4f7d306f660ee073bce12b824c8012dd19b3c140aae053fabd1cc`  
		Last Modified: Thu, 08 Dec 2022 18:50:01 GMT  
		Size: 28.4 MB (28384475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736070d442832c424ec277741fa07348bb6d393fc18cd0035a007f239b2052f6`  
		Last Modified: Fri, 09 Dec 2022 04:42:26 GMT  
		Size: 3.8 MB (3760792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ccf4e81d4bcba80b626706c512629e42393763d6c73b8b17ea547eb4c854af`  
		Last Modified: Fri, 09 Dec 2022 04:42:25 GMT  
		Size: 3.5 MB (3537208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55b8d60e551a3395228d2440788f0eb3d7f5c58931cbbffba29b775cf595e77`  
		Last Modified: Fri, 09 Dec 2022 08:04:31 GMT  
		Size: 27.1 MB (27074272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1f9cf93fdbd909aa99da869acf6fd11307b364b4360a4783bd819ed6233566`  
		Last Modified: Fri, 09 Dec 2022 08:04:34 GMT  
		Size: 60.9 MB (60922216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3df5660e5a4dcb7dd855412a60d8676e0457fb9763df53436c6af80716dd1b6`  
		Last Modified: Fri, 09 Dec 2022 08:04:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffd56efafbc123764033864f966d8403ffb3bbba5a33ecd18adc7d04d7e6182`  
		Last Modified: Fri, 09 Dec 2022 08:04:29 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.6-alpine`

```console
$ docker pull kapacitor@sha256:19fdd2d84a7fdcda3fef95b134071ce501f20c2f95a3ce8cd3504d21be60c004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `kapacitor:1.6-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:ff3016de88eda9ee9d775cb885b78a997a44b5d759b1e6df1cbd149196e1b0bc
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.4 MB (67432736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8856d4f574f050ef63777bc8173560acbfbdebaba0e167ab06616c57c6b9834b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Sat, 12 Nov 2022 04:19:23 GMT
ADD file:ceeb6e8632fafc657116cbf3afbd522185a16963230b57881073dad22eb0e1a3 in / 
# Sat, 12 Nov 2022 04:19:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 08:32:05 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Sat, 12 Nov 2022 08:32:06 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Sat, 12 Nov 2022 08:32:06 GMT
ENV KAPACITOR_VERSION=1.6.5
# Sat, 12 Nov 2022 08:32:14 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Sat, 12 Nov 2022 08:32:15 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Sat, 12 Nov 2022 08:32:15 GMT
EXPOSE 9092
# Sat, 12 Nov 2022 08:32:15 GMT
VOLUME [/var/lib/kapacitor]
# Sat, 12 Nov 2022 08:32:15 GMT
COPY file:a64543022a380a96e18ddc4e841e034238df340064743d570fa109d5086b123a in /entrypoint.sh 
# Sat, 12 Nov 2022 08:32:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 12 Nov 2022 08:32:15 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:ca7dd9ec2225f2385955c43b2379305acd51543c28cf1d4e94522b3d94cce3ce`  
		Last Modified: Sat, 12 Nov 2022 02:52:15 GMT  
		Size: 2.8 MB (2806272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec8c4909872f004bb7fe69291336b9a1be138c76e18c8706b787cce0ddf850c`  
		Last Modified: Sat, 12 Nov 2022 08:32:35 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929562737169c4393ad5f6103decd57cf14ff1d393dfe7653bcd6ca7bfdda6f5`  
		Last Modified: Sat, 12 Nov 2022 08:32:35 GMT  
		Size: 284.8 KB (284752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d1ff08550ae28e870027839013e280fc09684f0982ed4c2d3c90f8056b4878`  
		Last Modified: Sat, 12 Nov 2022 08:32:43 GMT  
		Size: 64.3 MB (64340975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ea3489d0c1436760d9853468918a92f127fd0f373492eb22b709fb34a284b1`  
		Last Modified: Sat, 12 Nov 2022 08:32:35 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e519d8fabb4adf299cd6de32215a329e4e155a08c7bf42cabbf0d9cac07d5c61`  
		Last Modified: Sat, 12 Nov 2022 08:32:35 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.6.5`

```console
$ docker pull kapacitor@sha256:9b5d97af6fbfd6c9d10c5b3e0e17015b87f510d5bb07d64bc31c369770bc25a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `kapacitor:1.6.5` - linux; amd64

```console
$ docker pull kapacitor@sha256:8cec39c7e37b50b3be9dc84f2ba9f9f5576d12f783831f36ba1e4710e30d4ee1
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.1 MB (131079997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a6b621879d2018577667232c282eacf43111abe9574cd0c092135248997054`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:30 GMT
ADD file:481dd2da6de71525248eba186feeeafcc73cc956ade0a196a4e8b0c2424e74b9 in / 
# Fri, 09 Dec 2022 01:20:31 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 03:59:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 03:59:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 09 Dec 2022 10:19:59 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Fri, 09 Dec 2022 10:20:00 GMT
ENV KAPACITOR_VERSION=1.6.5
# Fri, 09 Dec 2022 10:20:06 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb*
# Fri, 09 Dec 2022 10:20:07 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Fri, 09 Dec 2022 10:20:07 GMT
EXPOSE 9092
# Fri, 09 Dec 2022 10:20:07 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 09 Dec 2022 10:20:07 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Fri, 09 Dec 2022 10:20:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Dec 2022 10:20:07 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:6e3729cf69e0ce2de9e779575a1fec8b7fb5efdfa822829290ab6d5d1bc3e797`  
		Last Modified: Thu, 08 Dec 2022 14:10:00 GMT  
		Size: 30.4 MB (30428708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c825b7c3eae2da575dfc0111b7abc127cac7fcabaad79f8ca7857c9ad282bda`  
		Last Modified: Fri, 09 Dec 2022 04:09:36 GMT  
		Size: 3.8 MB (3787753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a67ff2d29bee7f9b37c848edd6de7d644c3af0844afa2acaa3f8a4964957db`  
		Last Modified: Fri, 09 Dec 2022 04:09:36 GMT  
		Size: 3.6 MB (3561295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7efe91e59e7ddb3a591370ed7071dc5b5afb7f277f5f35ce15086f7f6ba868`  
		Last Modified: Fri, 09 Dec 2022 10:20:30 GMT  
		Size: 28.9 MB (28885453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47588d010403f158218c7513ca34204143423f5d934d01d643213de5880d5d58`  
		Last Modified: Fri, 09 Dec 2022 10:20:35 GMT  
		Size: 64.4 MB (64416332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd480ac8c32b0176fa2af5ea1409428d27f906be92425d4340b275b71c183e31`  
		Last Modified: Fri, 09 Dec 2022 10:20:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf53978fddf30b6e6718c3606c522fa381182e0f3a7fd7f485049f175874d04`  
		Last Modified: Fri, 09 Dec 2022 10:20:28 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.6.5` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:dff8ca446927f04768f4a24eea1113abc20694b64216e7949720d3f8827baba5
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123679419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86ed9f9c78b170f08027621f5b19abb3054b22051491ae64ea8c2a1d6ce748d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:57 GMT
ADD file:429a55a11d4bcd15647d1316d9debd9ead4b4ab5c0b9146894d07c39aa814290 in / 
# Fri, 09 Dec 2022 01:46:57 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 04:31:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 04:31:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 09 Dec 2022 08:04:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Fri, 09 Dec 2022 08:04:10 GMT
ENV KAPACITOR_VERSION=1.6.5
# Fri, 09 Dec 2022 08:04:15 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb*
# Fri, 09 Dec 2022 08:04:16 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Fri, 09 Dec 2022 08:04:16 GMT
EXPOSE 9092
# Fri, 09 Dec 2022 08:04:16 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 09 Dec 2022 08:04:16 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Fri, 09 Dec 2022 08:04:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Dec 2022 08:04:16 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:10175de2f0c4f7d306f660ee073bce12b824c8012dd19b3c140aae053fabd1cc`  
		Last Modified: Thu, 08 Dec 2022 18:50:01 GMT  
		Size: 28.4 MB (28384475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736070d442832c424ec277741fa07348bb6d393fc18cd0035a007f239b2052f6`  
		Last Modified: Fri, 09 Dec 2022 04:42:26 GMT  
		Size: 3.8 MB (3760792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ccf4e81d4bcba80b626706c512629e42393763d6c73b8b17ea547eb4c854af`  
		Last Modified: Fri, 09 Dec 2022 04:42:25 GMT  
		Size: 3.5 MB (3537208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55b8d60e551a3395228d2440788f0eb3d7f5c58931cbbffba29b775cf595e77`  
		Last Modified: Fri, 09 Dec 2022 08:04:31 GMT  
		Size: 27.1 MB (27074272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1f9cf93fdbd909aa99da869acf6fd11307b364b4360a4783bd819ed6233566`  
		Last Modified: Fri, 09 Dec 2022 08:04:34 GMT  
		Size: 60.9 MB (60922216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3df5660e5a4dcb7dd855412a60d8676e0457fb9763df53436c6af80716dd1b6`  
		Last Modified: Fri, 09 Dec 2022 08:04:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffd56efafbc123764033864f966d8403ffb3bbba5a33ecd18adc7d04d7e6182`  
		Last Modified: Fri, 09 Dec 2022 08:04:29 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.6.5-alpine`

```console
$ docker pull kapacitor@sha256:19fdd2d84a7fdcda3fef95b134071ce501f20c2f95a3ce8cd3504d21be60c004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `kapacitor:1.6.5-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:ff3016de88eda9ee9d775cb885b78a997a44b5d759b1e6df1cbd149196e1b0bc
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.4 MB (67432736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8856d4f574f050ef63777bc8173560acbfbdebaba0e167ab06616c57c6b9834b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Sat, 12 Nov 2022 04:19:23 GMT
ADD file:ceeb6e8632fafc657116cbf3afbd522185a16963230b57881073dad22eb0e1a3 in / 
# Sat, 12 Nov 2022 04:19:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 08:32:05 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Sat, 12 Nov 2022 08:32:06 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Sat, 12 Nov 2022 08:32:06 GMT
ENV KAPACITOR_VERSION=1.6.5
# Sat, 12 Nov 2022 08:32:14 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Sat, 12 Nov 2022 08:32:15 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Sat, 12 Nov 2022 08:32:15 GMT
EXPOSE 9092
# Sat, 12 Nov 2022 08:32:15 GMT
VOLUME [/var/lib/kapacitor]
# Sat, 12 Nov 2022 08:32:15 GMT
COPY file:a64543022a380a96e18ddc4e841e034238df340064743d570fa109d5086b123a in /entrypoint.sh 
# Sat, 12 Nov 2022 08:32:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 12 Nov 2022 08:32:15 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:ca7dd9ec2225f2385955c43b2379305acd51543c28cf1d4e94522b3d94cce3ce`  
		Last Modified: Sat, 12 Nov 2022 02:52:15 GMT  
		Size: 2.8 MB (2806272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec8c4909872f004bb7fe69291336b9a1be138c76e18c8706b787cce0ddf850c`  
		Last Modified: Sat, 12 Nov 2022 08:32:35 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929562737169c4393ad5f6103decd57cf14ff1d393dfe7653bcd6ca7bfdda6f5`  
		Last Modified: Sat, 12 Nov 2022 08:32:35 GMT  
		Size: 284.8 KB (284752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d1ff08550ae28e870027839013e280fc09684f0982ed4c2d3c90f8056b4878`  
		Last Modified: Sat, 12 Nov 2022 08:32:43 GMT  
		Size: 64.3 MB (64340975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ea3489d0c1436760d9853468918a92f127fd0f373492eb22b709fb34a284b1`  
		Last Modified: Sat, 12 Nov 2022 08:32:35 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e519d8fabb4adf299cd6de32215a329e4e155a08c7bf42cabbf0d9cac07d5c61`  
		Last Modified: Sat, 12 Nov 2022 08:32:35 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:19fdd2d84a7fdcda3fef95b134071ce501f20c2f95a3ce8cd3504d21be60c004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:ff3016de88eda9ee9d775cb885b78a997a44b5d759b1e6df1cbd149196e1b0bc
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.4 MB (67432736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8856d4f574f050ef63777bc8173560acbfbdebaba0e167ab06616c57c6b9834b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Sat, 12 Nov 2022 04:19:23 GMT
ADD file:ceeb6e8632fafc657116cbf3afbd522185a16963230b57881073dad22eb0e1a3 in / 
# Sat, 12 Nov 2022 04:19:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 08:32:05 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Sat, 12 Nov 2022 08:32:06 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Sat, 12 Nov 2022 08:32:06 GMT
ENV KAPACITOR_VERSION=1.6.5
# Sat, 12 Nov 2022 08:32:14 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Sat, 12 Nov 2022 08:32:15 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Sat, 12 Nov 2022 08:32:15 GMT
EXPOSE 9092
# Sat, 12 Nov 2022 08:32:15 GMT
VOLUME [/var/lib/kapacitor]
# Sat, 12 Nov 2022 08:32:15 GMT
COPY file:a64543022a380a96e18ddc4e841e034238df340064743d570fa109d5086b123a in /entrypoint.sh 
# Sat, 12 Nov 2022 08:32:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 12 Nov 2022 08:32:15 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:ca7dd9ec2225f2385955c43b2379305acd51543c28cf1d4e94522b3d94cce3ce`  
		Last Modified: Sat, 12 Nov 2022 02:52:15 GMT  
		Size: 2.8 MB (2806272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec8c4909872f004bb7fe69291336b9a1be138c76e18c8706b787cce0ddf850c`  
		Last Modified: Sat, 12 Nov 2022 08:32:35 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929562737169c4393ad5f6103decd57cf14ff1d393dfe7653bcd6ca7bfdda6f5`  
		Last Modified: Sat, 12 Nov 2022 08:32:35 GMT  
		Size: 284.8 KB (284752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d1ff08550ae28e870027839013e280fc09684f0982ed4c2d3c90f8056b4878`  
		Last Modified: Sat, 12 Nov 2022 08:32:43 GMT  
		Size: 64.3 MB (64340975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ea3489d0c1436760d9853468918a92f127fd0f373492eb22b709fb34a284b1`  
		Last Modified: Sat, 12 Nov 2022 08:32:35 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e519d8fabb4adf299cd6de32215a329e4e155a08c7bf42cabbf0d9cac07d5c61`  
		Last Modified: Sat, 12 Nov 2022 08:32:35 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:9b5d97af6fbfd6c9d10c5b3e0e17015b87f510d5bb07d64bc31c369770bc25a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:8cec39c7e37b50b3be9dc84f2ba9f9f5576d12f783831f36ba1e4710e30d4ee1
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.1 MB (131079997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a6b621879d2018577667232c282eacf43111abe9574cd0c092135248997054`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:30 GMT
ADD file:481dd2da6de71525248eba186feeeafcc73cc956ade0a196a4e8b0c2424e74b9 in / 
# Fri, 09 Dec 2022 01:20:31 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 03:59:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 03:59:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 09 Dec 2022 10:19:59 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Fri, 09 Dec 2022 10:20:00 GMT
ENV KAPACITOR_VERSION=1.6.5
# Fri, 09 Dec 2022 10:20:06 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb*
# Fri, 09 Dec 2022 10:20:07 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Fri, 09 Dec 2022 10:20:07 GMT
EXPOSE 9092
# Fri, 09 Dec 2022 10:20:07 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 09 Dec 2022 10:20:07 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Fri, 09 Dec 2022 10:20:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Dec 2022 10:20:07 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:6e3729cf69e0ce2de9e779575a1fec8b7fb5efdfa822829290ab6d5d1bc3e797`  
		Last Modified: Thu, 08 Dec 2022 14:10:00 GMT  
		Size: 30.4 MB (30428708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c825b7c3eae2da575dfc0111b7abc127cac7fcabaad79f8ca7857c9ad282bda`  
		Last Modified: Fri, 09 Dec 2022 04:09:36 GMT  
		Size: 3.8 MB (3787753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a67ff2d29bee7f9b37c848edd6de7d644c3af0844afa2acaa3f8a4964957db`  
		Last Modified: Fri, 09 Dec 2022 04:09:36 GMT  
		Size: 3.6 MB (3561295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7efe91e59e7ddb3a591370ed7071dc5b5afb7f277f5f35ce15086f7f6ba868`  
		Last Modified: Fri, 09 Dec 2022 10:20:30 GMT  
		Size: 28.9 MB (28885453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47588d010403f158218c7513ca34204143423f5d934d01d643213de5880d5d58`  
		Last Modified: Fri, 09 Dec 2022 10:20:35 GMT  
		Size: 64.4 MB (64416332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd480ac8c32b0176fa2af5ea1409428d27f906be92425d4340b275b71c183e31`  
		Last Modified: Fri, 09 Dec 2022 10:20:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf53978fddf30b6e6718c3606c522fa381182e0f3a7fd7f485049f175874d04`  
		Last Modified: Fri, 09 Dec 2022 10:20:28 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:dff8ca446927f04768f4a24eea1113abc20694b64216e7949720d3f8827baba5
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123679419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86ed9f9c78b170f08027621f5b19abb3054b22051491ae64ea8c2a1d6ce748d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:57 GMT
ADD file:429a55a11d4bcd15647d1316d9debd9ead4b4ab5c0b9146894d07c39aa814290 in / 
# Fri, 09 Dec 2022 01:46:57 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 04:31:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 04:31:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 09 Dec 2022 08:04:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Fri, 09 Dec 2022 08:04:10 GMT
ENV KAPACITOR_VERSION=1.6.5
# Fri, 09 Dec 2022 08:04:15 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb*
# Fri, 09 Dec 2022 08:04:16 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Fri, 09 Dec 2022 08:04:16 GMT
EXPOSE 9092
# Fri, 09 Dec 2022 08:04:16 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 09 Dec 2022 08:04:16 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Fri, 09 Dec 2022 08:04:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Dec 2022 08:04:16 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:10175de2f0c4f7d306f660ee073bce12b824c8012dd19b3c140aae053fabd1cc`  
		Last Modified: Thu, 08 Dec 2022 18:50:01 GMT  
		Size: 28.4 MB (28384475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736070d442832c424ec277741fa07348bb6d393fc18cd0035a007f239b2052f6`  
		Last Modified: Fri, 09 Dec 2022 04:42:26 GMT  
		Size: 3.8 MB (3760792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ccf4e81d4bcba80b626706c512629e42393763d6c73b8b17ea547eb4c854af`  
		Last Modified: Fri, 09 Dec 2022 04:42:25 GMT  
		Size: 3.5 MB (3537208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55b8d60e551a3395228d2440788f0eb3d7f5c58931cbbffba29b775cf595e77`  
		Last Modified: Fri, 09 Dec 2022 08:04:31 GMT  
		Size: 27.1 MB (27074272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1f9cf93fdbd909aa99da869acf6fd11307b364b4360a4783bd819ed6233566`  
		Last Modified: Fri, 09 Dec 2022 08:04:34 GMT  
		Size: 60.9 MB (60922216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3df5660e5a4dcb7dd855412a60d8676e0457fb9763df53436c6af80716dd1b6`  
		Last Modified: Fri, 09 Dec 2022 08:04:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffd56efafbc123764033864f966d8403ffb3bbba5a33ecd18adc7d04d7e6182`  
		Last Modified: Fri, 09 Dec 2022 08:04:29 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
