<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `alt`

-	[`alt:latest`](#altlatest)
-	[`alt:p10`](#altp10)
-	[`alt:p9`](#altp9)
-	[`alt:sisyphus`](#altsisyphus)

## `alt:latest`

```console
$ docker pull alt@sha256:046572b67bf805d9c23783336708f725ffd785f1441707a049d42cc4a0505053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 5
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `alt:latest` - linux; amd64

```console
$ docker pull alt@sha256:97dba12adea4acad4a296241eac35a79bde8cff395c7143faf216547add01a7c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43323428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff2762c6c8cc9468e0651364e4347aa5c769d78541406209e9ab74717f29e641`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 04 Aug 2021 22:28:37 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 15 Nov 2022 01:19:47 GMT
ADD file:7ea70173d4e453b064201ce051487f497275977a3fba5bceb865b781c9cc2cb1 in / 
# Tue, 15 Nov 2022 01:19:48 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 15 Nov 2022 01:19:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:cedd146c7d3576ab3f9d574dce334d75cecafbc00fc62f0efed2b79b0a6b809b`  
		Last Modified: Tue, 15 Nov 2022 01:20:25 GMT  
		Size: 43.3 MB (43323240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab3f32062356d13a02d5fd291ea93f8daa3bdb2e45f5d0a98ce8dd13882f0c1`  
		Last Modified: Tue, 15 Nov 2022 01:20:19 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alt:latest` - linux; arm variant v7

```console
$ docker pull alt@sha256:f3c51926ccaa120a97f63b4520f221795c0aded031cabd676687e2dc19480bef
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 MB (39597975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e2d953ae9030f0ffd7c9b040cda4a315dcd107c2d1fa38e64dd24bc2c0c63d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 15 Nov 2022 00:57:20 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 15 Nov 2022 00:57:24 GMT
ADD file:c70c5c83b34188442c85c6e916340d7dc04c4a4c9bcb49c8ce7458374e059991 in / 
# Tue, 15 Nov 2022 00:57:25 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 15 Nov 2022 00:57:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c6afd7e5b94c438aedbdc2acf6ddecbd8582556fcef9c67dff3f1ee49fc9e2aa`  
		Last Modified: Tue, 15 Nov 2022 00:58:14 GMT  
		Size: 39.6 MB (39597784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625b26cfec9b7f88374164c6c42b8d74a4cc1543a36a28d5b5b1f546f2b0325d`  
		Last Modified: Tue, 15 Nov 2022 00:58:07 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alt:latest` - linux; arm64 variant v8

```console
$ docker pull alt@sha256:2a0b27764f7d6d4f8960645a838096bfb6574b7c4203aeab5a46f1e65eb8c472
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.5 MB (42498138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54f673b6fc6b4b5367eb817a2aca4c872709fc1de39e3af8eb3a98fd91256cd2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 15 Nov 2022 01:39:36 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 15 Nov 2022 01:39:38 GMT
ADD file:c4442674da6c28c660a07c04bd0ebf94cd82a39b90c75759dd0a336883d30a19 in / 
# Tue, 15 Nov 2022 01:39:38 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 15 Nov 2022 01:39:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d2e7bf26a6b886b4a10523487f34a1bcbb5fdcd10c67252e9d391f26e961f4c6`  
		Last Modified: Tue, 15 Nov 2022 01:40:07 GMT  
		Size: 42.5 MB (42497950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b305e6101ef7058879b4904191f04f2c362a5dc5571ec65a0e63a0d85949f8bd`  
		Last Modified: Tue, 15 Nov 2022 01:40:02 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alt:latest` - linux; 386

```console
$ docker pull alt@sha256:5a3c0954d952662127c42567de1d853bb07e30e0eeb0bcc4fd121823aa953804
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43966323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ce1f63f51072c3b60954bce0a95eec73a1d7ca7e92f3ff123be2fea8e8c95c8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 06 Jun 2022 17:38:38 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 15 Nov 2022 01:38:52 GMT
ADD file:f45b7e2f95462e0a1b0dbbf6e648fef211bfe8cb22d176226f876a4e9161fbd3 in / 
# Tue, 15 Nov 2022 01:38:53 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 15 Nov 2022 01:38:54 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b97f1b0ac3e4b43a32b230e98481eefe82aad69894e6d7e94dede993c568e1c7`  
		Last Modified: Tue, 15 Nov 2022 01:39:40 GMT  
		Size: 44.0 MB (43966131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19151fd345f3946799a2014402cbaa2be9363a5f1b043143264ebebe3234011`  
		Last Modified: Tue, 15 Nov 2022 01:39:31 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alt:latest` - linux; ppc64le

```console
$ docker pull alt@sha256:7e81840050f3bf8a42a1ab70ab6bc4f08a5a9d4f7660993751a551b0ffde484b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 MB (46295961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c95b5f8b0f18194e2f836904604275c1b5741688454db864aa1928ade2e6a8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 15 Nov 2022 01:16:44 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 15 Nov 2022 01:16:50 GMT
ADD file:7d352011b2e362f230b1851b5d411525ded2801021efda364b3f09d8ec94c0d3 in / 
# Tue, 15 Nov 2022 01:16:53 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 15 Nov 2022 01:16:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:553d76692e71b90a8266ee51f98ff9ca3c0dbe07d4224d29ccc37be1ee2ee4d1`  
		Last Modified: Tue, 15 Nov 2022 01:17:55 GMT  
		Size: 46.3 MB (46295770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34078f28f854996946fc1673520636dbc4b2e303a9ace5ed50f4a1731a805a33`  
		Last Modified: Tue, 15 Nov 2022 01:17:42 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `alt:p10`

```console
$ docker pull alt@sha256:046572b67bf805d9c23783336708f725ffd785f1441707a049d42cc4a0505053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 5
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `alt:p10` - linux; amd64

```console
$ docker pull alt@sha256:97dba12adea4acad4a296241eac35a79bde8cff395c7143faf216547add01a7c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43323428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff2762c6c8cc9468e0651364e4347aa5c769d78541406209e9ab74717f29e641`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 04 Aug 2021 22:28:37 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 15 Nov 2022 01:19:47 GMT
ADD file:7ea70173d4e453b064201ce051487f497275977a3fba5bceb865b781c9cc2cb1 in / 
# Tue, 15 Nov 2022 01:19:48 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 15 Nov 2022 01:19:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:cedd146c7d3576ab3f9d574dce334d75cecafbc00fc62f0efed2b79b0a6b809b`  
		Last Modified: Tue, 15 Nov 2022 01:20:25 GMT  
		Size: 43.3 MB (43323240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab3f32062356d13a02d5fd291ea93f8daa3bdb2e45f5d0a98ce8dd13882f0c1`  
		Last Modified: Tue, 15 Nov 2022 01:20:19 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alt:p10` - linux; arm variant v7

```console
$ docker pull alt@sha256:f3c51926ccaa120a97f63b4520f221795c0aded031cabd676687e2dc19480bef
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 MB (39597975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e2d953ae9030f0ffd7c9b040cda4a315dcd107c2d1fa38e64dd24bc2c0c63d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 15 Nov 2022 00:57:20 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 15 Nov 2022 00:57:24 GMT
ADD file:c70c5c83b34188442c85c6e916340d7dc04c4a4c9bcb49c8ce7458374e059991 in / 
# Tue, 15 Nov 2022 00:57:25 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 15 Nov 2022 00:57:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c6afd7e5b94c438aedbdc2acf6ddecbd8582556fcef9c67dff3f1ee49fc9e2aa`  
		Last Modified: Tue, 15 Nov 2022 00:58:14 GMT  
		Size: 39.6 MB (39597784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625b26cfec9b7f88374164c6c42b8d74a4cc1543a36a28d5b5b1f546f2b0325d`  
		Last Modified: Tue, 15 Nov 2022 00:58:07 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alt:p10` - linux; arm64 variant v8

```console
$ docker pull alt@sha256:2a0b27764f7d6d4f8960645a838096bfb6574b7c4203aeab5a46f1e65eb8c472
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.5 MB (42498138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54f673b6fc6b4b5367eb817a2aca4c872709fc1de39e3af8eb3a98fd91256cd2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 15 Nov 2022 01:39:36 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 15 Nov 2022 01:39:38 GMT
ADD file:c4442674da6c28c660a07c04bd0ebf94cd82a39b90c75759dd0a336883d30a19 in / 
# Tue, 15 Nov 2022 01:39:38 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 15 Nov 2022 01:39:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d2e7bf26a6b886b4a10523487f34a1bcbb5fdcd10c67252e9d391f26e961f4c6`  
		Last Modified: Tue, 15 Nov 2022 01:40:07 GMT  
		Size: 42.5 MB (42497950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b305e6101ef7058879b4904191f04f2c362a5dc5571ec65a0e63a0d85949f8bd`  
		Last Modified: Tue, 15 Nov 2022 01:40:02 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alt:p10` - linux; 386

```console
$ docker pull alt@sha256:5a3c0954d952662127c42567de1d853bb07e30e0eeb0bcc4fd121823aa953804
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43966323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ce1f63f51072c3b60954bce0a95eec73a1d7ca7e92f3ff123be2fea8e8c95c8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 06 Jun 2022 17:38:38 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 15 Nov 2022 01:38:52 GMT
ADD file:f45b7e2f95462e0a1b0dbbf6e648fef211bfe8cb22d176226f876a4e9161fbd3 in / 
# Tue, 15 Nov 2022 01:38:53 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 15 Nov 2022 01:38:54 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b97f1b0ac3e4b43a32b230e98481eefe82aad69894e6d7e94dede993c568e1c7`  
		Last Modified: Tue, 15 Nov 2022 01:39:40 GMT  
		Size: 44.0 MB (43966131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19151fd345f3946799a2014402cbaa2be9363a5f1b043143264ebebe3234011`  
		Last Modified: Tue, 15 Nov 2022 01:39:31 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alt:p10` - linux; ppc64le

```console
$ docker pull alt@sha256:7e81840050f3bf8a42a1ab70ab6bc4f08a5a9d4f7660993751a551b0ffde484b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 MB (46295961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c95b5f8b0f18194e2f836904604275c1b5741688454db864aa1928ade2e6a8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 15 Nov 2022 01:16:44 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 15 Nov 2022 01:16:50 GMT
ADD file:7d352011b2e362f230b1851b5d411525ded2801021efda364b3f09d8ec94c0d3 in / 
# Tue, 15 Nov 2022 01:16:53 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 15 Nov 2022 01:16:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:553d76692e71b90a8266ee51f98ff9ca3c0dbe07d4224d29ccc37be1ee2ee4d1`  
		Last Modified: Tue, 15 Nov 2022 01:17:55 GMT  
		Size: 46.3 MB (46295770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34078f28f854996946fc1673520636dbc4b2e303a9ace5ed50f4a1731a805a33`  
		Last Modified: Tue, 15 Nov 2022 01:17:42 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `alt:p9`

```console
$ docker pull alt@sha256:834342648168ce0a187422a9846091e8afb40cdf31d39df7c5680635f89d3426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 5
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `alt:p9` - linux; amd64

```console
$ docker pull alt@sha256:0230f5de985a64c0d1ea3d39ff89f9e20f3ab8b8e254fc802d104e76a786b9ec
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43114837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f31c71976ac8353dbc12eb4a0fa6b23ece477fd8762e6af323ecd080209f8e25`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 04 Aug 2021 22:28:37 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 15 Nov 2022 01:19:57 GMT
ADD file:1662ab5f18101b15baac8468369b39f8e5ae88fee78fe5af50de9a7b99d0c809 in / 
# Tue, 15 Nov 2022 01:19:58 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 15 Nov 2022 01:19:58 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d6c203cdfd18bb8e17c51689c81bd180cad006d9581b8bb38d66ebfe6c01628f`  
		Last Modified: Tue, 15 Nov 2022 01:20:39 GMT  
		Size: 43.1 MB (43114645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b97c93bfd9845ec32b965a7364ef132d6418879b5ae6f5b1aa257e007374ade`  
		Last Modified: Tue, 15 Nov 2022 01:20:33 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alt:p9` - linux; arm variant v7

```console
$ docker pull alt@sha256:d5479eaa4170e4a829e00a3b23282fad89f2d9493da2cc50e79cecf74777557e
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.6 MB (38606896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72cbac9964614ce9ee65b831f24f454df7ad174b3a0e9a327d81d9eba6516e67`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 15 Nov 2022 00:57:20 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 15 Nov 2022 00:57:36 GMT
ADD file:b10e910754013029b233d9684a6f228239d71e9291d8c01313847932117173c0 in / 
# Tue, 15 Nov 2022 00:57:37 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 15 Nov 2022 00:57:37 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d8ab157a0e9c8fb31e0146aabfd8e208f18e138984eafdc301cf624f3257012a`  
		Last Modified: Tue, 15 Nov 2022 00:58:31 GMT  
		Size: 38.6 MB (38606705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e70553598a01e85abe9d076ff2f2c2f2a0e994d01266be6d8383731a2ee24b`  
		Last Modified: Tue, 15 Nov 2022 00:58:24 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alt:p9` - linux; arm64 variant v8

```console
$ docker pull alt@sha256:54c2bbf6678a19964ccc178474f4718293bd96d044950ca7fb6efe79785b06ee
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.9 MB (41897079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7be219a20410b95496ab910ee9e1911d6240563fc62f2041a9cf9934af4c4c5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 15 Nov 2022 01:39:36 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 15 Nov 2022 01:39:45 GMT
ADD file:b4e82b8097f538404d7d0001b669ac0a1c4a81876c66d20a9bd8c5128aaca3e7 in / 
# Tue, 15 Nov 2022 01:39:46 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 15 Nov 2022 01:39:46 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:51aa60636606f534d1ee0dd1f510a190dce0d50a7ec8b043f0c262070a9fa6b4`  
		Last Modified: Tue, 15 Nov 2022 01:40:20 GMT  
		Size: 41.9 MB (41896886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2e6f002f921e1843fda392ef4b7215587102d1019d273944c748adb4a5abb6`  
		Last Modified: Tue, 15 Nov 2022 01:40:15 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alt:p9` - linux; 386

```console
$ docker pull alt@sha256:e09983722d46e6f61c1f12a167dd92efedf29df536bc1f677dc14ff2b3a929ee
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.2 MB (43246125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4939b891c61c6c98eb4db1d8e2168993ce5af6062c7138b37b7a50d785e8355`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 06 Jun 2022 17:38:38 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 15 Nov 2022 01:39:03 GMT
ADD file:134bb706cf16209d845d91a01c13b609a91797381576faa73bfa527e28a2c0a1 in / 
# Tue, 15 Nov 2022 01:39:04 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 15 Nov 2022 01:39:05 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a228b5837db9ee1e16f24ff5cc9d0c69091a203e54ce3ad0aac364929ab28e2c`  
		Last Modified: Tue, 15 Nov 2022 01:39:55 GMT  
		Size: 43.2 MB (43245932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:088c422da3cd31184a393c8c0259aea672c9fc1f7a57308cd72b4cb0e87f887c`  
		Last Modified: Tue, 15 Nov 2022 01:39:49 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alt:p9` - linux; ppc64le

```console
$ docker pull alt@sha256:d3fc48fcfe91dba82c3a6736d7f2ed98f3064b17a3e9b1a5603b94f300424145
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46843734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:236f6575457954fd14507892ab16b7296f6a241c14bf6c22e39828f8d6be5263`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 15 Nov 2022 01:16:44 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 15 Nov 2022 01:17:06 GMT
ADD file:42dada0fd1bedbc7e442ec25fc01e1b943e52740183c39db0d1eccd5c1e665e9 in / 
# Tue, 15 Nov 2022 01:17:09 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 15 Nov 2022 01:17:10 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:99f4f80f97de6ef40bee6bc8360f09991b9338eecb687b7d63f7071b343e0ec1`  
		Last Modified: Tue, 15 Nov 2022 01:18:17 GMT  
		Size: 46.8 MB (46843541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49dea51ddc8745fada2addf0b186bc7a829ff5e69229ff677e21fe3d1f30c0f0`  
		Last Modified: Tue, 15 Nov 2022 01:18:05 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
