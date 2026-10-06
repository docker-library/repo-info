## `julia:1-bookworm`

```console
$ docker pull julia@sha256:41561e8f2c891960279ead9fe61111fd12fb4e12ab6a9fc5a9efce7ae23642d4
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
$ docker pull julia@sha256:229eb93c838d469012ab7ebe47c4d4ba50aa3e28094d12bbe820a47b482c1085
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.1 MB (340066472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e973dfa5be11b014af0217c917f3918a29f7e8b6646b0a7f0b9f339763eaec83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:18:31 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:18:31 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:18:31 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:18:31 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:18:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:18:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:18:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:18:31 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5092deb5ebe781f6acb498a76ff4e2b696460f9ac410452e2f429b47db2905c`  
		Last Modified: Tue, 06 Oct 2026 01:19:18 GMT  
		Size: 5.5 MB (5545928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c88938ba66fd23dd43aa960a332e275d1ee550c497dfb03932021e6da2878f85`  
		Last Modified: Tue, 06 Oct 2026 01:19:23 GMT  
		Size: 306.3 MB (306270853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06cd1f3ef3bafc142ad32b2e52a017ea8e7cda211416cb5e2602f62dd8509f4a`  
		Last Modified: Tue, 06 Oct 2026 01:19:17 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:9e86379dced0b9d905623f3eff2907c67dd64046e5fbd6e507af7efb674840e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2590798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6241bb5fee781354eca42ba94a3563d8b16f57403df273a00ee973c39f05899`

```dockerfile
```

-	Layers:
	-	`sha256:c4251fdd1cf40f4e67926b3e16aefb3c39bfa0f5ae0c01d7923f29788cfee093`  
		Last Modified: Tue, 06 Oct 2026 01:19:17 GMT  
		Size: 2.6 MB (2574243 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:682700d413613bed1f20cc13d5f0b0b06a0920ba7c0852f5abd4ed90fa6cf977`  
		Last Modified: Tue, 06 Oct 2026 01:19:17 GMT  
		Size: 16.6 KB (16555 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:8bfe7168498592dc033cd39d2ce77a46d5e77da221e0bee5a89486f9497d0321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.9 MB (358850170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d990544df6c9b8942b121d3f879817ee007337c447bc7ca5d202dc4de78d9f81`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:19:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:49 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:19:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93794a8c3f2257149aef21a9fab14395fc45359f7aeffa926ba0e724cb973ccb`  
		Last Modified: Tue, 06 Oct 2026 01:20:35 GMT  
		Size: 5.4 MB (5388847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c6fe7a488267e1eb4b0f189e3dae52835a12da01d7dcb7812cd203cea0c6f97`  
		Last Modified: Tue, 06 Oct 2026 01:20:41 GMT  
		Size: 325.3 MB (325323773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cfcab2a0578e03147983b174175eea51fcb364eabc7d9b275508eaabfe6df86`  
		Last Modified: Tue, 06 Oct 2026 01:20:35 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:eedcab6b716b6bbda73deb3cc3d63105b66ba7a129be1482f270f78f716d7736
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7839340891fece89a47e01718670378180a9c8028e2bb9979012f744599da9`

```dockerfile
```

-	Layers:
	-	`sha256:117eb48e2f23f0ad653f38e5094ee8e60b2d4f3aed9e2360c533cd6c8abb0a6c`  
		Last Modified: Tue, 06 Oct 2026 01:20:35 GMT  
		Size: 2.6 MB (2574518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5839397e975e020267de660c7c71997ea0c81746b190a2112558f186fcb1877a`  
		Last Modified: Tue, 06 Oct 2026 01:20:35 GMT  
		Size: 16.7 KB (16673 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-bookworm` - linux; 386

```console
$ docker pull julia@sha256:0d6af774fd2320543b1834c9c82b45f85b206f7476e7cd86aefb0906eb76d577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.6 MB (277609913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04fe7592b8fbb3d2798af54fc40cf099d054857469832a20b1e36a824f8c1353`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:16:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:16:37 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:16:37 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:16:37 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:16:37 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:16:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:16:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:16:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:16:37 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5132abd7e7add61338fc85cb39420d48cc35fd7c48b61d4aaaa2d3d9c4166b83`  
		Last Modified: Tue, 06 Oct 2026 01:17:10 GMT  
		Size: 5.7 MB (5704979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9d3d060a2d246c7decc539d9c53b77ad77118ea380c5fb5d56b4367afc94011`  
		Last Modified: Tue, 06 Oct 2026 01:17:14 GMT  
		Size: 242.7 MB (242665190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff29e6ba89e064e72102cd31aea6cec4b6c68acddfaae8679fb1375e42a1c98b`  
		Last Modified: Tue, 06 Oct 2026 01:17:10 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:6fd046794d071fde1c98d1295ede934fcb4ccee058bef9f16fd48a5275a07ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bac4e743521929462e7982ecc1713bf776db08d40162be9f8a25cc61a1866ee`

```dockerfile
```

-	Layers:
	-	`sha256:4986035b0746226b9d0b91d0407127df75dd6418212cbf603892cd9894613170`  
		Last Modified: Tue, 06 Oct 2026 01:17:10 GMT  
		Size: 2.6 MB (2571390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:867b6b80da4a59537e9a79e2a81f4814ddf4cdfd47648771619d1704bf6bd96f`  
		Last Modified: Tue, 06 Oct 2026 01:17:10 GMT  
		Size: 16.5 KB (16521 bytes)  
		MIME: application/vnd.in-toto+json
