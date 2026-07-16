## `ubuntu:stonking`

```console
$ docker pull ubuntu@sha256:8b25da4fff212382a4d693c6ca65599350f847e8cb39113f3e9d261bee24c167
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
$ docker pull ubuntu@sha256:bb545a234ade8e929bf1f12d475d3472c4ed221e1f1c0a0c7ba8165b64da7729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.7 MB (41718549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddf17c91c25beadae4d3d07aa6720321408a7065ab8516a08f71e1a287c76c47`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 05 Jul 2026 05:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/.temp_layer.8959.tar --tag 26.10
# Sun, 05 Jul 2026 05:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Sun, 05 Jul 2026 05:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Sun, 05 Jul 2026 05:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 05 Jul 2026 05:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-05T05:02:45.701705+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 05 Jul 2026 05:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-05T05:02:45.701705+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 05 Jul 2026 05:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/.temp_layer.control_data.8959.tar
```

-	Layers:
	-	`sha256:494b6931e23142385eb9e3736ba64fc4cd099834296ad198612dfa997b22c465`  
		Last Modified: Sun, 05 Jul 2026 06:07:39 GMT  
		Size: 41.7 MB (41718141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d5d62685fc4d1087c915506b2d8c92e07a8fa1bd3ba8ffe2d11b62e8193df68`  
		Last Modified: Sun, 05 Jul 2026 06:07:41 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:stonking` - unknown; unknown

```console
$ docker pull ubuntu@sha256:a3d3650ae30459266e7d7af36b34041713b5555639509c8904f22cea0fc1ae20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3709917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2edf74d92d1cbba3965d20310f5895f992457c2324ed07cceaec8cf0efb5370b`

```dockerfile
```

-	Layers:
	-	`sha256:7ad5402606ee04506e59550cc53901a8a72ccd1272384e1cee968d15c9697700`  
		Last Modified: Thu, 16 Jul 2026 00:19:26 GMT  
		Size: 3.7 MB (3709917 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:stonking` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:394966275ff5e8a815d8455a2db135e953574ff05acf4ffaa3c3ee7b6f99afad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38882304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c62fb2fe9e4240f4368a759e294efcbb7592f06d4f5f2cb015556b4712c8a859`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 05 Jul 2026 05:05:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/.temp_layer.9137.tar --tag 26.10
# Sun, 05 Jul 2026 05:05:19 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Sun, 05 Jul 2026 05:05:19 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Sun, 05 Jul 2026 05:05:19 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 05 Jul 2026 05:05:19 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-05T05:05:19.167297+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 05 Jul 2026 05:05:19 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-05T05:05:19.167297+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 05 Jul 2026 05:05:19 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/.temp_layer.control_data.9137.tar
```

-	Layers:
	-	`sha256:979cdb850e04fcaea1e28f20bdc9691a369068ffaef8aa02bcc614b34dc00a63`  
		Last Modified: Sun, 05 Jul 2026 06:07:28 GMT  
		Size: 38.9 MB (38881916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:945fdfea6eae770ad46266121d06c9dfecb814a12bc32f98d1bfce82d6863149`  
		Last Modified: Sun, 05 Jul 2026 06:07:31 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:stonking` - unknown; unknown

```console
$ docker pull ubuntu@sha256:fd0235b661c914dfb7a97e1a36d6a06042bb1b81558687e2123eb2ecc2a01463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3711296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ec4bfc004e3f23a3e7d60ff32002d459f2eb768d4e01d75ad87763197c8cf97`

```dockerfile
```

-	Layers:
	-	`sha256:77385d9edee187385129274127290da33273206819839f8fe73040d7fdd4415f`  
		Last Modified: Thu, 16 Jul 2026 00:19:06 GMT  
		Size: 3.7 MB (3711296 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:stonking` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:4325477120f803fda56ff49f6d773c083ff0fe4110fe62369bf947b3eb00b145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40849883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778e929c410b8d1eac1895acc06107b7ec3b13f10894165d86dce4cc08e156fd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 22 Jun 2026 04:11:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-5e673d00213e26fe0ce5fd34e3540417/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-5e673d00213e26fe0ce5fd34e3540417/images/.temp_layer.9009.tar --tag 26.10
# Mon, 22 Jun 2026 04:11:27 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-5e673d00213e26fe0ce5fd34e3540417/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Mon, 22 Jun 2026 04:11:27 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-5e673d00213e26fe0ce5fd34e3540417/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Mon, 22 Jun 2026 04:11:27 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-5e673d00213e26fe0ce5fd34e3540417/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 Jun 2026 04:11:27 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-5e673d00213e26fe0ce5fd34e3540417/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-22T04:11:27.837376+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 22 Jun 2026 04:11:27 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-5e673d00213e26fe0ce5fd34e3540417/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-22T04:11:27.837376+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 22 Jun 2026 04:11:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-5e673d00213e26fe0ce5fd34e3540417/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-5e673d00213e26fe0ce5fd34e3540417/images/.temp_layer.control_data.9009.tar
```

-	Layers:
	-	`sha256:905e560271effcc83ca046d1e44a87e4f1aa754ede93b7245f596811f2890ea9`  
		Last Modified: Mon, 22 Jun 2026 05:45:41 GMT  
		Size: 40.8 MB (40849496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83bb0aa43a79790bc6a906bf4bb1785d7f114b118d3583e7da05cf7348d83693`  
		Last Modified: Mon, 22 Jun 2026 05:45:44 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:stonking` - unknown; unknown

```console
$ docker pull ubuntu@sha256:6f953a8b93c019b1cd88960eea03182c0fd9f943fd212f3cc300a4498eb1d028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3710140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0d97bae16c18372ce688350960f9bde3d18adebda5bda67485bc6f7cc20df3f`

```dockerfile
```

-	Layers:
	-	`sha256:b87054ac1c22b7963742c94d5207488d784ef28dd8820dd117b5bd63afae23ff`  
		Last Modified: Thu, 02 Jul 2026 01:08:50 GMT  
		Size: 3.7 MB (3710140 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:stonking` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:ccfe3af4a4a0c797f66d24f40f3014d9db2bb24c9742de334c11ec7bcda5f251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46903610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f20d14776fcab766557a726e3a84dfe3b2202d831e0c65f807ee16aa62ccff7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 05 Jul 2026 05:05:19 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/.temp_layer.8953.tar --tag 26.10
# Sun, 05 Jul 2026 05:05:20 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Sun, 05 Jul 2026 05:05:20 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Sun, 05 Jul 2026 05:05:20 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 05 Jul 2026 05:05:20 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-05T05:05:20.176803+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 05 Jul 2026 05:05:20 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-05T05:05:20.176803+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 05 Jul 2026 05:05:20 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/.temp_layer.control_data.8953.tar
```

-	Layers:
	-	`sha256:78b60d48005aa89560ed425be09b8751f399ecbac2293b4395c3afdc22b7aba5`  
		Last Modified: Sun, 05 Jul 2026 06:08:08 GMT  
		Size: 46.9 MB (46903219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:559384570ea8794da3138e5a4337569d73ed531418fd040bd8974e9f2dce59ce`  
		Last Modified: Sun, 05 Jul 2026 06:08:11 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:stonking` - unknown; unknown

```console
$ docker pull ubuntu@sha256:b66b6453ffe5872c4b62627e0ea8e4ddb862a48ea0bb528962c324e0882ffe24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3713442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d16f0882af105911d77be13cda3d09d71ccf985714ac802d8e76c08fa8e405fb`

```dockerfile
```

-	Layers:
	-	`sha256:87760780f2c481410bb8c265e0dd1dda8b66989a4835d026c2c6afb55c8b6176`  
		Last Modified: Thu, 16 Jul 2026 00:18:56 GMT  
		Size: 3.7 MB (3713442 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:stonking` - linux; riscv64

```console
$ docker pull ubuntu@sha256:117bda27f6366abb5a4ac591f240704e6223b19a4b36a0439650ff16cc7ca1b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42359698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f68ade5a462b9cb6cdbe984256e4b572e3c62c0d5c628774c4199160804ec27`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 22 Jun 2026 05:15:22 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-5e673d00213e26fe0ce5fd34e3540417/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-5e673d00213e26fe0ce5fd34e3540417/images/.temp_layer.9034.tar --tag 26.10
# Mon, 22 Jun 2026 05:15:31 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-5e673d00213e26fe0ce5fd34e3540417/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Mon, 22 Jun 2026 05:15:31 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-5e673d00213e26fe0ce5fd34e3540417/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Mon, 22 Jun 2026 05:15:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-5e673d00213e26fe0ce5fd34e3540417/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 Jun 2026 05:15:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-5e673d00213e26fe0ce5fd34e3540417/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-22T05:15:32.273824+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 22 Jun 2026 05:15:33 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-5e673d00213e26fe0ce5fd34e3540417/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-22T05:15:32.273824+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 22 Jun 2026 05:15:33 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-5e673d00213e26fe0ce5fd34e3540417/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-5e673d00213e26fe0ce5fd34e3540417/images/.temp_layer.control_data.9034.tar
```

-	Layers:
	-	`sha256:646576359027cf6b890aec91d73697934848bb91e046842a4d7921b180901c2c`  
		Last Modified: Mon, 22 Jun 2026 05:45:51 GMT  
		Size: 42.4 MB (42359305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6aa77a84484aaf6d7d08eb71d7a55351ea7a73c42f508bbe7a9f428579906c`  
		Last Modified: Mon, 22 Jun 2026 05:45:54 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:stonking` - unknown; unknown

```console
$ docker pull ubuntu@sha256:eb69b0c0783c873b1ef538de31496334556bcd747e5ce7e20ac32e20808d8c1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3702896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70aff3c44e57db0bf2ab9229de6b81427063a46c1913c4be3027d467380ca13a`

```dockerfile
```

-	Layers:
	-	`sha256:315413d35e0b0aded4ee85b9f469ddaf89cb17935ca84e54adcb6a48bb600327`  
		Last Modified: Thu, 02 Jul 2026 01:18:48 GMT  
		Size: 3.7 MB (3702896 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:stonking` - linux; s390x

```console
$ docker pull ubuntu@sha256:b92fd5d85f85c7289663e750f202f04a0599965d98b7ae16244027f9e508d59e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41304679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:095c862d7cf91c54879845315d3eacec6c14c17685c2fcb24c59c295f71f4650`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 05 Jul 2026 05:06:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/.temp_layer.9048.tar --tag 26.10
# Sun, 05 Jul 2026 05:06:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Sun, 05 Jul 2026 05:06:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Sun, 05 Jul 2026 05:06:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 05 Jul 2026 05:06:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-05T05:06:45.369521+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 05 Jul 2026 05:06:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-05T05:06:45.369521+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 05 Jul 2026 05:06:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/.temp_layer.control_data.9048.tar
```

-	Layers:
	-	`sha256:b1ae513063a3259629bbdf65b97f9209febd48c54b2630a21e995f38111a93bb`  
		Last Modified: Sun, 05 Jul 2026 06:08:18 GMT  
		Size: 41.3 MB (41304292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd32bb1cae263ec245a2bab33c4f5866723e16da0a1f83daecbaa5850a44ad2e`  
		Last Modified: Sun, 05 Jul 2026 06:08:21 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:stonking` - unknown; unknown

```console
$ docker pull ubuntu@sha256:01ada6f36fb92e74c528196780fb2959bb027dad9a401f72374b19ae0530576d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3711982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690fd73c1687b56e3e0eea67f70cf6c154ab212c634c6a774175acae75d8763a`

```dockerfile
```

-	Layers:
	-	`sha256:9ac22d0e84e20a6a41a4c97587e9a5c086132a73db99755f2fe43c4a358c6aaf`  
		Last Modified: Thu, 16 Jul 2026 00:17:42 GMT  
		Size: 3.7 MB (3711982 bytes)  
		MIME: application/vnd.in-toto+json
