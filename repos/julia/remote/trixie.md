## `julia:trixie`

```console
$ docker pull julia@sha256:fee5a7dfcfe4bd72604786e330e56a3db21df534c2a5712299dd828fd4da6822
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
$ docker pull julia@sha256:b11ce0cc9e3f7e341947116aa7d4e813e7014a93b5883164bd727a11d1e3add9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.6 MB (329627092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a880fcc11f6ea220ce9433f7ad0ab8d99f3a3e59264cab43f7eaae36ab712b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 20:45:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 20:45:42 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 12 Aug 2026 20:45:42 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 20:45:42 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 12 Aug 2026 20:45:42 GMT
ENV JULIA_VERSION=1.12.6
# Wed, 12 Aug 2026 20:45:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.12/julia-1.12.6-linux-x86_64.tar.gz'; 			sha256='bbabf3bef19421a9dbd24a767d807606ab85e444323b5a1c73ffe293fa3d079a'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.12/julia-1.12.6-linux-i686.tar.gz'; 			sha256='2ab43d56adfe96c7b0b9ddab0e049f54f49df24049ec8b482c26737c42af28cd'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.12/julia-1.12.6-linux-aarch64.tar.gz'; 			sha256='029b93b857bd0ffd627f9a8580d3bbaa63daf008d7b7aed02fbceb8fd57c4899'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 12 Aug 2026 20:45:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 12 Aug 2026 20:45:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 20:45:42 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3c4b4cc37a96dabba0871ccfb9a7ec729b78c79052f7b9cf7ef5b04a0148b5`  
		Last Modified: Wed, 12 Aug 2026 20:46:27 GMT  
		Size: 6.2 MB (6249086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acef7fb0716b0d27b9ca1e37337d29371542a4a8e2be10bd45483481845e27b6`  
		Last Modified: Wed, 12 Aug 2026 20:46:32 GMT  
		Size: 293.6 MB (293596875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7440b2a608897ce0a2569890ce07804fe612a93259873a1fb4bd588d278de454`  
		Last Modified: Wed, 12 Aug 2026 20:46:27 GMT  
		Size: 366.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:trixie` - unknown; unknown

```console
$ docker pull julia@sha256:76ee536b4a2b8bc6439a1cf104e8adb9462e9fdc60fcdc49f29b301f12cabee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2258218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:239e7dc6a7c95d6dcbbb4108260c11fe9264282e55c7815f4ac99a6e76fbe249`

```dockerfile
```

-	Layers:
	-	`sha256:c902c9d9013e598a95e1e7cde5fa3b45d4f402acfd683c61f582bd77586a0de9`  
		Last Modified: Wed, 12 Aug 2026 20:46:27 GMT  
		Size: 2.2 MB (2240517 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e1e70370ed1b87e5a4adef7db72bebf0fa57a260689cf203fb56d0f67a08b5f`  
		Last Modified: Wed, 12 Aug 2026 20:46:27 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:f04b54e53b34f6fc595b4a4b50f1e64936c3efb69abf21601053c3582b48f208
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350586097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6227a45ee1fa4a2ce4bddecec7ff7065fb33770347b6aa0e7a355231039335`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 20:45:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 20:45:48 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 12 Aug 2026 20:45:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 20:45:48 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 12 Aug 2026 20:45:48 GMT
ENV JULIA_VERSION=1.12.6
# Wed, 12 Aug 2026 20:45:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.12/julia-1.12.6-linux-x86_64.tar.gz'; 			sha256='bbabf3bef19421a9dbd24a767d807606ab85e444323b5a1c73ffe293fa3d079a'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.12/julia-1.12.6-linux-i686.tar.gz'; 			sha256='2ab43d56adfe96c7b0b9ddab0e049f54f49df24049ec8b482c26737c42af28cd'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.12/julia-1.12.6-linux-aarch64.tar.gz'; 			sha256='029b93b857bd0ffd627f9a8580d3bbaa63daf008d7b7aed02fbceb8fd57c4899'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 12 Aug 2026 20:45:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 12 Aug 2026 20:45:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 20:45:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab5292e3d937059d093cdd3461b4b9bbb5fe14ba73b2634e312bc12331385f4`  
		Last Modified: Wed, 12 Aug 2026 20:46:34 GMT  
		Size: 6.2 MB (6155930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b7176d4f2099a0893d8798be7febc77db8b88ef1f8c25f2a57b90a81aebca83`  
		Last Modified: Wed, 12 Aug 2026 20:46:40 GMT  
		Size: 314.3 MB (314286193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a469b45e08c91895e3dd1105cd746301cc3a936b2cca7513ae9dc82aa6bd66e8`  
		Last Modified: Wed, 12 Aug 2026 20:46:34 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:trixie` - unknown; unknown

```console
$ docker pull julia@sha256:b10715637690fc0086c24de6d3a5d85cc689885d7b98b00cb19fa62dfd32a1ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2258709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1f4ecb5aaa0ac50d2bb19ca2c64070d7b46ce4b91846fd16e63a087af7ddd9e`

```dockerfile
```

-	Layers:
	-	`sha256:b2998a94a5587e8ad62ce2f2d68d243489b463ba26c053bfe9a9f65215b34e1b`  
		Last Modified: Wed, 12 Aug 2026 20:46:34 GMT  
		Size: 2.2 MB (2240841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8adb3cd90db18bd34bf67613edf4593cddde9f41d0b68c288252e14ad796c87`  
		Last Modified: Wed, 12 Aug 2026 20:46:34 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:trixie` - linux; 386

```console
$ docker pull julia@sha256:5f557709d167593fa8ae8340cb5777e89b5cf8ff6a9fd55b8bc6e9164d9a59b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270226359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e5b9b70c6e74bfa42396c43e63058b1cb4bb130d323932165702f5ce899bed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 20:45:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 20:45:50 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 12 Aug 2026 20:45:50 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 20:45:50 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 12 Aug 2026 20:45:50 GMT
ENV JULIA_VERSION=1.12.6
# Wed, 12 Aug 2026 20:45:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.12/julia-1.12.6-linux-x86_64.tar.gz'; 			sha256='bbabf3bef19421a9dbd24a767d807606ab85e444323b5a1c73ffe293fa3d079a'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.12/julia-1.12.6-linux-i686.tar.gz'; 			sha256='2ab43d56adfe96c7b0b9ddab0e049f54f49df24049ec8b482c26737c42af28cd'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.12/julia-1.12.6-linux-aarch64.tar.gz'; 			sha256='029b93b857bd0ffd627f9a8580d3bbaa63daf008d7b7aed02fbceb8fd57c4899'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 12 Aug 2026 20:45:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 12 Aug 2026 20:45:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 20:45:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78623a6e0fd4087319f9a263fba20483db21b659b5ccab4ac65665a821844cab`  
		Last Modified: Wed, 12 Aug 2026 20:46:23 GMT  
		Size: 6.4 MB (6436175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95cc1d8b185f10f8a94c18405aab553fc9b3a972ca38a116e6bdcddd0b6e1ce`  
		Last Modified: Wed, 12 Aug 2026 20:46:27 GMT  
		Size: 232.5 MB (232493545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4bf0bd0806b635c59a454ca492e13049a4aa0794557730710944bb10fab51d9`  
		Last Modified: Wed, 12 Aug 2026 20:46:22 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:trixie` - unknown; unknown

```console
$ docker pull julia@sha256:cf82702d386eb45cc41831a4dba23e1b15366ffc8a45550c876fcfe56e8d3d53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2255289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffa1128c6bc36068329c04d6903032fe80372b0787fe19200a621a3205328dbb`

```dockerfile
```

-	Layers:
	-	`sha256:32eccfb5ccd9428ff74c9a40f120691f333cabb4fd004e218647fdee75df34f1`  
		Last Modified: Wed, 12 Aug 2026 20:46:22 GMT  
		Size: 2.2 MB (2237642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:745d492363e554c8b1d3b24af9d82b600d83d265968fb32edf8c44ee604ebfe5`  
		Last Modified: Wed, 12 Aug 2026 20:46:22 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json
