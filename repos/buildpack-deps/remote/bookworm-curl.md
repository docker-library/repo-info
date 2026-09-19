## `buildpack-deps:bookworm-curl`

```console
$ docker pull buildpack-deps@sha256:5135e67ffae6dc97b3d17d6d5b2b64bff157327afb8c8c3a19d0bbb44ee1899d
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
$ docker pull buildpack-deps@sha256:2114c7819f0fda8892a3bbbb640c51d8a2e54c464d72be7ba63e9f2a9f6be738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.6 MB (72559517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e625f98e20519793cd52e060f7006e2595e9be8c01e775611738d6e3a0b0f9b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
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

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6c06d2ce2dcb4170fce5fcbbbfb22714452d142dfa4fc4f277d9bd6f92b745fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4525687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de088ada0234cdcd8a803f3b1495808628e6c998c7f6fd91667edef22387ffbd`

```dockerfile
```

-	Layers:
	-	`sha256:47a833f4bbc3e20912ca27ebcf32fac0964f8e35ea64f2b236aa148e68285d99`  
		Last Modified: Sat, 19 Sep 2026 00:44:46 GMT  
		Size: 4.5 MB (4518870 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eaf30d6e6d6ca7c56fc3f82cb8179d8a7a3acf17137f9b275079a043bc575689`  
		Last Modified: Sat, 19 Sep 2026 00:44:46 GMT  
		Size: 6.8 KB (6817 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-curl` - linux; arm variant v7

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

### `buildpack-deps:bookworm-curl` - unknown; unknown

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

### `buildpack-deps:bookworm-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:1c05e12c9f62deec8a70461031ddb34608ecf2bc138ae73d0546b5ebbd5fa923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (72017631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f442fff90a6cf0c03f97946a136de87926c9efa1ceba7f923120c32053246f3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
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

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7e0c30a7a3f59f38ed1991f8f60f501032c25200593df15b24824531bcb43c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4526028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33f85509a6007e4984237bf204f151284101e29e38326c3aff59a578ee577c5`

```dockerfile
```

-	Layers:
	-	`sha256:db3fd101069dc1f56787fb24e4f4713538cd9ea3c744472df959dc5455d5e71f`  
		Last Modified: Sat, 19 Sep 2026 00:47:27 GMT  
		Size: 4.5 MB (4519131 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4ca7cc7455b5f7bbb22494a33140135c8c6fa65b6946778231df8031907f829`  
		Last Modified: Sat, 19 Sep 2026 00:47:26 GMT  
		Size: 6.9 KB (6897 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-curl` - linux; 386

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

### `buildpack-deps:bookworm-curl` - unknown; unknown

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

### `buildpack-deps:bookworm-curl` - linux; ppc64le

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

### `buildpack-deps:bookworm-curl` - unknown; unknown

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
