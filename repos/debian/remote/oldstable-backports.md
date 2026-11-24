## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:5bad793567b2f65e46faf2444e1f5b26135bcc1abd51b1cee903187be3d0df0f
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
$ docker pull debian@sha256:4fefccb1e4a115ca4890f34a91386d3e12ae20544cb3c837a995d11117180e85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48526606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f60428dd35487b534e0f4bb4d41eab152c9a6d777d5c4bb07ea015e76065847`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'oldstable' '@1795392000'
# Tue, 24 Nov 2026 04:13:15 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:c1a2488a8aabd8d9de5bda6e61b7401fa1f76ac6133c86894981aa76f1ffd462`  
		Last Modified: Tue, 24 Nov 2026 03:40:00 GMT  
		Size: 48.5 MB (48526381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28bcd51a17f84eb74fffb233d3666853d93773a6c19d02f0981f3d43465b756`  
		Last Modified: Tue, 24 Nov 2026 04:13:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c8070a17e6690d604cb2b1536cb068c6756a15621353bff22e4acdc72d65f08b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:373dd4f78f59ac4eaa15d77080911bfd9168375cfac26109b134de9116a2a371`

```dockerfile
```

-	Layers:
	-	`sha256:0b01de33fa7778720a6b4883eba0ce70a2c7492cf662dc92479c2a22a847624e`  
		Last Modified: Tue, 24 Nov 2026 04:13:22 GMT  
		Size: 3.7 MB (3734184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:025a0ac470a1eee1539d4810d829aee2bb9c695e223f9130d8b1e6ca429dc7a5`  
		Last Modified: Tue, 24 Nov 2026 04:13:21 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:d584731353f0c13b61eeef3b0e921c83a1da41240a57a85ac9cd9354f3253bbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44223433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb3084e7bd5046912ea2581c74269d7d493e79441c15ddf7d46f6f993825813d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'oldstable' '@1795392000'
# Tue, 24 Nov 2026 04:13:28 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:28bb8af6d0004364dbb544adbbba4d2e2d9ca8fee7fe664c2091751f6d52f582`  
		Last Modified: Tue, 24 Nov 2026 03:40:38 GMT  
		Size: 44.2 MB (44223208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3190bee3f69235907523f4a44b1c2846f0efd66bdab7c1c6eb4ae9d795e72fc4`  
		Last Modified: Tue, 24 Nov 2026 04:13:34 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:a2e571aecfb803b9e21792a43a1767d9596185711f7c7a6210d1c541bef0857e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c4e906db0885bdbdedcdea4dc3afef77bcbf5d62e3aaf1fbfd8e88468b66d0b`

```dockerfile
```

-	Layers:
	-	`sha256:7f4ac4afa518f2c92441213fb7d49205011adaa495adb6f1c2c4a4e048f71089`  
		Last Modified: Tue, 24 Nov 2026 04:13:34 GMT  
		Size: 3.7 MB (3736363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:203a7f083d7e1dbcbe85291e30996ab1e3405c78ef4cdaedc15d90db3455a80d`  
		Last Modified: Tue, 24 Nov 2026 04:13:34 GMT  
		Size: 5.9 KB (5866 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:7a255239792fac71b230782842eac4b59ee99f2c184a428637a3e4d1e6ad081c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48412489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:961011afb8335fc8865b70cb80a901d1d9a1a13605f0de419ec94cc04e5e06ba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'oldstable' '@1795392000'
# Tue, 24 Nov 2026 04:13:07 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:3bdacbefbbd85f3ace1f5b6992c56816100203c2a9a7d0c660980af8c9e52ec7`  
		Last Modified: Tue, 24 Nov 2026 03:40:15 GMT  
		Size: 48.4 MB (48412264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a20692f7688ea91c235240c7f396152a3c2f625707e53eafb323e7f9514b299`  
		Last Modified: Tue, 24 Nov 2026 04:13:13 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f00d44c1be5f34f72177e205e0fb77faa63edc45ad9e97388f8c4162f2cfa304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88cef50c2a414f3bccc2a32ade2ff04d4db42914e5ef8daf8121ca1e45570730`

```dockerfile
```

-	Layers:
	-	`sha256:0e762378fc1bf71c22f6973b5ce03a563694222bfae09d863610a5c7207be8c4`  
		Last Modified: Tue, 24 Nov 2026 04:13:13 GMT  
		Size: 3.7 MB (3734399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21267ce8b66cf9b7bd9a8f3c272ff8e0ec701cba6510c490d900189a804045e4`  
		Last Modified: Tue, 24 Nov 2026 04:13:13 GMT  
		Size: 5.9 KB (5877 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:88f995d92f9611f69a7d08df648a9a59899d4dce64fb1f9e2b12910a634aa399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49515764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70f2bc66004d717693f07cc69d1a8d37d3a2f6bb57c99e280e4f3aa67efdd50a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'oldstable' '@1795392000'
# Tue, 24 Nov 2026 04:13:14 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:3cf889d7a1140c0bbb0e1f222c7cf18380ce134e60f060c1ed711f8a4d1eadb4`  
		Last Modified: Tue, 24 Nov 2026 03:40:21 GMT  
		Size: 49.5 MB (49515539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6011d67519130adf7c90cc0c0262a2b2e3010053e728067ab58af898bf08481c`  
		Last Modified: Tue, 24 Nov 2026 04:13:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c7be8afaae2bce4d94a766ef503f6cc3f7f665f873c3b16e3ff190e238a9c8de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3737173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bad5235632b554a1ac7a742d8c14ae58f1bcd367a55113719f69bd57e5725f76`

```dockerfile
```

-	Layers:
	-	`sha256:7bf74aa28603e8bcbe1ef435f61d10443cfd1c7c724151d7b481947c1bd424a0`  
		Last Modified: Tue, 24 Nov 2026 04:13:21 GMT  
		Size: 3.7 MB (3731380 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e1fa7e32939a93c3859ff8efcb21fcbb1acdfcf0a1fa6ec0a3bba502cf9b94a`  
		Last Modified: Tue, 24 Nov 2026 04:13:21 GMT  
		Size: 5.8 KB (5793 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:3fc809eb0d33ee7077abba04abdeb4b5dcb7b036522d5c9803888ddb959894ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52368728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1cad9f728a7d393c236b74b2c7a4e13b664b34a54d4854f4a362f5266224b4c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'oldstable' '@1795392000'
# Tue, 24 Nov 2026 04:12:27 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:e8c9b7323739eb87f7249384bd5a61a6248c866a3624265bcb964cb579b90c06`  
		Last Modified: Tue, 24 Nov 2026 03:40:35 GMT  
		Size: 52.4 MB (52368503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a38ec01efdab385e7844fec781caff64240ba914c180db692ccfcf1e4bde2885`  
		Last Modified: Tue, 24 Nov 2026 04:12:55 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:a55841a2ca2168d04ea4950abc4a483aaf3570bd31d17f9ee37017a20508c131
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:152e8ce3c587a5db35f5b85f505e47f493d828f1e371b441345677d2d45febf2`

```dockerfile
```

-	Layers:
	-	`sha256:034bd51fd893c227aecc7443dafba8ce838f8fb7d0686174947f2c22ab39a454`  
		Last Modified: Tue, 24 Nov 2026 04:12:56 GMT  
		Size: 3.7 MB (3738542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a85e0950016dfbc603dd07dee999feaf206b9f690f1f5c4f74a54d2e49901047`  
		Last Modified: Tue, 24 Nov 2026 04:12:55 GMT  
		Size: 5.8 KB (5836 bytes)  
		MIME: application/vnd.in-toto+json
