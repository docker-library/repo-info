## `julia:1-bookworm`

```console
$ docker pull julia@sha256:e1d9cc82c37456e83d8a4cda9de17732aac7cd6a766c502bd5a94fb60a6db7c7
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
$ docker pull julia@sha256:232d46ed10be9c84b553a15b506188d9b7423a4320c3a0d6a16b0b87cccd4562
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.6 MB (340587097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37be9b18a73ad878b1fe33185013aec5e5ebca020939599e57b87cdb0e11dac0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:15:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:16:19 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 05 Nov 2026 07:16:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:16:19 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Thu, 05 Nov 2026 07:16:19 GMT
ENV JULIA_VERSION=1.13.3
# Thu, 05 Nov 2026 07:16:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.3-linux-x86_64.tar.gz'; 			sha256='5c61cb4b40332cb5a3504e7779e2f5dac093caa4a1116ded19f01413f85c63e4'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.3-linux-i686.tar.gz'; 			sha256='df41358eddc884b022af86102de706e0ca11ea69792241570688943645cdb1bc'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.3-linux-aarch64.tar.gz'; 			sha256='9ceb053bee6dfb8189bd40afd6925de3a9b7ff8fac8d01a5fcdd84af171ddf03'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Thu, 05 Nov 2026 07:16:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:16:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:16:19 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0dea3f4aa6a984fcfc291d2376f7417d73a13c67ab813167a58bfb34b65c897`  
		Last Modified: Thu, 05 Nov 2026 07:17:02 GMT  
		Size: 5.5 MB (5543393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f50c4f5d14a3c3559f9df279e03f9f52dd111a785efc9eba5d219f607b0684b3`  
		Last Modified: Thu, 05 Nov 2026 07:17:08 GMT  
		Size: 306.8 MB (306795348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bf0f1ac93e25a0b8ac697348773cfe009be00e00da4389ed0913d2cc4d04efe`  
		Last Modified: Thu, 05 Nov 2026 07:17:01 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:bdb6478f81fa09aac69ef87566fcfcfbf0ba4d9a6e041a5ccce14f2aa9d87cb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2890ea0a826af630a81902263dbc804f67830aa2459aeec8602d7f46003e09c0`

```dockerfile
```

-	Layers:
	-	`sha256:43d4601767db30d191b9a64ad71748725e60be4000c88043d3981efc21e2d90f`  
		Last Modified: Thu, 05 Nov 2026 07:17:02 GMT  
		Size: 2.6 MB (2573030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51896226d2eff8d3d1f79522b83fcfb8990f7a844f432f350fcc13a2845720f6`  
		Last Modified: Thu, 05 Nov 2026 07:17:02 GMT  
		Size: 16.6 KB (16555 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:b2bf831ef95c1a67aa21f6a8a0523d3bc638f16cc02d39525395f073aad1db3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.0 MB (358981745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b2aa577072d03e93f9159af791a3c623b6bbf8d480f4004cdd05457bbc097bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:15:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:15:30 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 05 Nov 2026 07:15:30 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:15:30 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Thu, 05 Nov 2026 07:15:30 GMT
ENV JULIA_VERSION=1.13.3
# Thu, 05 Nov 2026 07:15:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.3-linux-x86_64.tar.gz'; 			sha256='5c61cb4b40332cb5a3504e7779e2f5dac093caa4a1116ded19f01413f85c63e4'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.3-linux-i686.tar.gz'; 			sha256='df41358eddc884b022af86102de706e0ca11ea69792241570688943645cdb1bc'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.3-linux-aarch64.tar.gz'; 			sha256='9ceb053bee6dfb8189bd40afd6925de3a9b7ff8fac8d01a5fcdd84af171ddf03'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Thu, 05 Nov 2026 07:15:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:15:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:15:30 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab10d024ae2875692c11d7a8c2243e2af94d72f9f46ac45669c7b9f6c3b1212`  
		Last Modified: Thu, 05 Nov 2026 07:16:18 GMT  
		Size: 5.4 MB (5387908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:541d618a4635d546079415e4c41d7fb750cf12d0a9124a9aef11d805b489d315`  
		Last Modified: Thu, 05 Nov 2026 07:16:24 GMT  
		Size: 325.4 MB (325449105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c4c9c6225d97fb241b780cfb4fbe7a4312bf0d71f539286622d3ef24ca62bb`  
		Last Modified: Thu, 05 Nov 2026 07:16:18 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:cd37853ca7f94c7c66614d172093a7ab1df01176623d05883a99a18fd5fe9469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c025329ec08d682e0b5d6ff2edd781028093a1df089961516a7eb46e17f4b5f0`

```dockerfile
```

-	Layers:
	-	`sha256:55d1ad37149f27bb341db675abd04d82da3c9dbb7a24aa6fbc25307b4966aecd`  
		Last Modified: Thu, 05 Nov 2026 07:16:18 GMT  
		Size: 2.6 MB (2573305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37959991265717183bad39561dc537bc16a8c06d741d9e424364d75acef7cba8`  
		Last Modified: Thu, 05 Nov 2026 07:16:18 GMT  
		Size: 16.7 KB (16674 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-bookworm` - linux; 386

```console
$ docker pull julia@sha256:12fabbc13d158c3b1a48cb48eba91b7d674ee61a5d38d4a3a6db63cbf9609a54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278228128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5969cd179a7f4bce9bf9c8e934e84c4d04471af2f729baa3f42c6d962da4118`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:14:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:14:23 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 05 Nov 2026 07:14:23 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:14:23 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Thu, 05 Nov 2026 07:14:23 GMT
ENV JULIA_VERSION=1.13.3
# Thu, 05 Nov 2026 07:14:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.3-linux-x86_64.tar.gz'; 			sha256='5c61cb4b40332cb5a3504e7779e2f5dac093caa4a1116ded19f01413f85c63e4'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.3-linux-i686.tar.gz'; 			sha256='df41358eddc884b022af86102de706e0ca11ea69792241570688943645cdb1bc'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.3-linux-aarch64.tar.gz'; 			sha256='9ceb053bee6dfb8189bd40afd6925de3a9b7ff8fac8d01a5fcdd84af171ddf03'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Thu, 05 Nov 2026 07:14:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:14:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:14:23 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b391611934807ea65adfe96de646b1c9f08060b0a9ca171eba1fb500ab2b873`  
		Last Modified: Thu, 05 Nov 2026 07:14:55 GMT  
		Size: 5.7 MB (5701098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57a9bf3a876602b52d06ab5cfef2575ce3c5ea16ecf1a5a2ecc615a113b903df`  
		Last Modified: Thu, 05 Nov 2026 07:15:00 GMT  
		Size: 243.3 MB (243287444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac73caede6c36f659d149271c3f390eaec919d1c3134c9dd223ea551b731362b`  
		Last Modified: Thu, 05 Nov 2026 07:14:55 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:ca1cfe3e67889c8bb9e760f288adb684b43e391f5fab326de2d3d2326f5968bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2586697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddeda20f44c485205779b4ae6190a6adb50bc539ba32fd030e8c40e33545c07`

```dockerfile
```

-	Layers:
	-	`sha256:05f07be3b1a4cad559a0fc9223eccfe1650a7618072f06198b87517d881a16a6`  
		Last Modified: Thu, 05 Nov 2026 07:14:55 GMT  
		Size: 2.6 MB (2570177 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:413d71dcc9f5fc4a345ba2770f1c9516c42427c5e1a719caa427be31d7527124`  
		Last Modified: Thu, 05 Nov 2026 07:14:55 GMT  
		Size: 16.5 KB (16520 bytes)  
		MIME: application/vnd.in-toto+json
