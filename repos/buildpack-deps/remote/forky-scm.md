## `buildpack-deps:forky-scm`

```console
$ docker pull buildpack-deps@sha256:feaf461dc1eee6786f8964aba2df4038dbb88db4eb56d8442a6d07451286dd11
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

### `buildpack-deps:forky-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:e432d1c49f5b355e3163677eb027cfd49725d9869aa7b5a279faf5a8fbc5081f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.7 MB (158687246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89154e95b753e13981e17826ff10d92d98b685aec5ab7e8243ec9120e84b543f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:46:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:27:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2fe4b6091574b3f1b29a730c59818868b10f42ed61e8c86f51e916f6230cfed6`  
		Last Modified: Tue, 20 Oct 2026 23:30:29 GMT  
		Size: 49.8 MB (49814335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48a2909741e311cf0ce7afcff0c4a557e9dfc7e2db7d533fbea455c53021047`  
		Last Modified: Wed, 21 Oct 2026 00:46:17 GMT  
		Size: 28.5 MB (28511595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622fecac6e48da244674c88f7943a11297ed427e8a9e7df5625cffad8b7947f9`  
		Last Modified: Wed, 21 Oct 2026 01:28:14 GMT  
		Size: 80.4 MB (80361316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:26defed9727722b2f9769eca5cdb801ede1269433f726cc39955dbc1ebd7e9d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8328881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ec4dbdf05e459094593d25a3c6584e5e72c1a4c7b5525d3bb6cacb8f9d9ec66`

```dockerfile
```

-	Layers:
	-	`sha256:513a7ce89384123285a8c62c37f343dc3bb0c60a36b9c9c00607364c4856b2f1`  
		Last Modified: Wed, 21 Oct 2026 01:28:12 GMT  
		Size: 8.3 MB (8321615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee392a979edf5f165f4dc98b86aa42a5a0aa0abfe52f4e5b2259d075cc2478dd`  
		Last Modified: Wed, 21 Oct 2026 01:28:12 GMT  
		Size: 7.3 KB (7266 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:b968f17be70411c093249857c7a5b16a65b7f808d2551c764203cb72bc1e3e08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.5 MB (145453265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86b2e7dd24ccf1e18baac2769b8ef970682760aec8e010dc1b0758d0025577f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 01:29:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:48:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2b392fd5f07f5ac3cc7f94fe6fea253d8373fff52e6f33a7f4c7991028e3c990`  
		Last Modified: Tue, 20 Oct 2026 23:30:17 GMT  
		Size: 46.0 MB (46004148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea395aedcb65392ccd5e084d6140b57248cf74d14a3af87f8500db3ad2dd3ea7`  
		Last Modified: Wed, 21 Oct 2026 01:29:15 GMT  
		Size: 25.6 MB (25596760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8cb3e79133eb14be1e125a0595f25260b7f3bfc24a59d03739640dbfe0352bc`  
		Last Modified: Wed, 21 Oct 2026 02:48:52 GMT  
		Size: 73.9 MB (73852357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:97fb41f7c2e637e3ddc1b753002d795306c5aa44ae6e27bd5e445f6534af9530
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8329027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df7b84df7e581da6a6e2d88941812de9cba2874788ebc0eb3096ae2ed8f42b13`

```dockerfile
```

-	Layers:
	-	`sha256:cf9dd10d788719f1f84277e536a03bd695f3c6c6d4604457ed23983b85160d51`  
		Last Modified: Wed, 21 Oct 2026 02:48:50 GMT  
		Size: 8.3 MB (8321697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:758536a06773a348bc06a7f3758fabf9cee90f5255e6e81e15380b31e1b5e44e`  
		Last Modified: Wed, 21 Oct 2026 02:48:49 GMT  
		Size: 7.3 KB (7330 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:afa1dbcaaf55dafb5f38d1aa42cb4937f44146491fecadff19e28c5b46e41d3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155318325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62041cc0fac33399f33088bf2e795d2c3ebc521c3620ae7ba18b931e54560e22`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:49:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:34:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:92027717a2c3877f42b4322ce7e4584c8ba10b96c54d312a7823fd9df6cd664a`  
		Last Modified: Tue, 20 Oct 2026 23:30:26 GMT  
		Size: 49.1 MB (49142449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550fdf21a4adc852253d7b2705e811e8361138dc148c930f266d52d8b12546e3`  
		Last Modified: Wed, 21 Oct 2026 00:49:51 GMT  
		Size: 27.4 MB (27431193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95b3484d31b32a98dd63aaef2e590a531813d2b82272d568d3b3cbdd9cb9c16f`  
		Last Modified: Wed, 21 Oct 2026 01:34:22 GMT  
		Size: 78.7 MB (78744683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8cb01e1699885c25743d8ca900a307b267e30ab9cd96f57f40d232792446f288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8338608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c838948c11ff217c327a14244d19030d20b9645def7febf3a2858c3242cb52`

```dockerfile
```

-	Layers:
	-	`sha256:3bdc131514979c41b56eb0e0e05ab4286cdb7fe4cb86d4f29a1a51e706760731`  
		Last Modified: Wed, 21 Oct 2026 01:34:20 GMT  
		Size: 8.3 MB (8331262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2567e497abedd3584a49bc01d83ba22ad4b6b97a2ebd88bca15e697042f5732b`  
		Last Modified: Wed, 21 Oct 2026 01:34:19 GMT  
		Size: 7.3 KB (7346 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:7adc27a2cf05604451836aa72f1dc0067bba58fc6c28caff93a6db0aab8429a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.8 MB (162754628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c4520b57f287909128064a86f005e903184b2f398650e130d87c967f4fd7730`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:48:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:24:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a82d12bb7ac6591825acca7b46cb1bf53a45a71b72bdafbeffec867fb8981dad`  
		Last Modified: Tue, 20 Oct 2026 23:30:34 GMT  
		Size: 50.9 MB (50934347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd43726af5936a5f1928036813d115245d1041ee25b63b0653391c676145f78d`  
		Last Modified: Wed, 21 Oct 2026 00:48:38 GMT  
		Size: 29.6 MB (29639765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:178e42d3c828d569020dda1e73acc379160bd4cf528726a6ce2618268e6cf646`  
		Last Modified: Wed, 21 Oct 2026 01:24:36 GMT  
		Size: 82.2 MB (82180516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1bca958f56f8cf3c64d409cfffdb65940c63e5c4064d8ef5f60d9e9335edecfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8324250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9168e9a57a93675eedba88a3df7337f6d0165cdfa60bc767eb0675733500b1b6`

```dockerfile
```

-	Layers:
	-	`sha256:4457f4e15f1d3151ad91e136171e68cbe4ee72bf43d7403cb9ab7f3612aebed4`  
		Last Modified: Wed, 21 Oct 2026 01:24:34 GMT  
		Size: 8.3 MB (8317006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a88e631969eef098277d256042136901ada393c2e8a053fd5ca6e441691b5d2`  
		Last Modified: Wed, 21 Oct 2026 01:24:34 GMT  
		Size: 7.2 KB (7244 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:a728c263b6c5f0d2cb8d39790131586010d9442ea9c027fc51c2f30af07716b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171251725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a7b03887c32a90d8712c283cc20a6b7d9330cb2e76f4912fc6effdccac0799f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 04:21:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 12:04:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7563a816b2fdbaba742be8a6a1b6e59423cab6e5ab5f29d804cd7dabee35741b`  
		Last Modified: Tue, 20 Oct 2026 23:31:51 GMT  
		Size: 54.5 MB (54501625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baee4bad0395e17c4baa7c07b335302e6b2ffd492495b2f16305e31b1b517d46`  
		Last Modified: Wed, 21 Oct 2026 04:21:42 GMT  
		Size: 30.5 MB (30516124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6024c34bb400799f6ce0f1cf2b933a77d05b5276cee3a0a65e070b97a43b80`  
		Last Modified: Wed, 21 Oct 2026 12:05:07 GMT  
		Size: 86.2 MB (86233976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:080dea2c6bdff12d7c6655da7c3a0925a6fd5161249494fa60f77458cc960a6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8336363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c69b79457bdf848926ce7a0391d75df4df62d99b50ba91597a86d4e1ae40f287`

```dockerfile
```

-	Layers:
	-	`sha256:09e9551c104093492cf8e85ff2f1ff55a78c3a0772403d75dad3e454d016a82e`  
		Last Modified: Wed, 21 Oct 2026 12:05:05 GMT  
		Size: 8.3 MB (8329065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86db9216f752740a19cf12a388b3a9de5959a13c4fcb008e9a6b70dff4b50565`  
		Last Modified: Wed, 21 Oct 2026 12:05:05 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:f9f0c8e0359861121a079810bb58e627d6f3707dedbfde1e179f029a08ee6b55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152603411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebc4482d7de8fb91101880f7b425ad0ed4c35e8577b598dd6673c1d9cc342574`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1792531975'
# Thu, 22 Oct 2026 05:05:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 24 Oct 2026 03:49:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:adfc591135148650dbf526110c7a281e2348fa5b65b8e9b8f646cec906264d49`  
		Last Modified: Tue, 20 Oct 2026 23:31:20 GMT  
		Size: 47.2 MB (47232438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:285503d849255a9a5b7dbcab2c31eca38ccb189dd677888dc960cf188fa74a95`  
		Last Modified: Thu, 22 Oct 2026 05:07:49 GMT  
		Size: 27.6 MB (27563488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a1ff2c7b2c417377f25b940ecb4ed64ba46773bfef441e0430521386bcb3e2d`  
		Last Modified: Sat, 24 Oct 2026 03:53:31 GMT  
		Size: 77.8 MB (77807485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:381bfef5d7d503942b9d8312a26e9665e57741ae95fd33474c450f35fd337f0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8317348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e54cac8845b183b7d4618472101ac0acb915cdfbeece2906f38418c91aa21b6`

```dockerfile
```

-	Layers:
	-	`sha256:2891940f4079049674851878dbe364a65af8ffeb0d7d19ce6586ec5a683f31f6`  
		Last Modified: Sat, 24 Oct 2026 03:53:21 GMT  
		Size: 8.3 MB (8310050 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0d85d2590c4aeb59a1479c84885ab280dd309ce43b72f2624c849212fe3bbd9`  
		Last Modified: Sat, 24 Oct 2026 03:53:18 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:363558ddd82a4f69333d7c9f1291941342aa988de9c4fcfd04677d88526249f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.9 MB (156905658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc690a29461352a15222ab6eaf627c40b032abf929d169ff79d52a35b4ca810c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 01:09:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:56:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9cae28ecaf50579691c9c86615c8c483a4effc3bfb6a1813d6dbe1e36528a31c`  
		Last Modified: Tue, 20 Oct 2026 23:29:15 GMT  
		Size: 48.9 MB (48912053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd63e277f96e809fcb85e7de282f52c51ae9e1d2cc78924e1abaf6d1deebe3d4`  
		Last Modified: Wed, 21 Oct 2026 01:09:45 GMT  
		Size: 27.8 MB (27807169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc75b13eda1f81727b4549189c00035b103fc790731581e9bebff1ac9ad2c34`  
		Last Modified: Wed, 21 Oct 2026 01:56:30 GMT  
		Size: 80.2 MB (80186436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e80d3fe4ea8732eda04595ea7bceea84196fc281c74cf3e5b51fbca87cca09b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8328921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f6dd31ab53b9248dd706332ccfff4ac361780faa17476e1e39de83640ca8d06`

```dockerfile
```

-	Layers:
	-	`sha256:ac76c343a22d62949423e379c11d4bd27a6c16ce4c6fe2775a2760a938c16bf9`  
		Last Modified: Wed, 21 Oct 2026 01:56:28 GMT  
		Size: 8.3 MB (8321655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cc6a5a589624ed8d8807e2b829b438d0105f16f3c6ae8ffc300f7548f0006f5`  
		Last Modified: Wed, 21 Oct 2026 01:56:28 GMT  
		Size: 7.3 KB (7266 bytes)  
		MIME: application/vnd.in-toto+json
