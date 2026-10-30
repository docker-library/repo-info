## `debian:testing-backports`

```console
$ docker pull debian@sha256:7e8521e1d945268857207e3e60ded25b6cd1a9daca5d2daac691db15ca7fb54b
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
$ docker pull debian@sha256:4745e255725938af8e393eab433c74c24496cc33cd4ebe033cd7724f918f4a24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49814634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:054eb84191644a16084ac1870b439cb03f48a41bf177a3474e6bc5ecd20b83a7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1793059200'
# Wed, 28 Oct 2026 01:13:34 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:58063fae4e1786d1ee979d5bc34777709764b8252d7519da75b1a2b2ba5d2904`  
		Last Modified: Wed, 28 Oct 2026 00:10:49 GMT  
		Size: 49.8 MB (49814410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:442c14ad5b4767dee62da1bbb7b752478b484b68e7b0bda859b493b439919bb2`  
		Last Modified: Wed, 28 Oct 2026 01:13:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:4dc13c8968d117cc17afe40ed8ac02b6cbf531f624608d7796a57c1ba490a8d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3182017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d4b74bda8ef4e814f8150026cd08c02ee4648c102f1a620036037674ee26db2`

```dockerfile
```

-	Layers:
	-	`sha256:0dbe6bb97996c6fc4e7876defbc5fff758731674d780a1d1a9f86b941e61dc69`  
		Last Modified: Wed, 28 Oct 2026 01:13:41 GMT  
		Size: 3.2 MB (3176223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4ad5575c3a10bca4bae155a71e2dcc52f5bbabf026ad9486f4ec7330ba6ceb7`  
		Last Modified: Wed, 28 Oct 2026 01:13:41 GMT  
		Size: 5.8 KB (5794 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:7b410c3f1a88f223c1399f84a1eb9f77d99bf8e5b577aebd4de5b4941d0cb60e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46005468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0709f8db3a955f2878ade15af90fe2b51aeeb6f58fab79fa2dc4630212bf10d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'testing' '@1793059200'
# Wed, 28 Oct 2026 01:13:41 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:2831716168c27d1d2c0e90c627836dc7b9c2dccfe55a4a1dc1f0edc24eb151fd`  
		Last Modified: Wed, 28 Oct 2026 00:10:49 GMT  
		Size: 46.0 MB (46005245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d46f87562bcc2aa7983cfee6c6651d9bd1cf0c823c550a6ec1ae690c429113`  
		Last Modified: Wed, 28 Oct 2026 01:13:47 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:b728e0704a8ddc0b7c66b5882234875e07435a75b68f58b8586b2c36920e1ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8df7852baaa38ab0049d4e21f1a70d4c3a94413a9e762afb1abfac7d37f8233f`

```dockerfile
```

-	Layers:
	-	`sha256:d6698157c67ec8dda2117683ef14196a8c13d2ecee36509b7de588cc077fa3db`  
		Last Modified: Wed, 28 Oct 2026 01:13:47 GMT  
		Size: 3.2 MB (3177750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4b9795e98db2e395a25f7410fc84453f6dddfa04310423e72f096eceff40929`  
		Last Modified: Wed, 28 Oct 2026 01:13:47 GMT  
		Size: 5.8 KB (5850 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:e02b87ac6314266d33f877458bdec7958033449d7855050ab3b42bc9715a4e73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49143476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:528ee1e0caa2234fac92d8960876cfe587c062bd005f0b7246cf26d439477b8c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1793059200'
# Wed, 28 Oct 2026 01:13:21 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:b55728f698ab3ec70f1f61c9ee564f6901244cffc7227e3c2638a7598a5dfeaa`  
		Last Modified: Wed, 28 Oct 2026 00:11:17 GMT  
		Size: 49.1 MB (49143252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c419b1a0069b47cb24607d6370e7c41244b2b3d5e2ae228e6547d1f3c2051538`  
		Last Modified: Wed, 28 Oct 2026 01:13:28 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:691caa66d941a58d5310bf0e1a1343227dddcc74552fcdd0249a8b250965d9f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3185534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f132825776d625a52c5918501bccc04db16a8fd7c2899ac778b720b8dceed1cf`

```dockerfile
```

-	Layers:
	-	`sha256:72033cbee71f66ae3295aeadbaf98307699639b4d5e90fee099b8cc04769319a`  
		Last Modified: Wed, 28 Oct 2026 01:13:28 GMT  
		Size: 3.2 MB (3179672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2399acc6934a95cc0e957cf897cae3a151d4603a2621dc67d1972646ebf0fe4`  
		Last Modified: Wed, 28 Oct 2026 01:13:28 GMT  
		Size: 5.9 KB (5862 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; 386

```console
$ docker pull debian@sha256:ca079d572312bf76e32526e089bb98b5b1db5c1809984e55a9be55f2cd20fe24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50935669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fadc051d37a6b583cc956287139b3764a2aebb2edec1c4e4c702868b71f82be`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'testing' '@1793059200'
# Wed, 28 Oct 2026 01:13:51 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:6ed0a8cec46838599da7dc94a797abf5c7ab61a05495c396c07f437bbd41c1b6`  
		Last Modified: Wed, 28 Oct 2026 00:11:25 GMT  
		Size: 50.9 MB (50935445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11f737b9f36fe31230aa7fb2f5c56c00902bc4cbed4bfe162d2cbf800076a18`  
		Last Modified: Wed, 28 Oct 2026 01:13:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:6b1dcaa3727718e6b7421a0f48f20a820d541d4e05e214142c70ba64c7f024e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a9f861b1b3a468a5fabe658961c0051f9b08166c5a68c1a98dd1a8fee37f545`

```dockerfile
```

-	Layers:
	-	`sha256:876deb2d4c7588bed4fd7b53842924c89156f2300fe80760dfd0f9c6582a52d5`  
		Last Modified: Wed, 28 Oct 2026 01:13:58 GMT  
		Size: 3.2 MB (3173320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0f9347ed490f63e34dd691bec21b7f0cade8c7c66b12152df8cfd85e9476933`  
		Last Modified: Wed, 28 Oct 2026 01:13:58 GMT  
		Size: 5.8 KB (5777 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:04cf9538450795629cf8a97df63af009f0e1b041cb5f6017fb629e00ff18e2d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54501913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070a8e8e388fa369a1de3c216fd1cc0be4d5c757d2324110d4ec539f07760702`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'testing' '@1793059200'
# Wed, 28 Oct 2026 01:26:46 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:199117caef26fc4087e10c2146867264058bf6f419c2bbe7c5e8c2941fdb7ed2`  
		Last Modified: Wed, 28 Oct 2026 00:23:43 GMT  
		Size: 54.5 MB (54501690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbc2e8050184c28e66710f2479ce299c6cc8f55bd54204cc48b39148cd759fc`  
		Last Modified: Wed, 28 Oct 2026 01:27:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:31460308cc0a1ee83419c22927e827a6147727dd3c7c4688e42aeb315a862d92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3185809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b50161b2e37acf087c40aad47ba9cdc246aba47add75c8d2d1208a40e0a2289`

```dockerfile
```

-	Layers:
	-	`sha256:61cf3103edde0bf1bbfd89edbc67b21bc5a89ce47e7267789995dabb418e888e`  
		Last Modified: Wed, 28 Oct 2026 01:27:04 GMT  
		Size: 3.2 MB (3179989 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a11a30aaeb45522a23ce410a1a35835f03359426f9670fb9c4533eb907eb6186`  
		Last Modified: Wed, 28 Oct 2026 01:27:04 GMT  
		Size: 5.8 KB (5820 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; riscv64

```console
$ docker pull debian@sha256:60c12de046bbcdae4067d21aa65581648f1ca519052220a3b5cd9c3fb54cb806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47233293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dbe2d97edc5239c806a1fe3ce11fcc4d4b31aa3364bf82d585419bc9e80f3e0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'testing' '@1793059200'
# Fri, 30 Oct 2026 09:04:00 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:bad067dfccc573c69672dc1847a582f50e19673872bc8a490df85e0bc36d4ddf`  
		Last Modified: Wed, 28 Oct 2026 18:33:35 GMT  
		Size: 47.2 MB (47233069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ad9690eb15371aeb029bd71a0d52037b03f1b70992b3da6893148f96b1c7b8`  
		Last Modified: Fri, 30 Oct 2026 09:04:57 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:211382d032e1187037934e70b03b360e502bec656056b8129bb188378bfeb98a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3173592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93bd6e623943176c06d7cabbc93adc8bca96be835a8937876d0473fee35a6e93`

```dockerfile
```

-	Layers:
	-	`sha256:264ff68c667eeb96dc822bfa886d591bab5d6e72930a302177128c39699897a7`  
		Last Modified: Fri, 30 Oct 2026 09:04:57 GMT  
		Size: 3.2 MB (3167772 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d819b215a33508fd6f9e7e9406b6f16bb118c291a7840e5aaa8e1bc206246e66`  
		Last Modified: Fri, 30 Oct 2026 09:04:57 GMT  
		Size: 5.8 KB (5820 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; s390x

```console
$ docker pull debian@sha256:ad6099072561fc07e67a44956f3e6106599ce80e1d01f885e6e5c8aa26e6239c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48910609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c489ebb3019423e9572a5109527a658af6667433c1a7ead8f8fd3ab6df7c791f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1793059200'
# Wed, 28 Oct 2026 01:12:39 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:1e3294c4b72b6d8b3f2137f0bcb926ff83246e8a97336b917c095084ae197052`  
		Last Modified: Wed, 28 Oct 2026 00:10:10 GMT  
		Size: 48.9 MB (48910385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6fea998407ee2d6feec8131c2d6e441c15a4a3cd5f721608a220c52b28b0016`  
		Last Modified: Wed, 28 Oct 2026 01:12:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:78be33a72fe524041875637bb1867974b971e6ade7830976607faa88fba3c178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa5e450b1a35a8aa298f581c00add79b07b8fd824e130d5092356900d2a6966`

```dockerfile
```

-	Layers:
	-	`sha256:e80ff5ffbbd12d88d51878b0b0c3737c040449a23456d8a97056e618f84e381d`  
		Last Modified: Wed, 28 Oct 2026 01:12:49 GMT  
		Size: 3.2 MB (3177619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d47c4ebcbfc94d534501f6d8b999bc9f225ff681b22388fbbd75e593a084770`  
		Last Modified: Wed, 28 Oct 2026 01:12:49 GMT  
		Size: 5.8 KB (5794 bytes)  
		MIME: application/vnd.in-toto+json
