## `buildpack-deps:oldstable-scm`

```console
$ docker pull buildpack-deps@sha256:bb8654d03bd8341e702f1ae30adca91a11f4164da2d37dbe7a0bf49e4901bd03
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

### `buildpack-deps:oldstable-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:3143266296a102272e713b232372287e4e8f792a518635c562c18136d596ee1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.0 MB (136983788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54f59601567e33099bb78a0b841147271f2779f0de10ef070870133d67a82895`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2de2423ebd9d3290883175c0e46dccd6de955b08e6e9a5bd20909e3face240`  
		Last Modified: Sat, 19 Sep 2026 00:44:47 GMT  
		Size: 24.1 MB (24056077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81578410df169380efec491bfdc60a7e586d4b48ef4c0aeb9b6ff085812d9a7d`  
		Last Modified: Sat, 19 Sep 2026 01:46:20 GMT  
		Size: 64.4 MB (64424271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fa1bb156cb752388a19c6ad1d80e0bd9a23e18b11ca55630ed10bd511b81e9d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7977933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67042fe9889c507fdcbde9085f4e5b36c1a36e7e9af5b5e4e3a1abbffd4facfa`

```dockerfile
```

-	Layers:
	-	`sha256:a6a7e44f29ac58f1ced7301f21087a078e66ef6aa9cb2969968e811e558b21d9`  
		Last Modified: Sat, 19 Sep 2026 01:46:19 GMT  
		Size: 8.0 MB (7970624 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb9e27d31f16127ce64931cb767e56873ec1fe32e1bfba22e90585b0cbcc7476`  
		Last Modified: Sat, 19 Sep 2026 01:46:18 GMT  
		Size: 7.3 KB (7309 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:774a7d261a9bf177d52f6f129963c7089d5e2a92d294e1fdc59a43b450bb5168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125823042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecdd86c7da625b6343a4b44ce7fbad7f764ecf5d422dea466aaac7660f73a48f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:27:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:26:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a6c5079853e28bf683246929969c9815b5fe2309ca7008420ffa4f3b69991189`  
		Last Modified: Sat, 19 Sep 2026 00:02:43 GMT  
		Size: 44.2 MB (44202209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8a5fc11ebbfafa0cb2b3f94f30ae822f4f3c68b9cc1fc076c7fac3bd1a4e8f`  
		Last Modified: Sat, 19 Sep 2026 01:28:07 GMT  
		Size: 22.0 MB (21959053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b05f2afa4aeb0abd1b387e407cc8939c894ecaf8fbd3b034a72e34dae98c9a2`  
		Last Modified: Sat, 19 Sep 2026 02:26:25 GMT  
		Size: 59.7 MB (59661780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:cdbf7a72218c0a8167ee4f4eeac1bbce298b90d1392a440ac9841ebeadae85f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7979274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c137cb4394718364283e85f20b7bd996103634e1557e0d526d7390abc609292`

```dockerfile
```

-	Layers:
	-	`sha256:af0892a2eb1f9110b9b1f27e0b65ef0a24f695e3218266044382e21ca0fa79f2`  
		Last Modified: Sat, 19 Sep 2026 02:26:24 GMT  
		Size: 8.0 MB (7971901 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2901afaca88a0554ee91743d2e195f3ffeedbbbe51f145a50d8d1bb6d4c0d9f`  
		Last Modified: Sat, 19 Sep 2026 02:26:23 GMT  
		Size: 7.4 KB (7373 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:4d8ad93d960376f4663b18d0aaaa9ebb6e158b9ad1691df638e15ad0af358d8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.5 MB (136517739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ba214a59129ff46bcf6b52ab326e666bba5c76d4f692b67548ad4c1d6a2931`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:31:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e528fa46febdafdfec8e02c978fc9de14e76dd532505c33472d8f915ac27a2f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:27 GMT  
		Size: 23.6 MB (23627721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328a0fa474a1ca8d79c015c72bce6d935298ea38f98b4e04dec9e350442e03d7`  
		Last Modified: Sat, 19 Sep 2026 01:31:38 GMT  
		Size: 64.5 MB (64500108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b27924a9daa7b4058623401ad375424611d1ea7cacfb83ae0848b5f929d9ced4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7984407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:257454efa8b5d4c83bb3aeeb6f3c638dfdf04d5acec5baa2862b237ba417e898`

```dockerfile
```

-	Layers:
	-	`sha256:d8819d035dcd9e5922ccf62ea49d103490e3c7b79c8efad320bf660043b63b23`  
		Last Modified: Sat, 19 Sep 2026 01:31:37 GMT  
		Size: 8.0 MB (7977017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0de0c5972518102268b2de118aa73ffa7bdebfb5194d63db9dc705c4dbebeeda`  
		Last Modified: Sat, 19 Sep 2026 01:31:36 GMT  
		Size: 7.4 KB (7390 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:f50033633ab0f384a59aad752d602fcaa22805599e81c5a96a4918e1a692c3d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.6 MB (140637914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e0554389c073010dcee00ec9ed0c56867a509960c48dd408748837fe67a3a3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:49:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:35:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:5251485f272d2f5b30f340b3424d4885551b55c64d74f383ca196bc8338f8f3e`  
		Last Modified: Sat, 19 Sep 2026 00:03:27 GMT  
		Size: 49.5 MB (49491404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef8e3c04f871b1b16e9e51e8bd832c4d6c6367991bf2fb4fa68e1ada0e92f4d`  
		Last Modified: Sat, 19 Sep 2026 00:49:43 GMT  
		Size: 24.9 MB (24889211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5707b21c933ac81a1325c7daf018024e4ba50850e560f2913144ce64343b9d3b`  
		Last Modified: Sat, 19 Sep 2026 01:35:29 GMT  
		Size: 66.3 MB (66257299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:66c77b882b48f1694ee5b93ba0b36c932a82560c584c2086c14dbdfe48a69f3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7974071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b6dd58fd8b52a4f231a5315cd27b6d426bd0a4c111c1e997972d618b50a241`

```dockerfile
```

-	Layers:
	-	`sha256:0e1b5c60bd9740810c04f13397d1ddd3c0c95aa6ce2b41e9a906dfa0114a48ac`  
		Last Modified: Sat, 19 Sep 2026 01:35:27 GMT  
		Size: 8.0 MB (7966783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4288c7626e85737727cfc38e023980aa0fa74ea5d54ebe842c6fa8f698ea1973`  
		Last Modified: Sat, 19 Sep 2026 01:35:26 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:93963da9f5740e64e77085ac0a0842921e27dd1ce53bb5f678a0585ac7befc9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.9 MB (147901501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2697bff69f5ab9d3deecbcd931dd90a313e67d3725d7ff5e2337272b57922569`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 03:35:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 09:47:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5cb8c52004f6a91d118309e28cbaf33c7aeec9fae708d5fcc09c38fffccf0d`  
		Last Modified: Tue, 25 Aug 2026 03:36:10 GMT  
		Size: 25.7 MB (25706335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d593bbbc0b5465b54adbcb93bc425eace3b89a83d8cc7b8dcd0b9d1ae61a51e7`  
		Last Modified: Tue, 25 Aug 2026 09:48:06 GMT  
		Size: 69.9 MB (69853402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4455183f6a856eb4eff9264c3a00b7e75fb6ebbc829fd9a62ba1566fafc92a54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7986578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6ecb318df4a95dcd0d1fcb62b7a2f8c41de70a3da567ce9c6e6c8e54e93af7`

```dockerfile
```

-	Layers:
	-	`sha256:25984e060db8ef35a439ff8e88047164fc414354129f65a3e1bfd5d59fb117e4`  
		Last Modified: Tue, 25 Aug 2026 09:48:04 GMT  
		Size: 8.0 MB (7979236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb78ce22adaa4b1fccbd1050fa58519a19d72f9041fdb5f8e86ead76afa33aaa`  
		Last Modified: Tue, 25 Aug 2026 09:48:04 GMT  
		Size: 7.3 KB (7342 bytes)  
		MIME: application/vnd.in-toto+json
