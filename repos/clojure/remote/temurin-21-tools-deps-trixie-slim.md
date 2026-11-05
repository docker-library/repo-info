## `clojure:temurin-21-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:af35a8ad80a9f26eb2335f15ae9c62884eee5344cd5255f14b8cb0a3cf6bbae7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; amd64

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

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

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

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; arm64 variant v8

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

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

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

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:03e11d73f095e6d99c4810d23eac9ab4f80e3757a15f70e065c5edf791e796dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265660439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a9947ceeab5f280982cba8099ab7f619290733d84d79f7680cc7b67b0bb027f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:53:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:53:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:53:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:53:33 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:53:35 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:01:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 16:01:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 16:01:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 16:01:16 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 16:01:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160e4dfd74fce827efd180ea39399ead65ff78ebe435d963c4044d95e7490255`  
		Last Modified: Thu, 05 Nov 2026 15:57:42 GMT  
		Size: 157.6 MB (157573237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011c02fe0f6ff8f054cb8f2d38ec823fa3612e4225b6f1f74957468fa2fa7168`  
		Last Modified: Thu, 05 Nov 2026 16:02:03 GMT  
		Size: 74.4 MB (74418508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ced8e94616b989283e38899972eddea85fedff50283337a730064abe441a398`  
		Last Modified: Thu, 05 Nov 2026 16:02:01 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82ba307bada2baf26a5a9261951aef83249218b43f56a0e45281320aed87b769`  
		Last Modified: Thu, 05 Nov 2026 16:02:01 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8eb57324b7ea9efc1d58f93eda0a69a63272c252244bf55a0a67bb727e2dbac1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2bc7f039cbad3b4d1d4fc1b7b8d4625fa0400bc1dec2bade5735dfe7ced5611`

```dockerfile
```

-	Layers:
	-	`sha256:58c24cb1dc522942e9add0f1bd2967e67b4da6c8fcbabdbb2946b8f7eba62507`  
		Last Modified: Thu, 05 Nov 2026 16:02:01 GMT  
		Size: 5.3 MB (5267034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09a521b11f2f0226af15cfe87823f86b5b0f56108b9d5d5e1b329de3f2d8e1ea`  
		Last Modified: Thu, 05 Nov 2026 16:02:01 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
