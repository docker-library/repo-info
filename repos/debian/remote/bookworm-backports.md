## `debian:bookworm-backports`

```console
$ docker pull debian@sha256:25765ce91ca4fa3338e114bf7923e6ec8225ebc4b9ec5b52d255e1a72f4a97ca
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
	-	linux; mips64le
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `debian:bookworm-backports` - linux; amd64

```console
$ docker pull debian@sha256:5df6806841424afea6143cb48ff87cba58056bf7dbe769973020937ca3e8f1eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48497629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8980a2d34b5397b17fbd2c555255ab72f000993add0185db355bb14ba6905e88`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:15:20 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9b52fc2b51c4d64e06997b4306aa662bb8463e76615f9789c9a74492e0f5190`  
		Last Modified: Tue, 14 Jul 2026 01:15:27 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c859c7e2b3d6ce79f1b0c47356968e4f6c76e923523f12b8c51bdaa75d9ed7f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f898ce6163c121a4ec1b62b37f7b8961e2e4d0dc56af875be1e669275730685a`

```dockerfile
```

-	Layers:
	-	`sha256:e9c376fee020faf60a628683405c73a8ef9561df168b097b6485d2a99c4acf65`  
		Last Modified: Tue, 14 Jul 2026 01:15:27 GMT  
		Size: 3.7 MB (3734146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2699dd9757b53fbf78ce3258dab281fa88a933e95d54605e9ac7fee60a3c59e1`  
		Last Modified: Tue, 14 Jul 2026 01:15:27 GMT  
		Size: 5.8 KB (5804 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:3215ba40fb7865c485fff3fcb0d3a254733a5e7740f96b82971776ec6bc31d50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46034041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee5aa6c3879d426efedc4569b9b2e12171df569660d84d11980fd362d271a7cb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:15:13 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:f99a0c6c2573399952c2c4cea64053957ffa423850eeb55a72c61f7e0b4f7c8f`  
		Last Modified: Tue, 14 Jul 2026 00:13:39 GMT  
		Size: 46.0 MB (46033816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aea9311a73406d8a12db1826ee6847a4a48f2d81c0415d77bc00a20b112e5fc`  
		Last Modified: Tue, 14 Jul 2026 01:15:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:ef8222536ad88f496a8a63ee5eca0e27ef36ba05f2b092f6e24da4bfe91439a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8ac8f6e87d8f70c09b15d142bcf0c74091c140049e607757e02aa3a6bcdc00`

```dockerfile
```

-	Layers:
	-	`sha256:d5713918dbee2a5f3f8d32a7a67c4efc8dd4cd3ea375de4512bdc2ccecc08a09`  
		Last Modified: Tue, 14 Jul 2026 01:15:21 GMT  
		Size: 3.7 MB (3734347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa6c71a5a3f1f0a80c20444b5739b8e19be5f8f1c9746f284aaa990fae6bc763`  
		Last Modified: Tue, 14 Jul 2026 01:15:20 GMT  
		Size: 5.9 KB (5860 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:a785a5cba51bc710848648ee9eabef4f67c4880733c534e693813e9c522d3b60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44203407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0109bed3ff84dc75e0e7876a067a116120ff07ce96fb79377ba888aee8c7d4f5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:15:11 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:f08ce4a309195cc7b461516684fc0628d56fd465c538e7c129a9eecab47df45a`  
		Last Modified: Tue, 14 Jul 2026 00:13:47 GMT  
		Size: 44.2 MB (44203181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77efc3bffbf595dccf7fd117fb2d63e419d095feeda689ce8c4e2be14882c33f`  
		Last Modified: Tue, 14 Jul 2026 01:15:18 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:9d2336dae3a9168376eb59b31f9d1eaa473b4bcf7f7fa79c2ac6c7241387fb61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b3da645fcf102594576a2ce6d4c2a089255cbc00b7160d2ec745a6e438b0faf`

```dockerfile
```

-	Layers:
	-	`sha256:b08428746533558b678f819e07273892c710d3b0cd473e356d90208f8ec146d9`  
		Last Modified: Tue, 14 Jul 2026 01:15:19 GMT  
		Size: 3.7 MB (3736325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01c97bd4055c8f9425598799dc4e0483045a1b8e3171dcdd971374c5814a4d56`  
		Last Modified: Tue, 14 Jul 2026 01:15:18 GMT  
		Size: 5.9 KB (5860 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:d9d0ae0c0c58880982b7b207a7d54b508088da695e11ec73d01c77ac0d6e1dc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48383914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727b824e8ae1f33c30fdb969737037b1f8e1d869bb8f513fb2a85118372f77cf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:15:07 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dcf6e2607505801088397b0c139e9eed8c8ff90ffff793e76744f94bfa17148`  
		Last Modified: Tue, 14 Jul 2026 01:15:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:66948af65af09753a86430137ada3a2b1c9046785e6625984efb6491bb969c45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba888264098220d9a0be3e792c416b1d3ef41c90fac6e2c085465b2da87e0dc`

```dockerfile
```

-	Layers:
	-	`sha256:6985139b0e61f988f572acac76accc152661362314fc12799e262570864e5081`  
		Last Modified: Tue, 14 Jul 2026 01:15:14 GMT  
		Size: 3.7 MB (3734361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6abdc1ab0b1bb01af5bcf1fcc77a1a053f75fdb4de0f6ca883815dbabfc9c11b`  
		Last Modified: Tue, 14 Jul 2026 01:15:14 GMT  
		Size: 5.9 KB (5872 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; 386

```console
$ docker pull debian@sha256:021d56770220a64661e03d592229ac6091399533932c525e29681019ba24cd26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49485662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83459d2fad43f3309e1b8c7300baf9913449cfc06c81c9894d81dc23759af18a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:15:21 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:7ed62c27c4f21adf732321eceae8ffb1eec07091e8f0d4e0c808bda76320013f`  
		Last Modified: Tue, 14 Jul 2026 00:13:55 GMT  
		Size: 49.5 MB (49485439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d734c25210d56b5d1ee56811fa56c2a27454e2d600fea19febc7a93f29be2ab`  
		Last Modified: Tue, 14 Jul 2026 01:15:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:5c4416be1d6c09fd3771e55aea7808f725b513aee700197a03deb741825a11e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3737129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc64adc9a42284133c020c2c27798c3ad3c7c2bf9c518d9478579f92e81f5229`

```dockerfile
```

-	Layers:
	-	`sha256:4bfbe279d18eda91bb839b25e64cc98e25a715e40888141bcc2af787048ca48c`  
		Last Modified: Tue, 14 Jul 2026 01:15:29 GMT  
		Size: 3.7 MB (3731342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d05e5339e5005e23e17485f113e96eb6a19915b45127222d9d176cc888db13cf`  
		Last Modified: Tue, 14 Jul 2026 01:15:28 GMT  
		Size: 5.8 KB (5787 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; mips64le

```console
$ docker pull debian@sha256:8193929c9edf355c47d4c5ef38024946b7a8786c410134f58b93e0fcb3a0ab81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48787861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e195b47c270186b97211ee45b6cdeb07d1654a94655c191a9afda6891e394e42`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'mips64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:15:05 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:2c328c8c141bfe93d6858b21fa00b7c39f26eabfa97b46e975fdb98a417abb35`  
		Last Modified: Tue, 14 Jul 2026 00:13:01 GMT  
		Size: 48.8 MB (48787637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1587f78ba3ba29570919f2363d3cf83ee67e30d2f7cf9a5b7554fcc5e9cd22ca`  
		Last Modified: Tue, 14 Jul 2026 01:15:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:719fc1a7784c6b480884c45f8dc46eb7a9306e6524538f8158e38c0c67186021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 KB (5628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:761883eb50348a256b9660314c1137b4d447652b7532b8470ae9753ee5c36687`

```dockerfile
```

-	Layers:
	-	`sha256:64f72ecc60145cb84fed08d5b1d62fc135a1247ac46f9a639a8eb00e44d54624`  
		Last Modified: Tue, 14 Jul 2026 01:15:24 GMT  
		Size: 5.6 KB (5628 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:e1a66927710019071816d9c46ab295bc6e0f3488e6fbd378cc29df4959d1d893
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52342059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da01b2fdd233af9ea5ec78c29e04035e3386bee9fa33005fb1e2c668cbddf0dc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:14:03 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66316a198378f2bd33d35d00fee985421458d7893f81f3720a240eda1d796235`  
		Last Modified: Tue, 14 Jul 2026 01:14:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e9d4bf861e6038fc92f4af75d76a602eeaad2b31ab29408bbf1d838af4bde97f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56daeaf3ee5990582529493c0aa2f4d5db901dbec8040698b14f6d21dbc0977e`

```dockerfile
```

-	Layers:
	-	`sha256:b0f01dbf0bda20bd625b1db7806eaef924639d86dd3f024722bbcc23ec203d03`  
		Last Modified: Tue, 14 Jul 2026 01:14:21 GMT  
		Size: 3.7 MB (3738504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:430e36758eb542871ef103502b3db23046df49c1cb2133a7e5ee7b4fc9abd5b8`  
		Last Modified: Tue, 14 Jul 2026 01:14:21 GMT  
		Size: 5.8 KB (5830 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; s390x

```console
$ docker pull debian@sha256:05bf7f806aca4acd3ba305d9bc33121a4ca6a48cffbe9691a30cf46ba3d80ab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47157502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e06d2eba6b966aa46da5ef6fc2cf510106ec3f3dfdfb8fc7d97cfd4970f0c6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:14:23 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19317e3e7ccd97f27863ba220527f377b37292bd0e9acff13046061fee90633b`  
		Last Modified: Tue, 14 Jul 2026 01:14:37 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:88e6339a31be3c6e90b36b26e27d2f129c2de4cdeb3d41e01633aa24191ceced
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3736788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183c951897163cf08ce2354813cafacb7ada644fbd49f4b08a505e19da4fd2ad`

```dockerfile
```

-	Layers:
	-	`sha256:b19e782807f8042a88bb82062245b1c573696ffb3f017946b4e5052d45c3e83c`  
		Last Modified: Tue, 14 Jul 2026 01:14:37 GMT  
		Size: 3.7 MB (3730984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69c6fe4256f6139336502b01aacf156bd4a1ad513849a85c9d21034f14824b74`  
		Last Modified: Tue, 14 Jul 2026 01:14:37 GMT  
		Size: 5.8 KB (5804 bytes)  
		MIME: application/vnd.in-toto+json
