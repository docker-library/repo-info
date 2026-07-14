## `debian:stable-backports`

```console
$ docker pull debian@sha256:ad804acba57a53e1d74e08a853aace2824fa3368cac6d1e4cc6053edacd033bd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `debian:stable-backports` - linux; amd64

```console
$ docker pull debian@sha256:283fecde9e55d999da17ba6a694410a727ed0e1e1f4a02d509201c96118b1ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49312793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e601e3b36d18cae0cb88dd950328e32677fb897cc01426bbc1a32ebbfc734db3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'stable' '@1783900800'
# Tue, 14 Jul 2026 01:16:03 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:8abc06702a80c362980685dbfb8283a9f93d15163543400231bece845b5d3b24`  
		Last Modified: Tue, 14 Jul 2026 00:14:48 GMT  
		Size: 49.3 MB (49312571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3954d9752579541d0d24fe630c454aa05059b33055e8302f20702dfe1b8c4a`  
		Last Modified: Tue, 14 Jul 2026 01:16:09 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:12aa94b366c3690aedf927e2c64ad2c32343b440aaceb34ba7aa04a13a199156
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3176775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a27b5afe754112ab036fc559bc86027d58acbddf7c024f5739e2e79c49a3d59`

```dockerfile
```

-	Layers:
	-	`sha256:068d22120e0366930963c92e00b7b1ed90227533ec0d65fa7f74863259f5d5fc`  
		Last Modified: Tue, 14 Jul 2026 01:16:09 GMT  
		Size: 3.2 MB (3170991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:333890db999931825d69d0f0e6548b79a9edb04de59809e6d534748eb2ca6699`  
		Last Modified: Tue, 14 Jul 2026 01:16:09 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:3f7aed40721d29caa5f614f495c262e34c83f7fee48f6dbab64acec8d5708565
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47490193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2ab3465439315754ad9363646f1a397403aa8062f268bb5ed722b6d634692da`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'stable' '@1783900800'
# Tue, 14 Jul 2026 01:15:53 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:e175215cd4fdec3655648724005e8178e016cfa6774670b90088426b986c4b24`  
		Last Modified: Tue, 14 Jul 2026 00:14:24 GMT  
		Size: 47.5 MB (47489970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d26a4b922048e1b87cad7cfab12374af06867501b2c92d20af897d10980236`  
		Last Modified: Tue, 14 Jul 2026 01:15:59 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:22f48a4885ccf3114ae676177681558e8b5ab3d721c1374d22832b4da4c2da47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f519d4a7be4196712c48ed790ffadafb58aceaabba307e87166bd386739a12f`

```dockerfile
```

-	Layers:
	-	`sha256:63ec642bd5ea92992469f113bfde81741a2d4928deb6a16a2702b6252b203c83`  
		Last Modified: Tue, 14 Jul 2026 01:15:59 GMT  
		Size: 3.2 MB (3173928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b0937c078fa40f6b1c1003273b1496448ecbc47cd73f425b11cab1c437b1fb4`  
		Last Modified: Tue, 14 Jul 2026 01:15:59 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:0a66bdebcce1d9379b243a8c96728cfadb7069070c0e52e000fe36dcd87791a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45743949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7ce35c0bf4a6b2fa47e1e2ba8e75c114f32a2916d737b6027e7419cafedd353`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'stable' '@1783900800'
# Tue, 14 Jul 2026 01:15:54 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:a3a459435f6937e7db8992344516f0be4329ffbdf1f43920c2a0755c258644df`  
		Last Modified: Tue, 14 Jul 2026 00:14:33 GMT  
		Size: 45.7 MB (45743728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76069543fa365551d9ccff9e4702ddf44f943f191bdb09d3b3426ca182e4c14b`  
		Last Modified: Tue, 14 Jul 2026 01:16:00 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:9e2368739d1f23bc683a1e6173be7ddfe5758e4a24cc86db1b055ae50a9d15bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3178205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae2157c1ecf0dd19394ed004e8af3eae53d20cbbfadfb3bb0527f81198d55058`

```dockerfile
```

-	Layers:
	-	`sha256:dfa4769d82274b1080de21ce77ddd78405d2b46286330fa33af2b62993323e92`  
		Last Modified: Tue, 14 Jul 2026 01:16:00 GMT  
		Size: 3.2 MB (3172365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1198b8781169a8d4ba6a948c88fa3552f1f4f9721c1f646f8900a6a94e9c67d6`  
		Last Modified: Tue, 14 Jul 2026 01:16:00 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:310519d641aa733c1bac47122b341830185e44c967f138d7a95ec3007643bbd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49674403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d95c5b0d298cc115b5788378997c4ece3c1776d6508f0f2ceb2a93cffd2bf5bd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'stable' '@1783900800'
# Tue, 14 Jul 2026 01:15:44 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:13d35567b69145c5932cb840ffc49879698a6de8990ec2d561279ec4c2f1870a`  
		Last Modified: Tue, 14 Jul 2026 00:15:02 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0186e06de34eebb2af5530ff0b99bd23281e1a3f12bccfc0620d109e69bc386`  
		Last Modified: Tue, 14 Jul 2026 01:15:51 GMT  
		Size: 219.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:b62af3d25cff2d92f71fa00f3ee5a235f94464cd013c0f502c255798e785b9d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3177687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46c9c42b5c2d40c5399fcbab6a6919d9b2fc0357e9a6e49ac5a7d890f883cdae`

```dockerfile
```

-	Layers:
	-	`sha256:96856963f3d385d9142150f0f6516b81e13e42d73165268a9f4bb5083edd4a39`  
		Last Modified: Tue, 14 Jul 2026 01:15:51 GMT  
		Size: 3.2 MB (3171835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b7000c00946d8ea36e709ee6fc3d1bcb7e745f81415d2fd42318ba15b1ff5a2`  
		Last Modified: Tue, 14 Jul 2026 01:15:51 GMT  
		Size: 5.9 KB (5852 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:bf1d27c66ad2985a60aeaa5a1fd224fee4bbfab092cdc84f92a370878acbbd05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50831712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c40fb35d06042ef08ec6ef2f690a75848ff54bd887442414b2ca8737a7e9abd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'stable' '@1783900800'
# Tue, 14 Jul 2026 01:16:05 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:8c4bacab1e6a6e7f1bceece7c11f3b53d84e3cd7993909650f0bf526b9a34923`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 50.8 MB (50831490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c380ae5028128c2fbe4f6b8e1c81bfcfd01bbb127a6eed11947d24b253f62cb`  
		Last Modified: Tue, 14 Jul 2026 01:16:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:7ec4cc0336f57336718e452853743d638a2025d22170e3cd385d4e5919666e53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3173960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:798b0d0bcf61380a565b4e4ab4ef992b5c341a844f18dd9673d330b98d8a5a48`

```dockerfile
```

-	Layers:
	-	`sha256:92c2942051de1bd469e320c5ff869d52902cbacd884325042e750b5e84fde7d7`  
		Last Modified: Tue, 14 Jul 2026 01:16:12 GMT  
		Size: 3.2 MB (3168193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5de40cfa3e92c0a89a25d13364d55e86421f7ee2fdabfd916a079d0f0f52176`  
		Last Modified: Tue, 14 Jul 2026 01:16:12 GMT  
		Size: 5.8 KB (5767 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:a8d93fa202b0579f4bf093cf03067b2acffe83ecb3a1a54a8647bab73ffb1845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53134234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59ab226557d36f0244a8dbae48a129dcdfd95cc3c1f154d4c59f49b254025037`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'stable' '@1783900800'
# Tue, 14 Jul 2026 01:14:35 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:c9d5a56fcd986d3b6ce4d4bd6abaed264e94ba615986fe338f893b4a2e32501f`  
		Last Modified: Tue, 14 Jul 2026 00:14:46 GMT  
		Size: 53.1 MB (53134012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d3a7fd4c3ccb8feba4c56cbb1d1ed274543cf5870a529f00c1ceb8b9db5673c`  
		Last Modified: Tue, 14 Jul 2026 01:14:47 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:20810b763607d079bf9f8e500f1719f7020ca6c1cf677da79ffc880fa9a2c194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3180314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64953eda3ba8f9a900529b33f218f26e6a434e74161adf329b83389e7546aff4`

```dockerfile
```

-	Layers:
	-	`sha256:fdb32e2171dab6c2138eaa6631d913b2f04cdea35fef0e3a9e7ba6ddc77dc526`  
		Last Modified: Tue, 14 Jul 2026 01:14:48 GMT  
		Size: 3.2 MB (3174504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b14378abe1cd3f586c0ba2fd8d75c7b93bc874ae5914c2702921b36219309792`  
		Last Modified: Tue, 14 Jul 2026 01:14:47 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; riscv64

```console
$ docker pull debian@sha256:956f8dccb73c7b36f4570bc6048d2772c113eb2dbed94735855fde3e109eedd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47798007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dafdf7952ab94cdda6a330514ea98aaf4b93efb7a2da73b754b8ebca0dfc843`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'stable' '@1783900800'
# Tue, 14 Jul 2026 01:17:20 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:33b46800a587b07be441b7195b09803502d373f650d43ec86a9a5c74dc7663cc`  
		Last Modified: Tue, 14 Jul 2026 00:21:47 GMT  
		Size: 47.8 MB (47797785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19a50f8d05c06eefb550b3679e4b5ebb878c8688f271d6516445cad7a66710c5`  
		Last Modified: Tue, 14 Jul 2026 01:18:13 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:4e477d5db3c76c47da108f30122ce604f528255bc699c17ed470a36d8d9dcca3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3169126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eea76db050e299def9db53af5aa965afdfda36c2411009c2d335948298cff5d4`

```dockerfile
```

-	Layers:
	-	`sha256:bdd9405e091f4e4a1e439a4ed79cab865518684c828cf08e00fa96558a7df397`  
		Last Modified: Tue, 14 Jul 2026 01:18:14 GMT  
		Size: 3.2 MB (3163316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc1017e32a6f4f16a64bf53b82656c0f33311cd3baaa03fe113242d1a3963057`  
		Last Modified: Tue, 14 Jul 2026 01:18:13 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:e21651d1de7722b31b92ca56e18b39d2d4f50212348cda178e340dca7ddfb821
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49381930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990f94c63921fe3d8ecd44e00e613bc500f91d41b942f69db9aad8300aec5343`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'stable' '@1783900800'
# Tue, 14 Jul 2026 01:14:25 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:244e4287915e4c3975e547a6fdf7ae52a7d08c72542288b6a4ead8e58fbfef43`  
		Last Modified: Tue, 14 Jul 2026 00:16:26 GMT  
		Size: 49.4 MB (49381709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25700f7ad340a60df51051ec83212d1a24b15af7dd0597c47c9dd42ce871662e`  
		Last Modified: Tue, 14 Jul 2026 01:14:38 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:387a3338b937db80ee4ace620d688c7450abef9236a483a3fe551997078771a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3178222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:854a493e523474429204a0225666a6634619a8b0db7d30e590a90aa854ece942`

```dockerfile
```

-	Layers:
	-	`sha256:473191833c663448686abca84aa188dc053fc90fb18e99bd496c438681bbf6d2`  
		Last Modified: Tue, 14 Jul 2026 01:14:38 GMT  
		Size: 3.2 MB (3172438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73878d6b441e3ca5716ead09d073db7acb27171dd14d77a6b3f6c0df7fdd8267`  
		Last Modified: Tue, 14 Jul 2026 01:14:38 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json
