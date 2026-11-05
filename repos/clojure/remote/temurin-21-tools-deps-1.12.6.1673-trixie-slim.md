## `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:5e7080a1c5c754b0cc814bdd4b0e2f03ba2419f50dd3e0719f6aa400c0c59f2b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:868b82a79bef2819e7f01406b0f6a89e6739094d124dbfed60165a53b4c1fcf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257255981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b62c9461d9f1237da728f9e93cb29861c020a1789e5f13c71e1061f7970920`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:09:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:09:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:09:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:09:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:09:46 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:10:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:10:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:10:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:10:01 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:10:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63ada111e325cbfd9575987bc1e29de42fac96068247e495a2b210a4ae026880`  
		Last Modified: Thu, 05 Nov 2026 08:10:24 GMT  
		Size: 158.4 MB (158409449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82503db8b54f2203b84dc9043ca7990176363eea849a873852881764462115f3`  
		Last Modified: Thu, 05 Nov 2026 08:10:22 GMT  
		Size: 69.0 MB (68989357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4e4bc4bb9ff89dc73da0b85a2560ac09163db0bc4d19ddf906ecdd4c12ae0a`  
		Last Modified: Thu, 05 Nov 2026 08:10:19 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a18485a80a92f3a0326e4da9a0d2e0d5ae4124e66a820e4fa9144bc464d58556`  
		Last Modified: Thu, 05 Nov 2026 08:10:20 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bc1e0ccc07bb5f74a7681ecd11d330d10bfefba5211cca77f9bc428844fbc7fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfef86b698adaa6e2f81fbfa073392d137dd935d833e70d9545892b643f774da`

```dockerfile
```

-	Layers:
	-	`sha256:c18f539a9a9d063b9076c85002e8ea2aa857a378a191dd87da8513c3ce05109a`  
		Last Modified: Thu, 05 Nov 2026 08:10:20 GMT  
		Size: 5.3 MB (5263909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffe0482740bb3ab1b1d62741b97ee0569fcb399a627064845e2e77ccaefa05cb`  
		Last Modified: Thu, 05 Nov 2026 08:10:19 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0bcc98a6460edc2af4e6b23106681455d5e1c3179666284e05e1a4af07d4e38e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.7 MB (255711684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec71a082d6a4ae7589082d51aee06367a1e872e4ede5e01317fc71c767314a9b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:43:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 07:43:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 07:43:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:43:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:19:24 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:19:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:19:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:19:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:19:41 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:19:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f05349ce5cded5a46f3abf7bc975f9b6b3de012fff1b62031cac3e65160b8bfd`  
		Last Modified: Thu, 05 Nov 2026 07:44:32 GMT  
		Size: 156.7 MB (156691638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc215261b0c0b80bc971effb4a8a313db9f1e2fb91acd4f5e75c0423afce269e`  
		Last Modified: Thu, 05 Nov 2026 08:20:02 GMT  
		Size: 68.8 MB (68804968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e570ab9bf476087c76eb960b3d4256bc8e6ed1ffca3c9f714669b900047b801e`  
		Last Modified: Thu, 05 Nov 2026 08:19:56 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c7ffe802fff56a94fc9484857f939489f81b60166886d2bc81b5e75195d23c`  
		Last Modified: Thu, 05 Nov 2026 08:19:56 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d5d8f9b119fcec7ae9aa7451b7eab67d82df24bf03bddcd6173b4c8fdf7b0c66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5284799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a10e3c0c82e9110df06007d0b25b751d685310244d07536a0f5575125ea5640`

```dockerfile
```

-	Layers:
	-	`sha256:eba7d40fd6f90f67643b1300d4933665d4d8e290f0f546c3073cd10828f6c3bf`  
		Last Modified: Thu, 05 Nov 2026 08:19:57 GMT  
		Size: 5.3 MB (5269670 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79d7bea2b72de0590658303893dbe5f0e5563bebdba56cea17fa15f7f110553a`  
		Last Modified: Thu, 05 Nov 2026 08:19:56 GMT  
		Size: 15.1 KB (15129 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:455227fdc7a9afd2f504cd6e84799e0ab030c913e2f6365af71539a7d6bd41f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265659132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f99b7d8d5e06d6aba0e3740c50f42d55379abdcb8fa450619519af916dd073b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 19:41:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:41:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:41:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:41:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 19:41:58 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 19:48:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 19:48:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 19:48:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 19:48:09 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 19:48:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a38139e42efad6f8d2be360542bdf458c3ae7eb7262d4c847e458af9ff5696`  
		Last Modified: Thu, 29 Oct 2026 19:45:59 GMT  
		Size: 157.6 MB (157573285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c902ac5d8c79464b0585575155eb3e1928da8342a1aea816fff67d0332c6b6`  
		Last Modified: Thu, 29 Oct 2026 19:49:02 GMT  
		Size: 74.4 MB (74418543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:656383e3bb22562ec41b8d57f2da913b63975cab289863b5ca5fd1c06a4acf3b`  
		Last Modified: Thu, 29 Oct 2026 19:49:00 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e70d4caa7fcf1bdd007dd3c1448447ac2b0297b1cddbdd9b1f16364ce69ae7`  
		Last Modified: Thu, 29 Oct 2026 19:49:00 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3025b7026f81094d8a1b4dca5571cbd095e25f4bd674f67fc67f4e8c55daf5f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ab81c38ab667599cd9505e7658bbaed45b16989843bce24f2f3b664940c87db`

```dockerfile
```

-	Layers:
	-	`sha256:03d0277026109f35a0d3c7dfc9ec5d435b8501577edea4fe28e7dda82b91127e`  
		Last Modified: Thu, 29 Oct 2026 19:49:00 GMT  
		Size: 5.3 MB (5267034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e5f48f6471bb2b8bfe848d44266b59b8045207c269ba13d5150e73db552d9f1`  
		Last Modified: Thu, 29 Oct 2026 19:49:00 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
