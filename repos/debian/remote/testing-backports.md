## `debian:testing-backports`

```console
$ docker pull debian@sha256:341deddefd67ebfc625aa1a22129df65eecb190fc9a05b50f35ac7cef654134f
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
$ docker pull debian@sha256:71492d41d163e6035a88fa0c71a3b5e2017a30be708e3a1ea6923b60086a4096
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.2 MB (51213499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8320051a662b386c328ef72dd6f7027a990e5c8e5f11c47427e3af1326c4b54`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'testing' '@1789689600'
# Sat, 19 Sep 2026 00:14:05 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:276e774d489f31407832345316afa4a1838cacc528ed3bba305fcf2fd78c6ac8`  
		Last Modified: Sat, 19 Sep 2026 00:04:27 GMT  
		Size: 51.2 MB (51213278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb6b12912a01aa816fe5189b096e48b1551aabbaa047d0b120854337b63d2d6f`  
		Last Modified: Sat, 19 Sep 2026 00:14:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:68b7e4a69c3ccb4017de4837febcf0fdf38a27d0c456961e69a71a26e1385a7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3197597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6ee93bd07b72bdef137afb7ad962c659a2ffd00bd1d384c72c007f58ed19828`

```dockerfile
```

-	Layers:
	-	`sha256:d06da252c6348f7bdcdae2773c42d40b97880bb8ba5e1fe8803bd48bb8e2d61f`  
		Last Modified: Sat, 19 Sep 2026 00:14:11 GMT  
		Size: 3.2 MB (3191820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba81e77135e0025b3eba2fda3a26dd2097c0416a1b8b84e9b7e59cb4f62081dc`  
		Last Modified: Sat, 19 Sep 2026 00:14:11 GMT  
		Size: 5.8 KB (5777 bytes)  
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
$ docker pull debian@sha256:17e829d22b9bfb22fd7c5c9d6fd355939dc3dd50fbdca9518f1786e9089fe874
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47644322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af56d03eef412d17a9dcb86b5e889503577111409b34fb26c0bf49bcc5813fea`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'testing' '@1789689600'
# Wed, 23 Sep 2026 04:46:56 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:6582c5878b2a3fdec61ed2af7bcf967a2fadc7ce64cdd1de1870302b6f818c25`  
		Last Modified: Sat, 19 Sep 2026 04:03:42 GMT  
		Size: 47.6 MB (47644099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37448aeff0662096d15d1fa178ab747f2d60b8af0aeb0cf175aecd5177e2ab6e`  
		Last Modified: Wed, 23 Sep 2026 04:47:54 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:205649fbf14547ad2a12039ca5c44f5f0a5cb3d37bd1ec7c94e7369d9820f3bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3192086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b0cd465229dec6ce38f2f1e1c1aa480d533680fdd240cf71b49fe5737841908`

```dockerfile
```

-	Layers:
	-	`sha256:66a22e6f4ac3925c2984a63a0f046d4a2245680fc85a67ffeb13fba73eda7362`  
		Last Modified: Wed, 23 Sep 2026 04:47:54 GMT  
		Size: 3.2 MB (3186266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e4377fa4432c2b101d882de9196a802497a6e30cb5c4eff26d96680da954dd7`  
		Last Modified: Wed, 23 Sep 2026 04:47:54 GMT  
		Size: 5.8 KB (5820 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; s390x

```console
$ docker pull debian@sha256:98dcf4d8b63c5501dbca08ad4c52ddabb987bc3b7f5bbfd23fc2e9cc5c7384de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49326803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8506c4fbdbc66fc9aad4ab3db16071df210c45e68d330fff892f1cd033ac11ac`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1789689600'
# Sat, 19 Sep 2026 00:12:24 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:6e848b2aab347b8e28a224d42218ef87dd95993f52cf5de1da2537f084fa07f5`  
		Last Modified: Sat, 19 Sep 2026 00:02:40 GMT  
		Size: 49.3 MB (49326581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a0eb6b52bfdff0e261d5ac0a4d09992f7c56c98f5e02906782f224c5041b728`  
		Last Modified: Sat, 19 Sep 2026 00:12:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:b9e8ad613c47631d83ae12cca1b93ed69d6d019e444dd05b42a2c57214ecec71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3201911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b497b893d4d3208204f9d0bc207a9afbf608c2ad5d6f082e8b3b38c01090f532`

```dockerfile
```

-	Layers:
	-	`sha256:65ce087731937d868cfa54641a9303e8a42c9d6262dfb596bd39397b5b7bfd12`  
		Last Modified: Sat, 19 Sep 2026 00:12:35 GMT  
		Size: 3.2 MB (3196117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4abbfc4febacd85225336056efce66d8a95837fb7de9247eca459730ee214c8`  
		Last Modified: Sat, 19 Sep 2026 00:12:35 GMT  
		Size: 5.8 KB (5794 bytes)  
		MIME: application/vnd.in-toto+json
