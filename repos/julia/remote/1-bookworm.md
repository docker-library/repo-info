## `julia:1-bookworm`

```console
$ docker pull julia@sha256:0845ecb6e26433856050e060eb64fbfbc7ff1b94fb12611dc7305e0667624e95
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:1-bookworm` - linux; amd64

```console
$ docker pull julia@sha256:cc60f55ca890b8e248524361f5049dc9b28c3709eec9318ca493b61c07fab994
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.7 MB (327727431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ded69aea9f7c22e8109884bed81ef8a43fb4deabc4403065153a2f11469bbf9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Mon, 17 Aug 2026 17:41:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:41:23 GMT
ENV JULIA_PATH=/usr/local/julia
# Mon, 17 Aug 2026 17:41:23 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 17:41:23 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Mon, 17 Aug 2026 17:41:23 GMT
ENV JULIA_VERSION=1.12.7
# Mon, 17 Aug 2026 17:41:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.12/julia-1.12.7-linux-x86_64.tar.gz'; 			sha256='4e7e9e776634d24835250de67cde39b0d4af15bc432eb20697e6be6c28ea69e8'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.12/julia-1.12.7-linux-i686.tar.gz'; 			sha256='1e342bcabd859ada16efe7022e4075bca74814874e6878ee34cc9313dcb7ecf3'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.12/julia-1.12.7-linux-aarch64.tar.gz'; 			sha256='9243c0b524c7f300883240a1ee5ea3916a30e070bff718acf8ccaee31a731ef2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Mon, 17 Aug 2026 17:41:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 17 Aug 2026 17:41:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 17 Aug 2026 17:41:23 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:645278c3b9d0c2bb829bcc422bd6578dda5ebc9cd700cef04020d7a770297eff`  
		Last Modified: Mon, 17 Aug 2026 17:42:08 GMT  
		Size: 5.7 MB (5736640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1391d013c840cfc6e28527c272d63857cc39b97de3657fec63293bdb951d809f`  
		Last Modified: Mon, 17 Aug 2026 17:42:14 GMT  
		Size: 293.8 MB (293757828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b3adac02b4e6d9f14a35ee443ad30cab0c017138de2242269ee2d95ce078428`  
		Last Modified: Mon, 17 Aug 2026 17:42:07 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:5f4ec0aaffe6c0dd0d932eb9da61629965e76283a44bddde471166bb69743c43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5a4d10aff5edfbf215f4ff2a411e538ff047b804d1e86ed7472bab75a6b6e6c`

```dockerfile
```

-	Layers:
	-	`sha256:66728368b2e38d7b2f32eb86854ccd2ea49af815a22810b2840f41df8c1dc2f0`  
		Last Modified: Mon, 17 Aug 2026 17:42:08 GMT  
		Size: 2.6 MB (2572971 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e2601115abec3afc6400f060b1e4677ac8138d7e82404f6d17a75a710e2fde8`  
		Last Modified: Mon, 17 Aug 2026 17:42:08 GMT  
		Size: 16.6 KB (16554 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:e022cec8d6ad5597b8b1c8d908655a8add1528362768c2ee8c83dcef4750f2a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.1 MB (348135101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eb696d526d397b079904c5576920f2a637df24781492c40512ad01ebab5e85e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Mon, 17 Aug 2026 17:41:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:41:35 GMT
ENV JULIA_PATH=/usr/local/julia
# Mon, 17 Aug 2026 17:41:35 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 17:41:35 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Mon, 17 Aug 2026 17:41:35 GMT
ENV JULIA_VERSION=1.12.7
# Mon, 17 Aug 2026 17:41:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.12/julia-1.12.7-linux-x86_64.tar.gz'; 			sha256='4e7e9e776634d24835250de67cde39b0d4af15bc432eb20697e6be6c28ea69e8'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.12/julia-1.12.7-linux-i686.tar.gz'; 			sha256='1e342bcabd859ada16efe7022e4075bca74814874e6878ee34cc9313dcb7ecf3'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.12/julia-1.12.7-linux-aarch64.tar.gz'; 			sha256='9243c0b524c7f300883240a1ee5ea3916a30e070bff718acf8ccaee31a731ef2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Mon, 17 Aug 2026 17:41:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 17 Aug 2026 17:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 17 Aug 2026 17:41:36 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fbfb5f8ee2af50e9b99f0566f9cace869e6b973a0cad010a1b3e45ac3a19f2e`  
		Last Modified: Mon, 17 Aug 2026 17:42:22 GMT  
		Size: 5.6 MB (5582108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6f41dd8c0831c5982651116422ce9c099ba7997c67c6c2f403ccc3e29f6e863`  
		Last Modified: Mon, 17 Aug 2026 17:42:27 GMT  
		Size: 314.4 MB (314435425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5cb970b835ef8671e87363fecd5358b9acc879ea80ec37eb0e050ac0595a9c`  
		Last Modified: Mon, 17 Aug 2026 17:42:21 GMT  
		Size: 366.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:773f93974c95ff7e0f4ce85959f0d5ba5bbbc73aae88db43d63b9a0d986ac818
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1feadfe9daa353223f5d9e72a56fbeed7f2e19231cb07305f0911abcb9a01bdf`

```dockerfile
```

-	Layers:
	-	`sha256:415b56ac1bd22c4e0a790f891f3f9f7f53f163c5ebee2db86359aac39ed31847`  
		Last Modified: Mon, 17 Aug 2026 17:42:21 GMT  
		Size: 2.6 MB (2573246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ebf815114c09b5f4bb3a89155af7396b70b85535b0dc9f44751b1d0e550e14c`  
		Last Modified: Mon, 17 Aug 2026 17:42:22 GMT  
		Size: 16.7 KB (16674 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-bookworm` - linux; 386

```console
$ docker pull julia@sha256:425adfa2524a250c6542308d8da9e6e8aa16741f99d2039c729490660481239f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.6 MB (267609110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ba1fc824dc8adfb7d18a3a7b2b230cde7564f48628688ae76d53c6e0df683d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Mon, 17 Aug 2026 17:40:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:40:54 GMT
ENV JULIA_PATH=/usr/local/julia
# Mon, 17 Aug 2026 17:40:54 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 17:40:54 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Mon, 17 Aug 2026 17:40:54 GMT
ENV JULIA_VERSION=1.12.7
# Mon, 17 Aug 2026 17:40:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.12/julia-1.12.7-linux-x86_64.tar.gz'; 			sha256='4e7e9e776634d24835250de67cde39b0d4af15bc432eb20697e6be6c28ea69e8'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.12/julia-1.12.7-linux-i686.tar.gz'; 			sha256='1e342bcabd859ada16efe7022e4075bca74814874e6878ee34cc9313dcb7ecf3'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.12/julia-1.12.7-linux-aarch64.tar.gz'; 			sha256='9243c0b524c7f300883240a1ee5ea3916a30e070bff718acf8ccaee31a731ef2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Mon, 17 Aug 2026 17:40:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 17 Aug 2026 17:40:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 17 Aug 2026 17:40:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4bc6c1e80afdb6cb4a6a223bf07d1b9014ae1d57c5179c8eb32ce845649433f`  
		Last Modified: Mon, 17 Aug 2026 17:41:26 GMT  
		Size: 5.9 MB (5897179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:844219eb7536a2ba4014d3d2bcefdcbb6b4a292ebd31a950547b4d844c1a5dae`  
		Last Modified: Mon, 17 Aug 2026 17:41:31 GMT  
		Size: 232.5 MB (232490581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e314f90ee07fa5dc397886ed656a4cba4d41b970ceff4c851482178b53769c03`  
		Last Modified: Mon, 17 Aug 2026 17:41:26 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:8d725e2d8ee92d95ccb95234881eb001bd2e207f06b13bea20aae658d6d68968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2586639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b6f5f2be06556911de02eaa045a18970107a78d6e2a49ae8204ab5d1316600`

```dockerfile
```

-	Layers:
	-	`sha256:12e44aa6bfc53a7b671f5dc6e57b4abac901d632d313315475143f864e9a9eb2`  
		Last Modified: Mon, 17 Aug 2026 17:41:26 GMT  
		Size: 2.6 MB (2570118 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c03a4ef9451bf789f1c8f7c94db898a61a2c20b22875343f420b0510ff16fc5`  
		Last Modified: Mon, 17 Aug 2026 17:41:26 GMT  
		Size: 16.5 KB (16521 bytes)  
		MIME: application/vnd.in-toto+json
