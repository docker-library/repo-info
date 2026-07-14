## `debian:stable-backports`

```console
$ docker pull debian@sha256:c018a429e2266c5a17ea723ba0d22be1b40302918a1c5135c5e97c948b184604
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
$ docker pull debian@sha256:99b507759401f63fd66ed9765c9799f414308aea07aa361f77ba6fc36bcc2313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49317477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6066884817f971f73d7cc337cf571ee7af6e416815be8000db0be4ff9a93ab95`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'stable' '@1782172800'
# Wed, 24 Jun 2026 01:15:20 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:0175edf8aedd0f204848248c24be4f601a41e3ff33fe804beb0ad78a40d3a242`  
		Last Modified: Wed, 24 Jun 2026 00:28:22 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:274fead83b3fd32b2c075e903ca372ee36fa80484efb5a794a1714264d100967`  
		Last Modified: Wed, 24 Jun 2026 01:15:27 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:46601307b7d7dce9a7d007418b61e10dac81dd0d72e12a3984b913d4628a69df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3176739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22120b433aba917db14ad5c4a03b2c36c3c9c31bb8789dd74124ac3ae147be22`

```dockerfile
```

-	Layers:
	-	`sha256:153c82f93da458b749e32a37f8848acf5815312ac1ae411ff5ad0d23fb5b9953`  
		Last Modified: Wed, 24 Jun 2026 01:15:27 GMT  
		Size: 3.2 MB (3170955 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7ed6062dda1c0dba36a4ab9dc531513bda0dce2b787a98d07c627147c0e2aaa`  
		Last Modified: Wed, 24 Jun 2026 01:15:26 GMT  
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
$ docker pull debian@sha256:e92a08a049f7dae660be0fed5f14068b75dd1e5078ae3f219313c0d2812af866
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49678615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b76b0bb88536d24919d7abd7c931279d83c999191595488e8108f755e92b9c50`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'stable' '@1782172800'
# Wed, 24 Jun 2026 01:15:07 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:98f023cbf349ace3ea3a02dcd5f98a707a369c17e008607e5d4f7d8fc588d8c2`  
		Last Modified: Wed, 24 Jun 2026 00:28:37 GMT  
		Size: 49.7 MB (49678393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f8f38af4e76623f1a4d7b53a16117f19cdb9728d4c494ccab3f4b49b607cf0`  
		Last Modified: Wed, 24 Jun 2026 01:15:14 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:1461c395fd121c942e48c72e8d77f16127260d6a4488a5eeff3556975bc54dfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3177650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:872c12f614d9f8ebaa6f308f782ef87a46797c18d8064a01c9c7032a0576c83b`

```dockerfile
```

-	Layers:
	-	`sha256:ae55981b918c70936f35118dbf135b80d97eb59eab67562c8c9a5cf8a1a83b82`  
		Last Modified: Wed, 24 Jun 2026 01:15:14 GMT  
		Size: 3.2 MB (3171799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5688bbe7cc8088ae57cd3b8a836b7ee555b6f1f01fe3399faf44eba6fe1c10b8`  
		Last Modified: Wed, 24 Jun 2026 01:15:14 GMT  
		Size: 5.9 KB (5851 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:d3d53bf269c1241105b7e48a7e05b6da2dfce5f0cfb25b0deb123b6aee7476a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50835878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e264fbb40f6a822f692ce0d1aa9e50e919394799245fe0235de473b2f4328fc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'stable' '@1782172800'
# Wed, 24 Jun 2026 01:15:13 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:3173584128605dba40001b373c97b4d1f865681b3b3096c43780ad0489fbe9af`  
		Last Modified: Wed, 24 Jun 2026 00:28:24 GMT  
		Size: 50.8 MB (50835655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674f3b9941e4d9de02b85ee47bc12000ba59678e24782fe74612ca1a8b088fd8`  
		Last Modified: Wed, 24 Jun 2026 01:15:19 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:181fca2ccc5d19eb725fa7fa9bea3fe5929149ad1b4496af781811c7ab1c830c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3173924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ff93dfba117c3c644c4cbd23c3903305c2cd68a8cde31529a671f0f683fb13d`

```dockerfile
```

-	Layers:
	-	`sha256:62c66851234e00c87828c5e6601d4a3a2df08fa485ce2446dbf30d02e00d2ee0`  
		Last Modified: Wed, 24 Jun 2026 01:15:19 GMT  
		Size: 3.2 MB (3168157 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fd0e54951ddfa654e148f5054d6a8a877f8c6065a7b8522735b1b90f10e8c4a`  
		Last Modified: Wed, 24 Jun 2026 01:15:19 GMT  
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
$ docker pull debian@sha256:508e0e09dec7e0929f5b712de5deaf96176052bd2d26a1a31e365b5d82a502c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47802881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34955cf8494d714869ff466d997ea6c8135862876170a4dd362955c9647a1f08`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'stable' '@1782172800'
# Wed, 24 Jun 2026 18:34:15 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:d87ebda907a967e46f3f6a0c315278db601dd9852d95f8abf098acf0060a9257`  
		Last Modified: Wed, 24 Jun 2026 03:32:55 GMT  
		Size: 47.8 MB (47802658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd928141a8d6571bf92e08655acc23c6df4cf582a4ae302313aefb1829762df8`  
		Last Modified: Wed, 24 Jun 2026 18:35:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:9430f0d8dfc553e02153630f5b38155d1ac5fe9114c2c1a6ea90fbbeb8f1383d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3169090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9e11061ce18f2072293f7be171ed68c6023c5bc879d1dfeb97052e714570dae`

```dockerfile
```

-	Layers:
	-	`sha256:2bedf2277f2c1f16750347d2318f2ffa5ee5e04be562623433aa5489dbca6fbe`  
		Last Modified: Wed, 24 Jun 2026 18:35:11 GMT  
		Size: 3.2 MB (3163280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:defc283ed535f6e4cd1d5cad880d3ac3dded6fe74020c0d87e01f4184b6fcd6c`  
		Last Modified: Wed, 24 Jun 2026 18:35:10 GMT  
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
