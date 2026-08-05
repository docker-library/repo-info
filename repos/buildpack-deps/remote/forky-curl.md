## `buildpack-deps:forky-curl`

```console
$ docker pull buildpack-deps@sha256:5553fa32c9025926938eec174dbdc6d6209c5119100c19dcdd1f65a4a05034ad
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

### `buildpack-deps:forky-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:dea932a2156ac21b1247d4c886658f560da59a9d9540165d5ffcba2540b16a83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77362190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5549c3c12517f458c47097633c1213a147de74e8ff325d80c5ca46738856ee8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:44:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a9d7b479042d051e643bab1c85ff0f6599260e4745f41b5274612a5bdc6fde05`  
		Last Modified: Tue, 04 Aug 2026 23:52:17 GMT  
		Size: 49.3 MB (49331702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25affc71bb2e48543388bd42348158ddb69b90d1c1c4d8bb6242a81c2f56b014`  
		Last Modified: Wed, 05 Aug 2026 00:45:04 GMT  
		Size: 28.0 MB (28030488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:60cd21994333aa852c4836f5716a0c9529d84d474823ea6075c3a38cfb5b0bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4094594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9892274a625d4dae99903759bfba9f71b88dc008fb3abda4ccf25eb09d75db3a`

```dockerfile
```

-	Layers:
	-	`sha256:dfa1baf7e1d2f7ebdef164aebbaa25493130d38850aefe22c0bcd282e45ba83e`  
		Last Modified: Wed, 05 Aug 2026 00:45:03 GMT  
		Size: 4.1 MB (4087821 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29c12e95dedca696d0d9c9fd46706fcf0f9601a6931e5d904c0a50b269513e3b`  
		Last Modified: Wed, 05 Aug 2026 00:45:03 GMT  
		Size: 6.8 KB (6773 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:5817755ff3ed0a90f78f4307a5871909878bb842cd11243567c2123cac30367e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71643421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61556e11013f8610e265e9a67be6f938a5caf28ebac6af791afad429ebdff6d8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 01:20:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f678b1991f147b21923698c169a035c4b8f5ae61fbfd107e1529b3e1195c4fd6`  
		Last Modified: Tue, 04 Aug 2026 23:52:06 GMT  
		Size: 46.2 MB (46228048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2c043e171b59d1b04f4b3bd4e35dcac1f828054b7c09f0784b0589263e7af0`  
		Last Modified: Wed, 05 Aug 2026 01:20:18 GMT  
		Size: 25.4 MB (25415373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:bccd41853d6e81f285355d4a6a5946aaee89a14a4da043e53374cfb87ed40477
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4096310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062a35d42e936cd29ae52ae4a72f230a1956b8fdae247269ff3ed3bac5b3cd27`

```dockerfile
```

-	Layers:
	-	`sha256:160b968e697b7d86013356694ee987b75b427c24b33cd8f24f8e7e2d4ab52d53`  
		Last Modified: Wed, 05 Aug 2026 01:20:18 GMT  
		Size: 4.1 MB (4089473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bfbfde670e89a50af3341708c3b76bee1fb0a039d0e7fd1706c274bd702d32e`  
		Last Modified: Wed, 05 Aug 2026 01:20:18 GMT  
		Size: 6.8 KB (6837 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:62b96e27e26594bb47b48d297531538bf2022db8f744a2009529c82c87398806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76596027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42078106d8f62b4d905f28600f9d3a42aa5113cd6d8831e6bc9a698740dd584d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:47:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:bfcb34026e1133159b75d54bd9ab0e7c3b167036e1a86690a2e97c22d8614806`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 49.4 MB (49361777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d54621d2015e099f6255a91d16c4135349d7046e8d444fd98d08b4693d2111c`  
		Last Modified: Wed, 05 Aug 2026 00:47:25 GMT  
		Size: 27.2 MB (27234250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f829836d8e989422a8a96505cfd72ba3c54a6d74e9b941aad98aa7468c1114b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4099450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:528875497607fe53809d041c944b8381bd8b204fdd8c3a6e64db62466dedf90e`

```dockerfile
```

-	Layers:
	-	`sha256:484b1bc6cca24f3d7c1c4d1272b4f7a7c820e201fee990d8125062c26e80d47d`  
		Last Modified: Wed, 05 Aug 2026 00:47:24 GMT  
		Size: 4.1 MB (4092597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d744f831869b371bdc32da5a98111c6b762d308c439505e872e8079e54dbc5d`  
		Last Modified: Wed, 05 Aug 2026 00:47:24 GMT  
		Size: 6.9 KB (6853 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:586ea77ae34f9835ee34c8491e88734249e934c834b100a5598d4ced9c84f1d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79850867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dcf111f2a3d69315b07305ae32641d848aa4091f768506b624382ce3710584d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:46:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:5ee9cec7ecffffde5454be1577dcc2e874bcfbeb92f7c0c58c02330aa3cd53bf`  
		Last Modified: Tue, 04 Aug 2026 23:51:46 GMT  
		Size: 50.7 MB (50668690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29cc26a1bd9eef236063ae96676e9d68518efb5963a5840f9178265475cb7a14`  
		Last Modified: Wed, 05 Aug 2026 00:46:57 GMT  
		Size: 29.2 MB (29182177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b5e3ce6d2dcdeb3572f65b03a6180db4f17cdbf4ef68ad50228532a984df1b39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4091580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eca1580e734b23ce165727bd6adec3c4842eb1f69c8d0d5ad674c1d2c5a8b504`

```dockerfile
```

-	Layers:
	-	`sha256:dcee45617ced7b4dd0bd06fac83972b7e8d3a5ee47a5c6cd3e911774ef545bd3`  
		Last Modified: Wed, 05 Aug 2026 00:46:56 GMT  
		Size: 4.1 MB (4084830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d08aaadad6ab5a63116aa43b919ebbf530281cfe7e635ded60e15fde1e1cf5a4`  
		Last Modified: Wed, 05 Aug 2026 00:46:56 GMT  
		Size: 6.8 KB (6750 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:d9517cd433f2026cb8fbf785f605c75890c4765b5eea60b4c22f1ee7f15c41be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84893502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:249ad636c784194f2603e2d6a6101110711ffa50ea5d7786fa6a1392f82d65f4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 05:25:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:58bf9e1f9f35e2c6a73b629d77c34637db6af6dea128933949542988f5d743f4`  
		Last Modified: Tue, 04 Aug 2026 23:50:54 GMT  
		Size: 54.7 MB (54675023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46a171b124e43c43ca353ba29ca6b343eecab8fdde9a0b04380503b3c469148c`  
		Last Modified: Wed, 05 Aug 2026 05:25:24 GMT  
		Size: 30.2 MB (30218479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:461ec9f6c7f39a74b54b0b096ccd774cb473672148c37b6fe3e39d027e4fd416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4098727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bf800a704f911d653078476b7ee40ce47c1276cd71f255eb5b8e18d15808ebd`

```dockerfile
```

-	Layers:
	-	`sha256:a2b0e6e5549ca4ae00bf59a371c132251cf6af2df2d725f16a934d1d8a2dd97b`  
		Last Modified: Wed, 05 Aug 2026 05:25:23 GMT  
		Size: 4.1 MB (4091922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:850d769f7d91919854431a4ab003677707b8fb6a071a92ae7041bfbc3d57ef2d`  
		Last Modified: Wed, 05 Aug 2026 05:25:23 GMT  
		Size: 6.8 KB (6805 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:257df78b25adee0160f4d18022ab7512525cb54c245eefb2ebb2e163463a86dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74205996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1611640937bda6ad44fe126dbfa63cfe05018129faff4745557b3ebfd9389a64`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1783900800'
# Wed, 15 Jul 2026 17:25:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e2834ca6ae81e566a8b7364039c7033fa86964b75b5c08017d3845b776e8057e`  
		Last Modified: Tue, 14 Jul 2026 00:14:52 GMT  
		Size: 47.0 MB (46974469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d3fd9173a91e2ee4c5e0ada56b684528f5689a2e333a6a8a4865e29d2cb157`  
		Last Modified: Wed, 15 Jul 2026 17:27:02 GMT  
		Size: 27.2 MB (27231527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2ba3ba08feea142f57ebcf860105d55daed217a877baafdf0515381deaad7733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4042828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec63b64df220dfefc3ca53c693e5fd9652ecfc5630c5677858b24ac98f6243d7`

```dockerfile
```

-	Layers:
	-	`sha256:5a23d38d3964f5159188bbd81284674cd40962a19a3e4f5d29964229995320a8`  
		Last Modified: Wed, 15 Jul 2026 17:26:58 GMT  
		Size: 4.0 MB (4036023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0be88e918c2efaf7f6a480e86c49162db277b611fa4fa63800932557bd1c17ba`  
		Last Modified: Wed, 15 Jul 2026 17:26:57 GMT  
		Size: 6.8 KB (6805 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:3b6487c1b494a46d47e8d4572fd205530aaec2f4fbb837838fbdc959fffe81b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76694837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd6f0bccad95f18cc36925b5d0a23cca992c7a28646200f7da5f48cc05ea9c04`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 01:07:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a4f59ed26dcfdc36a2af78406bf56ffd7a79cb3b3675a5ae541447ba304914fe`  
		Last Modified: Tue, 04 Aug 2026 23:50:35 GMT  
		Size: 49.1 MB (49078485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9617ad90a55ba20e555b6d1696c9de4ec9fbbd6238dba2d2b07e3e55fa191a01`  
		Last Modified: Wed, 05 Aug 2026 01:07:51 GMT  
		Size: 27.6 MB (27616352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b42b5c86a0fd50ec27bd55b395f5c183c3e33247dac02424d20aef30bdfc9288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4095951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d21f2f2e970046a4a7946761796daa85785d86ed3e91c111c6d5e9141f27073b`

```dockerfile
```

-	Layers:
	-	`sha256:6e9448e1195d16446bf5c79908f6c300f3d7e1ba1994512f8849216abdf0bd5b`  
		Last Modified: Wed, 05 Aug 2026 01:07:51 GMT  
		Size: 4.1 MB (4089178 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3198e92ff312c2c86fcbee85bc1427b426553b08c5c57f86ea30a7275949b87e`  
		Last Modified: Wed, 05 Aug 2026 01:07:51 GMT  
		Size: 6.8 KB (6773 bytes)  
		MIME: application/vnd.in-toto+json
