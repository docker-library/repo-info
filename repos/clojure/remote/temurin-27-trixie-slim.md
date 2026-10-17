## `clojure:temurin-27-trixie-slim`

```console
$ docker pull clojure@sha256:a8889e6c8c68d1e1b1cc9fffbcdceb5983a60b257e4a06a32c371663245f3735
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:44833850820ebb9dfe32969a6505052baf8aba969d30d4c2daa9705aa7d3b88e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192456957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a080fe32c98088c7d32cb64459bb9771509ce20cc4bab8164f743b789c71c3fa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:55:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:55:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:55:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:55:47 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:55:48 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:56:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:56:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:56:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:56:04 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:56:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f694caf4ac972084790c76daf826b6ba585e89bd9cc9f9ef91118e5e3cda59`  
		Last Modified: Sat, 17 Oct 2026 01:56:26 GMT  
		Size: 93.6 MB (93622528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef3f52cd606e05ddd44dc67f16bba2fbdebb19682587a8048dd50e4ac9bd9242`  
		Last Modified: Sat, 17 Oct 2026 01:56:26 GMT  
		Size: 69.0 MB (68990036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0e188267635eeb7c380233d565a61e47398dc830dd8a2176737ce39a8c36f6`  
		Last Modified: Sat, 17 Oct 2026 01:56:23 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac1414a0d441ad69ac831c200864b55f8154afca99f88afd615b087c0b68b497`  
		Last Modified: Sat, 17 Oct 2026 01:56:23 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:95182273fe3e0dded5d21bdb6be69a2d232b45fc85f6811afb4b6f8dbb5013fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:832ea7771b79ee65507787f74fb1f6a899d3bc2c89e3649de36979d04a71bb45`

```dockerfile
```

-	Layers:
	-	`sha256:abff9286658afe600d754c0d98c4e9588ab760d0497966c0942133b6fec8fb1f`  
		Last Modified: Sat, 17 Oct 2026 01:56:23 GMT  
		Size: 5.2 MB (5226938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9802037ae5cf43611a10c539557684ba8200f4883e8dfd4253ac051e823d24fb`  
		Last Modified: Sat, 17 Oct 2026 01:56:23 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:abed3ae1ea20ecbe0dd3c009f9c5ee35dc4b1e1ca790f34a6ac16821b555563a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.6 MB (191644482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd1d8aa15618a4e9c03a827c6d08c8e60902aa5877e8c5079dfd34592149ebf7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:55:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:55:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:55:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:55:48 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:55:48 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:56:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:56:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:56:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:56:05 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:56:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f6631f6288754437d9cf9adb2403fc5811ae006f3c5e82ff1d1559ec297d11d`  
		Last Modified: Sat, 17 Oct 2026 01:56:26 GMT  
		Size: 92.6 MB (92633124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9635c9216b7a4d0145cfa549bbe099509c097a2aef00cf88f6eeac94b098136`  
		Last Modified: Sat, 17 Oct 2026 01:56:26 GMT  
		Size: 68.8 MB (68810036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c7d7edadce51f044ed0aaa08813ef3baaf9d136d596d42aeef26b669eaaa8b4`  
		Last Modified: Sat, 17 Oct 2026 01:56:23 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4bd32a0526fef8948d832c79745ca4b7c07981ca33680a4d98579c4daf90d7e`  
		Last Modified: Sat, 17 Oct 2026 01:56:23 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:08baa864168792edcffdf259580a108ab1cee518d22cbbcd79f2c4aed9d698ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41b484fdfe7ebe91c15506639e2a30e545f94e6e0b128bce815b940d01e62fb0`

```dockerfile
```

-	Layers:
	-	`sha256:704d45f1c430f1b0128838a6bfedb808c779234eca222dee2b531eccd70b945c`  
		Last Modified: Sat, 17 Oct 2026 01:56:23 GMT  
		Size: 5.2 MB (5232696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:488cbcc038e53b0ad230eba52f69e71cc8a87fa339919c7db6911395c06dad04`  
		Last Modified: Sat, 17 Oct 2026 01:56:23 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:107d6590b67bfe4e9259a1a38e6d308b74d096c73957630df40bd12c4c039eaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.3 MB (200320305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7c378f71d5463b2a2621ca60c8dd7b9d68cde8dc42b6ec4b8fd6080610a2b8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 18:26:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:26:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:26:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:26:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 12 Oct 2026 18:26:50 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:34:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 12 Oct 2026 18:34:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 12 Oct 2026 18:34:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:34:59 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:34:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdce8a835ada47fbe2d55146ce5d81230200596d54ec78f2c40d279d127e7d3b`  
		Last Modified: Mon, 12 Oct 2026 18:30:33 GMT  
		Size: 92.3 MB (92255828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dda39902efa837f1fcfd29918cc8fc9fdbf275cdfc9366c8e2527bc9fa8f0dd1`  
		Last Modified: Mon, 12 Oct 2026 18:35:51 GMT  
		Size: 74.4 MB (74411834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a69a88df1a88f3374f3b6d3c45257ace3168a63c94842da9abcf2db4c5240f`  
		Last Modified: Mon, 12 Oct 2026 18:35:49 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1068d824f5c1d54f59fabc9e82a85119c0c39e620e1d1c00480f4d115da6bcb`  
		Last Modified: Mon, 12 Oct 2026 18:35:49 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:dcff4356b15cfbf86a409ba6b1b4109ba72dd922a3bb6bb9a5619dc1f1e4f1af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7f2a7ec4b3091fa5372e34da76519373db4bc144af2d22d827803da135e10f2`

```dockerfile
```

-	Layers:
	-	`sha256:4c9faa261019b99724a0fe3a0fe5c254e1c9fda17eef32b52e64b993c61ef92d`  
		Last Modified: Mon, 12 Oct 2026 18:35:49 GMT  
		Size: 5.2 MB (5215245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa6b57860e948069cfcca377305111b2e362488bdc0549f52a9fb51b8492b22b`  
		Last Modified: Mon, 12 Oct 2026 18:35:49 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json
