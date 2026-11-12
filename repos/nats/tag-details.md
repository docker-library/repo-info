<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nats`

-	[`nats:2`](#nats2)
-	[`nats:2-alpine`](#nats2-alpine)
-	[`nats:2-alpine3.22`](#nats2-alpine322)
-	[`nats:2-linux`](#nats2-linux)
-	[`nats:2-nanoserver`](#nats2-nanoserver)
-	[`nats:2-nanoserver-ltsc2022`](#nats2-nanoserver-ltsc2022)
-	[`nats:2-scratch`](#nats2-scratch)
-	[`nats:2-windowsservercore`](#nats2-windowsservercore)
-	[`nats:2-windowsservercore-ltsc2022`](#nats2-windowsservercore-ltsc2022)
-	[`nats:2.14`](#nats214)
-	[`nats:2.14-alpine`](#nats214-alpine)
-	[`nats:2.14-alpine3.22`](#nats214-alpine322)
-	[`nats:2.14-linux`](#nats214-linux)
-	[`nats:2.14-nanoserver`](#nats214-nanoserver)
-	[`nats:2.14-nanoserver-ltsc2022`](#nats214-nanoserver-ltsc2022)
-	[`nats:2.14-scratch`](#nats214-scratch)
-	[`nats:2.14-windowsservercore`](#nats214-windowsservercore)
-	[`nats:2.14-windowsservercore-ltsc2022`](#nats214-windowsservercore-ltsc2022)
-	[`nats:2.14.10`](#nats21410)
-	[`nats:2.14.10-alpine`](#nats21410-alpine)
-	[`nats:2.14.10-alpine3.22`](#nats21410-alpine322)
-	[`nats:2.14.10-linux`](#nats21410-linux)
-	[`nats:2.14.10-nanoserver`](#nats21410-nanoserver)
-	[`nats:2.14.10-nanoserver-ltsc2022`](#nats21410-nanoserver-ltsc2022)
-	[`nats:2.14.10-scratch`](#nats21410-scratch)
-	[`nats:2.14.10-windowsservercore`](#nats21410-windowsservercore)
-	[`nats:2.14.10-windowsservercore-ltsc2022`](#nats21410-windowsservercore-ltsc2022)
-	[`nats:2.15`](#nats215)
-	[`nats:2.15-alpine`](#nats215-alpine)
-	[`nats:2.15-alpine3.22`](#nats215-alpine322)
-	[`nats:2.15-linux`](#nats215-linux)
-	[`nats:2.15-nanoserver`](#nats215-nanoserver)
-	[`nats:2.15-nanoserver-ltsc2022`](#nats215-nanoserver-ltsc2022)
-	[`nats:2.15-scratch`](#nats215-scratch)
-	[`nats:2.15-windowsservercore`](#nats215-windowsservercore)
-	[`nats:2.15-windowsservercore-ltsc2022`](#nats215-windowsservercore-ltsc2022)
-	[`nats:2.15.3`](#nats2153)
-	[`nats:2.15.3-alpine`](#nats2153-alpine)
-	[`nats:2.15.3-alpine3.22`](#nats2153-alpine322)
-	[`nats:2.15.3-linux`](#nats2153-linux)
-	[`nats:2.15.3-nanoserver`](#nats2153-nanoserver)
-	[`nats:2.15.3-nanoserver-ltsc2022`](#nats2153-nanoserver-ltsc2022)
-	[`nats:2.15.3-scratch`](#nats2153-scratch)
-	[`nats:2.15.3-windowsservercore`](#nats2153-windowsservercore)
-	[`nats:2.15.3-windowsservercore-ltsc2022`](#nats2153-windowsservercore-ltsc2022)
-	[`nats:alpine`](#natsalpine)
-	[`nats:alpine3.22`](#natsalpine322)
-	[`nats:latest`](#natslatest)
-	[`nats:linux`](#natslinux)
-	[`nats:nanoserver`](#natsnanoserver)
-	[`nats:nanoserver-ltsc2022`](#natsnanoserver-ltsc2022)
-	[`nats:scratch`](#natsscratch)
-	[`nats:windowsservercore`](#natswindowsservercore)
-	[`nats:windowsservercore-ltsc2022`](#natswindowsservercore-ltsc2022)

## `nats:2`

```console
$ docker pull nats@sha256:9d85d87039bfba33baf48de4da32a2ee572bcd6c94f6365d05733a672de49253
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 13
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.20348.5870; amd64

### `nats:2` - linux; amd64

```console
$ docker pull nats@sha256:be646c8caa022c84124c304a75f82607e993d85db764537e7d3ba0f6e8e91120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebabea7c61861e18b8820961301b49fcd7f3df6d9c5db6cc8d0482bef2ef4847`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:54:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:54:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:54:27 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:54:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6c41ccb011f1e3eb95229360dda280dbae3c84b32ab35a4edb30996aa04c1222`  
		Last Modified: Wed, 11 Nov 2026 12:40:47 GMT  
		Size: 7.4 MB (7413771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7196051da1c4789bd19130dfc68679be8004477b1856a7dfdd48df5b6b122b`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:6aed5a64b55e4569227b1a7f3bf3240a4b3a1a0cb7455ac6339a7c4f5f3b3a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a21a34b28996ba8d7db4252d1738beb79d54c8052bc6e693fe73f2f58d3525`

```dockerfile
```

-	Layers:
	-	`sha256:cfaec91bf4394770fec11c9732677e079c95c4dd1e419e1ecd73970b98c39bea`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm variant v6

```console
$ docker pull nats@sha256:8a878323f772784d9e3e49e206800b5a410f6991626194fa3f5991f5fb640ebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7159535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de547db16901709740b766266b3139e92f964c8b47e2320d21867396faf46d04`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:07:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:07:48 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:48 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:07:48 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0652d0be457f3d18d288edc0307eca1cd202a88e16ab984f6882712a07472087`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.2 MB (7159025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00728826337a407fb9b7e405c8d8a77cea79c644e150cf0dcd98e286f35737d`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:37c47a81bed6ea1b2961020c4b256a5ee6565cb0b8ad25c3392b6ed6cf0714a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7cf8d39791790d3e9a341b539a87c4eb1dd7e61b7376f20c239f7fef4fe453a`

```dockerfile
```

-	Layers:
	-	`sha256:c095dca2c3080f0be34b9f122370531d7e7e0cd3a7a3ad696bb56217739f9e58`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm variant v7

```console
$ docker pull nats@sha256:d199f1ca8dde7c83937bf4f62950ef61b9312a382d9c3f5313767f87fe4e1e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7149171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18d4b7ea52f86036881095b2ec72cce6170af89fbfc2d3008f26513dc5bd6ae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:19 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:19 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:19 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1d56e1908d3168328ed814028289867fa851e08df0a504b78e139c4e98e21797`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.1 MB (7148661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac74cd523247bf5196cea88a5d9d76f6fb0a6eac15700b754fb73abf7e640d79`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:ddad513f45cf6be9dda44e1fba820cc93b7015edac6967ad7675182255ca79bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e95a880af198f329eb9b1d09c1c107344f6315b7fd15d090427df5ddefc2084`

```dockerfile
```

-	Layers:
	-	`sha256:301fe24c83eb64fdcc12925ac8526b52f94821a9a4892e25e424642da67a55e0`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:830dce64852b46536c685a08928ee5ead95a58c9cd080eee0a8e13ce86f0aba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6714600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cfc58e56d5cdd41f6d183d83da256ef4f2e99bfcea14c7157587f2b47ed875`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 21:25:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 21:25:33 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 21:25:33 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 21:25:33 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6228cfd108f7c3f9ec9824ca763e1e25fc2b01559af55d05b74a0a051efde28d`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.7 MB (6714091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98e91042c5c3b3134a6074cd11c9472f0f710aaa936e98a81ee985a921fe4ec`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:9682b16459e0e6305d140e4eb3a65a2300d397561f7bd32f5a1385453337d051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2570c9b1f5aba41d1bebc9eaf4d5d778947b00871edb960a5635eb1b5d2429e1`

```dockerfile
```

-	Layers:
	-	`sha256:1565fd55d2f5eefa9c74c8dda2a71c0dd35dd7d6621c508455a0983992eb15a2`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; ppc64le

```console
$ docker pull nats@sha256:1a2420547959c489657b8b667b34cab5a6972d6740d6e6f53478a6db0ab9fcd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6780019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc94b182d2ec7f1febbe856adfded34a81a310aa723fa02bcd172c6d5ed1ed17`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 12 Nov 2026 01:01:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 12 Nov 2026 01:01:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 12 Nov 2026 01:01:37 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 12 Nov 2026 01:01:37 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9bdbb61c627844ef007af6376c4f7820d3d077333aea87599d1d9fff52f0d248`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.8 MB (6779510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15c3921d90e0def6f53910b8d2c97c1e7191c44c17ccceb6fe1377e2f60f4e0`  
		Last Modified: Thu, 12 Nov 2026 01:02:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:d02468148f1cec2e2db760de2a87b183c7fff469a4f666113dc63f2eab6951db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba9cb0342b3f73dda5682bd6a845bd46317740b5d37c77cda7cb8590a870fca`

```dockerfile
```

-	Layers:
	-	`sha256:203f0b65518389a217783c05d70a31ee0898f920598153245888d5771eb8e20c`  
		Last Modified: Thu, 12 Nov 2026 01:02:12 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; s390x

```console
$ docker pull nats@sha256:dd33cb1a221b6595bfd4643aef77a4a8e5566f0702f9dd08b2cad869e7cbf793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7206120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06199899208fa49bf5fbf0c86e72ad6eacc87807a89d7dd3f3b77d677dfc08b8`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:31:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:31:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:31:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:31:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2c7977c75081d99f8442328b859f102db4c4a9438f6ddfb6ab0007cf6b85845d`  
		Last Modified: Wed, 11 Nov 2026 12:40:48 GMT  
		Size: 7.2 MB (7205609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ed079d2e3dc3680cad70afd210e511614450b1c1bbab1d20a430ac3c1ae1131`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 511.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:b30d569e71f7ac1c9b56950d5cf24682552921c83b614b467af092a4d0a9bb6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf2c76ca30e45db54065364a4ee78a7b3e458f0b7da95ddcec5aa1cb4f635ae`

```dockerfile
```

-	Layers:
	-	`sha256:52eb5e764b12c56c3c1bed3cf22421da87376402d5f21b799623b67882a2cbbf`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:82626ff1932b07f6ac3b16e1500859c91764a061de33884d1616e4dca0d80302
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133904237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c360f19803400f80afed757d36cd2e7b06fc0d82ca9617889f0dc1d3546b7f47`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:42:18 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:c5ba8ddabfa6bdb884d582c2eb77790c07981a344bb31247325541a7a60e20d4 in C:\nats-server.exe 
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:42:23 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e36bfc7615a5cd746e5bf675d5bc88f61ed6f2565098b4e3806bde2e8d8079`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84956934b58babe208abf3bb41d01573c01145bc958eb78c0ab1c2fbb200bd6f`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 7.6 MB (7613293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f94016dc2ab84be35d26775093d2336850b05e1c371d7a1bad7e825a60d79ac`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5144c9276313080ff5b57f640ef93c7b502fbb2c581dd83e6560857aea916d47`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1637678fa817944cca81415acc00adc752c13dfacdb68eb8d4d27cdaf52c69`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe0a8e2844e4df140712e9b6d095af7a03f92f4a292095d56c85938624f5eec`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-alpine`

```console
$ docker pull nats@sha256:558394a23dd3c36f2d3a64b51865fd09908010e80a542cea5e75c2af543ed62a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:2-alpine` - linux; amd64

```console
$ docker pull nats@sha256:4d116f873a8aa17a0903b01a73b670c1d48d8164dbd18b92641b6b2bea3ca576
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11624946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ea8169776497b3f85533203eebf4cdc015bbd99096e103b44b7580870f66099`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:07:08 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:07:08 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:07:08 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:07:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5fbdd51c05f2bcdc40687231f719a46bbadac5817fd53479cc501cdb2e8ecaf`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 7.8 MB (7829602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2058ceffc175fced21ce5fa44e42c524ab3df9daceec7fd8383f83503b87897b`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cb5292e90c5ee261555e3410e51e6fb54431372c1c9938900a44ce12af4248`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:bd6e03f8ea96224dad377daa3ae06073f0b7ad74835d6865ae9ac005a1c03401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62382ba579511db5e1fbe7c6b6bb2b2839c59b4bb5d38995c16964b1182d9e12`

```dockerfile
```

-	Layers:
	-	`sha256:6b9066e344d71dc27354cb5ce9f9021f0e205b2e5a5891a96f14122a9d826d27`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:7c2a41784eec7bef33f61f5af7703b10476a51d0786a591a6e374abe0feaa6d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11075192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df845aedb9f5ebd76379689734ae3581aa8c03a60c7ea201aa8c8b6f9b0da58d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:51:54 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 19:51:54 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 19:51:54 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:51:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:51:54 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982be782ef7491766237534a340c64825b0fb3b7f46330dc2c867e213b61256c`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 7.6 MB (7572687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4901cf87dfe112c37a59137d0e38e953ce6b28f96b6a63d85d53ffe9ea87e1c`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64cd38d69b07c59789dce8681f16afeaf71852306a74dbeeda693afb2d8b764a`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:47a053c14fa0f809859f94c0a9c209757cc180a8351ce842f5c38b5def9dbfe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fbb0ec0aa3a30941dda3f95b96678973ca0c0f9fb2429032b1a4657dce5fbdc`

```dockerfile
```

-	Layers:
	-	`sha256:b032ee2dc50ce7638928624a38f941315c1bf79cbfbc2f38dc63b95e89bd1a89`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:7c259377cef516da0aa0f0dfef3c550e4e544261a6dafcc0a036fbb54a204806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10779173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66956c1a5e337ab6809d30c25812df9dd19403f7c9fd9be219da4b3bc978298`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:52:16 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 19:52:16 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 19:52:16 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:52:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:52:16 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bbd95d45b9c325743606a8d0942768db9ed8fc4ca762410d9bfb060d43c8c71`  
		Last Modified: Wed, 11 Nov 2026 19:52:21 GMT  
		Size: 7.6 MB (7562736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc306d381ad485aa19c1d8a49258126fcfc0b4b22dfe51b9f76081093655b286`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:210e3a60ec41232f23075a24e6f6b7701738cdd2b8a95110ddf7f02a43630ae5`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:65079ffe889e765f01ee57be9be534baba24a4180a28fc796db63a2e9bfc7019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0c4f20ec1d2db244ece69ae372d6fd9b5434e63f738ed52ca30e5c7c43c8a6`

```dockerfile
```

-	Layers:
	-	`sha256:4bc059622b12e1226e42ca15e6dbc32a00d82b3f99bcc76d2ad50f00a9c9ffb7`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:24598944c0a44021356e234d5334f5d6a7b0916dc0062db250e171d19ac9bb6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11257480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3035a91c92ec8bd7cdf93039ba50d18b4a401fe3e1b7fa0d88f1fecac0075cbb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:48:15 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:48:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:48:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:48:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ea356e615f28e286c59c05db6da8937a551767ee346a78c1f4d6bda06b6e8f`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 7.1 MB (7129125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd28680459beff9713b57e49f20305776f673510ba5e48f98409c22e008fc940`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01dbe57d396d17cd29bee561069ed437ad03eee5b5494b2d6d81d1e2d9c8ee01`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:60ecbc4d690b52b225ef4b5996f94415d5e25ad25c58b7d865f97e71eebab359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0311a5cb98bdb04348024507e5e23d9049fbe6de20f28b0813ccb2252b719d6`

```dockerfile
```

-	Layers:
	-	`sha256:daa994b4b6369aa0777e486cfe0b5ffdece7f7bf45f6ac378af73e68c6e38027`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:011c7c1b76a1fa3717f14bcd143c158d1a74d6670fc76d07fbc07dc65739555b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10921752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a1cdb0153958a36259069931dde22a4497f363b89ba4b07abd1070d2de1e20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 20:44:11 GMT
ADD alpine-minirootfs-3.22.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:44:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 23:11:25 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 23:11:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 23:11:25 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 23:11:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:11:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:4be1a473c77a45524d8389eeb78602a090c801a1ec4c4187ac5060cd906c4712`  
		Last Modified: Thu, 05 Nov 2026 20:44:20 GMT  
		Size: 3.7 MB (3725514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a54e6913a1e56ba64231731a62506a08e1815049e56af50eeac7fac3369f623`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 7.2 MB (7195270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cb7170ed6ba72a8842721ef5706545b5d7e6c0df93e1e563398bbd7ea15a8a`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8794200cc7fa30cf4f354240903cb6eb554f596580aa0b503493f1e48ee6c2`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1f9bbddf76cf9c0161c6043aaa801044d4af8e580e1b798ad4c53531bb23ff2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95cdb5746b357733db83a889491a152fc95224911c7a0acbc25282d7ab6cb475`

```dockerfile
```

-	Layers:
	-	`sha256:a5480ae190bdb466be835bb2d2d3b38ed8f60eff4921f1d0435f2fa2fbd9ab7e`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; s390x

```console
$ docker pull nats@sha256:8df7f7521e354b2392ad152b85092556d19aaa7c1950f44b3e434439130abf74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11264579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98450d4479a68c21c39700f208b89521b140129ba34e8d1c2dc12e2b11dff444`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:17:03 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:17:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:17:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:17:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:17:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:17:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:17:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:17:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:955cb8f4540451c232e6c2034a4fc46518ca0fbf63379f52e283db5301da41e0`  
		Last Modified: Wed, 11 Nov 2026 20:17:15 GMT  
		Size: 7.6 MB (7620405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08aa2e533d64888badfba3771ac87feffcfa5a1e56f424564f7e50692bf7ce39`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20cdf622c9229c506f0d0b5a5bbdd72388a38bb7b70fbc66b2d98bbef518b5a6`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:828fff7ae808f627dc01c4671e725d894ad90eef5f22c78fcdff8606c71a2356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4703b93bc7aba9482b419d4ed569294855766fff1fdf2b8c12c72cd36751f2f`

```dockerfile
```

-	Layers:
	-	`sha256:8086373f71f4ba98e50b1f50657140154588d0c89c2e0bea8ff0f565715976cb`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-alpine3.22`

```console
$ docker pull nats@sha256:558394a23dd3c36f2d3a64b51865fd09908010e80a542cea5e75c2af543ed62a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:2-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:4d116f873a8aa17a0903b01a73b670c1d48d8164dbd18b92641b6b2bea3ca576
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11624946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ea8169776497b3f85533203eebf4cdc015bbd99096e103b44b7580870f66099`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:07:08 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:07:08 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:07:08 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:07:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5fbdd51c05f2bcdc40687231f719a46bbadac5817fd53479cc501cdb2e8ecaf`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 7.8 MB (7829602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2058ceffc175fced21ce5fa44e42c524ab3df9daceec7fd8383f83503b87897b`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cb5292e90c5ee261555e3410e51e6fb54431372c1c9938900a44ce12af4248`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:bd6e03f8ea96224dad377daa3ae06073f0b7ad74835d6865ae9ac005a1c03401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62382ba579511db5e1fbe7c6b6bb2b2839c59b4bb5d38995c16964b1182d9e12`

```dockerfile
```

-	Layers:
	-	`sha256:6b9066e344d71dc27354cb5ce9f9021f0e205b2e5a5891a96f14122a9d826d27`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:7c2a41784eec7bef33f61f5af7703b10476a51d0786a591a6e374abe0feaa6d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11075192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df845aedb9f5ebd76379689734ae3581aa8c03a60c7ea201aa8c8b6f9b0da58d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:51:54 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 19:51:54 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 19:51:54 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:51:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:51:54 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982be782ef7491766237534a340c64825b0fb3b7f46330dc2c867e213b61256c`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 7.6 MB (7572687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4901cf87dfe112c37a59137d0e38e953ce6b28f96b6a63d85d53ffe9ea87e1c`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64cd38d69b07c59789dce8681f16afeaf71852306a74dbeeda693afb2d8b764a`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:47a053c14fa0f809859f94c0a9c209757cc180a8351ce842f5c38b5def9dbfe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fbb0ec0aa3a30941dda3f95b96678973ca0c0f9fb2429032b1a4657dce5fbdc`

```dockerfile
```

-	Layers:
	-	`sha256:b032ee2dc50ce7638928624a38f941315c1bf79cbfbc2f38dc63b95e89bd1a89`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:7c259377cef516da0aa0f0dfef3c550e4e544261a6dafcc0a036fbb54a204806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10779173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66956c1a5e337ab6809d30c25812df9dd19403f7c9fd9be219da4b3bc978298`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:52:16 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 19:52:16 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 19:52:16 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:52:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:52:16 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bbd95d45b9c325743606a8d0942768db9ed8fc4ca762410d9bfb060d43c8c71`  
		Last Modified: Wed, 11 Nov 2026 19:52:21 GMT  
		Size: 7.6 MB (7562736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc306d381ad485aa19c1d8a49258126fcfc0b4b22dfe51b9f76081093655b286`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:210e3a60ec41232f23075a24e6f6b7701738cdd2b8a95110ddf7f02a43630ae5`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:65079ffe889e765f01ee57be9be534baba24a4180a28fc796db63a2e9bfc7019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0c4f20ec1d2db244ece69ae372d6fd9b5434e63f738ed52ca30e5c7c43c8a6`

```dockerfile
```

-	Layers:
	-	`sha256:4bc059622b12e1226e42ca15e6dbc32a00d82b3f99bcc76d2ad50f00a9c9ffb7`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:24598944c0a44021356e234d5334f5d6a7b0916dc0062db250e171d19ac9bb6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11257480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3035a91c92ec8bd7cdf93039ba50d18b4a401fe3e1b7fa0d88f1fecac0075cbb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:48:15 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:48:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:48:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:48:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ea356e615f28e286c59c05db6da8937a551767ee346a78c1f4d6bda06b6e8f`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 7.1 MB (7129125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd28680459beff9713b57e49f20305776f673510ba5e48f98409c22e008fc940`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01dbe57d396d17cd29bee561069ed437ad03eee5b5494b2d6d81d1e2d9c8ee01`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:60ecbc4d690b52b225ef4b5996f94415d5e25ad25c58b7d865f97e71eebab359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0311a5cb98bdb04348024507e5e23d9049fbe6de20f28b0813ccb2252b719d6`

```dockerfile
```

-	Layers:
	-	`sha256:daa994b4b6369aa0777e486cfe0b5ffdece7f7bf45f6ac378af73e68c6e38027`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:011c7c1b76a1fa3717f14bcd143c158d1a74d6670fc76d07fbc07dc65739555b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10921752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a1cdb0153958a36259069931dde22a4497f363b89ba4b07abd1070d2de1e20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 20:44:11 GMT
ADD alpine-minirootfs-3.22.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:44:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 23:11:25 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 23:11:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 23:11:25 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 23:11:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:11:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:4be1a473c77a45524d8389eeb78602a090c801a1ec4c4187ac5060cd906c4712`  
		Last Modified: Thu, 05 Nov 2026 20:44:20 GMT  
		Size: 3.7 MB (3725514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a54e6913a1e56ba64231731a62506a08e1815049e56af50eeac7fac3369f623`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 7.2 MB (7195270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cb7170ed6ba72a8842721ef5706545b5d7e6c0df93e1e563398bbd7ea15a8a`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8794200cc7fa30cf4f354240903cb6eb554f596580aa0b503493f1e48ee6c2`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1f9bbddf76cf9c0161c6043aaa801044d4af8e580e1b798ad4c53531bb23ff2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95cdb5746b357733db83a889491a152fc95224911c7a0acbc25282d7ab6cb475`

```dockerfile
```

-	Layers:
	-	`sha256:a5480ae190bdb466be835bb2d2d3b38ed8f60eff4921f1d0435f2fa2fbd9ab7e`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:8df7f7521e354b2392ad152b85092556d19aaa7c1950f44b3e434439130abf74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11264579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98450d4479a68c21c39700f208b89521b140129ba34e8d1c2dc12e2b11dff444`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:17:03 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:17:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:17:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:17:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:17:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:17:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:17:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:17:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:955cb8f4540451c232e6c2034a4fc46518ca0fbf63379f52e283db5301da41e0`  
		Last Modified: Wed, 11 Nov 2026 20:17:15 GMT  
		Size: 7.6 MB (7620405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08aa2e533d64888badfba3771ac87feffcfa5a1e56f424564f7e50692bf7ce39`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20cdf622c9229c506f0d0b5a5bbdd72388a38bb7b70fbc66b2d98bbef518b5a6`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:828fff7ae808f627dc01c4671e725d894ad90eef5f22c78fcdff8606c71a2356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4703b93bc7aba9482b419d4ed569294855766fff1fdf2b8c12c72cd36751f2f`

```dockerfile
```

-	Layers:
	-	`sha256:8086373f71f4ba98e50b1f50657140154588d0c89c2e0bea8ff0f565715976cb`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-linux`

```console
$ docker pull nats@sha256:cf783105b65fd68ed9c40fdae8f624f97177c1fc1b705b4939eb25f27df22019
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:2-linux` - linux; amd64

```console
$ docker pull nats@sha256:be646c8caa022c84124c304a75f82607e993d85db764537e7d3ba0f6e8e91120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebabea7c61861e18b8820961301b49fcd7f3df6d9c5db6cc8d0482bef2ef4847`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:54:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:54:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:54:27 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:54:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6c41ccb011f1e3eb95229360dda280dbae3c84b32ab35a4edb30996aa04c1222`  
		Last Modified: Wed, 11 Nov 2026 12:40:47 GMT  
		Size: 7.4 MB (7413771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7196051da1c4789bd19130dfc68679be8004477b1856a7dfdd48df5b6b122b`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:6aed5a64b55e4569227b1a7f3bf3240a4b3a1a0cb7455ac6339a7c4f5f3b3a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a21a34b28996ba8d7db4252d1738beb79d54c8052bc6e693fe73f2f58d3525`

```dockerfile
```

-	Layers:
	-	`sha256:cfaec91bf4394770fec11c9732677e079c95c4dd1e419e1ecd73970b98c39bea`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:8a878323f772784d9e3e49e206800b5a410f6991626194fa3f5991f5fb640ebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7159535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de547db16901709740b766266b3139e92f964c8b47e2320d21867396faf46d04`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:07:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:07:48 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:48 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:07:48 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0652d0be457f3d18d288edc0307eca1cd202a88e16ab984f6882712a07472087`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.2 MB (7159025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00728826337a407fb9b7e405c8d8a77cea79c644e150cf0dcd98e286f35737d`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:37c47a81bed6ea1b2961020c4b256a5ee6565cb0b8ad25c3392b6ed6cf0714a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7cf8d39791790d3e9a341b539a87c4eb1dd7e61b7376f20c239f7fef4fe453a`

```dockerfile
```

-	Layers:
	-	`sha256:c095dca2c3080f0be34b9f122370531d7e7e0cd3a7a3ad696bb56217739f9e58`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:d199f1ca8dde7c83937bf4f62950ef61b9312a382d9c3f5313767f87fe4e1e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7149171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18d4b7ea52f86036881095b2ec72cce6170af89fbfc2d3008f26513dc5bd6ae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:19 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:19 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:19 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1d56e1908d3168328ed814028289867fa851e08df0a504b78e139c4e98e21797`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.1 MB (7148661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac74cd523247bf5196cea88a5d9d76f6fb0a6eac15700b754fb73abf7e640d79`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:ddad513f45cf6be9dda44e1fba820cc93b7015edac6967ad7675182255ca79bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e95a880af198f329eb9b1d09c1c107344f6315b7fd15d090427df5ddefc2084`

```dockerfile
```

-	Layers:
	-	`sha256:301fe24c83eb64fdcc12925ac8526b52f94821a9a4892e25e424642da67a55e0`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:830dce64852b46536c685a08928ee5ead95a58c9cd080eee0a8e13ce86f0aba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6714600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cfc58e56d5cdd41f6d183d83da256ef4f2e99bfcea14c7157587f2b47ed875`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 21:25:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 21:25:33 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 21:25:33 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 21:25:33 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6228cfd108f7c3f9ec9824ca763e1e25fc2b01559af55d05b74a0a051efde28d`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.7 MB (6714091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98e91042c5c3b3134a6074cd11c9472f0f710aaa936e98a81ee985a921fe4ec`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:9682b16459e0e6305d140e4eb3a65a2300d397561f7bd32f5a1385453337d051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2570c9b1f5aba41d1bebc9eaf4d5d778947b00871edb960a5635eb1b5d2429e1`

```dockerfile
```

-	Layers:
	-	`sha256:1565fd55d2f5eefa9c74c8dda2a71c0dd35dd7d6621c508455a0983992eb15a2`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:1a2420547959c489657b8b667b34cab5a6972d6740d6e6f53478a6db0ab9fcd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6780019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc94b182d2ec7f1febbe856adfded34a81a310aa723fa02bcd172c6d5ed1ed17`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 12 Nov 2026 01:01:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 12 Nov 2026 01:01:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 12 Nov 2026 01:01:37 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 12 Nov 2026 01:01:37 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9bdbb61c627844ef007af6376c4f7820d3d077333aea87599d1d9fff52f0d248`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.8 MB (6779510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15c3921d90e0def6f53910b8d2c97c1e7191c44c17ccceb6fe1377e2f60f4e0`  
		Last Modified: Thu, 12 Nov 2026 01:02:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:d02468148f1cec2e2db760de2a87b183c7fff469a4f666113dc63f2eab6951db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba9cb0342b3f73dda5682bd6a845bd46317740b5d37c77cda7cb8590a870fca`

```dockerfile
```

-	Layers:
	-	`sha256:203f0b65518389a217783c05d70a31ee0898f920598153245888d5771eb8e20c`  
		Last Modified: Thu, 12 Nov 2026 01:02:12 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; s390x

```console
$ docker pull nats@sha256:dd33cb1a221b6595bfd4643aef77a4a8e5566f0702f9dd08b2cad869e7cbf793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7206120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06199899208fa49bf5fbf0c86e72ad6eacc87807a89d7dd3f3b77d677dfc08b8`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:31:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:31:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:31:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:31:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2c7977c75081d99f8442328b859f102db4c4a9438f6ddfb6ab0007cf6b85845d`  
		Last Modified: Wed, 11 Nov 2026 12:40:48 GMT  
		Size: 7.2 MB (7205609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ed079d2e3dc3680cad70afd210e511614450b1c1bbab1d20a430ac3c1ae1131`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 511.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:b30d569e71f7ac1c9b56950d5cf24682552921c83b614b467af092a4d0a9bb6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf2c76ca30e45db54065364a4ee78a7b3e458f0b7da95ddcec5aa1cb4f635ae`

```dockerfile
```

-	Layers:
	-	`sha256:52eb5e764b12c56c3c1bed3cf22421da87376402d5f21b799623b67882a2cbbf`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-nanoserver`

```console
$ docker pull nats@sha256:86631f4afff7e7b28f26fb7fbc0ed323dbaa1e1e7c6cd286d58526474a3f71f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:2-nanoserver` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:82626ff1932b07f6ac3b16e1500859c91764a061de33884d1616e4dca0d80302
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133904237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c360f19803400f80afed757d36cd2e7b06fc0d82ca9617889f0dc1d3546b7f47`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:42:18 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:c5ba8ddabfa6bdb884d582c2eb77790c07981a344bb31247325541a7a60e20d4 in C:\nats-server.exe 
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:42:23 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e36bfc7615a5cd746e5bf675d5bc88f61ed6f2565098b4e3806bde2e8d8079`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84956934b58babe208abf3bb41d01573c01145bc958eb78c0ab1c2fbb200bd6f`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 7.6 MB (7613293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f94016dc2ab84be35d26775093d2336850b05e1c371d7a1bad7e825a60d79ac`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5144c9276313080ff5b57f640ef93c7b502fbb2c581dd83e6560857aea916d47`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1637678fa817944cca81415acc00adc752c13dfacdb68eb8d4d27cdaf52c69`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe0a8e2844e4df140712e9b6d095af7a03f92f4a292095d56c85938624f5eec`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:86631f4afff7e7b28f26fb7fbc0ed323dbaa1e1e7c6cd286d58526474a3f71f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:2-nanoserver-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:82626ff1932b07f6ac3b16e1500859c91764a061de33884d1616e4dca0d80302
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133904237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c360f19803400f80afed757d36cd2e7b06fc0d82ca9617889f0dc1d3546b7f47`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:42:18 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:c5ba8ddabfa6bdb884d582c2eb77790c07981a344bb31247325541a7a60e20d4 in C:\nats-server.exe 
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:42:23 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e36bfc7615a5cd746e5bf675d5bc88f61ed6f2565098b4e3806bde2e8d8079`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84956934b58babe208abf3bb41d01573c01145bc958eb78c0ab1c2fbb200bd6f`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 7.6 MB (7613293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f94016dc2ab84be35d26775093d2336850b05e1c371d7a1bad7e825a60d79ac`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5144c9276313080ff5b57f640ef93c7b502fbb2c581dd83e6560857aea916d47`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1637678fa817944cca81415acc00adc752c13dfacdb68eb8d4d27cdaf52c69`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe0a8e2844e4df140712e9b6d095af7a03f92f4a292095d56c85938624f5eec`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-scratch`

```console
$ docker pull nats@sha256:cf783105b65fd68ed9c40fdae8f624f97177c1fc1b705b4939eb25f27df22019
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:2-scratch` - linux; amd64

```console
$ docker pull nats@sha256:be646c8caa022c84124c304a75f82607e993d85db764537e7d3ba0f6e8e91120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebabea7c61861e18b8820961301b49fcd7f3df6d9c5db6cc8d0482bef2ef4847`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:54:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:54:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:54:27 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:54:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6c41ccb011f1e3eb95229360dda280dbae3c84b32ab35a4edb30996aa04c1222`  
		Last Modified: Wed, 11 Nov 2026 12:40:47 GMT  
		Size: 7.4 MB (7413771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7196051da1c4789bd19130dfc68679be8004477b1856a7dfdd48df5b6b122b`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:6aed5a64b55e4569227b1a7f3bf3240a4b3a1a0cb7455ac6339a7c4f5f3b3a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a21a34b28996ba8d7db4252d1738beb79d54c8052bc6e693fe73f2f58d3525`

```dockerfile
```

-	Layers:
	-	`sha256:cfaec91bf4394770fec11c9732677e079c95c4dd1e419e1ecd73970b98c39bea`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:8a878323f772784d9e3e49e206800b5a410f6991626194fa3f5991f5fb640ebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7159535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de547db16901709740b766266b3139e92f964c8b47e2320d21867396faf46d04`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:07:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:07:48 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:48 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:07:48 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0652d0be457f3d18d288edc0307eca1cd202a88e16ab984f6882712a07472087`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.2 MB (7159025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00728826337a407fb9b7e405c8d8a77cea79c644e150cf0dcd98e286f35737d`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:37c47a81bed6ea1b2961020c4b256a5ee6565cb0b8ad25c3392b6ed6cf0714a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7cf8d39791790d3e9a341b539a87c4eb1dd7e61b7376f20c239f7fef4fe453a`

```dockerfile
```

-	Layers:
	-	`sha256:c095dca2c3080f0be34b9f122370531d7e7e0cd3a7a3ad696bb56217739f9e58`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:d199f1ca8dde7c83937bf4f62950ef61b9312a382d9c3f5313767f87fe4e1e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7149171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18d4b7ea52f86036881095b2ec72cce6170af89fbfc2d3008f26513dc5bd6ae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:19 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:19 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:19 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1d56e1908d3168328ed814028289867fa851e08df0a504b78e139c4e98e21797`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.1 MB (7148661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac74cd523247bf5196cea88a5d9d76f6fb0a6eac15700b754fb73abf7e640d79`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:ddad513f45cf6be9dda44e1fba820cc93b7015edac6967ad7675182255ca79bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e95a880af198f329eb9b1d09c1c107344f6315b7fd15d090427df5ddefc2084`

```dockerfile
```

-	Layers:
	-	`sha256:301fe24c83eb64fdcc12925ac8526b52f94821a9a4892e25e424642da67a55e0`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:830dce64852b46536c685a08928ee5ead95a58c9cd080eee0a8e13ce86f0aba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6714600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cfc58e56d5cdd41f6d183d83da256ef4f2e99bfcea14c7157587f2b47ed875`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 21:25:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 21:25:33 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 21:25:33 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 21:25:33 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6228cfd108f7c3f9ec9824ca763e1e25fc2b01559af55d05b74a0a051efde28d`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.7 MB (6714091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98e91042c5c3b3134a6074cd11c9472f0f710aaa936e98a81ee985a921fe4ec`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:9682b16459e0e6305d140e4eb3a65a2300d397561f7bd32f5a1385453337d051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2570c9b1f5aba41d1bebc9eaf4d5d778947b00871edb960a5635eb1b5d2429e1`

```dockerfile
```

-	Layers:
	-	`sha256:1565fd55d2f5eefa9c74c8dda2a71c0dd35dd7d6621c508455a0983992eb15a2`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:1a2420547959c489657b8b667b34cab5a6972d6740d6e6f53478a6db0ab9fcd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6780019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc94b182d2ec7f1febbe856adfded34a81a310aa723fa02bcd172c6d5ed1ed17`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 12 Nov 2026 01:01:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 12 Nov 2026 01:01:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 12 Nov 2026 01:01:37 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 12 Nov 2026 01:01:37 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9bdbb61c627844ef007af6376c4f7820d3d077333aea87599d1d9fff52f0d248`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.8 MB (6779510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15c3921d90e0def6f53910b8d2c97c1e7191c44c17ccceb6fe1377e2f60f4e0`  
		Last Modified: Thu, 12 Nov 2026 01:02:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:d02468148f1cec2e2db760de2a87b183c7fff469a4f666113dc63f2eab6951db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba9cb0342b3f73dda5682bd6a845bd46317740b5d37c77cda7cb8590a870fca`

```dockerfile
```

-	Layers:
	-	`sha256:203f0b65518389a217783c05d70a31ee0898f920598153245888d5771eb8e20c`  
		Last Modified: Thu, 12 Nov 2026 01:02:12 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; s390x

```console
$ docker pull nats@sha256:dd33cb1a221b6595bfd4643aef77a4a8e5566f0702f9dd08b2cad869e7cbf793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7206120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06199899208fa49bf5fbf0c86e72ad6eacc87807a89d7dd3f3b77d677dfc08b8`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:31:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:31:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:31:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:31:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2c7977c75081d99f8442328b859f102db4c4a9438f6ddfb6ab0007cf6b85845d`  
		Last Modified: Wed, 11 Nov 2026 12:40:48 GMT  
		Size: 7.2 MB (7205609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ed079d2e3dc3680cad70afd210e511614450b1c1bbab1d20a430ac3c1ae1131`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 511.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:b30d569e71f7ac1c9b56950d5cf24682552921c83b614b467af092a4d0a9bb6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf2c76ca30e45db54065364a4ee78a7b3e458f0b7da95ddcec5aa1cb4f635ae`

```dockerfile
```

-	Layers:
	-	`sha256:52eb5e764b12c56c3c1bed3cf22421da87376402d5f21b799623b67882a2cbbf`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-windowsservercore`

```console
$ docker pull nats@sha256:a31dfcd28fbf4d306c1c448eadb15654c135a2f400e9fa65f86094e2b364669f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:2-windowsservercore` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:e0489f3d14baf708ee09ab8e947465433f849f6bbb1210598e27abc09b095b1f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2254643417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd6bd6341b1de430d87732ea5398f9b08c4adee02577939eaf5432d8f17ac45`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 22:02:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Nov 2026 22:02:03 GMT
ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:02:03 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 22:02:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 22:02:04 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.3/nats-server-v2.15.3-windows-amd64.zip
# Wed, 11 Nov 2026 22:02:05 GMT
ENV NATS_SERVER_SHASUM=b202c46689a56b17e88939b6c53a25294021b000b9c7225209bcb1bbda347bad
# Wed, 11 Nov 2026 22:02:10 GMT
RUN Set-PSDebug -Trace 2
# Wed, 11 Nov 2026 22:02:24 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 11 Nov 2026 22:02:25 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:02:25 GMT
EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:02:26 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:02:26 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985cdefb6abad122d5e02da8d25bc1bdd43faf7ca80f9dd3261101a1ab8c007`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5387296daa8755673907cf7b38bdb72ad011942273ab0f479fcaf018e17c212c`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b78732d3507844ef8846ccd9d2ba3ef883239183bb11232baeebb490352adc`  
		Last Modified: Wed, 11 Nov 2026 22:02:33 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6586b41c56c24767a97b23132fd476c0f8de21eaa4e2f37591460a629217db`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1043024db70a01dfb9dbdfd5ad844220e003bdb75eb118b33f6ed75328a621e9`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e551f074d7ec040e422ef202557e89640be13785cf28a79c5c4fe77cd33dfb`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a6bbcb7f6de472537b60f64c7dbf3864d15aa450318e50dd16c41f4c77266`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 334.6 KB (334619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3c2cb359caa4b1aa6c5d353145a0fc3b991542d5a30c4dc9e3520a23ffd48e`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 7.9 MB (7947389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdab1c5f722823a86f3a781d862b90650731fed509b6592bfff0f3e5af650bc`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e441b8b58ab60dfc55e36e831bb77090e9b12e31b9b672c7098a5faf15615b81`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e979385e8e6d4eff187b9ab85d958d21603c164f973a78fe521edecc1ffc7b8e`  
		Last Modified: Wed, 11 Nov 2026 22:02:31 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5468399958e8bf928890dc09ae6d2479a9a65d97ec3cc2c2fcd3cdc9875c0e`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:a31dfcd28fbf4d306c1c448eadb15654c135a2f400e9fa65f86094e2b364669f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:2-windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:e0489f3d14baf708ee09ab8e947465433f849f6bbb1210598e27abc09b095b1f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2254643417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd6bd6341b1de430d87732ea5398f9b08c4adee02577939eaf5432d8f17ac45`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 22:02:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Nov 2026 22:02:03 GMT
ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:02:03 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 22:02:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 22:02:04 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.3/nats-server-v2.15.3-windows-amd64.zip
# Wed, 11 Nov 2026 22:02:05 GMT
ENV NATS_SERVER_SHASUM=b202c46689a56b17e88939b6c53a25294021b000b9c7225209bcb1bbda347bad
# Wed, 11 Nov 2026 22:02:10 GMT
RUN Set-PSDebug -Trace 2
# Wed, 11 Nov 2026 22:02:24 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 11 Nov 2026 22:02:25 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:02:25 GMT
EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:02:26 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:02:26 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985cdefb6abad122d5e02da8d25bc1bdd43faf7ca80f9dd3261101a1ab8c007`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5387296daa8755673907cf7b38bdb72ad011942273ab0f479fcaf018e17c212c`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b78732d3507844ef8846ccd9d2ba3ef883239183bb11232baeebb490352adc`  
		Last Modified: Wed, 11 Nov 2026 22:02:33 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6586b41c56c24767a97b23132fd476c0f8de21eaa4e2f37591460a629217db`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1043024db70a01dfb9dbdfd5ad844220e003bdb75eb118b33f6ed75328a621e9`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e551f074d7ec040e422ef202557e89640be13785cf28a79c5c4fe77cd33dfb`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a6bbcb7f6de472537b60f64c7dbf3864d15aa450318e50dd16c41f4c77266`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 334.6 KB (334619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3c2cb359caa4b1aa6c5d353145a0fc3b991542d5a30c4dc9e3520a23ffd48e`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 7.9 MB (7947389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdab1c5f722823a86f3a781d862b90650731fed509b6592bfff0f3e5af650bc`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e441b8b58ab60dfc55e36e831bb77090e9b12e31b9b672c7098a5faf15615b81`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e979385e8e6d4eff187b9ab85d958d21603c164f973a78fe521edecc1ffc7b8e`  
		Last Modified: Wed, 11 Nov 2026 22:02:31 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5468399958e8bf928890dc09ae6d2479a9a65d97ec3cc2c2fcd3cdc9875c0e`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14`

```console
$ docker pull nats@sha256:d3ff8318fd701226cef926b30de53ab3a08a44a8abe8370c85f948d371161e63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 13
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.20348.5870; amd64

### `nats:2.14` - linux; amd64

```console
$ docker pull nats@sha256:922270c252033e351a5f2870f0e927f8437dd5eb1b88d0e666d32239ce0c7ab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7013651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7007d1a67ae5a7995c69dca30eb2804e743a3d8aba4de9ef34f4f7f3d61bd03e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:54:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:54:38 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:54:38 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:54:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:54:38 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:54:38 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f15171c6e5ebcbd63457c8889127507cfe79107d68c6b64a087039c1e5f8417d`  
		Last Modified: Wed, 11 Nov 2026 12:41:01 GMT  
		Size: 7.0 MB (7013142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f7abab0371cfd6ca63873fe8baebd3a4495cf83e833fbdcbf04b1b1eb60a30`  
		Last Modified: Wed, 11 Nov 2026 20:54:42 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:0c34beb862b95e4d369ddd3cf1c2a0495b7745503e66d61ff990e3bc59028241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665d8d20dce7702f02ce33005b90033e6e1fa17907ef866ef097c03f299e65b2`

```dockerfile
```

-	Layers:
	-	`sha256:8b25317bdf07a4fa5613f9af2caec79736fb6a3708ace307c9f590f507b74cec`  
		Last Modified: Wed, 11 Nov 2026 20:54:42 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm variant v6

```console
$ docker pull nats@sha256:2213189fb2bf8fffc2db323c944b09e7902ba65021822fc938119e209784c535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6747435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:809906f2fffe0f22b59e1457edb9693cbd8fee4e8667875f119f393f00166374`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:31 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:31 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9b0feeab9036f3e750843336a9e7f4378e381fde0ea1c2b888cdafc9cdb6ab21`  
		Last Modified: Wed, 11 Nov 2026 12:41:00 GMT  
		Size: 6.7 MB (6746925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9d75f0a0136245c86287aae27e74cf3aa354d397ea5d7ebf826bc45335ed9`  
		Last Modified: Wed, 11 Nov 2026 20:08:35 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:e596c47f64d801ea42ae171b2633c6209faa9c447d2dabc06a836986f19eddf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596f27f864c3175231c8f4cb0da332d5f4ceb8baa90daa61b8ab0494c09fdc9a`

```dockerfile
```

-	Layers:
	-	`sha256:9b2158632486e227b052a0474d79e20a29acfd3fc059af7c8a25ed5961bd586f`  
		Last Modified: Wed, 11 Nov 2026 20:08:35 GMT  
		Size: 8.8 KB (8750 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm variant v7

```console
$ docker pull nats@sha256:97084dfa46ecc18f4ba48564649683dc006e06be52813715b4b5fb5d307e7764
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6737574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2804f0449025b22a577c4a5b0f75b0eb5075f8c28d3a3496432bdd5a1fbf064f`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:42 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:42 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:42 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:aef48f5af27ceb64fc6dc45187f41f7fa18973cdc99677e4f787b8570bab5152`  
		Last Modified: Wed, 11 Nov 2026 12:41:03 GMT  
		Size: 6.7 MB (6737064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5ff031fdac4e1717984648ecf2efbcb25d16468f0b2f8a4442306514229cdba`  
		Last Modified: Wed, 11 Nov 2026 20:08:46 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:0da6928653d298d2de74a9a1157ae5ea4de47951ee2f84f838faa81bcb6581b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e3d2a58e43ba7f95e29889ae72c9747ea6bf2b220730d6b687abcf5a7b2eb03`

```dockerfile
```

-	Layers:
	-	`sha256:d8b34bc0be71fae9ba3608c6f4d3891f67ae466e82eea24b2ff07d2034e9c481`  
		Last Modified: Wed, 11 Nov 2026 20:08:46 GMT  
		Size: 8.8 KB (8750 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:41983d31edef728184dc279b954ec34ffa8bc48be8d70d02d420e4681f8b98ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6351475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330bb9fc6462306d2ccb71ef8f72c6cc591f7e2de7374df6ad14d56ee8c27366`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 21:25:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 21:25:44 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 21:25:45 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 21:25:45 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 21:25:45 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 21:25:45 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:84edceaeaf564bde8005bb0242a524b981dacd7654d1400b72a23e2beb26be4e`  
		Last Modified: Wed, 11 Nov 2026 12:41:01 GMT  
		Size: 6.4 MB (6350965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e07a2aa6a4dc564859e6a5fe1d08e6c0175b321c9ea3b6352cb812ceefaa3d0`  
		Last Modified: Wed, 11 Nov 2026 21:25:49 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:c1ce5a772c2d17f21df539fb83186b5fd3bda76be17e0cee7306b251ae30e734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6463a474c7f4656ad15e41e323279ab7dd2d1ddd75a9f939c174dc455cce1657`

```dockerfile
```

-	Layers:
	-	`sha256:284f26e80cd682dd4143873916562cf0b696fe22efcb38081ba3de120dd369d4`  
		Last Modified: Wed, 11 Nov 2026 21:25:49 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; ppc64le

```console
$ docker pull nats@sha256:a4cbe4bd2e322532e15bda41c84b4e44b76a215c3281928c5e9a7ef8c0b34019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6416357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb57202c6d5f4c2c1fc1e3ac7ce1f194e63a31f7addbe93a7d4459778700604`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 12 Nov 2026 01:01:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 12 Nov 2026 01:01:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 12 Nov 2026 01:01:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 12 Nov 2026 01:01:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 12 Nov 2026 01:01:01 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 12 Nov 2026 01:01:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:81a746d2f75f44a141ddf3ba6c18f32c7feae2c9eee1584dcbb956f4ca50329b`  
		Last Modified: Wed, 11 Nov 2026 12:41:04 GMT  
		Size: 6.4 MB (6415848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75410ddeb4acea40b3afcec80983bad0170a958aea854eac2f5c252025f56454`  
		Last Modified: Thu, 12 Nov 2026 01:01:42 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:e7643ed15279bffea7919d4169ef5d56f038988d03845be3afd7c0e7ac41dcdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46f0c59c15b34ee1bb0657b74fe610a4528f2b4745874499f0ed64d19db31b4`

```dockerfile
```

-	Layers:
	-	`sha256:ebb99f93cc4271ec460dc191777f24d7deb8b904b8b8c0e159fe79219a6c2037`  
		Last Modified: Thu, 12 Nov 2026 01:01:42 GMT  
		Size: 8.7 KB (8722 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; s390x

```console
$ docker pull nats@sha256:beb588b4c04fef14a7583a01205d8f769986f6233fd06ba7318cf6c8277d6bf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6823726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d8919afc06b4c40d3ae7c9ab10b4d421aa46b9355dca0e2772eecf4acf9f6b2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:31:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:31:03 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:31:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:31:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:84290b78f361faf20cb777094c3b55745e6215d9097837a6836ba57aeee6ed25`  
		Last Modified: Wed, 11 Nov 2026 12:41:04 GMT  
		Size: 6.8 MB (6823216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5650707dc9e2dd4e72ebd852d02677e7fa556c983e908a013a5c18df101d9df8`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:0cd6edbb8ee09f64d969c48092382cbdcf74e6167e45a9af5064c08c71af80b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6760ec914a7cc22a900901f64c6c73d04d52a54a1e7228effe42a07abb92a3f`

```dockerfile
```

-	Layers:
	-	`sha256:3ffd6f05517d58009b1ae4c4377c1f3d266978748840945ce7b5171726b3ad94`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:45cc10ae6154e644307e5477b2195de1a5a743ff905eed01aff75c0c49f6dc7b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133508205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb73c3194923928b776dc13235cf794c811bd820aa079fbde820f55e52a73dd1`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:42:23 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:42:24 GMT
RUN cmd /S /C #(nop) COPY file:9cf9a9b2bbb7744030e57e861b6fd70e92ab618adc28a3cc2d04ec93fb19fec6 in C:\nats-server.exe 
# Wed, 11 Nov 2026 22:42:24 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:42:25 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:42:25 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:42:26 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147d1168648cbe35b00f8375a6a609c1a782ca13d7dc30736aae7b96944d7159`  
		Last Modified: Wed, 11 Nov 2026 22:42:31 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e886400fd12311e6e4ae8be2effb2964a2daa9c8cda87c0a7601f9c9cd6a20`  
		Last Modified: Wed, 11 Nov 2026 22:42:31 GMT  
		Size: 7.2 MB (7217337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f959d8cd478a293d1b1b50fc957498f7e7f8a8fb1550c4fc16ed074ee86203ce`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139e3dd33965774056bc5c0b00fd7a33373c2e5bddc2ab2b4e0d3f10a060b768`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde37fb53cb2fff617727669ed32b5f64561d1eea8b1d14a4de8fe3fff4cfddd`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f3607fbf5b974b3b14bb751857b8f9e7936e07c1993840e6399c278c07f3ec`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-alpine`

```console
$ docker pull nats@sha256:311da47e2f31c26e99c623cd78d486a1e8ab039c49b32652770bb91a4f70512e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:2.14-alpine` - linux; amd64

```console
$ docker pull nats@sha256:9bfe7d4c18d64f9af67cf94a09699b5864ca82245cc07d5e2387f9b9545e84c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11220737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8984bfaa36c9185a37f5b4e99660748618e4950fe6646cfa06cba2772fec87ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:07:13 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 20:07:13 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 20:07:13 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:07:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:13 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:07:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:07:13 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b26a5b8e8d2c34696f363f13da120510e05b460695a5ed9b214327eb022ad617`  
		Last Modified: Wed, 11 Nov 2026 20:07:18 GMT  
		Size: 7.4 MB (7425392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8edc09963ff93c1c2c3fe6f89aff67f43f01f1d616b2c0fec12f6c4163649bf5`  
		Last Modified: Wed, 11 Nov 2026 20:07:17 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3c78fcef50e7e6e0e39777d7339106f3c8e90c86bcab4ddd6f97ad6a059f88`  
		Last Modified: Wed, 11 Nov 2026 20:07:17 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c5ce800df8b38b0914fbbbc48120373e8e4a90d737774497e27e44973e7b598f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7099a994debc804f5c74347e179e0c38dbd8dddb5128eae8c10a49097defe6c1`

```dockerfile
```

-	Layers:
	-	`sha256:eb550d9dcf7fda56c38b91089e8c2bd5883de145e6a6d7488a7073ac2fc5906e`  
		Last Modified: Wed, 11 Nov 2026 20:07:18 GMT  
		Size: 14.2 KB (14208 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:c3692f11ce99940870ba31aff74b9d51f8b3b0cc55cc0336cbb12cfb9f00b902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10662932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbd3cc6e41a030c083e986ea485ab56bebabdc8465dff0d8ba56b8b7105c7f61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:52:29 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 19:52:29 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 19:52:29 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:52:29 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:52:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:52:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:52:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:52:29 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f81f74aef8b01dbe4ca0e4dc6205ee847df78007d1e79763a0c48ab52caf5453`  
		Last Modified: Wed, 11 Nov 2026 19:52:34 GMT  
		Size: 7.2 MB (7160427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb22854fa302e0f91aab57f89f1e91fe1858ddc2ed9b1ef25050fe33b8b6a2a5`  
		Last Modified: Wed, 11 Nov 2026 19:52:33 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aef6220de0dd3517b93e8af5710f0ee61a427766c5c4597ad0a8b8920ab0736`  
		Last Modified: Wed, 11 Nov 2026 19:52:34 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:74c800ed63abd82bdade6e46454557586b6d8570e96a98162fb71c109b707bc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7a2b33a78ad0526d8f040b328090b843d0c36fae1b144c7cd9480609b656ea`

```dockerfile
```

-	Layers:
	-	`sha256:53b7b9659ebd6e88182f49e2b77934a7c8aa06c0b50762dece703539b76736f8`  
		Last Modified: Wed, 11 Nov 2026 19:52:33 GMT  
		Size: 14.3 KB (14289 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:b42ebdc9d19ace2623367fb4669df0c2317515e4311a7ca99c922ab53b8d36b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10367300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20304bc4474219f35604c8271fd731577c3cd5178fd146ece75f2ff06a62ae02`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:52:28 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 19:52:28 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 19:52:28 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:52:28 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:52:28 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:52:28 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:52:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:52:28 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37cd58d29407408356c7392ceb356f85c0fd91e60f3ae32d28b3e5425b6730d9`  
		Last Modified: Wed, 11 Nov 2026 19:52:32 GMT  
		Size: 7.2 MB (7150862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:493e56882e0fa8e01c4e204529d91d0719e5366066d1ca15a554a301df82f54f`  
		Last Modified: Wed, 11 Nov 2026 19:52:32 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0732b20f0b33e1c83c0b804697f4f9c15d031993e8629dee5f059aa27878915`  
		Last Modified: Wed, 11 Nov 2026 19:52:32 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1a7ddc6a8f351c5a833ad1a5a820a3d165703731de6b47a8079c73fea0a4b525
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9da5f78eb795e7445b6583cfb23251bebe35e9b2f353296e1fd9259db3af6a9b`

```dockerfile
```

-	Layers:
	-	`sha256:b034dbd6c93a676006cf83738eeafdcf53609fb1fd1ee9c6329210b9c91f8c97`  
		Last Modified: Wed, 11 Nov 2026 19:52:32 GMT  
		Size: 14.3 KB (14289 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8032c4b0a32f0d2ce577b9cf76b1c65189feaa94232db45406f7377f58129f5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10894150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d6a6dde2985ccbbb2f16320090ad77ff4d5cba1701e9dacda1f354da023679`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:48:16 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 20:48:16 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 20:48:16 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:48:16 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:48:16 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:48:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:48:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:48:16 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f76c069d1d51f44773b45e6f5bfdf602b8349f074788cfd35c0c1c55582acee`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 6.8 MB (6765797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15a65951c08d9f74270ad785fd1f752b55d6c36792c0668cf19246cecdb4873`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5b12e46b205bcbd3ed1665ceebbd0a833ad760051f46e8a37da46519c9d6cc`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:dfa8825ebea5e68f2144990c1e1eff1b35f8aea8f81fe72d851ee77d69f5d068
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de515dd333d4cb230757b6d5a8dfe3652f943a5cc734159d49a7f723bb3b518b`

```dockerfile
```

-	Layers:
	-	`sha256:80c3e6847b80dbb4910503235cb5ca1c154fb8df59bf0cf2fa5d8e354d0213bb`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 14.3 KB (14313 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:39c61df204b6de7045f872525bb836da3d3c2f4ac7d17af5287afea9a0250bc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10556750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c330da187943a2d84bf60c52b030caca3f37e8ea302e267680e43dabf4fa45d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 20:44:11 GMT
ADD alpine-minirootfs-3.22.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:44:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 23:12:33 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 23:12:33 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 23:12:33 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 23:12:33 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 23:12:34 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 23:12:34 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 23:12:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:12:34 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:4be1a473c77a45524d8389eeb78602a090c801a1ec4c4187ac5060cd906c4712`  
		Last Modified: Thu, 05 Nov 2026 20:44:20 GMT  
		Size: 3.7 MB (3725514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c54119b5cecfe0ab18afa5a67116f75fb7b02b1fd677da1217d0395dd281c8a3`  
		Last Modified: Wed, 11 Nov 2026 23:12:49 GMT  
		Size: 6.8 MB (6830266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d05dc595ed4271d003723bd7086e8257ba25f5b9e35654b52c58f9a5661188`  
		Last Modified: Wed, 11 Nov 2026 23:12:49 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dcf4e09ad9cf1771236c5ea8aa5dda6c22a04c1839057eaac62c0dc09b40200`  
		Last Modified: Wed, 11 Nov 2026 23:12:49 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:94711313e52bc7961e93efce83a25acb77766f37a7d8fafdbc4030f9dcaa818d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd104bbfeac4da05e5372acaf889ad215f9a2d1d30dac65a45c2dc2d4324c441`

```dockerfile
```

-	Layers:
	-	`sha256:de0fc51e384ca323f07fed37d0ff9f5b6e09a733a31cfebf4b5429a06c6e4655`  
		Last Modified: Wed, 11 Nov 2026 23:12:49 GMT  
		Size: 14.3 KB (14252 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; s390x

```console
$ docker pull nats@sha256:8e41f49538e70ed79f191ff99c6ee83002de027890456c1d09d7d8db58229737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10881987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea236b05a5c02f434dbf6ad5868b3d366ae8f18a385798f2423b0fa173757e8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:17:01 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 20:17:01 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 20:17:01 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:17:01 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:17:02 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:17:02 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:17:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:17:02 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c906e79673b42f12f7005c0539c91b6ed26f05fefab4c4ae783970d443cf8d5d`  
		Last Modified: Wed, 11 Nov 2026 20:17:12 GMT  
		Size: 7.2 MB (7237814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d61131ff35cc8cb2c8cd462e27e2e9f8f6d5dedb584fcdca5d5f7d71dac196d`  
		Last Modified: Wed, 11 Nov 2026 20:17:12 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f3f25dea330214849f4007095cfa6966a5f83486f8752f1d4c90ac5a342075`  
		Last Modified: Wed, 11 Nov 2026 20:17:12 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:54d810bab9dc7604df867b5dc8d532ab947a5e96b786df6cbb33a670ef617f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9146788e14ef6f891d3764f75cf1597a56452b4d680b6299a6583209f951dea4`

```dockerfile
```

-	Layers:
	-	`sha256:358241d3e17ec6fb3f953cfd002878d14e9c4c05504f1f50933ab85ea725209d`  
		Last Modified: Wed, 11 Nov 2026 20:17:11 GMT  
		Size: 14.2 KB (14208 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-alpine3.22`

```console
$ docker pull nats@sha256:311da47e2f31c26e99c623cd78d486a1e8ab039c49b32652770bb91a4f70512e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:2.14-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:9bfe7d4c18d64f9af67cf94a09699b5864ca82245cc07d5e2387f9b9545e84c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11220737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8984bfaa36c9185a37f5b4e99660748618e4950fe6646cfa06cba2772fec87ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:07:13 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 20:07:13 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 20:07:13 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:07:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:13 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:07:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:07:13 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b26a5b8e8d2c34696f363f13da120510e05b460695a5ed9b214327eb022ad617`  
		Last Modified: Wed, 11 Nov 2026 20:07:18 GMT  
		Size: 7.4 MB (7425392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8edc09963ff93c1c2c3fe6f89aff67f43f01f1d616b2c0fec12f6c4163649bf5`  
		Last Modified: Wed, 11 Nov 2026 20:07:17 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3c78fcef50e7e6e0e39777d7339106f3c8e90c86bcab4ddd6f97ad6a059f88`  
		Last Modified: Wed, 11 Nov 2026 20:07:17 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c5ce800df8b38b0914fbbbc48120373e8e4a90d737774497e27e44973e7b598f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7099a994debc804f5c74347e179e0c38dbd8dddb5128eae8c10a49097defe6c1`

```dockerfile
```

-	Layers:
	-	`sha256:eb550d9dcf7fda56c38b91089e8c2bd5883de145e6a6d7488a7073ac2fc5906e`  
		Last Modified: Wed, 11 Nov 2026 20:07:18 GMT  
		Size: 14.2 KB (14208 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:c3692f11ce99940870ba31aff74b9d51f8b3b0cc55cc0336cbb12cfb9f00b902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10662932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbd3cc6e41a030c083e986ea485ab56bebabdc8465dff0d8ba56b8b7105c7f61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:52:29 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 19:52:29 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 19:52:29 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:52:29 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:52:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:52:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:52:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:52:29 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f81f74aef8b01dbe4ca0e4dc6205ee847df78007d1e79763a0c48ab52caf5453`  
		Last Modified: Wed, 11 Nov 2026 19:52:34 GMT  
		Size: 7.2 MB (7160427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb22854fa302e0f91aab57f89f1e91fe1858ddc2ed9b1ef25050fe33b8b6a2a5`  
		Last Modified: Wed, 11 Nov 2026 19:52:33 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aef6220de0dd3517b93e8af5710f0ee61a427766c5c4597ad0a8b8920ab0736`  
		Last Modified: Wed, 11 Nov 2026 19:52:34 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:74c800ed63abd82bdade6e46454557586b6d8570e96a98162fb71c109b707bc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7a2b33a78ad0526d8f040b328090b843d0c36fae1b144c7cd9480609b656ea`

```dockerfile
```

-	Layers:
	-	`sha256:53b7b9659ebd6e88182f49e2b77934a7c8aa06c0b50762dece703539b76736f8`  
		Last Modified: Wed, 11 Nov 2026 19:52:33 GMT  
		Size: 14.3 KB (14289 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:b42ebdc9d19ace2623367fb4669df0c2317515e4311a7ca99c922ab53b8d36b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10367300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20304bc4474219f35604c8271fd731577c3cd5178fd146ece75f2ff06a62ae02`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:52:28 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 19:52:28 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 19:52:28 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:52:28 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:52:28 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:52:28 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:52:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:52:28 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37cd58d29407408356c7392ceb356f85c0fd91e60f3ae32d28b3e5425b6730d9`  
		Last Modified: Wed, 11 Nov 2026 19:52:32 GMT  
		Size: 7.2 MB (7150862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:493e56882e0fa8e01c4e204529d91d0719e5366066d1ca15a554a301df82f54f`  
		Last Modified: Wed, 11 Nov 2026 19:52:32 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0732b20f0b33e1c83c0b804697f4f9c15d031993e8629dee5f059aa27878915`  
		Last Modified: Wed, 11 Nov 2026 19:52:32 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1a7ddc6a8f351c5a833ad1a5a820a3d165703731de6b47a8079c73fea0a4b525
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9da5f78eb795e7445b6583cfb23251bebe35e9b2f353296e1fd9259db3af6a9b`

```dockerfile
```

-	Layers:
	-	`sha256:b034dbd6c93a676006cf83738eeafdcf53609fb1fd1ee9c6329210b9c91f8c97`  
		Last Modified: Wed, 11 Nov 2026 19:52:32 GMT  
		Size: 14.3 KB (14289 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8032c4b0a32f0d2ce577b9cf76b1c65189feaa94232db45406f7377f58129f5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10894150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d6a6dde2985ccbbb2f16320090ad77ff4d5cba1701e9dacda1f354da023679`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:48:16 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 20:48:16 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 20:48:16 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:48:16 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:48:16 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:48:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:48:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:48:16 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f76c069d1d51f44773b45e6f5bfdf602b8349f074788cfd35c0c1c55582acee`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 6.8 MB (6765797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15a65951c08d9f74270ad785fd1f752b55d6c36792c0668cf19246cecdb4873`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5b12e46b205bcbd3ed1665ceebbd0a833ad760051f46e8a37da46519c9d6cc`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:dfa8825ebea5e68f2144990c1e1eff1b35f8aea8f81fe72d851ee77d69f5d068
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de515dd333d4cb230757b6d5a8dfe3652f943a5cc734159d49a7f723bb3b518b`

```dockerfile
```

-	Layers:
	-	`sha256:80c3e6847b80dbb4910503235cb5ca1c154fb8df59bf0cf2fa5d8e354d0213bb`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 14.3 KB (14313 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:39c61df204b6de7045f872525bb836da3d3c2f4ac7d17af5287afea9a0250bc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10556750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c330da187943a2d84bf60c52b030caca3f37e8ea302e267680e43dabf4fa45d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 20:44:11 GMT
ADD alpine-minirootfs-3.22.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:44:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 23:12:33 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 23:12:33 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 23:12:33 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 23:12:33 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 23:12:34 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 23:12:34 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 23:12:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:12:34 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:4be1a473c77a45524d8389eeb78602a090c801a1ec4c4187ac5060cd906c4712`  
		Last Modified: Thu, 05 Nov 2026 20:44:20 GMT  
		Size: 3.7 MB (3725514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c54119b5cecfe0ab18afa5a67116f75fb7b02b1fd677da1217d0395dd281c8a3`  
		Last Modified: Wed, 11 Nov 2026 23:12:49 GMT  
		Size: 6.8 MB (6830266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d05dc595ed4271d003723bd7086e8257ba25f5b9e35654b52c58f9a5661188`  
		Last Modified: Wed, 11 Nov 2026 23:12:49 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dcf4e09ad9cf1771236c5ea8aa5dda6c22a04c1839057eaac62c0dc09b40200`  
		Last Modified: Wed, 11 Nov 2026 23:12:49 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:94711313e52bc7961e93efce83a25acb77766f37a7d8fafdbc4030f9dcaa818d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd104bbfeac4da05e5372acaf889ad215f9a2d1d30dac65a45c2dc2d4324c441`

```dockerfile
```

-	Layers:
	-	`sha256:de0fc51e384ca323f07fed37d0ff9f5b6e09a733a31cfebf4b5429a06c6e4655`  
		Last Modified: Wed, 11 Nov 2026 23:12:49 GMT  
		Size: 14.3 KB (14252 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:8e41f49538e70ed79f191ff99c6ee83002de027890456c1d09d7d8db58229737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10881987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea236b05a5c02f434dbf6ad5868b3d366ae8f18a385798f2423b0fa173757e8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:17:01 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 20:17:01 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 20:17:01 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:17:01 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:17:02 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:17:02 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:17:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:17:02 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c906e79673b42f12f7005c0539c91b6ed26f05fefab4c4ae783970d443cf8d5d`  
		Last Modified: Wed, 11 Nov 2026 20:17:12 GMT  
		Size: 7.2 MB (7237814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d61131ff35cc8cb2c8cd462e27e2e9f8f6d5dedb584fcdca5d5f7d71dac196d`  
		Last Modified: Wed, 11 Nov 2026 20:17:12 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f3f25dea330214849f4007095cfa6966a5f83486f8752f1d4c90ac5a342075`  
		Last Modified: Wed, 11 Nov 2026 20:17:12 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:54d810bab9dc7604df867b5dc8d532ab947a5e96b786df6cbb33a670ef617f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9146788e14ef6f891d3764f75cf1597a56452b4d680b6299a6583209f951dea4`

```dockerfile
```

-	Layers:
	-	`sha256:358241d3e17ec6fb3f953cfd002878d14e9c4c05504f1f50933ab85ea725209d`  
		Last Modified: Wed, 11 Nov 2026 20:17:11 GMT  
		Size: 14.2 KB (14208 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-linux`

```console
$ docker pull nats@sha256:7dc8ba8aaab317faddf18761579eda0cb9677bd6f16322240879847875998fc8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:2.14-linux` - linux; amd64

```console
$ docker pull nats@sha256:922270c252033e351a5f2870f0e927f8437dd5eb1b88d0e666d32239ce0c7ab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7013651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7007d1a67ae5a7995c69dca30eb2804e743a3d8aba4de9ef34f4f7f3d61bd03e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:54:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:54:38 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:54:38 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:54:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:54:38 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:54:38 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f15171c6e5ebcbd63457c8889127507cfe79107d68c6b64a087039c1e5f8417d`  
		Last Modified: Wed, 11 Nov 2026 12:41:01 GMT  
		Size: 7.0 MB (7013142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f7abab0371cfd6ca63873fe8baebd3a4495cf83e833fbdcbf04b1b1eb60a30`  
		Last Modified: Wed, 11 Nov 2026 20:54:42 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:0c34beb862b95e4d369ddd3cf1c2a0495b7745503e66d61ff990e3bc59028241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665d8d20dce7702f02ce33005b90033e6e1fa17907ef866ef097c03f299e65b2`

```dockerfile
```

-	Layers:
	-	`sha256:8b25317bdf07a4fa5613f9af2caec79736fb6a3708ace307c9f590f507b74cec`  
		Last Modified: Wed, 11 Nov 2026 20:54:42 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:2213189fb2bf8fffc2db323c944b09e7902ba65021822fc938119e209784c535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6747435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:809906f2fffe0f22b59e1457edb9693cbd8fee4e8667875f119f393f00166374`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:31 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:31 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9b0feeab9036f3e750843336a9e7f4378e381fde0ea1c2b888cdafc9cdb6ab21`  
		Last Modified: Wed, 11 Nov 2026 12:41:00 GMT  
		Size: 6.7 MB (6746925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9d75f0a0136245c86287aae27e74cf3aa354d397ea5d7ebf826bc45335ed9`  
		Last Modified: Wed, 11 Nov 2026 20:08:35 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:e596c47f64d801ea42ae171b2633c6209faa9c447d2dabc06a836986f19eddf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596f27f864c3175231c8f4cb0da332d5f4ceb8baa90daa61b8ab0494c09fdc9a`

```dockerfile
```

-	Layers:
	-	`sha256:9b2158632486e227b052a0474d79e20a29acfd3fc059af7c8a25ed5961bd586f`  
		Last Modified: Wed, 11 Nov 2026 20:08:35 GMT  
		Size: 8.8 KB (8750 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:97084dfa46ecc18f4ba48564649683dc006e06be52813715b4b5fb5d307e7764
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6737574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2804f0449025b22a577c4a5b0f75b0eb5075f8c28d3a3496432bdd5a1fbf064f`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:42 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:42 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:42 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:aef48f5af27ceb64fc6dc45187f41f7fa18973cdc99677e4f787b8570bab5152`  
		Last Modified: Wed, 11 Nov 2026 12:41:03 GMT  
		Size: 6.7 MB (6737064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5ff031fdac4e1717984648ecf2efbcb25d16468f0b2f8a4442306514229cdba`  
		Last Modified: Wed, 11 Nov 2026 20:08:46 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:0da6928653d298d2de74a9a1157ae5ea4de47951ee2f84f838faa81bcb6581b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e3d2a58e43ba7f95e29889ae72c9747ea6bf2b220730d6b687abcf5a7b2eb03`

```dockerfile
```

-	Layers:
	-	`sha256:d8b34bc0be71fae9ba3608c6f4d3891f67ae466e82eea24b2ff07d2034e9c481`  
		Last Modified: Wed, 11 Nov 2026 20:08:46 GMT  
		Size: 8.8 KB (8750 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:41983d31edef728184dc279b954ec34ffa8bc48be8d70d02d420e4681f8b98ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6351475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330bb9fc6462306d2ccb71ef8f72c6cc591f7e2de7374df6ad14d56ee8c27366`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 21:25:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 21:25:44 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 21:25:45 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 21:25:45 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 21:25:45 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 21:25:45 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:84edceaeaf564bde8005bb0242a524b981dacd7654d1400b72a23e2beb26be4e`  
		Last Modified: Wed, 11 Nov 2026 12:41:01 GMT  
		Size: 6.4 MB (6350965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e07a2aa6a4dc564859e6a5fe1d08e6c0175b321c9ea3b6352cb812ceefaa3d0`  
		Last Modified: Wed, 11 Nov 2026 21:25:49 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:c1ce5a772c2d17f21df539fb83186b5fd3bda76be17e0cee7306b251ae30e734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6463a474c7f4656ad15e41e323279ab7dd2d1ddd75a9f939c174dc455cce1657`

```dockerfile
```

-	Layers:
	-	`sha256:284f26e80cd682dd4143873916562cf0b696fe22efcb38081ba3de120dd369d4`  
		Last Modified: Wed, 11 Nov 2026 21:25:49 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:a4cbe4bd2e322532e15bda41c84b4e44b76a215c3281928c5e9a7ef8c0b34019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6416357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb57202c6d5f4c2c1fc1e3ac7ce1f194e63a31f7addbe93a7d4459778700604`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 12 Nov 2026 01:01:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 12 Nov 2026 01:01:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 12 Nov 2026 01:01:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 12 Nov 2026 01:01:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 12 Nov 2026 01:01:01 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 12 Nov 2026 01:01:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:81a746d2f75f44a141ddf3ba6c18f32c7feae2c9eee1584dcbb956f4ca50329b`  
		Last Modified: Wed, 11 Nov 2026 12:41:04 GMT  
		Size: 6.4 MB (6415848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75410ddeb4acea40b3afcec80983bad0170a958aea854eac2f5c252025f56454`  
		Last Modified: Thu, 12 Nov 2026 01:01:42 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:e7643ed15279bffea7919d4169ef5d56f038988d03845be3afd7c0e7ac41dcdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46f0c59c15b34ee1bb0657b74fe610a4528f2b4745874499f0ed64d19db31b4`

```dockerfile
```

-	Layers:
	-	`sha256:ebb99f93cc4271ec460dc191777f24d7deb8b904b8b8c0e159fe79219a6c2037`  
		Last Modified: Thu, 12 Nov 2026 01:01:42 GMT  
		Size: 8.7 KB (8722 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; s390x

```console
$ docker pull nats@sha256:beb588b4c04fef14a7583a01205d8f769986f6233fd06ba7318cf6c8277d6bf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6823726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d8919afc06b4c40d3ae7c9ab10b4d421aa46b9355dca0e2772eecf4acf9f6b2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:31:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:31:03 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:31:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:31:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:84290b78f361faf20cb777094c3b55745e6215d9097837a6836ba57aeee6ed25`  
		Last Modified: Wed, 11 Nov 2026 12:41:04 GMT  
		Size: 6.8 MB (6823216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5650707dc9e2dd4e72ebd852d02677e7fa556c983e908a013a5c18df101d9df8`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:0cd6edbb8ee09f64d969c48092382cbdcf74e6167e45a9af5064c08c71af80b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6760ec914a7cc22a900901f64c6c73d04d52a54a1e7228effe42a07abb92a3f`

```dockerfile
```

-	Layers:
	-	`sha256:3ffd6f05517d58009b1ae4c4377c1f3d266978748840945ce7b5171726b3ad94`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-nanoserver`

```console
$ docker pull nats@sha256:55801bde21fcd460aaf2afc2544ab4524da4ba7f6052dcf3f25c492340d35bab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:2.14-nanoserver` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:45cc10ae6154e644307e5477b2195de1a5a743ff905eed01aff75c0c49f6dc7b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133508205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb73c3194923928b776dc13235cf794c811bd820aa079fbde820f55e52a73dd1`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:42:23 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:42:24 GMT
RUN cmd /S /C #(nop) COPY file:9cf9a9b2bbb7744030e57e861b6fd70e92ab618adc28a3cc2d04ec93fb19fec6 in C:\nats-server.exe 
# Wed, 11 Nov 2026 22:42:24 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:42:25 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:42:25 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:42:26 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147d1168648cbe35b00f8375a6a609c1a782ca13d7dc30736aae7b96944d7159`  
		Last Modified: Wed, 11 Nov 2026 22:42:31 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e886400fd12311e6e4ae8be2effb2964a2daa9c8cda87c0a7601f9c9cd6a20`  
		Last Modified: Wed, 11 Nov 2026 22:42:31 GMT  
		Size: 7.2 MB (7217337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f959d8cd478a293d1b1b50fc957498f7e7f8a8fb1550c4fc16ed074ee86203ce`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139e3dd33965774056bc5c0b00fd7a33373c2e5bddc2ab2b4e0d3f10a060b768`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde37fb53cb2fff617727669ed32b5f64561d1eea8b1d14a4de8fe3fff4cfddd`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f3607fbf5b974b3b14bb751857b8f9e7936e07c1993840e6399c278c07f3ec`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:55801bde21fcd460aaf2afc2544ab4524da4ba7f6052dcf3f25c492340d35bab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:2.14-nanoserver-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:45cc10ae6154e644307e5477b2195de1a5a743ff905eed01aff75c0c49f6dc7b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133508205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb73c3194923928b776dc13235cf794c811bd820aa079fbde820f55e52a73dd1`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:42:23 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:42:24 GMT
RUN cmd /S /C #(nop) COPY file:9cf9a9b2bbb7744030e57e861b6fd70e92ab618adc28a3cc2d04ec93fb19fec6 in C:\nats-server.exe 
# Wed, 11 Nov 2026 22:42:24 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:42:25 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:42:25 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:42:26 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147d1168648cbe35b00f8375a6a609c1a782ca13d7dc30736aae7b96944d7159`  
		Last Modified: Wed, 11 Nov 2026 22:42:31 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e886400fd12311e6e4ae8be2effb2964a2daa9c8cda87c0a7601f9c9cd6a20`  
		Last Modified: Wed, 11 Nov 2026 22:42:31 GMT  
		Size: 7.2 MB (7217337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f959d8cd478a293d1b1b50fc957498f7e7f8a8fb1550c4fc16ed074ee86203ce`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139e3dd33965774056bc5c0b00fd7a33373c2e5bddc2ab2b4e0d3f10a060b768`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde37fb53cb2fff617727669ed32b5f64561d1eea8b1d14a4de8fe3fff4cfddd`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f3607fbf5b974b3b14bb751857b8f9e7936e07c1993840e6399c278c07f3ec`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-scratch`

```console
$ docker pull nats@sha256:7dc8ba8aaab317faddf18761579eda0cb9677bd6f16322240879847875998fc8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:2.14-scratch` - linux; amd64

```console
$ docker pull nats@sha256:922270c252033e351a5f2870f0e927f8437dd5eb1b88d0e666d32239ce0c7ab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7013651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7007d1a67ae5a7995c69dca30eb2804e743a3d8aba4de9ef34f4f7f3d61bd03e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:54:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:54:38 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:54:38 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:54:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:54:38 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:54:38 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f15171c6e5ebcbd63457c8889127507cfe79107d68c6b64a087039c1e5f8417d`  
		Last Modified: Wed, 11 Nov 2026 12:41:01 GMT  
		Size: 7.0 MB (7013142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f7abab0371cfd6ca63873fe8baebd3a4495cf83e833fbdcbf04b1b1eb60a30`  
		Last Modified: Wed, 11 Nov 2026 20:54:42 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:0c34beb862b95e4d369ddd3cf1c2a0495b7745503e66d61ff990e3bc59028241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665d8d20dce7702f02ce33005b90033e6e1fa17907ef866ef097c03f299e65b2`

```dockerfile
```

-	Layers:
	-	`sha256:8b25317bdf07a4fa5613f9af2caec79736fb6a3708ace307c9f590f507b74cec`  
		Last Modified: Wed, 11 Nov 2026 20:54:42 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:2213189fb2bf8fffc2db323c944b09e7902ba65021822fc938119e209784c535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6747435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:809906f2fffe0f22b59e1457edb9693cbd8fee4e8667875f119f393f00166374`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:31 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:31 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9b0feeab9036f3e750843336a9e7f4378e381fde0ea1c2b888cdafc9cdb6ab21`  
		Last Modified: Wed, 11 Nov 2026 12:41:00 GMT  
		Size: 6.7 MB (6746925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9d75f0a0136245c86287aae27e74cf3aa354d397ea5d7ebf826bc45335ed9`  
		Last Modified: Wed, 11 Nov 2026 20:08:35 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:e596c47f64d801ea42ae171b2633c6209faa9c447d2dabc06a836986f19eddf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596f27f864c3175231c8f4cb0da332d5f4ceb8baa90daa61b8ab0494c09fdc9a`

```dockerfile
```

-	Layers:
	-	`sha256:9b2158632486e227b052a0474d79e20a29acfd3fc059af7c8a25ed5961bd586f`  
		Last Modified: Wed, 11 Nov 2026 20:08:35 GMT  
		Size: 8.8 KB (8750 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:97084dfa46ecc18f4ba48564649683dc006e06be52813715b4b5fb5d307e7764
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6737574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2804f0449025b22a577c4a5b0f75b0eb5075f8c28d3a3496432bdd5a1fbf064f`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:42 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:42 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:42 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:aef48f5af27ceb64fc6dc45187f41f7fa18973cdc99677e4f787b8570bab5152`  
		Last Modified: Wed, 11 Nov 2026 12:41:03 GMT  
		Size: 6.7 MB (6737064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5ff031fdac4e1717984648ecf2efbcb25d16468f0b2f8a4442306514229cdba`  
		Last Modified: Wed, 11 Nov 2026 20:08:46 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:0da6928653d298d2de74a9a1157ae5ea4de47951ee2f84f838faa81bcb6581b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e3d2a58e43ba7f95e29889ae72c9747ea6bf2b220730d6b687abcf5a7b2eb03`

```dockerfile
```

-	Layers:
	-	`sha256:d8b34bc0be71fae9ba3608c6f4d3891f67ae466e82eea24b2ff07d2034e9c481`  
		Last Modified: Wed, 11 Nov 2026 20:08:46 GMT  
		Size: 8.8 KB (8750 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:41983d31edef728184dc279b954ec34ffa8bc48be8d70d02d420e4681f8b98ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6351475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330bb9fc6462306d2ccb71ef8f72c6cc591f7e2de7374df6ad14d56ee8c27366`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 21:25:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 21:25:44 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 21:25:45 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 21:25:45 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 21:25:45 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 21:25:45 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:84edceaeaf564bde8005bb0242a524b981dacd7654d1400b72a23e2beb26be4e`  
		Last Modified: Wed, 11 Nov 2026 12:41:01 GMT  
		Size: 6.4 MB (6350965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e07a2aa6a4dc564859e6a5fe1d08e6c0175b321c9ea3b6352cb812ceefaa3d0`  
		Last Modified: Wed, 11 Nov 2026 21:25:49 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:c1ce5a772c2d17f21df539fb83186b5fd3bda76be17e0cee7306b251ae30e734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6463a474c7f4656ad15e41e323279ab7dd2d1ddd75a9f939c174dc455cce1657`

```dockerfile
```

-	Layers:
	-	`sha256:284f26e80cd682dd4143873916562cf0b696fe22efcb38081ba3de120dd369d4`  
		Last Modified: Wed, 11 Nov 2026 21:25:49 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:a4cbe4bd2e322532e15bda41c84b4e44b76a215c3281928c5e9a7ef8c0b34019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6416357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb57202c6d5f4c2c1fc1e3ac7ce1f194e63a31f7addbe93a7d4459778700604`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 12 Nov 2026 01:01:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 12 Nov 2026 01:01:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 12 Nov 2026 01:01:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 12 Nov 2026 01:01:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 12 Nov 2026 01:01:01 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 12 Nov 2026 01:01:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:81a746d2f75f44a141ddf3ba6c18f32c7feae2c9eee1584dcbb956f4ca50329b`  
		Last Modified: Wed, 11 Nov 2026 12:41:04 GMT  
		Size: 6.4 MB (6415848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75410ddeb4acea40b3afcec80983bad0170a958aea854eac2f5c252025f56454`  
		Last Modified: Thu, 12 Nov 2026 01:01:42 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:e7643ed15279bffea7919d4169ef5d56f038988d03845be3afd7c0e7ac41dcdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46f0c59c15b34ee1bb0657b74fe610a4528f2b4745874499f0ed64d19db31b4`

```dockerfile
```

-	Layers:
	-	`sha256:ebb99f93cc4271ec460dc191777f24d7deb8b904b8b8c0e159fe79219a6c2037`  
		Last Modified: Thu, 12 Nov 2026 01:01:42 GMT  
		Size: 8.7 KB (8722 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; s390x

```console
$ docker pull nats@sha256:beb588b4c04fef14a7583a01205d8f769986f6233fd06ba7318cf6c8277d6bf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6823726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d8919afc06b4c40d3ae7c9ab10b4d421aa46b9355dca0e2772eecf4acf9f6b2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:31:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:31:03 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:31:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:31:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:84290b78f361faf20cb777094c3b55745e6215d9097837a6836ba57aeee6ed25`  
		Last Modified: Wed, 11 Nov 2026 12:41:04 GMT  
		Size: 6.8 MB (6823216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5650707dc9e2dd4e72ebd852d02677e7fa556c983e908a013a5c18df101d9df8`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:0cd6edbb8ee09f64d969c48092382cbdcf74e6167e45a9af5064c08c71af80b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6760ec914a7cc22a900901f64c6c73d04d52a54a1e7228effe42a07abb92a3f`

```dockerfile
```

-	Layers:
	-	`sha256:3ffd6f05517d58009b1ae4c4377c1f3d266978748840945ce7b5171726b3ad94`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-windowsservercore`

```console
$ docker pull nats@sha256:315b691b6e5adcffcd2b4047e6e6658a53e35583b2754b6ecc5c143b00de0bbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:2.14-windowsservercore` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:b5254eab0669991ff51402f34820540685c9deb1a5404b2e3954c35de71e3b7e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2254244310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46574461f2d31306393fd61318697c30f162fd479287b8471f885ecd40f28d01`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 22:02:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Nov 2026 22:02:03 GMT
ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:02:50 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 22:02:50 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 22:02:51 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.10/nats-server-v2.14.10-windows-amd64.zip
# Wed, 11 Nov 2026 22:02:51 GMT
ENV NATS_SERVER_SHASUM=883dd335053d92198fa57e16204109b7e5efb16bd906d2ec2250f2c7454d810b
# Wed, 11 Nov 2026 22:02:57 GMT
RUN Set-PSDebug -Trace 2
# Wed, 11 Nov 2026 22:03:11 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 11 Nov 2026 22:03:11 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:03:11 GMT
EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:03:12 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:03:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985cdefb6abad122d5e02da8d25bc1bdd43faf7ca80f9dd3261101a1ab8c007`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5387296daa8755673907cf7b38bdb72ad011942273ab0f479fcaf018e17c212c`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108d04a546775ae52e6f21bffcc8e4706320d2e5843ea4a966d981b7962729f`  
		Last Modified: Wed, 11 Nov 2026 22:03:20 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946cc967403878745529f98ba7fd8b8c62a36b1f595e5e5af5c28c2e3efad3e7`  
		Last Modified: Wed, 11 Nov 2026 22:03:18 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a1f01f49467c5ca02b3d9254518678274e2b9bd710af320cc6dfb1713fd71a`  
		Last Modified: Wed, 11 Nov 2026 22:03:18 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca68282d7cf2e1be813eb3a3d819b61f609b8e906acc3e93f6440ae31cf6665`  
		Last Modified: Wed, 11 Nov 2026 22:03:18 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f537256f2b9fb1bce5bc37958b22e17727e0d9c8b5809e82537bbf662c31a7f`  
		Last Modified: Wed, 11 Nov 2026 22:03:18 GMT  
		Size: 333.7 KB (333690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a4d7261c318c1956d1f0fe214511bb499364f0b89363dba7cc1870a0fa5e3e`  
		Last Modified: Wed, 11 Nov 2026 22:03:19 GMT  
		Size: 7.5 MB (7549163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996376e06b102ba9b9902c5ca57e23e878e854393ebd3db2c537c07f16caf8ad`  
		Last Modified: Wed, 11 Nov 2026 22:03:17 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9df6727f51e37b4ab7fd24dc911d3027bf31e8fb92d1254b531b10ebbb9533`  
		Last Modified: Wed, 11 Nov 2026 22:03:17 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ab1e743bdd637c9744722697592a7927a943b41ef79d8da006aaa3d2217b1a`  
		Last Modified: Wed, 11 Nov 2026 22:03:17 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ff905c3d5d1cbf3bac1bd591b1cce68937e6eb0906538a58285cc26a17cabd`  
		Last Modified: Wed, 11 Nov 2026 22:03:17 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:315b691b6e5adcffcd2b4047e6e6658a53e35583b2754b6ecc5c143b00de0bbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:2.14-windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:b5254eab0669991ff51402f34820540685c9deb1a5404b2e3954c35de71e3b7e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2254244310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46574461f2d31306393fd61318697c30f162fd479287b8471f885ecd40f28d01`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 22:02:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Nov 2026 22:02:03 GMT
ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:02:50 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 22:02:50 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 22:02:51 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.10/nats-server-v2.14.10-windows-amd64.zip
# Wed, 11 Nov 2026 22:02:51 GMT
ENV NATS_SERVER_SHASUM=883dd335053d92198fa57e16204109b7e5efb16bd906d2ec2250f2c7454d810b
# Wed, 11 Nov 2026 22:02:57 GMT
RUN Set-PSDebug -Trace 2
# Wed, 11 Nov 2026 22:03:11 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 11 Nov 2026 22:03:11 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:03:11 GMT
EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:03:12 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:03:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985cdefb6abad122d5e02da8d25bc1bdd43faf7ca80f9dd3261101a1ab8c007`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5387296daa8755673907cf7b38bdb72ad011942273ab0f479fcaf018e17c212c`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108d04a546775ae52e6f21bffcc8e4706320d2e5843ea4a966d981b7962729f`  
		Last Modified: Wed, 11 Nov 2026 22:03:20 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946cc967403878745529f98ba7fd8b8c62a36b1f595e5e5af5c28c2e3efad3e7`  
		Last Modified: Wed, 11 Nov 2026 22:03:18 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a1f01f49467c5ca02b3d9254518678274e2b9bd710af320cc6dfb1713fd71a`  
		Last Modified: Wed, 11 Nov 2026 22:03:18 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca68282d7cf2e1be813eb3a3d819b61f609b8e906acc3e93f6440ae31cf6665`  
		Last Modified: Wed, 11 Nov 2026 22:03:18 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f537256f2b9fb1bce5bc37958b22e17727e0d9c8b5809e82537bbf662c31a7f`  
		Last Modified: Wed, 11 Nov 2026 22:03:18 GMT  
		Size: 333.7 KB (333690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a4d7261c318c1956d1f0fe214511bb499364f0b89363dba7cc1870a0fa5e3e`  
		Last Modified: Wed, 11 Nov 2026 22:03:19 GMT  
		Size: 7.5 MB (7549163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996376e06b102ba9b9902c5ca57e23e878e854393ebd3db2c537c07f16caf8ad`  
		Last Modified: Wed, 11 Nov 2026 22:03:17 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9df6727f51e37b4ab7fd24dc911d3027bf31e8fb92d1254b531b10ebbb9533`  
		Last Modified: Wed, 11 Nov 2026 22:03:17 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ab1e743bdd637c9744722697592a7927a943b41ef79d8da006aaa3d2217b1a`  
		Last Modified: Wed, 11 Nov 2026 22:03:17 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ff905c3d5d1cbf3bac1bd591b1cce68937e6eb0906538a58285cc26a17cabd`  
		Last Modified: Wed, 11 Nov 2026 22:03:17 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.10`

```console
$ docker pull nats@sha256:d3ff8318fd701226cef926b30de53ab3a08a44a8abe8370c85f948d371161e63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 13
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.20348.5870; amd64

### `nats:2.14.10` - linux; amd64

```console
$ docker pull nats@sha256:922270c252033e351a5f2870f0e927f8437dd5eb1b88d0e666d32239ce0c7ab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7013651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7007d1a67ae5a7995c69dca30eb2804e743a3d8aba4de9ef34f4f7f3d61bd03e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:54:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:54:38 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:54:38 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:54:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:54:38 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:54:38 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f15171c6e5ebcbd63457c8889127507cfe79107d68c6b64a087039c1e5f8417d`  
		Last Modified: Wed, 11 Nov 2026 12:41:01 GMT  
		Size: 7.0 MB (7013142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f7abab0371cfd6ca63873fe8baebd3a4495cf83e833fbdcbf04b1b1eb60a30`  
		Last Modified: Wed, 11 Nov 2026 20:54:42 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10` - unknown; unknown

```console
$ docker pull nats@sha256:0c34beb862b95e4d369ddd3cf1c2a0495b7745503e66d61ff990e3bc59028241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665d8d20dce7702f02ce33005b90033e6e1fa17907ef866ef097c03f299e65b2`

```dockerfile
```

-	Layers:
	-	`sha256:8b25317bdf07a4fa5613f9af2caec79736fb6a3708ace307c9f590f507b74cec`  
		Last Modified: Wed, 11 Nov 2026 20:54:42 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10` - linux; arm variant v6

```console
$ docker pull nats@sha256:2213189fb2bf8fffc2db323c944b09e7902ba65021822fc938119e209784c535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6747435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:809906f2fffe0f22b59e1457edb9693cbd8fee4e8667875f119f393f00166374`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:31 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:31 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9b0feeab9036f3e750843336a9e7f4378e381fde0ea1c2b888cdafc9cdb6ab21`  
		Last Modified: Wed, 11 Nov 2026 12:41:00 GMT  
		Size: 6.7 MB (6746925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9d75f0a0136245c86287aae27e74cf3aa354d397ea5d7ebf826bc45335ed9`  
		Last Modified: Wed, 11 Nov 2026 20:08:35 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10` - unknown; unknown

```console
$ docker pull nats@sha256:e596c47f64d801ea42ae171b2633c6209faa9c447d2dabc06a836986f19eddf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596f27f864c3175231c8f4cb0da332d5f4ceb8baa90daa61b8ab0494c09fdc9a`

```dockerfile
```

-	Layers:
	-	`sha256:9b2158632486e227b052a0474d79e20a29acfd3fc059af7c8a25ed5961bd586f`  
		Last Modified: Wed, 11 Nov 2026 20:08:35 GMT  
		Size: 8.8 KB (8750 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10` - linux; arm variant v7

```console
$ docker pull nats@sha256:97084dfa46ecc18f4ba48564649683dc006e06be52813715b4b5fb5d307e7764
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6737574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2804f0449025b22a577c4a5b0f75b0eb5075f8c28d3a3496432bdd5a1fbf064f`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:42 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:42 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:42 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:aef48f5af27ceb64fc6dc45187f41f7fa18973cdc99677e4f787b8570bab5152`  
		Last Modified: Wed, 11 Nov 2026 12:41:03 GMT  
		Size: 6.7 MB (6737064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5ff031fdac4e1717984648ecf2efbcb25d16468f0b2f8a4442306514229cdba`  
		Last Modified: Wed, 11 Nov 2026 20:08:46 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10` - unknown; unknown

```console
$ docker pull nats@sha256:0da6928653d298d2de74a9a1157ae5ea4de47951ee2f84f838faa81bcb6581b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e3d2a58e43ba7f95e29889ae72c9747ea6bf2b220730d6b687abcf5a7b2eb03`

```dockerfile
```

-	Layers:
	-	`sha256:d8b34bc0be71fae9ba3608c6f4d3891f67ae466e82eea24b2ff07d2034e9c481`  
		Last Modified: Wed, 11 Nov 2026 20:08:46 GMT  
		Size: 8.8 KB (8750 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:41983d31edef728184dc279b954ec34ffa8bc48be8d70d02d420e4681f8b98ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6351475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330bb9fc6462306d2ccb71ef8f72c6cc591f7e2de7374df6ad14d56ee8c27366`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 21:25:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 21:25:44 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 21:25:45 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 21:25:45 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 21:25:45 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 21:25:45 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:84edceaeaf564bde8005bb0242a524b981dacd7654d1400b72a23e2beb26be4e`  
		Last Modified: Wed, 11 Nov 2026 12:41:01 GMT  
		Size: 6.4 MB (6350965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e07a2aa6a4dc564859e6a5fe1d08e6c0175b321c9ea3b6352cb812ceefaa3d0`  
		Last Modified: Wed, 11 Nov 2026 21:25:49 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10` - unknown; unknown

```console
$ docker pull nats@sha256:c1ce5a772c2d17f21df539fb83186b5fd3bda76be17e0cee7306b251ae30e734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6463a474c7f4656ad15e41e323279ab7dd2d1ddd75a9f939c174dc455cce1657`

```dockerfile
```

-	Layers:
	-	`sha256:284f26e80cd682dd4143873916562cf0b696fe22efcb38081ba3de120dd369d4`  
		Last Modified: Wed, 11 Nov 2026 21:25:49 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10` - linux; ppc64le

```console
$ docker pull nats@sha256:a4cbe4bd2e322532e15bda41c84b4e44b76a215c3281928c5e9a7ef8c0b34019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6416357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb57202c6d5f4c2c1fc1e3ac7ce1f194e63a31f7addbe93a7d4459778700604`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 12 Nov 2026 01:01:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 12 Nov 2026 01:01:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 12 Nov 2026 01:01:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 12 Nov 2026 01:01:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 12 Nov 2026 01:01:01 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 12 Nov 2026 01:01:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:81a746d2f75f44a141ddf3ba6c18f32c7feae2c9eee1584dcbb956f4ca50329b`  
		Last Modified: Wed, 11 Nov 2026 12:41:04 GMT  
		Size: 6.4 MB (6415848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75410ddeb4acea40b3afcec80983bad0170a958aea854eac2f5c252025f56454`  
		Last Modified: Thu, 12 Nov 2026 01:01:42 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10` - unknown; unknown

```console
$ docker pull nats@sha256:e7643ed15279bffea7919d4169ef5d56f038988d03845be3afd7c0e7ac41dcdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46f0c59c15b34ee1bb0657b74fe610a4528f2b4745874499f0ed64d19db31b4`

```dockerfile
```

-	Layers:
	-	`sha256:ebb99f93cc4271ec460dc191777f24d7deb8b904b8b8c0e159fe79219a6c2037`  
		Last Modified: Thu, 12 Nov 2026 01:01:42 GMT  
		Size: 8.7 KB (8722 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10` - linux; s390x

```console
$ docker pull nats@sha256:beb588b4c04fef14a7583a01205d8f769986f6233fd06ba7318cf6c8277d6bf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6823726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d8919afc06b4c40d3ae7c9ab10b4d421aa46b9355dca0e2772eecf4acf9f6b2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:31:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:31:03 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:31:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:31:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:84290b78f361faf20cb777094c3b55745e6215d9097837a6836ba57aeee6ed25`  
		Last Modified: Wed, 11 Nov 2026 12:41:04 GMT  
		Size: 6.8 MB (6823216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5650707dc9e2dd4e72ebd852d02677e7fa556c983e908a013a5c18df101d9df8`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10` - unknown; unknown

```console
$ docker pull nats@sha256:0cd6edbb8ee09f64d969c48092382cbdcf74e6167e45a9af5064c08c71af80b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6760ec914a7cc22a900901f64c6c73d04d52a54a1e7228effe42a07abb92a3f`

```dockerfile
```

-	Layers:
	-	`sha256:3ffd6f05517d58009b1ae4c4377c1f3d266978748840945ce7b5171726b3ad94`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:45cc10ae6154e644307e5477b2195de1a5a743ff905eed01aff75c0c49f6dc7b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133508205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb73c3194923928b776dc13235cf794c811bd820aa079fbde820f55e52a73dd1`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:42:23 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:42:24 GMT
RUN cmd /S /C #(nop) COPY file:9cf9a9b2bbb7744030e57e861b6fd70e92ab618adc28a3cc2d04ec93fb19fec6 in C:\nats-server.exe 
# Wed, 11 Nov 2026 22:42:24 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:42:25 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:42:25 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:42:26 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147d1168648cbe35b00f8375a6a609c1a782ca13d7dc30736aae7b96944d7159`  
		Last Modified: Wed, 11 Nov 2026 22:42:31 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e886400fd12311e6e4ae8be2effb2964a2daa9c8cda87c0a7601f9c9cd6a20`  
		Last Modified: Wed, 11 Nov 2026 22:42:31 GMT  
		Size: 7.2 MB (7217337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f959d8cd478a293d1b1b50fc957498f7e7f8a8fb1550c4fc16ed074ee86203ce`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139e3dd33965774056bc5c0b00fd7a33373c2e5bddc2ab2b4e0d3f10a060b768`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde37fb53cb2fff617727669ed32b5f64561d1eea8b1d14a4de8fe3fff4cfddd`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f3607fbf5b974b3b14bb751857b8f9e7936e07c1993840e6399c278c07f3ec`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.10-alpine`

```console
$ docker pull nats@sha256:311da47e2f31c26e99c623cd78d486a1e8ab039c49b32652770bb91a4f70512e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:2.14.10-alpine` - linux; amd64

```console
$ docker pull nats@sha256:9bfe7d4c18d64f9af67cf94a09699b5864ca82245cc07d5e2387f9b9545e84c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11220737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8984bfaa36c9185a37f5b4e99660748618e4950fe6646cfa06cba2772fec87ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:07:13 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 20:07:13 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 20:07:13 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:07:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:13 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:07:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:07:13 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b26a5b8e8d2c34696f363f13da120510e05b460695a5ed9b214327eb022ad617`  
		Last Modified: Wed, 11 Nov 2026 20:07:18 GMT  
		Size: 7.4 MB (7425392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8edc09963ff93c1c2c3fe6f89aff67f43f01f1d616b2c0fec12f6c4163649bf5`  
		Last Modified: Wed, 11 Nov 2026 20:07:17 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3c78fcef50e7e6e0e39777d7339106f3c8e90c86bcab4ddd6f97ad6a059f88`  
		Last Modified: Wed, 11 Nov 2026 20:07:17 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c5ce800df8b38b0914fbbbc48120373e8e4a90d737774497e27e44973e7b598f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7099a994debc804f5c74347e179e0c38dbd8dddb5128eae8c10a49097defe6c1`

```dockerfile
```

-	Layers:
	-	`sha256:eb550d9dcf7fda56c38b91089e8c2bd5883de145e6a6d7488a7073ac2fc5906e`  
		Last Modified: Wed, 11 Nov 2026 20:07:18 GMT  
		Size: 14.2 KB (14208 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:c3692f11ce99940870ba31aff74b9d51f8b3b0cc55cc0336cbb12cfb9f00b902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10662932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbd3cc6e41a030c083e986ea485ab56bebabdc8465dff0d8ba56b8b7105c7f61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:52:29 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 19:52:29 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 19:52:29 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:52:29 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:52:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:52:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:52:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:52:29 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f81f74aef8b01dbe4ca0e4dc6205ee847df78007d1e79763a0c48ab52caf5453`  
		Last Modified: Wed, 11 Nov 2026 19:52:34 GMT  
		Size: 7.2 MB (7160427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb22854fa302e0f91aab57f89f1e91fe1858ddc2ed9b1ef25050fe33b8b6a2a5`  
		Last Modified: Wed, 11 Nov 2026 19:52:33 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aef6220de0dd3517b93e8af5710f0ee61a427766c5c4597ad0a8b8920ab0736`  
		Last Modified: Wed, 11 Nov 2026 19:52:34 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:74c800ed63abd82bdade6e46454557586b6d8570e96a98162fb71c109b707bc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7a2b33a78ad0526d8f040b328090b843d0c36fae1b144c7cd9480609b656ea`

```dockerfile
```

-	Layers:
	-	`sha256:53b7b9659ebd6e88182f49e2b77934a7c8aa06c0b50762dece703539b76736f8`  
		Last Modified: Wed, 11 Nov 2026 19:52:33 GMT  
		Size: 14.3 KB (14289 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:b42ebdc9d19ace2623367fb4669df0c2317515e4311a7ca99c922ab53b8d36b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10367300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20304bc4474219f35604c8271fd731577c3cd5178fd146ece75f2ff06a62ae02`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:52:28 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 19:52:28 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 19:52:28 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:52:28 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:52:28 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:52:28 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:52:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:52:28 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37cd58d29407408356c7392ceb356f85c0fd91e60f3ae32d28b3e5425b6730d9`  
		Last Modified: Wed, 11 Nov 2026 19:52:32 GMT  
		Size: 7.2 MB (7150862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:493e56882e0fa8e01c4e204529d91d0719e5366066d1ca15a554a301df82f54f`  
		Last Modified: Wed, 11 Nov 2026 19:52:32 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0732b20f0b33e1c83c0b804697f4f9c15d031993e8629dee5f059aa27878915`  
		Last Modified: Wed, 11 Nov 2026 19:52:32 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1a7ddc6a8f351c5a833ad1a5a820a3d165703731de6b47a8079c73fea0a4b525
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9da5f78eb795e7445b6583cfb23251bebe35e9b2f353296e1fd9259db3af6a9b`

```dockerfile
```

-	Layers:
	-	`sha256:b034dbd6c93a676006cf83738eeafdcf53609fb1fd1ee9c6329210b9c91f8c97`  
		Last Modified: Wed, 11 Nov 2026 19:52:32 GMT  
		Size: 14.3 KB (14289 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8032c4b0a32f0d2ce577b9cf76b1c65189feaa94232db45406f7377f58129f5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10894150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d6a6dde2985ccbbb2f16320090ad77ff4d5cba1701e9dacda1f354da023679`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:48:16 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 20:48:16 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 20:48:16 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:48:16 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:48:16 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:48:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:48:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:48:16 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f76c069d1d51f44773b45e6f5bfdf602b8349f074788cfd35c0c1c55582acee`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 6.8 MB (6765797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15a65951c08d9f74270ad785fd1f752b55d6c36792c0668cf19246cecdb4873`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5b12e46b205bcbd3ed1665ceebbd0a833ad760051f46e8a37da46519c9d6cc`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:dfa8825ebea5e68f2144990c1e1eff1b35f8aea8f81fe72d851ee77d69f5d068
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de515dd333d4cb230757b6d5a8dfe3652f943a5cc734159d49a7f723bb3b518b`

```dockerfile
```

-	Layers:
	-	`sha256:80c3e6847b80dbb4910503235cb5ca1c154fb8df59bf0cf2fa5d8e354d0213bb`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 14.3 KB (14313 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:39c61df204b6de7045f872525bb836da3d3c2f4ac7d17af5287afea9a0250bc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10556750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c330da187943a2d84bf60c52b030caca3f37e8ea302e267680e43dabf4fa45d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 20:44:11 GMT
ADD alpine-minirootfs-3.22.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:44:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 23:12:33 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 23:12:33 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 23:12:33 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 23:12:33 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 23:12:34 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 23:12:34 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 23:12:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:12:34 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:4be1a473c77a45524d8389eeb78602a090c801a1ec4c4187ac5060cd906c4712`  
		Last Modified: Thu, 05 Nov 2026 20:44:20 GMT  
		Size: 3.7 MB (3725514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c54119b5cecfe0ab18afa5a67116f75fb7b02b1fd677da1217d0395dd281c8a3`  
		Last Modified: Wed, 11 Nov 2026 23:12:49 GMT  
		Size: 6.8 MB (6830266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d05dc595ed4271d003723bd7086e8257ba25f5b9e35654b52c58f9a5661188`  
		Last Modified: Wed, 11 Nov 2026 23:12:49 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dcf4e09ad9cf1771236c5ea8aa5dda6c22a04c1839057eaac62c0dc09b40200`  
		Last Modified: Wed, 11 Nov 2026 23:12:49 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:94711313e52bc7961e93efce83a25acb77766f37a7d8fafdbc4030f9dcaa818d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd104bbfeac4da05e5372acaf889ad215f9a2d1d30dac65a45c2dc2d4324c441`

```dockerfile
```

-	Layers:
	-	`sha256:de0fc51e384ca323f07fed37d0ff9f5b6e09a733a31cfebf4b5429a06c6e4655`  
		Last Modified: Wed, 11 Nov 2026 23:12:49 GMT  
		Size: 14.3 KB (14252 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10-alpine` - linux; s390x

```console
$ docker pull nats@sha256:8e41f49538e70ed79f191ff99c6ee83002de027890456c1d09d7d8db58229737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10881987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea236b05a5c02f434dbf6ad5868b3d366ae8f18a385798f2423b0fa173757e8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:17:01 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 20:17:01 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 20:17:01 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:17:01 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:17:02 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:17:02 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:17:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:17:02 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c906e79673b42f12f7005c0539c91b6ed26f05fefab4c4ae783970d443cf8d5d`  
		Last Modified: Wed, 11 Nov 2026 20:17:12 GMT  
		Size: 7.2 MB (7237814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d61131ff35cc8cb2c8cd462e27e2e9f8f6d5dedb584fcdca5d5f7d71dac196d`  
		Last Modified: Wed, 11 Nov 2026 20:17:12 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f3f25dea330214849f4007095cfa6966a5f83486f8752f1d4c90ac5a342075`  
		Last Modified: Wed, 11 Nov 2026 20:17:12 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:54d810bab9dc7604df867b5dc8d532ab947a5e96b786df6cbb33a670ef617f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9146788e14ef6f891d3764f75cf1597a56452b4d680b6299a6583209f951dea4`

```dockerfile
```

-	Layers:
	-	`sha256:358241d3e17ec6fb3f953cfd002878d14e9c4c05504f1f50933ab85ea725209d`  
		Last Modified: Wed, 11 Nov 2026 20:17:11 GMT  
		Size: 14.2 KB (14208 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.10-alpine3.22`

```console
$ docker pull nats@sha256:311da47e2f31c26e99c623cd78d486a1e8ab039c49b32652770bb91a4f70512e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:2.14.10-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:9bfe7d4c18d64f9af67cf94a09699b5864ca82245cc07d5e2387f9b9545e84c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11220737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8984bfaa36c9185a37f5b4e99660748618e4950fe6646cfa06cba2772fec87ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:07:13 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 20:07:13 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 20:07:13 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:07:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:13 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:07:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:07:13 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b26a5b8e8d2c34696f363f13da120510e05b460695a5ed9b214327eb022ad617`  
		Last Modified: Wed, 11 Nov 2026 20:07:18 GMT  
		Size: 7.4 MB (7425392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8edc09963ff93c1c2c3fe6f89aff67f43f01f1d616b2c0fec12f6c4163649bf5`  
		Last Modified: Wed, 11 Nov 2026 20:07:17 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3c78fcef50e7e6e0e39777d7339106f3c8e90c86bcab4ddd6f97ad6a059f88`  
		Last Modified: Wed, 11 Nov 2026 20:07:17 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c5ce800df8b38b0914fbbbc48120373e8e4a90d737774497e27e44973e7b598f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7099a994debc804f5c74347e179e0c38dbd8dddb5128eae8c10a49097defe6c1`

```dockerfile
```

-	Layers:
	-	`sha256:eb550d9dcf7fda56c38b91089e8c2bd5883de145e6a6d7488a7073ac2fc5906e`  
		Last Modified: Wed, 11 Nov 2026 20:07:18 GMT  
		Size: 14.2 KB (14208 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:c3692f11ce99940870ba31aff74b9d51f8b3b0cc55cc0336cbb12cfb9f00b902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10662932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbd3cc6e41a030c083e986ea485ab56bebabdc8465dff0d8ba56b8b7105c7f61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:52:29 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 19:52:29 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 19:52:29 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:52:29 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:52:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:52:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:52:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:52:29 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f81f74aef8b01dbe4ca0e4dc6205ee847df78007d1e79763a0c48ab52caf5453`  
		Last Modified: Wed, 11 Nov 2026 19:52:34 GMT  
		Size: 7.2 MB (7160427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb22854fa302e0f91aab57f89f1e91fe1858ddc2ed9b1ef25050fe33b8b6a2a5`  
		Last Modified: Wed, 11 Nov 2026 19:52:33 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aef6220de0dd3517b93e8af5710f0ee61a427766c5c4597ad0a8b8920ab0736`  
		Last Modified: Wed, 11 Nov 2026 19:52:34 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:74c800ed63abd82bdade6e46454557586b6d8570e96a98162fb71c109b707bc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7a2b33a78ad0526d8f040b328090b843d0c36fae1b144c7cd9480609b656ea`

```dockerfile
```

-	Layers:
	-	`sha256:53b7b9659ebd6e88182f49e2b77934a7c8aa06c0b50762dece703539b76736f8`  
		Last Modified: Wed, 11 Nov 2026 19:52:33 GMT  
		Size: 14.3 KB (14289 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:b42ebdc9d19ace2623367fb4669df0c2317515e4311a7ca99c922ab53b8d36b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10367300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20304bc4474219f35604c8271fd731577c3cd5178fd146ece75f2ff06a62ae02`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:52:28 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 19:52:28 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 19:52:28 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:52:28 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:52:28 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:52:28 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:52:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:52:28 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37cd58d29407408356c7392ceb356f85c0fd91e60f3ae32d28b3e5425b6730d9`  
		Last Modified: Wed, 11 Nov 2026 19:52:32 GMT  
		Size: 7.2 MB (7150862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:493e56882e0fa8e01c4e204529d91d0719e5366066d1ca15a554a301df82f54f`  
		Last Modified: Wed, 11 Nov 2026 19:52:32 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0732b20f0b33e1c83c0b804697f4f9c15d031993e8629dee5f059aa27878915`  
		Last Modified: Wed, 11 Nov 2026 19:52:32 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1a7ddc6a8f351c5a833ad1a5a820a3d165703731de6b47a8079c73fea0a4b525
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9da5f78eb795e7445b6583cfb23251bebe35e9b2f353296e1fd9259db3af6a9b`

```dockerfile
```

-	Layers:
	-	`sha256:b034dbd6c93a676006cf83738eeafdcf53609fb1fd1ee9c6329210b9c91f8c97`  
		Last Modified: Wed, 11 Nov 2026 19:52:32 GMT  
		Size: 14.3 KB (14289 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8032c4b0a32f0d2ce577b9cf76b1c65189feaa94232db45406f7377f58129f5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10894150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d6a6dde2985ccbbb2f16320090ad77ff4d5cba1701e9dacda1f354da023679`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:48:16 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 20:48:16 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 20:48:16 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:48:16 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:48:16 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:48:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:48:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:48:16 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f76c069d1d51f44773b45e6f5bfdf602b8349f074788cfd35c0c1c55582acee`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 6.8 MB (6765797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15a65951c08d9f74270ad785fd1f752b55d6c36792c0668cf19246cecdb4873`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5b12e46b205bcbd3ed1665ceebbd0a833ad760051f46e8a37da46519c9d6cc`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:dfa8825ebea5e68f2144990c1e1eff1b35f8aea8f81fe72d851ee77d69f5d068
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de515dd333d4cb230757b6d5a8dfe3652f943a5cc734159d49a7f723bb3b518b`

```dockerfile
```

-	Layers:
	-	`sha256:80c3e6847b80dbb4910503235cb5ca1c154fb8df59bf0cf2fa5d8e354d0213bb`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 14.3 KB (14313 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:39c61df204b6de7045f872525bb836da3d3c2f4ac7d17af5287afea9a0250bc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10556750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c330da187943a2d84bf60c52b030caca3f37e8ea302e267680e43dabf4fa45d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 20:44:11 GMT
ADD alpine-minirootfs-3.22.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:44:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 23:12:33 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 23:12:33 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 23:12:33 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 23:12:33 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 23:12:34 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 23:12:34 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 23:12:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:12:34 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:4be1a473c77a45524d8389eeb78602a090c801a1ec4c4187ac5060cd906c4712`  
		Last Modified: Thu, 05 Nov 2026 20:44:20 GMT  
		Size: 3.7 MB (3725514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c54119b5cecfe0ab18afa5a67116f75fb7b02b1fd677da1217d0395dd281c8a3`  
		Last Modified: Wed, 11 Nov 2026 23:12:49 GMT  
		Size: 6.8 MB (6830266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d05dc595ed4271d003723bd7086e8257ba25f5b9e35654b52c58f9a5661188`  
		Last Modified: Wed, 11 Nov 2026 23:12:49 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dcf4e09ad9cf1771236c5ea8aa5dda6c22a04c1839057eaac62c0dc09b40200`  
		Last Modified: Wed, 11 Nov 2026 23:12:49 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:94711313e52bc7961e93efce83a25acb77766f37a7d8fafdbc4030f9dcaa818d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd104bbfeac4da05e5372acaf889ad215f9a2d1d30dac65a45c2dc2d4324c441`

```dockerfile
```

-	Layers:
	-	`sha256:de0fc51e384ca323f07fed37d0ff9f5b6e09a733a31cfebf4b5429a06c6e4655`  
		Last Modified: Wed, 11 Nov 2026 23:12:49 GMT  
		Size: 14.3 KB (14252 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:8e41f49538e70ed79f191ff99c6ee83002de027890456c1d09d7d8db58229737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10881987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea236b05a5c02f434dbf6ad5868b3d366ae8f18a385798f2423b0fa173757e8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:17:01 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 20:17:01 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 20:17:01 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d86b596f7fb232e3ba297b5fb9d342d72af1e51feb37d9f777e54f3e02906451' ;;     armhf) natsArch='arm6'; sha256='12a93a4a78b255edf8b3f5644380211f5db549647a3a3f8e0a102971ac35455b' ;;     armv7) natsArch='arm7'; sha256='510062f25ee6552d65fd5c3cc8600e62f5c618ba3c2a5364b97a8f6cebea31f6' ;;     x86_64) natsArch='amd64'; sha256='464f118a8aecf293e405514c1ab2c197a5d9209e58e36a5d05ad9577e5ee9b99' ;;     x86) natsArch='386'; sha256='e106f92c7718a59080b0ccc6159c92d3d29d11793ca76b3b09b9fcaaf15fdd3c' ;;     s390x) natsArch='s390x'; sha256='6735b3de92459d1a98dc1000fbbf75597e94d8b7db0cda4b5c5b35cd75b786cd' ;;     ppc64le) natsArch='ppc64le'; sha256='a9045e58b8d4ab6456e4ce158ebdae96b018284286f2cec0eb56b2854ee59b81' ;;     loong64) natsArch='loong64'; sha256='8e772e37439c2df441a06ae15611dac12fc3cff1c7d1c094bb1fe360f8266b7c' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:17:01 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:17:02 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:17:02 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:17:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:17:02 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c906e79673b42f12f7005c0539c91b6ed26f05fefab4c4ae783970d443cf8d5d`  
		Last Modified: Wed, 11 Nov 2026 20:17:12 GMT  
		Size: 7.2 MB (7237814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d61131ff35cc8cb2c8cd462e27e2e9f8f6d5dedb584fcdca5d5f7d71dac196d`  
		Last Modified: Wed, 11 Nov 2026 20:17:12 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f3f25dea330214849f4007095cfa6966a5f83486f8752f1d4c90ac5a342075`  
		Last Modified: Wed, 11 Nov 2026 20:17:12 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:54d810bab9dc7604df867b5dc8d532ab947a5e96b786df6cbb33a670ef617f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9146788e14ef6f891d3764f75cf1597a56452b4d680b6299a6583209f951dea4`

```dockerfile
```

-	Layers:
	-	`sha256:358241d3e17ec6fb3f953cfd002878d14e9c4c05504f1f50933ab85ea725209d`  
		Last Modified: Wed, 11 Nov 2026 20:17:11 GMT  
		Size: 14.2 KB (14208 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.10-linux`

```console
$ docker pull nats@sha256:7dc8ba8aaab317faddf18761579eda0cb9677bd6f16322240879847875998fc8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:2.14.10-linux` - linux; amd64

```console
$ docker pull nats@sha256:922270c252033e351a5f2870f0e927f8437dd5eb1b88d0e666d32239ce0c7ab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7013651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7007d1a67ae5a7995c69dca30eb2804e743a3d8aba4de9ef34f4f7f3d61bd03e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:54:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:54:38 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:54:38 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:54:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:54:38 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:54:38 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f15171c6e5ebcbd63457c8889127507cfe79107d68c6b64a087039c1e5f8417d`  
		Last Modified: Wed, 11 Nov 2026 12:41:01 GMT  
		Size: 7.0 MB (7013142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f7abab0371cfd6ca63873fe8baebd3a4495cf83e833fbdcbf04b1b1eb60a30`  
		Last Modified: Wed, 11 Nov 2026 20:54:42 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-linux` - unknown; unknown

```console
$ docker pull nats@sha256:0c34beb862b95e4d369ddd3cf1c2a0495b7745503e66d61ff990e3bc59028241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665d8d20dce7702f02ce33005b90033e6e1fa17907ef866ef097c03f299e65b2`

```dockerfile
```

-	Layers:
	-	`sha256:8b25317bdf07a4fa5613f9af2caec79736fb6a3708ace307c9f590f507b74cec`  
		Last Modified: Wed, 11 Nov 2026 20:54:42 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:2213189fb2bf8fffc2db323c944b09e7902ba65021822fc938119e209784c535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6747435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:809906f2fffe0f22b59e1457edb9693cbd8fee4e8667875f119f393f00166374`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:31 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:31 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9b0feeab9036f3e750843336a9e7f4378e381fde0ea1c2b888cdafc9cdb6ab21`  
		Last Modified: Wed, 11 Nov 2026 12:41:00 GMT  
		Size: 6.7 MB (6746925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9d75f0a0136245c86287aae27e74cf3aa354d397ea5d7ebf826bc45335ed9`  
		Last Modified: Wed, 11 Nov 2026 20:08:35 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-linux` - unknown; unknown

```console
$ docker pull nats@sha256:e596c47f64d801ea42ae171b2633c6209faa9c447d2dabc06a836986f19eddf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596f27f864c3175231c8f4cb0da332d5f4ceb8baa90daa61b8ab0494c09fdc9a`

```dockerfile
```

-	Layers:
	-	`sha256:9b2158632486e227b052a0474d79e20a29acfd3fc059af7c8a25ed5961bd586f`  
		Last Modified: Wed, 11 Nov 2026 20:08:35 GMT  
		Size: 8.8 KB (8750 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:97084dfa46ecc18f4ba48564649683dc006e06be52813715b4b5fb5d307e7764
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6737574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2804f0449025b22a577c4a5b0f75b0eb5075f8c28d3a3496432bdd5a1fbf064f`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:42 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:42 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:42 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:aef48f5af27ceb64fc6dc45187f41f7fa18973cdc99677e4f787b8570bab5152`  
		Last Modified: Wed, 11 Nov 2026 12:41:03 GMT  
		Size: 6.7 MB (6737064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5ff031fdac4e1717984648ecf2efbcb25d16468f0b2f8a4442306514229cdba`  
		Last Modified: Wed, 11 Nov 2026 20:08:46 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-linux` - unknown; unknown

```console
$ docker pull nats@sha256:0da6928653d298d2de74a9a1157ae5ea4de47951ee2f84f838faa81bcb6581b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e3d2a58e43ba7f95e29889ae72c9747ea6bf2b220730d6b687abcf5a7b2eb03`

```dockerfile
```

-	Layers:
	-	`sha256:d8b34bc0be71fae9ba3608c6f4d3891f67ae466e82eea24b2ff07d2034e9c481`  
		Last Modified: Wed, 11 Nov 2026 20:08:46 GMT  
		Size: 8.8 KB (8750 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:41983d31edef728184dc279b954ec34ffa8bc48be8d70d02d420e4681f8b98ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6351475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330bb9fc6462306d2ccb71ef8f72c6cc591f7e2de7374df6ad14d56ee8c27366`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 21:25:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 21:25:44 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 21:25:45 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 21:25:45 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 21:25:45 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 21:25:45 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:84edceaeaf564bde8005bb0242a524b981dacd7654d1400b72a23e2beb26be4e`  
		Last Modified: Wed, 11 Nov 2026 12:41:01 GMT  
		Size: 6.4 MB (6350965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e07a2aa6a4dc564859e6a5fe1d08e6c0175b321c9ea3b6352cb812ceefaa3d0`  
		Last Modified: Wed, 11 Nov 2026 21:25:49 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-linux` - unknown; unknown

```console
$ docker pull nats@sha256:c1ce5a772c2d17f21df539fb83186b5fd3bda76be17e0cee7306b251ae30e734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6463a474c7f4656ad15e41e323279ab7dd2d1ddd75a9f939c174dc455cce1657`

```dockerfile
```

-	Layers:
	-	`sha256:284f26e80cd682dd4143873916562cf0b696fe22efcb38081ba3de120dd369d4`  
		Last Modified: Wed, 11 Nov 2026 21:25:49 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:a4cbe4bd2e322532e15bda41c84b4e44b76a215c3281928c5e9a7ef8c0b34019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6416357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb57202c6d5f4c2c1fc1e3ac7ce1f194e63a31f7addbe93a7d4459778700604`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 12 Nov 2026 01:01:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 12 Nov 2026 01:01:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 12 Nov 2026 01:01:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 12 Nov 2026 01:01:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 12 Nov 2026 01:01:01 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 12 Nov 2026 01:01:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:81a746d2f75f44a141ddf3ba6c18f32c7feae2c9eee1584dcbb956f4ca50329b`  
		Last Modified: Wed, 11 Nov 2026 12:41:04 GMT  
		Size: 6.4 MB (6415848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75410ddeb4acea40b3afcec80983bad0170a958aea854eac2f5c252025f56454`  
		Last Modified: Thu, 12 Nov 2026 01:01:42 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-linux` - unknown; unknown

```console
$ docker pull nats@sha256:e7643ed15279bffea7919d4169ef5d56f038988d03845be3afd7c0e7ac41dcdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46f0c59c15b34ee1bb0657b74fe610a4528f2b4745874499f0ed64d19db31b4`

```dockerfile
```

-	Layers:
	-	`sha256:ebb99f93cc4271ec460dc191777f24d7deb8b904b8b8c0e159fe79219a6c2037`  
		Last Modified: Thu, 12 Nov 2026 01:01:42 GMT  
		Size: 8.7 KB (8722 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10-linux` - linux; s390x

```console
$ docker pull nats@sha256:beb588b4c04fef14a7583a01205d8f769986f6233fd06ba7318cf6c8277d6bf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6823726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d8919afc06b4c40d3ae7c9ab10b4d421aa46b9355dca0e2772eecf4acf9f6b2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:31:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:31:03 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:31:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:31:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:84290b78f361faf20cb777094c3b55745e6215d9097837a6836ba57aeee6ed25`  
		Last Modified: Wed, 11 Nov 2026 12:41:04 GMT  
		Size: 6.8 MB (6823216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5650707dc9e2dd4e72ebd852d02677e7fa556c983e908a013a5c18df101d9df8`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-linux` - unknown; unknown

```console
$ docker pull nats@sha256:0cd6edbb8ee09f64d969c48092382cbdcf74e6167e45a9af5064c08c71af80b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6760ec914a7cc22a900901f64c6c73d04d52a54a1e7228effe42a07abb92a3f`

```dockerfile
```

-	Layers:
	-	`sha256:3ffd6f05517d58009b1ae4c4377c1f3d266978748840945ce7b5171726b3ad94`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.10-nanoserver`

```console
$ docker pull nats@sha256:55801bde21fcd460aaf2afc2544ab4524da4ba7f6052dcf3f25c492340d35bab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:2.14.10-nanoserver` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:45cc10ae6154e644307e5477b2195de1a5a743ff905eed01aff75c0c49f6dc7b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133508205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb73c3194923928b776dc13235cf794c811bd820aa079fbde820f55e52a73dd1`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:42:23 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:42:24 GMT
RUN cmd /S /C #(nop) COPY file:9cf9a9b2bbb7744030e57e861b6fd70e92ab618adc28a3cc2d04ec93fb19fec6 in C:\nats-server.exe 
# Wed, 11 Nov 2026 22:42:24 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:42:25 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:42:25 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:42:26 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147d1168648cbe35b00f8375a6a609c1a782ca13d7dc30736aae7b96944d7159`  
		Last Modified: Wed, 11 Nov 2026 22:42:31 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e886400fd12311e6e4ae8be2effb2964a2daa9c8cda87c0a7601f9c9cd6a20`  
		Last Modified: Wed, 11 Nov 2026 22:42:31 GMT  
		Size: 7.2 MB (7217337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f959d8cd478a293d1b1b50fc957498f7e7f8a8fb1550c4fc16ed074ee86203ce`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139e3dd33965774056bc5c0b00fd7a33373c2e5bddc2ab2b4e0d3f10a060b768`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde37fb53cb2fff617727669ed32b5f64561d1eea8b1d14a4de8fe3fff4cfddd`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f3607fbf5b974b3b14bb751857b8f9e7936e07c1993840e6399c278c07f3ec`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.10-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:55801bde21fcd460aaf2afc2544ab4524da4ba7f6052dcf3f25c492340d35bab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:2.14.10-nanoserver-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:45cc10ae6154e644307e5477b2195de1a5a743ff905eed01aff75c0c49f6dc7b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133508205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb73c3194923928b776dc13235cf794c811bd820aa079fbde820f55e52a73dd1`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:42:23 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:42:24 GMT
RUN cmd /S /C #(nop) COPY file:9cf9a9b2bbb7744030e57e861b6fd70e92ab618adc28a3cc2d04ec93fb19fec6 in C:\nats-server.exe 
# Wed, 11 Nov 2026 22:42:24 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:42:25 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:42:25 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:42:26 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147d1168648cbe35b00f8375a6a609c1a782ca13d7dc30736aae7b96944d7159`  
		Last Modified: Wed, 11 Nov 2026 22:42:31 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e886400fd12311e6e4ae8be2effb2964a2daa9c8cda87c0a7601f9c9cd6a20`  
		Last Modified: Wed, 11 Nov 2026 22:42:31 GMT  
		Size: 7.2 MB (7217337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f959d8cd478a293d1b1b50fc957498f7e7f8a8fb1550c4fc16ed074ee86203ce`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139e3dd33965774056bc5c0b00fd7a33373c2e5bddc2ab2b4e0d3f10a060b768`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde37fb53cb2fff617727669ed32b5f64561d1eea8b1d14a4de8fe3fff4cfddd`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f3607fbf5b974b3b14bb751857b8f9e7936e07c1993840e6399c278c07f3ec`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.10-scratch`

```console
$ docker pull nats@sha256:7dc8ba8aaab317faddf18761579eda0cb9677bd6f16322240879847875998fc8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:2.14.10-scratch` - linux; amd64

```console
$ docker pull nats@sha256:922270c252033e351a5f2870f0e927f8437dd5eb1b88d0e666d32239ce0c7ab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7013651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7007d1a67ae5a7995c69dca30eb2804e743a3d8aba4de9ef34f4f7f3d61bd03e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:54:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:54:38 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:54:38 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:54:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:54:38 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:54:38 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f15171c6e5ebcbd63457c8889127507cfe79107d68c6b64a087039c1e5f8417d`  
		Last Modified: Wed, 11 Nov 2026 12:41:01 GMT  
		Size: 7.0 MB (7013142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f7abab0371cfd6ca63873fe8baebd3a4495cf83e833fbdcbf04b1b1eb60a30`  
		Last Modified: Wed, 11 Nov 2026 20:54:42 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:0c34beb862b95e4d369ddd3cf1c2a0495b7745503e66d61ff990e3bc59028241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665d8d20dce7702f02ce33005b90033e6e1fa17907ef866ef097c03f299e65b2`

```dockerfile
```

-	Layers:
	-	`sha256:8b25317bdf07a4fa5613f9af2caec79736fb6a3708ace307c9f590f507b74cec`  
		Last Modified: Wed, 11 Nov 2026 20:54:42 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:2213189fb2bf8fffc2db323c944b09e7902ba65021822fc938119e209784c535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6747435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:809906f2fffe0f22b59e1457edb9693cbd8fee4e8667875f119f393f00166374`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:31 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:31 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9b0feeab9036f3e750843336a9e7f4378e381fde0ea1c2b888cdafc9cdb6ab21`  
		Last Modified: Wed, 11 Nov 2026 12:41:00 GMT  
		Size: 6.7 MB (6746925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9d75f0a0136245c86287aae27e74cf3aa354d397ea5d7ebf826bc45335ed9`  
		Last Modified: Wed, 11 Nov 2026 20:08:35 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:e596c47f64d801ea42ae171b2633c6209faa9c447d2dabc06a836986f19eddf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596f27f864c3175231c8f4cb0da332d5f4ceb8baa90daa61b8ab0494c09fdc9a`

```dockerfile
```

-	Layers:
	-	`sha256:9b2158632486e227b052a0474d79e20a29acfd3fc059af7c8a25ed5961bd586f`  
		Last Modified: Wed, 11 Nov 2026 20:08:35 GMT  
		Size: 8.8 KB (8750 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:97084dfa46ecc18f4ba48564649683dc006e06be52813715b4b5fb5d307e7764
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6737574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2804f0449025b22a577c4a5b0f75b0eb5075f8c28d3a3496432bdd5a1fbf064f`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:42 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:42 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:42 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:aef48f5af27ceb64fc6dc45187f41f7fa18973cdc99677e4f787b8570bab5152`  
		Last Modified: Wed, 11 Nov 2026 12:41:03 GMT  
		Size: 6.7 MB (6737064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5ff031fdac4e1717984648ecf2efbcb25d16468f0b2f8a4442306514229cdba`  
		Last Modified: Wed, 11 Nov 2026 20:08:46 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:0da6928653d298d2de74a9a1157ae5ea4de47951ee2f84f838faa81bcb6581b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e3d2a58e43ba7f95e29889ae72c9747ea6bf2b220730d6b687abcf5a7b2eb03`

```dockerfile
```

-	Layers:
	-	`sha256:d8b34bc0be71fae9ba3608c6f4d3891f67ae466e82eea24b2ff07d2034e9c481`  
		Last Modified: Wed, 11 Nov 2026 20:08:46 GMT  
		Size: 8.8 KB (8750 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:41983d31edef728184dc279b954ec34ffa8bc48be8d70d02d420e4681f8b98ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6351475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330bb9fc6462306d2ccb71ef8f72c6cc591f7e2de7374df6ad14d56ee8c27366`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 21:25:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 21:25:44 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 21:25:45 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 21:25:45 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 21:25:45 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 21:25:45 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:84edceaeaf564bde8005bb0242a524b981dacd7654d1400b72a23e2beb26be4e`  
		Last Modified: Wed, 11 Nov 2026 12:41:01 GMT  
		Size: 6.4 MB (6350965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e07a2aa6a4dc564859e6a5fe1d08e6c0175b321c9ea3b6352cb812ceefaa3d0`  
		Last Modified: Wed, 11 Nov 2026 21:25:49 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:c1ce5a772c2d17f21df539fb83186b5fd3bda76be17e0cee7306b251ae30e734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6463a474c7f4656ad15e41e323279ab7dd2d1ddd75a9f939c174dc455cce1657`

```dockerfile
```

-	Layers:
	-	`sha256:284f26e80cd682dd4143873916562cf0b696fe22efcb38081ba3de120dd369d4`  
		Last Modified: Wed, 11 Nov 2026 21:25:49 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:a4cbe4bd2e322532e15bda41c84b4e44b76a215c3281928c5e9a7ef8c0b34019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6416357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb57202c6d5f4c2c1fc1e3ac7ce1f194e63a31f7addbe93a7d4459778700604`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 12 Nov 2026 01:01:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 12 Nov 2026 01:01:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 12 Nov 2026 01:01:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 12 Nov 2026 01:01:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 12 Nov 2026 01:01:01 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 12 Nov 2026 01:01:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:81a746d2f75f44a141ddf3ba6c18f32c7feae2c9eee1584dcbb956f4ca50329b`  
		Last Modified: Wed, 11 Nov 2026 12:41:04 GMT  
		Size: 6.4 MB (6415848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75410ddeb4acea40b3afcec80983bad0170a958aea854eac2f5c252025f56454`  
		Last Modified: Thu, 12 Nov 2026 01:01:42 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:e7643ed15279bffea7919d4169ef5d56f038988d03845be3afd7c0e7ac41dcdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46f0c59c15b34ee1bb0657b74fe610a4528f2b4745874499f0ed64d19db31b4`

```dockerfile
```

-	Layers:
	-	`sha256:ebb99f93cc4271ec460dc191777f24d7deb8b904b8b8c0e159fe79219a6c2037`  
		Last Modified: Thu, 12 Nov 2026 01:01:42 GMT  
		Size: 8.7 KB (8722 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.10-scratch` - linux; s390x

```console
$ docker pull nats@sha256:beb588b4c04fef14a7583a01205d8f769986f6233fd06ba7318cf6c8277d6bf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6823726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d8919afc06b4c40d3ae7c9ab10b4d421aa46b9355dca0e2772eecf4acf9f6b2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:31:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:31:03 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:31:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:31:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:84290b78f361faf20cb777094c3b55745e6215d9097837a6836ba57aeee6ed25`  
		Last Modified: Wed, 11 Nov 2026 12:41:04 GMT  
		Size: 6.8 MB (6823216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5650707dc9e2dd4e72ebd852d02677e7fa556c983e908a013a5c18df101d9df8`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.10-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:0cd6edbb8ee09f64d969c48092382cbdcf74e6167e45a9af5064c08c71af80b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6760ec914a7cc22a900901f64c6c73d04d52a54a1e7228effe42a07abb92a3f`

```dockerfile
```

-	Layers:
	-	`sha256:3ffd6f05517d58009b1ae4c4377c1f3d266978748840945ce7b5171726b3ad94`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.10-windowsservercore`

```console
$ docker pull nats@sha256:315b691b6e5adcffcd2b4047e6e6658a53e35583b2754b6ecc5c143b00de0bbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:2.14.10-windowsservercore` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:b5254eab0669991ff51402f34820540685c9deb1a5404b2e3954c35de71e3b7e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2254244310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46574461f2d31306393fd61318697c30f162fd479287b8471f885ecd40f28d01`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 22:02:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Nov 2026 22:02:03 GMT
ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:02:50 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 22:02:50 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 22:02:51 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.10/nats-server-v2.14.10-windows-amd64.zip
# Wed, 11 Nov 2026 22:02:51 GMT
ENV NATS_SERVER_SHASUM=883dd335053d92198fa57e16204109b7e5efb16bd906d2ec2250f2c7454d810b
# Wed, 11 Nov 2026 22:02:57 GMT
RUN Set-PSDebug -Trace 2
# Wed, 11 Nov 2026 22:03:11 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 11 Nov 2026 22:03:11 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:03:11 GMT
EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:03:12 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:03:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985cdefb6abad122d5e02da8d25bc1bdd43faf7ca80f9dd3261101a1ab8c007`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5387296daa8755673907cf7b38bdb72ad011942273ab0f479fcaf018e17c212c`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108d04a546775ae52e6f21bffcc8e4706320d2e5843ea4a966d981b7962729f`  
		Last Modified: Wed, 11 Nov 2026 22:03:20 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946cc967403878745529f98ba7fd8b8c62a36b1f595e5e5af5c28c2e3efad3e7`  
		Last Modified: Wed, 11 Nov 2026 22:03:18 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a1f01f49467c5ca02b3d9254518678274e2b9bd710af320cc6dfb1713fd71a`  
		Last Modified: Wed, 11 Nov 2026 22:03:18 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca68282d7cf2e1be813eb3a3d819b61f609b8e906acc3e93f6440ae31cf6665`  
		Last Modified: Wed, 11 Nov 2026 22:03:18 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f537256f2b9fb1bce5bc37958b22e17727e0d9c8b5809e82537bbf662c31a7f`  
		Last Modified: Wed, 11 Nov 2026 22:03:18 GMT  
		Size: 333.7 KB (333690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a4d7261c318c1956d1f0fe214511bb499364f0b89363dba7cc1870a0fa5e3e`  
		Last Modified: Wed, 11 Nov 2026 22:03:19 GMT  
		Size: 7.5 MB (7549163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996376e06b102ba9b9902c5ca57e23e878e854393ebd3db2c537c07f16caf8ad`  
		Last Modified: Wed, 11 Nov 2026 22:03:17 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9df6727f51e37b4ab7fd24dc911d3027bf31e8fb92d1254b531b10ebbb9533`  
		Last Modified: Wed, 11 Nov 2026 22:03:17 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ab1e743bdd637c9744722697592a7927a943b41ef79d8da006aaa3d2217b1a`  
		Last Modified: Wed, 11 Nov 2026 22:03:17 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ff905c3d5d1cbf3bac1bd591b1cce68937e6eb0906538a58285cc26a17cabd`  
		Last Modified: Wed, 11 Nov 2026 22:03:17 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.10-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:315b691b6e5adcffcd2b4047e6e6658a53e35583b2754b6ecc5c143b00de0bbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:2.14.10-windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:b5254eab0669991ff51402f34820540685c9deb1a5404b2e3954c35de71e3b7e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2254244310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46574461f2d31306393fd61318697c30f162fd479287b8471f885ecd40f28d01`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 22:02:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Nov 2026 22:02:03 GMT
ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:02:50 GMT
ENV NATS_SERVER=2.14.10
# Wed, 11 Nov 2026 22:02:50 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.10
# Wed, 11 Nov 2026 22:02:51 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.10/nats-server-v2.14.10-windows-amd64.zip
# Wed, 11 Nov 2026 22:02:51 GMT
ENV NATS_SERVER_SHASUM=883dd335053d92198fa57e16204109b7e5efb16bd906d2ec2250f2c7454d810b
# Wed, 11 Nov 2026 22:02:57 GMT
RUN Set-PSDebug -Trace 2
# Wed, 11 Nov 2026 22:03:11 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 11 Nov 2026 22:03:11 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:03:11 GMT
EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:03:12 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:03:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985cdefb6abad122d5e02da8d25bc1bdd43faf7ca80f9dd3261101a1ab8c007`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5387296daa8755673907cf7b38bdb72ad011942273ab0f479fcaf018e17c212c`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108d04a546775ae52e6f21bffcc8e4706320d2e5843ea4a966d981b7962729f`  
		Last Modified: Wed, 11 Nov 2026 22:03:20 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946cc967403878745529f98ba7fd8b8c62a36b1f595e5e5af5c28c2e3efad3e7`  
		Last Modified: Wed, 11 Nov 2026 22:03:18 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a1f01f49467c5ca02b3d9254518678274e2b9bd710af320cc6dfb1713fd71a`  
		Last Modified: Wed, 11 Nov 2026 22:03:18 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca68282d7cf2e1be813eb3a3d819b61f609b8e906acc3e93f6440ae31cf6665`  
		Last Modified: Wed, 11 Nov 2026 22:03:18 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f537256f2b9fb1bce5bc37958b22e17727e0d9c8b5809e82537bbf662c31a7f`  
		Last Modified: Wed, 11 Nov 2026 22:03:18 GMT  
		Size: 333.7 KB (333690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a4d7261c318c1956d1f0fe214511bb499364f0b89363dba7cc1870a0fa5e3e`  
		Last Modified: Wed, 11 Nov 2026 22:03:19 GMT  
		Size: 7.5 MB (7549163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996376e06b102ba9b9902c5ca57e23e878e854393ebd3db2c537c07f16caf8ad`  
		Last Modified: Wed, 11 Nov 2026 22:03:17 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9df6727f51e37b4ab7fd24dc911d3027bf31e8fb92d1254b531b10ebbb9533`  
		Last Modified: Wed, 11 Nov 2026 22:03:17 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ab1e743bdd637c9744722697592a7927a943b41ef79d8da006aaa3d2217b1a`  
		Last Modified: Wed, 11 Nov 2026 22:03:17 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ff905c3d5d1cbf3bac1bd591b1cce68937e6eb0906538a58285cc26a17cabd`  
		Last Modified: Wed, 11 Nov 2026 22:03:17 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15`

```console
$ docker pull nats@sha256:9d85d87039bfba33baf48de4da32a2ee572bcd6c94f6365d05733a672de49253
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 13
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.20348.5870; amd64

### `nats:2.15` - linux; amd64

```console
$ docker pull nats@sha256:be646c8caa022c84124c304a75f82607e993d85db764537e7d3ba0f6e8e91120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebabea7c61861e18b8820961301b49fcd7f3df6d9c5db6cc8d0482bef2ef4847`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:54:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:54:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:54:27 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:54:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6c41ccb011f1e3eb95229360dda280dbae3c84b32ab35a4edb30996aa04c1222`  
		Last Modified: Wed, 11 Nov 2026 12:40:47 GMT  
		Size: 7.4 MB (7413771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7196051da1c4789bd19130dfc68679be8004477b1856a7dfdd48df5b6b122b`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:6aed5a64b55e4569227b1a7f3bf3240a4b3a1a0cb7455ac6339a7c4f5f3b3a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a21a34b28996ba8d7db4252d1738beb79d54c8052bc6e693fe73f2f58d3525`

```dockerfile
```

-	Layers:
	-	`sha256:cfaec91bf4394770fec11c9732677e079c95c4dd1e419e1ecd73970b98c39bea`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; arm variant v6

```console
$ docker pull nats@sha256:8a878323f772784d9e3e49e206800b5a410f6991626194fa3f5991f5fb640ebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7159535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de547db16901709740b766266b3139e92f964c8b47e2320d21867396faf46d04`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:07:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:07:48 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:48 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:07:48 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0652d0be457f3d18d288edc0307eca1cd202a88e16ab984f6882712a07472087`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.2 MB (7159025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00728826337a407fb9b7e405c8d8a77cea79c644e150cf0dcd98e286f35737d`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:37c47a81bed6ea1b2961020c4b256a5ee6565cb0b8ad25c3392b6ed6cf0714a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7cf8d39791790d3e9a341b539a87c4eb1dd7e61b7376f20c239f7fef4fe453a`

```dockerfile
```

-	Layers:
	-	`sha256:c095dca2c3080f0be34b9f122370531d7e7e0cd3a7a3ad696bb56217739f9e58`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; arm variant v7

```console
$ docker pull nats@sha256:d199f1ca8dde7c83937bf4f62950ef61b9312a382d9c3f5313767f87fe4e1e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7149171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18d4b7ea52f86036881095b2ec72cce6170af89fbfc2d3008f26513dc5bd6ae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:19 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:19 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:19 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1d56e1908d3168328ed814028289867fa851e08df0a504b78e139c4e98e21797`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.1 MB (7148661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac74cd523247bf5196cea88a5d9d76f6fb0a6eac15700b754fb73abf7e640d79`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:ddad513f45cf6be9dda44e1fba820cc93b7015edac6967ad7675182255ca79bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e95a880af198f329eb9b1d09c1c107344f6315b7fd15d090427df5ddefc2084`

```dockerfile
```

-	Layers:
	-	`sha256:301fe24c83eb64fdcc12925ac8526b52f94821a9a4892e25e424642da67a55e0`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:830dce64852b46536c685a08928ee5ead95a58c9cd080eee0a8e13ce86f0aba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6714600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cfc58e56d5cdd41f6d183d83da256ef4f2e99bfcea14c7157587f2b47ed875`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 21:25:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 21:25:33 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 21:25:33 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 21:25:33 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6228cfd108f7c3f9ec9824ca763e1e25fc2b01559af55d05b74a0a051efde28d`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.7 MB (6714091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98e91042c5c3b3134a6074cd11c9472f0f710aaa936e98a81ee985a921fe4ec`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:9682b16459e0e6305d140e4eb3a65a2300d397561f7bd32f5a1385453337d051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2570c9b1f5aba41d1bebc9eaf4d5d778947b00871edb960a5635eb1b5d2429e1`

```dockerfile
```

-	Layers:
	-	`sha256:1565fd55d2f5eefa9c74c8dda2a71c0dd35dd7d6621c508455a0983992eb15a2`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; ppc64le

```console
$ docker pull nats@sha256:1a2420547959c489657b8b667b34cab5a6972d6740d6e6f53478a6db0ab9fcd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6780019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc94b182d2ec7f1febbe856adfded34a81a310aa723fa02bcd172c6d5ed1ed17`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 12 Nov 2026 01:01:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 12 Nov 2026 01:01:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 12 Nov 2026 01:01:37 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 12 Nov 2026 01:01:37 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9bdbb61c627844ef007af6376c4f7820d3d077333aea87599d1d9fff52f0d248`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.8 MB (6779510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15c3921d90e0def6f53910b8d2c97c1e7191c44c17ccceb6fe1377e2f60f4e0`  
		Last Modified: Thu, 12 Nov 2026 01:02:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:d02468148f1cec2e2db760de2a87b183c7fff469a4f666113dc63f2eab6951db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba9cb0342b3f73dda5682bd6a845bd46317740b5d37c77cda7cb8590a870fca`

```dockerfile
```

-	Layers:
	-	`sha256:203f0b65518389a217783c05d70a31ee0898f920598153245888d5771eb8e20c`  
		Last Modified: Thu, 12 Nov 2026 01:02:12 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; s390x

```console
$ docker pull nats@sha256:dd33cb1a221b6595bfd4643aef77a4a8e5566f0702f9dd08b2cad869e7cbf793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7206120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06199899208fa49bf5fbf0c86e72ad6eacc87807a89d7dd3f3b77d677dfc08b8`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:31:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:31:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:31:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:31:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2c7977c75081d99f8442328b859f102db4c4a9438f6ddfb6ab0007cf6b85845d`  
		Last Modified: Wed, 11 Nov 2026 12:40:48 GMT  
		Size: 7.2 MB (7205609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ed079d2e3dc3680cad70afd210e511614450b1c1bbab1d20a430ac3c1ae1131`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 511.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:b30d569e71f7ac1c9b56950d5cf24682552921c83b614b467af092a4d0a9bb6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf2c76ca30e45db54065364a4ee78a7b3e458f0b7da95ddcec5aa1cb4f635ae`

```dockerfile
```

-	Layers:
	-	`sha256:52eb5e764b12c56c3c1bed3cf22421da87376402d5f21b799623b67882a2cbbf`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:82626ff1932b07f6ac3b16e1500859c91764a061de33884d1616e4dca0d80302
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133904237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c360f19803400f80afed757d36cd2e7b06fc0d82ca9617889f0dc1d3546b7f47`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:42:18 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:c5ba8ddabfa6bdb884d582c2eb77790c07981a344bb31247325541a7a60e20d4 in C:\nats-server.exe 
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:42:23 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e36bfc7615a5cd746e5bf675d5bc88f61ed6f2565098b4e3806bde2e8d8079`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84956934b58babe208abf3bb41d01573c01145bc958eb78c0ab1c2fbb200bd6f`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 7.6 MB (7613293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f94016dc2ab84be35d26775093d2336850b05e1c371d7a1bad7e825a60d79ac`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5144c9276313080ff5b57f640ef93c7b502fbb2c581dd83e6560857aea916d47`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1637678fa817944cca81415acc00adc752c13dfacdb68eb8d4d27cdaf52c69`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe0a8e2844e4df140712e9b6d095af7a03f92f4a292095d56c85938624f5eec`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15-alpine`

```console
$ docker pull nats@sha256:558394a23dd3c36f2d3a64b51865fd09908010e80a542cea5e75c2af543ed62a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:2.15-alpine` - linux; amd64

```console
$ docker pull nats@sha256:4d116f873a8aa17a0903b01a73b670c1d48d8164dbd18b92641b6b2bea3ca576
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11624946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ea8169776497b3f85533203eebf4cdc015bbd99096e103b44b7580870f66099`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:07:08 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:07:08 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:07:08 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:07:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5fbdd51c05f2bcdc40687231f719a46bbadac5817fd53479cc501cdb2e8ecaf`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 7.8 MB (7829602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2058ceffc175fced21ce5fa44e42c524ab3df9daceec7fd8383f83503b87897b`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cb5292e90c5ee261555e3410e51e6fb54431372c1c9938900a44ce12af4248`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:bd6e03f8ea96224dad377daa3ae06073f0b7ad74835d6865ae9ac005a1c03401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62382ba579511db5e1fbe7c6b6bb2b2839c59b4bb5d38995c16964b1182d9e12`

```dockerfile
```

-	Layers:
	-	`sha256:6b9066e344d71dc27354cb5ce9f9021f0e205b2e5a5891a96f14122a9d826d27`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:7c2a41784eec7bef33f61f5af7703b10476a51d0786a591a6e374abe0feaa6d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11075192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df845aedb9f5ebd76379689734ae3581aa8c03a60c7ea201aa8c8b6f9b0da58d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:51:54 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 19:51:54 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 19:51:54 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:51:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:51:54 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982be782ef7491766237534a340c64825b0fb3b7f46330dc2c867e213b61256c`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 7.6 MB (7572687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4901cf87dfe112c37a59137d0e38e953ce6b28f96b6a63d85d53ffe9ea87e1c`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64cd38d69b07c59789dce8681f16afeaf71852306a74dbeeda693afb2d8b764a`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:47a053c14fa0f809859f94c0a9c209757cc180a8351ce842f5c38b5def9dbfe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fbb0ec0aa3a30941dda3f95b96678973ca0c0f9fb2429032b1a4657dce5fbdc`

```dockerfile
```

-	Layers:
	-	`sha256:b032ee2dc50ce7638928624a38f941315c1bf79cbfbc2f38dc63b95e89bd1a89`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:7c259377cef516da0aa0f0dfef3c550e4e544261a6dafcc0a036fbb54a204806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10779173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66956c1a5e337ab6809d30c25812df9dd19403f7c9fd9be219da4b3bc978298`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:52:16 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 19:52:16 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 19:52:16 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:52:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:52:16 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bbd95d45b9c325743606a8d0942768db9ed8fc4ca762410d9bfb060d43c8c71`  
		Last Modified: Wed, 11 Nov 2026 19:52:21 GMT  
		Size: 7.6 MB (7562736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc306d381ad485aa19c1d8a49258126fcfc0b4b22dfe51b9f76081093655b286`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:210e3a60ec41232f23075a24e6f6b7701738cdd2b8a95110ddf7f02a43630ae5`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:65079ffe889e765f01ee57be9be534baba24a4180a28fc796db63a2e9bfc7019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0c4f20ec1d2db244ece69ae372d6fd9b5434e63f738ed52ca30e5c7c43c8a6`

```dockerfile
```

-	Layers:
	-	`sha256:4bc059622b12e1226e42ca15e6dbc32a00d82b3f99bcc76d2ad50f00a9c9ffb7`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:24598944c0a44021356e234d5334f5d6a7b0916dc0062db250e171d19ac9bb6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11257480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3035a91c92ec8bd7cdf93039ba50d18b4a401fe3e1b7fa0d88f1fecac0075cbb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:48:15 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:48:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:48:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:48:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ea356e615f28e286c59c05db6da8937a551767ee346a78c1f4d6bda06b6e8f`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 7.1 MB (7129125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd28680459beff9713b57e49f20305776f673510ba5e48f98409c22e008fc940`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01dbe57d396d17cd29bee561069ed437ad03eee5b5494b2d6d81d1e2d9c8ee01`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:60ecbc4d690b52b225ef4b5996f94415d5e25ad25c58b7d865f97e71eebab359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0311a5cb98bdb04348024507e5e23d9049fbe6de20f28b0813ccb2252b719d6`

```dockerfile
```

-	Layers:
	-	`sha256:daa994b4b6369aa0777e486cfe0b5ffdece7f7bf45f6ac378af73e68c6e38027`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:011c7c1b76a1fa3717f14bcd143c158d1a74d6670fc76d07fbc07dc65739555b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10921752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a1cdb0153958a36259069931dde22a4497f363b89ba4b07abd1070d2de1e20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 20:44:11 GMT
ADD alpine-minirootfs-3.22.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:44:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 23:11:25 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 23:11:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 23:11:25 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 23:11:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:11:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:4be1a473c77a45524d8389eeb78602a090c801a1ec4c4187ac5060cd906c4712`  
		Last Modified: Thu, 05 Nov 2026 20:44:20 GMT  
		Size: 3.7 MB (3725514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a54e6913a1e56ba64231731a62506a08e1815049e56af50eeac7fac3369f623`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 7.2 MB (7195270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cb7170ed6ba72a8842721ef5706545b5d7e6c0df93e1e563398bbd7ea15a8a`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8794200cc7fa30cf4f354240903cb6eb554f596580aa0b503493f1e48ee6c2`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1f9bbddf76cf9c0161c6043aaa801044d4af8e580e1b798ad4c53531bb23ff2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95cdb5746b357733db83a889491a152fc95224911c7a0acbc25282d7ab6cb475`

```dockerfile
```

-	Layers:
	-	`sha256:a5480ae190bdb466be835bb2d2d3b38ed8f60eff4921f1d0435f2fa2fbd9ab7e`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; s390x

```console
$ docker pull nats@sha256:8df7f7521e354b2392ad152b85092556d19aaa7c1950f44b3e434439130abf74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11264579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98450d4479a68c21c39700f208b89521b140129ba34e8d1c2dc12e2b11dff444`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:17:03 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:17:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:17:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:17:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:17:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:17:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:17:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:17:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:955cb8f4540451c232e6c2034a4fc46518ca0fbf63379f52e283db5301da41e0`  
		Last Modified: Wed, 11 Nov 2026 20:17:15 GMT  
		Size: 7.6 MB (7620405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08aa2e533d64888badfba3771ac87feffcfa5a1e56f424564f7e50692bf7ce39`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20cdf622c9229c506f0d0b5a5bbdd72388a38bb7b70fbc66b2d98bbef518b5a6`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:828fff7ae808f627dc01c4671e725d894ad90eef5f22c78fcdff8606c71a2356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4703b93bc7aba9482b419d4ed569294855766fff1fdf2b8c12c72cd36751f2f`

```dockerfile
```

-	Layers:
	-	`sha256:8086373f71f4ba98e50b1f50657140154588d0c89c2e0bea8ff0f565715976cb`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15-alpine3.22`

```console
$ docker pull nats@sha256:558394a23dd3c36f2d3a64b51865fd09908010e80a542cea5e75c2af543ed62a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:2.15-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:4d116f873a8aa17a0903b01a73b670c1d48d8164dbd18b92641b6b2bea3ca576
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11624946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ea8169776497b3f85533203eebf4cdc015bbd99096e103b44b7580870f66099`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:07:08 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:07:08 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:07:08 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:07:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5fbdd51c05f2bcdc40687231f719a46bbadac5817fd53479cc501cdb2e8ecaf`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 7.8 MB (7829602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2058ceffc175fced21ce5fa44e42c524ab3df9daceec7fd8383f83503b87897b`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cb5292e90c5ee261555e3410e51e6fb54431372c1c9938900a44ce12af4248`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:bd6e03f8ea96224dad377daa3ae06073f0b7ad74835d6865ae9ac005a1c03401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62382ba579511db5e1fbe7c6b6bb2b2839c59b4bb5d38995c16964b1182d9e12`

```dockerfile
```

-	Layers:
	-	`sha256:6b9066e344d71dc27354cb5ce9f9021f0e205b2e5a5891a96f14122a9d826d27`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:7c2a41784eec7bef33f61f5af7703b10476a51d0786a591a6e374abe0feaa6d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11075192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df845aedb9f5ebd76379689734ae3581aa8c03a60c7ea201aa8c8b6f9b0da58d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:51:54 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 19:51:54 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 19:51:54 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:51:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:51:54 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982be782ef7491766237534a340c64825b0fb3b7f46330dc2c867e213b61256c`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 7.6 MB (7572687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4901cf87dfe112c37a59137d0e38e953ce6b28f96b6a63d85d53ffe9ea87e1c`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64cd38d69b07c59789dce8681f16afeaf71852306a74dbeeda693afb2d8b764a`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:47a053c14fa0f809859f94c0a9c209757cc180a8351ce842f5c38b5def9dbfe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fbb0ec0aa3a30941dda3f95b96678973ca0c0f9fb2429032b1a4657dce5fbdc`

```dockerfile
```

-	Layers:
	-	`sha256:b032ee2dc50ce7638928624a38f941315c1bf79cbfbc2f38dc63b95e89bd1a89`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:7c259377cef516da0aa0f0dfef3c550e4e544261a6dafcc0a036fbb54a204806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10779173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66956c1a5e337ab6809d30c25812df9dd19403f7c9fd9be219da4b3bc978298`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:52:16 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 19:52:16 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 19:52:16 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:52:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:52:16 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bbd95d45b9c325743606a8d0942768db9ed8fc4ca762410d9bfb060d43c8c71`  
		Last Modified: Wed, 11 Nov 2026 19:52:21 GMT  
		Size: 7.6 MB (7562736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc306d381ad485aa19c1d8a49258126fcfc0b4b22dfe51b9f76081093655b286`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:210e3a60ec41232f23075a24e6f6b7701738cdd2b8a95110ddf7f02a43630ae5`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:65079ffe889e765f01ee57be9be534baba24a4180a28fc796db63a2e9bfc7019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0c4f20ec1d2db244ece69ae372d6fd9b5434e63f738ed52ca30e5c7c43c8a6`

```dockerfile
```

-	Layers:
	-	`sha256:4bc059622b12e1226e42ca15e6dbc32a00d82b3f99bcc76d2ad50f00a9c9ffb7`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:24598944c0a44021356e234d5334f5d6a7b0916dc0062db250e171d19ac9bb6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11257480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3035a91c92ec8bd7cdf93039ba50d18b4a401fe3e1b7fa0d88f1fecac0075cbb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:48:15 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:48:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:48:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:48:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ea356e615f28e286c59c05db6da8937a551767ee346a78c1f4d6bda06b6e8f`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 7.1 MB (7129125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd28680459beff9713b57e49f20305776f673510ba5e48f98409c22e008fc940`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01dbe57d396d17cd29bee561069ed437ad03eee5b5494b2d6d81d1e2d9c8ee01`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:60ecbc4d690b52b225ef4b5996f94415d5e25ad25c58b7d865f97e71eebab359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0311a5cb98bdb04348024507e5e23d9049fbe6de20f28b0813ccb2252b719d6`

```dockerfile
```

-	Layers:
	-	`sha256:daa994b4b6369aa0777e486cfe0b5ffdece7f7bf45f6ac378af73e68c6e38027`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:011c7c1b76a1fa3717f14bcd143c158d1a74d6670fc76d07fbc07dc65739555b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10921752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a1cdb0153958a36259069931dde22a4497f363b89ba4b07abd1070d2de1e20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 20:44:11 GMT
ADD alpine-minirootfs-3.22.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:44:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 23:11:25 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 23:11:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 23:11:25 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 23:11:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:11:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:4be1a473c77a45524d8389eeb78602a090c801a1ec4c4187ac5060cd906c4712`  
		Last Modified: Thu, 05 Nov 2026 20:44:20 GMT  
		Size: 3.7 MB (3725514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a54e6913a1e56ba64231731a62506a08e1815049e56af50eeac7fac3369f623`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 7.2 MB (7195270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cb7170ed6ba72a8842721ef5706545b5d7e6c0df93e1e563398bbd7ea15a8a`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8794200cc7fa30cf4f354240903cb6eb554f596580aa0b503493f1e48ee6c2`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1f9bbddf76cf9c0161c6043aaa801044d4af8e580e1b798ad4c53531bb23ff2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95cdb5746b357733db83a889491a152fc95224911c7a0acbc25282d7ab6cb475`

```dockerfile
```

-	Layers:
	-	`sha256:a5480ae190bdb466be835bb2d2d3b38ed8f60eff4921f1d0435f2fa2fbd9ab7e`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:8df7f7521e354b2392ad152b85092556d19aaa7c1950f44b3e434439130abf74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11264579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98450d4479a68c21c39700f208b89521b140129ba34e8d1c2dc12e2b11dff444`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:17:03 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:17:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:17:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:17:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:17:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:17:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:17:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:17:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:955cb8f4540451c232e6c2034a4fc46518ca0fbf63379f52e283db5301da41e0`  
		Last Modified: Wed, 11 Nov 2026 20:17:15 GMT  
		Size: 7.6 MB (7620405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08aa2e533d64888badfba3771ac87feffcfa5a1e56f424564f7e50692bf7ce39`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20cdf622c9229c506f0d0b5a5bbdd72388a38bb7b70fbc66b2d98bbef518b5a6`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:828fff7ae808f627dc01c4671e725d894ad90eef5f22c78fcdff8606c71a2356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4703b93bc7aba9482b419d4ed569294855766fff1fdf2b8c12c72cd36751f2f`

```dockerfile
```

-	Layers:
	-	`sha256:8086373f71f4ba98e50b1f50657140154588d0c89c2e0bea8ff0f565715976cb`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15-linux`

```console
$ docker pull nats@sha256:cf783105b65fd68ed9c40fdae8f624f97177c1fc1b705b4939eb25f27df22019
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:2.15-linux` - linux; amd64

```console
$ docker pull nats@sha256:be646c8caa022c84124c304a75f82607e993d85db764537e7d3ba0f6e8e91120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebabea7c61861e18b8820961301b49fcd7f3df6d9c5db6cc8d0482bef2ef4847`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:54:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:54:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:54:27 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:54:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6c41ccb011f1e3eb95229360dda280dbae3c84b32ab35a4edb30996aa04c1222`  
		Last Modified: Wed, 11 Nov 2026 12:40:47 GMT  
		Size: 7.4 MB (7413771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7196051da1c4789bd19130dfc68679be8004477b1856a7dfdd48df5b6b122b`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:6aed5a64b55e4569227b1a7f3bf3240a4b3a1a0cb7455ac6339a7c4f5f3b3a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a21a34b28996ba8d7db4252d1738beb79d54c8052bc6e693fe73f2f58d3525`

```dockerfile
```

-	Layers:
	-	`sha256:cfaec91bf4394770fec11c9732677e079c95c4dd1e419e1ecd73970b98c39bea`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:8a878323f772784d9e3e49e206800b5a410f6991626194fa3f5991f5fb640ebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7159535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de547db16901709740b766266b3139e92f964c8b47e2320d21867396faf46d04`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:07:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:07:48 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:48 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:07:48 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0652d0be457f3d18d288edc0307eca1cd202a88e16ab984f6882712a07472087`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.2 MB (7159025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00728826337a407fb9b7e405c8d8a77cea79c644e150cf0dcd98e286f35737d`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:37c47a81bed6ea1b2961020c4b256a5ee6565cb0b8ad25c3392b6ed6cf0714a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7cf8d39791790d3e9a341b539a87c4eb1dd7e61b7376f20c239f7fef4fe453a`

```dockerfile
```

-	Layers:
	-	`sha256:c095dca2c3080f0be34b9f122370531d7e7e0cd3a7a3ad696bb56217739f9e58`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:d199f1ca8dde7c83937bf4f62950ef61b9312a382d9c3f5313767f87fe4e1e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7149171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18d4b7ea52f86036881095b2ec72cce6170af89fbfc2d3008f26513dc5bd6ae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:19 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:19 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:19 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1d56e1908d3168328ed814028289867fa851e08df0a504b78e139c4e98e21797`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.1 MB (7148661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac74cd523247bf5196cea88a5d9d76f6fb0a6eac15700b754fb73abf7e640d79`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:ddad513f45cf6be9dda44e1fba820cc93b7015edac6967ad7675182255ca79bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e95a880af198f329eb9b1d09c1c107344f6315b7fd15d090427df5ddefc2084`

```dockerfile
```

-	Layers:
	-	`sha256:301fe24c83eb64fdcc12925ac8526b52f94821a9a4892e25e424642da67a55e0`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:830dce64852b46536c685a08928ee5ead95a58c9cd080eee0a8e13ce86f0aba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6714600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cfc58e56d5cdd41f6d183d83da256ef4f2e99bfcea14c7157587f2b47ed875`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 21:25:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 21:25:33 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 21:25:33 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 21:25:33 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6228cfd108f7c3f9ec9824ca763e1e25fc2b01559af55d05b74a0a051efde28d`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.7 MB (6714091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98e91042c5c3b3134a6074cd11c9472f0f710aaa936e98a81ee985a921fe4ec`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:9682b16459e0e6305d140e4eb3a65a2300d397561f7bd32f5a1385453337d051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2570c9b1f5aba41d1bebc9eaf4d5d778947b00871edb960a5635eb1b5d2429e1`

```dockerfile
```

-	Layers:
	-	`sha256:1565fd55d2f5eefa9c74c8dda2a71c0dd35dd7d6621c508455a0983992eb15a2`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:1a2420547959c489657b8b667b34cab5a6972d6740d6e6f53478a6db0ab9fcd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6780019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc94b182d2ec7f1febbe856adfded34a81a310aa723fa02bcd172c6d5ed1ed17`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 12 Nov 2026 01:01:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 12 Nov 2026 01:01:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 12 Nov 2026 01:01:37 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 12 Nov 2026 01:01:37 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9bdbb61c627844ef007af6376c4f7820d3d077333aea87599d1d9fff52f0d248`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.8 MB (6779510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15c3921d90e0def6f53910b8d2c97c1e7191c44c17ccceb6fe1377e2f60f4e0`  
		Last Modified: Thu, 12 Nov 2026 01:02:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:d02468148f1cec2e2db760de2a87b183c7fff469a4f666113dc63f2eab6951db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba9cb0342b3f73dda5682bd6a845bd46317740b5d37c77cda7cb8590a870fca`

```dockerfile
```

-	Layers:
	-	`sha256:203f0b65518389a217783c05d70a31ee0898f920598153245888d5771eb8e20c`  
		Last Modified: Thu, 12 Nov 2026 01:02:12 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; s390x

```console
$ docker pull nats@sha256:dd33cb1a221b6595bfd4643aef77a4a8e5566f0702f9dd08b2cad869e7cbf793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7206120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06199899208fa49bf5fbf0c86e72ad6eacc87807a89d7dd3f3b77d677dfc08b8`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:31:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:31:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:31:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:31:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2c7977c75081d99f8442328b859f102db4c4a9438f6ddfb6ab0007cf6b85845d`  
		Last Modified: Wed, 11 Nov 2026 12:40:48 GMT  
		Size: 7.2 MB (7205609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ed079d2e3dc3680cad70afd210e511614450b1c1bbab1d20a430ac3c1ae1131`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 511.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:b30d569e71f7ac1c9b56950d5cf24682552921c83b614b467af092a4d0a9bb6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf2c76ca30e45db54065364a4ee78a7b3e458f0b7da95ddcec5aa1cb4f635ae`

```dockerfile
```

-	Layers:
	-	`sha256:52eb5e764b12c56c3c1bed3cf22421da87376402d5f21b799623b67882a2cbbf`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15-nanoserver`

```console
$ docker pull nats@sha256:86631f4afff7e7b28f26fb7fbc0ed323dbaa1e1e7c6cd286d58526474a3f71f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:2.15-nanoserver` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:82626ff1932b07f6ac3b16e1500859c91764a061de33884d1616e4dca0d80302
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133904237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c360f19803400f80afed757d36cd2e7b06fc0d82ca9617889f0dc1d3546b7f47`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:42:18 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:c5ba8ddabfa6bdb884d582c2eb77790c07981a344bb31247325541a7a60e20d4 in C:\nats-server.exe 
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:42:23 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e36bfc7615a5cd746e5bf675d5bc88f61ed6f2565098b4e3806bde2e8d8079`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84956934b58babe208abf3bb41d01573c01145bc958eb78c0ab1c2fbb200bd6f`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 7.6 MB (7613293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f94016dc2ab84be35d26775093d2336850b05e1c371d7a1bad7e825a60d79ac`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5144c9276313080ff5b57f640ef93c7b502fbb2c581dd83e6560857aea916d47`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1637678fa817944cca81415acc00adc752c13dfacdb68eb8d4d27cdaf52c69`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe0a8e2844e4df140712e9b6d095af7a03f92f4a292095d56c85938624f5eec`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:86631f4afff7e7b28f26fb7fbc0ed323dbaa1e1e7c6cd286d58526474a3f71f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:2.15-nanoserver-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:82626ff1932b07f6ac3b16e1500859c91764a061de33884d1616e4dca0d80302
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133904237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c360f19803400f80afed757d36cd2e7b06fc0d82ca9617889f0dc1d3546b7f47`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:42:18 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:c5ba8ddabfa6bdb884d582c2eb77790c07981a344bb31247325541a7a60e20d4 in C:\nats-server.exe 
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:42:23 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e36bfc7615a5cd746e5bf675d5bc88f61ed6f2565098b4e3806bde2e8d8079`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84956934b58babe208abf3bb41d01573c01145bc958eb78c0ab1c2fbb200bd6f`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 7.6 MB (7613293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f94016dc2ab84be35d26775093d2336850b05e1c371d7a1bad7e825a60d79ac`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5144c9276313080ff5b57f640ef93c7b502fbb2c581dd83e6560857aea916d47`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1637678fa817944cca81415acc00adc752c13dfacdb68eb8d4d27cdaf52c69`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe0a8e2844e4df140712e9b6d095af7a03f92f4a292095d56c85938624f5eec`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15-scratch`

```console
$ docker pull nats@sha256:cf783105b65fd68ed9c40fdae8f624f97177c1fc1b705b4939eb25f27df22019
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:2.15-scratch` - linux; amd64

```console
$ docker pull nats@sha256:be646c8caa022c84124c304a75f82607e993d85db764537e7d3ba0f6e8e91120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebabea7c61861e18b8820961301b49fcd7f3df6d9c5db6cc8d0482bef2ef4847`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:54:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:54:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:54:27 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:54:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6c41ccb011f1e3eb95229360dda280dbae3c84b32ab35a4edb30996aa04c1222`  
		Last Modified: Wed, 11 Nov 2026 12:40:47 GMT  
		Size: 7.4 MB (7413771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7196051da1c4789bd19130dfc68679be8004477b1856a7dfdd48df5b6b122b`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:6aed5a64b55e4569227b1a7f3bf3240a4b3a1a0cb7455ac6339a7c4f5f3b3a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a21a34b28996ba8d7db4252d1738beb79d54c8052bc6e693fe73f2f58d3525`

```dockerfile
```

-	Layers:
	-	`sha256:cfaec91bf4394770fec11c9732677e079c95c4dd1e419e1ecd73970b98c39bea`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:8a878323f772784d9e3e49e206800b5a410f6991626194fa3f5991f5fb640ebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7159535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de547db16901709740b766266b3139e92f964c8b47e2320d21867396faf46d04`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:07:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:07:48 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:48 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:07:48 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0652d0be457f3d18d288edc0307eca1cd202a88e16ab984f6882712a07472087`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.2 MB (7159025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00728826337a407fb9b7e405c8d8a77cea79c644e150cf0dcd98e286f35737d`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:37c47a81bed6ea1b2961020c4b256a5ee6565cb0b8ad25c3392b6ed6cf0714a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7cf8d39791790d3e9a341b539a87c4eb1dd7e61b7376f20c239f7fef4fe453a`

```dockerfile
```

-	Layers:
	-	`sha256:c095dca2c3080f0be34b9f122370531d7e7e0cd3a7a3ad696bb56217739f9e58`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:d199f1ca8dde7c83937bf4f62950ef61b9312a382d9c3f5313767f87fe4e1e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7149171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18d4b7ea52f86036881095b2ec72cce6170af89fbfc2d3008f26513dc5bd6ae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:19 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:19 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:19 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1d56e1908d3168328ed814028289867fa851e08df0a504b78e139c4e98e21797`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.1 MB (7148661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac74cd523247bf5196cea88a5d9d76f6fb0a6eac15700b754fb73abf7e640d79`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:ddad513f45cf6be9dda44e1fba820cc93b7015edac6967ad7675182255ca79bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e95a880af198f329eb9b1d09c1c107344f6315b7fd15d090427df5ddefc2084`

```dockerfile
```

-	Layers:
	-	`sha256:301fe24c83eb64fdcc12925ac8526b52f94821a9a4892e25e424642da67a55e0`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:830dce64852b46536c685a08928ee5ead95a58c9cd080eee0a8e13ce86f0aba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6714600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cfc58e56d5cdd41f6d183d83da256ef4f2e99bfcea14c7157587f2b47ed875`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 21:25:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 21:25:33 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 21:25:33 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 21:25:33 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6228cfd108f7c3f9ec9824ca763e1e25fc2b01559af55d05b74a0a051efde28d`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.7 MB (6714091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98e91042c5c3b3134a6074cd11c9472f0f710aaa936e98a81ee985a921fe4ec`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:9682b16459e0e6305d140e4eb3a65a2300d397561f7bd32f5a1385453337d051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2570c9b1f5aba41d1bebc9eaf4d5d778947b00871edb960a5635eb1b5d2429e1`

```dockerfile
```

-	Layers:
	-	`sha256:1565fd55d2f5eefa9c74c8dda2a71c0dd35dd7d6621c508455a0983992eb15a2`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:1a2420547959c489657b8b667b34cab5a6972d6740d6e6f53478a6db0ab9fcd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6780019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc94b182d2ec7f1febbe856adfded34a81a310aa723fa02bcd172c6d5ed1ed17`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 12 Nov 2026 01:01:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 12 Nov 2026 01:01:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 12 Nov 2026 01:01:37 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 12 Nov 2026 01:01:37 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9bdbb61c627844ef007af6376c4f7820d3d077333aea87599d1d9fff52f0d248`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.8 MB (6779510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15c3921d90e0def6f53910b8d2c97c1e7191c44c17ccceb6fe1377e2f60f4e0`  
		Last Modified: Thu, 12 Nov 2026 01:02:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:d02468148f1cec2e2db760de2a87b183c7fff469a4f666113dc63f2eab6951db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba9cb0342b3f73dda5682bd6a845bd46317740b5d37c77cda7cb8590a870fca`

```dockerfile
```

-	Layers:
	-	`sha256:203f0b65518389a217783c05d70a31ee0898f920598153245888d5771eb8e20c`  
		Last Modified: Thu, 12 Nov 2026 01:02:12 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; s390x

```console
$ docker pull nats@sha256:dd33cb1a221b6595bfd4643aef77a4a8e5566f0702f9dd08b2cad869e7cbf793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7206120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06199899208fa49bf5fbf0c86e72ad6eacc87807a89d7dd3f3b77d677dfc08b8`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:31:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:31:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:31:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:31:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2c7977c75081d99f8442328b859f102db4c4a9438f6ddfb6ab0007cf6b85845d`  
		Last Modified: Wed, 11 Nov 2026 12:40:48 GMT  
		Size: 7.2 MB (7205609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ed079d2e3dc3680cad70afd210e511614450b1c1bbab1d20a430ac3c1ae1131`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 511.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:b30d569e71f7ac1c9b56950d5cf24682552921c83b614b467af092a4d0a9bb6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf2c76ca30e45db54065364a4ee78a7b3e458f0b7da95ddcec5aa1cb4f635ae`

```dockerfile
```

-	Layers:
	-	`sha256:52eb5e764b12c56c3c1bed3cf22421da87376402d5f21b799623b67882a2cbbf`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15-windowsservercore`

```console
$ docker pull nats@sha256:a31dfcd28fbf4d306c1c448eadb15654c135a2f400e9fa65f86094e2b364669f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:2.15-windowsservercore` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:e0489f3d14baf708ee09ab8e947465433f849f6bbb1210598e27abc09b095b1f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2254643417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd6bd6341b1de430d87732ea5398f9b08c4adee02577939eaf5432d8f17ac45`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 22:02:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Nov 2026 22:02:03 GMT
ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:02:03 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 22:02:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 22:02:04 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.3/nats-server-v2.15.3-windows-amd64.zip
# Wed, 11 Nov 2026 22:02:05 GMT
ENV NATS_SERVER_SHASUM=b202c46689a56b17e88939b6c53a25294021b000b9c7225209bcb1bbda347bad
# Wed, 11 Nov 2026 22:02:10 GMT
RUN Set-PSDebug -Trace 2
# Wed, 11 Nov 2026 22:02:24 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 11 Nov 2026 22:02:25 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:02:25 GMT
EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:02:26 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:02:26 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985cdefb6abad122d5e02da8d25bc1bdd43faf7ca80f9dd3261101a1ab8c007`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5387296daa8755673907cf7b38bdb72ad011942273ab0f479fcaf018e17c212c`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b78732d3507844ef8846ccd9d2ba3ef883239183bb11232baeebb490352adc`  
		Last Modified: Wed, 11 Nov 2026 22:02:33 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6586b41c56c24767a97b23132fd476c0f8de21eaa4e2f37591460a629217db`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1043024db70a01dfb9dbdfd5ad844220e003bdb75eb118b33f6ed75328a621e9`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e551f074d7ec040e422ef202557e89640be13785cf28a79c5c4fe77cd33dfb`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a6bbcb7f6de472537b60f64c7dbf3864d15aa450318e50dd16c41f4c77266`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 334.6 KB (334619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3c2cb359caa4b1aa6c5d353145a0fc3b991542d5a30c4dc9e3520a23ffd48e`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 7.9 MB (7947389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdab1c5f722823a86f3a781d862b90650731fed509b6592bfff0f3e5af650bc`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e441b8b58ab60dfc55e36e831bb77090e9b12e31b9b672c7098a5faf15615b81`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e979385e8e6d4eff187b9ab85d958d21603c164f973a78fe521edecc1ffc7b8e`  
		Last Modified: Wed, 11 Nov 2026 22:02:31 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5468399958e8bf928890dc09ae6d2479a9a65d97ec3cc2c2fcd3cdc9875c0e`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:a31dfcd28fbf4d306c1c448eadb15654c135a2f400e9fa65f86094e2b364669f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:2.15-windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:e0489f3d14baf708ee09ab8e947465433f849f6bbb1210598e27abc09b095b1f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2254643417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd6bd6341b1de430d87732ea5398f9b08c4adee02577939eaf5432d8f17ac45`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 22:02:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Nov 2026 22:02:03 GMT
ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:02:03 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 22:02:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 22:02:04 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.3/nats-server-v2.15.3-windows-amd64.zip
# Wed, 11 Nov 2026 22:02:05 GMT
ENV NATS_SERVER_SHASUM=b202c46689a56b17e88939b6c53a25294021b000b9c7225209bcb1bbda347bad
# Wed, 11 Nov 2026 22:02:10 GMT
RUN Set-PSDebug -Trace 2
# Wed, 11 Nov 2026 22:02:24 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 11 Nov 2026 22:02:25 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:02:25 GMT
EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:02:26 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:02:26 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985cdefb6abad122d5e02da8d25bc1bdd43faf7ca80f9dd3261101a1ab8c007`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5387296daa8755673907cf7b38bdb72ad011942273ab0f479fcaf018e17c212c`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b78732d3507844ef8846ccd9d2ba3ef883239183bb11232baeebb490352adc`  
		Last Modified: Wed, 11 Nov 2026 22:02:33 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6586b41c56c24767a97b23132fd476c0f8de21eaa4e2f37591460a629217db`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1043024db70a01dfb9dbdfd5ad844220e003bdb75eb118b33f6ed75328a621e9`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e551f074d7ec040e422ef202557e89640be13785cf28a79c5c4fe77cd33dfb`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a6bbcb7f6de472537b60f64c7dbf3864d15aa450318e50dd16c41f4c77266`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 334.6 KB (334619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3c2cb359caa4b1aa6c5d353145a0fc3b991542d5a30c4dc9e3520a23ffd48e`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 7.9 MB (7947389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdab1c5f722823a86f3a781d862b90650731fed509b6592bfff0f3e5af650bc`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e441b8b58ab60dfc55e36e831bb77090e9b12e31b9b672c7098a5faf15615b81`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e979385e8e6d4eff187b9ab85d958d21603c164f973a78fe521edecc1ffc7b8e`  
		Last Modified: Wed, 11 Nov 2026 22:02:31 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5468399958e8bf928890dc09ae6d2479a9a65d97ec3cc2c2fcd3cdc9875c0e`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.3`

```console
$ docker pull nats@sha256:9d85d87039bfba33baf48de4da32a2ee572bcd6c94f6365d05733a672de49253
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 13
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.20348.5870; amd64

### `nats:2.15.3` - linux; amd64

```console
$ docker pull nats@sha256:be646c8caa022c84124c304a75f82607e993d85db764537e7d3ba0f6e8e91120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebabea7c61861e18b8820961301b49fcd7f3df6d9c5db6cc8d0482bef2ef4847`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:54:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:54:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:54:27 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:54:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6c41ccb011f1e3eb95229360dda280dbae3c84b32ab35a4edb30996aa04c1222`  
		Last Modified: Wed, 11 Nov 2026 12:40:47 GMT  
		Size: 7.4 MB (7413771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7196051da1c4789bd19130dfc68679be8004477b1856a7dfdd48df5b6b122b`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3` - unknown; unknown

```console
$ docker pull nats@sha256:6aed5a64b55e4569227b1a7f3bf3240a4b3a1a0cb7455ac6339a7c4f5f3b3a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a21a34b28996ba8d7db4252d1738beb79d54c8052bc6e693fe73f2f58d3525`

```dockerfile
```

-	Layers:
	-	`sha256:cfaec91bf4394770fec11c9732677e079c95c4dd1e419e1ecd73970b98c39bea`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3` - linux; arm variant v6

```console
$ docker pull nats@sha256:8a878323f772784d9e3e49e206800b5a410f6991626194fa3f5991f5fb640ebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7159535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de547db16901709740b766266b3139e92f964c8b47e2320d21867396faf46d04`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:07:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:07:48 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:48 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:07:48 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0652d0be457f3d18d288edc0307eca1cd202a88e16ab984f6882712a07472087`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.2 MB (7159025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00728826337a407fb9b7e405c8d8a77cea79c644e150cf0dcd98e286f35737d`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3` - unknown; unknown

```console
$ docker pull nats@sha256:37c47a81bed6ea1b2961020c4b256a5ee6565cb0b8ad25c3392b6ed6cf0714a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7cf8d39791790d3e9a341b539a87c4eb1dd7e61b7376f20c239f7fef4fe453a`

```dockerfile
```

-	Layers:
	-	`sha256:c095dca2c3080f0be34b9f122370531d7e7e0cd3a7a3ad696bb56217739f9e58`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3` - linux; arm variant v7

```console
$ docker pull nats@sha256:d199f1ca8dde7c83937bf4f62950ef61b9312a382d9c3f5313767f87fe4e1e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7149171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18d4b7ea52f86036881095b2ec72cce6170af89fbfc2d3008f26513dc5bd6ae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:19 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:19 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:19 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1d56e1908d3168328ed814028289867fa851e08df0a504b78e139c4e98e21797`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.1 MB (7148661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac74cd523247bf5196cea88a5d9d76f6fb0a6eac15700b754fb73abf7e640d79`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3` - unknown; unknown

```console
$ docker pull nats@sha256:ddad513f45cf6be9dda44e1fba820cc93b7015edac6967ad7675182255ca79bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e95a880af198f329eb9b1d09c1c107344f6315b7fd15d090427df5ddefc2084`

```dockerfile
```

-	Layers:
	-	`sha256:301fe24c83eb64fdcc12925ac8526b52f94821a9a4892e25e424642da67a55e0`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:830dce64852b46536c685a08928ee5ead95a58c9cd080eee0a8e13ce86f0aba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6714600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cfc58e56d5cdd41f6d183d83da256ef4f2e99bfcea14c7157587f2b47ed875`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 21:25:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 21:25:33 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 21:25:33 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 21:25:33 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6228cfd108f7c3f9ec9824ca763e1e25fc2b01559af55d05b74a0a051efde28d`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.7 MB (6714091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98e91042c5c3b3134a6074cd11c9472f0f710aaa936e98a81ee985a921fe4ec`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3` - unknown; unknown

```console
$ docker pull nats@sha256:9682b16459e0e6305d140e4eb3a65a2300d397561f7bd32f5a1385453337d051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2570c9b1f5aba41d1bebc9eaf4d5d778947b00871edb960a5635eb1b5d2429e1`

```dockerfile
```

-	Layers:
	-	`sha256:1565fd55d2f5eefa9c74c8dda2a71c0dd35dd7d6621c508455a0983992eb15a2`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3` - linux; ppc64le

```console
$ docker pull nats@sha256:1a2420547959c489657b8b667b34cab5a6972d6740d6e6f53478a6db0ab9fcd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6780019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc94b182d2ec7f1febbe856adfded34a81a310aa723fa02bcd172c6d5ed1ed17`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 12 Nov 2026 01:01:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 12 Nov 2026 01:01:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 12 Nov 2026 01:01:37 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 12 Nov 2026 01:01:37 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9bdbb61c627844ef007af6376c4f7820d3d077333aea87599d1d9fff52f0d248`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.8 MB (6779510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15c3921d90e0def6f53910b8d2c97c1e7191c44c17ccceb6fe1377e2f60f4e0`  
		Last Modified: Thu, 12 Nov 2026 01:02:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3` - unknown; unknown

```console
$ docker pull nats@sha256:d02468148f1cec2e2db760de2a87b183c7fff469a4f666113dc63f2eab6951db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba9cb0342b3f73dda5682bd6a845bd46317740b5d37c77cda7cb8590a870fca`

```dockerfile
```

-	Layers:
	-	`sha256:203f0b65518389a217783c05d70a31ee0898f920598153245888d5771eb8e20c`  
		Last Modified: Thu, 12 Nov 2026 01:02:12 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3` - linux; s390x

```console
$ docker pull nats@sha256:dd33cb1a221b6595bfd4643aef77a4a8e5566f0702f9dd08b2cad869e7cbf793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7206120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06199899208fa49bf5fbf0c86e72ad6eacc87807a89d7dd3f3b77d677dfc08b8`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:31:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:31:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:31:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:31:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2c7977c75081d99f8442328b859f102db4c4a9438f6ddfb6ab0007cf6b85845d`  
		Last Modified: Wed, 11 Nov 2026 12:40:48 GMT  
		Size: 7.2 MB (7205609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ed079d2e3dc3680cad70afd210e511614450b1c1bbab1d20a430ac3c1ae1131`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 511.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3` - unknown; unknown

```console
$ docker pull nats@sha256:b30d569e71f7ac1c9b56950d5cf24682552921c83b614b467af092a4d0a9bb6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf2c76ca30e45db54065364a4ee78a7b3e458f0b7da95ddcec5aa1cb4f635ae`

```dockerfile
```

-	Layers:
	-	`sha256:52eb5e764b12c56c3c1bed3cf22421da87376402d5f21b799623b67882a2cbbf`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:82626ff1932b07f6ac3b16e1500859c91764a061de33884d1616e4dca0d80302
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133904237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c360f19803400f80afed757d36cd2e7b06fc0d82ca9617889f0dc1d3546b7f47`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:42:18 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:c5ba8ddabfa6bdb884d582c2eb77790c07981a344bb31247325541a7a60e20d4 in C:\nats-server.exe 
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:42:23 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e36bfc7615a5cd746e5bf675d5bc88f61ed6f2565098b4e3806bde2e8d8079`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84956934b58babe208abf3bb41d01573c01145bc958eb78c0ab1c2fbb200bd6f`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 7.6 MB (7613293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f94016dc2ab84be35d26775093d2336850b05e1c371d7a1bad7e825a60d79ac`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5144c9276313080ff5b57f640ef93c7b502fbb2c581dd83e6560857aea916d47`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1637678fa817944cca81415acc00adc752c13dfacdb68eb8d4d27cdaf52c69`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe0a8e2844e4df140712e9b6d095af7a03f92f4a292095d56c85938624f5eec`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.3-alpine`

```console
$ docker pull nats@sha256:558394a23dd3c36f2d3a64b51865fd09908010e80a542cea5e75c2af543ed62a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:2.15.3-alpine` - linux; amd64

```console
$ docker pull nats@sha256:4d116f873a8aa17a0903b01a73b670c1d48d8164dbd18b92641b6b2bea3ca576
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11624946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ea8169776497b3f85533203eebf4cdc015bbd99096e103b44b7580870f66099`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:07:08 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:07:08 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:07:08 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:07:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5fbdd51c05f2bcdc40687231f719a46bbadac5817fd53479cc501cdb2e8ecaf`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 7.8 MB (7829602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2058ceffc175fced21ce5fa44e42c524ab3df9daceec7fd8383f83503b87897b`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cb5292e90c5ee261555e3410e51e6fb54431372c1c9938900a44ce12af4248`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:bd6e03f8ea96224dad377daa3ae06073f0b7ad74835d6865ae9ac005a1c03401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62382ba579511db5e1fbe7c6b6bb2b2839c59b4bb5d38995c16964b1182d9e12`

```dockerfile
```

-	Layers:
	-	`sha256:6b9066e344d71dc27354cb5ce9f9021f0e205b2e5a5891a96f14122a9d826d27`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:7c2a41784eec7bef33f61f5af7703b10476a51d0786a591a6e374abe0feaa6d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11075192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df845aedb9f5ebd76379689734ae3581aa8c03a60c7ea201aa8c8b6f9b0da58d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:51:54 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 19:51:54 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 19:51:54 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:51:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:51:54 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982be782ef7491766237534a340c64825b0fb3b7f46330dc2c867e213b61256c`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 7.6 MB (7572687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4901cf87dfe112c37a59137d0e38e953ce6b28f96b6a63d85d53ffe9ea87e1c`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64cd38d69b07c59789dce8681f16afeaf71852306a74dbeeda693afb2d8b764a`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:47a053c14fa0f809859f94c0a9c209757cc180a8351ce842f5c38b5def9dbfe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fbb0ec0aa3a30941dda3f95b96678973ca0c0f9fb2429032b1a4657dce5fbdc`

```dockerfile
```

-	Layers:
	-	`sha256:b032ee2dc50ce7638928624a38f941315c1bf79cbfbc2f38dc63b95e89bd1a89`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:7c259377cef516da0aa0f0dfef3c550e4e544261a6dafcc0a036fbb54a204806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10779173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66956c1a5e337ab6809d30c25812df9dd19403f7c9fd9be219da4b3bc978298`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:52:16 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 19:52:16 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 19:52:16 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:52:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:52:16 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bbd95d45b9c325743606a8d0942768db9ed8fc4ca762410d9bfb060d43c8c71`  
		Last Modified: Wed, 11 Nov 2026 19:52:21 GMT  
		Size: 7.6 MB (7562736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc306d381ad485aa19c1d8a49258126fcfc0b4b22dfe51b9f76081093655b286`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:210e3a60ec41232f23075a24e6f6b7701738cdd2b8a95110ddf7f02a43630ae5`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:65079ffe889e765f01ee57be9be534baba24a4180a28fc796db63a2e9bfc7019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0c4f20ec1d2db244ece69ae372d6fd9b5434e63f738ed52ca30e5c7c43c8a6`

```dockerfile
```

-	Layers:
	-	`sha256:4bc059622b12e1226e42ca15e6dbc32a00d82b3f99bcc76d2ad50f00a9c9ffb7`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:24598944c0a44021356e234d5334f5d6a7b0916dc0062db250e171d19ac9bb6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11257480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3035a91c92ec8bd7cdf93039ba50d18b4a401fe3e1b7fa0d88f1fecac0075cbb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:48:15 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:48:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:48:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:48:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ea356e615f28e286c59c05db6da8937a551767ee346a78c1f4d6bda06b6e8f`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 7.1 MB (7129125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd28680459beff9713b57e49f20305776f673510ba5e48f98409c22e008fc940`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01dbe57d396d17cd29bee561069ed437ad03eee5b5494b2d6d81d1e2d9c8ee01`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:60ecbc4d690b52b225ef4b5996f94415d5e25ad25c58b7d865f97e71eebab359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0311a5cb98bdb04348024507e5e23d9049fbe6de20f28b0813ccb2252b719d6`

```dockerfile
```

-	Layers:
	-	`sha256:daa994b4b6369aa0777e486cfe0b5ffdece7f7bf45f6ac378af73e68c6e38027`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:011c7c1b76a1fa3717f14bcd143c158d1a74d6670fc76d07fbc07dc65739555b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10921752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a1cdb0153958a36259069931dde22a4497f363b89ba4b07abd1070d2de1e20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 20:44:11 GMT
ADD alpine-minirootfs-3.22.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:44:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 23:11:25 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 23:11:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 23:11:25 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 23:11:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:11:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:4be1a473c77a45524d8389eeb78602a090c801a1ec4c4187ac5060cd906c4712`  
		Last Modified: Thu, 05 Nov 2026 20:44:20 GMT  
		Size: 3.7 MB (3725514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a54e6913a1e56ba64231731a62506a08e1815049e56af50eeac7fac3369f623`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 7.2 MB (7195270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cb7170ed6ba72a8842721ef5706545b5d7e6c0df93e1e563398bbd7ea15a8a`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8794200cc7fa30cf4f354240903cb6eb554f596580aa0b503493f1e48ee6c2`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1f9bbddf76cf9c0161c6043aaa801044d4af8e580e1b798ad4c53531bb23ff2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95cdb5746b357733db83a889491a152fc95224911c7a0acbc25282d7ab6cb475`

```dockerfile
```

-	Layers:
	-	`sha256:a5480ae190bdb466be835bb2d2d3b38ed8f60eff4921f1d0435f2fa2fbd9ab7e`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3-alpine` - linux; s390x

```console
$ docker pull nats@sha256:8df7f7521e354b2392ad152b85092556d19aaa7c1950f44b3e434439130abf74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11264579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98450d4479a68c21c39700f208b89521b140129ba34e8d1c2dc12e2b11dff444`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:17:03 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:17:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:17:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:17:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:17:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:17:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:17:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:17:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:955cb8f4540451c232e6c2034a4fc46518ca0fbf63379f52e283db5301da41e0`  
		Last Modified: Wed, 11 Nov 2026 20:17:15 GMT  
		Size: 7.6 MB (7620405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08aa2e533d64888badfba3771ac87feffcfa5a1e56f424564f7e50692bf7ce39`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20cdf622c9229c506f0d0b5a5bbdd72388a38bb7b70fbc66b2d98bbef518b5a6`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:828fff7ae808f627dc01c4671e725d894ad90eef5f22c78fcdff8606c71a2356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4703b93bc7aba9482b419d4ed569294855766fff1fdf2b8c12c72cd36751f2f`

```dockerfile
```

-	Layers:
	-	`sha256:8086373f71f4ba98e50b1f50657140154588d0c89c2e0bea8ff0f565715976cb`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15.3-alpine3.22`

```console
$ docker pull nats@sha256:558394a23dd3c36f2d3a64b51865fd09908010e80a542cea5e75c2af543ed62a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:2.15.3-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:4d116f873a8aa17a0903b01a73b670c1d48d8164dbd18b92641b6b2bea3ca576
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11624946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ea8169776497b3f85533203eebf4cdc015bbd99096e103b44b7580870f66099`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:07:08 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:07:08 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:07:08 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:07:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5fbdd51c05f2bcdc40687231f719a46bbadac5817fd53479cc501cdb2e8ecaf`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 7.8 MB (7829602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2058ceffc175fced21ce5fa44e42c524ab3df9daceec7fd8383f83503b87897b`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cb5292e90c5ee261555e3410e51e6fb54431372c1c9938900a44ce12af4248`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:bd6e03f8ea96224dad377daa3ae06073f0b7ad74835d6865ae9ac005a1c03401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62382ba579511db5e1fbe7c6b6bb2b2839c59b4bb5d38995c16964b1182d9e12`

```dockerfile
```

-	Layers:
	-	`sha256:6b9066e344d71dc27354cb5ce9f9021f0e205b2e5a5891a96f14122a9d826d27`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:7c2a41784eec7bef33f61f5af7703b10476a51d0786a591a6e374abe0feaa6d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11075192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df845aedb9f5ebd76379689734ae3581aa8c03a60c7ea201aa8c8b6f9b0da58d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:51:54 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 19:51:54 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 19:51:54 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:51:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:51:54 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982be782ef7491766237534a340c64825b0fb3b7f46330dc2c867e213b61256c`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 7.6 MB (7572687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4901cf87dfe112c37a59137d0e38e953ce6b28f96b6a63d85d53ffe9ea87e1c`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64cd38d69b07c59789dce8681f16afeaf71852306a74dbeeda693afb2d8b764a`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:47a053c14fa0f809859f94c0a9c209757cc180a8351ce842f5c38b5def9dbfe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fbb0ec0aa3a30941dda3f95b96678973ca0c0f9fb2429032b1a4657dce5fbdc`

```dockerfile
```

-	Layers:
	-	`sha256:b032ee2dc50ce7638928624a38f941315c1bf79cbfbc2f38dc63b95e89bd1a89`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:7c259377cef516da0aa0f0dfef3c550e4e544261a6dafcc0a036fbb54a204806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10779173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66956c1a5e337ab6809d30c25812df9dd19403f7c9fd9be219da4b3bc978298`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:52:16 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 19:52:16 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 19:52:16 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:52:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:52:16 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bbd95d45b9c325743606a8d0942768db9ed8fc4ca762410d9bfb060d43c8c71`  
		Last Modified: Wed, 11 Nov 2026 19:52:21 GMT  
		Size: 7.6 MB (7562736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc306d381ad485aa19c1d8a49258126fcfc0b4b22dfe51b9f76081093655b286`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:210e3a60ec41232f23075a24e6f6b7701738cdd2b8a95110ddf7f02a43630ae5`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:65079ffe889e765f01ee57be9be534baba24a4180a28fc796db63a2e9bfc7019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0c4f20ec1d2db244ece69ae372d6fd9b5434e63f738ed52ca30e5c7c43c8a6`

```dockerfile
```

-	Layers:
	-	`sha256:4bc059622b12e1226e42ca15e6dbc32a00d82b3f99bcc76d2ad50f00a9c9ffb7`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:24598944c0a44021356e234d5334f5d6a7b0916dc0062db250e171d19ac9bb6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11257480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3035a91c92ec8bd7cdf93039ba50d18b4a401fe3e1b7fa0d88f1fecac0075cbb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:48:15 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:48:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:48:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:48:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ea356e615f28e286c59c05db6da8937a551767ee346a78c1f4d6bda06b6e8f`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 7.1 MB (7129125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd28680459beff9713b57e49f20305776f673510ba5e48f98409c22e008fc940`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01dbe57d396d17cd29bee561069ed437ad03eee5b5494b2d6d81d1e2d9c8ee01`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:60ecbc4d690b52b225ef4b5996f94415d5e25ad25c58b7d865f97e71eebab359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0311a5cb98bdb04348024507e5e23d9049fbe6de20f28b0813ccb2252b719d6`

```dockerfile
```

-	Layers:
	-	`sha256:daa994b4b6369aa0777e486cfe0b5ffdece7f7bf45f6ac378af73e68c6e38027`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:011c7c1b76a1fa3717f14bcd143c158d1a74d6670fc76d07fbc07dc65739555b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10921752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a1cdb0153958a36259069931dde22a4497f363b89ba4b07abd1070d2de1e20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 20:44:11 GMT
ADD alpine-minirootfs-3.22.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:44:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 23:11:25 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 23:11:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 23:11:25 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 23:11:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:11:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:4be1a473c77a45524d8389eeb78602a090c801a1ec4c4187ac5060cd906c4712`  
		Last Modified: Thu, 05 Nov 2026 20:44:20 GMT  
		Size: 3.7 MB (3725514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a54e6913a1e56ba64231731a62506a08e1815049e56af50eeac7fac3369f623`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 7.2 MB (7195270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cb7170ed6ba72a8842721ef5706545b5d7e6c0df93e1e563398bbd7ea15a8a`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8794200cc7fa30cf4f354240903cb6eb554f596580aa0b503493f1e48ee6c2`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1f9bbddf76cf9c0161c6043aaa801044d4af8e580e1b798ad4c53531bb23ff2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95cdb5746b357733db83a889491a152fc95224911c7a0acbc25282d7ab6cb475`

```dockerfile
```

-	Layers:
	-	`sha256:a5480ae190bdb466be835bb2d2d3b38ed8f60eff4921f1d0435f2fa2fbd9ab7e`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:8df7f7521e354b2392ad152b85092556d19aaa7c1950f44b3e434439130abf74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11264579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98450d4479a68c21c39700f208b89521b140129ba34e8d1c2dc12e2b11dff444`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:17:03 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:17:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:17:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:17:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:17:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:17:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:17:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:17:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:955cb8f4540451c232e6c2034a4fc46518ca0fbf63379f52e283db5301da41e0`  
		Last Modified: Wed, 11 Nov 2026 20:17:15 GMT  
		Size: 7.6 MB (7620405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08aa2e533d64888badfba3771ac87feffcfa5a1e56f424564f7e50692bf7ce39`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20cdf622c9229c506f0d0b5a5bbdd72388a38bb7b70fbc66b2d98bbef518b5a6`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:828fff7ae808f627dc01c4671e725d894ad90eef5f22c78fcdff8606c71a2356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4703b93bc7aba9482b419d4ed569294855766fff1fdf2b8c12c72cd36751f2f`

```dockerfile
```

-	Layers:
	-	`sha256:8086373f71f4ba98e50b1f50657140154588d0c89c2e0bea8ff0f565715976cb`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15.3-linux`

```console
$ docker pull nats@sha256:cf783105b65fd68ed9c40fdae8f624f97177c1fc1b705b4939eb25f27df22019
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:2.15.3-linux` - linux; amd64

```console
$ docker pull nats@sha256:be646c8caa022c84124c304a75f82607e993d85db764537e7d3ba0f6e8e91120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebabea7c61861e18b8820961301b49fcd7f3df6d9c5db6cc8d0482bef2ef4847`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:54:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:54:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:54:27 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:54:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6c41ccb011f1e3eb95229360dda280dbae3c84b32ab35a4edb30996aa04c1222`  
		Last Modified: Wed, 11 Nov 2026 12:40:47 GMT  
		Size: 7.4 MB (7413771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7196051da1c4789bd19130dfc68679be8004477b1856a7dfdd48df5b6b122b`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-linux` - unknown; unknown

```console
$ docker pull nats@sha256:6aed5a64b55e4569227b1a7f3bf3240a4b3a1a0cb7455ac6339a7c4f5f3b3a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a21a34b28996ba8d7db4252d1738beb79d54c8052bc6e693fe73f2f58d3525`

```dockerfile
```

-	Layers:
	-	`sha256:cfaec91bf4394770fec11c9732677e079c95c4dd1e419e1ecd73970b98c39bea`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:8a878323f772784d9e3e49e206800b5a410f6991626194fa3f5991f5fb640ebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7159535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de547db16901709740b766266b3139e92f964c8b47e2320d21867396faf46d04`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:07:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:07:48 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:48 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:07:48 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0652d0be457f3d18d288edc0307eca1cd202a88e16ab984f6882712a07472087`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.2 MB (7159025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00728826337a407fb9b7e405c8d8a77cea79c644e150cf0dcd98e286f35737d`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-linux` - unknown; unknown

```console
$ docker pull nats@sha256:37c47a81bed6ea1b2961020c4b256a5ee6565cb0b8ad25c3392b6ed6cf0714a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7cf8d39791790d3e9a341b539a87c4eb1dd7e61b7376f20c239f7fef4fe453a`

```dockerfile
```

-	Layers:
	-	`sha256:c095dca2c3080f0be34b9f122370531d7e7e0cd3a7a3ad696bb56217739f9e58`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:d199f1ca8dde7c83937bf4f62950ef61b9312a382d9c3f5313767f87fe4e1e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7149171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18d4b7ea52f86036881095b2ec72cce6170af89fbfc2d3008f26513dc5bd6ae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:19 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:19 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:19 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1d56e1908d3168328ed814028289867fa851e08df0a504b78e139c4e98e21797`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.1 MB (7148661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac74cd523247bf5196cea88a5d9d76f6fb0a6eac15700b754fb73abf7e640d79`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-linux` - unknown; unknown

```console
$ docker pull nats@sha256:ddad513f45cf6be9dda44e1fba820cc93b7015edac6967ad7675182255ca79bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e95a880af198f329eb9b1d09c1c107344f6315b7fd15d090427df5ddefc2084`

```dockerfile
```

-	Layers:
	-	`sha256:301fe24c83eb64fdcc12925ac8526b52f94821a9a4892e25e424642da67a55e0`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:830dce64852b46536c685a08928ee5ead95a58c9cd080eee0a8e13ce86f0aba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6714600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cfc58e56d5cdd41f6d183d83da256ef4f2e99bfcea14c7157587f2b47ed875`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 21:25:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 21:25:33 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 21:25:33 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 21:25:33 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6228cfd108f7c3f9ec9824ca763e1e25fc2b01559af55d05b74a0a051efde28d`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.7 MB (6714091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98e91042c5c3b3134a6074cd11c9472f0f710aaa936e98a81ee985a921fe4ec`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-linux` - unknown; unknown

```console
$ docker pull nats@sha256:9682b16459e0e6305d140e4eb3a65a2300d397561f7bd32f5a1385453337d051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2570c9b1f5aba41d1bebc9eaf4d5d778947b00871edb960a5635eb1b5d2429e1`

```dockerfile
```

-	Layers:
	-	`sha256:1565fd55d2f5eefa9c74c8dda2a71c0dd35dd7d6621c508455a0983992eb15a2`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:1a2420547959c489657b8b667b34cab5a6972d6740d6e6f53478a6db0ab9fcd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6780019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc94b182d2ec7f1febbe856adfded34a81a310aa723fa02bcd172c6d5ed1ed17`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 12 Nov 2026 01:01:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 12 Nov 2026 01:01:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 12 Nov 2026 01:01:37 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 12 Nov 2026 01:01:37 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9bdbb61c627844ef007af6376c4f7820d3d077333aea87599d1d9fff52f0d248`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.8 MB (6779510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15c3921d90e0def6f53910b8d2c97c1e7191c44c17ccceb6fe1377e2f60f4e0`  
		Last Modified: Thu, 12 Nov 2026 01:02:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-linux` - unknown; unknown

```console
$ docker pull nats@sha256:d02468148f1cec2e2db760de2a87b183c7fff469a4f666113dc63f2eab6951db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba9cb0342b3f73dda5682bd6a845bd46317740b5d37c77cda7cb8590a870fca`

```dockerfile
```

-	Layers:
	-	`sha256:203f0b65518389a217783c05d70a31ee0898f920598153245888d5771eb8e20c`  
		Last Modified: Thu, 12 Nov 2026 01:02:12 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3-linux` - linux; s390x

```console
$ docker pull nats@sha256:dd33cb1a221b6595bfd4643aef77a4a8e5566f0702f9dd08b2cad869e7cbf793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7206120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06199899208fa49bf5fbf0c86e72ad6eacc87807a89d7dd3f3b77d677dfc08b8`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:31:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:31:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:31:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:31:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2c7977c75081d99f8442328b859f102db4c4a9438f6ddfb6ab0007cf6b85845d`  
		Last Modified: Wed, 11 Nov 2026 12:40:48 GMT  
		Size: 7.2 MB (7205609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ed079d2e3dc3680cad70afd210e511614450b1c1bbab1d20a430ac3c1ae1131`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 511.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-linux` - unknown; unknown

```console
$ docker pull nats@sha256:b30d569e71f7ac1c9b56950d5cf24682552921c83b614b467af092a4d0a9bb6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf2c76ca30e45db54065364a4ee78a7b3e458f0b7da95ddcec5aa1cb4f635ae`

```dockerfile
```

-	Layers:
	-	`sha256:52eb5e764b12c56c3c1bed3cf22421da87376402d5f21b799623b67882a2cbbf`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15.3-nanoserver`

```console
$ docker pull nats@sha256:86631f4afff7e7b28f26fb7fbc0ed323dbaa1e1e7c6cd286d58526474a3f71f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:2.15.3-nanoserver` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:82626ff1932b07f6ac3b16e1500859c91764a061de33884d1616e4dca0d80302
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133904237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c360f19803400f80afed757d36cd2e7b06fc0d82ca9617889f0dc1d3546b7f47`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:42:18 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:c5ba8ddabfa6bdb884d582c2eb77790c07981a344bb31247325541a7a60e20d4 in C:\nats-server.exe 
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:42:23 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e36bfc7615a5cd746e5bf675d5bc88f61ed6f2565098b4e3806bde2e8d8079`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84956934b58babe208abf3bb41d01573c01145bc958eb78c0ab1c2fbb200bd6f`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 7.6 MB (7613293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f94016dc2ab84be35d26775093d2336850b05e1c371d7a1bad7e825a60d79ac`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5144c9276313080ff5b57f640ef93c7b502fbb2c581dd83e6560857aea916d47`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1637678fa817944cca81415acc00adc752c13dfacdb68eb8d4d27cdaf52c69`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe0a8e2844e4df140712e9b6d095af7a03f92f4a292095d56c85938624f5eec`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.3-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:86631f4afff7e7b28f26fb7fbc0ed323dbaa1e1e7c6cd286d58526474a3f71f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:2.15.3-nanoserver-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:82626ff1932b07f6ac3b16e1500859c91764a061de33884d1616e4dca0d80302
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133904237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c360f19803400f80afed757d36cd2e7b06fc0d82ca9617889f0dc1d3546b7f47`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:42:18 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:c5ba8ddabfa6bdb884d582c2eb77790c07981a344bb31247325541a7a60e20d4 in C:\nats-server.exe 
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:42:23 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e36bfc7615a5cd746e5bf675d5bc88f61ed6f2565098b4e3806bde2e8d8079`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84956934b58babe208abf3bb41d01573c01145bc958eb78c0ab1c2fbb200bd6f`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 7.6 MB (7613293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f94016dc2ab84be35d26775093d2336850b05e1c371d7a1bad7e825a60d79ac`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5144c9276313080ff5b57f640ef93c7b502fbb2c581dd83e6560857aea916d47`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1637678fa817944cca81415acc00adc752c13dfacdb68eb8d4d27cdaf52c69`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe0a8e2844e4df140712e9b6d095af7a03f92f4a292095d56c85938624f5eec`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.3-scratch`

```console
$ docker pull nats@sha256:cf783105b65fd68ed9c40fdae8f624f97177c1fc1b705b4939eb25f27df22019
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:2.15.3-scratch` - linux; amd64

```console
$ docker pull nats@sha256:be646c8caa022c84124c304a75f82607e993d85db764537e7d3ba0f6e8e91120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebabea7c61861e18b8820961301b49fcd7f3df6d9c5db6cc8d0482bef2ef4847`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:54:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:54:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:54:27 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:54:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6c41ccb011f1e3eb95229360dda280dbae3c84b32ab35a4edb30996aa04c1222`  
		Last Modified: Wed, 11 Nov 2026 12:40:47 GMT  
		Size: 7.4 MB (7413771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7196051da1c4789bd19130dfc68679be8004477b1856a7dfdd48df5b6b122b`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:6aed5a64b55e4569227b1a7f3bf3240a4b3a1a0cb7455ac6339a7c4f5f3b3a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a21a34b28996ba8d7db4252d1738beb79d54c8052bc6e693fe73f2f58d3525`

```dockerfile
```

-	Layers:
	-	`sha256:cfaec91bf4394770fec11c9732677e079c95c4dd1e419e1ecd73970b98c39bea`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:8a878323f772784d9e3e49e206800b5a410f6991626194fa3f5991f5fb640ebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7159535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de547db16901709740b766266b3139e92f964c8b47e2320d21867396faf46d04`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:07:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:07:48 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:48 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:07:48 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0652d0be457f3d18d288edc0307eca1cd202a88e16ab984f6882712a07472087`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.2 MB (7159025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00728826337a407fb9b7e405c8d8a77cea79c644e150cf0dcd98e286f35737d`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:37c47a81bed6ea1b2961020c4b256a5ee6565cb0b8ad25c3392b6ed6cf0714a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7cf8d39791790d3e9a341b539a87c4eb1dd7e61b7376f20c239f7fef4fe453a`

```dockerfile
```

-	Layers:
	-	`sha256:c095dca2c3080f0be34b9f122370531d7e7e0cd3a7a3ad696bb56217739f9e58`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:d199f1ca8dde7c83937bf4f62950ef61b9312a382d9c3f5313767f87fe4e1e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7149171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18d4b7ea52f86036881095b2ec72cce6170af89fbfc2d3008f26513dc5bd6ae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:19 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:19 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:19 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1d56e1908d3168328ed814028289867fa851e08df0a504b78e139c4e98e21797`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.1 MB (7148661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac74cd523247bf5196cea88a5d9d76f6fb0a6eac15700b754fb73abf7e640d79`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:ddad513f45cf6be9dda44e1fba820cc93b7015edac6967ad7675182255ca79bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e95a880af198f329eb9b1d09c1c107344f6315b7fd15d090427df5ddefc2084`

```dockerfile
```

-	Layers:
	-	`sha256:301fe24c83eb64fdcc12925ac8526b52f94821a9a4892e25e424642da67a55e0`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:830dce64852b46536c685a08928ee5ead95a58c9cd080eee0a8e13ce86f0aba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6714600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cfc58e56d5cdd41f6d183d83da256ef4f2e99bfcea14c7157587f2b47ed875`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 21:25:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 21:25:33 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 21:25:33 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 21:25:33 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6228cfd108f7c3f9ec9824ca763e1e25fc2b01559af55d05b74a0a051efde28d`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.7 MB (6714091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98e91042c5c3b3134a6074cd11c9472f0f710aaa936e98a81ee985a921fe4ec`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:9682b16459e0e6305d140e4eb3a65a2300d397561f7bd32f5a1385453337d051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2570c9b1f5aba41d1bebc9eaf4d5d778947b00871edb960a5635eb1b5d2429e1`

```dockerfile
```

-	Layers:
	-	`sha256:1565fd55d2f5eefa9c74c8dda2a71c0dd35dd7d6621c508455a0983992eb15a2`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:1a2420547959c489657b8b667b34cab5a6972d6740d6e6f53478a6db0ab9fcd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6780019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc94b182d2ec7f1febbe856adfded34a81a310aa723fa02bcd172c6d5ed1ed17`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 12 Nov 2026 01:01:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 12 Nov 2026 01:01:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 12 Nov 2026 01:01:37 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 12 Nov 2026 01:01:37 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9bdbb61c627844ef007af6376c4f7820d3d077333aea87599d1d9fff52f0d248`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.8 MB (6779510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15c3921d90e0def6f53910b8d2c97c1e7191c44c17ccceb6fe1377e2f60f4e0`  
		Last Modified: Thu, 12 Nov 2026 01:02:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:d02468148f1cec2e2db760de2a87b183c7fff469a4f666113dc63f2eab6951db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba9cb0342b3f73dda5682bd6a845bd46317740b5d37c77cda7cb8590a870fca`

```dockerfile
```

-	Layers:
	-	`sha256:203f0b65518389a217783c05d70a31ee0898f920598153245888d5771eb8e20c`  
		Last Modified: Thu, 12 Nov 2026 01:02:12 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.3-scratch` - linux; s390x

```console
$ docker pull nats@sha256:dd33cb1a221b6595bfd4643aef77a4a8e5566f0702f9dd08b2cad869e7cbf793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7206120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06199899208fa49bf5fbf0c86e72ad6eacc87807a89d7dd3f3b77d677dfc08b8`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:31:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:31:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:31:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:31:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2c7977c75081d99f8442328b859f102db4c4a9438f6ddfb6ab0007cf6b85845d`  
		Last Modified: Wed, 11 Nov 2026 12:40:48 GMT  
		Size: 7.2 MB (7205609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ed079d2e3dc3680cad70afd210e511614450b1c1bbab1d20a430ac3c1ae1131`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 511.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.3-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:b30d569e71f7ac1c9b56950d5cf24682552921c83b614b467af092a4d0a9bb6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf2c76ca30e45db54065364a4ee78a7b3e458f0b7da95ddcec5aa1cb4f635ae`

```dockerfile
```

-	Layers:
	-	`sha256:52eb5e764b12c56c3c1bed3cf22421da87376402d5f21b799623b67882a2cbbf`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15.3-windowsservercore`

```console
$ docker pull nats@sha256:a31dfcd28fbf4d306c1c448eadb15654c135a2f400e9fa65f86094e2b364669f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:2.15.3-windowsservercore` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:e0489f3d14baf708ee09ab8e947465433f849f6bbb1210598e27abc09b095b1f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2254643417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd6bd6341b1de430d87732ea5398f9b08c4adee02577939eaf5432d8f17ac45`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 22:02:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Nov 2026 22:02:03 GMT
ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:02:03 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 22:02:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 22:02:04 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.3/nats-server-v2.15.3-windows-amd64.zip
# Wed, 11 Nov 2026 22:02:05 GMT
ENV NATS_SERVER_SHASUM=b202c46689a56b17e88939b6c53a25294021b000b9c7225209bcb1bbda347bad
# Wed, 11 Nov 2026 22:02:10 GMT
RUN Set-PSDebug -Trace 2
# Wed, 11 Nov 2026 22:02:24 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 11 Nov 2026 22:02:25 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:02:25 GMT
EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:02:26 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:02:26 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985cdefb6abad122d5e02da8d25bc1bdd43faf7ca80f9dd3261101a1ab8c007`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5387296daa8755673907cf7b38bdb72ad011942273ab0f479fcaf018e17c212c`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b78732d3507844ef8846ccd9d2ba3ef883239183bb11232baeebb490352adc`  
		Last Modified: Wed, 11 Nov 2026 22:02:33 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6586b41c56c24767a97b23132fd476c0f8de21eaa4e2f37591460a629217db`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1043024db70a01dfb9dbdfd5ad844220e003bdb75eb118b33f6ed75328a621e9`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e551f074d7ec040e422ef202557e89640be13785cf28a79c5c4fe77cd33dfb`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a6bbcb7f6de472537b60f64c7dbf3864d15aa450318e50dd16c41f4c77266`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 334.6 KB (334619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3c2cb359caa4b1aa6c5d353145a0fc3b991542d5a30c4dc9e3520a23ffd48e`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 7.9 MB (7947389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdab1c5f722823a86f3a781d862b90650731fed509b6592bfff0f3e5af650bc`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e441b8b58ab60dfc55e36e831bb77090e9b12e31b9b672c7098a5faf15615b81`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e979385e8e6d4eff187b9ab85d958d21603c164f973a78fe521edecc1ffc7b8e`  
		Last Modified: Wed, 11 Nov 2026 22:02:31 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5468399958e8bf928890dc09ae6d2479a9a65d97ec3cc2c2fcd3cdc9875c0e`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.3-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:a31dfcd28fbf4d306c1c448eadb15654c135a2f400e9fa65f86094e2b364669f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:2.15.3-windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:e0489f3d14baf708ee09ab8e947465433f849f6bbb1210598e27abc09b095b1f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2254643417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd6bd6341b1de430d87732ea5398f9b08c4adee02577939eaf5432d8f17ac45`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 22:02:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Nov 2026 22:02:03 GMT
ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:02:03 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 22:02:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 22:02:04 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.3/nats-server-v2.15.3-windows-amd64.zip
# Wed, 11 Nov 2026 22:02:05 GMT
ENV NATS_SERVER_SHASUM=b202c46689a56b17e88939b6c53a25294021b000b9c7225209bcb1bbda347bad
# Wed, 11 Nov 2026 22:02:10 GMT
RUN Set-PSDebug -Trace 2
# Wed, 11 Nov 2026 22:02:24 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 11 Nov 2026 22:02:25 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:02:25 GMT
EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:02:26 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:02:26 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985cdefb6abad122d5e02da8d25bc1bdd43faf7ca80f9dd3261101a1ab8c007`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5387296daa8755673907cf7b38bdb72ad011942273ab0f479fcaf018e17c212c`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b78732d3507844ef8846ccd9d2ba3ef883239183bb11232baeebb490352adc`  
		Last Modified: Wed, 11 Nov 2026 22:02:33 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6586b41c56c24767a97b23132fd476c0f8de21eaa4e2f37591460a629217db`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1043024db70a01dfb9dbdfd5ad844220e003bdb75eb118b33f6ed75328a621e9`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e551f074d7ec040e422ef202557e89640be13785cf28a79c5c4fe77cd33dfb`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a6bbcb7f6de472537b60f64c7dbf3864d15aa450318e50dd16c41f4c77266`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 334.6 KB (334619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3c2cb359caa4b1aa6c5d353145a0fc3b991542d5a30c4dc9e3520a23ffd48e`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 7.9 MB (7947389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdab1c5f722823a86f3a781d862b90650731fed509b6592bfff0f3e5af650bc`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e441b8b58ab60dfc55e36e831bb77090e9b12e31b9b672c7098a5faf15615b81`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e979385e8e6d4eff187b9ab85d958d21603c164f973a78fe521edecc1ffc7b8e`  
		Last Modified: Wed, 11 Nov 2026 22:02:31 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5468399958e8bf928890dc09ae6d2479a9a65d97ec3cc2c2fcd3cdc9875c0e`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:alpine`

```console
$ docker pull nats@sha256:558394a23dd3c36f2d3a64b51865fd09908010e80a542cea5e75c2af543ed62a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:alpine` - linux; amd64

```console
$ docker pull nats@sha256:4d116f873a8aa17a0903b01a73b670c1d48d8164dbd18b92641b6b2bea3ca576
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11624946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ea8169776497b3f85533203eebf4cdc015bbd99096e103b44b7580870f66099`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:07:08 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:07:08 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:07:08 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:07:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5fbdd51c05f2bcdc40687231f719a46bbadac5817fd53479cc501cdb2e8ecaf`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 7.8 MB (7829602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2058ceffc175fced21ce5fa44e42c524ab3df9daceec7fd8383f83503b87897b`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cb5292e90c5ee261555e3410e51e6fb54431372c1c9938900a44ce12af4248`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:bd6e03f8ea96224dad377daa3ae06073f0b7ad74835d6865ae9ac005a1c03401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62382ba579511db5e1fbe7c6b6bb2b2839c59b4bb5d38995c16964b1182d9e12`

```dockerfile
```

-	Layers:
	-	`sha256:6b9066e344d71dc27354cb5ce9f9021f0e205b2e5a5891a96f14122a9d826d27`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:7c2a41784eec7bef33f61f5af7703b10476a51d0786a591a6e374abe0feaa6d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11075192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df845aedb9f5ebd76379689734ae3581aa8c03a60c7ea201aa8c8b6f9b0da58d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:51:54 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 19:51:54 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 19:51:54 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:51:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:51:54 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982be782ef7491766237534a340c64825b0fb3b7f46330dc2c867e213b61256c`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 7.6 MB (7572687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4901cf87dfe112c37a59137d0e38e953ce6b28f96b6a63d85d53ffe9ea87e1c`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64cd38d69b07c59789dce8681f16afeaf71852306a74dbeeda693afb2d8b764a`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:47a053c14fa0f809859f94c0a9c209757cc180a8351ce842f5c38b5def9dbfe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fbb0ec0aa3a30941dda3f95b96678973ca0c0f9fb2429032b1a4657dce5fbdc`

```dockerfile
```

-	Layers:
	-	`sha256:b032ee2dc50ce7638928624a38f941315c1bf79cbfbc2f38dc63b95e89bd1a89`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:7c259377cef516da0aa0f0dfef3c550e4e544261a6dafcc0a036fbb54a204806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10779173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66956c1a5e337ab6809d30c25812df9dd19403f7c9fd9be219da4b3bc978298`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:52:16 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 19:52:16 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 19:52:16 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:52:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:52:16 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bbd95d45b9c325743606a8d0942768db9ed8fc4ca762410d9bfb060d43c8c71`  
		Last Modified: Wed, 11 Nov 2026 19:52:21 GMT  
		Size: 7.6 MB (7562736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc306d381ad485aa19c1d8a49258126fcfc0b4b22dfe51b9f76081093655b286`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:210e3a60ec41232f23075a24e6f6b7701738cdd2b8a95110ddf7f02a43630ae5`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:65079ffe889e765f01ee57be9be534baba24a4180a28fc796db63a2e9bfc7019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0c4f20ec1d2db244ece69ae372d6fd9b5434e63f738ed52ca30e5c7c43c8a6`

```dockerfile
```

-	Layers:
	-	`sha256:4bc059622b12e1226e42ca15e6dbc32a00d82b3f99bcc76d2ad50f00a9c9ffb7`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:24598944c0a44021356e234d5334f5d6a7b0916dc0062db250e171d19ac9bb6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11257480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3035a91c92ec8bd7cdf93039ba50d18b4a401fe3e1b7fa0d88f1fecac0075cbb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:48:15 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:48:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:48:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:48:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ea356e615f28e286c59c05db6da8937a551767ee346a78c1f4d6bda06b6e8f`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 7.1 MB (7129125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd28680459beff9713b57e49f20305776f673510ba5e48f98409c22e008fc940`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01dbe57d396d17cd29bee561069ed437ad03eee5b5494b2d6d81d1e2d9c8ee01`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:60ecbc4d690b52b225ef4b5996f94415d5e25ad25c58b7d865f97e71eebab359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0311a5cb98bdb04348024507e5e23d9049fbe6de20f28b0813ccb2252b719d6`

```dockerfile
```

-	Layers:
	-	`sha256:daa994b4b6369aa0777e486cfe0b5ffdece7f7bf45f6ac378af73e68c6e38027`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:011c7c1b76a1fa3717f14bcd143c158d1a74d6670fc76d07fbc07dc65739555b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10921752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a1cdb0153958a36259069931dde22a4497f363b89ba4b07abd1070d2de1e20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 20:44:11 GMT
ADD alpine-minirootfs-3.22.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:44:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 23:11:25 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 23:11:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 23:11:25 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 23:11:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:11:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:4be1a473c77a45524d8389eeb78602a090c801a1ec4c4187ac5060cd906c4712`  
		Last Modified: Thu, 05 Nov 2026 20:44:20 GMT  
		Size: 3.7 MB (3725514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a54e6913a1e56ba64231731a62506a08e1815049e56af50eeac7fac3369f623`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 7.2 MB (7195270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cb7170ed6ba72a8842721ef5706545b5d7e6c0df93e1e563398bbd7ea15a8a`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8794200cc7fa30cf4f354240903cb6eb554f596580aa0b503493f1e48ee6c2`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1f9bbddf76cf9c0161c6043aaa801044d4af8e580e1b798ad4c53531bb23ff2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95cdb5746b357733db83a889491a152fc95224911c7a0acbc25282d7ab6cb475`

```dockerfile
```

-	Layers:
	-	`sha256:a5480ae190bdb466be835bb2d2d3b38ed8f60eff4921f1d0435f2fa2fbd9ab7e`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; s390x

```console
$ docker pull nats@sha256:8df7f7521e354b2392ad152b85092556d19aaa7c1950f44b3e434439130abf74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11264579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98450d4479a68c21c39700f208b89521b140129ba34e8d1c2dc12e2b11dff444`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:17:03 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:17:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:17:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:17:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:17:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:17:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:17:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:17:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:955cb8f4540451c232e6c2034a4fc46518ca0fbf63379f52e283db5301da41e0`  
		Last Modified: Wed, 11 Nov 2026 20:17:15 GMT  
		Size: 7.6 MB (7620405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08aa2e533d64888badfba3771ac87feffcfa5a1e56f424564f7e50692bf7ce39`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20cdf622c9229c506f0d0b5a5bbdd72388a38bb7b70fbc66b2d98bbef518b5a6`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:828fff7ae808f627dc01c4671e725d894ad90eef5f22c78fcdff8606c71a2356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4703b93bc7aba9482b419d4ed569294855766fff1fdf2b8c12c72cd36751f2f`

```dockerfile
```

-	Layers:
	-	`sha256:8086373f71f4ba98e50b1f50657140154588d0c89c2e0bea8ff0f565715976cb`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:alpine3.22`

```console
$ docker pull nats@sha256:558394a23dd3c36f2d3a64b51865fd09908010e80a542cea5e75c2af543ed62a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:4d116f873a8aa17a0903b01a73b670c1d48d8164dbd18b92641b6b2bea3ca576
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11624946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ea8169776497b3f85533203eebf4cdc015bbd99096e103b44b7580870f66099`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:07:08 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:07:08 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:07:08 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:07:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:07:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5fbdd51c05f2bcdc40687231f719a46bbadac5817fd53479cc501cdb2e8ecaf`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 7.8 MB (7829602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2058ceffc175fced21ce5fa44e42c524ab3df9daceec7fd8383f83503b87897b`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cb5292e90c5ee261555e3410e51e6fb54431372c1c9938900a44ce12af4248`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:bd6e03f8ea96224dad377daa3ae06073f0b7ad74835d6865ae9ac005a1c03401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62382ba579511db5e1fbe7c6b6bb2b2839c59b4bb5d38995c16964b1182d9e12`

```dockerfile
```

-	Layers:
	-	`sha256:6b9066e344d71dc27354cb5ce9f9021f0e205b2e5a5891a96f14122a9d826d27`  
		Last Modified: Wed, 11 Nov 2026 20:07:13 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:7c2a41784eec7bef33f61f5af7703b10476a51d0786a591a6e374abe0feaa6d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11075192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df845aedb9f5ebd76379689734ae3581aa8c03a60c7ea201aa8c8b6f9b0da58d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:51:54 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 19:51:54 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 19:51:54 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:51:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:51:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:51:54 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982be782ef7491766237534a340c64825b0fb3b7f46330dc2c867e213b61256c`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 7.6 MB (7572687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4901cf87dfe112c37a59137d0e38e953ce6b28f96b6a63d85d53ffe9ea87e1c`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64cd38d69b07c59789dce8681f16afeaf71852306a74dbeeda693afb2d8b764a`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:47a053c14fa0f809859f94c0a9c209757cc180a8351ce842f5c38b5def9dbfe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fbb0ec0aa3a30941dda3f95b96678973ca0c0f9fb2429032b1a4657dce5fbdc`

```dockerfile
```

-	Layers:
	-	`sha256:b032ee2dc50ce7638928624a38f941315c1bf79cbfbc2f38dc63b95e89bd1a89`  
		Last Modified: Wed, 11 Nov 2026 19:51:59 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:7c259377cef516da0aa0f0dfef3c550e4e544261a6dafcc0a036fbb54a204806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10779173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66956c1a5e337ab6809d30c25812df9dd19403f7c9fd9be219da4b3bc978298`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 19:52:16 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 19:52:16 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 19:52:16 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 19:52:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 19:52:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:52:16 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bbd95d45b9c325743606a8d0942768db9ed8fc4ca762410d9bfb060d43c8c71`  
		Last Modified: Wed, 11 Nov 2026 19:52:21 GMT  
		Size: 7.6 MB (7562736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc306d381ad485aa19c1d8a49258126fcfc0b4b22dfe51b9f76081093655b286`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:210e3a60ec41232f23075a24e6f6b7701738cdd2b8a95110ddf7f02a43630ae5`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:65079ffe889e765f01ee57be9be534baba24a4180a28fc796db63a2e9bfc7019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0c4f20ec1d2db244ece69ae372d6fd9b5434e63f738ed52ca30e5c7c43c8a6`

```dockerfile
```

-	Layers:
	-	`sha256:4bc059622b12e1226e42ca15e6dbc32a00d82b3f99bcc76d2ad50f00a9c9ffb7`  
		Last Modified: Wed, 11 Nov 2026 19:52:20 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:24598944c0a44021356e234d5334f5d6a7b0916dc0062db250e171d19ac9bb6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11257480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3035a91c92ec8bd7cdf93039ba50d18b4a401fe3e1b7fa0d88f1fecac0075cbb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:48:15 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:48:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:48:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:48:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:48:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ea356e615f28e286c59c05db6da8937a551767ee346a78c1f4d6bda06b6e8f`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 7.1 MB (7129125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd28680459beff9713b57e49f20305776f673510ba5e48f98409c22e008fc940`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01dbe57d396d17cd29bee561069ed437ad03eee5b5494b2d6d81d1e2d9c8ee01`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:60ecbc4d690b52b225ef4b5996f94415d5e25ad25c58b7d865f97e71eebab359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0311a5cb98bdb04348024507e5e23d9049fbe6de20f28b0813ccb2252b719d6`

```dockerfile
```

-	Layers:
	-	`sha256:daa994b4b6369aa0777e486cfe0b5ffdece7f7bf45f6ac378af73e68c6e38027`  
		Last Modified: Wed, 11 Nov 2026 20:48:20 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:011c7c1b76a1fa3717f14bcd143c158d1a74d6670fc76d07fbc07dc65739555b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10921752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a1cdb0153958a36259069931dde22a4497f363b89ba4b07abd1070d2de1e20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 20:44:11 GMT
ADD alpine-minirootfs-3.22.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:44:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 23:11:25 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 23:11:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 23:11:25 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 23:11:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 23:11:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:11:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:4be1a473c77a45524d8389eeb78602a090c801a1ec4c4187ac5060cd906c4712`  
		Last Modified: Thu, 05 Nov 2026 20:44:20 GMT  
		Size: 3.7 MB (3725514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a54e6913a1e56ba64231731a62506a08e1815049e56af50eeac7fac3369f623`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 7.2 MB (7195270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cb7170ed6ba72a8842721ef5706545b5d7e6c0df93e1e563398bbd7ea15a8a`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8794200cc7fa30cf4f354240903cb6eb554f596580aa0b503493f1e48ee6c2`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1f9bbddf76cf9c0161c6043aaa801044d4af8e580e1b798ad4c53531bb23ff2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95cdb5746b357733db83a889491a152fc95224911c7a0acbc25282d7ab6cb475`

```dockerfile
```

-	Layers:
	-	`sha256:a5480ae190bdb466be835bb2d2d3b38ed8f60eff4921f1d0435f2fa2fbd9ab7e`  
		Last Modified: Wed, 11 Nov 2026 23:11:41 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:8df7f7521e354b2392ad152b85092556d19aaa7c1950f44b3e434439130abf74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11264579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98450d4479a68c21c39700f208b89521b140129ba34e8d1c2dc12e2b11dff444`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 20:17:03 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 20:17:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 20:17:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='4a2088b3ec7103bf79d6484f55e80ab5d10204811d9ae6f7a33e8544d98dd45d' ;;     armhf) natsArch='arm6'; sha256='8e8b26d30b877ccc27ca02233503a7df610f911cae4864ca81f6dc2dbc318dd8' ;;     armv7) natsArch='arm7'; sha256='a7619752fc73450e40ea4946c64f7a4d6cb8939dc5b3b55dd9c11c508b4c2851' ;;     x86_64) natsArch='amd64'; sha256='32e18c1e78d7ef4f86e483070eef3abb2647c3d4d67e29668077c7ad81da0797' ;;     x86) natsArch='386'; sha256='36612a9bb1025ffb5b2514a9e797f8bfe0948de9f6a9613805ae132992eeb52a' ;;     s390x) natsArch='s390x'; sha256='2e4e626413ed55df226e03e60d36db706224cc871dfe45ad5d495a27570ea542' ;;     ppc64le) natsArch='ppc64le'; sha256='42177527c9c647ae79350422e62f9006942c0b09c3146940d0518e3e77b80e61' ;;     loong64) natsArch='loong64'; sha256='dd4a33aa515a32f88488de1a78d9a4504dab86f91beac630ed1acddb58c6c554' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 11 Nov 2026 20:17:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:17:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 11 Nov 2026 20:17:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:17:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 20:17:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:955cb8f4540451c232e6c2034a4fc46518ca0fbf63379f52e283db5301da41e0`  
		Last Modified: Wed, 11 Nov 2026 20:17:15 GMT  
		Size: 7.6 MB (7620405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08aa2e533d64888badfba3771ac87feffcfa5a1e56f424564f7e50692bf7ce39`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20cdf622c9229c506f0d0b5a5bbdd72388a38bb7b70fbc66b2d98bbef518b5a6`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:828fff7ae808f627dc01c4671e725d894ad90eef5f22c78fcdff8606c71a2356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4703b93bc7aba9482b419d4ed569294855766fff1fdf2b8c12c72cd36751f2f`

```dockerfile
```

-	Layers:
	-	`sha256:8086373f71f4ba98e50b1f50657140154588d0c89c2e0bea8ff0f565715976cb`  
		Last Modified: Wed, 11 Nov 2026 20:17:14 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:latest`

```console
$ docker pull nats@sha256:9d85d87039bfba33baf48de4da32a2ee572bcd6c94f6365d05733a672de49253
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 13
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.20348.5870; amd64

### `nats:latest` - linux; amd64

```console
$ docker pull nats@sha256:be646c8caa022c84124c304a75f82607e993d85db764537e7d3ba0f6e8e91120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebabea7c61861e18b8820961301b49fcd7f3df6d9c5db6cc8d0482bef2ef4847`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:54:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:54:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:54:27 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:54:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6c41ccb011f1e3eb95229360dda280dbae3c84b32ab35a4edb30996aa04c1222`  
		Last Modified: Wed, 11 Nov 2026 12:40:47 GMT  
		Size: 7.4 MB (7413771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7196051da1c4789bd19130dfc68679be8004477b1856a7dfdd48df5b6b122b`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:6aed5a64b55e4569227b1a7f3bf3240a4b3a1a0cb7455ac6339a7c4f5f3b3a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a21a34b28996ba8d7db4252d1738beb79d54c8052bc6e693fe73f2f58d3525`

```dockerfile
```

-	Layers:
	-	`sha256:cfaec91bf4394770fec11c9732677e079c95c4dd1e419e1ecd73970b98c39bea`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:8a878323f772784d9e3e49e206800b5a410f6991626194fa3f5991f5fb640ebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7159535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de547db16901709740b766266b3139e92f964c8b47e2320d21867396faf46d04`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:07:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:07:48 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:48 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:07:48 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0652d0be457f3d18d288edc0307eca1cd202a88e16ab984f6882712a07472087`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.2 MB (7159025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00728826337a407fb9b7e405c8d8a77cea79c644e150cf0dcd98e286f35737d`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:37c47a81bed6ea1b2961020c4b256a5ee6565cb0b8ad25c3392b6ed6cf0714a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7cf8d39791790d3e9a341b539a87c4eb1dd7e61b7376f20c239f7fef4fe453a`

```dockerfile
```

-	Layers:
	-	`sha256:c095dca2c3080f0be34b9f122370531d7e7e0cd3a7a3ad696bb56217739f9e58`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v7

```console
$ docker pull nats@sha256:d199f1ca8dde7c83937bf4f62950ef61b9312a382d9c3f5313767f87fe4e1e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7149171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18d4b7ea52f86036881095b2ec72cce6170af89fbfc2d3008f26513dc5bd6ae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:19 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:19 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:19 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1d56e1908d3168328ed814028289867fa851e08df0a504b78e139c4e98e21797`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.1 MB (7148661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac74cd523247bf5196cea88a5d9d76f6fb0a6eac15700b754fb73abf7e640d79`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:ddad513f45cf6be9dda44e1fba820cc93b7015edac6967ad7675182255ca79bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e95a880af198f329eb9b1d09c1c107344f6315b7fd15d090427df5ddefc2084`

```dockerfile
```

-	Layers:
	-	`sha256:301fe24c83eb64fdcc12925ac8526b52f94821a9a4892e25e424642da67a55e0`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:830dce64852b46536c685a08928ee5ead95a58c9cd080eee0a8e13ce86f0aba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6714600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cfc58e56d5cdd41f6d183d83da256ef4f2e99bfcea14c7157587f2b47ed875`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 21:25:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 21:25:33 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 21:25:33 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 21:25:33 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6228cfd108f7c3f9ec9824ca763e1e25fc2b01559af55d05b74a0a051efde28d`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.7 MB (6714091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98e91042c5c3b3134a6074cd11c9472f0f710aaa936e98a81ee985a921fe4ec`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:9682b16459e0e6305d140e4eb3a65a2300d397561f7bd32f5a1385453337d051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2570c9b1f5aba41d1bebc9eaf4d5d778947b00871edb960a5635eb1b5d2429e1`

```dockerfile
```

-	Layers:
	-	`sha256:1565fd55d2f5eefa9c74c8dda2a71c0dd35dd7d6621c508455a0983992eb15a2`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; ppc64le

```console
$ docker pull nats@sha256:1a2420547959c489657b8b667b34cab5a6972d6740d6e6f53478a6db0ab9fcd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6780019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc94b182d2ec7f1febbe856adfded34a81a310aa723fa02bcd172c6d5ed1ed17`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 12 Nov 2026 01:01:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 12 Nov 2026 01:01:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 12 Nov 2026 01:01:37 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 12 Nov 2026 01:01:37 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9bdbb61c627844ef007af6376c4f7820d3d077333aea87599d1d9fff52f0d248`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.8 MB (6779510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15c3921d90e0def6f53910b8d2c97c1e7191c44c17ccceb6fe1377e2f60f4e0`  
		Last Modified: Thu, 12 Nov 2026 01:02:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:d02468148f1cec2e2db760de2a87b183c7fff469a4f666113dc63f2eab6951db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba9cb0342b3f73dda5682bd6a845bd46317740b5d37c77cda7cb8590a870fca`

```dockerfile
```

-	Layers:
	-	`sha256:203f0b65518389a217783c05d70a31ee0898f920598153245888d5771eb8e20c`  
		Last Modified: Thu, 12 Nov 2026 01:02:12 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; s390x

```console
$ docker pull nats@sha256:dd33cb1a221b6595bfd4643aef77a4a8e5566f0702f9dd08b2cad869e7cbf793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7206120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06199899208fa49bf5fbf0c86e72ad6eacc87807a89d7dd3f3b77d677dfc08b8`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:31:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:31:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:31:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:31:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2c7977c75081d99f8442328b859f102db4c4a9438f6ddfb6ab0007cf6b85845d`  
		Last Modified: Wed, 11 Nov 2026 12:40:48 GMT  
		Size: 7.2 MB (7205609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ed079d2e3dc3680cad70afd210e511614450b1c1bbab1d20a430ac3c1ae1131`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 511.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:b30d569e71f7ac1c9b56950d5cf24682552921c83b614b467af092a4d0a9bb6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf2c76ca30e45db54065364a4ee78a7b3e458f0b7da95ddcec5aa1cb4f635ae`

```dockerfile
```

-	Layers:
	-	`sha256:52eb5e764b12c56c3c1bed3cf22421da87376402d5f21b799623b67882a2cbbf`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:82626ff1932b07f6ac3b16e1500859c91764a061de33884d1616e4dca0d80302
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133904237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c360f19803400f80afed757d36cd2e7b06fc0d82ca9617889f0dc1d3546b7f47`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:42:18 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:c5ba8ddabfa6bdb884d582c2eb77790c07981a344bb31247325541a7a60e20d4 in C:\nats-server.exe 
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:42:23 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e36bfc7615a5cd746e5bf675d5bc88f61ed6f2565098b4e3806bde2e8d8079`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84956934b58babe208abf3bb41d01573c01145bc958eb78c0ab1c2fbb200bd6f`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 7.6 MB (7613293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f94016dc2ab84be35d26775093d2336850b05e1c371d7a1bad7e825a60d79ac`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5144c9276313080ff5b57f640ef93c7b502fbb2c581dd83e6560857aea916d47`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1637678fa817944cca81415acc00adc752c13dfacdb68eb8d4d27cdaf52c69`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe0a8e2844e4df140712e9b6d095af7a03f92f4a292095d56c85938624f5eec`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:linux`

```console
$ docker pull nats@sha256:cf783105b65fd68ed9c40fdae8f624f97177c1fc1b705b4939eb25f27df22019
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:linux` - linux; amd64

```console
$ docker pull nats@sha256:be646c8caa022c84124c304a75f82607e993d85db764537e7d3ba0f6e8e91120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebabea7c61861e18b8820961301b49fcd7f3df6d9c5db6cc8d0482bef2ef4847`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:54:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:54:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:54:27 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:54:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6c41ccb011f1e3eb95229360dda280dbae3c84b32ab35a4edb30996aa04c1222`  
		Last Modified: Wed, 11 Nov 2026 12:40:47 GMT  
		Size: 7.4 MB (7413771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7196051da1c4789bd19130dfc68679be8004477b1856a7dfdd48df5b6b122b`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:6aed5a64b55e4569227b1a7f3bf3240a4b3a1a0cb7455ac6339a7c4f5f3b3a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a21a34b28996ba8d7db4252d1738beb79d54c8052bc6e693fe73f2f58d3525`

```dockerfile
```

-	Layers:
	-	`sha256:cfaec91bf4394770fec11c9732677e079c95c4dd1e419e1ecd73970b98c39bea`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:8a878323f772784d9e3e49e206800b5a410f6991626194fa3f5991f5fb640ebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7159535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de547db16901709740b766266b3139e92f964c8b47e2320d21867396faf46d04`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:07:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:07:48 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:48 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:07:48 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0652d0be457f3d18d288edc0307eca1cd202a88e16ab984f6882712a07472087`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.2 MB (7159025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00728826337a407fb9b7e405c8d8a77cea79c644e150cf0dcd98e286f35737d`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:37c47a81bed6ea1b2961020c4b256a5ee6565cb0b8ad25c3392b6ed6cf0714a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7cf8d39791790d3e9a341b539a87c4eb1dd7e61b7376f20c239f7fef4fe453a`

```dockerfile
```

-	Layers:
	-	`sha256:c095dca2c3080f0be34b9f122370531d7e7e0cd3a7a3ad696bb56217739f9e58`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:d199f1ca8dde7c83937bf4f62950ef61b9312a382d9c3f5313767f87fe4e1e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7149171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18d4b7ea52f86036881095b2ec72cce6170af89fbfc2d3008f26513dc5bd6ae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:19 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:19 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:19 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1d56e1908d3168328ed814028289867fa851e08df0a504b78e139c4e98e21797`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.1 MB (7148661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac74cd523247bf5196cea88a5d9d76f6fb0a6eac15700b754fb73abf7e640d79`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:ddad513f45cf6be9dda44e1fba820cc93b7015edac6967ad7675182255ca79bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e95a880af198f329eb9b1d09c1c107344f6315b7fd15d090427df5ddefc2084`

```dockerfile
```

-	Layers:
	-	`sha256:301fe24c83eb64fdcc12925ac8526b52f94821a9a4892e25e424642da67a55e0`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:830dce64852b46536c685a08928ee5ead95a58c9cd080eee0a8e13ce86f0aba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6714600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cfc58e56d5cdd41f6d183d83da256ef4f2e99bfcea14c7157587f2b47ed875`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 21:25:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 21:25:33 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 21:25:33 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 21:25:33 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6228cfd108f7c3f9ec9824ca763e1e25fc2b01559af55d05b74a0a051efde28d`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.7 MB (6714091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98e91042c5c3b3134a6074cd11c9472f0f710aaa936e98a81ee985a921fe4ec`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:9682b16459e0e6305d140e4eb3a65a2300d397561f7bd32f5a1385453337d051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2570c9b1f5aba41d1bebc9eaf4d5d778947b00871edb960a5635eb1b5d2429e1`

```dockerfile
```

-	Layers:
	-	`sha256:1565fd55d2f5eefa9c74c8dda2a71c0dd35dd7d6621c508455a0983992eb15a2`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; ppc64le

```console
$ docker pull nats@sha256:1a2420547959c489657b8b667b34cab5a6972d6740d6e6f53478a6db0ab9fcd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6780019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc94b182d2ec7f1febbe856adfded34a81a310aa723fa02bcd172c6d5ed1ed17`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 12 Nov 2026 01:01:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 12 Nov 2026 01:01:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 12 Nov 2026 01:01:37 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 12 Nov 2026 01:01:37 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9bdbb61c627844ef007af6376c4f7820d3d077333aea87599d1d9fff52f0d248`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.8 MB (6779510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15c3921d90e0def6f53910b8d2c97c1e7191c44c17ccceb6fe1377e2f60f4e0`  
		Last Modified: Thu, 12 Nov 2026 01:02:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:d02468148f1cec2e2db760de2a87b183c7fff469a4f666113dc63f2eab6951db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba9cb0342b3f73dda5682bd6a845bd46317740b5d37c77cda7cb8590a870fca`

```dockerfile
```

-	Layers:
	-	`sha256:203f0b65518389a217783c05d70a31ee0898f920598153245888d5771eb8e20c`  
		Last Modified: Thu, 12 Nov 2026 01:02:12 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; s390x

```console
$ docker pull nats@sha256:dd33cb1a221b6595bfd4643aef77a4a8e5566f0702f9dd08b2cad869e7cbf793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7206120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06199899208fa49bf5fbf0c86e72ad6eacc87807a89d7dd3f3b77d677dfc08b8`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:31:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:31:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:31:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:31:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2c7977c75081d99f8442328b859f102db4c4a9438f6ddfb6ab0007cf6b85845d`  
		Last Modified: Wed, 11 Nov 2026 12:40:48 GMT  
		Size: 7.2 MB (7205609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ed079d2e3dc3680cad70afd210e511614450b1c1bbab1d20a430ac3c1ae1131`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 511.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:b30d569e71f7ac1c9b56950d5cf24682552921c83b614b467af092a4d0a9bb6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf2c76ca30e45db54065364a4ee78a7b3e458f0b7da95ddcec5aa1cb4f635ae`

```dockerfile
```

-	Layers:
	-	`sha256:52eb5e764b12c56c3c1bed3cf22421da87376402d5f21b799623b67882a2cbbf`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:nanoserver`

```console
$ docker pull nats@sha256:86631f4afff7e7b28f26fb7fbc0ed323dbaa1e1e7c6cd286d58526474a3f71f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:nanoserver` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:82626ff1932b07f6ac3b16e1500859c91764a061de33884d1616e4dca0d80302
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133904237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c360f19803400f80afed757d36cd2e7b06fc0d82ca9617889f0dc1d3546b7f47`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:42:18 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:c5ba8ddabfa6bdb884d582c2eb77790c07981a344bb31247325541a7a60e20d4 in C:\nats-server.exe 
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:42:23 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e36bfc7615a5cd746e5bf675d5bc88f61ed6f2565098b4e3806bde2e8d8079`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84956934b58babe208abf3bb41d01573c01145bc958eb78c0ab1c2fbb200bd6f`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 7.6 MB (7613293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f94016dc2ab84be35d26775093d2336850b05e1c371d7a1bad7e825a60d79ac`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5144c9276313080ff5b57f640ef93c7b502fbb2c581dd83e6560857aea916d47`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1637678fa817944cca81415acc00adc752c13dfacdb68eb8d4d27cdaf52c69`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe0a8e2844e4df140712e9b6d095af7a03f92f4a292095d56c85938624f5eec`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:86631f4afff7e7b28f26fb7fbc0ed323dbaa1e1e7c6cd286d58526474a3f71f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:nanoserver-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:82626ff1932b07f6ac3b16e1500859c91764a061de33884d1616e4dca0d80302
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133904237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c360f19803400f80afed757d36cd2e7b06fc0d82ca9617889f0dc1d3546b7f47`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:42:18 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:c5ba8ddabfa6bdb884d582c2eb77790c07981a344bb31247325541a7a60e20d4 in C:\nats-server.exe 
# Wed, 11 Nov 2026 22:42:21 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:42:22 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:42:23 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e36bfc7615a5cd746e5bf675d5bc88f61ed6f2565098b4e3806bde2e8d8079`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84956934b58babe208abf3bb41d01573c01145bc958eb78c0ab1c2fbb200bd6f`  
		Last Modified: Wed, 11 Nov 2026 22:42:29 GMT  
		Size: 7.6 MB (7613293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f94016dc2ab84be35d26775093d2336850b05e1c371d7a1bad7e825a60d79ac`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5144c9276313080ff5b57f640ef93c7b502fbb2c581dd83e6560857aea916d47`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1637678fa817944cca81415acc00adc752c13dfacdb68eb8d4d27cdaf52c69`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe0a8e2844e4df140712e9b6d095af7a03f92f4a292095d56c85938624f5eec`  
		Last Modified: Wed, 11 Nov 2026 22:42:27 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:scratch`

```console
$ docker pull nats@sha256:cf783105b65fd68ed9c40fdae8f624f97177c1fc1b705b4939eb25f27df22019
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:scratch` - linux; amd64

```console
$ docker pull nats@sha256:be646c8caa022c84124c304a75f82607e993d85db764537e7d3ba0f6e8e91120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebabea7c61861e18b8820961301b49fcd7f3df6d9c5db6cc8d0482bef2ef4847`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:54:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:54:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:54:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:54:27 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:54:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6c41ccb011f1e3eb95229360dda280dbae3c84b32ab35a4edb30996aa04c1222`  
		Last Modified: Wed, 11 Nov 2026 12:40:47 GMT  
		Size: 7.4 MB (7413771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7196051da1c4789bd19130dfc68679be8004477b1856a7dfdd48df5b6b122b`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:6aed5a64b55e4569227b1a7f3bf3240a4b3a1a0cb7455ac6339a7c4f5f3b3a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a21a34b28996ba8d7db4252d1738beb79d54c8052bc6e693fe73f2f58d3525`

```dockerfile
```

-	Layers:
	-	`sha256:cfaec91bf4394770fec11c9732677e079c95c4dd1e419e1ecd73970b98c39bea`  
		Last Modified: Wed, 11 Nov 2026 20:54:31 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:8a878323f772784d9e3e49e206800b5a410f6991626194fa3f5991f5fb640ebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7159535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de547db16901709740b766266b3139e92f964c8b47e2320d21867396faf46d04`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:07:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:07:48 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:07:48 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:07:48 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:07:48 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0652d0be457f3d18d288edc0307eca1cd202a88e16ab984f6882712a07472087`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.2 MB (7159025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00728826337a407fb9b7e405c8d8a77cea79c644e150cf0dcd98e286f35737d`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:37c47a81bed6ea1b2961020c4b256a5ee6565cb0b8ad25c3392b6ed6cf0714a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7cf8d39791790d3e9a341b539a87c4eb1dd7e61b7376f20c239f7fef4fe453a`

```dockerfile
```

-	Layers:
	-	`sha256:c095dca2c3080f0be34b9f122370531d7e7e0cd3a7a3ad696bb56217739f9e58`  
		Last Modified: Wed, 11 Nov 2026 20:07:53 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:d199f1ca8dde7c83937bf4f62950ef61b9312a382d9c3f5313767f87fe4e1e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7149171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18d4b7ea52f86036881095b2ec72cce6170af89fbfc2d3008f26513dc5bd6ae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:08:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:08:19 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:08:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:08:19 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:08:19 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1d56e1908d3168328ed814028289867fa851e08df0a504b78e139c4e98e21797`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 7.1 MB (7148661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac74cd523247bf5196cea88a5d9d76f6fb0a6eac15700b754fb73abf7e640d79`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:ddad513f45cf6be9dda44e1fba820cc93b7015edac6967ad7675182255ca79bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e95a880af198f329eb9b1d09c1c107344f6315b7fd15d090427df5ddefc2084`

```dockerfile
```

-	Layers:
	-	`sha256:301fe24c83eb64fdcc12925ac8526b52f94821a9a4892e25e424642da67a55e0`  
		Last Modified: Wed, 11 Nov 2026 20:08:23 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:830dce64852b46536c685a08928ee5ead95a58c9cd080eee0a8e13ce86f0aba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6714600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cfc58e56d5cdd41f6d183d83da256ef4f2e99bfcea14c7157587f2b47ed875`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 21:25:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 21:25:33 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 21:25:33 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 21:25:33 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 21:25:33 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6228cfd108f7c3f9ec9824ca763e1e25fc2b01559af55d05b74a0a051efde28d`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.7 MB (6714091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98e91042c5c3b3134a6074cd11c9472f0f710aaa936e98a81ee985a921fe4ec`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:9682b16459e0e6305d140e4eb3a65a2300d397561f7bd32f5a1385453337d051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2570c9b1f5aba41d1bebc9eaf4d5d778947b00871edb960a5635eb1b5d2429e1`

```dockerfile
```

-	Layers:
	-	`sha256:1565fd55d2f5eefa9c74c8dda2a71c0dd35dd7d6621c508455a0983992eb15a2`  
		Last Modified: Wed, 11 Nov 2026 21:25:37 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:1a2420547959c489657b8b667b34cab5a6972d6740d6e6f53478a6db0ab9fcd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6780019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc94b182d2ec7f1febbe856adfded34a81a310aa723fa02bcd172c6d5ed1ed17`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 12 Nov 2026 01:01:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 12 Nov 2026 01:01:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 12 Nov 2026 01:01:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 12 Nov 2026 01:01:37 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 12 Nov 2026 01:01:37 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9bdbb61c627844ef007af6376c4f7820d3d077333aea87599d1d9fff52f0d248`  
		Last Modified: Wed, 11 Nov 2026 12:40:50 GMT  
		Size: 6.8 MB (6779510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15c3921d90e0def6f53910b8d2c97c1e7191c44c17ccceb6fe1377e2f60f4e0`  
		Last Modified: Thu, 12 Nov 2026 01:02:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:d02468148f1cec2e2db760de2a87b183c7fff469a4f666113dc63f2eab6951db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba9cb0342b3f73dda5682bd6a845bd46317740b5d37c77cda7cb8590a870fca`

```dockerfile
```

-	Layers:
	-	`sha256:203f0b65518389a217783c05d70a31ee0898f920598153245888d5771eb8e20c`  
		Last Modified: Thu, 12 Nov 2026 01:02:12 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; s390x

```console
$ docker pull nats@sha256:dd33cb1a221b6595bfd4643aef77a4a8e5566f0702f9dd08b2cad869e7cbf793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7206120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06199899208fa49bf5fbf0c86e72ad6eacc87807a89d7dd3f3b77d677dfc08b8`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 11 Nov 2026 20:31:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 11 Nov 2026 20:31:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 11 Nov 2026 20:31:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 11 Nov 2026 20:31:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 11 Nov 2026 20:31:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2c7977c75081d99f8442328b859f102db4c4a9438f6ddfb6ab0007cf6b85845d`  
		Last Modified: Wed, 11 Nov 2026 12:40:48 GMT  
		Size: 7.2 MB (7205609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ed079d2e3dc3680cad70afd210e511614450b1c1bbab1d20a430ac3c1ae1131`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 511.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:b30d569e71f7ac1c9b56950d5cf24682552921c83b614b467af092a4d0a9bb6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf2c76ca30e45db54065364a4ee78a7b3e458f0b7da95ddcec5aa1cb4f635ae`

```dockerfile
```

-	Layers:
	-	`sha256:52eb5e764b12c56c3c1bed3cf22421da87376402d5f21b799623b67882a2cbbf`  
		Last Modified: Wed, 11 Nov 2026 20:31:12 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:a31dfcd28fbf4d306c1c448eadb15654c135a2f400e9fa65f86094e2b364669f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:windowsservercore` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:e0489f3d14baf708ee09ab8e947465433f849f6bbb1210598e27abc09b095b1f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2254643417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd6bd6341b1de430d87732ea5398f9b08c4adee02577939eaf5432d8f17ac45`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 22:02:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Nov 2026 22:02:03 GMT
ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:02:03 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 22:02:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 22:02:04 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.3/nats-server-v2.15.3-windows-amd64.zip
# Wed, 11 Nov 2026 22:02:05 GMT
ENV NATS_SERVER_SHASUM=b202c46689a56b17e88939b6c53a25294021b000b9c7225209bcb1bbda347bad
# Wed, 11 Nov 2026 22:02:10 GMT
RUN Set-PSDebug -Trace 2
# Wed, 11 Nov 2026 22:02:24 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 11 Nov 2026 22:02:25 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:02:25 GMT
EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:02:26 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:02:26 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985cdefb6abad122d5e02da8d25bc1bdd43faf7ca80f9dd3261101a1ab8c007`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5387296daa8755673907cf7b38bdb72ad011942273ab0f479fcaf018e17c212c`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b78732d3507844ef8846ccd9d2ba3ef883239183bb11232baeebb490352adc`  
		Last Modified: Wed, 11 Nov 2026 22:02:33 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6586b41c56c24767a97b23132fd476c0f8de21eaa4e2f37591460a629217db`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1043024db70a01dfb9dbdfd5ad844220e003bdb75eb118b33f6ed75328a621e9`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e551f074d7ec040e422ef202557e89640be13785cf28a79c5c4fe77cd33dfb`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a6bbcb7f6de472537b60f64c7dbf3864d15aa450318e50dd16c41f4c77266`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 334.6 KB (334619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3c2cb359caa4b1aa6c5d353145a0fc3b991542d5a30c4dc9e3520a23ffd48e`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 7.9 MB (7947389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdab1c5f722823a86f3a781d862b90650731fed509b6592bfff0f3e5af650bc`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e441b8b58ab60dfc55e36e831bb77090e9b12e31b9b672c7098a5faf15615b81`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e979385e8e6d4eff187b9ab85d958d21603c164f973a78fe521edecc1ffc7b8e`  
		Last Modified: Wed, 11 Nov 2026 22:02:31 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5468399958e8bf928890dc09ae6d2479a9a65d97ec3cc2c2fcd3cdc9875c0e`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:a31dfcd28fbf4d306c1c448eadb15654c135a2f400e9fa65f86094e2b364669f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:e0489f3d14baf708ee09ab8e947465433f849f6bbb1210598e27abc09b095b1f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2254643417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd6bd6341b1de430d87732ea5398f9b08c4adee02577939eaf5432d8f17ac45`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 22:02:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Nov 2026 22:02:03 GMT
ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:02:03 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 22:02:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 22:02:04 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.3/nats-server-v2.15.3-windows-amd64.zip
# Wed, 11 Nov 2026 22:02:05 GMT
ENV NATS_SERVER_SHASUM=b202c46689a56b17e88939b6c53a25294021b000b9c7225209bcb1bbda347bad
# Wed, 11 Nov 2026 22:02:10 GMT
RUN Set-PSDebug -Trace 2
# Wed, 11 Nov 2026 22:02:24 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 11 Nov 2026 22:02:25 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:02:25 GMT
EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:02:26 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:02:26 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985cdefb6abad122d5e02da8d25bc1bdd43faf7ca80f9dd3261101a1ab8c007`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5387296daa8755673907cf7b38bdb72ad011942273ab0f479fcaf018e17c212c`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b78732d3507844ef8846ccd9d2ba3ef883239183bb11232baeebb490352adc`  
		Last Modified: Wed, 11 Nov 2026 22:02:33 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6586b41c56c24767a97b23132fd476c0f8de21eaa4e2f37591460a629217db`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1043024db70a01dfb9dbdfd5ad844220e003bdb75eb118b33f6ed75328a621e9`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e551f074d7ec040e422ef202557e89640be13785cf28a79c5c4fe77cd33dfb`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a6bbcb7f6de472537b60f64c7dbf3864d15aa450318e50dd16c41f4c77266`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 334.6 KB (334619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3c2cb359caa4b1aa6c5d353145a0fc3b991542d5a30c4dc9e3520a23ffd48e`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 7.9 MB (7947389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdab1c5f722823a86f3a781d862b90650731fed509b6592bfff0f3e5af650bc`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e441b8b58ab60dfc55e36e831bb77090e9b12e31b9b672c7098a5faf15615b81`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e979385e8e6d4eff187b9ab85d958d21603c164f973a78fe521edecc1ffc7b8e`  
		Last Modified: Wed, 11 Nov 2026 22:02:31 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5468399958e8bf928890dc09ae6d2479a9a65d97ec3cc2c2fcd3cdc9875c0e`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
