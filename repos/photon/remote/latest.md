## `photon:latest`

```console
$ docker pull photon@sha256:4ae973c23402bb21a230bac5f03a97a745bae1c13e63daca95b62c88015a23ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `photon:latest` - linux; amd64

```console
$ docker pull photon@sha256:5a6474426408ad916539f7eefae4d6ee45e455ea200f7507a3d35bcbf0086d99
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16077064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dfc400fca892a0109eb4fab019ff6f4edb57a73103d9b5d973cfe2267642356`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Jan 2023 19:24:04 GMT
ADD file:34b61b7e495e5ea52f7f878b77e7b1c79fee15b1a475a9b9d7d8748e6b9f877b in / 
# Mon, 23 Jan 2023 19:24:05 GMT
LABEL name=Photon OS x86_64/4.0 Base Image vendor=VMware build-date=20230121
# Mon, 23 Jan 2023 19:24:05 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6d657e0b868851be6765c749f19221230e393afc5f7bba8da250e5d46d6b7b41`  
		Last Modified: Mon, 23 Jan 2023 19:24:26 GMT  
		Size: 16.1 MB (16077064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `photon:latest` - linux; arm64 variant v8

```console
$ docker pull photon@sha256:ca8160de8feb6ad9edc78c60dbb2475f425b9e42ea7d38654df22738c2bff20d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15165128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb1fbc51651b671589366e29d664a0ab8ccddaecfc7a14a09cc37155a8abf0b9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Jan 2023 19:39:56 GMT
ADD file:63aab8b572363e4c89e052f8abebff1965676b153429fd4e8a7c0ed1c090cd7d in / 
# Mon, 23 Jan 2023 19:39:56 GMT
LABEL name=Photon OS aarch64/4.0 Base Image vendor=VMware build-date=20230121
# Mon, 23 Jan 2023 19:39:56 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c7a30b180be0613570ec60a1e9b33714b60bc2e9ba68545138b7ca66ba4b2869`  
		Last Modified: Mon, 23 Jan 2023 19:40:13 GMT  
		Size: 15.2 MB (15165128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
