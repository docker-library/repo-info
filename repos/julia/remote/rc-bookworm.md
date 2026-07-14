## `julia:rc-bookworm`

```console
$ docker pull julia@sha256:66d73b97eba694668360612290c18b005acf9501179294e1293e653e06b1c5a1
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
$ docker pull julia@sha256:cd4c64b62cff49a458df4cbb373e5eec3a5f344237bd50e37981a1742d6c8a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.3 MB (343326036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4518dd9430e7472e50b09c4c0147d3296aa3547dd3c303119137feac33095970`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:21:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:22:34 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 14 Jul 2026 01:22:34 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:22:34 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 14 Jul 2026 01:22:34 GMT
ENV JULIA_VERSION=1.13.0-rc1
# Tue, 14 Jul 2026 01:22:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.0-rc1-linux-x86_64.tar.gz'; 			sha256='94c501d83aa46fad188894a31db093c6d065bbab94346645c775876066ec1b78'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.0-rc1-linux-i686.tar.gz'; 			sha256='1e758cfe0ba45a9b5313ff732ff5aa0d4f1927129e1b207e5e6c51e35ed9abb4'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.0-rc1-linux-aarch64.tar.gz'; 			sha256='0e08d6410e76a51b6825aed34c9e20fd5778b35cc4b406dd8eb8bd402d8df705'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 14 Jul 2026 01:22:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:22:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:22:34 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd8c36ef3f8a22ade4c85f73b1b150f24f6153a337e1bcc36253d465b0690a3`  
		Last Modified: Tue, 14 Jul 2026 01:21:52 GMT  
		Size: 5.7 MB (5721661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:906c866d436f1936abadc01c162d352b079f403db7f56ef27e67235badcaad6f`  
		Last Modified: Tue, 14 Jul 2026 01:23:26 GMT  
		Size: 309.4 MB (309371361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31b1a4c06c2158316ce26c39696ff78d8093c601a0e7b2014ad17d437e7b1e7`  
		Last Modified: Tue, 14 Jul 2026 01:23:20 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:1decd79a744d035a852ec9dfd4983f9ef7a8a371cbde6fe89cce44ac33d306e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2584987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:975e554ebefb68b5770e2099af430db2b5f9655136075cf1fcbbc68c41404e1e`

```dockerfile
```

-	Layers:
	-	`sha256:4a85a8002facb6a48e73bd5278633e9a9e7369de00c6d1268d87130cfb251276`  
		Last Modified: Tue, 14 Jul 2026 01:23:20 GMT  
		Size: 2.6 MB (2568692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cea1f7672bb4825c14615358ab56c63aad67e8744028e933a7c9dff561e85b5`  
		Last Modified: Tue, 14 Jul 2026 01:23:20 GMT  
		Size: 16.3 KB (16295 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:rc-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:c23bd972e8515c26402787c8623dc691881f8668308f4ba9a1b556ac86a166c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.5 MB (367451317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13bca05524c2414aadcfffc9a25ca4f2a4e5f0f9519482f08e7b386403a0998`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:22:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:22:41 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 14 Jul 2026 01:22:41 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:22:41 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 14 Jul 2026 01:22:41 GMT
ENV JULIA_VERSION=1.13.0-rc1
# Tue, 14 Jul 2026 01:22:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.0-rc1-linux-x86_64.tar.gz'; 			sha256='94c501d83aa46fad188894a31db093c6d065bbab94346645c775876066ec1b78'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.0-rc1-linux-i686.tar.gz'; 			sha256='1e758cfe0ba45a9b5313ff732ff5aa0d4f1927129e1b207e5e6c51e35ed9abb4'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.0-rc1-linux-aarch64.tar.gz'; 			sha256='0e08d6410e76a51b6825aed34c9e20fd5778b35cc4b406dd8eb8bd402d8df705'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 14 Jul 2026 01:22:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:22:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:22:41 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d780b2760a195402eecddd692194fbeda2e113a8dde0ffba5d62984292759c`  
		Last Modified: Tue, 14 Jul 2026 01:23:28 GMT  
		Size: 5.6 MB (5570752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d6637e55e9c440aebeab9edfb080271e293a7dcdd1c5563e933ab58f630741`  
		Last Modified: Tue, 14 Jul 2026 01:23:35 GMT  
		Size: 333.8 MB (333762938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15047cb1d02cd9178395a51b23c933de5c0b2cc998ab270ec4b14a8e5c4c3f1b`  
		Last Modified: Tue, 14 Jul 2026 01:23:28 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:fd7059648312c4c39e85361bb5c7ea5459f07bd79f592b9daca6b173c226626d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2585357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd21cdf785f7fd509834de5449342c33732b21049180eb0f895bf8a8fc14b6cb`

```dockerfile
```

-	Layers:
	-	`sha256:b16c8428a88ff8d6407e76543ee15c42358970807b0c97b754370b59f96e7f19`  
		Last Modified: Tue, 14 Jul 2026 01:23:29 GMT  
		Size: 2.6 MB (2568955 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf55681bfe50a520127483d8e5bc72b2cc260f24a81bacdb1e30230a7539c537`  
		Last Modified: Tue, 14 Jul 2026 01:23:28 GMT  
		Size: 16.4 KB (16402 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:rc-bookworm` - linux; 386

```console
$ docker pull julia@sha256:4bd1ceb2638c4fb74c0a5cbefea1818a323fecc7e978f56db28ab74fecd5c48c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.4 MB (278399483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6229e49d0b1560943bb99267eeebdd4a0064327626f002759176b1b4775c86a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:18:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:18:48 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 14 Jul 2026 01:18:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:18:48 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 14 Jul 2026 01:18:48 GMT
ENV JULIA_VERSION=1.13.0-rc1
# Tue, 14 Jul 2026 01:18:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.0-rc1-linux-x86_64.tar.gz'; 			sha256='94c501d83aa46fad188894a31db093c6d065bbab94346645c775876066ec1b78'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.0-rc1-linux-i686.tar.gz'; 			sha256='1e758cfe0ba45a9b5313ff732ff5aa0d4f1927129e1b207e5e6c51e35ed9abb4'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.0-rc1-linux-aarch64.tar.gz'; 			sha256='0e08d6410e76a51b6825aed34c9e20fd5778b35cc4b406dd8eb8bd402d8df705'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 14 Jul 2026 01:18:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:18:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:18:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01186fa60d2314376333009eaa70e8c91bf9e72018c0aff155e72e8699147439`  
		Last Modified: Tue, 14 Jul 2026 01:19:23 GMT  
		Size: 5.9 MB (5880332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3727e2325f1da317672b40a84cf6f4adfc0f13ef972878aa8c75d631c9f92ad`  
		Last Modified: Tue, 14 Jul 2026 01:19:28 GMT  
		Size: 243.3 MB (243297730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5218dbdf0776de6c43a776897dfacedf42a0c46b2a0655f63f7dc1c2fca37264`  
		Last Modified: Tue, 14 Jul 2026 01:19:22 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:595af7a2c45524fbd41f7ddab7be2d06d4c56f5a09cc00a946d2f45cb1db58dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2582110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d570c37c30a5181d22badcdfc5ce746bddd021573fdcf7a0c1571f8408f371a`

```dockerfile
```

-	Layers:
	-	`sha256:224d1d77f639b1b5280314047ad3e1a9fe6eacd58fd0c25577f88b6e5f243f75`  
		Last Modified: Tue, 14 Jul 2026 01:19:23 GMT  
		Size: 2.6 MB (2565844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17ec92e884bcabf7fcb84469627c4af905bb459a0e66965cedb2bf7bbd39578c`  
		Last Modified: Tue, 14 Jul 2026 01:19:23 GMT  
		Size: 16.3 KB (16266 bytes)  
		MIME: application/vnd.in-toto+json
