## `debian:experimental-20261005`

```console
$ docker pull debian@sha256:1218555424a435a879c8487b21ac0dbccfa557a672a14222625de307d655ac58
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `debian:experimental-20261005` - linux; arm variant v7

```console
$ docker pull debian@sha256:c12785d2fd5f4d1b32d7c926d52c98f6ef766792270bd70b249e904384b3a386
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46000577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34878414843d6ac565db8561ee4ad990be11d27c7cd881768e9639eac0dac604`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'unstable' '@1791158400'
# Tue, 06 Oct 2026 01:15:21 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:e470f0399b40656fbc68ae94450dcaa1231748f9a618953f5275fdb07afd5aa0`  
		Last Modified: Tue, 06 Oct 2026 00:13:57 GMT  
		Size: 46.0 MB (46000356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca771ce5b76bc999aee5cd0b0efe03056f0cefac28f2df95e70c532c516930c8`  
		Last Modified: Tue, 06 Oct 2026 01:15:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20261005` - unknown; unknown

```console
$ docker pull debian@sha256:c49f378408120240efad1b0311a86130bd92080e74c5c389faa3a9360ca3c08e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:770ab118aa792139a11d4f90703074658bcee09d015420c9adc662dc103184ed`

```dockerfile
```

-	Layers:
	-	`sha256:c51f57225b3f17610d4c0d407c84d98dee412ca9be0f64a9abc1fbf5595af79e`  
		Last Modified: Tue, 06 Oct 2026 01:15:28 GMT  
		Size: 3.2 MB (3175640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49d2b87872f44df1a3668b68b2637d76fe9ae2fedf606a6206b75b2b47139405`  
		Last Modified: Tue, 06 Oct 2026 01:15:27 GMT  
		Size: 6.2 KB (6164 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental-20261005` - linux; ppc64le

```console
$ docker pull debian@sha256:982b8db2cbf4e816275ad90f518b49576acf3633dd9b357af91c73d15dbea9ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54495878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f7fe56a43797e8101365c460734e2638095aaefae885b4a1c1409b33ddf5b75`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'unstable' '@1791158400'
# Tue, 06 Oct 2026 01:17:19 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:6e877c3a8ce160450527b31b0c3944585ccf7e18cb0c36fac948cf0814e33ce5`  
		Last Modified: Tue, 06 Oct 2026 00:17:08 GMT  
		Size: 54.5 MB (54495656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28e303264a0a70988a9c9a5d2d791a9e587effb504799e3e61539b9a5abfc23`  
		Last Modified: Tue, 06 Oct 2026 01:17:54 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20261005` - unknown; unknown

```console
$ docker pull debian@sha256:289f16610087443dbc4af38f2835bed54733cbbd698acba21d30d9b57d8eed8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3184004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038412d0e6af4303125154edc16da06c96469a9b45d2a9369a035d88acb2c387`

```dockerfile
```

-	Layers:
	-	`sha256:770787ba14fc06169aa03f9a66235b1be9ce5745e20434ac2581c4c90086962b`  
		Last Modified: Tue, 06 Oct 2026 01:17:54 GMT  
		Size: 3.2 MB (3177871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ae58fb50f23100a482923c030a138ed92611ab00a30f54d9ce944b715a341db`  
		Last Modified: Tue, 06 Oct 2026 01:17:54 GMT  
		Size: 6.1 KB (6133 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental-20261005` - linux; s390x

```console
$ docker pull debian@sha256:955f9a9168f2314eb79dc6513e6e403c6540e7c341fb295d358c545fef4f2d04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48908512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7850a702657ee82e046bca5940310fd66c421096356808ba9d88c623a45394b4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'unstable' '@1791158400'
# Tue, 06 Oct 2026 01:13:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:bed96751360816a201e176a1212adbca4f146d9f20533b20e81c427c1f56a727`  
		Last Modified: Tue, 06 Oct 2026 00:13:16 GMT  
		Size: 48.9 MB (48908290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a183988ea804cc16aae6fb9806d57fd06afd4e7168e3b8a68807b6d627fb972`  
		Last Modified: Tue, 06 Oct 2026 01:13:47 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20261005` - unknown; unknown

```console
$ docker pull debian@sha256:9f47e02e6d96c4d1c19fa5f7b495fe4df114a7928a139cae6f7519e2f5ddd664
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ac2f92e5ad7340c0f6ec873bf66b70e46e9d0fe49d06640d47936c98bf9999f`

```dockerfile
```

-	Layers:
	-	`sha256:e3b1474c904373bb963269cb987f0249bcea6ab985811e0ad47ebb83c642202d`  
		Last Modified: Tue, 06 Oct 2026 01:13:47 GMT  
		Size: 3.2 MB (3175501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49657dfe6bf32258ade1bc95c08e158d03f7d85046050a78bdaced8154d4528e`  
		Last Modified: Tue, 06 Oct 2026 01:13:47 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.in-toto+json
