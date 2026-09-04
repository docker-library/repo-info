## `julia:rc-bookworm`

```console
$ docker pull julia@sha256:4a382abcecafcd37c7c31f9cf961ba97aa288dc0da7c261ee905607464c9f95d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:rc-bookworm` - linux; amd64

```console
$ docker pull julia@sha256:5ab1236272cc09b216ee90ae96751fa584d1cd80d5d1ea940b18e39af3660c27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.7 MB (340718611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f6a64991b490dfbf5d30587790ca60cf44258a08b1ffa88a89574129102e527`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Thu, 03 Sep 2026 23:13:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 03 Sep 2026 23:13:44 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 03 Sep 2026 23:13:44 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 23:13:44 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Thu, 03 Sep 2026 23:13:44 GMT
ENV JULIA_VERSION=1.13.0-rc4
# Thu, 03 Sep 2026 23:13:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.0-rc4-linux-x86_64.tar.gz'; 			sha256='a66e5b87876cc1316f170014315b22e3b717dd952c74a23634bda629ad2c2b68'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.0-rc4-linux-i686.tar.gz'; 			sha256='e251827ae02a4acba561952e68ec2f5448331975783bc6f50c146104bb7b63a1'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.0-rc4-linux-aarch64.tar.gz'; 			sha256='a42e1bce94b3d3283ff74e9fe3188bf4f6872ec8609fb6ec5e8ef32b2b5a4ef4'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Thu, 03 Sep 2026 23:13:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 23:13:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 03 Sep 2026 23:13:44 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0413544fc105e7fab80cd3ad983934d9fc4463f0f8fb20bbb0df825d74297134`  
		Last Modified: Thu, 03 Sep 2026 23:14:30 GMT  
		Size: 5.7 MB (5736677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e1d29d25e8dd7ada16fef3ebbe206b50724133934f12e90cca08fbd86fb9ce4`  
		Last Modified: Thu, 03 Sep 2026 23:14:36 GMT  
		Size: 306.7 MB (306748906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ca1da2a0eea21e029582f4cc52ea4516f40ee1c41b099c61e70ca2ce52cdb3`  
		Last Modified: Thu, 03 Sep 2026 23:14:29 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:78b0662c111d000dafa17190293e18add47745a5132b481f0e6b1174c3d981d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2590198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062430de611c955b60428943a7121830838a294d010eb60ede7cabf5e11fa3f6`

```dockerfile
```

-	Layers:
	-	`sha256:f60f39d3dbc6d2ff19be21a4e854a265f8bb6db6ac3d13eed76ce65a7d0ff72d`  
		Last Modified: Thu, 03 Sep 2026 23:14:29 GMT  
		Size: 2.6 MB (2573895 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5685b6f772d4b639025982d241d28f7a88ad940ad0b717e584c93db532a16ea`  
		Last Modified: Thu, 03 Sep 2026 23:14:29 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:rc-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:7bdf33e9194a590b26910c2641f5f30140ffd6abdc11edb18c30bde16434a8b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.0 MB (359041851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b21f000e6ea609a09ebb7c61fa0de583560f7c5071fc76723c900159357eddf7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Thu, 03 Sep 2026 23:13:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 03 Sep 2026 23:13:58 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 03 Sep 2026 23:13:58 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 23:13:58 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Thu, 03 Sep 2026 23:13:58 GMT
ENV JULIA_VERSION=1.13.0-rc4
# Thu, 03 Sep 2026 23:13:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.0-rc4-linux-x86_64.tar.gz'; 			sha256='a66e5b87876cc1316f170014315b22e3b717dd952c74a23634bda629ad2c2b68'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.0-rc4-linux-i686.tar.gz'; 			sha256='e251827ae02a4acba561952e68ec2f5448331975783bc6f50c146104bb7b63a1'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.0-rc4-linux-aarch64.tar.gz'; 			sha256='a42e1bce94b3d3283ff74e9fe3188bf4f6872ec8609fb6ec5e8ef32b2b5a4ef4'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Thu, 03 Sep 2026 23:13:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 23:13:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 03 Sep 2026 23:13:58 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3b40efb78900bf107cf5d0a455d1145826031fa8070851bd7b5b61d35be724`  
		Last Modified: Thu, 03 Sep 2026 23:14:45 GMT  
		Size: 5.6 MB (5582156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b443ef45f1fc1a24422e39991487a93897decece9bc63eec6581709671f3b28`  
		Last Modified: Thu, 03 Sep 2026 23:14:52 GMT  
		Size: 325.3 MB (325342038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7723c4427a0078bb58784f16537d0e314f6ceb0da98f7042e7e8b2c254c402a2`  
		Last Modified: Thu, 03 Sep 2026 23:14:45 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:b0f6bfca45631d3b15decbd8342e7095f7a5edfbbac8ffd37064cfce03f66561
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2590567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59cb9d21bd4c1592a9c0036af4de1f7053211304a8abca494b6b45efc94ceecc`

```dockerfile
```

-	Layers:
	-	`sha256:95799698dddf7fc34496178f4468ec1e0274b7146e8eac6c45aa9294b96259a4`  
		Last Modified: Thu, 03 Sep 2026 23:14:45 GMT  
		Size: 2.6 MB (2574158 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:329d8951add00bccf04e01318e3c4df2668ed353e9305dc249234c228680eba6`  
		Last Modified: Thu, 03 Sep 2026 23:14:44 GMT  
		Size: 16.4 KB (16409 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:rc-bookworm` - linux; 386

```console
$ docker pull julia@sha256:e9c16d24e415527c9af287c6fe6abd66469c27b01f111f3f19345dc0e4be0676
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278014076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98eb79f99dc6fd314ce040df957fd379c4d7ed1c1a3a7ea76e8f8e85680fe6ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Thu, 03 Sep 2026 23:13:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 03 Sep 2026 23:14:12 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 03 Sep 2026 23:14:12 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 23:14:12 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Thu, 03 Sep 2026 23:14:12 GMT
ENV JULIA_VERSION=1.13.0-rc4
# Thu, 03 Sep 2026 23:14:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.0-rc4-linux-x86_64.tar.gz'; 			sha256='a66e5b87876cc1316f170014315b22e3b717dd952c74a23634bda629ad2c2b68'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.0-rc4-linux-i686.tar.gz'; 			sha256='e251827ae02a4acba561952e68ec2f5448331975783bc6f50c146104bb7b63a1'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.0-rc4-linux-aarch64.tar.gz'; 			sha256='a42e1bce94b3d3283ff74e9fe3188bf4f6872ec8609fb6ec5e8ef32b2b5a4ef4'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Thu, 03 Sep 2026 23:14:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 23:14:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 03 Sep 2026 23:14:13 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c06e42991e10cc9a77608ad38644e9b711d8cc820ce784a014ea16ebab95212`  
		Last Modified: Thu, 03 Sep 2026 23:14:46 GMT  
		Size: 5.9 MB (5897203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0558ba2de7a5d611e12613bb39b5e1e93a7f550c845ea62dfa9b19cc9feffd1c`  
		Last Modified: Thu, 03 Sep 2026 23:14:50 GMT  
		Size: 242.9 MB (242895447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7772b8605ba164d56d972fa991c481c05401b24ed9eacf28050ef5b76b0af3e9`  
		Last Modified: Thu, 03 Sep 2026 23:14:45 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:a4f99c45a59d2bedfaefabbe046877fa96e7be40ce0fed9e64714653034c5246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6e2b9caedbde4310ffe5dcf69be9ab0cf532dd8c842dd7dbdf442b493d78ccc`

```dockerfile
```

-	Layers:
	-	`sha256:52c0d449bb1e1c2a1c97c8b424c30ea48250e3810cb77c8d0950f766afda8ec9`  
		Last Modified: Thu, 03 Sep 2026 23:14:46 GMT  
		Size: 2.6 MB (2571047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdbb0758f24ec8caa662f1eef99dbc943869b48ea789393081d03d00bf8b6bad`  
		Last Modified: Thu, 03 Sep 2026 23:14:45 GMT  
		Size: 16.3 KB (16274 bytes)  
		MIME: application/vnd.in-toto+json
