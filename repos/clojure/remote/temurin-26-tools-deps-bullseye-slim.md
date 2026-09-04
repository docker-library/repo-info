## `clojure:temurin-26-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:e2ce1103e950b0d077e63fc8e685817660717885368580a4b35333a483a3f2c8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f6e9d40be59aca1be397af2520b3a7117a3cb8311611e997cf164f37e9a42559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.0 MB (180952000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d75bb4cb97657ecbecf9884c34a3628c4d4245ae6940b2aa04a0fd205a1118b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:04:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:04:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:04:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:04:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:04:27 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:04:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:04:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:04:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:04:40 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:04:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4705738e5e0492efae5d2523aa791e06c852e2e1acb5e70a365cc08f9da0c556`  
		Last Modified: Mon, 24 Aug 2026 23:20:36 GMT  
		Size: 30.3 MB (30259727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859aabe1a63698ce13a047bf7ce6ee0b960b2bf365af66fd1857a59faaed99d6`  
		Last Modified: Fri, 04 Sep 2026 00:05:01 GMT  
		Size: 94.6 MB (94563744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8357762426560cb87d1b533c9a493359643b9a76e22c4799cad309dfe1f79e17`  
		Last Modified: Fri, 04 Sep 2026 00:05:00 GMT  
		Size: 56.1 MB (56127490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7dddd643c8a427da205152a085207e88b56c1cf7619f6b2b24618872323da9`  
		Last Modified: Fri, 04 Sep 2026 00:04:58 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f3b57c123a5a804b899dbd084adf38e1459dcd841ed1edd12e985ddc0df53d`  
		Last Modified: Fri, 04 Sep 2026 00:04:58 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:937b3f1d5228033827d3e1363e0614aa621a8ebbf48a6c3d1d8f4cf124f0e2fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5303928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b708a08c2ed6e49763c7646e8e8bcb17a151c9d2aa04309dafbeb0b616d53f64`

```dockerfile
```

-	Layers:
	-	`sha256:5702387bd7ca82f289e0cacb8c5b88f2927d2c209223328182cc516cd9a55e8b`  
		Last Modified: Fri, 04 Sep 2026 00:04:58 GMT  
		Size: 5.3 MB (5287945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ffc2abb3fa26dfae8d8d9419c75bc31215404b4623eae082d2b83b3a24b7507`  
		Last Modified: Fri, 04 Sep 2026 00:04:58 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2033ff81f7c562496e0d09146d42ab98910b31cf859ea3cf9ea601841803f3ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178579112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55091eb39fb6c44542ccf095324b637ccb6e1395381d70b9684c24ffa7fc7b3a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:08:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:08:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:08:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:08:48 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:08:48 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:09:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:09:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:09:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:09:01 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:09:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:104799d4ff5b18bad31a13cbbc383730eebef29a1cac161b7905792a8dbe5bd3`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 28.7 MB (28749031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:891f721c82945e01e8f07878eb041b7262508ae44d7505eeed6e86de804df64b`  
		Last Modified: Fri, 04 Sep 2026 00:09:21 GMT  
		Size: 93.5 MB (93541529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48f94f75264018d191325a806ab5291cf160338a1a0f203938668eb3db6e1a04`  
		Last Modified: Fri, 04 Sep 2026 00:09:21 GMT  
		Size: 56.3 MB (56287512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41fe98c483b6e5ce69702873032ba6953430088f7084b63f0c3205fbe84e759`  
		Last Modified: Fri, 04 Sep 2026 00:09:18 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87c6a152e23288c7cfa9db0a93398cc7656b7efecc06d62bbeef071b05b964ad`  
		Last Modified: Fri, 04 Sep 2026 00:09:18 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e1df9e96aa8212d2df870ada8bdfeb2f411937b62e8437ca4bfaab7245ed4833
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5309775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:679555c9debe04620951756e5d91e5e67ea1a1d47408a4ef82f56707e279ab5a`

```dockerfile
```

-	Layers:
	-	`sha256:1373b3f2d759253aaa97e5b92b2dd7b21bf8d1a5f2f8a02b7823a2f18c358b48`  
		Last Modified: Fri, 04 Sep 2026 00:09:19 GMT  
		Size: 5.3 MB (5293674 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7681c19b18c70825d6a2bcd41da547518238d53bf9dbef40a91e7c72501b5aa2`  
		Last Modified: Fri, 04 Sep 2026 00:09:18 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json
