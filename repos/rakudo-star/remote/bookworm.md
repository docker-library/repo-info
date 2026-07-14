## `rakudo-star:bookworm`

```console
$ docker pull rakudo-star@sha256:a9b56ba7242ef2d8fb1bab23f1f2741e764b1a9d1727db53cfb23896397a6d6a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:3037f5164c390444b6a9d53f6587d8bd07b5df426b655de0ff006116a2dab406
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181912913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1fb6d3a5df2902d701dbdd32888f447359a8de9e799803075847a6e430e5f62`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:29:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:23:29 GMT
MAINTAINER Rob Hoelz
# Tue, 14 Jul 2026 03:23:29 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 14 Jul 2026 03:23:29 GMT
ARG rakudo_version=2026.06-01
# Tue, 14 Jul 2026 03:23:29 GMT
ENV rakudo_version=2026.06-01
# Tue, 14 Jul 2026 03:39:35 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 03:39:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 14 Jul 2026 03:39:35 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd2dd4f152bd44fe5b02de3e47483f6cdf32bf3d7ea1c7cc70d57b075f2eebd`  
		Last Modified: Tue, 14 Jul 2026 02:29:56 GMT  
		Size: 64.4 MB (64408455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b1ed2aae61073fd7aba9dd82511b1bb941a1575bca6d504b472edffabcf431`  
		Last Modified: Tue, 14 Jul 2026 03:39:49 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b7bff439890cce0c635e6a922248712d8b46529ee4827d994d340de6b22db8f`  
		Last Modified: Tue, 14 Jul 2026 03:39:51 GMT  
		Size: 45.0 MB (44959716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:331c1016ed06c8c7d6b34c9848ca3ffaaef62afca151c93a57dc7f1cd3bf61be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7981226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f18fb7fded3ad2c7a639a8591f27d914b9ff62b8b30eb566f9b4f77a979af184`

```dockerfile
```

-	Layers:
	-	`sha256:3670544bf86487bda357f3be583de4e700047045c7d2ab0ed37b2fa7b94eb8d6`  
		Last Modified: Tue, 14 Jul 2026 03:39:50 GMT  
		Size: 8.0 MB (7968523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3901d6a29e38b9425d2b1901669f4df010bca8a852a5fff957c2481ff5f405fe`  
		Last Modified: Tue, 14 Jul 2026 03:39:50 GMT  
		Size: 12.7 KB (12703 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:bookworm` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:87d4b3b57caa15da9b054f21b271dc796c9579dc4b8a977acb79e066ff00f868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.5 MB (179460604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f55365672c9fa50e390c0d6e659e6738f4731abbd3c498536eaae19737a4982`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:36:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:24:21 GMT
MAINTAINER Rob Hoelz
# Tue, 14 Jul 2026 03:24:21 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 14 Jul 2026 03:24:21 GMT
ARG rakudo_version=2026.06-01
# Tue, 14 Jul 2026 03:24:21 GMT
ENV rakudo_version=2026.06-01
# Tue, 14 Jul 2026 03:45:29 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 03:45:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 14 Jul 2026 03:45:29 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3bfe7e3c6a92e1bda6d3ddde9de882610239eba4323fd75d10ba1bccee7876`  
		Last Modified: Tue, 14 Jul 2026 01:46:42 GMT  
		Size: 23.6 MB (23612703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af2d47cd8540f7af1f8ba488289fa82e9a2258d051477163651baf22fc99ea6`  
		Last Modified: Tue, 14 Jul 2026 02:37:00 GMT  
		Size: 64.5 MB (64498147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f997bf4168e320133f2428061b4b9a7ecc49fdf81c334a3a82ca9aafc529c8e7`  
		Last Modified: Tue, 14 Jul 2026 03:45:45 GMT  
		Size: 3.2 KB (3238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1f1537f651dbdc391ce01b70cb927adea1560c1ef0cdb72b68880cd8e8cd8e3`  
		Last Modified: Tue, 14 Jul 2026 03:45:46 GMT  
		Size: 43.0 MB (42962827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:479c1e78708050a442b6a8098ebed86f90621f201e10c154239693a9d6684f1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7987714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edbbce4b8ee06b5720687921ff17bc2edbe5ec4d4d570b0d9443360a845378af`

```dockerfile
```

-	Layers:
	-	`sha256:acbd764ef6b4109fe4198cf98bcb140512ca4a8a5ebbb9bdfb2f70c458a0ee83`  
		Last Modified: Tue, 14 Jul 2026 03:45:45 GMT  
		Size: 8.0 MB (7974916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f978665f367f5f360acbe1f3cf8fa12ff6cf8e6bddd646537c4be2ee4ed4f87`  
		Last Modified: Tue, 14 Jul 2026 03:45:45 GMT  
		Size: 12.8 KB (12798 bytes)  
		MIME: application/vnd.in-toto+json
