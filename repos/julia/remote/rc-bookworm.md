## `julia:rc-bookworm`

```console
$ docker pull julia@sha256:19ad7f5b32ca2d5b8ad543c85367472ee196bfa95fdfac7023d05d607a29bc6b
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
$ docker pull julia@sha256:d35a7ec8a76106f3c9be1f4b9a27baf515f33287379eadaa9e93e68a3a57ecdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.4 MB (262434695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51122ac28f3135e71b7aabc5e938da21cdc735c905f9a2f25fd8c19dea208c6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:17:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:17:41 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 05 Nov 2026 07:17:41 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:17:41 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Thu, 05 Nov 2026 07:17:41 GMT
ENV JULIA_VERSION=1.14.0-alpha2
# Thu, 05 Nov 2026 07:17:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.14/julia-1.14.0-alpha2-linux-x86_64.tar.gz'; 			sha256='ca26d7fd064aea4f0d28561e08159957895a56b7e3bb670cc23701c28dce2a61'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.14/julia-1.14.0-alpha2-linux-i686.tar.gz'; 			sha256='cc7100928f197e539cc4115dfdbd04c28441ef5dd78e2bef81fa677378ba408c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.14/julia-1.14.0-alpha2-linux-aarch64.tar.gz'; 			sha256='9b30e32e56361b7a4ae507449ace6c996d45eed7500528944564e1770848fe28'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Thu, 05 Nov 2026 07:17:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:17:41 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e5b4536b66d2b0e8ff4678d3a3b2fa0377af757532928791bbaedbcf9ce2435`  
		Last Modified: Thu, 05 Nov 2026 07:18:11 GMT  
		Size: 5.5 MB (5543400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28ee0be7a4ea8c244612f7aa94d8a947ba741250f1187de46d48f01c7b46915e`  
		Last Modified: Thu, 05 Nov 2026 07:18:16 GMT  
		Size: 228.6 MB (228642939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a5858d6a70e3588122fdb885c98942e00c46ce8461d11975f261fd880368a9`  
		Last Modified: Thu, 05 Nov 2026 07:18:11 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:9b3a5507fe11a2c7b99d6644e21c54a247caf1012e12509863ebf991e33134df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be75e13946e3b97a09562ebc13162b067f552d29a911d62780dff8873adc5ce9`

```dockerfile
```

-	Layers:
	-	`sha256:09a6d7131e59a8f6d9f6781594bab3ef1f2071ca17eae11bd58cf189f693467a`  
		Last Modified: Thu, 05 Nov 2026 07:18:11 GMT  
		Size: 2.6 MB (2572752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6948338bb6315f17037f29f88326187c0f7e00ed0ed603932e3cd75f347ccdac`  
		Last Modified: Thu, 05 Nov 2026 07:18:11 GMT  
		Size: 16.3 KB (16341 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:rc-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:a28cabd4ec68b432187e553710eb7766ed0e6e3b598ccffcb11fbd898b3f1638
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.2 MB (275197826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a76c2efe9876bb83160c9b63a4fad598da72790c165e71f2075e36a143a10e49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:15:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:16:48 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 05 Nov 2026 07:16:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:16:48 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Thu, 05 Nov 2026 07:16:48 GMT
ENV JULIA_VERSION=1.14.0-alpha2
# Thu, 05 Nov 2026 07:16:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.14/julia-1.14.0-alpha2-linux-x86_64.tar.gz'; 			sha256='ca26d7fd064aea4f0d28561e08159957895a56b7e3bb670cc23701c28dce2a61'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.14/julia-1.14.0-alpha2-linux-i686.tar.gz'; 			sha256='cc7100928f197e539cc4115dfdbd04c28441ef5dd78e2bef81fa677378ba408c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.14/julia-1.14.0-alpha2-linux-aarch64.tar.gz'; 			sha256='9b30e32e56361b7a4ae507449ace6c996d45eed7500528944564e1770848fe28'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Thu, 05 Nov 2026 07:16:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:16:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:16:48 GMT
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
	-	`sha256:d782533ac8940b80cc7f68c6dd29f40e1569077194f849597ed8e179802925dc`  
		Last Modified: Thu, 05 Nov 2026 07:17:25 GMT  
		Size: 241.7 MB (241665187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a59484df635aece1e55c52596384ec2e936dd8168611bb186012dde565d7bf`  
		Last Modified: Thu, 05 Nov 2026 07:17:19 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:3196613703c081bc61bf5e875ee65e5e78b26a40d04dd48a58ea7cad01cf3cb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5535418978c99a11103620fbbd304c25c7c07c4dbdeb26b36a1271f11e928901`

```dockerfile
```

-	Layers:
	-	`sha256:2e00051f806d47cf28a2707d0e87d9f28d60e27c0316cb88856edc7ee50edd35`  
		Last Modified: Thu, 05 Nov 2026 07:17:19 GMT  
		Size: 2.6 MB (2573015 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52b4905204979feba7271e527616f10f29c35063e091120931a845b300b29af0`  
		Last Modified: Thu, 05 Nov 2026 07:17:19 GMT  
		Size: 16.4 KB (16447 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:rc-bookworm` - linux; 386

```console
$ docker pull julia@sha256:e93e659bd77be1e26056301d8052ff98ca58d7c81dab2c560b81d34ec96ddb44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226100672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16e8403c0b6089486cab59944df8a724092d8c61d2ac2bd0d8491eca99f4e133`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:14:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:14:58 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 05 Nov 2026 07:14:58 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:14:58 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Thu, 05 Nov 2026 07:14:58 GMT
ENV JULIA_VERSION=1.14.0-alpha2
# Thu, 05 Nov 2026 07:14:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.14/julia-1.14.0-alpha2-linux-x86_64.tar.gz'; 			sha256='ca26d7fd064aea4f0d28561e08159957895a56b7e3bb670cc23701c28dce2a61'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.14/julia-1.14.0-alpha2-linux-i686.tar.gz'; 			sha256='cc7100928f197e539cc4115dfdbd04c28441ef5dd78e2bef81fa677378ba408c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.14/julia-1.14.0-alpha2-linux-aarch64.tar.gz'; 			sha256='9b30e32e56361b7a4ae507449ace6c996d45eed7500528944564e1770848fe28'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Thu, 05 Nov 2026 07:14:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:14:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:14:58 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74e8e66deab0c2fb61238b5c8190cdfdeb9269af7fe62356281709d6081ab56`  
		Last Modified: Thu, 05 Nov 2026 07:15:23 GMT  
		Size: 5.7 MB (5701044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10961021601e372598276c8b0d801fd6d6d895c15f4bfbba48841985f5e5ba3b`  
		Last Modified: Thu, 05 Nov 2026 07:15:27 GMT  
		Size: 191.2 MB (191160044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edcb0947c81999123bdc257ece102cae22c395fb11c90f1cfba9015e1e86c5ee`  
		Last Modified: Thu, 05 Nov 2026 07:15:22 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:682cdab3f8f094997b3a4d086c792a0ffd647b50e59ce5384786af142b8b4348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2586216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c59888da2976ad8a2984d7f3f2953911d9fe7975b4c10507664da5ce5cc1f79`

```dockerfile
```

-	Layers:
	-	`sha256:757ee7e771bb5272f4136e1d98271ce5d10cb3787b773a24756dedf13938cf48`  
		Last Modified: Thu, 05 Nov 2026 07:15:23 GMT  
		Size: 2.6 MB (2569904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b8ab4124e844efe49073b7404a5cb925cba7b2bda4a52040ecdc4d5a9418d22`  
		Last Modified: Thu, 05 Nov 2026 07:15:22 GMT  
		Size: 16.3 KB (16312 bytes)  
		MIME: application/vnd.in-toto+json
