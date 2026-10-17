## `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:596729cf4b92aa1b4f271f51b2545a76908e3226ccef7bc1c339a931e3373dcd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

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

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

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

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

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

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

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

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:3eb6cae0a3cfa0a3eef00fc5e02a46a8f4088d948cf5a6ec5ff57c38a194f894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199326296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fcadc23a61edeef763c9323be6eb965ce02867988bd0634b2e9be1cc3270b07`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 06:23:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:23:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:23:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:23:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 06:23:07 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:34:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 06:34:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 06:34:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:34:05 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:34:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f87c4f9d1360a462b9c53559ac0d02508f75df75a505f1c55cd0b5a24dca71a`  
		Last Modified: Sat, 17 Oct 2026 06:28:25 GMT  
		Size: 91.3 MB (91256226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79cb3be1b93eafd6be8a56d40c7ef2ddf12c76d07500c3fd918dd1cc899c26b8`  
		Last Modified: Sat, 17 Oct 2026 06:34:49 GMT  
		Size: 74.4 MB (74417427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a96f54352723b22a8171343f020647d5d1e92a80eaae2d3312efa898184b5f2`  
		Last Modified: Sat, 17 Oct 2026 06:34:47 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a42b14f3efd4537c4171547fb399b4e9b09ff81963eb345d8accd6ab641d0108`  
		Last Modified: Sat, 17 Oct 2026 06:34:47 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2ad09c87a09898d6aace764cb6bff7abfbe6bbfbf8ca10ef55cf24b38d693384
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5235800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0224ad55010085a3f7eef7eb78122be405d0948950f5686ecb74903a678035e4`

```dockerfile
```

-	Layers:
	-	`sha256:429598b103a407fbe7a551212c453f8ba649bd0f3aaa5f99233c75fc44832bbb`  
		Last Modified: Sat, 17 Oct 2026 06:34:47 GMT  
		Size: 5.2 MB (5219093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c981e23c15d787877abf9ffde3a629dff6b70b21905491c3ba899090064a4034`  
		Last Modified: Sat, 17 Oct 2026 06:34:47 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json
