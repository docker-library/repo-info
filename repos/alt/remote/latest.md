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
