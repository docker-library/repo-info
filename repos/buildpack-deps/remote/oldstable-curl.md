## `buildpack-deps:oldstable-curl`

```console
$ docker pull buildpack-deps@sha256:d96587d0785690a24c912d3f8d4608dc420bed8af1f69a689ff57537afdbeee5
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

### `buildpack-deps:oldstable-curl` - unknown; unknown

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

### `buildpack-deps:oldstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:77a019b8ae272575e05782eeabc2caf3424648ba11f103aca781d0fdcd0d4d9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66161262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d54f897858f9677b9eba2ca07d0ca496709b7cd8488a92de28c2056d16a344ae`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:27:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
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

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f3f9f3bc0b379d8e7488886a1dfe88dbd8518cdecb06746954ff4df1117a52e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4528040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0246a59e932db6a45401042a83822e1f865abc3835d148e2acf3ce32de3d990d`

```dockerfile
```

-	Layers:
	-	`sha256:831b881b262062d697bd2fcf1d175c7660edda5b37ccc721b90d5f8175678a5b`  
		Last Modified: Sat, 19 Sep 2026 01:28:06 GMT  
		Size: 4.5 MB (4521159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87aa9f01c75490e2db188d9495a4d374b361b6dcdd345691e65961dbb5f1300e`  
		Last Modified: Sat, 19 Sep 2026 01:28:06 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; arm64 variant v8

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

### `buildpack-deps:oldstable-curl` - unknown; unknown

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

### `buildpack-deps:oldstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:c458ced30aea2f203ef74c9d77be9eb7040385db4c0e8fb4d4a815bd6deef54b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.4 MB (74380615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c337495fa32308f3e3e11230ad86f0501590a0fc886c5cec023dd808f5158b9e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:49:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
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

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:affeb962c8acce0cc0aedb95aadb22887f821a87a80f83c678512955886a2445
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4522785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b22658925a4bb5bbcc00f71a9fae65ea9560c0b3f4fd97ede65e7de6d4f8609`

```dockerfile
```

-	Layers:
	-	`sha256:316ab110b6b84c7c6302e9613324f2a6598f0477fc8caa591eed6780c1cb9b0c`  
		Last Modified: Sat, 19 Sep 2026 00:49:43 GMT  
		Size: 4.5 MB (4515990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1cf51763c2add62b8893d433367c1cb545b25ee092d873fa5d61713468c1cb38`  
		Last Modified: Sat, 19 Sep 2026 00:49:43 GMT  
		Size: 6.8 KB (6795 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:c97abdee6a1d94a3427c90c3a79712233122678e0ecb935203a6be7edb46d749
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78052569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f18d62b11fdd73fdd6196fc0f9fb3c208aacc89374bcf5f601190da841ffaef`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 03:15:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0e9f3363ace736c21292a425cd627663814b1275272b7cf79f502454af1cac`  
		Last Modified: Sat, 19 Sep 2026 03:16:20 GMT  
		Size: 25.7 MB (25703264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d2b8140be52eece80a56e07627fb343763443feec89ddb3a396d6a9ff99ae4eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4530343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7b65a57798ed559ebcb831293a62b7de45a40f4dd8fd4b8e5709ba6eb98444`

```dockerfile
```

-	Layers:
	-	`sha256:6496ada6787ca7e9ca5b44d17c49d8107459f62f739e0db7834b8acfc511863a`  
		Last Modified: Sat, 19 Sep 2026 03:16:19 GMT  
		Size: 4.5 MB (4523494 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69f62fab808ac20618c142620323af03bbbaf201f2c66bde6c86aa562f271ce4`  
		Last Modified: Sat, 19 Sep 2026 03:16:19 GMT  
		Size: 6.8 KB (6849 bytes)  
		MIME: application/vnd.in-toto+json
