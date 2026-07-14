## `debian:forky-backports`

```console
$ docker pull debian@sha256:b33f05740c8ffd2dfce4352b53a95f2e4faadcd4d39f5156ba05ac01e1c93ba9
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

### `debian:forky-backports` - linux; amd64

```console
$ docker pull debian@sha256:c49e53d4d63a617913f802ce1e5718982c7a65e82fe9e563f691822c7f36ed6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48865556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9bf25c97f8169b89afc3606e0a52927cae01b999f38e5d2c8aa4a17f1e5824`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:15:46 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:047f915cf84519088f227c947fc73d6993e3370ea1bdbc426fc9228a57ea006f`  
		Last Modified: Tue, 14 Jul 2026 00:14:42 GMT  
		Size: 48.9 MB (48865332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca1cbcc9db74ece3e290d6189acf12bd99111d24b2944c400cf93c630dd89ad1`  
		Last Modified: Tue, 14 Jul 2026 01:15:52 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:2413a34f3a08437fb501a0e9974051dcc9541e29b3e52e6f2737ccfd1fcee5f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3155769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05f084a722585def812d685f1bc231a132e95fbfd5739c4f99a00440f721d825`

```dockerfile
```

-	Layers:
	-	`sha256:df4dd71d55567c86cabcd6ba91c3b0e322897d60d7467fd5988be83fcf61ef08`  
		Last Modified: Tue, 14 Jul 2026 01:15:52 GMT  
		Size: 3.1 MB (3149991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5448814bd8cc536aa89cf861d6f9ddb45f7ccd3c8e26346e2686aee7c55b337`  
		Last Modified: Tue, 14 Jul 2026 01:15:52 GMT  
		Size: 5.8 KB (5778 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:45b94a3efd36d3d61e088747a94307b2849fcb2608aeedc41f22f45928ccfa6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45653314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f2f99b20d576bd5d9e0dd840cecbb8578aa8cd6e2b19b42216b3a87a0eab58b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1782172800'
# Wed, 24 Jun 2026 01:14:45 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:36ada862ffe71636cce33b70f21dd2f7cfc66ebaeabbfa49191690cfe0284fba`  
		Last Modified: Wed, 24 Jun 2026 00:27:47 GMT  
		Size: 45.7 MB (45653092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:984847151b9a1a2b63311f8a769e787e513ed5c24755644d68387a1f187406e6`  
		Last Modified: Wed, 24 Jun 2026 01:14:52 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:9cd7f5e66d719eba2ce35899392434c5b42e930eeb721e5b67cd121f1e39e646
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3157909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30c7cb4ec9d7dc608f342c6f05592a76c3ea3bae885487e4fe097e4c4fdd8637`

```dockerfile
```

-	Layers:
	-	`sha256:2ad7998e51f4e75418f761758a2152318fb1ba98b998368760f951d15ad0e3cf`  
		Last Modified: Wed, 24 Jun 2026 01:14:52 GMT  
		Size: 3.2 MB (3152075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:483b7a155540a4e5d5e8232f91702afb6d2d2871dae65089cce1e1af107d860d`  
		Last Modified: Wed, 24 Jun 2026 01:14:52 GMT  
		Size: 5.8 KB (5834 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:0090459bae62f8c483a29db944e77c84b4c216aaa09223b866415da3cdbeb6a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48890829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a42dfb373cb63408069d02d7e7665f9e0b2c26374427d2af2f1d87ac465a59b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:15:26 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:171877af6f22a967baf8e777422690fade518ae6079ba449600acf24ab19cd96`  
		Last Modified: Tue, 14 Jul 2026 00:14:27 GMT  
		Size: 48.9 MB (48890606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be964bf3deb9fd7800992ddbf89ee3a4788b8c7cdbb08d91fc6a317c76644dbb`  
		Last Modified: Tue, 14 Jul 2026 01:15:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:da17558ba6af7d0e42955fe76479eae8ec7f757e0c22a714c38926a0b1e5d1a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3160506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb38e97031ec9f56ed2569b109e8ee58ed8f8120666903ad124e5cd10003e5ae`

```dockerfile
```

-	Layers:
	-	`sha256:3bbfaa77efece01a647a07a843f09e5ac5d67faa0a8d190e58bedbda2659bac2`  
		Last Modified: Tue, 14 Jul 2026 01:15:33 GMT  
		Size: 3.2 MB (3154661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:377897d0852b3d56daa767ec2ffb93f7cc5683fee3409c8700f887ad53a5745d`  
		Last Modified: Tue, 14 Jul 2026 01:15:33 GMT  
		Size: 5.8 KB (5845 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; 386

```console
$ docker pull debian@sha256:c304ebe834dd51b332ad558a7db658e912517649dbb9fce9824537a266661540
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50191374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cea3410614cc26959d68c9dfaad80565474a8d3610d427c703ab26c9d4a4277d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:15:40 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:c88c360cefbaca915e0109149100d8dee7c64c5fa84949f659b53f6261f037b6`  
		Last Modified: Tue, 14 Jul 2026 00:14:35 GMT  
		Size: 50.2 MB (50191150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f05d48910c2a142705f612fdc630c4383180f470183e0a82341d25f3f7f31ba2`  
		Last Modified: Tue, 14 Jul 2026 01:15:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:98539d7b48ffe09214d966438d7618e5d1498685d204f8c53fae3d15beb49946
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3152958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82c496a4a52476a3faeca17da41461c246a8b1a059ed126c2929dca32c789de6`

```dockerfile
```

-	Layers:
	-	`sha256:c5d46492348bd84c8b12bdb1f44f0311416e854351da9d7041059995f65d7d5b`  
		Last Modified: Tue, 14 Jul 2026 01:15:47 GMT  
		Size: 3.1 MB (3147197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5488360dfa4331bd6f5e1cd445a5e1cc9c9ef0d7a7225149708f5c5c4b1d7e99`  
		Last Modified: Tue, 14 Jul 2026 01:15:46 GMT  
		Size: 5.8 KB (5761 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:edf9ef7037de3572f55e2205a14beb7720f75613eb387c89eeb26c18bc5d2f8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54079251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b556e9ed9c87eec2f918b6ecbef1aeac6c6e3a6cf99142aeb7dc6c958b9dba1c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1782172800'
# Wed, 24 Jun 2026 01:13:36 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:18c7f7605567d97bd2e11cd865b7616a79a2f59d49d2c2db26f6e2d2ee14157b`  
		Last Modified: Wed, 24 Jun 2026 00:28:03 GMT  
		Size: 54.1 MB (54079029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfdeab56578157d35371c65c5098613d91ad58c2acd3463326c0e03a11bc55c3`  
		Last Modified: Wed, 24 Jun 2026 01:13:57 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:7ca487e39a2670aca8fa42e7dcb469266b1a1588f737ec17cd26504b837b8078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3160014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743fef015caf0ede78176c13017fd701a2b3a0aa96aa90ccefa5e3cee72ae412`

```dockerfile
```

-	Layers:
	-	`sha256:a8dcf122afeb054f28a15b72ff9dd4732949de6d9f29fd48ce961050488fd068`  
		Last Modified: Wed, 24 Jun 2026 01:13:57 GMT  
		Size: 3.2 MB (3154210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:920e305aed51c9c96030e977bb1a2d1e96c51cc538841490b573c2728cd8de61`  
		Last Modified: Wed, 24 Jun 2026 01:13:57 GMT  
		Size: 5.8 KB (5804 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; riscv64

```console
$ docker pull debian@sha256:53861871a8cd3ca87042a884e68be9679c70da686dc474e248d6a43cb97feb65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 MB (46974693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c178ad2b84d2b4c50d0eb8b29a058e6592408b50eef62f122c79621b63dd197`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:15:32 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:e2834ca6ae81e566a8b7364039c7033fa86964b75b5c08017d3845b776e8057e`  
		Last Modified: Tue, 14 Jul 2026 00:14:52 GMT  
		Size: 47.0 MB (46974469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c4439840894eb630e18fad920f073cf6169b73fd761853a508e3d7615b73c7`  
		Last Modified: Tue, 14 Jul 2026 01:16:27 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:1bf01b48d6ab3336d0273209b42d991ca981649654d425fe37a1071259125e54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3147291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec1d6e10d9a8766c2d76be73fd57620df3f68ce7789c77b53357884fffe0424`

```dockerfile
```

-	Layers:
	-	`sha256:82b43b0737a1aca2a4cecc7c14ad7f9c3413d5e9eee865491b8b8980524baf24`  
		Last Modified: Tue, 14 Jul 2026 01:16:28 GMT  
		Size: 3.1 MB (3141487 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:669ad0b9bd2364c9096681d2d8205329a3a68c3e9c15ef89b2bb615d0e355555`  
		Last Modified: Tue, 14 Jul 2026 01:16:27 GMT  
		Size: 5.8 KB (5804 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; s390x

```console
$ docker pull debian@sha256:1536f66196bc40b1f05a476ffd4bef3c18ff89db14fd9095778b2d5da7483ed7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48492061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e2624353b3a4c8801877cbafa13766ef707f91ade3c65f08578ecc838749b98`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1782172800'
# Wed, 24 Jun 2026 01:14:03 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:a0b2fd23e0800fbbfc85ca591b838ee879d8a24facc5eea58fda6e804f1b9315`  
		Last Modified: Wed, 24 Jun 2026 00:27:12 GMT  
		Size: 48.5 MB (48491838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8df39c9e14570086e376289f03b376c170f2e19c3f807b65b96f326435e3a6e`  
		Last Modified: Wed, 24 Jun 2026 01:14:13 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:fdfd1621f5c2e2cbb47a3a80a13037413dc77d32f3f2c0fb727ae9d71d023d38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3157942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c16bc96449c77343402b52dd7544207fe08143149f7cb3c78895ea072ba8495b`

```dockerfile
```

-	Layers:
	-	`sha256:a70abfe6c3c7a43c1897a49c756eabc4c8fc85bcbc60a99500e5c85c30d5fb2d`  
		Last Modified: Wed, 24 Jun 2026 01:14:13 GMT  
		Size: 3.2 MB (3152164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:980593c9bb1487e86437335d530ca10a1dd4ffb84fd7406c2d6823a479a3fe02`  
		Last Modified: Wed, 24 Jun 2026 01:14:13 GMT  
		Size: 5.8 KB (5778 bytes)  
		MIME: application/vnd.in-toto+json
