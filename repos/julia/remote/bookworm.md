## `julia:bookworm`

```console
$ docker pull julia@sha256:03df67a583dd4e41b2ff0ff607487de2e1d5ff35e06145aec37311d182df8a9b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:bookworm` - linux; amd64

```console
$ docker pull julia@sha256:ca64ebbf18159a85442b6ea85c6923aabc84e3c7e2af18e31e68103bffcb04a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.5 MB (327512371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914615e9d61fb4d54f91b069d5de8292faf997303d7f734f84685345d8313a46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:20:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 05 Aug 2026 00:20:41 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:20:41 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 05 Aug 2026 00:20:41 GMT
ENV JULIA_VERSION=1.12.6
# Wed, 05 Aug 2026 00:20:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.12/julia-1.12.6-linux-x86_64.tar.gz'; 			sha256='bbabf3bef19421a9dbd24a767d807606ab85e444323b5a1c73ffe293fa3d079a'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.12/julia-1.12.6-linux-i686.tar.gz'; 			sha256='2ab43d56adfe96c7b0b9ddab0e049f54f49df24049ec8b482c26737c42af28cd'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.12/julia-1.12.6-linux-aarch64.tar.gz'; 			sha256='029b93b857bd0ffd627f9a8580d3bbaa63daf008d7b7aed02fbceb8fd57c4899'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:20:41 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eef4aa458927459bbdd152dfea86805014f536840d71191b082e3c2568367aa`  
		Last Modified: Wed, 05 Aug 2026 00:21:26 GMT  
		Size: 5.7 MB (5721646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6748207a783b927928b93e998457f2c8558a3d64eb1f7d353ca740ebcf3eb656`  
		Last Modified: Wed, 05 Aug 2026 00:21:32 GMT  
		Size: 293.6 MB (293557767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7ef80c1852c4c3b0180cda593a0e8d29dccde24b059c43600a9114b48a301f8`  
		Last Modified: Wed, 05 Aug 2026 00:21:26 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:077fa2d03190e9a194b9b5c6cdbdee53f907d5014c562c7a517faa0033558294
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2584315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73117bf6ba833ef1f1942d9ddca71cbcf2705b9472fed51e6d0d0697576798d0`

```dockerfile
```

-	Layers:
	-	`sha256:4908cfcbfb8269fe3c0c3a5fd7c4c2a540afc34542ccf4cd1f4620da96d54b10`  
		Last Modified: Wed, 05 Aug 2026 00:21:26 GMT  
		Size: 2.6 MB (2567768 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dbcba6baaf1cfcdeaa079955a2eccb80666794226516931367155b885395c21`  
		Last Modified: Wed, 05 Aug 2026 00:21:26 GMT  
		Size: 16.5 KB (16547 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:4073c751e9d5d8f5c92c677eaf765abb1357c8543a556150c2b300e066743d85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347947014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a8090da99badaafb2ed4980efb757abc1588a91b6e56576a2a190d50740dc79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:20:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:36 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 05 Aug 2026 00:20:36 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:20:36 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 05 Aug 2026 00:20:36 GMT
ENV JULIA_VERSION=1.12.6
# Wed, 05 Aug 2026 00:20:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.12/julia-1.12.6-linux-x86_64.tar.gz'; 			sha256='bbabf3bef19421a9dbd24a767d807606ab85e444323b5a1c73ffe293fa3d079a'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.12/julia-1.12.6-linux-i686.tar.gz'; 			sha256='2ab43d56adfe96c7b0b9ddab0e049f54f49df24049ec8b482c26737c42af28cd'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.12/julia-1.12.6-linux-aarch64.tar.gz'; 			sha256='029b93b857bd0ffd627f9a8580d3bbaa63daf008d7b7aed02fbceb8fd57c4899'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 05 Aug 2026 00:20:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:20:36 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c50ad61e724e2b98bead5d7c321a6d1253c4191bae1d24a9641f13b9985d178`  
		Last Modified: Wed, 05 Aug 2026 00:21:22 GMT  
		Size: 5.6 MB (5570748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b03781db6f92d627f9802bd1215d69b0475e23a15893975f8ef8b112219d93e6`  
		Last Modified: Wed, 05 Aug 2026 00:21:29 GMT  
		Size: 314.3 MB (314258692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d329bfe683d47690031be8a82024e085d05eecb5af2937fe7b084cdb9a0df268`  
		Last Modified: Wed, 05 Aug 2026 00:21:22 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:9ccd62d1cb3e289aea4cc79d46d6f15151dd8db5ee25a32181aaa74cb5ce2aef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2584709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b82a796f1383b6d56318eed458270434c0a9222c313c1dcbaabbfd094ea52ec1`

```dockerfile
```

-	Layers:
	-	`sha256:ca4dd5e2e50cb7600b9f5201fc25ff00449f13ddbfff004c16e5caf3c00af437`  
		Last Modified: Wed, 05 Aug 2026 00:21:22 GMT  
		Size: 2.6 MB (2568043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96cf7dd2e855ddf177c37c21c3e9e9175030752da64f5065460628bd9ddb88ec`  
		Last Modified: Wed, 05 Aug 2026 00:21:22 GMT  
		Size: 16.7 KB (16666 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:bookworm` - linux; 386

```console
$ docker pull julia@sha256:a166db98f293a7a5648c5c42aa36075ad3a718054a870f866adcc2f1cb4df058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.6 MB (267555546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d82db8b9ca1153b05d3ab8d6d075fc2b17edf9a2c007d3243d8ef16c33040eaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:16:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:17:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 05 Aug 2026 00:17:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:17:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 05 Aug 2026 00:17:07 GMT
ENV JULIA_VERSION=1.12.6
# Wed, 05 Aug 2026 00:17:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.12/julia-1.12.6-linux-x86_64.tar.gz'; 			sha256='bbabf3bef19421a9dbd24a767d807606ab85e444323b5a1c73ffe293fa3d079a'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.12/julia-1.12.6-linux-i686.tar.gz'; 			sha256='2ab43d56adfe96c7b0b9ddab0e049f54f49df24049ec8b482c26737c42af28cd'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.12/julia-1.12.6-linux-aarch64.tar.gz'; 			sha256='029b93b857bd0ffd627f9a8580d3bbaa63daf008d7b7aed02fbceb8fd57c4899'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 05 Aug 2026 00:17:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:17:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:17:07 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5babc04040eea021c895ed901502bfa951c8239d082f7e9565cfd3f5f2f59dc2`  
		Last Modified: Wed, 05 Aug 2026 00:17:38 GMT  
		Size: 5.9 MB (5880235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8e8332202dd8a5f86147410f70897cc5c9ba2c7213fb2803d02671c7b5006e`  
		Last Modified: Wed, 05 Aug 2026 00:17:42 GMT  
		Size: 232.5 MB (232453964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:917b951102f8948ba8e15ae0b0bbfa0a7ef5901e7d10eac12585371f05b0c861`  
		Last Modified: Wed, 05 Aug 2026 00:17:38 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:08390c5258d0d59229b1593b36c5ed312ae9b24c715cddb3cdb6cbc20c4f67e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2581428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4427b879f2992dfa486dd98f9ad3367a50d897b84ba38360768e90ff36e84bfe`

```dockerfile
```

-	Layers:
	-	`sha256:028273a571141670369811469f8c0948938a150bc4528650f516815390852d99`  
		Last Modified: Wed, 05 Aug 2026 00:17:38 GMT  
		Size: 2.6 MB (2564915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a431dc77daf30b3df239a4ad9101ce196ee33cc9e4c76aa35d15fa7f2792d288`  
		Last Modified: Wed, 05 Aug 2026 00:17:38 GMT  
		Size: 16.5 KB (16513 bytes)  
		MIME: application/vnd.in-toto+json
