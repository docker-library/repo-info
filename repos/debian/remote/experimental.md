## `debian:experimental`

```console
$ docker pull debian@sha256:ed60036befb0c7119e34e30bf55249dc8112c9ee0e89ce8a7496b997f56a0d72
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

### `debian:experimental` - linux; amd64

```console
$ docker pull debian@sha256:c494ec42817b24a5891b7b4df833d6891403e4944979175a2a1879fa8957aa8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49649682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9cf5558fc9c32ac27b4647b8805873b5aba5c4eb4f491129227f4a0d9cc064`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'unstable' '@1789689600'
# Sat, 19 Sep 2026 01:21:31 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:7c244ef1ebeeda98aabeb7b48fbb8c1a516f983afff38f93cc144c23a09f7c42`  
		Last Modified: Sat, 19 Sep 2026 00:06:21 GMT  
		Size: 49.6 MB (49649461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04b428b43de6589d95bae4653214ed9e1debb5331210f30fca27f890b8057efa`  
		Last Modified: Sat, 19 Sep 2026 01:21:38 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:72444c3d14b1019d181935c30138090af656fb26173857c26ac920ecaf8c3e57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3190612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bcbe07a5be4cabee0604dcb823a6cffc6b0ebdf0a7ccc6fc215b373f4a2dcb8`

```dockerfile
```

-	Layers:
	-	`sha256:cf234a89975581ba3710e71ed0dab7a100567a1e942a008d1e963505eb9a9468`  
		Last Modified: Sat, 19 Sep 2026 01:21:38 GMT  
		Size: 3.2 MB (3184511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:846114d053e787f12a00123bd3bb90492958b067b1a2918e0ed7d0f0f47ef0e7`  
		Last Modified: Sat, 19 Sep 2026 01:21:38 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; arm variant v7

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

### `debian:experimental` - unknown; unknown

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

### `debian:experimental` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:c105a8621d6020b2f74b1ce1e837fcf0b6d75c216e1784328797a30d7730c602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49044938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb1b469213ed532ab176219a6a814fc4349a673622230a2b8ad6e995e7e258e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'unstable' '@1789689600'
# Sat, 19 Sep 2026 00:12:52 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:8ab480d513e9497dd82fd65da41cc20e2640460efb9426fe28853ac55893bc64`  
		Last Modified: Sat, 19 Sep 2026 00:06:14 GMT  
		Size: 49.0 MB (49044718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582a0d1b411727b5b29c77c3335c4e96f58fe91093cabd4a189ce0912d8cd843`  
		Last Modified: Sat, 19 Sep 2026 00:12:58 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:7164e061b1720e7d419ef4eb4da6b67f4edc727cad433d083d8ab8e0801e9af7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3194153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3acae42baf73daca82666528f2479e68f9863998f343f8cfcc0ec4cb999eb2d`

```dockerfile
```

-	Layers:
	-	`sha256:553062b10f85a9536abe1fe5c1cd8444c87a1207cb9a1163e68e441211bc6a9e`  
		Last Modified: Sat, 19 Sep 2026 00:12:59 GMT  
		Size: 3.2 MB (3187972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c12ba09a75374d73b0c6479602e66c53f2e1f39ef413add60bdd9540294cd347`  
		Last Modified: Sat, 19 Sep 2026 00:12:58 GMT  
		Size: 6.2 KB (6181 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; 386

```console
$ docker pull debian@sha256:619b8af54ec73df2a6c3367b9b99c035b77c2402cf06744da476187d7992de5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50753031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d02e663d09c7e385d7b4c5af1880dffb2d5e34f5872320555b1ccd1b77eda755`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'unstable' '@1789689600'
# Sat, 19 Sep 2026 00:14:37 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:4ed2bac868f1ccf9eed729a8fc1f14ee6c3f2ec4897d008b184ba3934bfbcf91`  
		Last Modified: Sat, 19 Sep 2026 00:04:07 GMT  
		Size: 50.8 MB (50752810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f87f354d94e80d17e5080a7501064c0ef1dbe13b018f6a803f49331400c79ae5`  
		Last Modified: Sat, 19 Sep 2026 00:14:43 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:7eef882b2d2ad4b288a8fda12720fa1b356e2498e3ddf212d50ef1b93a7ec8d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e009cb0864a556e8de1fcec1d57ecdfa6dd02c175abb139f3c9901a0c0ea0a`

```dockerfile
```

-	Layers:
	-	`sha256:4d6967aecf32634ed21460ef345ce1b9dd5879d885287ec70c7fa4b95be52e3b`  
		Last Modified: Sat, 19 Sep 2026 00:14:43 GMT  
		Size: 3.2 MB (3181605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1589596293e7d41fc1b8a76bc411264d4d075db31bfa6aff99efd98e764f3d4e`  
		Last Modified: Sat, 19 Sep 2026 00:14:43 GMT  
		Size: 6.1 KB (6079 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; ppc64le

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

### `debian:experimental` - unknown; unknown

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

### `debian:experimental` - linux; riscv64

```console
$ docker pull debian@sha256:0db2853294767e2106f8dd70d530306914d60f9d83684a9ade677662bd6fe5bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.1 MB (47130724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf3b57200dfa70667648124567ad81f885027a47971046d80a76f55d07f567e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'unstable' '@1789689600'
# Wed, 23 Sep 2026 04:51:25 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:62307a0f343d1962d0f502705a18f5d90625a457cad0b10b6faa4d03dcab3583`  
		Last Modified: Sat, 19 Sep 2026 04:11:10 GMT  
		Size: 47.1 MB (47130502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:302bbc8209dfbdd36a22bed685c56c82fb0a0c4670019a780544b37efc9ef69d`  
		Last Modified: Wed, 23 Sep 2026 04:52:22 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:67f2cb1195ffaaf5ff31a4208d8bc641d82a9e9fb7ae9a76fd160259453c1021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3182195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7910236c9854397db94e16bcca653fe61eba1b469e55c4054e7db1347063cbc4`

```dockerfile
```

-	Layers:
	-	`sha256:59f0295dc5dbe79d19fe62053fcdff00672daa38b3c2b45f8f0706fbdc0fef11`  
		Last Modified: Wed, 23 Sep 2026 04:52:23 GMT  
		Size: 3.2 MB (3176062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab979201638dd4a4ede38a944f3311977beb030ef6aa493fc86cc076193aeb21`  
		Last Modified: Wed, 23 Sep 2026 04:52:22 GMT  
		Size: 6.1 KB (6133 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; s390x

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

### `debian:experimental` - unknown; unknown

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
