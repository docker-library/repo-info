## `clojure:temurin-17-bookworm`

```console
$ docker pull clojure@sha256:166c99fc25c3391694499e2b960bb0fdb5ed4ee445f0dbc4c2c1b236617efda0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:28bfd2c138c8331959537e66f4576e78798c1538aafacb6db8e5a84e27faadcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272612533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40e645ffbff495dfff56e782397d407026b013b625837e1f9d82cb4d1e22ebd3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:38:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:38:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:38:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:38:35 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:38:35 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:38:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:38:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:38:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:38:49 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:38:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a6f3d7c6e9f94b598d2bc6a118360a773114bbf04f794e9bf095a6a8dfd871`  
		Last Modified: Tue, 10 Nov 2026 00:39:13 GMT  
		Size: 146.1 MB (146086148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72ee997f24ca8a47d0c58ce5822c47ddd1931e49638018be32d72d05d3330649`  
		Last Modified: Tue, 10 Nov 2026 00:39:11 GMT  
		Size: 78.0 MB (77998361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcc2ad145b3ab73d94424c0f400f550adcaed3af5f4327aebe0fc5bbd62b0051`  
		Last Modified: Tue, 10 Nov 2026 00:39:08 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac7165950ca2ad7a2384cf37d600b6fdd501da1f114cd5c361909732f3dcb7cf`  
		Last Modified: Tue, 10 Nov 2026 00:39:08 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4e9dcf96b46820311171a0dc2d1263aaf53d11e0b443c88bb23f68d55d0b97b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7394565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b4d4e9e0ad3d7099d76b591417f4952bc9a8f07f494f09b2e8bc0228a972b81`

```dockerfile
```

-	Layers:
	-	`sha256:f021dd1e69190a4ee596f9b5346acd9bef6cb85e741566a5a60a101d0e77bdb6`  
		Last Modified: Tue, 10 Nov 2026 00:39:08 GMT  
		Size: 7.4 MB (7378633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92427520a8aad28479e17c26768d5848395b1f9c96fd649934317fa1c5ebf93c`  
		Last Modified: Tue, 10 Nov 2026 00:39:08 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:05977aab801f3dc6270d4663c89c7023c96b0f04ed0a135c66486acf6a832035
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271370252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11cb5e09a700a59a01e6c959497a9f6d3fe2161925c3a1c0871ec88e3f496410`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:37:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:37:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:37:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:37:32 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:37:32 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:37:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:37:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:37:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:37:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:37:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b470b05e73b7f5fb1b3541affae88b33264d89bbb1496aaa6f54ba6fc519208d`  
		Last Modified: Tue, 10 Nov 2026 00:38:09 GMT  
		Size: 145.0 MB (144957160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d78aa1a7535de2f1d9475919dc31d3a5a76ca190b19573808b04ab22450620f`  
		Last Modified: Tue, 10 Nov 2026 00:38:08 GMT  
		Size: 78.0 MB (77999092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f467efd3d11b1904d399236135d9579a404f8c558af9dcf8c04ae80fd728d758`  
		Last Modified: Tue, 10 Nov 2026 00:38:05 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5435c68ca807c0668b79a0ee0053616cb0801952e50bc5d26708b08b515c5868`  
		Last Modified: Tue, 10 Nov 2026 00:38:05 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e4450960a2b3e4240eb308e46e38d06cf1497c91440ffe2098e96e5b57a9853b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce177b316d2f91755736c6f82eed094a82b9fbf73d8f99a5568cd2b9825d46c4`

```dockerfile
```

-	Layers:
	-	`sha256:62bc6d02dcd080a7ce03e5b3a0f3e8df9f1e845ddd9af4282049c19ed9dcabef`  
		Last Modified: Tue, 10 Nov 2026 00:38:05 GMT  
		Size: 7.4 MB (7384396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:189d214be6b624d464ecd2e0969e9f3fbe0c1816e2fc319604d16d9458ce638d`  
		Last Modified: Tue, 10 Nov 2026 00:38:05 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:5577030bdd8f3948b0c5ba853519c46bd0933fb5c383e515e21f9f0a27fb52d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281054464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed09281b35dc89fbec9bc22b3f5f440d8eb29e2d17aa2c6ea4d904ed85afb640`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:36:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:36:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:36:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:36:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:36:35 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:42:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:42:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:32:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:32:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:32:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49bb31fa4370be1b5da85fd3daceac235b0934e95508bb9b0a4a7473576892f`  
		Last Modified: Thu, 05 Nov 2026 15:41:20 GMT  
		Size: 144.9 MB (144860469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d094701df56824ccdf344ac73fdd715f23493b4d8f2dd5bf9627a6f6591ad160`  
		Last Modified: Thu, 05 Nov 2026 15:43:22 GMT  
		Size: 83.8 MB (83823828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bdd3a4d08855d9872c8dc123eede40411c7c44bfe7a4b8b972bcf0b1a49c5c5`  
		Last Modified: Thu, 05 Nov 2026 15:43:20 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b25a428ca4c9327e238ad436ee8f9c89632b77af931901dea98d27b0f73b5f`  
		Last Modified: Tue, 10 Nov 2026 02:32:41 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7487fa8a0d4a0960da4a08a6c652a3aa0863891888cafa0a98884560cd40e9aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eac8910300ece4569ae083b1b132907be0df53ad37b59296da84f3844c78bd10`

```dockerfile
```

-	Layers:
	-	`sha256:ea1fb7023ae9710c3fa6ecd368b91c307e905605771ac55a9e68736cfef1e66a`  
		Last Modified: Tue, 10 Nov 2026 02:32:41 GMT  
		Size: 7.4 MB (7382599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:147733c7ff05a97844fca6e52febc2b01db770a483f29dc83f3ba439a9bc41fd`  
		Last Modified: Tue, 10 Nov 2026 02:32:41 GMT  
		Size: 15.0 KB (15024 bytes)  
		MIME: application/vnd.in-toto+json
