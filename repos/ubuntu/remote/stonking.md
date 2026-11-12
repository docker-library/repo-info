## `ubuntu:stonking`

```console
$ docker pull ubuntu@sha256:b5194b8e58989da0865ebc80078bf9f5f8742ec6a867c53f6ae699f6036756f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `ubuntu:stonking` - linux; amd64

```console
$ docker pull ubuntu@sha256:8f52618638aaad6b239d47d734112b15757a22fe1a8e76ace2c402e33ed672c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43034913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60330d5997981063a544b17673747a96a954f71510d87e7e09131c76b41398f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 15:25:38 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/.temp_layer.8933.tar --tag 26.10
# Thu, 05 Nov 2026 15:25:39 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Thu, 05 Nov 2026 15:25:39 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Thu, 05 Nov 2026 15:25:39 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:25:39 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-05T15:25:39.205322+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Thu, 05 Nov 2026 15:25:39 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-05T15:25:39.205322+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Thu, 05 Nov 2026 15:25:39 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/.temp_layer.control_data.8933.tar
```

-	Layers:
	-	`sha256:64cea6f530f99dba964636489d2d47427b90e4db5323cc14e1d500349a9fac29`  
		Last Modified: Thu, 05 Nov 2026 21:54:48 GMT  
		Size: 43.0 MB (43034524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdc9f0439b32b23a916d3179faa335454e24481630be607df025f3ce4733093c`  
		Last Modified: Thu, 05 Nov 2026 21:54:51 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:stonking` - unknown; unknown

```console
$ docker pull ubuntu@sha256:9a6b99aa8a389ad79b092256e1fd647cf0d141abf9ffb16595b06b684405aa25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3770361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f5f186f903ee9ba73b9c21e848cb9c600b1eef9eef8c46f37a55c9f3d19b075`

```dockerfile
```

-	Layers:
	-	`sha256:1df5b5989c0fb8b656ecf2afed04e9f9a3287618fa63b4ad8dc2b3e564c5cbba`  
		Last Modified: Wed, 11 Nov 2026 22:58:15 GMT  
		Size: 3.8 MB (3770361 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:stonking` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:35661568bce0ecf8e38336abf48d58ef93d72426a367cbb96055a33f3c7d1f24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40233783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b917084e079cc59559d9972871352c6eb4e6cb84cb0dd4ae4d204493a9e5db`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 15:33:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/.temp_layer.9001.tar --tag 26.10
# Thu, 05 Nov 2026 15:33:08 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Thu, 05 Nov 2026 15:33:08 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Thu, 05 Nov 2026 15:33:08 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:33:08 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-05T15:33:08.889874+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Thu, 05 Nov 2026 15:33:08 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-05T15:33:08.889874+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Thu, 05 Nov 2026 15:33:08 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/.temp_layer.control_data.9001.tar
```

-	Layers:
	-	`sha256:d1468260acad428de6c301ec616c1b9b515a35e6d51e74003f8845d20542d79c`  
		Last Modified: Thu, 05 Nov 2026 21:54:33 GMT  
		Size: 40.2 MB (40233374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0135bd9703f820a9d4a22c94f566c5c12f833c85854b803d93fc960a6d23ad7d`  
		Last Modified: Thu, 05 Nov 2026 21:54:41 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:stonking` - unknown; unknown

```console
$ docker pull ubuntu@sha256:a10d9055e8500d307a5d45ce83738678c7241d34bcfeba6d0b0b13f3bc3da276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3772692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1092ec824bb55357d7c17a3cfe909456f6e76158107873832fc013a32f19fb32`

```dockerfile
```

-	Layers:
	-	`sha256:fc98493eb08b8dc4b9598e32bae12ea09b5b07d1e3cf3a136d8f878482df11e0`  
		Last Modified: Wed, 11 Nov 2026 22:59:40 GMT  
		Size: 3.8 MB (3772692 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:stonking` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:55a8e77b3338f60f86abecc5a643d85505cf7407cdcf59079a03c1ae700d519c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42195482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a8f9b77b6d732888ab62716797828772f9e7e9da8852fca1ece773bf9fc8139`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 15:34:10 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/.temp_layer.8996.tar --tag 26.10
# Thu, 05 Nov 2026 15:34:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Thu, 05 Nov 2026 15:34:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Thu, 05 Nov 2026 15:34:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:34:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-05T15:34:10.897145+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Thu, 05 Nov 2026 15:34:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-05T15:34:10.897145+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Thu, 05 Nov 2026 15:34:10 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/.temp_layer.control_data.8996.tar
```

-	Layers:
	-	`sha256:b5336d57a9be07a9561eabc6167ef5fcf0a78bba65edcce9463ccac9f946bf05`  
		Last Modified: Thu, 05 Nov 2026 21:54:58 GMT  
		Size: 42.2 MB (42195089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcda45930ce48053711cdc70b05f84a7c8d9d9988e0808a38dbd2be063f842e2`  
		Last Modified: Thu, 05 Nov 2026 21:55:01 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:stonking` - unknown; unknown

```console
$ docker pull ubuntu@sha256:fbaa1ff3017958300cb2521107ffbe2710b9bbd5ab0550f53c7c5ffd82608267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3771404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec0db0384836cc390dcd205b0dd8c813a7bf544b60b213c6e6c529517504d9bf`

```dockerfile
```

-	Layers:
	-	`sha256:e5839e5eb811d8f6b67253fbfdefe1911d7b37e95cd768106dcd59d4d409cd33`  
		Last Modified: Wed, 11 Nov 2026 22:58:31 GMT  
		Size: 3.8 MB (3771404 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:stonking` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:0116ad70866cee1061b08aaade7d65cf294cc745e1bb3d24226b869d9836734a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47771591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41d463d81ccd737827ea174ab21aaff0b0941b184c8cb487f98ddcd4f45735d1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 15:27:08 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/.temp_layer.8876.tar --tag 26.10
# Thu, 05 Nov 2026 15:27:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Thu, 05 Nov 2026 15:27:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Thu, 05 Nov 2026 15:27:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:27:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-05T15:27:09.149951+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Thu, 05 Nov 2026 15:27:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-05T15:27:09.149951+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Thu, 05 Nov 2026 15:27:09 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/.temp_layer.control_data.8876.tar
```

-	Layers:
	-	`sha256:1d56aed5dd618a0dcd332bb1b3cefb265e0f4515faee3a6c295cb1ce54fdd486`  
		Last Modified: Thu, 05 Nov 2026 21:55:19 GMT  
		Size: 47.8 MB (47771199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae581a1f5161367fce24dd6196e703dde1513632d87e7d963ef906c0e8e8c12`  
		Last Modified: Thu, 05 Nov 2026 21:55:21 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:stonking` - unknown; unknown

```console
$ docker pull ubuntu@sha256:03689871f4d607e1dfb3115ea6991b1be14cada31d2b7cc9c8849632f2b609b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3774932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfecb0044e20907e83246d4daae881b3aa6dfc180c84c693d400bd85bb1aff93`

```dockerfile
```

-	Layers:
	-	`sha256:5f616231f21ad013f740056c683d3a3264003ec96dfa3205622f7791910c40de`  
		Last Modified: Wed, 11 Nov 2026 23:16:44 GMT  
		Size: 3.8 MB (3774932 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:stonking` - linux; riscv64

```console
$ docker pull ubuntu@sha256:55addc9bc872108ea59710bbcae92edadf6be09c390d3e9bc966cf6068e9cab4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43849048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec6a74cda9312d2afaea0405de939c52d0506de3a2c9c26bc7cdc85ae61d788`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 24 Oct 2026 01:44:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-85105c73e0fce6a8cb74929fec18eb26/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-85105c73e0fce6a8cb74929fec18eb26/images/.temp_layer.9802.tar --tag 26.10
# Sat, 24 Oct 2026 01:44:41 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-85105c73e0fce6a8cb74929fec18eb26/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Sat, 24 Oct 2026 01:44:41 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-85105c73e0fce6a8cb74929fec18eb26/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Sat, 24 Oct 2026 01:44:42 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-85105c73e0fce6a8cb74929fec18eb26/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Oct 2026 01:44:42 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-85105c73e0fce6a8cb74929fec18eb26/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-24T01:44:42.379974+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 24 Oct 2026 01:44:43 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-85105c73e0fce6a8cb74929fec18eb26/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-24T01:44:42.379974+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 24 Oct 2026 01:44:43 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-85105c73e0fce6a8cb74929fec18eb26/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-85105c73e0fce6a8cb74929fec18eb26/images/.temp_layer.control_data.9802.tar
```

-	Layers:
	-	`sha256:02b373576aa930bb8889c00b9dd103b1b25be4ba92e6ee38892191d716ce0b54`  
		Last Modified: Sat, 24 Oct 2026 02:47:25 GMT  
		Size: 43.8 MB (43848635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d92e6170f06283ed8682ff1ead5923452bd41b462b96fb387117d35b7fbeb0af`  
		Last Modified: Sat, 24 Oct 2026 02:47:27 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:stonking` - unknown; unknown

```console
$ docker pull ubuntu@sha256:51a8948f1b1a15d454124b2cce3b24addc738bf5df94bc89a845fbaafeb2ddd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3763480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c712669b3e5bc04c3ff848b68768df2f881aa91e4a5d48c689f422586196789d`

```dockerfile
```

-	Layers:
	-	`sha256:93f3e11c4e1636328bac49b01efa8891910f27543e7a62cf24733436b11e8fab`  
		Last Modified: Thu, 29 Oct 2026 02:36:44 GMT  
		Size: 3.8 MB (3763480 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:stonking` - linux; s390x

```console
$ docker pull ubuntu@sha256:cc44bfd219cd10ad3a89ee3f7a9f7c495ff9e5bada592cb247df13272df45021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42566027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b153afedf4a25da1970f77cef04b492aae9d5781b694aec4775bcca91b53c18`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 15:27:51 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/.temp_layer.8917.tar --tag 26.10
# Thu, 05 Nov 2026 15:27:51 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Thu, 05 Nov 2026 15:27:51 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Thu, 05 Nov 2026 15:27:51 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:27:51 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-05T15:27:51.579716+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Thu, 05 Nov 2026 15:27:51 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-05T15:27:51.579716+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Thu, 05 Nov 2026 15:27:51 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/.temp_layer.control_data.8917.tar
```

-	Layers:
	-	`sha256:9c87d6583931ad962eca0dccb92e61239bb6bead252773b7574193c3f53e53e4`  
		Last Modified: Thu, 05 Nov 2026 21:55:29 GMT  
		Size: 42.6 MB (42565638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76c381d3e5ad9c0a5b3a815a7fb13188f92524d20bc0168e2551caea9a0a9c53`  
		Last Modified: Thu, 05 Nov 2026 21:55:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:stonking` - unknown; unknown

```console
$ docker pull ubuntu@sha256:f39a2d351dd7a4e05161d7b566289f2fd4b25a57951e77a442aee99609ad28bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3773174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35f3dd75313eed69b8acf22fd959d45175af70a1cacd626bbf0a0ed274fef30b`

```dockerfile
```

-	Layers:
	-	`sha256:6630fcfb8a3862b94f648bbe5b6fc52feb5d20548067681a522d2ceef6ed6d5c`  
		Last Modified: Wed, 11 Nov 2026 22:58:51 GMT  
		Size: 3.8 MB (3773174 bytes)  
		MIME: application/vnd.in-toto+json
