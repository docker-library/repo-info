## `julia:trixie`

```console
$ docker pull julia@sha256:b0ea3fcf1fe93e25e3a7eec4fe4ed23e51a3aee8ec08bbe7a14b247051b36faf
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
$ docker pull julia@sha256:605f429b384309f3c1a70484ec63b5b8a481feafa261d5424bd1066f6a5b1da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.1 MB (342134569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fe1d2c0ad8f2eba384660ef9db55b4252af43d600da3297592959434eff8f24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:18:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:18:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:18:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7251038b43fb4f309c084b32e12c0da0d8773e20998f24fead7a448a09bf27cd`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 6.2 MB (6247392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf0bfe0798587a30517f155962d507481607c83f3325d8ff79118e24077abb6`  
		Last Modified: Wed, 21 Oct 2026 00:18:54 GMT  
		Size: 306.0 MB (306043225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00e7ff050edf5f852888343c83231563416e64983c139e581dbc40f0bb33bf8`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:trixie` - unknown; unknown

```console
$ docker pull julia@sha256:a783a0a053baf24401c6912fcc343c694cab4e2da9781ad09311393777dc6954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f47e5575a3ccd88629fbe6ec112fb43579581faf47c674d9e0dcaf8da58ca80`

```dockerfile
```

-	Layers:
	-	`sha256:94d1ababde8139cf257549fad6b2ccdbfbe585cdfe7a0534d53bf32ae55ed148`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 2.2 MB (2246356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f1e4f9ae5f4ba8c8a51e601cf46b19ee4a5d51ce7d4629b9d208270f12e69e0`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:345e062ae6688beaea961b6bd31780b0d8729774537c9f9764517733eb198701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.1 MB (361100422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f90ea6d0e948d86ad47d3ca0a82a43da16acee9d43aeae300a58e8bf59e0e3ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:16:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:16:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:16:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6036bd4cbedb72c264a3e38730e8628dbdd600292bd87195810530f6387981d4`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 6.2 MB (6153234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3019b92747871c3ce2f117263323e29a50f1669a042111d1a35319031a9b8767`  
		Last Modified: Wed, 21 Oct 2026 00:17:40 GMT  
		Size: 324.7 MB (324746340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e88fb31a1b54f7112b6132545ae636d029e85dc9a4d0f9275e26b1c9f673621`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:trixie` - unknown; unknown

```console
$ docker pull julia@sha256:df62e34a70752a3204d2ee3b4cb1671a061505e405c4260c52270fad12a9a4cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7def002ffdd20b44ee6066eea975c692f9d767df1483f4f6a2333bd245d477b`

```dockerfile
```

-	Layers:
	-	`sha256:e9e0abce2cf1b9498c259dbc956fd4eef70539b40bacdb882d3812a79ef8b3a3`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 2.2 MB (2246680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f95fcbb65ebc3064436cc15265269a43411463d5d9e2fcd0da27d6309a70adab`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:trixie` - linux; 386

```console
$ docker pull julia@sha256:7e21d3c81767c3ab5681f224b40803902e909007fe5692c7d74096163fe7a805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280570546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea43fac9d2291adccf5e353459154c6a256e46ffce44aff9f1b51f1f961e3338`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:38:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:38:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:38:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:38:19 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554a03fe980520b30a093a5e2efbee0c1130fe1c50dec4fc5af611cbdc2929b3`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 6.4 MB (6436301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d99cf53b239f508d970c767af5bbfd96dab2783c804ac07000b98343ea7814`  
		Last Modified: Fri, 16 Oct 2026 20:38:57 GMT  
		Size: 242.8 MB (242780581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e81c48df08bf48d59caed031420eb17c8fc903cc213aeb573e0d95a0ae191dcd`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 367.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:trixie` - unknown; unknown

```console
$ docker pull julia@sha256:5e85f1cba43f67c29590e01b56be07f2a142c43017a2cb07cfdd60ed8ed99f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1852933f316f0a93f797b944435141ac8c92e795cf8a98313b30b01f460ff923`

```dockerfile
```

-	Layers:
	-	`sha256:1ab50347472b3edc5b24784b26081062a628f64b1928df3b77683c4e6d8cef31`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 2.2 MB (2244758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50be2bb2a72bf473e903dbbd4c0e08912da03387f8f919b92071f1ad3456274d`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json
