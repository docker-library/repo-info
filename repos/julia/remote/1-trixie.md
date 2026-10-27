## `julia:1-trixie`

```console
$ docker pull julia@sha256:12f7ca5874ed10b895b39931bf629c52c64f7c781a9cabb6e212ef2e36a5f74a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:1-trixie` - linux; amd64

```console
$ docker pull julia@sha256:a3b8e41579d2898138ad5686870e0d35e5d3d245aa9c15e20c2455b7441a0568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.9 MB (342914517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e562ada315d78528d2a6086672233f65d0a6a135bcf245daf866889f8a290e4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 16:37:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:38:16 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 27 Oct 2026 16:38:16 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 16:38:16 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 27 Oct 2026 16:38:16 GMT
ENV JULIA_VERSION=1.13.3
# Tue, 27 Oct 2026 16:38:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.3-linux-x86_64.tar.gz'; 			sha256='5c61cb4b40332cb5a3504e7779e2f5dac093caa4a1116ded19f01413f85c63e4'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.3-linux-i686.tar.gz'; 			sha256='df41358eddc884b022af86102de706e0ca11ea69792241570688943645cdb1bc'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.3-linux-aarch64.tar.gz'; 			sha256='9ceb053bee6dfb8189bd40afd6925de3a9b7ff8fac8d01a5fcdd84af171ddf03'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 27 Oct 2026 16:38:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 16:38:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:38:16 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c591d343d33a0bf6a645292b2edfb22326d7b1be98bf170357388567044a2ad`  
		Last Modified: Tue, 27 Oct 2026 16:38:58 GMT  
		Size: 6.2 MB (6247485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89cb16eb433751a2a4815cc7c62bc6974372200d8f40e0ae4b412d1488185e32`  
		Last Modified: Tue, 27 Oct 2026 16:39:03 GMT  
		Size: 306.8 MB (306823080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c360c52d1c631352b429fcabdb6b98339dfd3705894361f572d1da8806c2448`  
		Last Modified: Tue, 27 Oct 2026 16:38:57 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:d4224067635dc76186ce3e2820b8675aae1caf32faffce8d810bd6bc107f6ff3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4f2e3c2d1d633b9e29355c6aad26a5004d6ed5a1b84305cd7bbee526a0bc4dd`

```dockerfile
```

-	Layers:
	-	`sha256:eed441276604d50047db07740807f46bcc8c87e70b47126f537159171dfff87c`  
		Last Modified: Tue, 27 Oct 2026 16:38:57 GMT  
		Size: 2.2 MB (2246384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95f8c4ee254b9058a1d00d2aca30af97d1b2a53334e9961d50976170f1c7f031`  
		Last Modified: Tue, 27 Oct 2026 16:38:57 GMT  
		Size: 17.7 KB (17700 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:94c777fc25c85066b39ebdc4672ef37d2733339a6674b386ca8a5a7a82975d9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.8 MB (361843167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f9fd3b26c6c9c6843b05460a2c9acdc89c38362a5c741f35334793e1d4ad46e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 16:39:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:39:52 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 27 Oct 2026 16:39:52 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 16:39:52 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 27 Oct 2026 16:39:52 GMT
ENV JULIA_VERSION=1.13.3
# Tue, 27 Oct 2026 16:39:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.3-linux-x86_64.tar.gz'; 			sha256='5c61cb4b40332cb5a3504e7779e2f5dac093caa4a1116ded19f01413f85c63e4'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.3-linux-i686.tar.gz'; 			sha256='df41358eddc884b022af86102de706e0ca11ea69792241570688943645cdb1bc'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.3-linux-aarch64.tar.gz'; 			sha256='9ceb053bee6dfb8189bd40afd6925de3a9b7ff8fac8d01a5fcdd84af171ddf03'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 27 Oct 2026 16:39:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 16:39:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:39:52 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06af06f9329e3e339733e3e68634c3f4e3b1975538027c0ed2f7c474afa8a625`  
		Last Modified: Tue, 27 Oct 2026 16:40:38 GMT  
		Size: 6.2 MB (6153896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7e2d2e120b0877e916d69a40fe47ad4c90e01d0e0f409f03a435b8faae8083d`  
		Last Modified: Tue, 27 Oct 2026 16:40:44 GMT  
		Size: 325.5 MB (325488419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:299707b48dc72a1845a7a2c111422af28acf0ac127f3b7ff2b620eccce1a9b1c`  
		Last Modified: Tue, 27 Oct 2026 16:40:38 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:5f762d219621d6aa846442266e8356ac3c1439621666744a589a46a7565d27b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fceedea37b6cc3d455bb29692b365f677e9ced949ba5832a22f362e1868a41fe`

```dockerfile
```

-	Layers:
	-	`sha256:ac2a2170c445066ab20697f7f9ba7171ae554a2e84402c0406e96b5078a952b6`  
		Last Modified: Tue, 27 Oct 2026 16:40:38 GMT  
		Size: 2.2 MB (2246708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e052bd50f038e6c61ef2f813812a6f2b24a1e34e09b4e526a1ac544595d8ccc`  
		Last Modified: Tue, 27 Oct 2026 16:40:38 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-trixie` - linux; 386

```console
$ docker pull julia@sha256:9c3af6d5142608ba45e5d476af154f5b311f317bf658a692f6a284cb9f7be916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281112906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91eae418239934f85b4cd0d00e41233485c6126fb11c7cc6575df32ed454d466`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 16:38:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:39:09 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 27 Oct 2026 16:39:09 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 16:39:09 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 27 Oct 2026 16:39:09 GMT
ENV JULIA_VERSION=1.13.3
# Tue, 27 Oct 2026 16:39:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.3-linux-x86_64.tar.gz'; 			sha256='5c61cb4b40332cb5a3504e7779e2f5dac093caa4a1116ded19f01413f85c63e4'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.3-linux-i686.tar.gz'; 			sha256='df41358eddc884b022af86102de706e0ca11ea69792241570688943645cdb1bc'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.3-linux-aarch64.tar.gz'; 			sha256='9ceb053bee6dfb8189bd40afd6925de3a9b7ff8fac8d01a5fcdd84af171ddf03'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 27 Oct 2026 16:39:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 16:39:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:39:09 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0abf99e2f76dfd7458104d3f1bcd8a9e35825fc86f53fd4028add69691516c4`  
		Last Modified: Tue, 27 Oct 2026 16:39:44 GMT  
		Size: 6.4 MB (6432493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84c8c87586bd83345b00574ff0c0fd8c46058b262ad60e2943d85ca7ff744795`  
		Last Modified: Tue, 27 Oct 2026 16:39:51 GMT  
		Size: 243.3 MB (243326505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e62fb9908b1f372deea08e6fa11da52f0f7782369d09ca69ef70d6219df4b33`  
		Last Modified: Tue, 27 Oct 2026 16:39:43 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:0758bbd2d7ea4c4f6d8880f373b634d7244d07f52cac58606e6a5f82a0411750
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2261156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76a0bf88580a7b6bcf0a29390e82470336b745a6c218920b3557b19f11bcb27e`

```dockerfile
```

-	Layers:
	-	`sha256:34295217a8bae3163ffc073c5e27ced7a3e10e62164daba6116762399d11c1f8`  
		Last Modified: Tue, 27 Oct 2026 16:39:43 GMT  
		Size: 2.2 MB (2243509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f66a1bb930b32b1694b92226b02cfd35fa0d5fb7290c4f2d0aa44c31956b0fd3`  
		Last Modified: Tue, 27 Oct 2026 16:39:43 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json
