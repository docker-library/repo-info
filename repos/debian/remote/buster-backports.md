## `debian:buster-backports`

```console
$ docker pull debian@sha256:a3270822d3834d1aef3fa1b09f3864dffcd2fc52c67ddacbc33231f445f56a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `debian:buster-backports` - linux; amd64

```console
$ docker pull debian@sha256:b4e6c223fe8a85283463c0449dc27f0ebf0aadc855a2266abd3a929cb9594940
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50449134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49b71c40fff459ef8f51ec3f4693e819c4898315afc088a2b890ba265b8ada8c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:54 GMT
ADD file:4bf66d4081da52e8b692fcff96aad84d3e68bda4f62e870e8f4803153c70e24c in / 
# Wed, 11 Jan 2023 02:34:55 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:34:58 GMT
RUN echo 'deb http://deb.debian.org/debian buster-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ac7f2e1c758675427623d0da4faa88b336c62466c15a98af61efd3f015282f2f`  
		Last Modified: Wed, 11 Jan 2023 02:39:26 GMT  
		Size: 50.4 MB (50448910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8324484bebf05ef073f438041fee69138880dbb518dd2f68809c3595467675`  
		Last Modified: Wed, 11 Jan 2023 02:39:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:buster-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:29f9ce0333145122e07c7e384a76ccbd442002c65cfc076c08e600a44f543244
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45915827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96a56719a991ed91d4be1e8d15ebfea51f36c6f4e7d16da1740a8203223a363`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 04:00:52 GMT
ADD file:7a8ada9998422200d8f422ba7967ecc0f2435715f4b69347f7c0eddf589b1dc5 in / 
# Wed, 11 Jan 2023 04:00:53 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 04:01:00 GMT
RUN echo 'deb http://deb.debian.org/debian buster-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:1af2e9dc936b1285f4472a18af1e9b913352d31b1238f1c158995d9c15b6024a`  
		Last Modified: Wed, 11 Jan 2023 04:08:13 GMT  
		Size: 45.9 MB (45915604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54338f918a05949e198ab28c3333f91e87e9aee769f40ecdfb0aa82084676cbe`  
		Last Modified: Wed, 11 Jan 2023 04:08:30 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:buster-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:228083efb5318674a3728c472671bd0909f1fded288a46177aac2c5286ac0ee6
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49234024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dce3460b3a7ff5e7f4e3ac8e17b48a81168564c83a8cfa8af648d887bde8859`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:43 GMT
ADD file:6b2b58305052bb953886c976022efeb324ef33bc6e55f9e15915e98490bd8fcb in / 
# Wed, 11 Jan 2023 02:57:43 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:57:46 GMT
RUN echo 'deb http://deb.debian.org/debian buster-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:15639959ffec1b29b8f88b1e1db3ca0574ca52ee28fd8f3ac6d2cbb1c85fb209`  
		Last Modified: Wed, 11 Jan 2023 03:01:37 GMT  
		Size: 49.2 MB (49233802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f53e661938f1975b5bc61d8e622751fafcdf502133e6554f11c549252942a7`  
		Last Modified: Wed, 11 Jan 2023 03:01:50 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:buster-backports` - linux; 386

```console
$ docker pull debian@sha256:060744242e7e79c7790243344e7278b12870277b3a053e9dff737d8909022138
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.2 MB (51208058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250184597336a774d7d9b569d5c52cf2e39370af2a3f0ba2b06835a9af389bd5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:16:19 GMT
ADD file:8dffdae65db31d57b6a4946bc86469afb548c4c52bf49970da0b113ce9d79d67 in / 
# Wed, 11 Jan 2023 03:16:20 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:16:26 GMT
RUN echo 'deb http://deb.debian.org/debian buster-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:5a7dc875a0464942e7ebcaa41090f3f519845bd311f57a36c844c3c04ed97fa3`  
		Last Modified: Wed, 11 Jan 2023 03:22:23 GMT  
		Size: 51.2 MB (51207833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3414dbb297281014f00843b4a5c4f24cec55b8258751c1ef46e1704bb5da52b3`  
		Last Modified: Wed, 11 Jan 2023 03:22:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
