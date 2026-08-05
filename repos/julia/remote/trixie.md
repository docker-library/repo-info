## `julia:trixie`

```console
$ docker pull julia@sha256:f2a0268fda90a02e504e981f1ed2183c536909b0af6041e8c605cdabeee7e5f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:trixie` - linux; amd64

```console
$ docker pull julia@sha256:9adda23204016060777b37c9b994fde6cb93854c8bc5f523b5cab3970d423c0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.6 MB (329627121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0147fbe84001fa5e34ad43fd8c9cb1691192daee49a0979ac26ce48cdf61a99e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:39 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 05 Aug 2026 00:20:39 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:20:39 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 05 Aug 2026 00:20:39 GMT
ENV JULIA_VERSION=1.12.6
# Wed, 05 Aug 2026 00:20:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.12/julia-1.12.6-linux-x86_64.tar.gz'; 			sha256='bbabf3bef19421a9dbd24a767d807606ab85e444323b5a1c73ffe293fa3d079a'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.12/julia-1.12.6-linux-i686.tar.gz'; 			sha256='2ab43d56adfe96c7b0b9ddab0e049f54f49df24049ec8b482c26737c42af28cd'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.12/julia-1.12.6-linux-aarch64.tar.gz'; 			sha256='029b93b857bd0ffd627f9a8580d3bbaa63daf008d7b7aed02fbceb8fd57c4899'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 05 Aug 2026 00:20:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:20:39 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c1a1bba6ae264011ed91dbc2a81e8305073fa90260b4e802c08c5852316916d`  
		Last Modified: Wed, 05 Aug 2026 00:21:23 GMT  
		Size: 6.2 MB (6249090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b4df92561261805ed7bb5e294cd28dd85c27f3655549c25986457d80c61bbed`  
		Last Modified: Wed, 05 Aug 2026 00:21:31 GMT  
		Size: 293.6 MB (293596895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cca3303960453b7c8f6e2e907e5caa6d073567251450c003982cb61586aa349`  
		Last Modified: Wed, 05 Aug 2026 00:21:23 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:trixie` - unknown; unknown

```console
$ docker pull julia@sha256:d5854b217da33d27128952a04af4b1a78028b5cba84f9f2a8d5664df8448ad99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2258205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11aedd4b8a5956682c6d4ce02acd9522dac6c66b9ba3407f96e7f0429f42504e`

```dockerfile
```

-	Layers:
	-	`sha256:8a6ee60ddf1dbdfb226be2b7afe98fcadc87680d8ef179ea000d9ca6d816d99a`  
		Last Modified: Wed, 05 Aug 2026 00:21:23 GMT  
		Size: 2.2 MB (2240517 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3465b787722fcd0c13dac8c03344cc6a2a74301e148820ce99f9a22b3366a6c`  
		Last Modified: Wed, 05 Aug 2026 00:21:22 GMT  
		Size: 17.7 KB (17688 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:dada0b55de6a74917fcac98349b6441b93705ac643398c9e7e4453aa2fac6976
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350586098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:470eda02cf01b6df85475cded246a1ef26133d1f9ff6de5323846bf6ed6de729`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:33 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 05 Aug 2026 00:20:33 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:20:33 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 05 Aug 2026 00:20:33 GMT
ENV JULIA_VERSION=1.12.6
# Wed, 05 Aug 2026 00:20:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.12/julia-1.12.6-linux-x86_64.tar.gz'; 			sha256='bbabf3bef19421a9dbd24a767d807606ab85e444323b5a1c73ffe293fa3d079a'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.12/julia-1.12.6-linux-i686.tar.gz'; 			sha256='2ab43d56adfe96c7b0b9ddab0e049f54f49df24049ec8b482c26737c42af28cd'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.12/julia-1.12.6-linux-aarch64.tar.gz'; 			sha256='029b93b857bd0ffd627f9a8580d3bbaa63daf008d7b7aed02fbceb8fd57c4899'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 05 Aug 2026 00:20:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:20:33 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a33bb6aa61c9ceb882d9161332e2713f8abb3f04eacf6fb3880fb20b2f57e2f9`  
		Last Modified: Wed, 05 Aug 2026 00:21:20 GMT  
		Size: 6.2 MB (6155926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c6f4a1f8a057c40d29bc91c1d704bec14e80799b4c1fd19804f78ddbc56c96b`  
		Last Modified: Wed, 05 Aug 2026 00:21:25 GMT  
		Size: 314.3 MB (314286193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fab37343555b0b0c6ef55a20014666495423fe61777753de56922d5c1a873ec2`  
		Last Modified: Wed, 05 Aug 2026 00:21:19 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:trixie` - unknown; unknown

```console
$ docker pull julia@sha256:3da15fdcfe41d6856f45e1b487d281c64ba784e04d595051d7614e83c070315d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2258696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a523aec47345c9898867da962fbbeca34eb17ba2102eabd1754c9f0e39b35e41`

```dockerfile
```

-	Layers:
	-	`sha256:140e9511fcf57be4700ec5812c62ffd5659b0656c0fc39fcfba2a2e3920ecaed`  
		Last Modified: Wed, 05 Aug 2026 00:21:20 GMT  
		Size: 2.2 MB (2240841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ccff5407afd3d53ed6ca479bce83333c7fccc93f1f14f15cf92d2cd359defd6`  
		Last Modified: Wed, 05 Aug 2026 00:21:19 GMT  
		Size: 17.9 KB (17855 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:trixie` - linux; 386

```console
$ docker pull julia@sha256:a97ac0e22b9e9d59b530ff031c521ceb907ab436ed88da61850276c59fc04399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270226307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59ef0aabd0c902e4705fc2e7d1e939ec30639a7968c12abe7e576afb46d772a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:17:06 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 05 Aug 2026 00:17:06 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:17:06 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 05 Aug 2026 00:17:06 GMT
ENV JULIA_VERSION=1.12.6
# Wed, 05 Aug 2026 00:17:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.12/julia-1.12.6-linux-x86_64.tar.gz'; 			sha256='bbabf3bef19421a9dbd24a767d807606ab85e444323b5a1c73ffe293fa3d079a'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.12/julia-1.12.6-linux-i686.tar.gz'; 			sha256='2ab43d56adfe96c7b0b9ddab0e049f54f49df24049ec8b482c26737c42af28cd'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.12/julia-1.12.6-linux-aarch64.tar.gz'; 			sha256='029b93b857bd0ffd627f9a8580d3bbaa63daf008d7b7aed02fbceb8fd57c4899'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 05 Aug 2026 00:17:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:17:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:17:06 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250ea8b1a47e568b68326083f23eb7ba9a466aa7976bc8ae32d504e3fa7d116d`  
		Last Modified: Wed, 05 Aug 2026 00:17:37 GMT  
		Size: 6.4 MB (6436121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db02f58b57fdf9243a9bafcb1527dec153b65e161645a279938cf7fcf55817f`  
		Last Modified: Wed, 05 Aug 2026 00:17:41 GMT  
		Size: 232.5 MB (232493546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7510cdb40d0456b12ed4624129abc192aed3601e14e2f8a5c4652262de9a915`  
		Last Modified: Wed, 05 Aug 2026 00:17:36 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:trixie` - unknown; unknown

```console
$ docker pull julia@sha256:bba617c6e3f5365cffe99d591ca2ea0ef772efb1630a17dc87ee2b1a35755b84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2255277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6276a56a840da3c4e4775c05a1172df58ef44055bb494ba87ef188b7eb5fcd9`

```dockerfile
```

-	Layers:
	-	`sha256:f9eafd4cecf3da8769f0eafeecacb3a0c2dc9c6b23d91250cfaafada6367abe9`  
		Last Modified: Wed, 05 Aug 2026 00:17:36 GMT  
		Size: 2.2 MB (2237642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af6a58b2d43a35a4a8bcae99834dea1291ecc03f821b31b872cd598fe03e8e88`  
		Last Modified: Wed, 05 Aug 2026 00:17:36 GMT  
		Size: 17.6 KB (17635 bytes)  
		MIME: application/vnd.in-toto+json
