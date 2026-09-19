## `debian:testing-backports`

```console
$ docker pull debian@sha256:786c50853e34b29ea0a773782f84607017123f126d705bf58a187a2cc174dd03
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `debian:testing-backports` - linux; amd64

```console
$ docker pull debian@sha256:eae9805cbc30858d091810eee3cf4977911ff1caf8a1feffbda1fb665cfb11da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50075298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1da8b1ec726cc5788e78f1d10dd0fef42150f1fdede870c588b18f2dc0337197`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1789689600'
# Sat, 19 Sep 2026 00:12:01 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:d8c22133c9f304464b99471e4b4d4968d87d56e8544b7855059f2c0a39fa5b22`  
		Last Modified: Sat, 19 Sep 2026 00:05:24 GMT  
		Size: 50.1 MB (50075077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d805a012d9ac5202df226c7be36c097d552ac987e3a7d8f7ede699ea8571c3f`  
		Last Modified: Sat, 19 Sep 2026 00:12:06 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:a5eedf9dd2f8562dfaa7fdff512ba5d10d24705f8f05f5be5f45a242428db820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3200515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e924b6836070816a1710a1959e4e0ed957dbe70537d4fa72f3cda99beb1579b7`

```dockerfile
```

-	Layers:
	-	`sha256:837a574af3ac6002ac26965f82eb9d72eb7f9593cc48879545c6a80a18ffc557`  
		Last Modified: Sat, 19 Sep 2026 00:12:06 GMT  
		Size: 3.2 MB (3194721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:975ab6397e10256aac2ccef70a627fd7fefc8660f1dd2ac815ede5a2f9144503`  
		Last Modified: Sat, 19 Sep 2026 00:12:06 GMT  
		Size: 5.8 KB (5794 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:45d5038f043c7017ee9b685460556a055e7e72740517cc8f973977369339da1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 MB (46452065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0d1a65a4701af61c64fa398895e1f19a02621b17f997692abcc7240e38ba2f8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'testing' '@1789689600'
# Sat, 19 Sep 2026 00:13:37 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:44e449a5685d3129732d4a1cced889bb70dfee7a25dce40066e47c81f4ed74be`  
		Last Modified: Sat, 19 Sep 2026 00:03:57 GMT  
		Size: 46.5 MB (46451842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17caa3349be7e2a96eb298284f76c68ada6f0e9319a3b966c98a0568cbda22a5`  
		Last Modified: Sat, 19 Sep 2026 00:13:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:92fa6123cdbed99871f0ca835d1d193125abe25d2cb1587a0c73a7a7c23fd400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3202098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08b9855262f1ee1632a456c61f8779d744b577fca9e78ea712742b004a7e75fd`

```dockerfile
```

-	Layers:
	-	`sha256:bc283fe76effb2b5d3d234e99cd33c0d0eeb5637fb7a1b4e52fcb870a4c4b0f9`  
		Last Modified: Sat, 19 Sep 2026 00:13:43 GMT  
		Size: 3.2 MB (3196248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d30f555dc11fcc6fa0cbd307b07be4a19ce2d003c1a009ad9095e0c88fcb35e`  
		Last Modified: Sat, 19 Sep 2026 00:13:43 GMT  
		Size: 5.8 KB (5850 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:99ef0aa4bcca6241c79ae363db891f4872fd7579c0ba7b76d8c9028267091db4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49556707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aacfdd724c64e321badb2de485d75332ea4949523c1915c411450c9585eba2fd`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1789689600'
# Sat, 19 Sep 2026 00:12:26 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:afa59e8e36339ab83cfad4ae751210d30aa42bc784cbfd0588224e9897b3a3ae`  
		Last Modified: Sat, 19 Sep 2026 00:05:15 GMT  
		Size: 49.6 MB (49556484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf374e850526e1fd63d1b505d1fabb2c3e4adfabc7dcc539490f9947e3fb7483`  
		Last Modified: Sat, 19 Sep 2026 00:12:32 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:4c37fcb73710ee0770a6a694cb1521d72e55df8e3785aa6c67f07b2f4f4f1db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3204032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d690a576049fe1f57a160679b05f6b6524b5b5b4ace850f639e4a7ac689e1ed8`

```dockerfile
```

-	Layers:
	-	`sha256:4f0d4f718de61d368146327bf3edeaa9482252e54e7192ef6aff560021a624e6`  
		Last Modified: Sat, 19 Sep 2026 00:12:32 GMT  
		Size: 3.2 MB (3198170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:256cd7534e897198819516ad7eb3eb9defa0dfeb0f6daa1e62e21db68ef41ee3`  
		Last Modified: Sat, 19 Sep 2026 00:12:32 GMT  
		Size: 5.9 KB (5862 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; 386

```console
$ docker pull debian@sha256:90d728a6ad4140e07fa68d6a123ac80f0c15af82a5c8fb72d5fec530e8ab5ee9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50891384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf9f39bad37d20b14662dffa390a97bffc2103e102fbf8fe0f1a1aef8a982403`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'testing' '@1787529600'
# Tue, 25 Aug 2026 00:15:53 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:8390a1825ce2136aa7ffb79967b5e269ab9e47263a3f933ac0aee7a6a4f32787`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 50.9 MB (50891161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:646a367f2483cd7da7c1596db25d3be305ce9a38f7b141bbb3d9bfc8f46efcca`  
		Last Modified: Tue, 25 Aug 2026 00:15:59 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:df0064b35d3807a374e5f23864ebd0a5ec33370e9f9ad51bc3b0eb3a121afa04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3197658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ac9c5b4d3bc53baff7d269cb663b55a97cdb01ce7e090d0c485b072e4894f45`

```dockerfile
```

-	Layers:
	-	`sha256:9f28890a2e8b39c58de05e73e539dc8355f082931e20944be661bd6a552b142d`  
		Last Modified: Tue, 25 Aug 2026 00:16:00 GMT  
		Size: 3.2 MB (3191883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3eb0653d04eca59df1e8613984e0c90ca6845188b8da8dae60c1f047cb54f440`  
		Last Modified: Tue, 25 Aug 2026 00:15:59 GMT  
		Size: 5.8 KB (5775 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:80ff0f0f75b2617ff26dd65d6f7c9f895137817c86b2d03e5ee9d02e53b313ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54839391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf993ade30af210a3369ee6d690a45f700a1a950b1b98752650b5a653fd06c9a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'testing' '@1789689600'
# Sat, 19 Sep 2026 00:13:47 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:bdc8154c5dd513afedb2c5614c065d88498edbab808886df738496c2e9dc802a`  
		Last Modified: Sat, 19 Sep 2026 00:05:34 GMT  
		Size: 54.8 MB (54839169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8dc1acfbc127e42f9602e63d6723dee2de573e92912e8e866824c5672fdf68`  
		Last Modified: Sat, 19 Sep 2026 00:14:00 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:cf502316cfdedea09be353c6a61097ae040824573776a01b179100872d58de6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3204303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e5d51142ef16f6997d9c2e08682a3dd229414b30fd8695f4e1fafa681cc57f9`

```dockerfile
```

-	Layers:
	-	`sha256:68e1e9f87f26348cd23214501d9f666ad24ff6cfd8926492b3d7170f05b1cdc2`  
		Last Modified: Sat, 19 Sep 2026 00:14:00 GMT  
		Size: 3.2 MB (3198483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb69fa5556a13af6bf318a7422f3c3fc1d29eb8731d1dc997433b087b24be79d`  
		Last Modified: Sat, 19 Sep 2026 00:14:00 GMT  
		Size: 5.8 KB (5820 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; riscv64

```console
$ docker pull debian@sha256:b3624a3e231c2ee0b36e55aaf1a1b97901263d166ef5f2b9d6ef09c75150a60c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47567161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dcdec3ad366661c8f8594c64c59a17c4359ecb301c79dd5adf2dcb0ceafab69`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'testing' '@1787529600'
# Tue, 25 Aug 2026 00:18:52 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:f33a0e77617b6a02ab7e4e826ac7fc5a884ffa7e99c53d58d509af52bb898973`  
		Last Modified: Mon, 24 Aug 2026 23:32:59 GMT  
		Size: 47.6 MB (47566938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd18937ba18a74a6f401b0e293959667bf4a4fd45100bb9947e23ae72ca9437`  
		Last Modified: Tue, 25 Aug 2026 00:19:45 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:bda06a55fbfe89ddfc59eb9a187259d2cacbf7629f06b97496fac6a5055f3bf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3192967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b7b888f7dd2ce867b6ad7b77705a9a8a88c8aa592e3470d68514b08d59c2c5c`

```dockerfile
```

-	Layers:
	-	`sha256:b73a942910888c9920c48b0f9b635a2e2b7109bf327feb66c0bbaab44de363ff`  
		Last Modified: Tue, 25 Aug 2026 00:19:45 GMT  
		Size: 3.2 MB (3187147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39f57d53e00768f9fac95f8e6deea56ec48a76c6ce4d24d17032a25a20e02464`  
		Last Modified: Tue, 25 Aug 2026 00:19:45 GMT  
		Size: 5.8 KB (5820 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; s390x

```console
$ docker pull debian@sha256:8e8fa1554bb315eabb1078db7d14e53cb5a459a711c33f33e6e6ae27877d8d37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49244281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a93243602187d28ad8fdb8d0c427f7c7123a926b96d46ed0b0c9d2ebc4581b1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1787529600'
# Tue, 25 Aug 2026 00:14:24 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:35a77f309c3eaae2a44e7e3f47abaf35fa05ead1a3b5a12ad1b9e0dc1f49fcef`  
		Last Modified: Mon, 24 Aug 2026 23:19:57 GMT  
		Size: 49.2 MB (49244057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e72a23589d88e92a7f6f8012d1aa56e74129a17d0ee14215b289de3ec1b42b`  
		Last Modified: Tue, 25 Aug 2026 00:14:37 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:7f62431fa7460741e84442ea089f11a68ef11c7af810144ef104b1710d1ef845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3201971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d18092af55e7349dc9e1f7c2072064a03217c8151c3ed04dd1bd6cb79d0add8d`

```dockerfile
```

-	Layers:
	-	`sha256:b7f3204a97716612b07a8151602b86ef978fdd1a991cafeab659ff4bfe7f978d`  
		Last Modified: Tue, 25 Aug 2026 00:14:37 GMT  
		Size: 3.2 MB (3196181 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbf430d604768add684a96212303ef13f839a2b085a70ae1be8300b0c0d986fc`  
		Last Modified: Tue, 25 Aug 2026 00:14:37 GMT  
		Size: 5.8 KB (5790 bytes)  
		MIME: application/vnd.in-toto+json
