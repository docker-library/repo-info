## `buildpack-deps:bookworm-scm`

```console
$ docker pull buildpack-deps@sha256:253c27d109e7eaf7afa46bae075328f999177ed830b8428247973849882e8da1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `buildpack-deps:bookworm-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:7f1df9258f51f0379175ec1c069f66b5b93b4b86c8a2e796a084cfc689262160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136832139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b46e7a5115171749562fa4655ef2f054c42652da6462f60682336ac34b2cf8a0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:20:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db1d5603818e4025d8c8e4b5578914535e7e3466d860768e69f957f49fc5fac8`  
		Last Modified: Tue, 24 Nov 2026 05:21:02 GMT  
		Size: 64.4 MB (64432507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d59ecd5fd056b1ce29caadc1282583a8a9e44558bf2450b0e6b849ec3b0ab473
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7975917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a24410f55a4c01dd50398377289ca1d77bcaf7f50338ec829989796b607f500`

```dockerfile
```

-	Layers:
	-	`sha256:f87ffeac02c98fd5dd4cd549c0aa846efa89a7c55b840771f013d457ff1076e2`  
		Last Modified: Tue, 24 Nov 2026 05:21:00 GMT  
		Size: 8.0 MB (7968607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d13bbd156710b85554e00b2c93868d268e236e701f43f04a444db802f16e482a`  
		Last Modified: Tue, 24 Nov 2026 05:21:00 GMT  
		Size: 7.3 KB (7310 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:4ac6cfbe653fa4af3e12d220accfbab771bce69a0acdf88a812c4ac2c19f8212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.7 MB (125690011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bd37799505b4ad980ab7107269f96d538548776420f6523f5b33f6a12f020fb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:15:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:41:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:bf46e8a44ab51f3c808ab48aaf11399ad2da7d0966cd41620337234ab118fa7f`  
		Last Modified: Tue, 24 Nov 2026 03:39:44 GMT  
		Size: 44.2 MB (44223203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd6ac0d814892f590af7533060e7d411f4b069b41846d6b77643c1ec671212d`  
		Last Modified: Tue, 24 Nov 2026 05:16:06 GMT  
		Size: 21.8 MB (21769445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22aecb817db0f9e40c6e19edcff5610744501481756bfd0fbc3b3cfe54d407ef`  
		Last Modified: Tue, 24 Nov 2026 06:42:14 GMT  
		Size: 59.7 MB (59697363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9099a4e2b38c4a63dee160c3f4c57c00e742d0e30fb4b7c44bea60ff774c8bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7977258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2518d5a7e03aad831b13f085447f2fd16df4db20cc8332ba2c701d6daabcb7ce`

```dockerfile
```

-	Layers:
	-	`sha256:81d2d6c041d724fd9c65a3e1d499f35d31f10d5b5f90657fce77965182ec43fa`  
		Last Modified: Tue, 24 Nov 2026 06:42:13 GMT  
		Size: 8.0 MB (7969884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c69d7e32d5539b3f83fc9604d483874fb8bd941db4fa2a7abcd6b37a9da9a69`  
		Last Modified: Tue, 24 Nov 2026 06:42:13 GMT  
		Size: 7.4 KB (7374 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:d9fa089b548818a571c07903daffdda163d38b0c835915967a381285b9a993cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136381179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fcafab129974025315b5ec9fab4c8b64e0081c78ea17344f6beceba07d75834`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:32:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41e80db409d5b905f3c0d8228a2f82637b923bf2af30b11e87cb3b42e5e070d7`  
		Last Modified: Tue, 24 Nov 2026 04:43:36 GMT  
		Size: 23.4 MB (23440379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4d528de4b5383d96c1d03b858675d089f6dffcb1103cda3766265f17482fda`  
		Last Modified: Tue, 24 Nov 2026 05:32:20 GMT  
		Size: 64.5 MB (64528539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f2eb9a7b9360983ae2b70e4e7a6e4d32aeff1b0955c50138cf7cb7456d3368d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7982389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e373ac60843d64368bb046863a417a799ea801d0f03ba8360dd95b6eb0d3827`

```dockerfile
```

-	Layers:
	-	`sha256:076951282eb8ab707735b8c89fc485c7f6fae49f71b084cbeffb6661e469b996`  
		Last Modified: Tue, 24 Nov 2026 05:32:19 GMT  
		Size: 8.0 MB (7975000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:778c638c11ee3b31dd9f92770c89bdcc80972100d60769b58d5f7ba18dce3136`  
		Last Modified: Tue, 24 Nov 2026 05:32:18 GMT  
		Size: 7.4 KB (7389 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:f629857b27866e4db2fccb21bf6d3d3d313366e506196b75f2e30e8d937fdaaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.5 MB (140498246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:023a9e95557689d2b8bd2a7ede09c068b3267b8f82f33e6c3633dc85eb43eebf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:41:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:24:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:09060430fb43c1c139cc1889a4b8e7bb0d465c2c692e898e363029cce671f6ce`  
		Last Modified: Tue, 24 Nov 2026 03:39:50 GMT  
		Size: 49.5 MB (49515532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88783f32aad09b5608dad8e3ae3a279d819927fdfd70306f643bde0f0d4fee0c`  
		Last Modified: Tue, 24 Nov 2026 04:41:12 GMT  
		Size: 24.7 MB (24703788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76dab45eed6abc8d2bffa7ecbd77476aa63bebb9085d90a9465823b63c72419c`  
		Last Modified: Tue, 24 Nov 2026 05:24:37 GMT  
		Size: 66.3 MB (66278926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:df2175903884bf8e24ee7b5a3732ad1b09acfc3c8620d2fb093b67a9b251d920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7972055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5586f7633edc8a9c206f9ffc9740c01dd2933c54669bc22afd913e952673d22`

```dockerfile
```

-	Layers:
	-	`sha256:cb6cce9d7fcec1b8a23114c136bc59410380510484aabdd8838f78efbf78e693`  
		Last Modified: Tue, 24 Nov 2026 05:24:36 GMT  
		Size: 8.0 MB (7964767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25e6be28c77e34b94aba1c100a6ddfb58c6a92bf82b2e5e5dd34ae7b3a29e65d`  
		Last Modified: Tue, 24 Nov 2026 05:24:35 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:df9e4cbd6856c72e6175aca031850b697664e7182a0d1fc68962412eda21ddda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147783073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e990294946f4bd5443e0db295ffc8bf88a4ad3759bd20df09f1cd965703e8da`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 10:07:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 17:24:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ffec0873fe14b6e584873c80e384c7a988558ed670b69a2083f4a9eff8ef04`  
		Last Modified: Thu, 05 Nov 2026 10:08:16 GMT  
		Size: 25.5 MB (25515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912f86862ce2795897774b132f3a86834590ad3758900c8ec8c600b44058ae52`  
		Last Modified: Thu, 05 Nov 2026 17:25:45 GMT  
		Size: 69.9 MB (69899279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c2dfac46393c4575b55e4c7c5c391d762626d01b53374f0d80bad9fa1a97e0a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7983818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dd5c9418cadbb72f8fa8fca47d9fa2f4f0363caa919a0eea172a458de2fc9ee`

```dockerfile
```

-	Layers:
	-	`sha256:219f240ec72861de947f6d33fb5c6d596809220a0d1076743f72b898cb966d4f`  
		Last Modified: Thu, 05 Nov 2026 17:25:43 GMT  
		Size: 8.0 MB (7976476 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47cc2571d77f1322ce021d5ebf71b10c4a8fb302fdd9c56e09f793e4d81e0dea`  
		Last Modified: Thu, 05 Nov 2026 17:25:43 GMT  
		Size: 7.3 KB (7342 bytes)  
		MIME: application/vnd.in-toto+json
