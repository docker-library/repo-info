## `buildpack-deps:oldstable-curl`

```console
$ docker pull buildpack-deps@sha256:e59dd5a4b43e866bb449296a9d4c477f773f148d5b7e91dc31a44896df627dab
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
$ docker pull buildpack-deps@sha256:ab7533c5a641ac97700000b88ecc0527eb76d42ad4aa14910c33236d03b9b518
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.6 MB (72553609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a4f9238e1290cd37790aa0cb6686984e2589179b0f0e966e773e7d5fd2c4391`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:03fd138a04ed9286673a67a778f3b02bf2920cec2dbc8fde5d219072f95a34f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4526425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7753a1138d90157d226341101e5d2499ec2f4d0508eb853139b424d96f7b0ce`

```dockerfile
```

-	Layers:
	-	`sha256:bcea6b4aebe47ba579ff2121f7d5777a735893405083b931374fd80365cac829`  
		Last Modified: Tue, 25 Aug 2026 00:51:16 GMT  
		Size: 4.5 MB (4519609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:888d05a09e22296182f6b391b0da8a573b79bad2acb08e32e3d3e121e7fa8886`  
		Last Modified: Tue, 25 Aug 2026 00:51:16 GMT  
		Size: 6.8 KB (6816 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:d1a67e05e03937dfa5700cf5596e7cdace499682f051e171ca481a2215cdf1d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66152812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7224be581acbfa25fc6b776f004eff2b179fd3f8930c4cf2530eb9833332fef5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f3b34a29a0aa5af6a89a8656609312c9143362ac97ab4160c356553e27763d93`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 44.2 MB (44202872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f413ab31d7d1aa698770db491033136d52bb10d50fb70ca919bde399d2aed7d6`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 21.9 MB (21949940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:84075bd7f7778071f4b10e604e0a0202d28876c0f026d52405493818bc5415ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4523576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a8e55691447ea228d6aa54641f089f83898429b98de0a2e8c9f47ffc277afb`

```dockerfile
```

-	Layers:
	-	`sha256:6e7c9ae2df9734a2f8dcca62c0c79d86c857fa8ae514dabf227f0ca0e8ca8192`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 4.5 MB (4516695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09a0991bb4446dadec7a9a667c1fac7fbfe4e6634549366e31728ec4b23a05e4`  
		Last Modified: Wed, 05 Aug 2026 01:20:08 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:c60910054bb85917284599df759bf1ffaed2d98a3e87f2f6e50a7b464e7a6744
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (72011910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0f7d02b2937626ab7a6a50ad4b239b9c87087e83e753027afb6ad4831c631b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7cd71edb92b367568421ed52093ee7b509d38a9ebc1797420f8b17a58f8fe50b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4526767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32fd6ba1e148caece9778f7945bec8f242517faae61d1a7bac6e5960e4c07dac`

```dockerfile
```

-	Layers:
	-	`sha256:fcfa355b5ce9bb1c0a20510c1bd050d46227abe52af2fa54b7a981dc6b248909`  
		Last Modified: Tue, 25 Aug 2026 00:52:52 GMT  
		Size: 4.5 MB (4519870 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5dc900992d253e0b115cdd77cbabd83c0eb2194b67d9bdb5e177f566df1fcbd4`  
		Last Modified: Tue, 25 Aug 2026 00:52:52 GMT  
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
