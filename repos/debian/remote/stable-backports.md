## `debian:stable-backports`

```console
$ docker pull debian@sha256:790788bef635b55f0a8951276efc4c94c9761a9429df5d7b9eca06d7ec3fa3bb
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
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `debian:stable-backports` - linux; amd64

```console
$ docker pull debian@sha256:0dc4d996c3353e75196044e5b6f7ec097d748b0af5d8303994d284509d06dd79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49312534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d6efeb3d2b325f5b0dbe193a07ad1e4834b9011e98977009d851312843ed630`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'stable' '@1785715200'
# Wed, 05 Aug 2026 00:15:11 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:722bf8bfc713210aa62f145aaaad726c786a10e34c37fe947e7efcf72c9b349d`  
		Last Modified: Tue, 04 Aug 2026 23:52:18 GMT  
		Size: 49.3 MB (49312312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d3349ea1374c99bbdf42599911311d279f231ea9cfc1f042704dff79202dc36`  
		Last Modified: Wed, 05 Aug 2026 00:15:17 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:8291f758c4a86c70d993c80f16e4ab4bac1f9f07cb4219cb24b3fdf55a38ed6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3176775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:858f8d6a073bbed7143bf1def7a3f2b7d27e091cd1b85067c3a97dde00941c93`

```dockerfile
```

-	Layers:
	-	`sha256:4d262fb10db6d6a089fcee7b9266b2324da62c7e351454146a4ab13bb44a1e49`  
		Last Modified: Wed, 05 Aug 2026 00:15:17 GMT  
		Size: 3.2 MB (3170991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23c8f9f344856c765c242f102db1e9d66b489d5fdf35e6284366de9badf52d02`  
		Last Modified: Wed, 05 Aug 2026 00:15:17 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:430a91f90ecd5ea4f87409db5a563c2b000e878dfeb048399123cf1cb2085f6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47489849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24540a475cee02c3b0b1c784ba1dedfcdb09ba8f99dbaa7977ef6bb32c86b9f0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'stable' '@1785715200'
# Wed, 05 Aug 2026 00:14:30 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:c3935f586718b5f25bd23b88b9d8c4aff28ba4d519362b7a899c0d94754e0ada`  
		Last Modified: Tue, 04 Aug 2026 23:51:15 GMT  
		Size: 47.5 MB (47489627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2adbc658ff979a030d5a7073eb744b57f037b1d6eee4f2eb8fec10dc8fe4751e`  
		Last Modified: Wed, 05 Aug 2026 00:14:37 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:cf97d6735d387297210d8cb8e87faac540db6c4c4cd542f846fedfd89bff98fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3372a7be6a5d3f9b35e0b1acdb8aaa85398a33218b9a24fd23bd2be2537535a`

```dockerfile
```

-	Layers:
	-	`sha256:3af2d7a3a21b7790d4d37a1e1aa6fcb36c14c81ad30818c51f2ffcd9f96213eb`  
		Last Modified: Wed, 05 Aug 2026 00:14:37 GMT  
		Size: 3.2 MB (3173928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a02d8245d743377c6ce5e46b1461e1a907870e1479db038e132eab63c228607`  
		Last Modified: Wed, 05 Aug 2026 00:14:37 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:6ad0858e4c0eda340eea985eaf240de31b8d82aa8f1976b5a454b7f6b6552127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45743601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62865581efed3ddf96b70715eec13dca3bf57abee35f2cf3d5d2a7f47dc76674`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'stable' '@1785715200'
# Wed, 05 Aug 2026 00:15:22 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:f57e8fb19a302a48a7bf739ff17dc6af0a2a1eb69e2b8af0cba1509685019f21`  
		Last Modified: Tue, 04 Aug 2026 23:52:12 GMT  
		Size: 45.7 MB (45743378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:732f3f8ae6425e42c6892faac21c4948597e464e24672e6dc7ba32c919daeda0`  
		Last Modified: Wed, 05 Aug 2026 00:15:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:39d34c893a132104b7623a73bdb8333f3a19afeec79934bc7ee8b796412d2d7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3178205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f692668452a24e95ac04f3265f13b7bb4945745942f978fed4426f98fe03ba7`

```dockerfile
```

-	Layers:
	-	`sha256:5c4093c7f29b66be3d2b7edf7cfa57e950ec8c0ff160af5fbc5deec86257fb25`  
		Last Modified: Wed, 05 Aug 2026 00:15:28 GMT  
		Size: 3.2 MB (3172365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3798a02eb65a25a166aef17e9d6b6722f9035d5e9628e95f1905358c3c57eb72`  
		Last Modified: Wed, 05 Aug 2026 00:15:28 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:0436740b288289295742589259d1a24e86027e0c8a86b4ed59334191af5fe886
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49674066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd24d3dbe0b841658a917394b67368d73aebb6c7749ec3518816672a6a87889c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'stable' '@1785715200'
# Wed, 05 Aug 2026 00:15:00 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:d043e9be923094d3616847f455e840ec1a08e35a214a908a726cbbe4c8b5d899`  
		Last Modified: Tue, 04 Aug 2026 23:52:12 GMT  
		Size: 49.7 MB (49673844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741defbd5e106e6f7c5b185c5fb87430651b4f139e325ab4a554081994e95931`  
		Last Modified: Wed, 05 Aug 2026 00:15:07 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:0b7c3276b9fbe96f016044664d6768dc1a32401cac2f32360ba459169590f84d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3177687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a5062eaec5052e8df8749ad6594ef9fe889dcd3c6348637dd4097ef68ebb10`

```dockerfile
```

-	Layers:
	-	`sha256:2f7a43ad8a76ac5d8d27764105ce64bf5dcc71c61079909b0885ee3ae6f8ad39`  
		Last Modified: Wed, 05 Aug 2026 00:15:07 GMT  
		Size: 3.2 MB (3171835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f4220cab39587b4a03e4578c9b752d9b84bfdc964682a485df1c8044656ad6a`  
		Last Modified: Wed, 05 Aug 2026 00:15:07 GMT  
		Size: 5.9 KB (5852 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:1f1e453f4a95bf45e237578da59b6052916040a9c53ab4e915296b543ff4d983
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50831395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b5c4d7ac78c282e52f7583f9902e98f7e27bac45b71291eb3ca3bbe87dd530f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'stable' '@1785715200'
# Wed, 05 Aug 2026 00:15:37 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:853ce8716d163f15733b2ae2d95fe044e47d10028f2cd815c23587c2c764212d`  
		Last Modified: Tue, 04 Aug 2026 23:52:16 GMT  
		Size: 50.8 MB (50831173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02d85055d02ba68048abff36c8f56cecc34fd2b1e08646bb4ee2b78f44ee49c3`  
		Last Modified: Wed, 05 Aug 2026 00:15:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:4e8efdaec0183f0ec687cabd9d7ca5810776c217940a1ee63afefab60339bb52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3173960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386289490d2ae5d38dfed42a74297dee673a015ad53cebda957807bb30854b1d`

```dockerfile
```

-	Layers:
	-	`sha256:b9338c6c3d48643185db54eefa72574823daee67275c54ba70fffa95ea652283`  
		Last Modified: Wed, 05 Aug 2026 00:15:44 GMT  
		Size: 3.2 MB (3168193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ab124cdcd47f38ba7acca221d19b2cae4b1286447657c0c4a12d01f7eba5908`  
		Last Modified: Wed, 05 Aug 2026 00:15:44 GMT  
		Size: 5.8 KB (5767 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:a3f08187ab30a49d1973c913ddfd87a9ff906baeea801352df800bfb7d734a81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53133826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb69169fc594f7ba265b85b7e00403495b5c02c80932ef8308ceb6476431ce75`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'stable' '@1785715200'
# Wed, 05 Aug 2026 03:51:43 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:2163fd38ae2045383c0de2aa5e2c1805326c7cfad7756b6a3e0e1166a8bb95d7`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0d4bcadf1dbbf440ad654bfa6d60e25f35d542c2eefca034094b4fe14c862e6`  
		Last Modified: Wed, 05 Aug 2026 03:52:03 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:476fb5ccafd9287e57ffd45d6bc31d4838be860d066430d285f117c7401e66f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3180313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a78e2f110ca1235a5f23e76445c45895c5d064c8f240faff4d6b9606417dcc9`

```dockerfile
```

-	Layers:
	-	`sha256:36c2ec1a495d5b4e8a6729fc33b549ca48cb4f96dd0e3ce77780d0d9ccd0181f`  
		Last Modified: Wed, 05 Aug 2026 03:52:03 GMT  
		Size: 3.2 MB (3174504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88fd3e5c8c7c931d31b5d870b4ec5e9d6bf79b8c07a0fd33a9130b7c0e629ba6`  
		Last Modified: Wed, 05 Aug 2026 03:52:03 GMT  
		Size: 5.8 KB (5809 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; riscv64

```console
$ docker pull debian@sha256:e2d98fb572b7a63c8ff6b39f8101f3aafa240e898031d9e76349477b73a4bd60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47797702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:436805fbbb1ed1d66f7eec5a267ee75db5f9c2ac96fb7d62eb0d7289c8aaab92`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'stable' '@1785715200'
# Wed, 05 Aug 2026 09:32:29 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:7b6d2d0926f819ce1f09efcb1187f288f92fa239c088a90f77104ef23769ce01`  
		Last Modified: Wed, 05 Aug 2026 00:49:54 GMT  
		Size: 47.8 MB (47797481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee17a1436e8a92617e7ad5d97845f32f88f7266b0ca46122fbdf244e8e9ec006`  
		Last Modified: Wed, 05 Aug 2026 09:33:23 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:add32e787e6756034e76470dc3aa4f3638903601294f19e733121a9e2e60a9f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3169125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf71b63fa6680c29a29c725c1989427fad2c979b90a1c81e62af4eba6131bba2`

```dockerfile
```

-	Layers:
	-	`sha256:76778dbfa3fd86061fbbccb0c38713bbb6034a07ecd89aff50543110e37249ce`  
		Last Modified: Wed, 05 Aug 2026 09:33:23 GMT  
		Size: 3.2 MB (3163316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9282e4f2635252cad40c2dc9227dcd97927ffa320c02349d3f3f93c2844058b1`  
		Last Modified: Wed, 05 Aug 2026 09:33:23 GMT  
		Size: 5.8 KB (5809 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:a5c1a7a3f0cd276222ce180f7c6bf9f11ba51ab8ed03d79f29dc60e57a08a0d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49381649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa068f155df7fe5461ba9b133d70ccabdcbd22383e4534b1c0c77ea6900a25c3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'stable' '@1785715200'
# Wed, 05 Aug 2026 00:14:27 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:e8c59ed3025a91926c5a9aaf81e0a967a4a2920b822ce8b95f10171e4500581c`  
		Last Modified: Tue, 04 Aug 2026 23:51:06 GMT  
		Size: 49.4 MB (49381427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d738064644d9f4038e240c13203326c0be7f23ac6c9c78f8e0aee264081fa1d`  
		Last Modified: Wed, 05 Aug 2026 00:14:38 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:62a1c7547d761c737ef9be77a23163468c0f562764e824612384b99cfd104dae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3178222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815db78051192e0817857124cf2ded90357fd16b9fa881fefa394a1bf4a9188b`

```dockerfile
```

-	Layers:
	-	`sha256:e5dbd40ee0ca24d277d834505b8bdd42f20953eeb359228869612c390b62c214`  
		Last Modified: Wed, 05 Aug 2026 00:14:38 GMT  
		Size: 3.2 MB (3172438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba03ca12793d031319be9094ac82a339c2043c73c7bdda066437d2da8e531896`  
		Last Modified: Wed, 05 Aug 2026 00:14:38 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json
