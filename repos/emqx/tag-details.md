<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `emqx`

-	[`emqx:4`](#emqx4)
-	[`emqx:4.3`](#emqx43)
-	[`emqx:4.3.22`](#emqx4322)
-	[`emqx:4.4`](#emqx44)
-	[`emqx:4.4.14`](#emqx4414)
-	[`emqx:5`](#emqx5)
-	[`emqx:5.0`](#emqx50)
-	[`emqx:5.0.15`](#emqx5015)
-	[`emqx:latest`](#emqxlatest)

## `emqx:4`

```console
$ docker pull emqx@sha256:c59900e115b1dda693db21259665002b0fbcfb368ad8ccc5c5aa44b9de738a93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `emqx:4` - linux; amd64

```console
$ docker pull emqx@sha256:694fec8a03aa7424cd8fc9ae19b70d863567fa18751d6908d3148f7b8edbc48a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81163520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e156deb9005fb2fc2d647f71d5986a4077805155a66566408e5a646ecc17dcc`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["emqx","foreground"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:48:56 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends curl unzip ca-certificates;     rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 19:22:14 GMT
RUN set -eu;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx
# Thu, 12 Jan 2023 19:22:14 GMT
ENV EMQX_VERSION=4.4.14
# Thu, 12 Jan 2023 19:22:14 GMT
ENV OTP=otp24.3.4.2-1
# Thu, 12 Jan 2023 19:22:19 GMT
RUN set -eu;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="b70590c16effa60759f6ab08a4a0e666ad4487cf0eb88263ab992e44b440b815"; fi;     if [ ${arch} = "arm64" ]; then sha256="98b78798577ddb7685c42dc41b7a758aacfe27924c8be4510e2057527a142ba0"; fi;     ID="$(sed -n '/^ID=/p' /etc/os-release | sed -r 's/ID=(.*)/\1/g' | sed 's/\"//g')";     VERSION_ID="$(sed -n '/^VERSION_ID=/p' /etc/os-release | sed -r 's/VERSION_ID=(.*)/\1/g' | sed 's/\"//g')";     pkg="emqx-${EMQX_VERSION}-${OTP}-${ID}${VERSION_ID}-${arch}.zip";     curl -f -O -L https://www.emqx.com/en/downloads/broker/${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c || exit 1;     unzip -q -d /opt $pkg;     chgrp -Rf emqx /opt/emqx;     chmod -Rf g+w /opt/emqx;     chown -Rf emqx /opt/emqx;     ln -s /opt/emqx/bin/* /usr/local/bin/;     rm -rf $pkg
# Thu, 12 Jan 2023 19:22:20 GMT
WORKDIR /opt/emqx
# Thu, 12 Jan 2023 19:22:20 GMT
USER emqx
# Thu, 12 Jan 2023 19:22:20 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Thu, 12 Jan 2023 19:22:20 GMT
EXPOSE 11883 18083 1883 4369 4370 5369 6369 6370 8081 8083 8084 8883
# Thu, 12 Jan 2023 19:22:20 GMT
COPY file:6dd7e4492be7572c69a0409bd663714c620b2048d81308e1877901073db7f426 in /usr/bin/ 
# Thu, 12 Jan 2023 19:22:20 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:22:20 GMT
CMD ["emqx" "foreground"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d3e57ec5f70305a1554472a8bc80d1caf9263b899fdc9e84d30606e2e849d5`  
		Last Modified: Wed, 11 Jan 2023 03:49:51 GMT  
		Size: 2.6 MB (2569545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f63c8cab2b9d61d2f3471896c134214a6509df1ae6015168016b844882fb732`  
		Last Modified: Thu, 12 Jan 2023 19:22:59 GMT  
		Size: 4.1 KB (4113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e57fdce70951ec51dd6c25118be99b7c8872affb93ce95cea5b9f537c76e18c`  
		Last Modified: Thu, 12 Jan 2023 19:23:04 GMT  
		Size: 47.2 MB (47191782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1902d059c5ab510e3ecb3817b29cb4a75202de84e9d5532dff27a0c63709575d`  
		Last Modified: Thu, 12 Jan 2023 19:22:59 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `emqx:4` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:22794a16c633fff2a45a3df3c8df47c03019d0712dd152cb444b2646455299d9
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.6 MB (72585304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ac2f90ba62b4be79787556e17962aaf4cd956a375e0cc8240ba0ccac95adc75`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["emqx","foreground"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 13:30:38 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends curl unzip ca-certificates;     rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 18:39:30 GMT
RUN set -eu;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx
# Thu, 12 Jan 2023 18:39:31 GMT
ENV EMQX_VERSION=4.4.14
# Thu, 12 Jan 2023 18:39:31 GMT
ENV OTP=otp24.3.4.2-1
# Thu, 12 Jan 2023 18:39:34 GMT
RUN set -eu;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="b70590c16effa60759f6ab08a4a0e666ad4487cf0eb88263ab992e44b440b815"; fi;     if [ ${arch} = "arm64" ]; then sha256="98b78798577ddb7685c42dc41b7a758aacfe27924c8be4510e2057527a142ba0"; fi;     ID="$(sed -n '/^ID=/p' /etc/os-release | sed -r 's/ID=(.*)/\1/g' | sed 's/\"//g')";     VERSION_ID="$(sed -n '/^VERSION_ID=/p' /etc/os-release | sed -r 's/VERSION_ID=(.*)/\1/g' | sed 's/\"//g')";     pkg="emqx-${EMQX_VERSION}-${OTP}-${ID}${VERSION_ID}-${arch}.zip";     curl -f -O -L https://www.emqx.com/en/downloads/broker/${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c || exit 1;     unzip -q -d /opt $pkg;     chgrp -Rf emqx /opt/emqx;     chmod -Rf g+w /opt/emqx;     chown -Rf emqx /opt/emqx;     ln -s /opt/emqx/bin/* /usr/local/bin/;     rm -rf $pkg
# Thu, 12 Jan 2023 18:39:34 GMT
WORKDIR /opt/emqx
# Thu, 12 Jan 2023 18:39:35 GMT
USER emqx
# Thu, 12 Jan 2023 18:39:35 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Thu, 12 Jan 2023 18:39:35 GMT
EXPOSE 11883 18083 1883 4369 4370 5369 6369 6370 8081 8083 8084 8883
# Thu, 12 Jan 2023 18:39:35 GMT
COPY file:6dd7e4492be7572c69a0409bd663714c620b2048d81308e1877901073db7f426 in /usr/bin/ 
# Thu, 12 Jan 2023 18:39:35 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Thu, 12 Jan 2023 18:39:35 GMT
CMD ["emqx" "foreground"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8afc846b3288c61befe97bcb3990e00d2ade2bdcc5b29cee6ecc6cf58f83d0b`  
		Last Modified: Wed, 11 Jan 2023 13:31:27 GMT  
		Size: 2.6 MB (2559366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50de8caa1b2059ca0b07a84e26225067053bac5fd9688b4df0214bf751e547db`  
		Last Modified: Thu, 12 Jan 2023 18:40:13 GMT  
		Size: 4.1 KB (4118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe1c3a6f6e4dbe4bbb2d66d659c7871554f17a8a7c1a689718c71fabc3da417`  
		Last Modified: Thu, 12 Jan 2023 18:40:17 GMT  
		Size: 40.0 MB (39975899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3192fef4181a18cfae057cf3461c8ce3941062cfb2d50251272d955fdd087f`  
		Last Modified: Thu, 12 Jan 2023 18:40:13 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `emqx:4.3`

```console
$ docker pull emqx@sha256:b299d056f68978b72d301132fd0c4d3ac67515c9c41e462a5ec114c435ddfd5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `emqx:4.3` - linux; amd64

```console
$ docker pull emqx@sha256:60d34652fe2f2a17a67e2b670e70b85bd9f6929ada7b8c471297af2a986e7b58
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68296745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:905184f8643e4175bd260191db499a3c504ff4c8744568a7f368e7072751b6a2`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["emqx","foreground"]`

```dockerfile
# Wed, 11 Jan 2023 02:35:07 GMT
ADD file:67ceb946e54c26c505b5f9f393d77befbd5e9b3b5c069ca301e314ecc74456b0 in / 
# Wed, 11 Jan 2023 02:35:07 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:48:37 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends curl unzip ca-certificates;     rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 19:22:04 GMT
RUN set -eu;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx
# Thu, 12 Jan 2023 19:22:04 GMT
ENV EMQX_VERSION=4.3.22
# Thu, 12 Jan 2023 19:22:09 GMT
RUN set -eu;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="e5f6874eb29f83cce9c84afae95cc05de11ed8aa47f046783afa1c75e812a4b7"; fi;     if [ ${arch} = "arm64" ]; then sha256="85bf586fdf1c11f4057f6137faa4390100a3f3eb0e285e8a68e63c7d15bea09b"; fi;     ID="$(sed -n '/^ID=/p' /etc/os-release | sed -r 's/ID=(.*)/\1/g' | sed 's/\"//g')";     VERSION_ID="$(sed -n '/^VERSION_ID=/p' /etc/os-release | sed -r 's/VERSION_ID=(.*)/\1/g' | sed 's/\"//g')";     pkg="emqx-${ID}${VERSION_ID}-${EMQX_VERSION}-${arch}.zip";     curl -f -O -L https://www.emqx.com/en/downloads/broker/${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c || exit 1;     unzip -q -d /opt $pkg;     chgrp -Rf emqx /opt/emqx;     chmod -Rf g+w /opt/emqx;     chown -Rf emqx /opt/emqx;     ln -s /opt/emqx/bin/* /usr/local/bin/;     rm -rf $pkg
# Thu, 12 Jan 2023 19:22:09 GMT
WORKDIR /opt/emqx
# Thu, 12 Jan 2023 19:22:10 GMT
USER emqx
# Thu, 12 Jan 2023 19:22:10 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Thu, 12 Jan 2023 19:22:10 GMT
EXPOSE 11883 18083 1883 4369 4370 5369 6369 6370 8081 8083 8084 8883
# Thu, 12 Jan 2023 19:22:10 GMT
COPY file:715d536465bb73dc7e7d11b7af4806884602823836c36e9ec561de98ccbf3424 in /usr/bin/ 
# Thu, 12 Jan 2023 19:22:10 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:22:10 GMT
CMD ["emqx" "foreground"]
```

-	Layers:
	-	`sha256:548fcab5fe888f589dd092c68b813bfd65359878bd1950d6b753f749e82ebd7c`  
		Last Modified: Wed, 11 Jan 2023 02:39:48 GMT  
		Size: 27.1 MB (27140352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661145169f684ea6623410a6b2e6bac4fff75dcec9474b51911e88a29706557f`  
		Last Modified: Wed, 11 Jan 2023 03:49:39 GMT  
		Size: 4.6 MB (4612517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c729c292ec153abc1a59a47bbbaeec2775a873a39ce5578f9211146d447eb24c`  
		Last Modified: Thu, 12 Jan 2023 19:22:46 GMT  
		Size: 4.1 KB (4113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b41a70a2a0cbe37bd893a6f30513e5848362f11a72767d3ba0241f0680f9f7`  
		Last Modified: Thu, 12 Jan 2023 19:22:50 GMT  
		Size: 36.5 MB (36538722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b20fd74f38c808dff2d1a3b046e365e320984cb93075a176f997825ab6e878e`  
		Last Modified: Thu, 12 Jan 2023 19:22:46 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `emqx:4.3` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:b3eb44d4e1c15c9a297adb5cb261d0c493706ecb20091cf5ac8b6fc39dbc8a2c
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66628370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:257855eccdee554c8126ace796f246a4160f0e1aa75ed3a737c52ef819efcfc1`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["emqx","foreground"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:52 GMT
ADD file:08addf73dde8bf5ac64e0d9bdd1997ce5f406976c19da431616783c14fdb36ac in / 
# Wed, 11 Jan 2023 02:57:52 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 13:30:20 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends curl unzip ca-certificates;     rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 18:39:22 GMT
RUN set -eu;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx
# Thu, 12 Jan 2023 18:39:22 GMT
ENV EMQX_VERSION=4.3.22
# Thu, 12 Jan 2023 18:39:27 GMT
RUN set -eu;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="e5f6874eb29f83cce9c84afae95cc05de11ed8aa47f046783afa1c75e812a4b7"; fi;     if [ ${arch} = "arm64" ]; then sha256="85bf586fdf1c11f4057f6137faa4390100a3f3eb0e285e8a68e63c7d15bea09b"; fi;     ID="$(sed -n '/^ID=/p' /etc/os-release | sed -r 's/ID=(.*)/\1/g' | sed 's/\"//g')";     VERSION_ID="$(sed -n '/^VERSION_ID=/p' /etc/os-release | sed -r 's/VERSION_ID=(.*)/\1/g' | sed 's/\"//g')";     pkg="emqx-${ID}${VERSION_ID}-${EMQX_VERSION}-${arch}.zip";     curl -f -O -L https://www.emqx.com/en/downloads/broker/${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c || exit 1;     unzip -q -d /opt $pkg;     chgrp -Rf emqx /opt/emqx;     chmod -Rf g+w /opt/emqx;     chown -Rf emqx /opt/emqx;     ln -s /opt/emqx/bin/* /usr/local/bin/;     rm -rf $pkg
# Thu, 12 Jan 2023 18:39:27 GMT
WORKDIR /opt/emqx
# Thu, 12 Jan 2023 18:39:27 GMT
USER emqx
# Thu, 12 Jan 2023 18:39:27 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Thu, 12 Jan 2023 18:39:27 GMT
EXPOSE 11883 18083 1883 4369 4370 5369 6369 6370 8081 8083 8084 8883
# Thu, 12 Jan 2023 18:39:27 GMT
COPY file:715d536465bb73dc7e7d11b7af4806884602823836c36e9ec561de98ccbf3424 in /usr/bin/ 
# Thu, 12 Jan 2023 18:39:27 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Thu, 12 Jan 2023 18:39:28 GMT
CMD ["emqx" "foreground"]
```

-	Layers:
	-	`sha256:7fac02f4cd2bcf681b9e156a67009cf4609f45447818b52327d93553bfeb2965`  
		Last Modified: Wed, 11 Jan 2023 03:01:58 GMT  
		Size: 25.9 MB (25914925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afe26eee17fa1a49cb6f89f853e34d82f13997ca667f6e7407e6b002aeb8473`  
		Last Modified: Wed, 11 Jan 2023 13:31:15 GMT  
		Size: 4.5 MB (4490429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adcdcae4c112441fb05d4a3829712274f5f3d6d29d0352457ae9cf661668cad`  
		Last Modified: Thu, 12 Jan 2023 18:40:00 GMT  
		Size: 4.1 KB (4121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9145559cc33cfe393e5a5a3bc4a34b5c9bf45d7c0614d61b05ed0408128442fd`  
		Last Modified: Thu, 12 Jan 2023 18:40:04 GMT  
		Size: 36.2 MB (36217854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c5f0d674a2772d416f8aaa10d9c9c19e3431d9e09aac73089c485327366b7c`  
		Last Modified: Thu, 12 Jan 2023 18:40:00 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `emqx:4.3.22`

```console
$ docker pull emqx@sha256:b299d056f68978b72d301132fd0c4d3ac67515c9c41e462a5ec114c435ddfd5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `emqx:4.3.22` - linux; amd64

```console
$ docker pull emqx@sha256:60d34652fe2f2a17a67e2b670e70b85bd9f6929ada7b8c471297af2a986e7b58
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68296745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:905184f8643e4175bd260191db499a3c504ff4c8744568a7f368e7072751b6a2`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["emqx","foreground"]`

```dockerfile
# Wed, 11 Jan 2023 02:35:07 GMT
ADD file:67ceb946e54c26c505b5f9f393d77befbd5e9b3b5c069ca301e314ecc74456b0 in / 
# Wed, 11 Jan 2023 02:35:07 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:48:37 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends curl unzip ca-certificates;     rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 19:22:04 GMT
RUN set -eu;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx
# Thu, 12 Jan 2023 19:22:04 GMT
ENV EMQX_VERSION=4.3.22
# Thu, 12 Jan 2023 19:22:09 GMT
RUN set -eu;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="e5f6874eb29f83cce9c84afae95cc05de11ed8aa47f046783afa1c75e812a4b7"; fi;     if [ ${arch} = "arm64" ]; then sha256="85bf586fdf1c11f4057f6137faa4390100a3f3eb0e285e8a68e63c7d15bea09b"; fi;     ID="$(sed -n '/^ID=/p' /etc/os-release | sed -r 's/ID=(.*)/\1/g' | sed 's/\"//g')";     VERSION_ID="$(sed -n '/^VERSION_ID=/p' /etc/os-release | sed -r 's/VERSION_ID=(.*)/\1/g' | sed 's/\"//g')";     pkg="emqx-${ID}${VERSION_ID}-${EMQX_VERSION}-${arch}.zip";     curl -f -O -L https://www.emqx.com/en/downloads/broker/${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c || exit 1;     unzip -q -d /opt $pkg;     chgrp -Rf emqx /opt/emqx;     chmod -Rf g+w /opt/emqx;     chown -Rf emqx /opt/emqx;     ln -s /opt/emqx/bin/* /usr/local/bin/;     rm -rf $pkg
# Thu, 12 Jan 2023 19:22:09 GMT
WORKDIR /opt/emqx
# Thu, 12 Jan 2023 19:22:10 GMT
USER emqx
# Thu, 12 Jan 2023 19:22:10 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Thu, 12 Jan 2023 19:22:10 GMT
EXPOSE 11883 18083 1883 4369 4370 5369 6369 6370 8081 8083 8084 8883
# Thu, 12 Jan 2023 19:22:10 GMT
COPY file:715d536465bb73dc7e7d11b7af4806884602823836c36e9ec561de98ccbf3424 in /usr/bin/ 
# Thu, 12 Jan 2023 19:22:10 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:22:10 GMT
CMD ["emqx" "foreground"]
```

-	Layers:
	-	`sha256:548fcab5fe888f589dd092c68b813bfd65359878bd1950d6b753f749e82ebd7c`  
		Last Modified: Wed, 11 Jan 2023 02:39:48 GMT  
		Size: 27.1 MB (27140352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661145169f684ea6623410a6b2e6bac4fff75dcec9474b51911e88a29706557f`  
		Last Modified: Wed, 11 Jan 2023 03:49:39 GMT  
		Size: 4.6 MB (4612517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c729c292ec153abc1a59a47bbbaeec2775a873a39ce5578f9211146d447eb24c`  
		Last Modified: Thu, 12 Jan 2023 19:22:46 GMT  
		Size: 4.1 KB (4113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b41a70a2a0cbe37bd893a6f30513e5848362f11a72767d3ba0241f0680f9f7`  
		Last Modified: Thu, 12 Jan 2023 19:22:50 GMT  
		Size: 36.5 MB (36538722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b20fd74f38c808dff2d1a3b046e365e320984cb93075a176f997825ab6e878e`  
		Last Modified: Thu, 12 Jan 2023 19:22:46 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `emqx:4.3.22` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:b3eb44d4e1c15c9a297adb5cb261d0c493706ecb20091cf5ac8b6fc39dbc8a2c
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66628370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:257855eccdee554c8126ace796f246a4160f0e1aa75ed3a737c52ef819efcfc1`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["emqx","foreground"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:52 GMT
ADD file:08addf73dde8bf5ac64e0d9bdd1997ce5f406976c19da431616783c14fdb36ac in / 
# Wed, 11 Jan 2023 02:57:52 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 13:30:20 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends curl unzip ca-certificates;     rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 18:39:22 GMT
RUN set -eu;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx
# Thu, 12 Jan 2023 18:39:22 GMT
ENV EMQX_VERSION=4.3.22
# Thu, 12 Jan 2023 18:39:27 GMT
RUN set -eu;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="e5f6874eb29f83cce9c84afae95cc05de11ed8aa47f046783afa1c75e812a4b7"; fi;     if [ ${arch} = "arm64" ]; then sha256="85bf586fdf1c11f4057f6137faa4390100a3f3eb0e285e8a68e63c7d15bea09b"; fi;     ID="$(sed -n '/^ID=/p' /etc/os-release | sed -r 's/ID=(.*)/\1/g' | sed 's/\"//g')";     VERSION_ID="$(sed -n '/^VERSION_ID=/p' /etc/os-release | sed -r 's/VERSION_ID=(.*)/\1/g' | sed 's/\"//g')";     pkg="emqx-${ID}${VERSION_ID}-${EMQX_VERSION}-${arch}.zip";     curl -f -O -L https://www.emqx.com/en/downloads/broker/${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c || exit 1;     unzip -q -d /opt $pkg;     chgrp -Rf emqx /opt/emqx;     chmod -Rf g+w /opt/emqx;     chown -Rf emqx /opt/emqx;     ln -s /opt/emqx/bin/* /usr/local/bin/;     rm -rf $pkg
# Thu, 12 Jan 2023 18:39:27 GMT
WORKDIR /opt/emqx
# Thu, 12 Jan 2023 18:39:27 GMT
USER emqx
# Thu, 12 Jan 2023 18:39:27 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Thu, 12 Jan 2023 18:39:27 GMT
EXPOSE 11883 18083 1883 4369 4370 5369 6369 6370 8081 8083 8084 8883
# Thu, 12 Jan 2023 18:39:27 GMT
COPY file:715d536465bb73dc7e7d11b7af4806884602823836c36e9ec561de98ccbf3424 in /usr/bin/ 
# Thu, 12 Jan 2023 18:39:27 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Thu, 12 Jan 2023 18:39:28 GMT
CMD ["emqx" "foreground"]
```

-	Layers:
	-	`sha256:7fac02f4cd2bcf681b9e156a67009cf4609f45447818b52327d93553bfeb2965`  
		Last Modified: Wed, 11 Jan 2023 03:01:58 GMT  
		Size: 25.9 MB (25914925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afe26eee17fa1a49cb6f89f853e34d82f13997ca667f6e7407e6b002aeb8473`  
		Last Modified: Wed, 11 Jan 2023 13:31:15 GMT  
		Size: 4.5 MB (4490429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adcdcae4c112441fb05d4a3829712274f5f3d6d29d0352457ae9cf661668cad`  
		Last Modified: Thu, 12 Jan 2023 18:40:00 GMT  
		Size: 4.1 KB (4121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9145559cc33cfe393e5a5a3bc4a34b5c9bf45d7c0614d61b05ed0408128442fd`  
		Last Modified: Thu, 12 Jan 2023 18:40:04 GMT  
		Size: 36.2 MB (36217854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c5f0d674a2772d416f8aaa10d9c9c19e3431d9e09aac73089c485327366b7c`  
		Last Modified: Thu, 12 Jan 2023 18:40:00 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `emqx:4.4`

```console
$ docker pull emqx@sha256:c59900e115b1dda693db21259665002b0fbcfb368ad8ccc5c5aa44b9de738a93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `emqx:4.4` - linux; amd64

```console
$ docker pull emqx@sha256:694fec8a03aa7424cd8fc9ae19b70d863567fa18751d6908d3148f7b8edbc48a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81163520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e156deb9005fb2fc2d647f71d5986a4077805155a66566408e5a646ecc17dcc`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["emqx","foreground"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:48:56 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends curl unzip ca-certificates;     rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 19:22:14 GMT
RUN set -eu;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx
# Thu, 12 Jan 2023 19:22:14 GMT
ENV EMQX_VERSION=4.4.14
# Thu, 12 Jan 2023 19:22:14 GMT
ENV OTP=otp24.3.4.2-1
# Thu, 12 Jan 2023 19:22:19 GMT
RUN set -eu;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="b70590c16effa60759f6ab08a4a0e666ad4487cf0eb88263ab992e44b440b815"; fi;     if [ ${arch} = "arm64" ]; then sha256="98b78798577ddb7685c42dc41b7a758aacfe27924c8be4510e2057527a142ba0"; fi;     ID="$(sed -n '/^ID=/p' /etc/os-release | sed -r 's/ID=(.*)/\1/g' | sed 's/\"//g')";     VERSION_ID="$(sed -n '/^VERSION_ID=/p' /etc/os-release | sed -r 's/VERSION_ID=(.*)/\1/g' | sed 's/\"//g')";     pkg="emqx-${EMQX_VERSION}-${OTP}-${ID}${VERSION_ID}-${arch}.zip";     curl -f -O -L https://www.emqx.com/en/downloads/broker/${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c || exit 1;     unzip -q -d /opt $pkg;     chgrp -Rf emqx /opt/emqx;     chmod -Rf g+w /opt/emqx;     chown -Rf emqx /opt/emqx;     ln -s /opt/emqx/bin/* /usr/local/bin/;     rm -rf $pkg
# Thu, 12 Jan 2023 19:22:20 GMT
WORKDIR /opt/emqx
# Thu, 12 Jan 2023 19:22:20 GMT
USER emqx
# Thu, 12 Jan 2023 19:22:20 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Thu, 12 Jan 2023 19:22:20 GMT
EXPOSE 11883 18083 1883 4369 4370 5369 6369 6370 8081 8083 8084 8883
# Thu, 12 Jan 2023 19:22:20 GMT
COPY file:6dd7e4492be7572c69a0409bd663714c620b2048d81308e1877901073db7f426 in /usr/bin/ 
# Thu, 12 Jan 2023 19:22:20 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:22:20 GMT
CMD ["emqx" "foreground"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d3e57ec5f70305a1554472a8bc80d1caf9263b899fdc9e84d30606e2e849d5`  
		Last Modified: Wed, 11 Jan 2023 03:49:51 GMT  
		Size: 2.6 MB (2569545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f63c8cab2b9d61d2f3471896c134214a6509df1ae6015168016b844882fb732`  
		Last Modified: Thu, 12 Jan 2023 19:22:59 GMT  
		Size: 4.1 KB (4113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e57fdce70951ec51dd6c25118be99b7c8872affb93ce95cea5b9f537c76e18c`  
		Last Modified: Thu, 12 Jan 2023 19:23:04 GMT  
		Size: 47.2 MB (47191782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1902d059c5ab510e3ecb3817b29cb4a75202de84e9d5532dff27a0c63709575d`  
		Last Modified: Thu, 12 Jan 2023 19:22:59 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `emqx:4.4` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:22794a16c633fff2a45a3df3c8df47c03019d0712dd152cb444b2646455299d9
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.6 MB (72585304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ac2f90ba62b4be79787556e17962aaf4cd956a375e0cc8240ba0ccac95adc75`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["emqx","foreground"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 13:30:38 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends curl unzip ca-certificates;     rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 18:39:30 GMT
RUN set -eu;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx
# Thu, 12 Jan 2023 18:39:31 GMT
ENV EMQX_VERSION=4.4.14
# Thu, 12 Jan 2023 18:39:31 GMT
ENV OTP=otp24.3.4.2-1
# Thu, 12 Jan 2023 18:39:34 GMT
RUN set -eu;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="b70590c16effa60759f6ab08a4a0e666ad4487cf0eb88263ab992e44b440b815"; fi;     if [ ${arch} = "arm64" ]; then sha256="98b78798577ddb7685c42dc41b7a758aacfe27924c8be4510e2057527a142ba0"; fi;     ID="$(sed -n '/^ID=/p' /etc/os-release | sed -r 's/ID=(.*)/\1/g' | sed 's/\"//g')";     VERSION_ID="$(sed -n '/^VERSION_ID=/p' /etc/os-release | sed -r 's/VERSION_ID=(.*)/\1/g' | sed 's/\"//g')";     pkg="emqx-${EMQX_VERSION}-${OTP}-${ID}${VERSION_ID}-${arch}.zip";     curl -f -O -L https://www.emqx.com/en/downloads/broker/${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c || exit 1;     unzip -q -d /opt $pkg;     chgrp -Rf emqx /opt/emqx;     chmod -Rf g+w /opt/emqx;     chown -Rf emqx /opt/emqx;     ln -s /opt/emqx/bin/* /usr/local/bin/;     rm -rf $pkg
# Thu, 12 Jan 2023 18:39:34 GMT
WORKDIR /opt/emqx
# Thu, 12 Jan 2023 18:39:35 GMT
USER emqx
# Thu, 12 Jan 2023 18:39:35 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Thu, 12 Jan 2023 18:39:35 GMT
EXPOSE 11883 18083 1883 4369 4370 5369 6369 6370 8081 8083 8084 8883
# Thu, 12 Jan 2023 18:39:35 GMT
COPY file:6dd7e4492be7572c69a0409bd663714c620b2048d81308e1877901073db7f426 in /usr/bin/ 
# Thu, 12 Jan 2023 18:39:35 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Thu, 12 Jan 2023 18:39:35 GMT
CMD ["emqx" "foreground"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8afc846b3288c61befe97bcb3990e00d2ade2bdcc5b29cee6ecc6cf58f83d0b`  
		Last Modified: Wed, 11 Jan 2023 13:31:27 GMT  
		Size: 2.6 MB (2559366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50de8caa1b2059ca0b07a84e26225067053bac5fd9688b4df0214bf751e547db`  
		Last Modified: Thu, 12 Jan 2023 18:40:13 GMT  
		Size: 4.1 KB (4118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe1c3a6f6e4dbe4bbb2d66d659c7871554f17a8a7c1a689718c71fabc3da417`  
		Last Modified: Thu, 12 Jan 2023 18:40:17 GMT  
		Size: 40.0 MB (39975899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3192fef4181a18cfae057cf3461c8ce3941062cfb2d50251272d955fdd087f`  
		Last Modified: Thu, 12 Jan 2023 18:40:13 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `emqx:4.4.14`

```console
$ docker pull emqx@sha256:c59900e115b1dda693db21259665002b0fbcfb368ad8ccc5c5aa44b9de738a93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `emqx:4.4.14` - linux; amd64

```console
$ docker pull emqx@sha256:694fec8a03aa7424cd8fc9ae19b70d863567fa18751d6908d3148f7b8edbc48a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81163520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e156deb9005fb2fc2d647f71d5986a4077805155a66566408e5a646ecc17dcc`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["emqx","foreground"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:48:56 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends curl unzip ca-certificates;     rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 19:22:14 GMT
RUN set -eu;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx
# Thu, 12 Jan 2023 19:22:14 GMT
ENV EMQX_VERSION=4.4.14
# Thu, 12 Jan 2023 19:22:14 GMT
ENV OTP=otp24.3.4.2-1
# Thu, 12 Jan 2023 19:22:19 GMT
RUN set -eu;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="b70590c16effa60759f6ab08a4a0e666ad4487cf0eb88263ab992e44b440b815"; fi;     if [ ${arch} = "arm64" ]; then sha256="98b78798577ddb7685c42dc41b7a758aacfe27924c8be4510e2057527a142ba0"; fi;     ID="$(sed -n '/^ID=/p' /etc/os-release | sed -r 's/ID=(.*)/\1/g' | sed 's/\"//g')";     VERSION_ID="$(sed -n '/^VERSION_ID=/p' /etc/os-release | sed -r 's/VERSION_ID=(.*)/\1/g' | sed 's/\"//g')";     pkg="emqx-${EMQX_VERSION}-${OTP}-${ID}${VERSION_ID}-${arch}.zip";     curl -f -O -L https://www.emqx.com/en/downloads/broker/${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c || exit 1;     unzip -q -d /opt $pkg;     chgrp -Rf emqx /opt/emqx;     chmod -Rf g+w /opt/emqx;     chown -Rf emqx /opt/emqx;     ln -s /opt/emqx/bin/* /usr/local/bin/;     rm -rf $pkg
# Thu, 12 Jan 2023 19:22:20 GMT
WORKDIR /opt/emqx
# Thu, 12 Jan 2023 19:22:20 GMT
USER emqx
# Thu, 12 Jan 2023 19:22:20 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Thu, 12 Jan 2023 19:22:20 GMT
EXPOSE 11883 18083 1883 4369 4370 5369 6369 6370 8081 8083 8084 8883
# Thu, 12 Jan 2023 19:22:20 GMT
COPY file:6dd7e4492be7572c69a0409bd663714c620b2048d81308e1877901073db7f426 in /usr/bin/ 
# Thu, 12 Jan 2023 19:22:20 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:22:20 GMT
CMD ["emqx" "foreground"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d3e57ec5f70305a1554472a8bc80d1caf9263b899fdc9e84d30606e2e849d5`  
		Last Modified: Wed, 11 Jan 2023 03:49:51 GMT  
		Size: 2.6 MB (2569545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f63c8cab2b9d61d2f3471896c134214a6509df1ae6015168016b844882fb732`  
		Last Modified: Thu, 12 Jan 2023 19:22:59 GMT  
		Size: 4.1 KB (4113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e57fdce70951ec51dd6c25118be99b7c8872affb93ce95cea5b9f537c76e18c`  
		Last Modified: Thu, 12 Jan 2023 19:23:04 GMT  
		Size: 47.2 MB (47191782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1902d059c5ab510e3ecb3817b29cb4a75202de84e9d5532dff27a0c63709575d`  
		Last Modified: Thu, 12 Jan 2023 19:22:59 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `emqx:4.4.14` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:22794a16c633fff2a45a3df3c8df47c03019d0712dd152cb444b2646455299d9
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.6 MB (72585304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ac2f90ba62b4be79787556e17962aaf4cd956a375e0cc8240ba0ccac95adc75`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["emqx","foreground"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 13:30:38 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends curl unzip ca-certificates;     rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 18:39:30 GMT
RUN set -eu;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx
# Thu, 12 Jan 2023 18:39:31 GMT
ENV EMQX_VERSION=4.4.14
# Thu, 12 Jan 2023 18:39:31 GMT
ENV OTP=otp24.3.4.2-1
# Thu, 12 Jan 2023 18:39:34 GMT
RUN set -eu;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="b70590c16effa60759f6ab08a4a0e666ad4487cf0eb88263ab992e44b440b815"; fi;     if [ ${arch} = "arm64" ]; then sha256="98b78798577ddb7685c42dc41b7a758aacfe27924c8be4510e2057527a142ba0"; fi;     ID="$(sed -n '/^ID=/p' /etc/os-release | sed -r 's/ID=(.*)/\1/g' | sed 's/\"//g')";     VERSION_ID="$(sed -n '/^VERSION_ID=/p' /etc/os-release | sed -r 's/VERSION_ID=(.*)/\1/g' | sed 's/\"//g')";     pkg="emqx-${EMQX_VERSION}-${OTP}-${ID}${VERSION_ID}-${arch}.zip";     curl -f -O -L https://www.emqx.com/en/downloads/broker/${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c || exit 1;     unzip -q -d /opt $pkg;     chgrp -Rf emqx /opt/emqx;     chmod -Rf g+w /opt/emqx;     chown -Rf emqx /opt/emqx;     ln -s /opt/emqx/bin/* /usr/local/bin/;     rm -rf $pkg
# Thu, 12 Jan 2023 18:39:34 GMT
WORKDIR /opt/emqx
# Thu, 12 Jan 2023 18:39:35 GMT
USER emqx
# Thu, 12 Jan 2023 18:39:35 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Thu, 12 Jan 2023 18:39:35 GMT
EXPOSE 11883 18083 1883 4369 4370 5369 6369 6370 8081 8083 8084 8883
# Thu, 12 Jan 2023 18:39:35 GMT
COPY file:6dd7e4492be7572c69a0409bd663714c620b2048d81308e1877901073db7f426 in /usr/bin/ 
# Thu, 12 Jan 2023 18:39:35 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Thu, 12 Jan 2023 18:39:35 GMT
CMD ["emqx" "foreground"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8afc846b3288c61befe97bcb3990e00d2ade2bdcc5b29cee6ecc6cf58f83d0b`  
		Last Modified: Wed, 11 Jan 2023 13:31:27 GMT  
		Size: 2.6 MB (2559366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50de8caa1b2059ca0b07a84e26225067053bac5fd9688b4df0214bf751e547db`  
		Last Modified: Thu, 12 Jan 2023 18:40:13 GMT  
		Size: 4.1 KB (4118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe1c3a6f6e4dbe4bbb2d66d659c7871554f17a8a7c1a689718c71fabc3da417`  
		Last Modified: Thu, 12 Jan 2023 18:40:17 GMT  
		Size: 40.0 MB (39975899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3192fef4181a18cfae057cf3461c8ce3941062cfb2d50251272d955fdd087f`  
		Last Modified: Thu, 12 Jan 2023 18:40:13 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `emqx:5`

```console
$ docker pull emqx@sha256:8cd9924c3d8f9044e4129669d7d3417a4bf0aff8aa028306b16299ab62c9abd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `emqx:5` - linux; amd64

```console
$ docker pull emqx@sha256:fadccee3cddcfa9bca973be8fc6364ddeda1bf3ae76ca66b8ff9d986fdde7712
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100246562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc1f41132deb30c1b919c94bd804c2c9b0d50609e2f83f0558166368dbf072b`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:49:16 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends curl ca-certificates procps;     rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:49:16 GMT
RUN groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;
# Tue, 24 Jan 2023 02:28:10 GMT
ENV EMQX_VERSION=5.0.15
# Tue, 24 Jan 2023 02:28:10 GMT
ENV AMD64_SHA256=fdafab13d63e6eb97582178250f30d1f1448fe9a0f15df4c1f1f59b82573135d
# Tue, 24 Jan 2023 02:28:10 GMT
ENV ARM64_SHA256=e54bdfa68933ada67584f4b2d2b1129ec75e4d6e557505505451af7e6c0d11a3
# Tue, 24 Jan 2023 02:28:10 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 24 Jan 2023 02:28:16 GMT
RUN set -eu;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     ID="$(sed -n '/^ID=/p' /etc/os-release | sed -r 's/ID=(.*)/\1/g' | sed 's/\"//g')";     VERSION_ID="$(sed -n '/^VERSION_ID=/p' /etc/os-release | sed -r 's/VERSION_ID=(.*)/\1/g' | sed 's/\"//g')";     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg} &&     echo "$sha256 *$pkg" | sha256sum -c &&     mkdir /opt/emqx &&     tar zxf $pkg -C /opt/emqx &&     chgrp -Rf emqx /opt/emqx &&     chmod -Rf g+w /opt/emqx &&     chown -Rf emqx /opt/emqx &&     ln -s /opt/emqx/bin/* /usr/local/bin/ &&     rm -f $pkg
# Tue, 24 Jan 2023 02:28:17 GMT
WORKDIR /opt/emqx
# Tue, 24 Jan 2023 02:28:17 GMT
USER emqx
# Tue, 24 Jan 2023 02:28:17 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 24 Jan 2023 02:28:17 GMT
EXPOSE 11883 18083 1883 4370 5369 8083 8084 8883
# Tue, 24 Jan 2023 02:28:17 GMT
COPY file:a75ee173244a77553082438ca14f9a3c739eae012d396b2119540782b95f16bb in /usr/bin/ 
# Tue, 24 Jan 2023 02:28:17 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 24 Jan 2023 02:28:17 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1226f5729eeebf1d9e397edf672aef9dc2809741454ab2d1a2f58a4bb3f67eb0`  
		Last Modified: Wed, 11 Jan 2023 03:50:07 GMT  
		Size: 3.0 MB (2987690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a786684ff862ef4f11abc26cfb08583cf925746ea80d7c34769aa93aa99660e7`  
		Last Modified: Wed, 11 Jan 2023 03:50:06 GMT  
		Size: 4.1 KB (4106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0634351759c9e985447a88eb4752a02528ca1601a165966f847c177bfca514`  
		Last Modified: Tue, 24 Jan 2023 02:28:42 GMT  
		Size: 65.9 MB (65856892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8928098212b934fd262779dbd390440ff22f262037fb3bafcf7492717f30f1a`  
		Last Modified: Tue, 24 Jan 2023 02:28:34 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `emqx:5` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:b361a0de120b55c954da63fe25af2f7f964964bd387808f4607513643d5409f5
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.3 MB (91342413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:811a0af4d76d7b8eb751d8772238cb2a2fc095f1c494c121b3d242a8d87c4c25`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 13:30:54 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends curl ca-certificates procps;     rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 13:30:55 GMT
RUN groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;
# Tue, 24 Jan 2023 02:04:58 GMT
ENV EMQX_VERSION=5.0.15
# Tue, 24 Jan 2023 02:04:58 GMT
ENV AMD64_SHA256=fdafab13d63e6eb97582178250f30d1f1448fe9a0f15df4c1f1f59b82573135d
# Tue, 24 Jan 2023 02:04:58 GMT
ENV ARM64_SHA256=e54bdfa68933ada67584f4b2d2b1129ec75e4d6e557505505451af7e6c0d11a3
# Tue, 24 Jan 2023 02:04:58 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 24 Jan 2023 02:05:03 GMT
RUN set -eu;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     ID="$(sed -n '/^ID=/p' /etc/os-release | sed -r 's/ID=(.*)/\1/g' | sed 's/\"//g')";     VERSION_ID="$(sed -n '/^VERSION_ID=/p' /etc/os-release | sed -r 's/VERSION_ID=(.*)/\1/g' | sed 's/\"//g')";     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg} &&     echo "$sha256 *$pkg" | sha256sum -c &&     mkdir /opt/emqx &&     tar zxf $pkg -C /opt/emqx &&     chgrp -Rf emqx /opt/emqx &&     chmod -Rf g+w /opt/emqx &&     chown -Rf emqx /opt/emqx &&     ln -s /opt/emqx/bin/* /usr/local/bin/ &&     rm -f $pkg
# Tue, 24 Jan 2023 02:05:03 GMT
WORKDIR /opt/emqx
# Tue, 24 Jan 2023 02:05:03 GMT
USER emqx
# Tue, 24 Jan 2023 02:05:03 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 24 Jan 2023 02:05:03 GMT
EXPOSE 11883 18083 1883 4370 5369 8083 8084 8883
# Tue, 24 Jan 2023 02:05:03 GMT
COPY file:a75ee173244a77553082438ca14f9a3c739eae012d396b2119540782b95f16bb in /usr/bin/ 
# Tue, 24 Jan 2023 02:05:04 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 24 Jan 2023 02:05:04 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ecc2e1d7e4868b505e10f5031690f64d100e27341b52efe1502538f59eb5c6b`  
		Last Modified: Wed, 11 Jan 2023 13:31:41 GMT  
		Size: 3.0 MB (3002805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7657cfec2c515e4133df88eecfb40ffd2d19a87eacd8fb4643dad7696a6f8ffe`  
		Last Modified: Wed, 11 Jan 2023 13:31:40 GMT  
		Size: 4.1 KB (4112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c54b5a0dfb4339957ffa262692fadd549e16aa6cb0eae5618683b22bc40b83`  
		Last Modified: Tue, 24 Jan 2023 02:05:26 GMT  
		Size: 58.3 MB (58289782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a6d9c66e750f6ec4249bf34ac38c51a8fa8a84410c1a5372edfc03a276237a`  
		Last Modified: Tue, 24 Jan 2023 02:05:20 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `emqx:5.0`

```console
$ docker pull emqx@sha256:8cd9924c3d8f9044e4129669d7d3417a4bf0aff8aa028306b16299ab62c9abd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `emqx:5.0` - linux; amd64

```console
$ docker pull emqx@sha256:fadccee3cddcfa9bca973be8fc6364ddeda1bf3ae76ca66b8ff9d986fdde7712
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100246562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc1f41132deb30c1b919c94bd804c2c9b0d50609e2f83f0558166368dbf072b`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:49:16 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends curl ca-certificates procps;     rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:49:16 GMT
RUN groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;
# Tue, 24 Jan 2023 02:28:10 GMT
ENV EMQX_VERSION=5.0.15
# Tue, 24 Jan 2023 02:28:10 GMT
ENV AMD64_SHA256=fdafab13d63e6eb97582178250f30d1f1448fe9a0f15df4c1f1f59b82573135d
# Tue, 24 Jan 2023 02:28:10 GMT
ENV ARM64_SHA256=e54bdfa68933ada67584f4b2d2b1129ec75e4d6e557505505451af7e6c0d11a3
# Tue, 24 Jan 2023 02:28:10 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 24 Jan 2023 02:28:16 GMT
RUN set -eu;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     ID="$(sed -n '/^ID=/p' /etc/os-release | sed -r 's/ID=(.*)/\1/g' | sed 's/\"//g')";     VERSION_ID="$(sed -n '/^VERSION_ID=/p' /etc/os-release | sed -r 's/VERSION_ID=(.*)/\1/g' | sed 's/\"//g')";     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg} &&     echo "$sha256 *$pkg" | sha256sum -c &&     mkdir /opt/emqx &&     tar zxf $pkg -C /opt/emqx &&     chgrp -Rf emqx /opt/emqx &&     chmod -Rf g+w /opt/emqx &&     chown -Rf emqx /opt/emqx &&     ln -s /opt/emqx/bin/* /usr/local/bin/ &&     rm -f $pkg
# Tue, 24 Jan 2023 02:28:17 GMT
WORKDIR /opt/emqx
# Tue, 24 Jan 2023 02:28:17 GMT
USER emqx
# Tue, 24 Jan 2023 02:28:17 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 24 Jan 2023 02:28:17 GMT
EXPOSE 11883 18083 1883 4370 5369 8083 8084 8883
# Tue, 24 Jan 2023 02:28:17 GMT
COPY file:a75ee173244a77553082438ca14f9a3c739eae012d396b2119540782b95f16bb in /usr/bin/ 
# Tue, 24 Jan 2023 02:28:17 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 24 Jan 2023 02:28:17 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1226f5729eeebf1d9e397edf672aef9dc2809741454ab2d1a2f58a4bb3f67eb0`  
		Last Modified: Wed, 11 Jan 2023 03:50:07 GMT  
		Size: 3.0 MB (2987690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a786684ff862ef4f11abc26cfb08583cf925746ea80d7c34769aa93aa99660e7`  
		Last Modified: Wed, 11 Jan 2023 03:50:06 GMT  
		Size: 4.1 KB (4106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0634351759c9e985447a88eb4752a02528ca1601a165966f847c177bfca514`  
		Last Modified: Tue, 24 Jan 2023 02:28:42 GMT  
		Size: 65.9 MB (65856892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8928098212b934fd262779dbd390440ff22f262037fb3bafcf7492717f30f1a`  
		Last Modified: Tue, 24 Jan 2023 02:28:34 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `emqx:5.0` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:b361a0de120b55c954da63fe25af2f7f964964bd387808f4607513643d5409f5
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.3 MB (91342413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:811a0af4d76d7b8eb751d8772238cb2a2fc095f1c494c121b3d242a8d87c4c25`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 13:30:54 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends curl ca-certificates procps;     rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 13:30:55 GMT
RUN groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;
# Tue, 24 Jan 2023 02:04:58 GMT
ENV EMQX_VERSION=5.0.15
# Tue, 24 Jan 2023 02:04:58 GMT
ENV AMD64_SHA256=fdafab13d63e6eb97582178250f30d1f1448fe9a0f15df4c1f1f59b82573135d
# Tue, 24 Jan 2023 02:04:58 GMT
ENV ARM64_SHA256=e54bdfa68933ada67584f4b2d2b1129ec75e4d6e557505505451af7e6c0d11a3
# Tue, 24 Jan 2023 02:04:58 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 24 Jan 2023 02:05:03 GMT
RUN set -eu;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     ID="$(sed -n '/^ID=/p' /etc/os-release | sed -r 's/ID=(.*)/\1/g' | sed 's/\"//g')";     VERSION_ID="$(sed -n '/^VERSION_ID=/p' /etc/os-release | sed -r 's/VERSION_ID=(.*)/\1/g' | sed 's/\"//g')";     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg} &&     echo "$sha256 *$pkg" | sha256sum -c &&     mkdir /opt/emqx &&     tar zxf $pkg -C /opt/emqx &&     chgrp -Rf emqx /opt/emqx &&     chmod -Rf g+w /opt/emqx &&     chown -Rf emqx /opt/emqx &&     ln -s /opt/emqx/bin/* /usr/local/bin/ &&     rm -f $pkg
# Tue, 24 Jan 2023 02:05:03 GMT
WORKDIR /opt/emqx
# Tue, 24 Jan 2023 02:05:03 GMT
USER emqx
# Tue, 24 Jan 2023 02:05:03 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 24 Jan 2023 02:05:03 GMT
EXPOSE 11883 18083 1883 4370 5369 8083 8084 8883
# Tue, 24 Jan 2023 02:05:03 GMT
COPY file:a75ee173244a77553082438ca14f9a3c739eae012d396b2119540782b95f16bb in /usr/bin/ 
# Tue, 24 Jan 2023 02:05:04 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 24 Jan 2023 02:05:04 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ecc2e1d7e4868b505e10f5031690f64d100e27341b52efe1502538f59eb5c6b`  
		Last Modified: Wed, 11 Jan 2023 13:31:41 GMT  
		Size: 3.0 MB (3002805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7657cfec2c515e4133df88eecfb40ffd2d19a87eacd8fb4643dad7696a6f8ffe`  
		Last Modified: Wed, 11 Jan 2023 13:31:40 GMT  
		Size: 4.1 KB (4112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c54b5a0dfb4339957ffa262692fadd549e16aa6cb0eae5618683b22bc40b83`  
		Last Modified: Tue, 24 Jan 2023 02:05:26 GMT  
		Size: 58.3 MB (58289782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a6d9c66e750f6ec4249bf34ac38c51a8fa8a84410c1a5372edfc03a276237a`  
		Last Modified: Tue, 24 Jan 2023 02:05:20 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `emqx:5.0.15`

```console
$ docker pull emqx@sha256:8cd9924c3d8f9044e4129669d7d3417a4bf0aff8aa028306b16299ab62c9abd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `emqx:5.0.15` - linux; amd64

```console
$ docker pull emqx@sha256:fadccee3cddcfa9bca973be8fc6364ddeda1bf3ae76ca66b8ff9d986fdde7712
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100246562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc1f41132deb30c1b919c94bd804c2c9b0d50609e2f83f0558166368dbf072b`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:49:16 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends curl ca-certificates procps;     rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:49:16 GMT
RUN groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;
# Tue, 24 Jan 2023 02:28:10 GMT
ENV EMQX_VERSION=5.0.15
# Tue, 24 Jan 2023 02:28:10 GMT
ENV AMD64_SHA256=fdafab13d63e6eb97582178250f30d1f1448fe9a0f15df4c1f1f59b82573135d
# Tue, 24 Jan 2023 02:28:10 GMT
ENV ARM64_SHA256=e54bdfa68933ada67584f4b2d2b1129ec75e4d6e557505505451af7e6c0d11a3
# Tue, 24 Jan 2023 02:28:10 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 24 Jan 2023 02:28:16 GMT
RUN set -eu;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     ID="$(sed -n '/^ID=/p' /etc/os-release | sed -r 's/ID=(.*)/\1/g' | sed 's/\"//g')";     VERSION_ID="$(sed -n '/^VERSION_ID=/p' /etc/os-release | sed -r 's/VERSION_ID=(.*)/\1/g' | sed 's/\"//g')";     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg} &&     echo "$sha256 *$pkg" | sha256sum -c &&     mkdir /opt/emqx &&     tar zxf $pkg -C /opt/emqx &&     chgrp -Rf emqx /opt/emqx &&     chmod -Rf g+w /opt/emqx &&     chown -Rf emqx /opt/emqx &&     ln -s /opt/emqx/bin/* /usr/local/bin/ &&     rm -f $pkg
# Tue, 24 Jan 2023 02:28:17 GMT
WORKDIR /opt/emqx
# Tue, 24 Jan 2023 02:28:17 GMT
USER emqx
# Tue, 24 Jan 2023 02:28:17 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 24 Jan 2023 02:28:17 GMT
EXPOSE 11883 18083 1883 4370 5369 8083 8084 8883
# Tue, 24 Jan 2023 02:28:17 GMT
COPY file:a75ee173244a77553082438ca14f9a3c739eae012d396b2119540782b95f16bb in /usr/bin/ 
# Tue, 24 Jan 2023 02:28:17 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 24 Jan 2023 02:28:17 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1226f5729eeebf1d9e397edf672aef9dc2809741454ab2d1a2f58a4bb3f67eb0`  
		Last Modified: Wed, 11 Jan 2023 03:50:07 GMT  
		Size: 3.0 MB (2987690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a786684ff862ef4f11abc26cfb08583cf925746ea80d7c34769aa93aa99660e7`  
		Last Modified: Wed, 11 Jan 2023 03:50:06 GMT  
		Size: 4.1 KB (4106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0634351759c9e985447a88eb4752a02528ca1601a165966f847c177bfca514`  
		Last Modified: Tue, 24 Jan 2023 02:28:42 GMT  
		Size: 65.9 MB (65856892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8928098212b934fd262779dbd390440ff22f262037fb3bafcf7492717f30f1a`  
		Last Modified: Tue, 24 Jan 2023 02:28:34 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `emqx:5.0.15` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:b361a0de120b55c954da63fe25af2f7f964964bd387808f4607513643d5409f5
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.3 MB (91342413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:811a0af4d76d7b8eb751d8772238cb2a2fc095f1c494c121b3d242a8d87c4c25`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 13:30:54 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends curl ca-certificates procps;     rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 13:30:55 GMT
RUN groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;
# Tue, 24 Jan 2023 02:04:58 GMT
ENV EMQX_VERSION=5.0.15
# Tue, 24 Jan 2023 02:04:58 GMT
ENV AMD64_SHA256=fdafab13d63e6eb97582178250f30d1f1448fe9a0f15df4c1f1f59b82573135d
# Tue, 24 Jan 2023 02:04:58 GMT
ENV ARM64_SHA256=e54bdfa68933ada67584f4b2d2b1129ec75e4d6e557505505451af7e6c0d11a3
# Tue, 24 Jan 2023 02:04:58 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 24 Jan 2023 02:05:03 GMT
RUN set -eu;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     ID="$(sed -n '/^ID=/p' /etc/os-release | sed -r 's/ID=(.*)/\1/g' | sed 's/\"//g')";     VERSION_ID="$(sed -n '/^VERSION_ID=/p' /etc/os-release | sed -r 's/VERSION_ID=(.*)/\1/g' | sed 's/\"//g')";     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg} &&     echo "$sha256 *$pkg" | sha256sum -c &&     mkdir /opt/emqx &&     tar zxf $pkg -C /opt/emqx &&     chgrp -Rf emqx /opt/emqx &&     chmod -Rf g+w /opt/emqx &&     chown -Rf emqx /opt/emqx &&     ln -s /opt/emqx/bin/* /usr/local/bin/ &&     rm -f $pkg
# Tue, 24 Jan 2023 02:05:03 GMT
WORKDIR /opt/emqx
# Tue, 24 Jan 2023 02:05:03 GMT
USER emqx
# Tue, 24 Jan 2023 02:05:03 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 24 Jan 2023 02:05:03 GMT
EXPOSE 11883 18083 1883 4370 5369 8083 8084 8883
# Tue, 24 Jan 2023 02:05:03 GMT
COPY file:a75ee173244a77553082438ca14f9a3c739eae012d396b2119540782b95f16bb in /usr/bin/ 
# Tue, 24 Jan 2023 02:05:04 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 24 Jan 2023 02:05:04 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ecc2e1d7e4868b505e10f5031690f64d100e27341b52efe1502538f59eb5c6b`  
		Last Modified: Wed, 11 Jan 2023 13:31:41 GMT  
		Size: 3.0 MB (3002805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7657cfec2c515e4133df88eecfb40ffd2d19a87eacd8fb4643dad7696a6f8ffe`  
		Last Modified: Wed, 11 Jan 2023 13:31:40 GMT  
		Size: 4.1 KB (4112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c54b5a0dfb4339957ffa262692fadd549e16aa6cb0eae5618683b22bc40b83`  
		Last Modified: Tue, 24 Jan 2023 02:05:26 GMT  
		Size: 58.3 MB (58289782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a6d9c66e750f6ec4249bf34ac38c51a8fa8a84410c1a5372edfc03a276237a`  
		Last Modified: Tue, 24 Jan 2023 02:05:20 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `emqx:latest`

```console
$ docker pull emqx@sha256:8cd9924c3d8f9044e4129669d7d3417a4bf0aff8aa028306b16299ab62c9abd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `emqx:latest` - linux; amd64

```console
$ docker pull emqx@sha256:fadccee3cddcfa9bca973be8fc6364ddeda1bf3ae76ca66b8ff9d986fdde7712
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100246562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc1f41132deb30c1b919c94bd804c2c9b0d50609e2f83f0558166368dbf072b`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:49:16 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends curl ca-certificates procps;     rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:49:16 GMT
RUN groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;
# Tue, 24 Jan 2023 02:28:10 GMT
ENV EMQX_VERSION=5.0.15
# Tue, 24 Jan 2023 02:28:10 GMT
ENV AMD64_SHA256=fdafab13d63e6eb97582178250f30d1f1448fe9a0f15df4c1f1f59b82573135d
# Tue, 24 Jan 2023 02:28:10 GMT
ENV ARM64_SHA256=e54bdfa68933ada67584f4b2d2b1129ec75e4d6e557505505451af7e6c0d11a3
# Tue, 24 Jan 2023 02:28:10 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 24 Jan 2023 02:28:16 GMT
RUN set -eu;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     ID="$(sed -n '/^ID=/p' /etc/os-release | sed -r 's/ID=(.*)/\1/g' | sed 's/\"//g')";     VERSION_ID="$(sed -n '/^VERSION_ID=/p' /etc/os-release | sed -r 's/VERSION_ID=(.*)/\1/g' | sed 's/\"//g')";     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg} &&     echo "$sha256 *$pkg" | sha256sum -c &&     mkdir /opt/emqx &&     tar zxf $pkg -C /opt/emqx &&     chgrp -Rf emqx /opt/emqx &&     chmod -Rf g+w /opt/emqx &&     chown -Rf emqx /opt/emqx &&     ln -s /opt/emqx/bin/* /usr/local/bin/ &&     rm -f $pkg
# Tue, 24 Jan 2023 02:28:17 GMT
WORKDIR /opt/emqx
# Tue, 24 Jan 2023 02:28:17 GMT
USER emqx
# Tue, 24 Jan 2023 02:28:17 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 24 Jan 2023 02:28:17 GMT
EXPOSE 11883 18083 1883 4370 5369 8083 8084 8883
# Tue, 24 Jan 2023 02:28:17 GMT
COPY file:a75ee173244a77553082438ca14f9a3c739eae012d396b2119540782b95f16bb in /usr/bin/ 
# Tue, 24 Jan 2023 02:28:17 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 24 Jan 2023 02:28:17 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1226f5729eeebf1d9e397edf672aef9dc2809741454ab2d1a2f58a4bb3f67eb0`  
		Last Modified: Wed, 11 Jan 2023 03:50:07 GMT  
		Size: 3.0 MB (2987690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a786684ff862ef4f11abc26cfb08583cf925746ea80d7c34769aa93aa99660e7`  
		Last Modified: Wed, 11 Jan 2023 03:50:06 GMT  
		Size: 4.1 KB (4106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0634351759c9e985447a88eb4752a02528ca1601a165966f847c177bfca514`  
		Last Modified: Tue, 24 Jan 2023 02:28:42 GMT  
		Size: 65.9 MB (65856892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8928098212b934fd262779dbd390440ff22f262037fb3bafcf7492717f30f1a`  
		Last Modified: Tue, 24 Jan 2023 02:28:34 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `emqx:latest` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:b361a0de120b55c954da63fe25af2f7f964964bd387808f4607513643d5409f5
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.3 MB (91342413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:811a0af4d76d7b8eb751d8772238cb2a2fc095f1c494c121b3d242a8d87c4c25`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 13:30:54 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends curl ca-certificates procps;     rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 13:30:55 GMT
RUN groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;
# Tue, 24 Jan 2023 02:04:58 GMT
ENV EMQX_VERSION=5.0.15
# Tue, 24 Jan 2023 02:04:58 GMT
ENV AMD64_SHA256=fdafab13d63e6eb97582178250f30d1f1448fe9a0f15df4c1f1f59b82573135d
# Tue, 24 Jan 2023 02:04:58 GMT
ENV ARM64_SHA256=e54bdfa68933ada67584f4b2d2b1129ec75e4d6e557505505451af7e6c0d11a3
# Tue, 24 Jan 2023 02:04:58 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 24 Jan 2023 02:05:03 GMT
RUN set -eu;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     ID="$(sed -n '/^ID=/p' /etc/os-release | sed -r 's/ID=(.*)/\1/g' | sed 's/\"//g')";     VERSION_ID="$(sed -n '/^VERSION_ID=/p' /etc/os-release | sed -r 's/VERSION_ID=(.*)/\1/g' | sed 's/\"//g')";     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg} &&     echo "$sha256 *$pkg" | sha256sum -c &&     mkdir /opt/emqx &&     tar zxf $pkg -C /opt/emqx &&     chgrp -Rf emqx /opt/emqx &&     chmod -Rf g+w /opt/emqx &&     chown -Rf emqx /opt/emqx &&     ln -s /opt/emqx/bin/* /usr/local/bin/ &&     rm -f $pkg
# Tue, 24 Jan 2023 02:05:03 GMT
WORKDIR /opt/emqx
# Tue, 24 Jan 2023 02:05:03 GMT
USER emqx
# Tue, 24 Jan 2023 02:05:03 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 24 Jan 2023 02:05:03 GMT
EXPOSE 11883 18083 1883 4370 5369 8083 8084 8883
# Tue, 24 Jan 2023 02:05:03 GMT
COPY file:a75ee173244a77553082438ca14f9a3c739eae012d396b2119540782b95f16bb in /usr/bin/ 
# Tue, 24 Jan 2023 02:05:04 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 24 Jan 2023 02:05:04 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ecc2e1d7e4868b505e10f5031690f64d100e27341b52efe1502538f59eb5c6b`  
		Last Modified: Wed, 11 Jan 2023 13:31:41 GMT  
		Size: 3.0 MB (3002805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7657cfec2c515e4133df88eecfb40ffd2d19a87eacd8fb4643dad7696a6f8ffe`  
		Last Modified: Wed, 11 Jan 2023 13:31:40 GMT  
		Size: 4.1 KB (4112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c54b5a0dfb4339957ffa262692fadd549e16aa6cb0eae5618683b22bc40b83`  
		Last Modified: Tue, 24 Jan 2023 02:05:26 GMT  
		Size: 58.3 MB (58289782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a6d9c66e750f6ec4249bf34ac38c51a8fa8a84410c1a5372edfc03a276237a`  
		Last Modified: Tue, 24 Jan 2023 02:05:20 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
