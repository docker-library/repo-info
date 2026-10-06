## `clojure:tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:2ebab8c189509df632e9ec931805737c92de93aa6d6b9f998d7124c686782e1a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:8f2f52f4251a5df084a423aca6615740dbfc4db6c0730f5f50c6f5cd2b99e127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.7 MB (189652194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:551dd868862d0a53d890b67b56b23b9be357dd187523eb3de0f47f0f66df002c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:13:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:13:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:13:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:13:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:13:46 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:14:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:14:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:14:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:14:01 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:14:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f18db59f22888f3b55b46ff338d0a8d708009772e839edbe33a1026ad8f28105`  
		Last Modified: Tue, 06 Oct 2026 02:14:22 GMT  
		Size: 92.6 MB (92618078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cd771df8dbda8224cfbcbe4944c12050dd0f5f75fdc05b4fff4bdb72c058557`  
		Last Modified: Tue, 06 Oct 2026 02:14:21 GMT  
		Size: 68.8 MB (68783751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc25a125155726dce9cb76c3c1b04d8c321b34aa39995d2fa408b4a9435248aa`  
		Last Modified: Tue, 06 Oct 2026 02:14:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b41ccc752a61d99c378a6706798493dc606bd9e151774ef04d6c7ce43857a7d3`  
		Last Modified: Tue, 06 Oct 2026 02:14:18 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:349adf02697d1669030914c733a7450b73ba4206283955c83dd8fe217edcdc7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5104079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb87f90bc7ba7b4166b6b322fe3b69223c8bbee1bc022ea21bfd8c149eaf14b6`

```dockerfile
```

-	Layers:
	-	`sha256:415f3543a5ff2d8bacb02149fd72495189d1c9c921346f33644a3765fbce691f`  
		Last Modified: Tue, 06 Oct 2026 02:14:18 GMT  
		Size: 5.1 MB (5087400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bbc4205aa8173390508b0a784df51b8373dfa25704550f6991ef2ec8fd20b6b9`  
		Last Modified: Tue, 06 Oct 2026 02:14:18 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6f8d5b6883cc47b0694c396749e774f1b2282b05c516779d6cab22fe58a5e3b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188398400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64fc8a1f569699b7bb886bf277edfefb62e68582829635845c2ab47b5b2a5b56`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:19:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:19:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:19:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:19:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:19:50 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:20:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:20:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:20:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:20:06 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:20:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cab014993e598de9095883cdfa7f0097030ef50437e44865f05d8ae734f45ee`  
		Last Modified: Tue, 06 Oct 2026 02:20:27 GMT  
		Size: 91.5 MB (91528851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56bf4d5241af4c5fac27d8201ed2fb199d7dc2844c88c5963db7ecba7a00ba3`  
		Last Modified: Tue, 06 Oct 2026 02:20:27 GMT  
		Size: 68.7 MB (68731328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd8b5142e0d286419c3521a6d58756bb629d9f5b52f74fa0d307847bbc894fb3`  
		Last Modified: Tue, 06 Oct 2026 02:20:24 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f60d5ea4e5b605f2ab8755b1b31b39e279a19bcf088232994640e17d5aaa0be7`  
		Last Modified: Tue, 06 Oct 2026 02:20:24 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c636cf4cab9afe526f85f2102031e85e1dc7a409e9e6d3af05fb57a18b5953a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5110003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eb3991d0bc843988e471c28202c8b4d7bf5d4ef940b9f2356a43c7af899c541`

```dockerfile
```

-	Layers:
	-	`sha256:a9b17dc25528efa4764f8de9cae23309aa208136111ade2eab2955086fd70b38`  
		Last Modified: Tue, 06 Oct 2026 02:20:24 GMT  
		Size: 5.1 MB (5093182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d98cfaf8cdea07ad1455883f444f7decc5f39d518c143e4f7afe62459c9bcb00`  
		Last Modified: Tue, 06 Oct 2026 02:20:24 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5f32aa4249ba2c50ff80b1cde28a56dd8e2344762eafcc0df534dc2b66fd66b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.1 MB (198116306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f30dba1220f1b52a57f0437e358b1004f4491f504986b8a51af401cdaca0c927`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:33:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:33:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:33:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:33:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 10:33:37 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:42:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 10:42:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 10:42:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:42:32 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:42:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88907045d168f11890627eafe8ec8a437a3cb091d558a7d206b38791ae1d26f2`  
		Last Modified: Tue, 06 Oct 2026 10:37:50 GMT  
		Size: 91.3 MB (91256289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d56660ca3aa72f923e6d938f193c1ec327fe43ab97acfbfb69a3cb6ea8df71d`  
		Last Modified: Tue, 06 Oct 2026 10:43:15 GMT  
		Size: 74.8 MB (74766542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ca7374d07836825e0e3f9437d199021c3ff88e4381a63f5f50d07ce666a7542`  
		Last Modified: Tue, 06 Oct 2026 10:43:13 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1507719796d4f7296ff8a691694510ab06c0d4412ff9d269d81803f2fecea1`  
		Last Modified: Tue, 06 Oct 2026 10:43:13 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0795e68e9626e4c158422515f29b0845d9bfad94f98d208a055dd7fbe96611fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5092621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb6f3cb529894d55792813dc2fc346c58573f988e21b6d0147c92521e7cd3cb`

```dockerfile
```

-	Layers:
	-	`sha256:9c2a6b37b77c92439cb011626806b0ba1e3b67bfdc32ddb2ea2a817f5d7fa8c3`  
		Last Modified: Tue, 06 Oct 2026 10:43:13 GMT  
		Size: 5.1 MB (5075882 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c4fff7dc515f941275ec7b2af59b297644b7a4dd918d6ad47de699a100f5bc7`  
		Last Modified: Tue, 06 Oct 2026 10:43:13 GMT  
		Size: 16.7 KB (16739 bytes)  
		MIME: application/vnd.in-toto+json
