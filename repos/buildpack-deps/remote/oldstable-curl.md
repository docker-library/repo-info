## `buildpack-deps:oldstable-curl`

```console
$ docker pull buildpack-deps@sha256:58021c2a0204361b62a23d2e0244d144d74c29af2d678e2a1f7e6611885d6949
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
$ docker pull buildpack-deps@sha256:797d38a001a134da4588a09a419cbaec975ac92e9b0d63a7eb27609eb20e945a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.4 MB (72399700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f07ef321f6e1ee199e2771336f029b1e8a2a1d5c6e53fe23d32af91032a97b2d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:af1914a8fcb1b77315c7bd50603e3e23bc1afad7755e55b5d2dd252ee768de80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4523670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70b812b2d28498979056b032ab35cf75ca1d783f54e50a0055cefa4763219251`

```dockerfile
```

-	Layers:
	-	`sha256:7a2d2f63377751ff47bea0b8f3cc8ed87d4529ea00d724ed8bd2199285f537e3`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 4.5 MB (4516853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fee169fbb86fd60a2df7c96416be92dc278b8be0c02f9c183a7dc59c675a7497`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 6.8 KB (6817 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:61dae18dce4900180047ad160026a59eb4e9e780c256b99f5f0dab7319b5f8b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (65993088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a41704880e5c5e6a4edfba0b4eb0a7bef40c040b8d05e0b09fcc9715b8939b7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b6d0c47d4db8cde48b4a6494637b995ef0a318b3071c7117bba0ff1d4b8ee097`  
		Last Modified: Thu, 05 Nov 2026 06:15:46 GMT  
		Size: 44.2 MB (44223287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e97ea351e800ac58cc1253f0ef68e502b7678904c141c7d93e6a9042e0e5dd`  
		Last Modified: Thu, 05 Nov 2026 08:18:28 GMT  
		Size: 21.8 MB (21769801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:843a17ab9bd23ce915fa175d8bc1307810a28c6f5a635dc3129e2f40fbf53110
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4526023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf5414aaf77df0aa1653b0945ad9421af4d426fc786842bf3c7ad7a6524f5a7d`

```dockerfile
```

-	Layers:
	-	`sha256:382b401a322c27de9e9f1a13c2dcbadfeb16992162f139eaf4beb5e95fa61e26`  
		Last Modified: Thu, 05 Nov 2026 08:18:27 GMT  
		Size: 4.5 MB (4519142 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28a65a4532643e58c2bb9da965adcf889e003d1e4955f5b765aad11265df9814`  
		Last Modified: Thu, 05 Nov 2026 08:18:27 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:fd412096dae84f55793a124e8e4bfd54e693d14baa95b67ed9db1ab62316b1fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71853116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7c68075bc4f97a64555587a2efc214c5aa5583e8b6ab867736a05009d459693`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d751a6475b76f558c1600e890c9da8b402187ec2cb1d73bc9a70fa43694e8df9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4524011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1b39ae93b699c5529f27bbf71980f2af5739c89b62697ebd7645a499810ff73`

```dockerfile
```

-	Layers:
	-	`sha256:dff454f7a97e77b8d6f95caf86a8c2b996a1d44cb0ddbc96541efda45934543a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 4.5 MB (4517114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f9bcd236bb61cd67921e9e169308fc4096b2cc352687edcb41b7994da9893a8`  
		Last Modified: Thu, 05 Nov 2026 07:42:04 GMT  
		Size: 6.9 KB (6897 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:8016f5dfe87d4491d2d4037be4bd81b282260b4485690536cbfbfd9f24d2a9e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74219596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f273af61d77665d8ecff11b736c0d20a98d96eb611466500886eb21552b3a8d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:989072a722e618d620157d5cc8f15a040692a796ff019856adc5dce2389b3232`  
		Last Modified: Thu, 05 Nov 2026 06:15:51 GMT  
		Size: 49.5 MB (49515693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0be98d36659ede814751c7330e91612ca4d73d055912e94b9a90e6adfc1eb30b`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 24.7 MB (24703903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:62aec1d0fb9927dbdfb96127ca31f84bda39cd1ca33a2dbcda0c2a53d18b6925
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4520769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a044f88633e691d0ba183a6e2ff80b054621a14e60b7dc90380809a836427a01`

```dockerfile
```

-	Layers:
	-	`sha256:a05dd1ec2ffb0388a3952d1ddeca98ea17f67946fc6739a1ff751cb92c619a85`  
		Last Modified: Thu, 05 Nov 2026 07:41:26 GMT  
		Size: 4.5 MB (4513974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1eeb5ab51fa8c489b70b7c4e2c3aa409686e2415cd32587db83de6b3109d808d`  
		Last Modified: Thu, 05 Nov 2026 07:41:26 GMT  
		Size: 6.8 KB (6795 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:53c50d9f7c834592bd42657cd1c7428b0f4c867a297b48541e7e84cc9c60d566
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77883794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a5a81e2fa804321c05a307e79e283d2bfbfab1b87d09b7d3474709ddc698332`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 10:07:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ffec0873fe14b6e584873c80e384c7a988558ed670b69a2083f4a9eff8ef04`  
		Last Modified: Thu, 05 Nov 2026 10:08:16 GMT  
		Size: 25.5 MB (25515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ab1365cbda1cf3fc4746e3c83c508076299e93fc83c363271daea6b9b099b40e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4528324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c8ad4f4ff59d0b739726eec952829e39576cbab80fc672ff516d1ef9b434ea`

```dockerfile
```

-	Layers:
	-	`sha256:ed752bc5b10dfca68f28204af5a4a5bdd704bd0ebef1d8041aef3ca8a47315f7`  
		Last Modified: Thu, 05 Nov 2026 10:08:16 GMT  
		Size: 4.5 MB (4521475 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3071e6ec48d2dc13b77c53d89634e28580a8dad26ace3965965350788d63ccad`  
		Last Modified: Thu, 05 Nov 2026 10:08:15 GMT  
		Size: 6.8 KB (6849 bytes)  
		MIME: application/vnd.in-toto+json
