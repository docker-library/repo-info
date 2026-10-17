## `clojure:temurin-26-trixie`

```console
$ docker pull clojure@sha256:b2c59da56255f329b74d7bbff1ad0a0903f92f99e2aabd368d68eb2db875d45f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:4f67cffdc7083de17c79e0bcbc9c08e7876d147ae0e760ae3cc8277609edf95f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.5 MB (226534303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e657e5cd261faf769253d0c8a2be2521b869476ee5afe7d08403aff9181833b1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:54:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:54:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:54:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:54:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:54:27 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:54:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:54:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:54:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:54:44 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:54:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15491e6245b2c27deaddc444d3aae0a0bcc244e8f9dd54b9eaf1af1091fd7268`  
		Last Modified: Sat, 17 Oct 2026 01:55:07 GMT  
		Size: 94.6 MB (94563496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a8b0b1d2fa479ec87f8b46de77187c110d2a6a89aa7e9002cc450e0bf78b519`  
		Last Modified: Sat, 17 Oct 2026 01:55:07 GMT  
		Size: 82.6 MB (82576569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa8647ad03533fd0b282b7d5fccca5743c86d1926e07f79dd5494276f0efab7d`  
		Last Modified: Sat, 17 Oct 2026 01:55:03 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d272727ff2a766cdd27573ae61605c6e16095baf5bb32c946a78a46948ae2bdb`  
		Last Modified: Sat, 17 Oct 2026 01:55:03 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5df75ba0a911c39fba663e4407c982c8b6d35355be8ad1565558ad65f154b1ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7459614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59852e34b578de3c2f79ed73163ad76adf497253e4aa8ef628cfb0155f538e21`

```dockerfile
```

-	Layers:
	-	`sha256:1b62e8aaf3854d8451b1ebd9d1ef41e73dcb503c94fb338379673fb19922f5b0`  
		Last Modified: Sat, 17 Oct 2026 01:55:04 GMT  
		Size: 7.4 MB (7443713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c44cadfb316bc7de83c95e3a4d0ea27e69507b21cb14b5f5af0465503d60605`  
		Last Modified: Sat, 17 Oct 2026 01:55:03 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:54b05c37f2a668238e4980ce65099ce3c0bbcaaa3d5bc00dfd676dc6fef216fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225701783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2deff78c8c56e4445e0d6c18512f1bd69c04bdd2a0cdab150e8b1261082d976`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:54:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:54:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:54:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:54:48 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:54:48 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:55:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:55:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:55:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:55:06 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:55:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5ce511aa26b2f57a706a9ea64f9aa58459af1446aaf45669a67a3af722e1b6`  
		Last Modified: Sat, 17 Oct 2026 01:55:29 GMT  
		Size: 93.5 MB (93543599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e22030dc4a9a6a0a0d4f1e996df96c0e84a872641802f92a9b615ee91f1b69`  
		Last Modified: Sat, 17 Oct 2026 01:55:29 GMT  
		Size: 82.4 MB (82396038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9eee71f244e5e03b72e6a2f671331d1ad4a03678bc30048d3ee4dfcce71a6e6`  
		Last Modified: Sat, 17 Oct 2026 01:55:26 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c97172d57f7bdb0c4432a0cf5c2e1dce87951a3c57e631d54c1e628cfbadf0a`  
		Last Modified: Sat, 17 Oct 2026 01:55:26 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:be3af89aa2617e59169cfb4fc13795f206c8dc96f100be4c7f22577278662c25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7466122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9430bcdad288772f82713fe89b7033b2920190ba48e7d2d8655623b7be9b240f`

```dockerfile
```

-	Layers:
	-	`sha256:6fb197f210cb62aa10c3fb4734d2960f407486da813c16dc2a8b1731f680818e`  
		Last Modified: Sat, 17 Oct 2026 01:55:26 GMT  
		Size: 7.5 MB (7450103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:362c569855fa32101fc7e7a52e5862aeafd84c8fc796aae45ccc3011b38aa6c8`  
		Last Modified: Sat, 17 Oct 2026 01:55:26 GMT  
		Size: 16.0 KB (16019 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:0007435856c1e5d090cde63108a52978bababb517ffff7f5e7c86ff6205a3ced
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.6 MB (234554906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c85597a6ff09bd8eeff92bbbb92587006e0b2606413d54ea268a390588d931ce`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 06:42:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:42:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:42:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:42:29 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 06:42:35 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:51:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 06:51:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 06:51:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:51:32 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:51:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04696de545b2dc53298ae28aff2219699a6ef178c15f62b07a2f03692dc7bc1b`  
		Last Modified: Sat, 17 Oct 2026 06:46:49 GMT  
		Size: 93.4 MB (93350858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123b8d05984913b6975870027fa43051ab5651b6fa7eb54272b46974366597d6`  
		Last Modified: Sat, 17 Oct 2026 06:52:14 GMT  
		Size: 88.0 MB (87995882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:823608c8e48a8e9b0723f3421685d2288dda74b0993be4a50ea07bf3b6a863d8`  
		Last Modified: Sat, 17 Oct 2026 06:52:12 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:584e6ae4209996813ce4a326878622467e97b7b82f56af42c5aedd69baa35e86`  
		Last Modified: Sat, 17 Oct 2026 06:52:12 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a6d4f2a4f2ce2c568bebbaf2362de36636d6ae4659521d41d2415b40b2b97828
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7448017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f628247e717bb956f3f52bff7a8b1523048a99e5e12f4c66e6d9565c208b8dc`

```dockerfile
```

-	Layers:
	-	`sha256:8dcb5ac8ca2a919ddd5067d81ac0e210cba048ce80bc8fd860c450eb0988af9f`  
		Last Modified: Sat, 17 Oct 2026 06:52:12 GMT  
		Size: 7.4 MB (7432068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67099b049973fd052e160a7f17720882694807d7152a3e01dbc9a6cea3765ddf`  
		Last Modified: Sat, 17 Oct 2026 06:52:12 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json
