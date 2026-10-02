## `clojure:temurin-26-bookworm-slim`

```console
$ docker pull clojure@sha256:80a2ee32a0380feb5159d541e60bb881cc165cf543bc2d9f22e44d337a2d2e89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:237f2a9c49ced9134c48bf362468bac6fce8484f9f7d124459dbd655b7fd6f77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189495098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c6fc25cae4a0944c0a6a9bd00b4a1aef70fd6f880c5e81a9cdc70feea01d6bd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:49:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:49:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:49:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:49:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:49:50 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:50:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:50:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:50:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:50:04 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:50:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b031d50b5be79c8494ce2ad3594dba0c484e481fefe6233e2e4d82e04d056eb7`  
		Last Modified: Fri, 02 Oct 2026 02:50:24 GMT  
		Size: 94.6 MB (94563470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb2d13899b1e23b7b5034842b78649b39d3e732d95bf53cd71fa0f9ed7ee3bce`  
		Last Modified: Fri, 02 Oct 2026 02:50:24 GMT  
		Size: 66.7 MB (66692145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1848dacb6ba97f8447ece2dd11e6c2b8f6b634151823555a87b761d23665d6d`  
		Last Modified: Fri, 02 Oct 2026 02:50:21 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d72223d25b033e5f58c6670f2594d070883febbd8edf80ded56cca2d14bdd9`  
		Last Modified: Fri, 02 Oct 2026 02:50:21 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:960cb45a8f7957c5b255c560b17862674c9d2f17d0caf156244227d5959e5049
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5100183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab5801e5480584d6a8acee8870f4828163e63712856e3db59c4587e525a86cf`

```dockerfile
```

-	Layers:
	-	`sha256:e78190da0724d697966d35e7df95d2f75535bc976722219e627f8170a9060244`  
		Last Modified: Fri, 02 Oct 2026 02:50:21 GMT  
		Size: 5.1 MB (5084201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c4ceab87b8addec5100c85ca50d9f86a3691ad7ebec8bf50f4789733ebb3277`  
		Last Modified: Fri, 02 Oct 2026 02:50:21 GMT  
		Size: 16.0 KB (15982 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:47c4ddde1ba7f60077eb49af09c6de32de16999a4415ec31a7ee69dc55a1a63b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188347283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad037fa1d37b4ffcd1c4c53f79c9a242b710fe093cbff244386987473fd54553`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:49:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:49:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:49:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:49:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:49:52 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:50:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:50:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:50:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:50:07 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:50:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd8eaafb41427fa2e5a51a266f084a50f5f19091ee6735fa44e800795bb4130`  
		Last Modified: Fri, 02 Oct 2026 02:50:29 GMT  
		Size: 93.5 MB (93543593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c5d0e6b5e244a871842ba1e09174dc1110c5d80ca903350985349e9ede50052`  
		Last Modified: Fri, 02 Oct 2026 02:50:28 GMT  
		Size: 66.7 MB (66678970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5f94f47f169ab372cac084efef896c8cd5324a4a6aab2f61603d6f420a875e`  
		Last Modified: Fri, 02 Oct 2026 02:50:25 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693b01bce68acc810d6ed923e7518dda367f710a485097d13512c774c2df94ba`  
		Last Modified: Fri, 02 Oct 2026 02:50:25 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e266fce1af4798ce14196aedfd56009b8ad68f232920d57d89f7a9a24af64ce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5106060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c187c8e97dab20a9b9e962b1af7fe309a8daa26ad3e8a0013f2a9b4cafd0d8ff`

```dockerfile
```

-	Layers:
	-	`sha256:5014ee3e2fb0b3dd0ff2a652be35207c11d1bb092b8b042a1dd451ebf6d4ab4f`  
		Last Modified: Fri, 02 Oct 2026 02:50:25 GMT  
		Size: 5.1 MB (5089959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:418c6123c02cf6b2256452c888d11351cccd9b3d1f9554c03afd2933c8f21e73`  
		Last Modified: Fri, 02 Oct 2026 02:50:25 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:66dfd0368956adae448cf2b75a33dc66bc0d2a0b1aee0ac347a0c6a947a69c5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.9 MB (197933356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbe8f68c217ca057e5329d6e6c50a87ba09e9e8af8ac75c425fa9c5757b227e4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 05:42:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:42:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:42:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:42:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 05:42:28 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:55:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 05:55:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 05:55:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:55:29 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:55:29 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f78aba62c87ef2fa4ecb84e96b86f5c61e0c65fe1b2c3012725f0a490280614c`  
		Last Modified: Sat, 26 Sep 2026 05:45:17 GMT  
		Size: 93.4 MB (93350859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3db4ab59535acf83c6333e7969746f3c215465cf500a2c5b3f89ccb44cb9a3c`  
		Last Modified: Sat, 26 Sep 2026 05:56:02 GMT  
		Size: 72.5 MB (72497890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b66cfdaaf9beeb5585668358bdd1c72c7215856b904fc46e4da55d975418ce`  
		Last Modified: Sat, 26 Sep 2026 05:56:00 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f18ce0c99abf84afc48d6b059d2fa185b9c27d1f7d0b1272054b91407a3a121`  
		Last Modified: Sat, 26 Sep 2026 05:56:00 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:58e944426c400aefb45348375336b5432695bbf8abe6c3d7eca537641e8da39d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5089326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efd25713b7176a3dba50469bce5930e193f9450985509880ac2d3cd6547a1e11`

```dockerfile
```

-	Layers:
	-	`sha256:7d3d93d4fb1fb98f6bf87ff2a2d37c7765dd13bef213f477a9db877c172a26b1`  
		Last Modified: Sat, 26 Sep 2026 05:56:01 GMT  
		Size: 5.1 MB (5073295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39f360748bbcd93348894d02f5c3541848704db8079787b06073283fa2cd10d2`  
		Last Modified: Sat, 26 Sep 2026 05:56:00 GMT  
		Size: 16.0 KB (16031 bytes)  
		MIME: application/vnd.in-toto+json
