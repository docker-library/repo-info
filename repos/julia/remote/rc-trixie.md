## `julia:rc-trixie`

```console
$ docker pull julia@sha256:b2320a5e90dfb52f4f98191a211539bf124e4b1dddf0952c98a3e2da06b954d8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:rc-trixie` - linux; amd64

```console
$ docker pull julia@sha256:b2996a8db17a32c7f20d41cfe0fa1eb116902231a3f9b83892d15d36f9c191cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.4 MB (345434199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b0f056d0d99e8f6551f0aff44beacf0200457fb50850bd52a8c4735b6d4b3dc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:21:45 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 05 Aug 2026 00:21:45 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:21:45 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 05 Aug 2026 00:21:45 GMT
ENV JULIA_VERSION=1.13.0-rc1
# Wed, 05 Aug 2026 00:21:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.0-rc1-linux-x86_64.tar.gz'; 			sha256='94c501d83aa46fad188894a31db093c6d065bbab94346645c775876066ec1b78'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.0-rc1-linux-i686.tar.gz'; 			sha256='1e758cfe0ba45a9b5313ff732ff5aa0d4f1927129e1b207e5e6c51e35ed9abb4'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.0-rc1-linux-aarch64.tar.gz'; 			sha256='0e08d6410e76a51b6825aed34c9e20fd5778b35cc4b406dd8eb8bd402d8df705'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 05 Aug 2026 00:21:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:21:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:21:46 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c1ad82b68655a051fd54d3d961445f8dd544662f4639076b0c8c58a6c610256`  
		Last Modified: Wed, 05 Aug 2026 00:21:13 GMT  
		Size: 6.2 MB (6249068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a24d4283612c951c03525515d3be83ea8cc6392efb87c7cb497430049ace902`  
		Last Modified: Wed, 05 Aug 2026 00:22:38 GMT  
		Size: 309.4 MB (309403999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d52c9011bfeb8ddeb5c2ecf04967472d39a276e7387d7a3d6f39ebeda529e7`  
		Last Modified: Wed, 05 Aug 2026 00:22:32 GMT  
		Size: 367.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:e8d71d5b95d6fa9350d1fadf435f213b720780abf42cc39d3b9a3a9b59ebf0da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2258326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf0541ca99afa3d92a859a919a7ac2c6e969158177b2e5cbb5cd9bd5c13d447`

```dockerfile
```

-	Layers:
	-	`sha256:d70ea893cb7525dd5e178959db1ef6594ea00b99bf98c3143149466b46521c33`  
		Last Modified: Wed, 05 Aug 2026 00:22:33 GMT  
		Size: 2.2 MB (2241165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13f4399a653509f24411c3650ca2b8abd24f7bdb3ca33188a33467e2d6657347`  
		Last Modified: Wed, 05 Aug 2026 00:22:32 GMT  
		Size: 17.2 KB (17161 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:rc-trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:14f339f957417cfe83ad3dc1f04fcc824abe6dce11e862440627fdd9170ed1d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.1 MB (370108629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec6d8440161d851d21c42cac638cab477caa8fd7754bc7d6b26f57f64604626e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:21:49 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 05 Aug 2026 00:21:49 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:21:49 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 05 Aug 2026 00:21:49 GMT
ENV JULIA_VERSION=1.13.0-rc1
# Wed, 05 Aug 2026 00:21:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.0-rc1-linux-x86_64.tar.gz'; 			sha256='94c501d83aa46fad188894a31db093c6d065bbab94346645c775876066ec1b78'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.0-rc1-linux-i686.tar.gz'; 			sha256='1e758cfe0ba45a9b5313ff732ff5aa0d4f1927129e1b207e5e6c51e35ed9abb4'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.0-rc1-linux-aarch64.tar.gz'; 			sha256='0e08d6410e76a51b6825aed34c9e20fd5778b35cc4b406dd8eb8bd402d8df705'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 05 Aug 2026 00:21:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:21:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:21:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd197b74fd6e22ff6136d7cc2f6b93287a85c591b5f4acda416fb8dfd64f6dae`  
		Last Modified: Wed, 05 Aug 2026 00:22:36 GMT  
		Size: 6.2 MB (6155927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc040ae40e589031c3bfeab63be6d8e6375f54be38c7c26772662f8801aee2f`  
		Last Modified: Wed, 05 Aug 2026 00:22:42 GMT  
		Size: 333.8 MB (333808723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df25b46d216a6fd4fac1f671d892627ee76ebe9033b883777a8e1a8c7948adce`  
		Last Modified: Wed, 05 Aug 2026 00:22:36 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:51e4753443207ec4068d22b7d7ef1db07b203bc2d09ee82f06eb00b233b4d606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2258769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98001c39a94fecd1bdf63fa8b94feadfcd609906a2dd9caec6368c341defc7e6`

```dockerfile
```

-	Layers:
	-	`sha256:726a0f9f1d28f3c91db4da48a450283c43b88eb26e3c877ecc4686d2212c7276`  
		Last Modified: Wed, 05 Aug 2026 00:22:36 GMT  
		Size: 2.2 MB (2241465 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc008f742b5c4b95ae63a6e71636708ee79c68eaa8b1fe53b95de48c5ab13466`  
		Last Modified: Wed, 05 Aug 2026 00:22:36 GMT  
		Size: 17.3 KB (17304 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:rc-trixie` - linux; 386

```console
$ docker pull julia@sha256:3fbfc61f41cdc124bfebabb75b47de05138c3517bb114d0f0db99515e2079f05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281062043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe57c41c02e591e2d7970623f521ed51d7ab1f8cbadc4100c391294181eb9ebb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:17:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:17:22 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 05 Aug 2026 00:17:22 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:17:22 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 05 Aug 2026 00:17:22 GMT
ENV JULIA_VERSION=1.13.0-rc1
# Wed, 05 Aug 2026 00:17:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.0-rc1-linux-x86_64.tar.gz'; 			sha256='94c501d83aa46fad188894a31db093c6d065bbab94346645c775876066ec1b78'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.0-rc1-linux-i686.tar.gz'; 			sha256='1e758cfe0ba45a9b5313ff732ff5aa0d4f1927129e1b207e5e6c51e35ed9abb4'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.0-rc1-linux-aarch64.tar.gz'; 			sha256='0e08d6410e76a51b6825aed34c9e20fd5778b35cc4b406dd8eb8bd402d8df705'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 05 Aug 2026 00:17:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:17:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:17:22 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfd52ab78ad6764dd1d6c9e72cb7abf2f51853c949f93b14cbcf79c69284e2aa`  
		Last Modified: Wed, 05 Aug 2026 00:17:54 GMT  
		Size: 6.4 MB (6436202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a97c6cb6724ad3bfe1ad76919ddc1d45cf1c05634ada8bcdb7c89f5b2de5e3`  
		Last Modified: Wed, 05 Aug 2026 00:17:59 GMT  
		Size: 243.3 MB (243329202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb2fc963e00ebe37bf379c75970a5d2da8a8948c58901c9d6248c248e8c470f`  
		Last Modified: Wed, 05 Aug 2026 00:17:54 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:af65fd4a6e85ce250271a7e74235e1592562cb9b29db60ae5027bd70d4cc146f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2255416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:406bef5b4458797155ae6769c76ab1a6ee8d289e3c3d84e57a23a5794b5f6581`

```dockerfile
```

-	Layers:
	-	`sha256:63975cbd5f10042c91e220388341a7b4242015b0bd08d55b6475e2bb25c61456`  
		Last Modified: Wed, 05 Aug 2026 00:17:54 GMT  
		Size: 2.2 MB (2238300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0f5c2bc484b004547c1c1b009426564c4170ffbadc12254b134720fa3c08b66`  
		Last Modified: Wed, 05 Aug 2026 00:17:54 GMT  
		Size: 17.1 KB (17116 bytes)  
		MIME: application/vnd.in-toto+json
