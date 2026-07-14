## `debian:stable-backports`

```console
$ docker pull debian@sha256:12e88802217408420561d7146b098b64f77bb6b29084bb29353a7c5c0cec9806
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
$ docker pull debian@sha256:e867d5efd8345b49c7f6e480380ffff23f9c53375e5b4e1d8987165ea88c5fde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45748941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6481fed0484ad79e54cbd5959c9eca9cb122e4c28538a23dd6b29243071cfa50`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'stable' '@1782172800'
# Wed, 24 Jun 2026 01:14:43 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:a20eda36629b93120d38d96687fdfb964e182420fd3f77e1dd24e1ec4445d0fa`  
		Last Modified: Wed, 24 Jun 2026 00:28:26 GMT  
		Size: 45.7 MB (45748719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df4add62baffe607aa407fdfbf7f912b6fad51ab66065c4ac4328284c24dbdde`  
		Last Modified: Wed, 24 Jun 2026 01:14:49 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e653981d5f53389f098ceee64e7e13e90d9d8d70e14fb3779f45493e0ce3b119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3178168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa6e97d21acc8dcaeba8ae73b82be0625af79dee8a98afe5ca2cb9984ca24bc`

```dockerfile
```

-	Layers:
	-	`sha256:ae4d15c9aeb55b68f4f5449f1edb0949946b81b95b8a0813c14f0b7267e542f9`  
		Last Modified: Wed, 24 Jun 2026 01:14:50 GMT  
		Size: 3.2 MB (3172329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b1d5117ee5186d8171c0f212affead2eb1bdbe0b96e3be0dc02b47463937359`  
		Last Modified: Wed, 24 Jun 2026 01:14:50 GMT  
		Size: 5.8 KB (5839 bytes)  
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
$ docker pull debian@sha256:f623a763793471a39350fc8b6f90dda1c0c3c19edfe7993ed03c7bf652c8b450
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53138292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dbc1c605396b117442b52fe32447f8d8647bbb7a8fe1145c2454b6b20e7b694`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'stable' '@1782172800'
# Wed, 24 Jun 2026 01:14:17 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:f6ca872a6509bdff9ed4d2a17e7401c77a212fe8a0b3f25dd74f231b88c4ac31`  
		Last Modified: Wed, 24 Jun 2026 00:29:30 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70aadbd80b5dc07f7c48a37d4f6d7ee16ea32d1bc2ad1ab8997fb36e9a2f79f`  
		Last Modified: Wed, 24 Jun 2026 01:14:31 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:a05e671158c9d4608e541316dba98dd5085509200ca4a57de957f28fd94c91b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3180277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2dcca47a9617204b631a8d0bd7683bc3b7b033484550945de1b3e3dc1007200`

```dockerfile
```

-	Layers:
	-	`sha256:dc0592a1aef46297db4e8889ab452d312800a22fa8116a819c4dbee5131c3681`  
		Last Modified: Wed, 24 Jun 2026 01:14:32 GMT  
		Size: 3.2 MB (3174468 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69031f520d74f950c2c844b26388d9a2294c4077a94b355f3e3de22fa4fc9d9f`  
		Last Modified: Wed, 24 Jun 2026 01:14:31 GMT  
		Size: 5.8 KB (5809 bytes)  
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
$ docker pull debian@sha256:de7e6b4d980b4134f078b2e30993405c4bab98dbd5e4b576146310c554edbbce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49386282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b27c50552daae6c81a5cba0854bc6e0b556ff211aab89e8eb0c8d154fd728d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'stable' '@1782172800'
# Wed, 24 Jun 2026 01:13:56 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:7dd3ac5a4d6cc02991d8abeefdbdb83784a38fc243a75f4b2585b5ac5670bc13`  
		Last Modified: Wed, 24 Jun 2026 00:28:11 GMT  
		Size: 49.4 MB (49386060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e65fc378b34dcde4a42d104be30c148d42d514952f06c17cf465edc66b4c8b3`  
		Last Modified: Wed, 24 Jun 2026 01:14:07 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:2f2dd4deddc18f5d0e3fbd46b8d6cc4889cc09e01d0e8f17213702b5820ab493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3178186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07560928ac0b321c753403fd4f90eda8e3e80c3562abb839a0ea6a23cfddc36d`

```dockerfile
```

-	Layers:
	-	`sha256:dafea8f9d570e429dee9ea25307c8b747db6e178515586ab7fce49d7ff9c686f`  
		Last Modified: Wed, 24 Jun 2026 01:14:07 GMT  
		Size: 3.2 MB (3172402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:024c13c4d8f02416ff477f4f838c560265098f66dbd8468099e1b427ea0db0f0`  
		Last Modified: Wed, 24 Jun 2026 01:14:07 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json
