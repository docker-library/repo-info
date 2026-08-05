## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:548c306930deeec4d52eec7db8dbaf9ea265544c6230060a9c7c217468a868f7
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
$ docker pull debian@sha256:0caa6785310fac75ff80ecac5f42d22e85ee5d013bc4326c9e09518a0691caac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48497321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed07a4c2744dc585e808b2fe916f2e64a889cd43ee622aee1a9131639469db5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'oldstable' '@1785715200'
# Wed, 05 Aug 2026 00:15:00 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:1ad8eb01b5705b25b26123a9bdf3982c1429fd04b013f9605d51977e19dc2eb9`  
		Last Modified: Tue, 04 Aug 2026 23:52:01 GMT  
		Size: 48.5 MB (48497096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2811c44e52d72b447b314c91780c10aa833f2fb88c345f68e276bbffb77381cf`  
		Last Modified: Wed, 05 Aug 2026 00:15:08 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:1500bf1a0b68c94e7e1cefd70ad50502b5af6cab4061b37924f46705da39f04d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d93a38df3d3d522ce5325c96ceaaf753ba3c65b5138a5fab901de3338c223f9`

```dockerfile
```

-	Layers:
	-	`sha256:fdee7f9a7592f6c7caf1f89c3d38ea5c595e5687bceb76cc41bce7d881b7f44b`  
		Last Modified: Wed, 05 Aug 2026 00:15:08 GMT  
		Size: 3.7 MB (3734148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a5d154a3fb613dce5d696aa813f021bd288a997a580c54d2ac8391ced3adf13`  
		Last Modified: Wed, 05 Aug 2026 00:15:07 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:e773851cfbfcd72b90d2b8977234e224d6ca3baf73143bf5f2e653eeebf4dca7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44203107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5475c954b168251e51da9687efddf662dc41a8ba47cd064ba761214e0a2d7985`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'oldstable' '@1785715200'
# Wed, 05 Aug 2026 00:14:58 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:1dd8cd253775119d701f15a744f67fab6a39b9714f08479514e34996f9b7bafe`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 44.2 MB (44202880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0949a3473af6809444f251b17503d314552197c25eaf677184cc7c49e6b4bd6f`  
		Last Modified: Wed, 05 Aug 2026 00:15:04 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f8b1d27bc08d29cde6bb664ed20ec5340cfcccd6f0a23b36ceeb3a2b6a6cda22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b05c2ce445b9056081c6dfc92fc82c2d0799e9e219438f5181ceb0d55fe5f66`

```dockerfile
```

-	Layers:
	-	`sha256:aac24be0794176684ab3df3dc0efe002d62ad805ae85c75a884aa8a7a3c52439`  
		Last Modified: Wed, 05 Aug 2026 00:15:04 GMT  
		Size: 3.7 MB (3736327 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad1e7a6b813e595bbe735156c20ece65340cdbb7648d493270822b7c3f54c4c3`  
		Last Modified: Wed, 05 Aug 2026 00:15:04 GMT  
		Size: 5.9 KB (5866 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:9101ec726d02b245535212f6abddd7dc73a27c3b0b6b7eff7df627b3980416d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48383610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe6df85af95cc53dc5a73cae6c966f269bcc4cdf326b45a098bd47f84d80c3c8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'oldstable' '@1785715200'
# Wed, 05 Aug 2026 00:15:03 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:fc01ce3542ed7bc272be5ec4ed9053ae1a476f0d9177fc3dcdb97deffc99504c`  
		Last Modified: Tue, 04 Aug 2026 23:52:21 GMT  
		Size: 48.4 MB (48383385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58aaf17628793bb59386b0fffc6024dca3dfa774a557f0993539ce5236d31ad8`  
		Last Modified: Wed, 05 Aug 2026 00:15:10 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:7330041f4bc783a4af60d3171c05b99ea520c01ba499e9f1f860982663a034af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60e5beda1faf5000e8c5dc9a19a868bb94445ff47eea6c94efabeb91240e0b1f`

```dockerfile
```

-	Layers:
	-	`sha256:24ea87ade7182558807132f71fb265fe6d622550c7b8d6b6f6eb21d58cbcceec`  
		Last Modified: Wed, 05 Aug 2026 00:15:10 GMT  
		Size: 3.7 MB (3734363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ade30978b81d7b10c2a2af23beef0ce6090bffdca54b6bf441c6f0364a664134`  
		Last Modified: Wed, 05 Aug 2026 00:15:10 GMT  
		Size: 5.9 KB (5878 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:38fc9ec866d7994054b8e5bd6c8facd0cbd9bae71c6a73ec9c826649c9e57e3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49485351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0bddeed13491e3185282e77fee589ff20d3a84d9e0a7b34713ea3e2bfff8df1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'oldstable' '@1785715200'
# Wed, 05 Aug 2026 00:15:22 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:198f820bb4677dccfa08706fb9d85437a6410291de3abb953d5b036c1f98c354`  
		Last Modified: Tue, 04 Aug 2026 23:52:01 GMT  
		Size: 49.5 MB (49485126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3afa427b4e9dc3456a82979dea178658a2b03ed3be57d433f5d83a45478d8d3`  
		Last Modified: Wed, 05 Aug 2026 00:15:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c4df08746203196843d9c35b78c2ae949b8546e3b34af796dde3045cef69ba61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3737137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13763e42b48d545e3a172d7383e2192148707509b89d7141bb0e2ab52250dee2`

```dockerfile
```

-	Layers:
	-	`sha256:e964dbd19d98503de6d87bc70fb94c8158a97ab48eccc47c8cd4d623408289ed`  
		Last Modified: Wed, 05 Aug 2026 00:15:29 GMT  
		Size: 3.7 MB (3731344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2144dfa099023194d00f47608b9ad8fc216e5806edc84292d0c24fc79985317e`  
		Last Modified: Wed, 05 Aug 2026 00:15:28 GMT  
		Size: 5.8 KB (5793 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:64d768042955c35f7cd2070b157f4c63f0751887aec9ba88a93c9873c7c49a70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52341704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:770fc372333ec2c0bae3849743afb777f1a88c279aa1cda5adb534a511fbb9e5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'oldstable' '@1785715200'
# Wed, 05 Aug 2026 03:50:36 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:4b9d9d61ce6ac35e1d14e5845958c8208eaa3671f7ea5903520ad6f11d161a8e`  
		Last Modified: Tue, 04 Aug 2026 23:51:20 GMT  
		Size: 52.3 MB (52341481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122dd92c38fa11055253274836d70eb15d4d211a5d2cc48da2cf51ce43d0afe2`  
		Last Modified: Wed, 05 Aug 2026 03:51:07 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:195bca464d7796e68f4897cf78a5143aab31de7d7fae4352a29418ea45f1944c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b9c843c0ae69383a214e6010e85be002c74fd21961485d3ed8a1bd4d7033d01`

```dockerfile
```

-	Layers:
	-	`sha256:e87dfa204cb759d4f383795a0680292bf47b3dd830f1e987c9c1524d96e370d0`  
		Last Modified: Wed, 05 Aug 2026 03:51:07 GMT  
		Size: 3.7 MB (3738506 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d440a165f233a86d50c64a5b2e71df7520b516b6cb05d568a607f7edc1ad4a92`  
		Last Modified: Wed, 05 Aug 2026 03:51:07 GMT  
		Size: 5.8 KB (5835 bytes)  
		MIME: application/vnd.in-toto+json
