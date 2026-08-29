## `buildpack-deps:scm`

```console
$ docker pull buildpack-deps@sha256:ac978b7836573cd359152b362450d668e0a3e2b146f2348a60156aef043b100a
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

### `buildpack-deps:scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:0e131a34c92503467e19237dfed64473d67732cbe28d176fd343b89740ed00f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142777492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f17f932a0737ee2af4599774b85eade10654ce2e9b61f9ddb8fc9b58e25115b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f78834a2fef03250be89a7741ff39d0e6bbd860298ea129a84ce5eadda1f6d`  
		Last Modified: Tue, 25 Aug 2026 00:51:08 GMT  
		Size: 25.6 MB (25639590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc19164244e861d91ebd80a17e2c78c5be43a8059a32ab6fc459a92002b22f2`  
		Last Modified: Tue, 25 Aug 2026 01:38:48 GMT  
		Size: 67.8 MB (67800074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d797292fd7b2a5ac7130a616756a408c65468a0cdff2fc18d308d0b26dc8d349
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7780420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c56959cab61db0af5abc5952984379d5c74c542f4f3254d79da8e10595a4fe10`

```dockerfile
```

-	Layers:
	-	`sha256:3c3b32126e75e3ad5ebbc81a8b730c11a2ea25a3c100310775b8b55cba8f771b`  
		Last Modified: Tue, 25 Aug 2026 01:38:46 GMT  
		Size: 7.8 MB (7772843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:627b02076305c3e65807f6666d5ccaaf098de9fd2ec3e828d39d3c5d8e89f75e`  
		Last Modified: Tue, 25 Aug 2026 01:38:46 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:e65470dedbc66166a8a5139210a374053126fe32414bbd84d9469e6ff0255e7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.2 MB (137228453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a4561cbdcb37a26477532b49ea54cab2e59f41c972da915d9b7c787c335ddff`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:46:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:17:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:eb6dd3c63a4e348778a39eaaad39d8544405ca793fafad8492987c16b93bf6c4`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 47.5 MB (47513959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:508c2e701cac19df9a11b9cf45817e44d4de1bb4cdcee87e5c2924142bedbe7a`  
		Last Modified: Tue, 25 Aug 2026 00:46:57 GMT  
		Size: 24.4 MB (24365366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac0abcf758e9af8b215879f173fb8085cba11467f0c1faadc6199455b7c6880`  
		Last Modified: Tue, 25 Aug 2026 02:17:44 GMT  
		Size: 65.3 MB (65349128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a2f21e8f9737a943e758ecfec1e9d4c7f428021e7b1a283777f66323b143a54e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7781530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cbbe3d24e07bcd7b7082f7b7c6b9a2be2a724c8e62c50a1790a78f42a890953`

```dockerfile
```

-	Layers:
	-	`sha256:f5be4fec95ca34a1484d58ce515cdbdb392ea6d21aeb9d10167d5869aa636c58`  
		Last Modified: Tue, 25 Aug 2026 02:17:42 GMT  
		Size: 7.8 MB (7773881 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9fb5f80b064cd65cc6897f08e2f2f58a06f79c12646e01a1117c05f0d975f75`  
		Last Modified: Tue, 25 Aug 2026 02:17:42 GMT  
		Size: 7.6 KB (7649 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:e4764d180b4223fb5b552a4c3dea76550870ec4c1e0e359b028a9eafde71efae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132146497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6600531c3ac46aea85cf841a35f9d09354822837c5a843b49c1d4d5eac715ab2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:36:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:cdac0eac0749288813a078c4279ee1e58b9f6a38246ae0d43ef25f305013e0fc`  
		Last Modified: Mon, 24 Aug 2026 23:20:50 GMT  
		Size: 45.8 MB (45764051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae11486f16a4a24e28283020d5361fb5a7863e1f116ef0dd9df4c0c234a82e9`  
		Last Modified: Tue, 25 Aug 2026 01:33:16 GMT  
		Size: 23.6 MB (23637061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990008fd0376eedb7a7400308f614aa553c4160bfe5804a99217456a931b9b98`  
		Last Modified: Tue, 25 Aug 2026 02:37:11 GMT  
		Size: 62.7 MB (62745385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b104eb8e1bcb8d57ec79e134e6fd6b4f711ae273cfc605751ee8c8ccde9567fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7780998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e0dce854dcbda275315b7bac62ece9a233c955528fc033f8dd959539283c4c`

```dockerfile
```

-	Layers:
	-	`sha256:a9691c79756dcb62db2a1690d43836d4b007726782f6dcf7aced33e33866e142`  
		Last Modified: Tue, 25 Aug 2026 02:37:09 GMT  
		Size: 7.8 MB (7773350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d59267a2362604e5dfb334a168dab2c0c5aa0e83c18ee2f8cebe2e8ad156fea6`  
		Last Modified: Tue, 25 Aug 2026 02:37:09 GMT  
		Size: 7.6 KB (7648 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:81bf6c120cb2c878059e132f076d7318e5db9124547e84d4984293621acc0822
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.3 MB (142337300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c238bf86b7931a7aea2793bb25f4bcbbcdf111fa67a573cb29a43e77f6366a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3c72c6402ef534e043b1dca6fc0ab99e044c333c7679d2508eac3817a8570`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 25.0 MB (25027916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fd700369b465b3f57ff668eea94fc0b0e67029df25a71600d2c522a452406d`  
		Last Modified: Tue, 25 Aug 2026 01:43:41 GMT  
		Size: 67.6 MB (67604531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4bacd74515dc0f4d9427bf5cb04bdc68b101fa7f2ffdfc11b0aecbbd8a332403
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7787549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c761b33e1f4d567211123c741a6441cfb8e5c3bbd7a4923c176dcf374716773`

```dockerfile
```

-	Layers:
	-	`sha256:f275d7d131cd42476f9bdb6429e3cd60ef2fedea94221b4ea6cd70728685f3e1`  
		Last Modified: Tue, 25 Aug 2026 01:43:40 GMT  
		Size: 7.8 MB (7779881 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ffbdf1d6d269be9ebfa7186c72660488505daa145714b6f51f02884d4ba1677`  
		Last Modified: Tue, 25 Aug 2026 01:43:39 GMT  
		Size: 7.7 KB (7668 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:99514a0be08b3dc2e10857296848d84057e02f546a5c771eddf372552256df46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.5 MB (147488123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45e032d4e67ff9cd57d6abb80567a3c993f61df4b3440d699c238b1da9270bc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:42:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d6a9e0e8ddbd4b412b0ad592c01d91f7767a3f5d47a973f905c2abd8535165`  
		Last Modified: Tue, 25 Aug 2026 00:51:07 GMT  
		Size: 26.8 MB (26801487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f786c5c6711279dd7e937949c535eb18515f9760e66ef3ebd7e8bff5946d35`  
		Last Modified: Tue, 25 Aug 2026 01:42:46 GMT  
		Size: 69.8 MB (69837054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:bfba41c7d22c7c39b0d84f94c31cec4bb6544ceb9281bc5c64eb26bd02a2cc3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7776528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30bb34f182a9e2417f43fe838f787df6cb37b0ddfd2935b05bedd34c6092c32`

```dockerfile
```

-	Layers:
	-	`sha256:f40f12708f94530e26600b9043620d9ac18570e68f5f42cd98420f9da94180fc`  
		Last Modified: Tue, 25 Aug 2026 01:42:44 GMT  
		Size: 7.8 MB (7768978 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef508ad49597afa5319012c6493cc69ff65700dd5845092c27e2b4726e65e118`  
		Last Modified: Tue, 25 Aug 2026 01:42:44 GMT  
		Size: 7.5 KB (7550 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:ebf7d41c43df8d1aa463816d92799159e4afe3ca60639efb00dc4df300100f15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153262821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86b95c33d37c81ce785d2b1518bd64e74d63f8be13cea5a3078f6721a675a8f6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:37:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 09:49:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1442b53cb90baed6c48b291e1a0a38334a0f6d974b82a480e299611a8fb76e6e`  
		Last Modified: Tue, 25 Aug 2026 03:38:18 GMT  
		Size: 27.0 MB (27022202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689900c76da5590e58792b7505c0dbe058be0e1d5c657629bbb7e6fc3cdf33e3`  
		Last Modified: Tue, 25 Aug 2026 09:50:52 GMT  
		Size: 73.1 MB (73076336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fe1311b7a72af73a7f2543d1548996f59f307158432b16037ea4620a3f5bc80a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7787581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38782d0dd70d241ce9419dbba20fe4717754bbf32fb2bbec9ccbba2afa19e94c`

```dockerfile
```

-	Layers:
	-	`sha256:257c1958de1702d5bc604ac569df805e438b9ad6c80000c93ad3cd887e5f5061`  
		Last Modified: Tue, 25 Aug 2026 09:50:50 GMT  
		Size: 7.8 MB (7779966 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0366bec7bfe991d29c646f21a757a0e40fcbea2922e2feefefe0a50691daae8`  
		Last Modified: Tue, 25 Aug 2026 09:50:50 GMT  
		Size: 7.6 KB (7615 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:7d9285752318c192543e5431799c684c4d8e57be2693320e0123573f9937fc9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142678709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d947e08e9006a2545594b10f800871cbef7bf59c7fbc0013ec290d71fdb00b41`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 04:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:acb3599234922b1535fad7591ba58ef476824d3d5c601ad25d9d566dd92a573a`  
		Last Modified: Mon, 24 Aug 2026 23:36:32 GMT  
		Size: 47.8 MB (47830880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b00426f7e0166f533550f928ed9a27165dd3e03cde499c3bb141c9a58e343c8`  
		Last Modified: Thu, 27 Aug 2026 00:25:30 GMT  
		Size: 28.1 MB (28149730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5c877eebe30544548ad1f38b12e3615f826fa71f90844cbdce21d0843f1b1b`  
		Last Modified: Sat, 29 Aug 2026 04:54:43 GMT  
		Size: 66.7 MB (66698099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f54f156af689f62ff43a5325b8a96f05a7c4e149ed237d97f69cc0ce06971601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7770294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232c17f8a69eb4d8a9aa5ce2bb8f36bdf0c6d6bd9e145106b0b64c5ac1a98a91`

```dockerfile
```

-	Layers:
	-	`sha256:4a5a51f04d9ee82e70ba62a3464348c1661856c844a617e1548c6e06654fa9a4`  
		Last Modified: Sat, 29 Aug 2026 04:54:33 GMT  
		Size: 7.8 MB (7762679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60356150751fee00f6ae304b69ed4df5650886a822a37e5087d55f1b370cafce`  
		Last Modified: Sat, 29 Aug 2026 04:54:31 GMT  
		Size: 7.6 KB (7615 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:1cddc34a09f2721051924e9394f58f2f7b1a09950818e84fccb837eb6185476d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144862926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c555eff16b8728d13fc90b16d4deec794ebd0c426144ef2c145c0589992c4b3e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:24:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:52:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcc139358c0f126bea1e88fe19d9b62a4fedcd110ee450f995e2961ed24b16d`  
		Last Modified: Tue, 25 Aug 2026 01:25:12 GMT  
		Size: 26.8 MB (26805114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e1398c9084f07ed882b54eeab4eff13a12a949c611fe5ec44e503d987b450f`  
		Last Modified: Tue, 25 Aug 2026 02:52:35 GMT  
		Size: 68.7 MB (68651115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:bc9e683b74d9565b6c67c6b6a89579d00c59f72bc2f69f348dce3b31220d47f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7781333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12a55f98cb168ef89cec7c0e1bc11e74d93cdf19c910ae30da4522c56478b98c`

```dockerfile
```

-	Layers:
	-	`sha256:cf68e65bdd0b2b81460eeabb6c3989c40c544f9332e8485dbbb2386869ee389f`  
		Last Modified: Tue, 25 Aug 2026 02:52:34 GMT  
		Size: 7.8 MB (7773756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c880cc362276009982ebba880746d7fd65a99015ea309fd84b06fccf6f62d5e4`  
		Last Modified: Tue, 25 Aug 2026 02:52:33 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json
