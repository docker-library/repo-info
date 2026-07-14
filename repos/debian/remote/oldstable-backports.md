## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:37d69d75b23ab413d0f972ff181bf6d052d6732ffc808b9a482ec25af9ce8614
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

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:6d2a53677fafa9c3f344b02c635d4f9be43f4d3ee95476f768a790b32711b049
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48502435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4c013391dd32e568ed47aab1d5c49961d75cd5303307b784583cfe1b19c3e41`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'oldstable' '@1782172800'
# Wed, 24 Jun 2026 01:15:19 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:51ab488a68fb9b3a294b88de20dccb66167a9a3a9af901aae5088feaaa6940f7`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 48.5 MB (48502212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b47a9d7e94d030b07cfc30bbc86bb4eda72ac8d85203d78ee293615cff3479e4`  
		Last Modified: Wed, 24 Jun 2026 01:15:26 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:aabdf4af6f65ff2cef15125753cdff45ff32e0172b34d193f915de04bd23eb1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8839a301c50943853d5e2fe80a0d3c475d4f3e5d8ce26fe362ec6526556013c`

```dockerfile
```

-	Layers:
	-	`sha256:e39bd03203e190779a5c6cbfdecd7f26613fc4bb99bb85ce2fd051a093adc971`  
		Last Modified: Wed, 24 Jun 2026 01:15:27 GMT  
		Size: 3.7 MB (3734112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01e21bf2ed581881534359e9a57449020927a5da249aef76039fa7a2c3e23507`  
		Last Modified: Wed, 24 Jun 2026 01:15:26 GMT  
		Size: 5.8 KB (5809 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:8c393cd5847a9cdfc7cbd6c6c389b61fe1ac79d3e9be35e06e264d3fa1b82426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46034046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb620d2971d80bda51cd641cc01e3f13d6109f707537c6c91f9196b0ff1e1f8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'oldstable' '@1783900800'
# Tue, 14 Jul 2026 01:15:33 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:02a0969fdb584b89fd1ab728977e8c21a5b2f2eef49d10b73e4d1bdf7bf1ca46`  
		Last Modified: Tue, 14 Jul 2026 00:14:04 GMT  
		Size: 46.0 MB (46033821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30888d5d44387d98dd2fa20f9e39b6f9e922dd5296bd93c4cfb5925e979f4759`  
		Last Modified: Tue, 14 Jul 2026 01:15:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:33d53d8ba79e1623913d5feae4cd977cf8f5ce5aabbe76448db71a37403f4a2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfac22d7ad23c5dc1f14022944cb64b4510967ebecfc98b5dc65f6a808a1cbc5`

```dockerfile
```

-	Layers:
	-	`sha256:ecce8c3034dad6daa3d4c806c2ab90942cf6f602aa8231f4b1fe6cc26ea991f6`  
		Last Modified: Tue, 14 Jul 2026 01:15:40 GMT  
		Size: 3.7 MB (3734349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac34cee732d3900fe35070dfa0e6488ef9686a0299874e7e7897357a826eb284`  
		Last Modified: Tue, 14 Jul 2026 01:15:40 GMT  
		Size: 5.9 KB (5866 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:3846f80bc8f4e68d3cc85c3b4ad3a6fb29332a739b74dba6b3c5c4db0ec0fcce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44208375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9fb4e57dfd0319be14abe6fe16fd31e5d12013582d3824fc11de63cf15cc024`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'oldstable' '@1782172800'
# Wed, 24 Jun 2026 01:15:14 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:35f659515dd5d431678ec3ac7c6a393ddd1078d0d646891a6599765a5144b573`  
		Last Modified: Wed, 24 Jun 2026 00:28:10 GMT  
		Size: 44.2 MB (44208151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0cc19a4bd9d8bcc683ffb29f7a27b7290a34c8cdf9a70f4ff152c016ce1875`  
		Last Modified: Wed, 24 Jun 2026 01:15:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:d79cbbc553d6986af5e48fb1c43c972967c4c28d8123b422302b04a6e3303205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22aebbc6b08445805f3b8c7f4fc911de7184dafaab70302f672f1bc620a6948a`

```dockerfile
```

-	Layers:
	-	`sha256:ba34ef0da562307ce6871e5b114ecf21d86b8578691e5d0822e8276f442ff1a1`  
		Last Modified: Wed, 24 Jun 2026 01:15:21 GMT  
		Size: 3.7 MB (3736291 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d404d59309ccaf510e81f72f9bce2974e7743a9f5813313beb5b7646fd4ff52`  
		Last Modified: Wed, 24 Jun 2026 01:15:21 GMT  
		Size: 5.9 KB (5866 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:29dbe67599148622cc51b7a63e2d9d26f02ad8659ae9f0c640731f1bbcd00a16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48389430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:182ebe222032168efbdb053588c564cd58112a532395c9a1bb3ffca8b347cd58`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'oldstable' '@1782172800'
# Wed, 24 Jun 2026 01:14:57 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:37034c07157ffef9edca8bf4eefbc5ce8556cf9c88d7b04596853d7c8e2a975c`  
		Last Modified: Wed, 24 Jun 2026 00:27:51 GMT  
		Size: 48.4 MB (48389206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d6a58bcef264c5ac38f8bd137734c627d79b716e5a8fea5ff1c2b00980cdea`  
		Last Modified: Wed, 24 Jun 2026 01:15:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:cf1455096484b8a8995c47a6c28175794fe58d452267e9a758f284a53fe1117d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c79947b363026f6223d59a8bcd785e7ed79de02302da4800103ee99411919b3d`

```dockerfile
```

-	Layers:
	-	`sha256:74839a0f80ac5c91bc1e956792e87b0f2a22e32539bc2d3f5edffa26e92903f6`  
		Last Modified: Wed, 24 Jun 2026 01:15:05 GMT  
		Size: 3.7 MB (3734327 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e52edca155cda32fe346f7318d7b232bd53859a3592a2330de93e5dafac69c50`  
		Last Modified: Wed, 24 Jun 2026 01:15:05 GMT  
		Size: 5.9 KB (5878 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:7bc03bdb4832b9ee4da9cafd7fc39eea6908f77c2e30d273e5f6ba2ba4215eec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49491603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34d4f4c8f39f8b2efe674b98b24ca14066a618bc9128c91b1afae7730893079a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'oldstable' '@1782172800'
# Wed, 24 Jun 2026 01:15:11 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:e6213bcdf45cd66db90d443212473e95a3ebaf64323e5130e2f5276ce9ae3072`  
		Last Modified: Wed, 24 Jun 2026 00:28:51 GMT  
		Size: 49.5 MB (49491379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:421744dd4338f64087310f27bb7bf618501a0da265f954100bbb10ae8f7e2cd5`  
		Last Modified: Wed, 24 Jun 2026 01:15:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:bde320dcc46c3ce2ec6faa42accb97234637d6f1f7c55a6e5ec258ccb134a5b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3737100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7945d92b96cbd60e207e7aa36cc1156ac9283c03c78241e31aa8c7c114da1632`

```dockerfile
```

-	Layers:
	-	`sha256:a4337d906dc3387bc9def2e3b5064ffd6a9034430d6a7679af24f911f0aeb79d`  
		Last Modified: Wed, 24 Jun 2026 01:15:19 GMT  
		Size: 3.7 MB (3731308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:403f2f4f23c79d286c62f57b065cfcbad2a575f046914c60eb60905415aa4317`  
		Last Modified: Wed, 24 Jun 2026 01:15:19 GMT  
		Size: 5.8 KB (5792 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; mips64le

```console
$ docker pull debian@sha256:14ebc16075d6feb5c292466062bb013a54cf8a8ea3b995fa1f7c6d8e600537b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48793052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6345906d6012c28bfcb18cda7b957257bd5ef7105cc43b3b41a03faa79a392e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'mips64el' out/ 'oldstable' '@1782172800'
# Wed, 24 Jun 2026 01:16:01 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:c0f8845a6ed633a3c4e2a8e73bcdec5453e3a375f32e6fb2ee6863c8530a0bc4`  
		Last Modified: Wed, 24 Jun 2026 00:28:06 GMT  
		Size: 48.8 MB (48792827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e831fab755e1be19a5547d051214de049d50c93b7637cfa74e5eb2f3996d8b53`  
		Last Modified: Wed, 24 Jun 2026 01:16:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:4b6d859cdcf08112f926a1128554d223bb2f6cd065e82cfdcf1df78b5c222430
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 KB (5634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fedff23176b87d674f27b73e66c0fc8c000053ec4799916913d88239ca90fd5a`

```dockerfile
```

-	Layers:
	-	`sha256:9c5058ff984ab0a255564ce48377b60edbddff6d350d4c24fc075a81fd9ac678`  
		Last Modified: Wed, 24 Jun 2026 01:16:19 GMT  
		Size: 5.6 KB (5634 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:4a508527016f248568d425de32b018914e7208dca4217a5777459c71005e5d98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52347069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53ba99624814e8fb301f31cc36761d4ef6e1851c7653503f7c73bd90081a7a63`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'oldstable' '@1782172800'
# Wed, 24 Jun 2026 01:14:16 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:7321cb28d57d6b7c8ccdac8d30ebcefbda3f442b22ab533a0b2aef2f6f28fae3`  
		Last Modified: Wed, 24 Jun 2026 00:28:32 GMT  
		Size: 52.3 MB (52346845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:605def5d6d6333b067ef56f70f51c6c1fe5f8226d714a22d6c8d371a0cf2ba6f`  
		Last Modified: Wed, 24 Jun 2026 01:14:31 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:1022a990184a92ab733483573a3ef229b00104b9fad096dae569fcb30efec652
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df970a1b15456cac36bce76ca49591d6678c55f1f31e26583b4158039491e3ee`

```dockerfile
```

-	Layers:
	-	`sha256:cde68b85f459c639898db8d0e6bb612ae382aa5f66fe0c6f2329564c55e51820`  
		Last Modified: Wed, 24 Jun 2026 01:14:32 GMT  
		Size: 3.7 MB (3738470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5dddc45c8b0ee56115258056a5b0d42dd33f47f3b958175a35bdde155692161`  
		Last Modified: Wed, 24 Jun 2026 01:14:31 GMT  
		Size: 5.8 KB (5836 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; s390x

```console
$ docker pull debian@sha256:e6dbc6bbbe9e0525a9c1e6fe082e21900e8535b59d64a5bc5cacb9152711a8ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47161905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e123168174f802d98f310bf0ffe8324b31489e5f1a712a74d645d46a100aa652`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'oldstable' '@1782172800'
# Wed, 24 Jun 2026 01:14:07 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:0f945b9568267786adbceb79f99464d6fe2a758310e284cb0ce77072f0fe24a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 47.2 MB (47161680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df2ccb1544199ba755f0ddb0986e43def44de4877614702ecdf1ab7ce7ec8161`  
		Last Modified: Wed, 24 Jun 2026 01:14:17 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:80c746be48912dac965b585adf9c7ff323719e62c94a4e5658c6aab5803adc4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3736760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66a5b1dae3e51a0d9b6b81b766f31f0064070a3426fa8634f0631cff7c0d307`

```dockerfile
```

-	Layers:
	-	`sha256:fd30c774eb42c49a7cb4a96c73d2dfa36b58d7e6e360f4d8911b955038ae6592`  
		Last Modified: Wed, 24 Jun 2026 01:14:18 GMT  
		Size: 3.7 MB (3730950 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97e190182a984a52a317f6c14e8ac00b7001b1dc9fb4faa5eb2ba56e81be4bc7`  
		Last Modified: Wed, 24 Jun 2026 01:14:18 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json
