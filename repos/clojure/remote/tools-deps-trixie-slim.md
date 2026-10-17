## `clojure:tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:0d951af16f363124b8288b791ca4ff3c4076ee46bace4c8b8f198868041230fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b10af699825ff7378f47939bbe019e66aefb6317b569913290e1574879da898b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191452279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93905cc17569697eab0497bd6692488c0274847d111820a0918d295c3c7c152`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:52:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:52:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:52:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:52:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:52:46 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:53:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:53:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:53:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:53:03 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:53:03 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dadb2ea1c0644a818ec114b770b8b8b8aa4eed0063c234abdc19195526dae2f7`  
		Last Modified: Sat, 17 Oct 2026 01:53:25 GMT  
		Size: 92.6 MB (92618012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f57d8e9b7d822126ea8b9bd6565ce467b2a92129340bb785478c8a0a465177`  
		Last Modified: Sat, 17 Oct 2026 01:53:24 GMT  
		Size: 69.0 MB (68989877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2229b428f0ee3a5b62eedd75151903b8e7ef2716b9c2e292e34588fb8cb2d87d`  
		Last Modified: Sat, 17 Oct 2026 01:53:21 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2aae6b814979ef23875e6266eb82e4e5dabe2fdbad3a287362e76600ff83ecc`  
		Last Modified: Sat, 17 Oct 2026 01:53:21 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7f9f0e115e997b3796c1e44609a0732e1450ca7a59548e2be7cc79dc8c684d57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5526f0728dd37c970941182be49822ac531cbc4ba84f44dd9f6274a815b3e0f`

```dockerfile
```

-	Layers:
	-	`sha256:181f449d0a6163f2a9f8873524d02a6080ad43b91307ba82bd0116ca67a0d6d9`  
		Last Modified: Sat, 17 Oct 2026 01:53:22 GMT  
		Size: 5.2 MB (5231398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4e86eea7adab35c746f599c4db49c1ea68c26e4e010f99e04c20b9c6323587f`  
		Last Modified: Sat, 17 Oct 2026 01:53:21 GMT  
		Size: 16.6 KB (16645 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f72cde151531946e3f6e9fc1e9dced734b4f1258c02da6b9614799374fe353fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190540711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e01d6f6c5cbe200939feaf325e28a274def6a24f7d7e87d94ca22f5f1ebd8d91`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:52:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:52:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:52:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:52:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:52:51 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:53:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:53:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:53:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:53:10 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:53:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e88e8f91d230d6c832aedc32a93aeb5744ac6df5c0fd2d4fe30d46339152ae8`  
		Last Modified: Sat, 17 Oct 2026 01:53:31 GMT  
		Size: 91.5 MB (91528869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc893c56c65685d42fd4c5c7ef6f70f0af8d51ea1bae031b69d2f90903237e39`  
		Last Modified: Sat, 17 Oct 2026 01:53:31 GMT  
		Size: 68.8 MB (68810516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0301cfc86bf36ace2a73d327674061a7db23b51feb55bab462579ff74df6ef66`  
		Last Modified: Sat, 17 Oct 2026 01:53:28 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8b54bb7797a8ac1ab7af2b86b801409167a01d5f4a9f2549da98a7068c5b16`  
		Last Modified: Sat, 17 Oct 2026 01:53:28 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:154bd057a10e73439e7febb3887630473916156a29b6cfb90c890cf48f43a758
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5253969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d96666099844bff24ab2cea030d12f541c3702ba31fd8dd1ed95330fc60b8eac`

```dockerfile
```

-	Layers:
	-	`sha256:cf47141f868b58ba03f7d51c24638177e3056976af5389a537e9e52c99980513`  
		Last Modified: Sat, 17 Oct 2026 01:53:28 GMT  
		Size: 5.2 MB (5237180 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f490b8b3966d8e6fcff58c2da7d6a08a32e31c1adca521dea972d0fa25dfb2db`  
		Last Modified: Sat, 17 Oct 2026 01:53:28 GMT  
		Size: 16.8 KB (16789 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:93af87cb2b9698b27c47695e590f37035b2f6a3484b7966cddbfb9123aba41b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199320867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05ccd4b35c8861009dfaedf77fba25f89ba12f8a9cca4c0c49b881200f53090e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:38:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:38:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:38:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:38:06 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 10:38:07 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:44:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 10:44:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 10:44:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:44:33 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:44:33 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f78a9e985677056dcdd0088b36c6a3bccbb1c48ff1954f5c529444f55b34a0`  
		Last Modified: Tue, 06 Oct 2026 10:42:47 GMT  
		Size: 91.3 MB (91256257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc131a89bc2697d545b236664166ae1592ed8d82f230fd77dc4d3176fe28dee6`  
		Last Modified: Tue, 06 Oct 2026 10:45:17 GMT  
		Size: 74.4 MB (74411970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8588b68cc9023da4f6ef215b3377fc21e05be5471ca163ef7e8672aff8cefd61`  
		Last Modified: Tue, 06 Oct 2026 10:45:14 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cadf99234daf139b5134a64a7c59e6627446e9c239efff5538052232875dc894`  
		Last Modified: Tue, 06 Oct 2026 10:45:15 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c66484f93f36a153bcabf28fe519c61c34c107bdb0446af2e260ea626892281c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5235800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95ddfd32b16865a513bddb25d31fefc6ec290a7b12c4ff1b7a566081206cc051`

```dockerfile
```

-	Layers:
	-	`sha256:3d7ca51a3917c4411fcca7e1feb6006ad4a16cd80ec9a50c4881d62e262a7013`  
		Last Modified: Tue, 06 Oct 2026 10:45:15 GMT  
		Size: 5.2 MB (5219093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acf65a0811102716be78046d03d47621277d28b9f9f95cc596bc9a644f88191c`  
		Last Modified: Tue, 06 Oct 2026 10:45:14 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json
