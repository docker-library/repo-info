## `buildpack-deps:oldstable-curl`

```console
$ docker pull buildpack-deps@sha256:3731d8f0e09f1a9c2009871233a34290e5fef9de482f32d3634785ee3fb72210
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

### `buildpack-deps:oldstable-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:6e9db8935a78c7b113f1d1e0104e8b637885eb6efef7d2d868e13752482837c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.5 MB (72541230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070316045301c4cd7cb4ce11e5c68b48a3f2d4ee5ae85a7ab5814b272324551c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:809b784d451f88f81570dcbf216c3fbf87967c2faf9733c5c9e79cb244721688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4521222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83adab296d240879342b6d782c768749c244a2e4fe0fdfdb254c2abb0f096a2b`

```dockerfile
```

-	Layers:
	-	`sha256:738b865ea979926cc4755164fc72d57c80ffc0ccf84c86a3080666f6aeefc3d7`  
		Last Modified: Wed, 05 Aug 2026 00:44:53 GMT  
		Size: 4.5 MB (4514406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8e259707d69824857bfb9e80e89dfe66357826fd3b235e7f486810942bdd9e7`  
		Last Modified: Wed, 05 Aug 2026 00:44:53 GMT  
		Size: 6.8 KB (6816 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:fb700f024e6dfe279a753c00a60cca66474e68f40da625e1ef5bf91bcb7c1875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66153186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e363f5eb02391e7dd1204de74fc023c73445cf6206e4228c219b56d673e73ed`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f08ce4a309195cc7b461516684fc0628d56fd465c538e7c129a9eecab47df45a`  
		Last Modified: Tue, 14 Jul 2026 00:13:47 GMT  
		Size: 44.2 MB (44203181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1132f9cb1292797584a716d4e35906092ffde6a92ac73ad7e53bf2011c37fd7c`  
		Last Modified: Tue, 14 Jul 2026 02:29:25 GMT  
		Size: 22.0 MB (21950005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8d7e5fe073bcc94f3b31a052c0004744fc20026f2cb9ac3a4086747822c5ec4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4523576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa348d711e41ccbc97ad1197ae925940c007bc3d7543ac936391091bf0b8d7a`

```dockerfile
```

-	Layers:
	-	`sha256:136d8166dd7b93ecbcd3931eb9d6453ca65e7f3ff9357b41b28b7f17cb81c219`  
		Last Modified: Tue, 14 Jul 2026 02:29:24 GMT  
		Size: 4.5 MB (4516695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:293ca551aef08f0dc28607c9d1f428d88d335b07472afbe03f336bc564d87064`  
		Last Modified: Tue, 14 Jul 2026 02:29:24 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:c60df54a7e5072086d43ed9d73e1b7d0ec43f8aa7e2497b4cbfc05e1980c807d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (71996047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:944ac16593537ffe39c6e546d781e38ad63b8643e3820389482b72d64cb33598`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2b4b3ad302156c8abdb31ebb1944eba4cc43270f0df84588bbdebb29138877a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4521564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb6098a85716e3a80889f623c526f181b9ec0357f9c73e6eb327aae55fb85125`

```dockerfile
```

-	Layers:
	-	`sha256:9352280907bab6c00b36f52aed573183547e76f9cb241df034bdff718dc93caf`  
		Last Modified: Wed, 05 Aug 2026 00:47:16 GMT  
		Size: 4.5 MB (4514667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:874df8f606c369f0bd9f10f6281561be9451553fe18e54676cfc3805af534dba`  
		Last Modified: Wed, 05 Aug 2026 00:47:16 GMT  
		Size: 6.9 KB (6897 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:ce949b6a2d5225d37bb2b989c81949bc8e8b40291f6648de4af930cff97584ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.4 MB (74364992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adbf61c5cae142d2ba1af86b835157883ed2c0e4e88583ab7429688b2ae520cf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:46:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9e69b691eb95e2bd0553193ab2db36e850c21fc171acd2f9e2fd526557689fc8`  
		Last Modified: Tue, 04 Aug 2026 23:51:30 GMT  
		Size: 49.5 MB (49485121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0fb8101655510b20bad67f876c00bb4d21d41b7a275411eb82a0d8cdc9b46e6`  
		Last Modified: Wed, 05 Aug 2026 00:46:49 GMT  
		Size: 24.9 MB (24879871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8981ccbf13f0f46a30cf9666850c6b1944ea3be3dab4f250831d829f519d495d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4518320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:110c63d8a67ba3819c64c71604d5bcabdc2a785b1784989cde91ab013623d85e`

```dockerfile
```

-	Layers:
	-	`sha256:92033cdc8aa73632eb96129f8e848e39970a43d9708215f817460e0c6917e9ee`  
		Last Modified: Wed, 05 Aug 2026 00:46:49 GMT  
		Size: 4.5 MB (4511525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b50f8b369b32dea8212ddf5768534fbbcb06ab29aeaa073d2a101a56431cdef`  
		Last Modified: Wed, 05 Aug 2026 00:46:49 GMT  
		Size: 6.8 KB (6795 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:9a35e234b543befc95b93850e89c67679f02b4df0b56ef9ba3ce694b4a3cc743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (78028752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3b0a3f69fbc670d068af3343e7d07b29319d44c6daf450701deef0d01d2711b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:57:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ec967797e5dd9489be310b03bea17111b4e6049dc869f8b0a3a81cc540a0e7b`  
		Last Modified: Wed, 05 Aug 2026 00:57:30 GMT  
		Size: 25.7 MB (25687275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3e2230c0462fca1fa9094836a2b2871b5c650f993209985eccb55e60556493b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4525881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c2e1a4b121daf764a554d7dfb9a78d63925e9c70405dd06ed691a16a332ce85`

```dockerfile
```

-	Layers:
	-	`sha256:208ffa1c2776ef31c4506e576f2e959036710e666df94a3e717c81257edb919d`  
		Last Modified: Wed, 05 Aug 2026 00:57:30 GMT  
		Size: 4.5 MB (4519032 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42b674652f06f86f81f57731fe1dffeb2d9484d84e1e65d1fd351dde82cfab38`  
		Last Modified: Wed, 05 Aug 2026 00:57:29 GMT  
		Size: 6.8 KB (6849 bytes)  
		MIME: application/vnd.in-toto+json
