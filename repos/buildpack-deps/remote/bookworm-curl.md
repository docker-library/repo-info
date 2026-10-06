## `buildpack-deps:bookworm-curl`

```console
$ docker pull buildpack-deps@sha256:a74523d7cca2436f4e3b6f5e47049d1830efbf473c33ebdf5a666f6f77425ebf
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

### `buildpack-deps:bookworm-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:350bbe8cfccedf1320e739f75f8fd104240a340f2af572b9eb0777f0786bb3d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.4 MB (72390274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1834988917354ef1ceeddfee993123d7e9c63e6d0eab45d9e3416699ce069ae7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4edf9c328e814bd91b20c8e2211065489ebf15a16c7663d68a880660dfc897d`  
		Last Modified: Tue, 06 Oct 2026 01:41:13 GMT  
		Size: 23.9 MB (23872252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a1cf818a14c5b08e28036f01b31a56386fde396daedf3dabc2fe981d0bea54f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4525687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd341cc0dfb6b07ce62ed499a803e6737e6441c1df3e5e64deb9c1eb07a12f12`

```dockerfile
```

-	Layers:
	-	`sha256:6e60089eb0fb71eedbfa084966e8b3544e50575cd20ef50c04636603cbde1c18`  
		Last Modified: Tue, 06 Oct 2026 01:41:13 GMT  
		Size: 4.5 MB (4518870 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70d728405634b81c039d5eb0392e9c8e8eb35467c6bb50d3b4bb2114d3efb303`  
		Last Modified: Tue, 06 Oct 2026 01:41:13 GMT  
		Size: 6.8 KB (6817 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:ed55b87bec3f2645aa35993f893f1dc8d187b423039881ac6b12f18e2a9d0830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (65988908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bf7fa389a09947bf705018135a15d151ee7766806d171e4cdb0179733509df3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:23:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:54b36b054c7cd92d990fdbe776041bda41bca67549e7f2f5b71aa81632707ced`  
		Last Modified: Tue, 06 Oct 2026 00:13:12 GMT  
		Size: 44.2 MB (44213912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6b6172c735529bdb9ddec421bbd50381be57cbdde9600e8834517a79e2dbd5`  
		Last Modified: Tue, 06 Oct 2026 02:24:08 GMT  
		Size: 21.8 MB (21774996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:36b94e650655d80ee57b9e7a45d957a56c3b193681ddbcfe129efbd9f9013205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4528039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b9b9b9c70029228d9b2f0ca1cc3add4aa742a281161563b7668d0c2c965c80b`

```dockerfile
```

-	Layers:
	-	`sha256:d7fc7ed1968ea372411bb0e2b0f67bad6daebcd78ecf998d4bed561eb69b32b1`  
		Last Modified: Tue, 06 Oct 2026 02:24:07 GMT  
		Size: 4.5 MB (4521159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f43e2800cfb10cfa6eaf6ce847ac20b60b9a5183f8c14f501b58ed37d4850b72`  
		Last Modified: Tue, 06 Oct 2026 02:24:07 GMT  
		Size: 6.9 KB (6880 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:bd53b07c3216b26c289dd1db4fc18a54c4a6350faa19015acbf791d4e07074ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71843967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ba6f9cf7c0ba1705743b107b06bffbd5872e11daa4cc0351a11ef65ff2fc5f9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc7363672c63abfefdedaf5e03be8e39cb662841d4f31237c4b7d7e3729f65c`  
		Last Modified: Tue, 06 Oct 2026 01:44:28 GMT  
		Size: 23.4 MB (23442412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6e6bc6f658369858e2847f1436ebdfe9794197b75da79eca4dc60a7156b67ab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4526026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42518ce3c76723a5fb40309a15b8f5beda99ba56aa7d9f5975f0689f9e760a2f`

```dockerfile
```

-	Layers:
	-	`sha256:f4b8771099819a1470cf1939c0c2ccda353e73f37f7b73ba0489d0c4a309dcb6`  
		Last Modified: Tue, 06 Oct 2026 01:44:27 GMT  
		Size: 4.5 MB (4519131 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:966d91920e565029f243b9642a67e392b66a1f751e88cbc7c3de2f85f5f70033`  
		Last Modified: Tue, 06 Oct 2026 01:44:27 GMT  
		Size: 6.9 KB (6895 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:9762839b0f30e3aec9c74e2f0518717b4193456c04095e6559617bb79b76bdfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74213658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d18e750aaad986ee4fa2a59797d04a40d55c89422ac7c9197bc865e2e66e37`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:45:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:70e4ecc0352ac50b173cb5a25f4b7f4f26ea4742d8b6e94d48a7b74d771b75b1`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 49.5 MB (49505330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ed8fc62fd627a37f6ed2ee27586e27cad83b5283812efa97b05e073356a198`  
		Last Modified: Tue, 06 Oct 2026 01:45:52 GMT  
		Size: 24.7 MB (24708328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:73dc3408befa06cd97819dbcdbaa3203149767a2bbde876a7f7a8ca5a2368419
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4522785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2889a7ea35d49327c7ca434755834f7160d3e719d792227acde3dc8b9d249702`

```dockerfile
```

-	Layers:
	-	`sha256:e1aabb74488c57d46bab3e06cbe28d4a7ea50cbe2dd23f1078f048e30de61161`  
		Last Modified: Tue, 06 Oct 2026 01:45:52 GMT  
		Size: 4.5 MB (4515990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6143599477e200716cee5d0f99370b232eb85571973a6e258e97da9a0401d1e`  
		Last Modified: Tue, 06 Oct 2026 01:45:51 GMT  
		Size: 6.8 KB (6795 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:a7871cce82e49c411dd63a11a433d119371df2deb004710775539e2ef2ef7753
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77881007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2a0c787766d85e223820a900b067307f1ccd178fc9c0b6385fc255d287128e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 04:38:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfced81c6d63d57c61f0cc455733d3e2c3415e1c19808bf1b361b6b77a0db73`  
		Last Modified: Tue, 06 Oct 2026 04:38:35 GMT  
		Size: 25.5 MB (25518268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:50d607eb4bff71a0c15cd2004df9ed4bb221a2c720df3a999ef0bc337fde875d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4530342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61e98ea5db9f5dbbaa83208b7aeded61e089bbb686ec3e3b46b9a5dad5db1f6a`

```dockerfile
```

-	Layers:
	-	`sha256:f7c6ca67de7096239d41832300ad517bd5e7f6f586cdad023f08bf97fe38d22f`  
		Last Modified: Tue, 06 Oct 2026 04:38:35 GMT  
		Size: 4.5 MB (4523494 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6acc55c1156532bf6614b34b3907bdc286f0fb490cac6386b1d88283c84fcee2`  
		Last Modified: Tue, 06 Oct 2026 04:38:34 GMT  
		Size: 6.8 KB (6848 bytes)  
		MIME: application/vnd.in-toto+json
