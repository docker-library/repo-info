## `ubuntu:stonking`

```console
$ docker pull ubuntu@sha256:c6bd539fac331a5f51e316a977fdd913bef6dd88f68f5f96a8db3f0f86a85024
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
$ docker pull ubuntu@sha256:1b798ba0017f24244ca02af25e3cfb1160db35e270e7b3beef708910b468bd92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43022829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:383af3e6d22026f17e140be28f6623257f4beb0de340d9ebe3d821c079f402a9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Oct 2026 14:53:10 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.9547.tar --tag 26.10
# Tue, 13 Oct 2026 14:53:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 13 Oct 2026 14:53:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 13 Oct 2026 14:53:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 14:53:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-13T14:53:10.907747+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:53:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-13T14:53:10.907747+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:53:10 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.control_data.9547.tar
```

-	Layers:
	-	`sha256:c3f1e810a4fd5c79d0c67566f36945944b56e8d2ffc3c181c945ef3a297d07bd`  
		Last Modified: Tue, 13 Oct 2026 19:00:44 GMT  
		Size: 43.0 MB (43022437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea008b1b37badc5f9b48c508f749b20d6df3bda457af5b9eb0084f8928716c2`  
		Last Modified: Tue, 13 Oct 2026 19:00:47 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:stonking` - unknown; unknown

```console
$ docker pull ubuntu@sha256:c40d993581147f2e823b3e29f9c036542acb748114cd6239f74353c26a3e9384
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3769713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316a4e7b8c1639afe42449c7c764d6368dcf2c5f0e37024247a7c8f115388009`

```dockerfile
```

-	Layers:
	-	`sha256:c250b08da737bc999e1aee562b745507ec2b8b7b45ca7309aa3ff96acb6485bc`  
		Last Modified: Fri, 16 Oct 2026 23:34:49 GMT  
		Size: 3.8 MB (3769713 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:stonking` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:2a4eb50f4bf8ba8038a52c90b97936d3afc4c0952e1339e3f1c19459435b6e1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40209240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:372a6f8fefe752de169d8ac37cc86f42fc4dcc11cde7748fe22cfe813fa00b92`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Oct 2026 14:56:33 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.9617.tar --tag 26.10
# Tue, 13 Oct 2026 14:56:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 13 Oct 2026 14:56:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 13 Oct 2026 14:56:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 14:56:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-13T14:56:34.622170+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:56:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-13T14:56:34.622170+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:56:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.control_data.9617.tar
```

-	Layers:
	-	`sha256:5a183b82375b8969a4b65f11436e7bdf2b2ce33fe2f83a50838c7c3273d53262`  
		Last Modified: Tue, 13 Oct 2026 19:00:32 GMT  
		Size: 40.2 MB (40208851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a000e6158b817cf7eaa87f609aae442a0d7a3de65142827bc974a49940a4a54a`  
		Last Modified: Tue, 13 Oct 2026 19:00:35 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:stonking` - unknown; unknown

```console
$ docker pull ubuntu@sha256:c1f72002e2a8945eaa6f90a7da0070e6dcbc324313f2253dc134e170d396306e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3772044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0ccf4c1a0a9cdbfe87290988f62adb942c59e3f18746c8e74240cd1fbe61897`

```dockerfile
```

-	Layers:
	-	`sha256:728753eef52a0aa7cbc8b8e9fa15acdb0890f57249deef1e2fee259946c6b2cf`  
		Last Modified: Fri, 16 Oct 2026 23:35:08 GMT  
		Size: 3.8 MB (3772044 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:stonking` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:4219c91ebf0378e2cb78fdb441b1aa0787edf0438f721d28ba2445f9d2585e23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42163326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55cbe54e8cfb8d19979ebf66b372e97f7f571e7c0432d32b8b50d3f86ec2b229`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Oct 2026 14:56:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.9686.tar --tag 26.10
# Tue, 13 Oct 2026 14:56:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 13 Oct 2026 14:56:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 13 Oct 2026 14:56:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 14:56:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-13T14:56:12.653364+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:56:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-13T14:56:12.653364+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:56:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.control_data.9686.tar
```

-	Layers:
	-	`sha256:b3bfacf2b021b3166ab04e973786a30532c1eaf2b87d0171130204ee8612b556`  
		Last Modified: Tue, 13 Oct 2026 19:00:56 GMT  
		Size: 42.2 MB (42162921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c5c50a7e316144d434f14b5ad7204725c855864569933801a32ee58d930719`  
		Last Modified: Tue, 13 Oct 2026 19:00:59 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:stonking` - unknown; unknown

```console
$ docker pull ubuntu@sha256:dd911e277fd75d3ad093005e95bcbc879554c35b868a06d7e57d4280c4b7b6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3770756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:567cfb717ee26af9aacfccb18a39c4b917379e72a9a86173830f9fb805ac03b9`

```dockerfile
```

-	Layers:
	-	`sha256:9f7eebbb5e08f1b95f26fb6a0072eaeffd2cf606445a17f3dc00ca5f419a4aa2`  
		Last Modified: Fri, 16 Oct 2026 23:35:09 GMT  
		Size: 3.8 MB (3770756 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:stonking` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:c72e193b076cf16dd8767be2febb6064f92abfea838b42f575a0f3a4744136c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47753240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e62fc388c802c12f95477fc2ab41fb9bb3cb8ed7ac093579946c1314ee56ce1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Oct 2026 14:57:08 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.9485.tar --tag 26.10
# Tue, 13 Oct 2026 14:57:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 13 Oct 2026 14:57:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 13 Oct 2026 14:57:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 14:57:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-13T14:57:09.466446+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:57:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-13T14:57:09.466446+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:57:09 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.control_data.9485.tar
```

-	Layers:
	-	`sha256:106d57fb074d50a081260bb2be5dfffe4570c19d7368a8129f06ca08de7f8977`  
		Last Modified: Tue, 13 Oct 2026 19:01:18 GMT  
		Size: 47.8 MB (47752830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eb28996f64d5b2fb49786fc06da708aae722a5fa773da81c25344d3d092960f`  
		Last Modified: Tue, 13 Oct 2026 19:01:21 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:stonking` - unknown; unknown

```console
$ docker pull ubuntu@sha256:63b3711852d34fe77d1481a375c4f6ea2d11cf6e82ad4b2d6f0df6e61827ec41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3774284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2504681dec996dc7be343fbca79226004467530128bc82d1cc9f466a7e3562`

```dockerfile
```

-	Layers:
	-	`sha256:bed51fde55d0d433048d1d2d9bfbeb3a82a080b543c7ff761b23515b5dded616`  
		Last Modified: Sat, 17 Oct 2026 00:07:39 GMT  
		Size: 3.8 MB (3774284 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:stonking` - linux; riscv64

```console
$ docker pull ubuntu@sha256:f50f86d99c29129814ba567bcda4c397ab4ee2550cbed7505a217c96f6b6e695
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45801473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2983a3dcc16c45fd30fe0982c7d27c3acce1794a21f1c1a9b03d8c10adcde0c8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 13 Sep 2026 15:14:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/.temp_layer.9729.tar --tag 26.10
# Sun, 13 Sep 2026 15:14:39 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Sun, 13 Sep 2026 15:14:40 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Sun, 13 Sep 2026 15:14:40 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 13 Sep 2026 15:14:40 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-13T15:14:40.321896+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 13 Sep 2026 15:14:40 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-13T15:14:40.321896+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 13 Sep 2026 15:14:40 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/.temp_layer.control_data.9729.tar
```

-	Layers:
	-	`sha256:864b10f5e568e494d76dcf7ba3314eabafe2514b95a294b7f543f2ac7648cc37`  
		Last Modified: Sun, 13 Sep 2026 16:04:38 GMT  
		Size: 45.8 MB (45801078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b6f2fee55364861096d4bd24daf345b6fa94f32a8f30fb7e875be7ed694831`  
		Last Modified: Sun, 13 Sep 2026 16:04:41 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:stonking` - unknown; unknown

```console
$ docker pull ubuntu@sha256:85a27d77ea2d0e7729ff68e7855bbffe0c8582e85aac48422ad87092996a257a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee58a841ccf75ea27a99f2f4e9a5907d9cc24dbeb17b3e54f55abb7ca738f2c3`

```dockerfile
```

-	Layers:
	-	`sha256:9170b0b7b5ee9b71a8b78895c8cb43dabed5f4e6768598a51e659a47ec6d681f`  
		Last Modified: Fri, 18 Sep 2026 16:00:50 GMT  
		Size: 3.7 MB (3744162 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:stonking` - linux; s390x

```console
$ docker pull ubuntu@sha256:d60de999dd47bc7f7ce0be0572f4efc98d02d33348dca409438af7d3d13ef475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.5 MB (42532168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa845e8d51798dc5a5e25efa39dc6dcfce86ba6926eb470540e4c735cf382ab9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Oct 2026 14:55:57 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.9529.tar --tag 26.10
# Tue, 13 Oct 2026 14:55:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 13 Oct 2026 14:55:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 13 Oct 2026 14:55:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 14:55:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-13T14:55:58.162277+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:55:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-13T14:55:58.162277+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:55:58 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.control_data.9529.tar
```

-	Layers:
	-	`sha256:c5cb9c0ab52a2cffa72d690666f370eb63f5f87f09cd4dda888c87176160c29d`  
		Last Modified: Tue, 13 Oct 2026 19:01:30 GMT  
		Size: 42.5 MB (42531779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384b07ddc175dd5b077d468c6adc06322eb440b5206e17a5695a08ca6f31d223`  
		Last Modified: Tue, 13 Oct 2026 19:01:33 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:stonking` - unknown; unknown

```console
$ docker pull ubuntu@sha256:805798ab8cfceb57b8fa4b244bc9bfa5f0781063e4a597893488277115c36d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3772526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7062c6fff79bede23c61b4987e49acca4d73e1fb2a49d8b585605b13bf1cd4a7`

```dockerfile
```

-	Layers:
	-	`sha256:80fb37e2a681b30c08d84495b87c1849a9deed6ab8062305d2e1a0207e6c0374`  
		Last Modified: Fri, 16 Oct 2026 23:33:35 GMT  
		Size: 3.8 MB (3772526 bytes)  
		MIME: application/vnd.in-toto+json
