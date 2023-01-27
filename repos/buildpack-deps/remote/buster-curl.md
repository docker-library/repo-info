## `buildpack-deps:buster-curl`

```console
$ docker pull buildpack-deps@sha256:ee145dd7828f19ae3f39b5acf0dc53bc2753f49673609f950dac0f256747a5e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `buildpack-deps:buster-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:650a72d753007b63d9f3a1ca98380f996214e239396fafd1bc89f1cca2e30cbf
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68309705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bcced10214560bb7d58d23d4569a14ab4f45fffd25735969ee818af6e8963f6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:54 GMT
ADD file:4bf66d4081da52e8b692fcff96aad84d3e68bda4f62e870e8f4803153c70e24c in / 
# Wed, 11 Jan 2023 02:34:55 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:05:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:05:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:ac7f2e1c758675427623d0da4faa88b336c62466c15a98af61efd3f015282f2f`  
		Last Modified: Wed, 11 Jan 2023 02:39:26 GMT  
		Size: 50.4 MB (50448910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcdf7fce05b60278ea57279b4fd04f78778f80a6d64b6f875afc4bde32c2d1b`  
		Last Modified: Wed, 11 Jan 2023 03:13:10 GMT  
		Size: 7.9 MB (7859410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed0c2752d8478245519a7aab5e660053796af3c7ea7b34ad3df855b33ff5502`  
		Last Modified: Wed, 11 Jan 2023 03:13:09 GMT  
		Size: 10.0 MB (10001385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:b22d92fce55d66bab4d33e281101aa5604dfeae01b90f6775c3c12f99ddb8030
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62412433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d99ffd4aa94e32da83ea13baf2c9cf3eb2c2759e7c49bf39626e26c57f9e716`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 04:00:52 GMT
ADD file:7a8ada9998422200d8f422ba7967ecc0f2435715f4b69347f7c0eddf589b1dc5 in / 
# Wed, 11 Jan 2023 04:00:53 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 04:34:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 04:34:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:1af2e9dc936b1285f4472a18af1e9b913352d31b1238f1c158995d9c15b6024a`  
		Last Modified: Wed, 11 Jan 2023 04:08:13 GMT  
		Size: 45.9 MB (45915604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba37bd2b08543867db0934e29dd6c1476f71509aa0b42f10786733820b6c2008`  
		Last Modified: Wed, 11 Jan 2023 04:45:15 GMT  
		Size: 7.1 MB (7147799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbe84c7428034fbe63e62868f1c420279eda084b4d396cc79161f73a9aeba29c`  
		Last Modified: Wed, 11 Jan 2023 04:45:15 GMT  
		Size: 9.3 MB (9349030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:faf8f3b329e7d45dae40f1509dde7583f921a2b7b0090dfb2aea85957041c49d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.0 MB (66964835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c31456633bb2e3a28c8a8e7cfcc1514a1d0c243fc495aff118377cff0e218fae`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:43 GMT
ADD file:6b2b58305052bb953886c976022efeb324ef33bc6e55f9e15915e98490bd8fcb in / 
# Wed, 11 Jan 2023 02:57:43 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:25:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:26:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:15639959ffec1b29b8f88b1e1db3ca0574ca52ee28fd8f3ac6d2cbb1c85fb209`  
		Last Modified: Wed, 11 Jan 2023 03:01:37 GMT  
		Size: 49.2 MB (49233802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ef007f1599a716143291e5dce35505ba1462668b8263c8bc4252f52305fec5`  
		Last Modified: Wed, 11 Jan 2023 03:32:31 GMT  
		Size: 7.7 MB (7727435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58deacb177a21829f3def5ff81fe30a25fb59962eb4d1a844f21a22e5cbd148b`  
		Last Modified: Wed, 11 Jan 2023 03:32:31 GMT  
		Size: 10.0 MB (10003598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:7ac72e9bf618afdc99ae01c7d6d60e3b604c1a37ef88f0a4f3ae30d44ecc5f5f
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.4 MB (69361922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8243d6d2ffb2b0b3ed82a1f2998d81b84f9ee64155fc1517e34add250aa791c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:16:19 GMT
ADD file:8dffdae65db31d57b6a4946bc86469afb548c4c52bf49970da0b113ce9d79d67 in / 
# Wed, 11 Jan 2023 03:16:20 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:48:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:48:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:5a7dc875a0464942e7ebcaa41090f3f519845bd311f57a36c844c3c04ed97fa3`  
		Last Modified: Wed, 11 Jan 2023 03:22:23 GMT  
		Size: 51.2 MB (51207833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7694d94f77e5d95edd02e4559043234d6be7116378fe5d6e7588cb21efa07cda`  
		Last Modified: Wed, 11 Jan 2023 03:55:49 GMT  
		Size: 8.0 MB (8026066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8167061e46170114311ef3049f70a3fead0d705a5b732546acc30a1977468a8b`  
		Last Modified: Wed, 11 Jan 2023 03:55:49 GMT  
		Size: 10.1 MB (10128023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
