## `alt:sisyphus`

```console
$ docker pull alt@sha256:7ef584814021b6b98564215dfe4a4b51a51cea9bf80bcc6de1ce2e9d273b44ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 5
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `alt:sisyphus` - linux; amd64

```console
$ docker pull alt@sha256:063e35ca0183cfa2d98d5cdbe2ec8acacef1ae90c5e17e592f8036cdd2edcefd
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.8 MB (39788098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e95a3608a848ce6e926cee92821fa1d6e1125f939e2c21850197e9196becf9d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 04 Aug 2021 22:28:37 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 15 Nov 2022 01:20:06 GMT
ADD file:fdb1b94f89be9d43a9661907ff2924e1ff6b7a5ec184a4f90ec81606381d5bb8 in / 
# Tue, 15 Nov 2022 01:20:07 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 15 Nov 2022 01:20:07 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3fa75f5396438293b230ea15e5a772ee709a82c8353f6fb97d4b2aa848ac6a83`  
		Last Modified: Tue, 15 Nov 2022 01:20:51 GMT  
		Size: 39.8 MB (39787906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4faa8b65574d09c4f2f04bbe6c1f54bf8313c1aabdba168aacddda919855fccb`  
		Last Modified: Tue, 15 Nov 2022 01:20:45 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alt:sisyphus` - linux; arm variant v7

```console
$ docker pull alt@sha256:3052e8b08f5790cf54886173ef3d76761bcf656e03a07d01b0d59f1a7b0a0b4d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36565979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78f82a54eeeec3d4fbc8141c3c949f548163099184f14c1be9fe4b2c17332a6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 15 Nov 2022 00:57:20 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 15 Nov 2022 00:57:47 GMT
ADD file:68303bcb4e6e46984292cc1bcd76c055370bcb8130fd91060a88cf3b213cc6b9 in / 
# Tue, 15 Nov 2022 00:57:48 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 15 Nov 2022 00:57:48 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:38a5fafaff60c273b4326ab547adbc4d0fb299b27b70b6eaa416a9190d57b2fd`  
		Last Modified: Tue, 15 Nov 2022 00:58:45 GMT  
		Size: 36.6 MB (36565786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703ebe3f1790394fe341d6cb9515e21dac29645f45aab7ce8e8d2532458da704`  
		Last Modified: Tue, 15 Nov 2022 00:58:38 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alt:sisyphus` - linux; arm64 variant v8

```console
$ docker pull alt@sha256:716774decc6f569affd0a929cb9f4b3cff7cb93a9a32931b2c5eca1e11c0de5d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38093695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0894c0e5362608c22f3de307c1f55d9d2eddbe197b3f409eba9a937aa57e8e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 15 Nov 2022 01:39:36 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 15 Nov 2022 01:39:52 GMT
ADD file:cdc41ec84dce7c303c9e17c99d9ea8bf8f0ce39b54d4ab5e895bad457e2d19bf in / 
# Tue, 15 Nov 2022 01:39:52 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 15 Nov 2022 01:39:52 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5ba571e9d99e7bb34cd62a85561492216e4a54125b9deb92b1b582a8cf1c0936`  
		Last Modified: Tue, 15 Nov 2022 01:40:30 GMT  
		Size: 38.1 MB (38093505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba408e33df46cf67e1503cd5c51a8f43f81cf795112d9698140dcdaf3274a324`  
		Last Modified: Tue, 15 Nov 2022 01:40:25 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alt:sisyphus` - linux; 386

```console
$ docker pull alt@sha256:3d82698074ba6607e20823b776d26d0388671ac6adea8c2206a2cc12720ec240
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 MB (39913937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b9e440c88f16d66d04bec9aff726181b6685c75f2ed61577140f3d49d52154`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 06 Jun 2022 17:38:38 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 15 Nov 2022 01:39:14 GMT
ADD file:eb9d9f9bdff609429e97386463285ea72bf3f04d9404ec1818dda9ab71409bfc in / 
# Tue, 15 Nov 2022 01:39:15 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 15 Nov 2022 01:39:16 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ae5ad96d8fa58f7e95dbc9095e437192a553bd477758c67c90d0735b360347a9`  
		Last Modified: Tue, 15 Nov 2022 01:40:07 GMT  
		Size: 39.9 MB (39913746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b787de1fa6dec9f38fbeb6dcf2ba27b7513cd3e0e2ebca69db3d64f5e5c641e8`  
		Last Modified: Tue, 15 Nov 2022 01:40:02 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alt:sisyphus` - linux; ppc64le

```console
$ docker pull alt@sha256:c310179a59438e1581bd4fa453db9cdd11cff26e26f9c5f5faad205735288614
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (42034481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ef58c0c412f3677d4dd34c177e751a30512bce7bb048cfd3fb0069ef704dd6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 15 Nov 2022 01:16:44 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 15 Nov 2022 01:17:23 GMT
ADD file:0833e0c5e7b640713f46c56cf3ccd48d7ce4ce6f247647e7cef328d8d26b3622 in / 
# Tue, 15 Nov 2022 01:17:26 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 15 Nov 2022 01:17:27 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:fe8464cb62934c047b0218ee3f921e132798ebb09bd522927abc03bca38795d6`  
		Last Modified: Tue, 15 Nov 2022 01:18:35 GMT  
		Size: 42.0 MB (42034288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5301f457babb1ce021b3c9ac0c3c6afd1b68ae638f1d8816b186ff4f9473e7`  
		Last Modified: Tue, 15 Nov 2022 01:18:24 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
