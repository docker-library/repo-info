## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:40551dc7fd45854c08b8825820ffcf8302251c3432f909aa7edf8b2647a2704d
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

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:e919d1d4d4c208806ac2608bf9073dcef86b993e2bad37e736fd78457e522acb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48522316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be58fe5b823e62c701a01cea580acb91f6906069a1e6e33952dddad3c748c54a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'oldstable' '@1792531975'
# Wed, 21 Oct 2026 00:14:57 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:be266fc92b17cebf088c17dc743289bdcea59d77e123317ea2e4586bc23f850c`  
		Last Modified: Tue, 20 Oct 2026 23:30:57 GMT  
		Size: 48.5 MB (48522092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00726132bb1c7439b997d6554180bc6fd3a714b8da255e47936e8f3e03b258ac`  
		Last Modified: Wed, 21 Oct 2026 00:15:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c5922704664cd92504d80fd59cbcd8d97f1148927562cb225e6c08cc8377a3e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaac36bfa53d0ccde8623ad1526780f327dcfdc78959296c676722ffe65164d6`

```dockerfile
```

-	Layers:
	-	`sha256:0ef5cd75a04b1d392becef61c35427b8fc35d1f5da6b6c9c4fb7f48a72b2c438`  
		Last Modified: Wed, 21 Oct 2026 00:15:04 GMT  
		Size: 3.7 MB (3734184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:434ec69a67afdb45e46f44276aae06997e65ea7d52e89e13f4e3709e194c85f4`  
		Last Modified: Wed, 21 Oct 2026 00:15:04 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:6fcd11fc73b92817553cfe66010823a87373f36097ef9a9c123065c6df338f7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44220025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bbbfc2f0d83e14bd2f8aca89be9a7a16d063878826e86dd3582f317f7976fe0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'oldstable' '@1792531975'
# Wed, 21 Oct 2026 00:15:12 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:71955913e69d01d7b395abafd23fdbe7fd78a46dfbbb3f84d4c79fe9bc81c0ef`  
		Last Modified: Tue, 20 Oct 2026 23:30:25 GMT  
		Size: 44.2 MB (44219800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebddb2f0487f4ab732dc1641b54d1dc811203558bf6e37489eb97cd918ecad59`  
		Last Modified: Wed, 21 Oct 2026 00:15:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:fc1894a6a944504711d530ba0a0da7095d607fe16c10340685ea26367a3ba36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:697918cae6f28fb09c318c974ae3a6d7cc4d4ba56e9d64f90077ff126d7f87f0`

```dockerfile
```

-	Layers:
	-	`sha256:1e205e8458e2231946377a9cfac58bb2d5fdbd819163b44bbb4d7a0c2d01aa3c`  
		Last Modified: Wed, 21 Oct 2026 00:15:20 GMT  
		Size: 3.7 MB (3736363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f15da6ff0540054dbc670c94567567488226b3dfb53927faf192dd36d6c9f9b`  
		Last Modified: Wed, 21 Oct 2026 00:15:19 GMT  
		Size: 5.9 KB (5866 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:b21c5521806eadb3d20f7fe5383a7a20a8f92cf61957cf391ad19e2fdc8a3764
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48403338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c8eb6c28388232cd77f0c6427e33e757d6d0a77fb83fd71ca416759d29dba28`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'oldstable' '@1792531975'
# Wed, 21 Oct 2026 00:14:33 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:6c75d8c74fe7b9fe407dad25d87d3e214dd9614315eda22697334bdd4a7c3894`  
		Last Modified: Tue, 20 Oct 2026 23:30:10 GMT  
		Size: 48.4 MB (48403112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e0deb3c7dc1ab55a47363901e255c6b79bda8d05d772e610a6ea2371b746b02`  
		Last Modified: Wed, 21 Oct 2026 00:14:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:25d9ec59d00c4e0758cc724610417dbd26d9827c28af403e378b005f1cb51d0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2746e7a832696e376dcf82e38f686fe636f9f35e5271d2b6a19a2828fdbc68f2`

```dockerfile
```

-	Layers:
	-	`sha256:b2716437f0730d8c345723695d36d573d1900a36b189ead63bb51183b47c8a22`  
		Last Modified: Wed, 21 Oct 2026 00:14:41 GMT  
		Size: 3.7 MB (3734399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22953ce7407be402b10d1723fb05349bec1685673ac653939e25b3923f4ec914`  
		Last Modified: Wed, 21 Oct 2026 00:14:41 GMT  
		Size: 5.9 KB (5878 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:86296626c14f5a38b03369b9e571b7d59b3a42c20dfcd8b7df8c0350e5d52f3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49511880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a6dfccbfb61bc159292a19e6231abe7e8dc5f29e21b1bdd1db89131ae759481`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'oldstable' '@1792531975'
# Wed, 21 Oct 2026 00:14:57 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:a5eb11a9dfcd82b030f978fb4b9a6497f7eb4f52d31917a5c5e6bb45d81af109`  
		Last Modified: Tue, 20 Oct 2026 23:30:38 GMT  
		Size: 49.5 MB (49511654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c533b852fd2ed33a2ba90c6564a11bc31fd1ca424e3e91ccff957bd833bcf6`  
		Last Modified: Wed, 21 Oct 2026 00:15:03 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:6913dbc4e31c991e205d7f12ea400691605bfc62bfbfeb544a456ecf4deedfcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3737173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3edb6cb9bae6070153db35cb0f2bc860788caa8fd5a627d5568fe72158525dd`

```dockerfile
```

-	Layers:
	-	`sha256:a98a36b07b1e794ab84dd49d2699f16e27281fdca576892af43cc36496f437e4`  
		Last Modified: Wed, 21 Oct 2026 00:15:04 GMT  
		Size: 3.7 MB (3731380 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ed2106a3a5b3b1604737dfb3f3ff6cdcacf19950ef46209fdb693f0def2c3b8`  
		Last Modified: Wed, 21 Oct 2026 00:15:03 GMT  
		Size: 5.8 KB (5793 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:c2e304c8fb98bcb234bcf6ee12b3fc92afd85fe05fb9478db9ae6a8c3a782f92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52364973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d4c8a03158a21a85542314cf0a4e2a8533e815de6c68c85bee172bd517be510`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'oldstable' '@1792531975'
# Wed, 21 Oct 2026 00:15:12 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:27e7ba76262e0107c87ffa0342d06cc614e16bf1d0f25e66c6beeb269470fc2a`  
		Last Modified: Tue, 20 Oct 2026 23:32:38 GMT  
		Size: 52.4 MB (52364748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebddb2f0487f4ab732dc1641b54d1dc811203558bf6e37489eb97cd918ecad59`  
		Last Modified: Wed, 21 Oct 2026 00:15:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:5437239f7367802f232aafc754168043529a93cc3304c1ee6b99b51b9f74fcd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:216aa7f4fbceae7d707fd5076388fbf63981d192d01b6bf267323ecf577297c0`

```dockerfile
```

-	Layers:
	-	`sha256:4f1b2f481056ac108912d69f4bd2b252aa45a655308466b87d377108d44f2227`  
		Last Modified: Wed, 21 Oct 2026 00:15:25 GMT  
		Size: 3.7 MB (3738542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa96473ec8e015b3d9ec8a78bd58e21e36f0619e9c44d66d349b938c2de3217a`  
		Last Modified: Wed, 21 Oct 2026 00:15:25 GMT  
		Size: 5.8 KB (5836 bytes)  
		MIME: application/vnd.in-toto+json
